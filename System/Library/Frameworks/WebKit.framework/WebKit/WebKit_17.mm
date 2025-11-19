uint64_t *WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueGetKeyAgreementAfterGetRetries(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueGetKeyAgreementAfterGetRetries(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetKeyAgreementAfterGetRetries(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

fido::pin::KeyAgreementResponse *WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WebKit::FidoAuthenticator *a1, uint64_t a2, uint64_t a3)
{
  v87 = *MEMORY[0x1E69E9840];
  v44 = a1;
  v43 = a2;
  v42 = a3;
  v41 = qword_1ED641530;
  v40 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v41;
    v5 = v40;
    WebKit::CtapAuthenticator::aaguidForDebugging(&v38, a1);
    WTF::String::utf8();
    v6 = WTF::CString::data(&v39);
    WebKit::FidoAuthenticator::transportForDebugging(&v36, a1);
    WTF::String::utf8();
    v7 = WTF::CString::data(&v37);
    __os_log_helper_16_2_3_8_0_8_32_8_32(buf, a1, v6, v7);
    _os_log_impl(&dword_19D52D000, v4, v5, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueRequestPinAfterGetKeyAgreement", buf, 0x20u);
    WTF::CString::~CString(&v37);
    v48 = &v36;
    v53 = &v36;
    v60 = &v36;
    v61[1] = &v36;
    v61[0] = 0;
    v76 = &v36;
    v75 = v61;
    v68 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v36);
    if (v68)
    {
      WTF::StringImpl::deref(v68);
    }

    WTF::CString::~CString(&v39);
    v47 = &v38;
    v54 = &v38;
    v59 = &v38;
    v62[1] = &v38;
    v62[0] = 0;
    v74 = &v38;
    v73 = v62;
    v67 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v38);
    if (v67)
    {
      WTF::StringImpl::deref(v67);
    }
  }

  fido::pin::KeyAgreementResponse::parse();
  if (std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::operator BOOL[abi:sn200100](v35))
  {
    v10 = WebKit::Authenticator::observer(a1);
    v50 = &v27;
    v49 = v10;
    v78 = &v27;
    v77 = v10;
    v79 = v10;
    if (v10)
    {
      (**v79)();
    }

    v27 = v79;
    if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(&v27))
    {
      oslog = qword_1ED641530;
      v25 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
      {
        v11 = oslog;
        v12 = v25;
        WebKit::CtapAuthenticator::aaguidForDebugging(&v23, a1);
        WTF::String::utf8();
        v13 = WTF::CString::data(&v24);
        WebKit::FidoAuthenticator::transportForDebugging(&v21, a1);
        WTF::String::utf8();
        v14 = WTF::CString::data(&v22);
        __os_log_helper_16_2_3_8_0_8_32_8_32(v85, a1, v13, v14);
        _os_log_impl(&dword_19D52D000, v11, v12, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueRequestPinAfterGetKeyAgreement: Requesting pin from observer.", v85, 0x20u);
        WTF::CString::~CString(&v22);
        v46 = &v21;
        v55 = &v21;
        v58 = &v21;
        v63[1] = &v21;
        v63[0] = 0;
        v72 = &v21;
        v71 = v63;
        v66 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v21);
        if (v66)
        {
          WTF::StringImpl::deref(v66);
        }

        WTF::CString::~CString(&v24);
        v45 = &v23;
        v56 = &v23;
        v57 = &v23;
        v64[1] = &v23;
        v64[0] = 0;
        v70 = &v23;
        v69 = v64;
        v65 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v23);
        if (v65)
        {
          WTF::StringImpl::deref(v65);
        }
      }

      v51 = &v27;
      v84 = &v27;
      v15 = v27;
      v16 = v42;
      WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(v19, a1);
      std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::operator*[abi:sn200100](v35);
      fido::pin::KeyAgreementResponse::KeyAgreementResponse();
      WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v18);
      WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler<WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0,void>(&v20, v19);
      (*(*v15 + 56))(v15, v16, &v20);
      WTF::CompletionHandler<void ()(WTF::String const&)>::~CompletionHandler(&v20);
      WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v18);
      WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0::~$_0(v19);
    }

    v52 = &v27;
    v80[1] = &v27;
    v80[0] = 0;
    v83 = &v27;
    v82 = v80;
    v81 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v27);
    if (v81)
    {
      (*(*v81 + 8))();
    }

    v28 = 0;
  }

  else
  {
    ResponseCode = fido::getResponseCode();
    v31[0] = 24;
    v8 = WTF::StringLiterals::operator"" _s("Unknown internal error. Error code: ", 0x24);
    v30 = v9;
    v29 = v8;
    WTF::makeString<WTF::ASCIILiteral,unsigned char>(&v32, v8, v9, ResponseCode);
    mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WebCore::ExceptionData,WebCore::ExceptionData,0,0,0,1ul,WebCore::ExceptionData,0>(v33);
    WebKit::Authenticator::receiveRespond(a1, v33);
    mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(v33);
    WebCore::ExceptionData::~ExceptionData(v31);
    v28 = 1;
  }

  return std::optional<fido::pin::KeyAgreementResponse>::~optional(v35);
}

uint64_t *WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler<WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler<WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0,void>(a1, a2);
  return a1;
}

{
  WTF::Function<void ()(WTF::String const&)>::Function<WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0,void>(a1, a2);
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(a1);
  return a1;
}

uint64_t *WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0::~$_0(uint64_t *a1)
{
  WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0::~$_0(a1);
  return a1;
}

{
  fido::pin::KeyAgreementResponse::~KeyAgreementResponse((a1 + 1));
  WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(a1);
  return a1;
}

fido::pin::KeyAgreementResponse *std::optional<fido::pin::KeyAgreementResponse>::~optional(fido::pin::KeyAgreementResponse *a1)
{
  std::optional<fido::pin::KeyAgreementResponse>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<fido::pin::KeyAgreementResponse,false>::~__optional_move_assign_base(a1);
  return a1;
}

void WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WebKit::FidoAuthenticator *a1, fido::pin *a2, uint64_t a3)
{
  v107 = *MEMORY[0x1E69E9840];
  v57 = a1;
  v56 = a2;
  v55 = a3;
  oslog = qword_1ED641530;
  v53 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    v4 = oslog;
    v5 = v53;
    WebKit::CtapAuthenticator::aaguidForDebugging(&v51, a1);
    WTF::String::utf8();
    v6 = WTF::CString::data(&v52);
    WebKit::FidoAuthenticator::transportForDebugging(&v49, a1);
    WTF::String::utf8();
    v7 = WTF::CString::data(&v50);
    __os_log_helper_16_2_3_8_0_8_32_8_32(buf, a1, v6, v7);
    _os_log_impl(&dword_19D52D000, v4, v5, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueGetNextAssertionAfterResponseReceived", buf, 0x20u);
    WTF::CString::~CString(&v50);
    v62 = &v49;
    v67 = &v49;
    v76 = &v49;
    v77[1] = &v49;
    v77[0] = 0;
    v96 = &v49;
    v95 = v77;
    v86 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v49);
    if (v86)
    {
      WTF::StringImpl::deref(v86);
    }

    WTF::CString::~CString(&v52);
    v61 = &v51;
    v68 = &v51;
    v75 = &v51;
    v78[1] = &v51;
    v78[0] = 0;
    v94 = &v51;
    v93 = v78;
    v85 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v51);
    if (v85)
    {
      WTF::StringImpl::deref(v85);
    }
  }

  if (WTF::String::isNull(v56))
  {
    v46[0] = 24;
    v9 = WTF::StringLiterals::operator"" _s("Pin is null.", 0xC);
    v45[3] = v10;
    v45[2] = v9;
    WTF::String::String(&v47, v9, v10);
    mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WebCore::ExceptionData,WebCore::ExceptionData,0,0,0,1ul,WebCore::ExceptionData,0>(v48);
    WebKit::Authenticator::receiveRespond(a1, v48);
    mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(v48);
    WebCore::ExceptionData::~ExceptionData(v46);
  }

  else
  {
    fido::pin::validateAndConvertToUTF8(v45, v56, v8);
    if (std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::operator BOOL[abi:sn200100](v45))
    {
      std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::operator*[abi:sn200100](v45);
      fido::pin::TokenRequest::tryCreate();
      if (std::optional<fido::pin::TokenRequest>::operator BOOL[abi:sn200100](v41))
      {
        std::optional<fido::pin::TokenRequest>::operator*[abi:sn200100](v41);
        fido::pin::encodeAsCBOR();
        v34 = qword_1ED641530;
        v33 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v34;
          v15 = v33;
          WebKit::CtapAuthenticator::aaguidForDebugging(&v31, a1);
          WTF::String::utf8();
          v16 = WTF::CString::data(&v32);
          WebKit::FidoAuthenticator::transportForDebugging(&v29, a1);
          WTF::String::utf8();
          v17 = WTF::CString::data(&v30);
          std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(v26, v35);
          v25 = 0;
          WTF::OptionSet<WTF::Base64EncodeOption>::OptionSet(&v25);
          WTF::base64EncodeToString(&v27, v26[0], v26[1]);
          WTF::String::utf8();
          v18 = WTF::CString::data(&v28);
          __os_log_helper_16_2_4_8_0_8_32_8_32_8_32(v105, a1, v16, v17, v18);
          _os_log_impl(&dword_19D52D000, v14, v15, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueGetPinTokenAfterRequestPin: Sending %s", v105, 0x2Au);
          WTF::CString::~CString(&v28);
          v60 = &v27;
          v69 = &v27;
          v74 = &v27;
          v79[1] = &v27;
          v79[0] = 0;
          v92 = &v27;
          v91 = v79;
          v84 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v27);
          if (v84)
          {
            WTF::StringImpl::deref(v84);
          }

          WTF::CString::~CString(&v30);
          v59 = &v29;
          v70 = &v29;
          v73 = &v29;
          v80[1] = &v29;
          v80[0] = 0;
          v90 = &v29;
          v89 = v80;
          v83 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v29);
          if (v83)
          {
            WTF::StringImpl::deref(v83);
          }

          WTF::CString::~CString(&v32);
          v58 = &v31;
          v71 = &v31;
          v72 = &v31;
          v81[1] = &v31;
          v81[0] = 0;
          v88 = &v31;
          v87 = v81;
          v82 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v31);
          if (v82)
          {
            WTF::StringImpl::deref(v82);
          }
        }

        WebKit::FidoAuthenticator::protectedDriver(a1, &v24);
        v19 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v24);
        WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v21, a1);
        std::optional<fido::pin::TokenRequest>::operator*[abi:sn200100](v41);
        fido::pin::TokenRequest::TokenRequest(v22, v20);
        WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0,void>(&v23, &v21);
        (*(*v19 + 16))(v19, v35, &v23);
        WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(&v23);
        WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0::~$_0(&v21);
        WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(&v24);
        WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v35);
        v42 = 0;
      }

      else
      {
        v38[0] = 24;
        v12 = WTF::StringLiterals::operator"" _s("Cannot create a TokenRequest.", 0x1D);
        v37 = v13;
        v36 = v12;
        WTF::String::String(&v39, v12, v13);
        mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WebCore::ExceptionData,WebCore::ExceptionData,0,0,0,1ul,WebCore::ExceptionData,0>(v40);
        WebKit::Authenticator::receiveRespond(a1, v40);
        mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(v40);
        WebCore::ExceptionData::~ExceptionData(v38);
        v42 = 1;
      }

      std::optional<fido::pin::TokenRequest>::~optional(v41);
    }

    else
    {
      v11 = WebKit::Authenticator::observer(a1);
      v64 = &v44;
      v63 = v11;
      v98 = &v44;
      v97 = v11;
      v99 = v11;
      if (v11)
      {
        (**v99)();
      }

      v44 = v99;
      if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(&v44))
      {
        v65 = &v44;
        v104 = &v44;
        (*v44)[6]();
      }

      v66 = &v44;
      v100[1] = &v44;
      v100[0] = 0;
      v103 = &v44;
      v102 = v100;
      v101 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v44);
      if (v101)
      {
        (*(*v101 + 8))();
      }

      v43 = 49;
      WebKit::CtapAuthenticator::tryRestartPin(a1, &v43);
      v42 = 1;
    }

    std::optional<WTF::CString>::~optional(v45);
  }
}

void std::optional<fido::pin::TokenRequest>::operator*[abi:sn200100](uint64_t a1)
{
  if ((std::__optional_storage_base<fido::pin::TokenRequest,false>::has_value[abi:sn200100](a1) & 1) == 0)
  {
    __break(1u);
  }

  std::__to_address[abi:sn200100]<char const>();
}

uint64_t *fido::pin::TokenRequest::TokenRequest(uint64_t *a1, uint64_t a2)
{
  fido::pin::TokenRequest::TokenRequest(a1, a2);
  return a1;
}

{
  WTF::Ref<WebCore::CryptoKeyAES,WTF::RawPtrTraits<WebCore::CryptoKeyAES>,WTF::DefaultRefDerefTraits<WebCore::CryptoKeyAES>>::Ref(a1, a2);
  std::map<cbor::CBORValue,cbor::CBORValue,cbor::CBORValue::CTAPLess,WTF::FastAllocator<std::pair<cbor::CBORValue const,cbor::CBORValue>>>::map[abi:sn200100](a1 + 1, (a2 + 8));
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 4), (a2 + 32));
  return a1;
}

uint64_t *WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t *WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0::~$_0(uint64_t *a1)
{
  WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0::~$_0(a1);
  return a1;
}

{
  fido::pin::TokenRequest::~TokenRequest((a1 + 1));
  WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(a1);
  return a1;
}

fido::pin::TokenRequest *std::optional<fido::pin::TokenRequest>::~optional(fido::pin::TokenRequest *a1)
{
  std::optional<fido::pin::TokenRequest>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<fido::pin::TokenRequest,false>::~__optional_move_assign_base(a1);
  return a1;
}

WTF::CString *std::optional<WTF::CString>::~optional(WTF::CString *a1)
{
  std::optional<WTF::CString>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<WTF::CString,false>::~__optional_move_assign_base(a1);
  return a1;
}

fido::pin::TokenResponse *WebKit::CtapAuthenticator::continueRequestAfterGetPinToken(WebKit::FidoAuthenticator *a1, uint64_t a2, uint64_t a3)
{
  v110 = *MEMORY[0x1E69E9840];
  v44 = a1;
  v43 = a2;
  v42 = a3;
  oslog = qword_1ED641530;
  v40 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    v4 = oslog;
    v5 = v40;
    WebKit::CtapAuthenticator::aaguidForDebugging(&v38, a1);
    WTF::String::utf8();
    v6 = WTF::CString::data(&v39);
    WebKit::FidoAuthenticator::transportForDebugging(&v36, a1);
    WTF::String::utf8();
    v7 = WTF::CString::data(&v37);
    __os_log_helper_16_2_3_8_0_8_32_8_32(buf, a1, v6, v7);
    _os_log_impl(&dword_19D52D000, v4, v5, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueGetNextAssertionAfterResponseReceived", buf, 0x20u);
    WTF::CString::~CString(&v37);
    v46 = &v36;
    v63 = &v36;
    v66 = &v36;
    v67[1] = &v36;
    v67[0] = 0;
    v74 = &v36;
    v73 = v67;
    v70 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v36);
    if (v70)
    {
      WTF::StringImpl::deref(v70);
    }

    WTF::CString::~CString(&v39);
    v45 = &v38;
    v64 = &v38;
    v65 = &v38;
    v68[1] = &v38;
    v68[0] = 0;
    v72 = &v38;
    v71 = v68;
    v69 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v38);
    if (v69)
    {
      WTF::StringImpl::deref(v69);
    }
  }

  WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>::impl(v42);
  fido::pin::TokenResponse::parse();
  if (std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::operator BOOL[abi:sn200100](v35))
  {
    v16 = WebKit::Authenticator::observer(a1);
    v48 = v26;
    v47 = v16;
    v80 = v26;
    v79 = v16;
    v81 = v16;
    if (v16)
    {
      (**v81)();
    }

    v26[0] = v81;
    if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(v26))
    {
      v53 = v26;
      v98 = v26;
      v17 = v26[0];
      v25 = 0;
      (*(*v17 + 48))(v17, v18);
    }

    v56 = v26;
    v86[1] = v26;
    v86[0] = 0;
    v91 = v26;
    v90 = v86;
    v87 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(v26);
    if (v87)
    {
      (*(*v87 + 8))();
    }

    std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::operator*[abi:sn200100](v35);
    WebKit::Authenticator::requestData(a1);
    fido::pin::TokenResponse::pinAuth();
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1 + 1088, v24);
    WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24);
    v23 = a1;
    v22 = a1;
    v62 = WebKit::Authenticator::requestData(a1) + 16;
    v61[3] = &v23;
    v61[2] = &v22;
    v60 = a1;
    v59 = a1;
    v107 = a1;
    v106 = a1;
    v105 = a1;
    v104 = a1;
    WTF::Visitor<WebKit::AuthenticatorManager::initTimeOutTimer(void)::$_0,WebKit::AuthenticatorManager::initTimeOutTimer(void)::$_1>::Visitor(v108, a1, a1);
    v61[1] = v108[1];
    v61[0] = v108[0];
    v99 = v62;
    v103 = v61;
    v102 = v62;
    v101 = 2;
    switch(mpark::variant<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::index(v62))
    {
      case 0:
        v19 = v103;
        mpark::get<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(v102);
        WebKit::CtapAuthenticator::continueRequestAfterGetPinToken(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,fido::pin::TokenRequest const&)::$_0::operator()(v19);
        goto LABEL_63;
      case 1:
        v20 = v103 + 1;
        mpark::get<WebCore::PublicKeyCredentialRequestOptions,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(v102);
        WebKit::CtapAuthenticator::continueRequestAfterGetPinToken(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,fido::pin::TokenRequest const&)::$_1::operator()(v20);
        goto LABEL_63;
      case 2:
        __break(1u);
        goto LABEL_33;
      case 3:
LABEL_33:
        __break(1u);
        goto LABEL_34;
      case 4:
LABEL_34:
        __break(1u);
        goto LABEL_35;
      case 5:
LABEL_35:
        __break(1u);
        goto LABEL_36;
      case 6:
LABEL_36:
        __break(1u);
        goto LABEL_37;
      case 7:
LABEL_37:
        __break(1u);
        goto LABEL_38;
      case 8:
LABEL_38:
        __break(1u);
        goto LABEL_39;
      case 9:
LABEL_39:
        __break(1u);
        goto LABEL_40;
      case 10:
LABEL_40:
        __break(1u);
        goto LABEL_41;
      case 11:
LABEL_41:
        __break(1u);
        goto LABEL_42;
      case 12:
LABEL_42:
        __break(1u);
        goto LABEL_43;
      case 13:
LABEL_43:
        __break(1u);
        goto LABEL_44;
      case 14:
LABEL_44:
        __break(1u);
        goto LABEL_45;
      case 15:
LABEL_45:
        __break(1u);
        goto LABEL_46;
      case 16:
LABEL_46:
        __break(1u);
        goto LABEL_47;
      case 17:
LABEL_47:
        __break(1u);
        goto LABEL_48;
      case 18:
LABEL_48:
        __break(1u);
        goto LABEL_49;
      case 19:
LABEL_49:
        __break(1u);
        goto LABEL_50;
      case 20:
LABEL_50:
        __break(1u);
        goto LABEL_51;
      case 21:
LABEL_51:
        __break(1u);
        goto LABEL_52;
      case 22:
LABEL_52:
        __break(1u);
        goto LABEL_53;
      case 23:
LABEL_53:
        __break(1u);
        goto LABEL_54;
      case 24:
LABEL_54:
        __break(1u);
        goto LABEL_55;
      case 25:
LABEL_55:
        __break(1u);
        goto LABEL_56;
      case 26:
LABEL_56:
        __break(1u);
        goto LABEL_57;
      case 27:
LABEL_57:
        __break(1u);
        goto LABEL_58;
      case 28:
LABEL_58:
        __break(1u);
        goto LABEL_59;
      case 29:
LABEL_59:
        __break(1u);
        goto LABEL_60;
      case 30:
LABEL_60:
        __break(1u);
        goto LABEL_61;
      case 31:
LABEL_61:
        __break(1u);
        break;
      default:
        break;
    }

    v100 = 2;
    __break(1u);
LABEL_63:
    v32 = 0;
  }

  else
  {
    ResponseCode = fido::getResponseCode();
    {
      goto LABEL_16;
    }

    v8 = WebKit::Authenticator::observer(a1);
    v52 = &v33;
    v51 = v8;
    v76 = &v33;
    v75 = v8;
    v83 = v8;
    if (v8)
    {
      (**v83)();
    }

    v33 = v83;
    if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(&v33))
    {
      v55 = &v33;
      v96 = &v33;
      v9 = v33;
      (*(*v9 + 48))(v9, v10);
    }

    v58 = &v33;
    v84[1] = &v33;
    v84[0] = 0;
    v95 = &v33;
    v94 = v84;
    v89 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v33);
    if (v89)
    {
      (*(*v89 + 8))();
    }

    if (WebKit::CtapAuthenticator::tryRestartPin(a1, &ResponseCode))
    {
      v32 = 1;
    }

    else
    {
LABEL_16:
      v11 = WebKit::Authenticator::observer(a1);
      v50 = &v31;
      v49 = v11;
      v78 = &v31;
      v77 = v11;
      v82 = v11;
      if (v11)
      {
        (**v82)();
      }

      v31 = v82;
      if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(&v31))
      {
        v54 = &v31;
        v97 = &v31;
        v12 = v31;
        v30 = 0;
        (*(*v12 + 48))(v12, v13);
      }

      v57 = &v31;
      v85[1] = &v31;
      v85[0] = 0;
      v93 = &v31;
      v92 = v85;
      v88 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v31);
      if (v88)
      {
        (*(*v88 + 8))();
      }

      v27[0] = 24;
      v14 = WTF::StringLiterals::operator"" _s("Unknown internal error. Error code: ", 0x24);
      v26[2] = v15;
      v26[1] = v14;
      WTF::makeString<WTF::ASCIILiteral,unsigned char>(&v28, v14, v15, ResponseCode);
      mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WebCore::ExceptionData,WebCore::ExceptionData,0,0,0,1ul,WebCore::ExceptionData,0>(v29);
      WebKit::Authenticator::receiveRespond(a1, v29);
      mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(v29);
      WebCore::ExceptionData::~ExceptionData(v27);
      v32 = 1;
    }
  }

  return std::optional<fido::pin::TokenResponse>::~optional(v35);
}

fido::pin::TokenResponse *std::optional<fido::pin::TokenResponse>::~optional(fido::pin::TokenResponse *a1)
{
  std::optional<fido::pin::TokenResponse>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<fido::pin::TokenResponse,false>::~__optional_move_assign_base(a1);
  return a1;
}

void *WebKit::U2fAuthenticator::create(void *a1, uint64_t a2)
{
  v3 = WTF::RefCounted<WebKit::Authenticator>::operator new();
  WebKit::U2fAuthenticator::U2fAuthenticator(v3, a2);
  return WTF::adoptRef<WebKit::AuthenticatorManager,WTF::RawPtrTraits<WebKit::AuthenticatorManager>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorManager>>(a1, v3);
}

uint64_t WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, a2, a3);
}

{
  v10[0] = a2;
  v10[1] = a3;
  v11 = a1;
  WTF::VectorBuffer<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::FastMalloc>::VectorBuffer(a1);
  v4 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v10);
  v13 = a1;
  v12 = v4;
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveInitialCapacity<(WTF::FailureAction)0>(a1, v4);
  std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v10);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  v9 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v10);
  v8 = std::initializer_list<BOOL>::end[abi:sn200100](v10);
  while (v9 != v8)
  {
    v15 = a1;
    v14 = v9;
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
    v5 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    v6 = operator new(1, 0, v5);
    *v6 = *v14;
    ++*(a1 + 12);
    ++v9;
  }

  return v11;
}

void *std::span<unsigned char const,16ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(void *a1, uint64_t a2)
{
  std::span<unsigned char const,16ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
  return a1;
}

{
  std::ranges::__data::__fn::operator()[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a2);
  *a1 = v3;
  if (std::ranges::__size::__fn::operator()[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a2) != 16)
  {
    __break(1u);
  }

  return a1;
}

uint64_t WTF::UUID::UUID(uint64_t a1, uint64_t a2)
{
  WTF::UUID::UUID(a1, a2);
  return a1;
}

{
  v3 = WTF::asMutableByteSpan<unsigned __int128,18446744073709551615ul>(a1);
  WTF::memcpySpan<unsigned char,18446744073709551615ul,unsigned char const,16ul>(v3, v4, a2);
  return a1;
}

WTF::CString *WebKit::CtapAuthenticator::continueSetupPinAfterCommand(uint64_t a1, uint64_t a2, fido::pin *a3, uint64_t a4)
{
  v170 = *MEMORY[0x1E69E9840];
  v81 = a1;
  v80 = a2;
  v79 = a3;
  v78 = a4;
  if (fido::getResponseCode())
  {
    oslog = qword_1ED641530;
    v75 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      v6 = oslog;
      v7 = v75;
      WebKit::CtapAuthenticator::aaguidForDebugging(&v73, a1);
      WTF::String::utf8();
      v8 = WTF::CString::data(&v74);
      WebKit::FidoAuthenticator::transportForDebugging(&v71, a1);
      WTF::String::utf8();
      v9 = WTF::CString::data(&v72);
      std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(v68, v80);
      v67 = 0;
      WTF::OptionSet<WTF::Base64EncodeOption>::OptionSet(&v67);
      WTF::base64EncodeToString(&v69, v68[0], v68[1]);
      WTF::String::utf8();
      v10 = WTF::CString::data(&v70);
      __os_log_helper_16_2_4_8_0_8_32_8_32_8_32(buf, a1, v8, v9, v10);
      _os_log_impl(&dword_19D52D000, v6, v7, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueSetupPinAfterCommand: Response of setPin was not successful: %s", buf, 0x2Au);
      WTF::CString::~CString(&v70);
      v91 = &v69;
      v96 = &v69;
      v115 = &v69;
      v116[1] = &v69;
      v116[0] = 0;
      v155 = &v69;
      v154 = v116;
      v135 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v69);
      if (v135)
      {
        WTF::StringImpl::deref(v135);
      }

      WTF::CString::~CString(&v72);
      v90 = &v71;
      v97 = &v71;
      v114 = &v71;
      v117[1] = &v71;
      v117[0] = 0;
      v153 = &v71;
      v152 = v117;
      v134 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v71);
      if (v134)
      {
        WTF::StringImpl::deref(v134);
      }

      WTF::CString::~CString(&v74);
      v89 = &v73;
      v98 = &v73;
      v113 = &v73;
      v118[1] = &v73;
      v118[0] = 0;
      v151 = &v73;
      v150 = v118;
      v133 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v73);
      if (v133)
      {
        WTF::StringImpl::deref(v133);
      }
    }

    WebKit::Authenticator::protectedObserver(&v66, a1);
    v93 = &v66;
    v164 = &v66;
    (*(*v66 + 48))();
    v95 = &v66;
    v156[1] = &v66;
    v156[0] = 0;
    v163 = &v66;
    v162 = v156;
    result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v66);
    v159 = result;
    if (result)
    {
      return (*(*v159 + 8))();
    }
  }

  else
  {
    fido::AuthenticatorGetInfoResponse::options((a1 + 840));
    fido::AuthenticatorSupportedOptions::setClientPinAvailability();
    fido::pin::validateAndConvertToUTF8(v65, v79, v12);
    if (std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::operator BOOL[abi:sn200100](v65))
    {
      std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::operator*[abi:sn200100](v65);
      WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(a4);
      fido::pin::TokenRequest::tryCreate();
      if (std::optional<fido::pin::TokenRequest>::operator BOOL[abi:sn200100](v56))
      {
        std::optional<fido::pin::TokenRequest>::operator*[abi:sn200100](v56);
        fido::pin::encodeAsCBOR();
        v43 = qword_1ED641530;
        v42 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v43;
          v24 = v42;
          WebKit::CtapAuthenticator::aaguidForDebugging(&v40, a1);
          WTF::String::utf8();
          v25 = WTF::CString::data(&v41);
          WebKit::FidoAuthenticator::transportForDebugging(&v38, a1);
          WTF::String::utf8();
          v26 = WTF::CString::data(&v39);
          std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(v35, v44);
          v34 = 0;
          WTF::OptionSet<WTF::Base64EncodeOption>::OptionSet(&v34);
          WTF::base64EncodeToString(&v36, v35[0], v35[1]);
          WTF::String::utf8();
          v27 = WTF::CString::data(&v37);
          __os_log_helper_16_2_4_8_0_8_32_8_32_8_32(v166, a1, v25, v26, v27);
          _os_log_impl(&dword_19D52D000, v23, v24, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueSetupPinAfterCommand: Sending %s", v166, 0x2Au);
          WTF::CString::~CString(&v37);
          v84 = &v36;
          v103 = &v36;
          v108 = &v36;
          v123[1] = &v36;
          v123[0] = 0;
          v141 = &v36;
          v140 = v123;
          v128 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v36);
          if (v128)
          {
            WTF::StringImpl::deref(v128);
          }

          WTF::CString::~CString(&v39);
          v83 = &v38;
          v104 = &v38;
          v107 = &v38;
          v124[1] = &v38;
          v124[0] = 0;
          v139 = &v38;
          v138 = v124;
          v127 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v38);
          if (v127)
          {
            WTF::StringImpl::deref(v127);
          }

          WTF::CString::~CString(&v41);
          v82 = &v40;
          v105 = &v40;
          v106 = &v40;
          v125[1] = &v40;
          v125[0] = 0;
          v137 = &v40;
          v136 = v125;
          v126 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v40);
          if (v126)
          {
            WTF::StringImpl::deref(v126);
          }
        }

        WebKit::FidoAuthenticator::protectedDriver(a1, &v33);
        v28 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v33);
        WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v30, a1);
        std::optional<fido::pin::TokenRequest>::operator*[abi:sn200100](v56);
        fido::pin::TokenRequest::TokenRequest(v31, v29);
        WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueSetupPinAfterCommand(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,WTF::String const&,WTF::Ref<WebCore::CryptoKeyEC,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>>)::$_0,void>(&v32, &v30);
        (*(*v28 + 16))(v28, v44, &v32);
        WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(&v32);
        WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0::~$_0(&v30);
        WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(&v33);
        WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44);
        v57 = 0;
      }

      else
      {
        v55 = qword_1ED641530;
        v54 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v55;
          v18 = v54;
          WebKit::CtapAuthenticator::aaguidForDebugging(&v52, a1);
          WTF::String::utf8();
          v19 = WTF::CString::data(&v53);
          WebKit::FidoAuthenticator::transportForDebugging(&v50, a1);
          WTF::String::utf8();
          v20 = WTF::CString::data(&v51);
          __os_log_helper_16_2_3_8_0_8_32_8_32(v167, a1, v19, v20);
          _os_log_impl(&dword_19D52D000, v17, v18, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueSetupPinAfterCommand: Failed to create TokenRequest.", v167, 0x20u);
          WTF::CString::~CString(&v51);
          v86 = &v50;
          v101 = &v50;
          v110 = &v50;
          v121[1] = &v50;
          v121[0] = 0;
          v145 = &v50;
          v144 = v121;
          v130 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v50);
          if (v130)
          {
            WTF::StringImpl::deref(v130);
          }

          WTF::CString::~CString(&v53);
          v85 = &v52;
          v102 = &v52;
          v109 = &v52;
          v122[1] = &v52;
          v122[0] = 0;
          v143 = &v52;
          v142 = v122;
          v129 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v52);
          if (v129)
          {
            WTF::StringImpl::deref(v129);
          }
        }

        v47[0] = 24;
        v21 = WTF::StringLiterals::operator"" _s("Cannot create a TokenRequest.", 0x1D);
        v46 = v22;
        v45 = v21;
        WTF::String::String(&v48, v21, v22);
        mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WebCore::ExceptionData,WebCore::ExceptionData,0,0,0,1ul,WebCore::ExceptionData,0>(v49);
        WebKit::Authenticator::receiveRespond(a1, v49);
        mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(v49);
        WebCore::ExceptionData::~ExceptionData(v47);
        v57 = 1;
      }

      std::optional<fido::pin::TokenRequest>::~optional(v56);
    }

    else
    {
      v64 = qword_1ED641530;
      v63 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v64;
        v14 = v63;
        WebKit::CtapAuthenticator::aaguidForDebugging(&v61, a1);
        WTF::String::utf8();
        v15 = WTF::CString::data(&v62);
        WebKit::FidoAuthenticator::transportForDebugging(&v59, a1);
        WTF::String::utf8();
        v16 = WTF::CString::data(&v60);
        __os_log_helper_16_2_3_8_0_8_32_8_32(v168, a1, v15, v16);
        _os_log_impl(&dword_19D52D000, v13, v14, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueSetupPinAfterCommand: Unable to convert PIN, although it was successfully set.", v168, 0x20u);
        WTF::CString::~CString(&v60);
        v88 = &v59;
        v99 = &v59;
        v112 = &v59;
        v119[1] = &v59;
        v119[0] = 0;
        v149 = &v59;
        v148 = v119;
        v132 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v59);
        if (v132)
        {
          WTF::StringImpl::deref(v132);
        }

        WTF::CString::~CString(&v62);
        v87 = &v61;
        v100 = &v61;
        v111 = &v61;
        v120[1] = &v61;
        v120[0] = 0;
        v147 = &v61;
        v146 = v120;
        v131 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v61);
        if (v131)
        {
          WTF::StringImpl::deref(v131);
        }
      }

      WebKit::Authenticator::protectedObserver(&v58, a1);
      v92 = &v58;
      v165 = &v58;
      (*(*v58 + 48))();
      v94 = &v58;
      v157[1] = &v58;
      v157[0] = 0;
      v161 = &v58;
      v160 = v157;
      v158 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v58);
      if (v158)
      {
        (*(*v158 + 8))();
      }

      v57 = 1;
    }

    return std::optional<WTF::CString>::~optional(v65);
  }

  return result;
}

uint64_t *WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueSetupPinAfterCommand(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,WTF::String const&,WTF::Ref<WebCore::CryptoKeyEC,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>>)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueSetupPinAfterCommand(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,WTF::String const&,WTF::Ref<WebCore::CryptoKeyEC,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>>)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSetupPinAfterCommand(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&,WTF::Ref<WebCore::CryptoKeyEC,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>>)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>,WTF::Ref<WebCore::CryptoKeyEC,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>>,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

fido::pin::KeyAgreementResponse *WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  v36 = a1;
  v35 = a2;
  v34 = a3;
  fido::pin::KeyAgreementResponse::parse();
  if (std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::operator BOOL[abi:sn200100](v33))
  {
    std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::operator*[abi:sn200100](v33);
    WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(v6);
    fido::pin::SetPinRequest::tryCreate();
    if (std::optional<fido::pin::SetPinRequest>::operator BOOL[abi:sn200100](v25))
    {
      std::optional<fido::pin::SetPinRequest>::operator->[abi:sn200100](v25);
      v10 = fido::pin::SetPinRequest::pinAuth(v9);
      WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((a1 + 1088), v10);
      std::optional<fido::pin::SetPinRequest>::operator->[abi:sn200100](v25);
      fido::pin::encodeAsCBOR();
      WebKit::FidoAuthenticator::protectedDriver(a1, &v18);
      v11 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v18);
      WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v14, a1);
      WTF::String::String(&v15, v34);
      std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::operator*[abi:sn200100](v33);
      WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(&v16, v12);
      WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,WTF::String const&)::$_0,void>(&v17, &v14);
      (*(*v11 + 16))(v11, v19, &v17);
      WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(&v17);
      WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&)::$_0::~$_0(&v14);
      WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(&v18);
      WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19);
      v26 = 0;
    }

    else
    {
      v22[0] = 24;
      v7 = WTF::StringLiterals::operator"" _s("Cannot create a SetPinRequest.", 0x1E);
      v21 = v8;
      v20 = v7;
      WTF::String::String(&v23, v7, v8);
      mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WebCore::ExceptionData,WebCore::ExceptionData,0,0,0,1ul,WebCore::ExceptionData,0>(v24);
      WebKit::Authenticator::receiveRespond(a1, v24);
      mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(v24);
      WebCore::ExceptionData::~ExceptionData(v22);
      v26 = 1;
    }

    std::optional<fido::pin::SetPinRequest>::~optional(v25);
  }

  else
  {
    ResponseCode = fido::getResponseCode();
    v29[0] = 24;
    v4 = WTF::StringLiterals::operator"" _s("Unknown internal error. Error code: ", 0x24);
    v28 = v5;
    v27 = v4;
    WTF::makeString<WTF::ASCIILiteral,unsigned char>(&v30, v4, v5, ResponseCode);
    mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WebCore::ExceptionData,WebCore::ExceptionData,0,0,0,1ul,WebCore::ExceptionData,0>(v31);
    WebKit::Authenticator::receiveRespond(a1, v31);
    mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(v31);
    WebCore::ExceptionData::~ExceptionData(v29);
    v26 = 1;
  }

  return std::optional<fido::pin::KeyAgreementResponse>::~optional(v33);
}

void std::optional<fido::pin::SetPinRequest>::operator->[abi:sn200100](uint64_t a1)
{
  if ((std::__optional_storage_base<fido::pin::SetPinRequest,false>::has_value[abi:sn200100](a1) & 1) == 0)
  {
    __break(1u);
  }

  std::__to_address[abi:sn200100]<char const>();
}

uint64_t *WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,WTF::String const&)::$_0,void>(uint64_t *a1, uint64_t a2)
{
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,WTF::String const&)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>,WTF::String const&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t *WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&)::$_0::~$_0(uint64_t *a1)
{
  WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&)::$_0::~$_0(a1);
  return a1;
}

{
  WTF::Ref<WebCore::CryptoKeyAES,WTF::RawPtrTraits<WebCore::CryptoKeyAES>,WTF::DefaultRefDerefTraits<WebCore::CryptoKeyAES>>::~Ref(a1 + 2);
  v3[1] = a1 + 1;
  v3[0] = 0;
  v6 = a1 + 1;
  v5 = v3;
  v4 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1 + 1);
  if (v4)
  {
    WTF::StringImpl::deref(v4);
  }

  WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(a1);
  return a1;
}

fido::pin::SetPinRequest *std::optional<fido::pin::SetPinRequest>::~optional(fido::pin::SetPinRequest *a1)
{
  std::optional<fido::pin::SetPinRequest>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<fido::pin::SetPinRequest,false>::~__optional_move_assign_base(a1);
  return a1;
}

uint64_t WebKit::CtapAuthenticator::setupPin(WebKit::CtapAuthenticator *this)
{
  v48 = *MEMORY[0x1E69E9840];
  v22[1] = this;
  v24 = v22;
  v23 = WebKit::Authenticator::observer(this);
  v40 = v22;
  v39 = v23;
  v41 = v23;
  if (v23)
  {
    (**v41)();
  }

  v22[0] = v41;
  if (WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(v22))
  {
    v21 = 1;
  }

  else
  {
    oslog = qword_1ED641530;
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog;
      v3 = v19;
      WebKit::CtapAuthenticator::aaguidForDebugging(&v17, this);
      WTF::String::utf8();
      v4 = WTF::CString::data(&v18);
      WebKit::FidoAuthenticator::transportForDebugging(&v15, this);
      WTF::String::utf8();
      v5 = WTF::CString::data(&v16);
      __os_log_helper_16_2_3_8_0_8_32_8_32(buf, this, v4, v5);
      _os_log_impl(&dword_19D52D000, v2, v3, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::setupPin: Requesting new pin from delegate", buf, 0x20u);
      WTF::CString::~CString(&v16);
      v22[3] = &v15;
      v27 = &v15;
      v30 = &v15;
      v31[1] = &v15;
      v31[0] = 0;
      v38 = &v15;
      v37 = v31;
      v34 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v15);
      if (v34)
      {
        WTF::StringImpl::deref(v34);
      }

      WTF::CString::~CString(&v18);
      v22[2] = &v17;
      v28 = &v17;
      v29 = &v17;
      v32[1] = &v17;
      v32[0] = 0;
      v36 = &v17;
      v35 = v32;
      v33 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v17);
      if (v33)
      {
        WTF::StringImpl::deref(v33);
      }
    }

    v6 = fido::AuthenticatorGetInfoResponse::minPINLength((this + 840));
    v13 = 4;
    LODWORD(v14) = std::optional<unsigned int>::value_or[abi:sn200100]<int>(v6, &v13);
    v14 = v14;
    v25 = v22;
    v46 = v22;
    v7 = v22[0];
    v8 = v14;
    WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v11, this);
    WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v10);
    WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler<WebKit::CtapAuthenticator::setupPin(void)::$_0,void>(&v12, &v11);
    (*(*v7 + 64))(v7, v8, &v12);
    WTF::CompletionHandler<void ()(WTF::String const&)>::~CompletionHandler(&v12);
    WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v10);
    WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(&v11);
    v21 = 0;
  }

  v26 = v22;
  v42[1] = v22;
  v42[0] = 0;
  v45 = v22;
  v44 = v42;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(v22);
  v43 = result;
  if (result)
  {
    return (*(*v43 + 8))();
  }

  return result;
}

uint64_t std::optional<unsigned int>::value_or[abi:sn200100]<int>(uint64_t a1, unsigned int *a2)
{
  if ((std::__optional_storage_base<unsigned int,false>::has_value[abi:sn200100](a1) & 1) == 0)
  {
    return *a2;
  }

  std::__to_address[abi:sn200100]<char const>();
  return *v2;
}

uint64_t *WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler<WebKit::CtapAuthenticator::setupPin(void)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler<WebKit::CtapAuthenticator::setupPin(void)::$_0,void>(a1, a2);
  return a1;
}

{
  WTF::Function<void ()(WTF::String const&)>::Function<WebKit::CtapAuthenticator::setupPin(void)::$_0,void>(a1, a2);
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(a1);
  return a1;
}

BOOL std::set<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::contains[abi:sn200100](uint64_t a1, _DWORD *a2)
{
  v4[2] = a1;
  v4[1] = a2;
  v4[0] = std::set<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::find[abi:sn200100](a1, a2);
  v3 = std::set<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::end[abi:sn200100]();
  return std::operator!=[abi:sn200100](v4, &v3);
}

uint64_t *WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t *WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0::~$_0(uint64_t *a1)
{
  WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0::~$_0(a1);
  return a1;
}

{
  WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(a1 + 1);
  WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(a1);
  return a1;
}

uint64_t *WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_1,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_1,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_1,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_1,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

void WebKit::CtapAuthenticator::~CtapAuthenticator(WebKit::CtapAuthenticator *this)
{
  WebKit::CtapAuthenticator::~CtapAuthenticator(this);
}

{
  WebKit::CtapAuthenticator::~CtapAuthenticator(this);
  WTF::FastMalloc::fastFree(this, v2);
}

{
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 1088);
  WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 1072);
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 1056);
  fido::AuthenticatorGetInfoResponse::~AuthenticatorGetInfoResponse((this + 840));
  WebKit::FidoAuthenticator::~FidoAuthenticator(this);
}

void *std::set<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::set[abi:sn200100](void *a1, void *a2)
{
  std::set<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::set[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::__tree(a1, a2);
  return a1;
}

_BYTE *std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__optional_move_assign_base<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_assign_base[abi:sn200100](a1, a2);
  return a1;
}

_BYTE *std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__optional_move_assign_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_assign_base[abi:sn200100](a1, a2);
  return a1;
}

_BYTE *std::optional<WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::optional<WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__optional_move_assign_base<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_assign_base[abi:sn200100](a1, a2);
  return a1;
}

void *std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::__tree(void *a1, void *a2)
{
  std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::__tree(a1, a2);
  return a1;
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  if (*std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::size[abi:sn200100](a1))
  {
    std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::__end_node[abi:sn200100]();
    v6 = v5;
    std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::__end_node[abi:sn200100]();
    *(*v7 + 16) = v6;
    std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::__end_node[abi:sn200100]();
    v9 = v8;
    std::__to_address[abi:sn200100]<char const>();
    *v10 = v9;
    std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::__end_node[abi:sn200100]();
    *v11 = 0;
    *std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::size[abi:sn200100](a2) = 0;
  }

  else
  {
    std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::__end_node[abi:sn200100]();
    v3 = v2;
    std::__to_address[abi:sn200100]<char const>();
    *v4 = v3;
  }

  return a1;
}

_BYTE *std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::__optional_copy_base<WebCore::BufferSource,false>::__optional_copy_base[abi:sn200100](a1);
  std::__optional_storage_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__construct_from[abi:sn200100]<std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>>(a1, a2);
  return a1;
}

uint64_t std::__optional_storage_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__construct_from[abi:sn200100]<std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>>(uint64_t a1, uint64_t a2)
{
  result = std::__optional_storage_base<WebCore::BufferSource,false>::has_value[abi:sn200100](a2);
  if (result)
  {
    std::__to_address[abi:sn200100]<char const>();
    return std::__optional_storage_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__construct[abi:sn200100]<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v4);
  }

  return result;
}

uint64_t std::__optional_storage_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__construct[abi:sn200100]<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, _DWORD *a2)
{
  result = std::__construct_at[abi:sn200100]<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>*>(a1, a2);
  *(a1 + 16) = 1;
  return result;
}

uint64_t std::construct_at[abi:sn200100]<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>*>(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    __break(1u);
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, a2);
}

uint64_t WTF::RefCounted<WTF::CStringBuffer>::deref(WTF::RefCountedBase *a1)
{
  result = WTF::RefCountedBase::derefBase(a1);
  if (result)
  {
    if (a1)
    {
      WTF::CStringBuffer::~CStringBuffer(a1);
      return WTF::FastMalloc::fastFree(a1, v3);
    }
  }

  return result;
}

void WTF::CStringBuffer::~CStringBuffer(WTF::CStringBuffer *this)
{
  WTF::CStringBuffer::~CStringBuffer(this);
}

{
  WTF::RefCounted<WebKit::AuthenticatorManager>::~RefCounted(this);
}

WebCore::PublicKeyCredentialDescriptor *WebCore::PublicKeyCredentialDescriptor::PublicKeyCredentialDescriptor(WebCore::PublicKeyCredentialDescriptor *this, const PublicKeyCredentialDescriptor *a2)
{
  WebCore::PublicKeyCredentialDescriptor::PublicKeyCredentialDescriptor(this, a2);
  return this;
}

{
  *this = *a2 & 1;
  WebCore::BufferSource::BufferSource((this + 8), (a2 + 8));
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 24, a2 + 24);
  return this;
}

WebCore::BufferSource *WebCore::BufferSource::BufferSource(WebCore::BufferSource *this, const WebCore::BufferSource *a2)
{
  WebCore::BufferSource::BufferSource(this, a2);
  return this;
}

{
  mpark::variant<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::variant(this, a2);
  return this;
}

_BYTE *mpark::variant<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::variant(_BYTE *a1, uint64_t a2)
{
  mpark::variant<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::variant(a1, a2);
  return a1;
}

{
  mpark::detail::impl<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::impl(a1, a2);
  return a1;
}

_BYTE *mpark::detail::impl<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::impl(_BYTE *a1, uint64_t a2)
{
  mpark::detail::impl<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::impl(a1, a2);
  return a1;
}

{
  mpark::detail::copy_assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::copy_assignment(a1, a2);
  return a1;
}

_BYTE *mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::copy_constructor(_BYTE *a1, uint64_t a2)
{
  _ZN5mpark6detail16copy_constructorINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS3_12RawPtrTraitsIS6_EENS3_21DefaultRefDerefTraitsIS6_EEEENS4_INS5_11ArrayBufferENS7_ISC_EENS9_ISC_EEEEEEELNS0_5TraitE1EECI2NS0_4baseILSH_1EJSB_SF_EEEENS0_11valueless_tE(a1);
  mpark::detail::constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::generic_construct<mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1> const&>(a1, a2);
  return a1;
}

void mpark::detail::constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::generic_construct<mpark::detail::copy_constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::destroy(a1);
  if (!mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::valueless_by_exception(a2))
  {
    v2 = mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::index(a2);
    std::__to_address[abi:sn200100]<char const>();
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE17generic_constructIRKNS0_16copy_constructorISJ_LNS0_5TraitE1EEEEEvRSK_OT_EUlRSS_OT0_E_JSR_SQ_EEEDcmST_DpOT0_(v2);
    *(a1 + 8) = *(a2 + 8);
  }
}

void _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE17generic_constructIRKNS0_16copy_constructorISJ_LNS0_5TraitE1EEEEEvRSK_OT_EUlRSS_OT0_E_JSR_SQ_EEEDcmST_DpOT0_(uint64_t a1)
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  switch(a1)
  {
    case 0:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_11constructorINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS8_12RawPtrTraitsISB_EENS8_21DefaultRefDerefTraitsISB_EEEENS9_INSA_11ArrayBufferENSC_ISH_EENSE_ISH_EEEEEEEE17generic_constructIRKNS0_16copy_constructorISL_LNS0_5TraitE1EEEEEvRSM_OT_EUlRSU_OT0_E_JRNS0_3altILm0ESG_EERKS11_EEEDcSV_DpOT0_();
      return;
    case 1:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_11constructorINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS8_12RawPtrTraitsISB_EENS8_21DefaultRefDerefTraitsISB_EEEENS9_INSA_11ArrayBufferENSC_ISH_EENSE_ISH_EEEEEEEE17generic_constructIRKNS0_16copy_constructorISL_LNS0_5TraitE1EEEEEvRSM_OT_EUlRSU_OT0_E_JRNS0_3altILm1ESK_EERKS11_EEEDcSV_DpOT0_();
      return;
    case 2:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_5;
    case 3:
LABEL_5:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_6;
    case 4:
LABEL_6:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_7;
    case 5:
LABEL_7:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_8;
    case 6:
LABEL_8:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_9;
    case 7:
LABEL_9:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_10;
    case 8:
LABEL_10:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_11;
    case 9:
LABEL_11:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_12;
    case 10:
LABEL_12:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_13;
    case 11:
LABEL_13:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_14;
    case 12:
LABEL_14:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_15;
    case 13:
LABEL_15:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_16;
    case 14:
LABEL_16:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_17;
    case 15:
LABEL_17:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_18;
    case 16:
LABEL_18:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_19;
    case 17:
LABEL_19:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_20;
    case 18:
LABEL_20:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_21;
    case 19:
LABEL_21:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_22;
    case 20:
LABEL_22:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_23;
    case 21:
LABEL_23:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_24;
    case 22:
LABEL_24:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_25;
    case 23:
LABEL_25:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_26;
    case 24:
LABEL_26:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_27;
    case 25:
LABEL_27:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_28;
    case 26:
LABEL_28:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_29;
    case 27:
LABEL_29:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_30;
    case 28:
LABEL_30:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_31;
    case 29:
LABEL_31:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_32;
    case 30:
LABEL_32:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_33;
    case 31:
LABEL_33:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      break;
    default:
      break;
  }

  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  __break(1u);
}

WTF::RefCountedBase **_ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_11constructorINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS8_12RawPtrTraitsISB_EENS8_21DefaultRefDerefTraitsISB_EEEENS9_INSA_11ArrayBufferENSC_ISH_EENSE_ISH_EEEEEEEE17generic_constructIRKNS0_16copy_constructorISL_LNS0_5TraitE1EEEEEvRSM_OT_EUlRSU_OT0_E_JRNS0_3altILm0ESG_EERKS11_EEEDcSV_DpOT0_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176invokeIZNS_6detail11constructorINS3_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE17generic_constructIRKNS3_16copy_constructorISJ_LNS3_5TraitE1EEEEEvRSK_OT_EUlRSS_OT0_E_JRNS3_3altILm0ESE_EERKSZ_EEEDTclsr6detailE6invokeclsr3libE7forwardISS_Efp_Espclsr3libE7forwardIT0_Efp0_EEEST_DpOS13_();
}

WTF::RefCountedBase **_ZN5mpark3lib5cpp176invokeIZNS_6detail11constructorINS3_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE17generic_constructIRKNS3_16copy_constructorISJ_LNS3_5TraitE1EEEEEvRSK_OT_EUlRSS_OT0_E_JRNS3_3altILm0ESE_EERKSZ_EEEDTclsr6detailE6invokeclsr3libE7forwardISS_Efp_Espclsr3libE7forwardIT0_Efp0_EEEST_DpOS13_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176detail6invokeIZNS_6detail11constructorINS4_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS7_12RawPtrTraitsISA_EENS7_21DefaultRefDerefTraitsISA_EEEENS8_INS9_11ArrayBufferENSB_ISG_EENSD_ISG_EEEEEEEE17generic_constructIRKNS4_16copy_constructorISK_LNS4_5TraitE1EEEEEvRSL_OT_EUlRST_OT0_E_JRNS4_3altILm0ESF_EERKS10_EEEDTclclsr3libE7forwardIST_Efp_Espclsr3libE7forwardIT0_Efp0_EEESU_DpOS14_();
}

WTF::RefCountedBase **_ZN5mpark3lib5cpp176detail6invokeIZNS_6detail11constructorINS4_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS7_12RawPtrTraitsISA_EENS7_21DefaultRefDerefTraitsISA_EEEENS8_INS9_11ArrayBufferENSB_ISG_EENSD_ISG_EEEEEEEE17generic_constructIRKNS4_16copy_constructorISK_LNS4_5TraitE1EEEEEvRSL_OT_EUlRST_OT0_E_JRNS4_3altILm0ESF_EERKS10_EEEDTclclsr3libE7forwardIST_Efp_Espclsr3libE7forwardIT0_Efp0_EEESU_DpOS14_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZZN5mpark6detail11constructorINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS3_12RawPtrTraitsIS6_EENS3_21DefaultRefDerefTraitsIS6_EEEENS4_INS5_11ArrayBufferENS7_ISC_EENS9_ISC_EEEEEEEE17generic_constructIRKNS0_16copy_constructorISG_LNS0_5TraitE1EEEEEvRSH_OT_ENKUlRSP_OT0_E_clINS0_3altILm0ESB_EERKSX_EEDaSR_ST_();
}

WTF::RefCountedBase **mpark::detail::constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::construct_alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>> const&>()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>::alt<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>> const&>(v1);
  return v1;
}

WTF::RefCountedBase **mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>::alt<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>> const&>(WTF::RefCountedBase **a1)
{
  mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>::alt<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>> const&>(a1);
  return a1;
}

{
  std::__to_address[abi:sn200100]<char const>();
  v4 = *v2;
  if (*v2)
  {
    WTF::RefCountedBase::ref(v4);
  }

  *a1 = v4;
  return a1;
}

void *_ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_11constructorINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS8_12RawPtrTraitsISB_EENS8_21DefaultRefDerefTraitsISB_EEEENS9_INSA_11ArrayBufferENSC_ISH_EENSE_ISH_EEEEEEEE17generic_constructIRKNS0_16copy_constructorISL_LNS0_5TraitE1EEEEEvRSM_OT_EUlRSU_OT0_E_JRNS0_3altILm1ESK_EERKS11_EEEDcSV_DpOT0_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176invokeIZNS_6detail11constructorINS3_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE17generic_constructIRKNS3_16copy_constructorISJ_LNS3_5TraitE1EEEEEvRSK_OT_EUlRSS_OT0_E_JRNS3_3altILm1ESI_EERKSZ_EEEDTclsr6detailE6invokeclsr3libE7forwardISS_Efp_Espclsr3libE7forwardIT0_Efp0_EEEST_DpOS13_();
}

void *_ZN5mpark3lib5cpp176invokeIZNS_6detail11constructorINS3_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE17generic_constructIRKNS3_16copy_constructorISJ_LNS3_5TraitE1EEEEEvRSK_OT_EUlRSS_OT0_E_JRNS3_3altILm1ESI_EERKSZ_EEEDTclsr6detailE6invokeclsr3libE7forwardISS_Efp_Espclsr3libE7forwardIT0_Efp0_EEEST_DpOS13_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176detail6invokeIZNS_6detail11constructorINS4_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS7_12RawPtrTraitsISA_EENS7_21DefaultRefDerefTraitsISA_EEEENS8_INS9_11ArrayBufferENSB_ISG_EENSD_ISG_EEEEEEEE17generic_constructIRKNS4_16copy_constructorISK_LNS4_5TraitE1EEEEEvRSL_OT_EUlRST_OT0_E_JRNS4_3altILm1ESJ_EERKS10_EEEDTclclsr3libE7forwardIST_Efp_Espclsr3libE7forwardIT0_Efp0_EEESU_DpOS14_();
}

void *_ZN5mpark3lib5cpp176detail6invokeIZNS_6detail11constructorINS4_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS7_12RawPtrTraitsISA_EENS7_21DefaultRefDerefTraitsISA_EEEENS8_INS9_11ArrayBufferENSB_ISG_EENSD_ISG_EEEEEEEE17generic_constructIRKNS4_16copy_constructorISK_LNS4_5TraitE1EEEEEvRSL_OT_EUlRST_OT0_E_JRNS4_3altILm1ESJ_EERKS10_EEEDTclclsr3libE7forwardIST_Efp_Espclsr3libE7forwardIT0_Efp0_EEESU_DpOS14_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZZN5mpark6detail11constructorINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS3_12RawPtrTraitsIS6_EENS3_21DefaultRefDerefTraitsIS6_EEEENS4_INS5_11ArrayBufferENS7_ISC_EENS9_ISC_EEEEEEEE17generic_constructIRKNS0_16copy_constructorISG_LNS0_5TraitE1EEEEEvRSH_OT_ENKUlRSP_OT0_E_clINS0_3altILm1ESF_EERKSX_EEDaSR_ST_();
}

void *mpark::detail::constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::construct_alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>> const&>()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::alt<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>> const&>(v1);
  return v1;
}

void *mpark::detail::alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::alt<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>> const&>(void *a1)
{
  mpark::detail::alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::alt<WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>> const&>(a1);
  return a1;
}

{
  std::__to_address[abi:sn200100]<char const>();
  v4 = *v2;
  if (*v2)
  {
    WTF::DeferrableRefCountedBase::ref(v4);
  }

  *a1 = v4;
  return a1;
}

unint64_t _ZN5mpark5visitIZNK7WebCore12BufferSource6lengthEvEUlRT_E_JRKNS_7variantIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS7_12RawPtrTraitsISA_EENS7_21DefaultRefDerefTraitsISA_EEEENS8_INS9_11ArrayBufferENSB_ISG_EENSD_ISG_EEEEEEEEEEDcOS3_DpOT0_(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v4 = mpark::variant<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::valueless_by_exception(a2);
  v5 = &v4;
  v6 = 1;
  v2 = mpark::detail::any(&v4, 1);
  if (v2)
  {
    mpark::throw_bad_variant_access(v2);
  }

  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark6detail10visitation7variant11visit_valueIZNK7WebCore12BufferSource6lengthEvEUlRT_E_JRKNS_7variantIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENSA_12RawPtrTraitsISD_EENSA_21DefaultRefDerefTraitsISD_EEEENSB_INSC_11ArrayBufferENSE_ISJ_EENSG_ISJ_EEEEEEEEEEDcOS6_DpOT0_();
}

uint64_t mpark::detail::any(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  v4 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v5);
  v3 = std::initializer_list<BOOL>::end[abi:sn200100](v5);
  while (v4 != v3)
  {
    if (*v4)
    {
      v6 = 1;
      return v6 & 1;
    }

    ++v4;
  }

  v6 = 0;
  return v6 & 1;
}

unint64_t _ZN5mpark6detail10visitation7variant11visit_valueIZNK7WebCore12BufferSource6lengthEvEUlRT_E_JRKNS_7variantIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENSA_12RawPtrTraitsISD_EENSA_21DefaultRefDerefTraitsISD_EEEENSB_INSC_11ArrayBufferENSE_ISJ_EENSG_ISJ_EEEEEEEEEEDcOS6_DpOT0_()
{
  std::__to_address[abi:sn200100]<char const>();
  _ZN5mpark6detail10visitation7variant18make_value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EEDaOS6_();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark6detail10visitation7variant9visit_altINS2_13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EEJRKNS_7variantIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENSC_12RawPtrTraitsISF_EENSC_21DefaultRefDerefTraitsISF_EEEENSD_INSE_11ArrayBufferENSG_ISL_EENSI_ISL_EEEEEEEEEEDcOS7_DpOT0_();
}

unint64_t _ZN5mpark6detail10visitation7variant9visit_altINS2_13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EEJRKNS_7variantIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENSC_12RawPtrTraitsISF_EENSC_21DefaultRefDerefTraitsISF_EEEENSD_INSE_11ArrayBufferENSG_ISL_EENSI_ISL_EEEEEEEEEEDcOS7_DpOT0_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark6detail10visitation3alt9visit_altINS1_7variant13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EEJRKNS0_4implIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENSD_12RawPtrTraitsISG_EENSD_21DefaultRefDerefTraitsISG_EEEENSE_INSF_11ArrayBufferENSH_ISM_EENSJ_ISM_EEEEEEEEEEDcOS8_DpOT0_();
}

unint64_t _ZN5mpark6detail10visitation3alt9visit_altINS1_7variant13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EEJRKNS0_4implIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENSD_12RawPtrTraitsISG_EENSD_21DefaultRefDerefTraitsISG_EEEENSE_INSF_11ArrayBufferENSH_ISM_EENSJ_ISM_EEEEEEEEEEDcOS8_DpOT0_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  switch(mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::index(v0))
  {
    case 0:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      return _ZN5mpark6detail10visitation4base23visit_return_type_checkImmE6invokeINS1_7variant13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EEJRKNS0_3altILm0EN3WTF6RefPtrIN3JSC15ArrayBufferViewENSF_12RawPtrTraitsISI_EENSF_21DefaultRefDerefTraitsISI_EEEEEEEEEDcOSA_DpOT0_();
    case 1:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      return _ZN5mpark6detail10visitation4base23visit_return_type_checkImmE6invokeINS1_7variant13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EEJRKNS0_3altILm1EN3WTF6RefPtrIN3JSC11ArrayBufferENSF_12RawPtrTraitsISI_EENSF_21DefaultRefDerefTraitsISI_EEEEEEEEEDcOSA_DpOT0_();
    case 2:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_5;
    case 3:
LABEL_5:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_6;
    case 4:
LABEL_6:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_7;
    case 5:
LABEL_7:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_8;
    case 6:
LABEL_8:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_9;
    case 7:
LABEL_9:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_10;
    case 8:
LABEL_10:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_11;
    case 9:
LABEL_11:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_12;
    case 10:
LABEL_12:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_13;
    case 11:
LABEL_13:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_14;
    case 12:
LABEL_14:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_15;
    case 13:
LABEL_15:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_16;
    case 14:
LABEL_16:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_17;
    case 15:
LABEL_17:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_18;
    case 16:
LABEL_18:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_19;
    case 17:
LABEL_19:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_20;
    case 18:
LABEL_20:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_21;
    case 19:
LABEL_21:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_22;
    case 20:
LABEL_22:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_23;
    case 21:
LABEL_23:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_24;
    case 22:
LABEL_24:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_25;
    case 23:
LABEL_25:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_26;
    case 24:
LABEL_26:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_27;
    case 25:
LABEL_27:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_28;
    case 26:
LABEL_28:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_29;
    case 27:
LABEL_29:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_30;
    case 28:
LABEL_30:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_31;
    case 29:
LABEL_31:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_32;
    case 30:
LABEL_32:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_33;
    case 31:
LABEL_33:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      break;
    default:
      break;
  }

  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  __break(1u);
  return v2;
}

uint64_t _ZN5mpark6detail10visitation4base23visit_return_type_checkImmE6invokeINS1_7variant13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EEJRKNS0_3altILm0EN3WTF6RefPtrIN3JSC15ArrayBufferViewENSF_12RawPtrTraitsISI_EENSF_21DefaultRefDerefTraitsISI_EEEEEEEEEDcOSA_DpOT0_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176invokeINS_6detail10visitation7variant13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EEJRKNS3_3altILm0EN3WTF6RefPtrIN3JSC15ArrayBufferViewENSE_12RawPtrTraitsISH_EENSE_21DefaultRefDerefTraitsISH_EEEEEEEEEDTclsr6detailE6invokeclsr3libE7forwardIS9_Efp_Espclsr3libE7forwardIT0_Efp0_EEEOS9_DpOSQ_();
}

uint64_t _ZN5mpark3lib5cpp176invokeINS_6detail10visitation7variant13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EEJRKNS3_3altILm0EN3WTF6RefPtrIN3JSC15ArrayBufferViewENSE_12RawPtrTraitsISH_EENSE_21DefaultRefDerefTraitsISH_EEEEEEEEEDTclsr6detailE6invokeclsr3libE7forwardIS9_Efp_Espclsr3libE7forwardIT0_Efp0_EEEOS9_DpOSQ_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176detail6invokeINS_6detail10visitation7variant13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EEJRKNS4_3altILm0EN3WTF6RefPtrIN3JSC15ArrayBufferViewENSF_12RawPtrTraitsISI_EENSF_21DefaultRefDerefTraitsISI_EEEEEEEEEDTclclsr3libE7forwardISA_Efp_Espclsr3libE7forwardIT0_Efp0_EEEOSA_DpOSR_();
}

uint64_t _ZN5mpark3lib5cpp176detail6invokeINS_6detail10visitation7variant13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EEJRKNS4_3altILm0EN3WTF6RefPtrIN3JSC15ArrayBufferViewENSF_12RawPtrTraitsISI_EENSF_21DefaultRefDerefTraitsISI_EEEEEEEEEDTclclsr3libE7forwardISA_Efp_Espclsr3libE7forwardIT0_Efp0_EEEOSA_DpOSR_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZNK5mpark6detail10visitation7variant13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EclIJRKNS0_3altILm0EN3WTF6RefPtrIN3JSC15ArrayBufferViewENSC_12RawPtrTraitsISF_EENSC_21DefaultRefDerefTraitsISF_EEEEEEEEEDcDpOT_();
}

uint64_t _ZNK5mpark6detail10visitation7variant13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EclIJRKNS0_3altILm0EN3WTF6RefPtrIN3JSC15ArrayBufferViewENSC_12RawPtrTraitsISF_EENSC_21DefaultRefDerefTraitsISF_EEEEEEEEEDcDpOT_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark6detail10visitation7variant26visit_exhaustiveness_checkIZNK7WebCore12BufferSource6lengthEvEUlRT_E_JRKN3WTF6RefPtrIN3JSC15ArrayBufferViewENS9_12RawPtrTraitsISC_EENS9_21DefaultRefDerefTraitsISC_EEEEEE6invokeEOS8_SJ_();
}

uint64_t _ZN5mpark6detail10visitation7variant26visit_exhaustiveness_checkIZNK7WebCore12BufferSource6lengthEvEUlRT_E_JRKN3WTF6RefPtrIN3JSC15ArrayBufferViewENS9_12RawPtrTraitsISC_EENS9_21DefaultRefDerefTraitsISC_EEEEEE6invokeEOS8_SJ_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176invokeIZNK7WebCore12BufferSource6lengthEvEUlRT_E_JRKN3WTF6RefPtrIN3JSC15ArrayBufferViewENS8_12RawPtrTraitsISB_EENS8_21DefaultRefDerefTraitsISB_EEEEEEEDTclsr6detailE6invokeclsr3libE7forwardIS5_Efp_Espclsr3libE7forwardIT0_Efp0_EEEOS5_DpOSJ_();
}

uint64_t _ZN5mpark3lib5cpp176invokeIZNK7WebCore12BufferSource6lengthEvEUlRT_E_JRKN3WTF6RefPtrIN3JSC15ArrayBufferViewENS8_12RawPtrTraitsISB_EENS8_21DefaultRefDerefTraitsISB_EEEEEEEDTclsr6detailE6invokeclsr3libE7forwardIS5_Efp_Espclsr3libE7forwardIT0_Efp0_EEEOS5_DpOSJ_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176detail6invokeIZNK7WebCore12BufferSource6lengthEvEUlRT_E_JRKN3WTF6RefPtrIN3JSC15ArrayBufferViewENS9_12RawPtrTraitsISC_EENS9_21DefaultRefDerefTraitsISC_EEEEEEEDTclclsr3libE7forwardIS6_Efp_Espclsr3libE7forwardIT0_Efp0_EEEOS6_DpOSK_();
}

uint64_t _ZN5mpark3lib5cpp176detail6invokeIZNK7WebCore12BufferSource6lengthEvEUlRT_E_JRKN3WTF6RefPtrIN3JSC15ArrayBufferViewENS9_12RawPtrTraitsISC_EENS9_21DefaultRefDerefTraitsISC_EEEEEEEDTclclsr3libE7forwardIS6_Efp_Espclsr3libE7forwardIT0_Efp0_EEEOS6_DpOSK_()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  return _ZZNK7WebCore12BufferSource6lengthEvENKUlRT_E_clIKN3WTF6RefPtrIN3JSC15ArrayBufferViewENS5_12RawPtrTraitsIS8_EENS5_21DefaultRefDerefTraitsIS8_EEEEEEDaS2_(v1, v2);
}

uint64_t _ZZNK7WebCore12BufferSource6lengthEvENKUlRT_E_clIKN3WTF6RefPtrIN3JSC15ArrayBufferViewENS5_12RawPtrTraitsIS8_EENS5_21DefaultRefDerefTraitsIS8_EEEEEEDaS2_(uint64_t a1, JSC::ArrayBufferView **a2)
{
  if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(a2))
  {
    return JSC::ArrayBufferView::byteLength(*a2);
  }

  else
  {
    return 0;
  }
}

uint64_t JSC::ArrayBufferView::byteLength(JSC::ArrayBufferView *this)
{
  if (JSC::ArrayBufferView::isDetached(this))
  {
    return 0;
  }

  if (JSC::ArrayBufferView::isResizableOrGrowableShared(this))
  {
    v6 = JSC::ArrayBuffer::byteLength(*(this + 4), 5);
    v5 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](this);
    if (JSC::ArrayBufferView::isAutoLength(this))
    {
      v4 = v6;
    }

    else
    {
      v4 = v5 + JSC::ArrayBufferView::byteLengthRaw(this);
    }

    if (v5 > v6 || v4 > v6)
    {
      return 0;
    }

    if (JSC::ArrayBufferView::isAutoLength(this))
    {
      v2 = JSC::elementSize(*(this + 4));
      return WTF::roundDownToMultipleOf<unsigned long>(v2, v6 - v5);
    }
  }

  return JSC::ArrayBufferView::byteLengthRaw(this);
}

BOOL JSC::ArrayBufferView::isDetached(JSC::ArrayBufferView *this)
{
  v2 = WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(this + 4);
  v3 = 1;
  if (!v2)
  {
    return JSC::ArrayBuffer::isDetached(*(this + 4));
  }

  return v3;
}

BOOL JSC::ArrayBufferView::isResizableOrGrowableShared(JSC::ArrayBufferView *this)
{
  v1 = 1;
  if ((*(this + 6) & 1) == 0)
  {
    return (*(this + 6) & 2) != 0;
  }

  return v1;
}

unint64_t JSC::ArrayBufferContents::sizeInBytes(atomic_ullong **this, int a2)
{
  if ((this[6] & 1) != 0 && WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(this + 2))
  {
    return JSC::SharedArrayBufferContents::sizeInBytes(this[2], a2);
  }

  else
  {
    return this[4];
  }
}

uint64_t JSC::logElementSize(unsigned __int8 a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 - 1 >= 3)
  {
    if (a1 - 4 >= 2)
    {
      if (a1 - 6 < 2)
      {
        return 2;
      }

      if (a1 != 8)
      {
        if (a1 != 9)
        {
          if (a1 - 10 < 3)
          {
            return 3;
          }

          if (a1 != 13)
          {
            return 0;
          }

          return 0;
        }

        return 2;
      }
    }

    return 1;
  }

  return 0;
}

unint64_t _ZN5mpark6detail10visitation4base23visit_return_type_checkImmE6invokeINS1_7variant13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EEJRKNS0_3altILm1EN3WTF6RefPtrIN3JSC11ArrayBufferENSF_12RawPtrTraitsISI_EENSF_21DefaultRefDerefTraitsISI_EEEEEEEEEDcOSA_DpOT0_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176invokeINS_6detail10visitation7variant13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EEJRKNS3_3altILm1EN3WTF6RefPtrIN3JSC11ArrayBufferENSE_12RawPtrTraitsISH_EENSE_21DefaultRefDerefTraitsISH_EEEEEEEEEDTclsr6detailE6invokeclsr3libE7forwardIS9_Efp_Espclsr3libE7forwardIT0_Efp0_EEEOS9_DpOSQ_();
}

unint64_t _ZN5mpark3lib5cpp176invokeINS_6detail10visitation7variant13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EEJRKNS3_3altILm1EN3WTF6RefPtrIN3JSC11ArrayBufferENSE_12RawPtrTraitsISH_EENSE_21DefaultRefDerefTraitsISH_EEEEEEEEEDTclsr6detailE6invokeclsr3libE7forwardIS9_Efp_Espclsr3libE7forwardIT0_Efp0_EEEOS9_DpOSQ_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176detail6invokeINS_6detail10visitation7variant13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EEJRKNS4_3altILm1EN3WTF6RefPtrIN3JSC11ArrayBufferENSF_12RawPtrTraitsISI_EENSF_21DefaultRefDerefTraitsISI_EEEEEEEEEDTclclsr3libE7forwardISA_Efp_Espclsr3libE7forwardIT0_Efp0_EEEOSA_DpOSR_();
}

unint64_t _ZN5mpark3lib5cpp176detail6invokeINS_6detail10visitation7variant13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EEJRKNS4_3altILm1EN3WTF6RefPtrIN3JSC11ArrayBufferENSF_12RawPtrTraitsISI_EENSF_21DefaultRefDerefTraitsISI_EEEEEEEEEDTclclsr3libE7forwardISA_Efp_Espclsr3libE7forwardIT0_Efp0_EEEOSA_DpOSR_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZNK5mpark6detail10visitation7variant13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EclIJRKNS0_3altILm1EN3WTF6RefPtrIN3JSC11ArrayBufferENSC_12RawPtrTraitsISF_EENSC_21DefaultRefDerefTraitsISF_EEEEEEEEEDcDpOT_();
}

unint64_t _ZNK5mpark6detail10visitation7variant13value_visitorIZNK7WebCore12BufferSource6lengthEvEUlRT_E_EclIJRKNS0_3altILm1EN3WTF6RefPtrIN3JSC11ArrayBufferENSC_12RawPtrTraitsISF_EENSC_21DefaultRefDerefTraitsISF_EEEEEEEEEDcDpOT_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark6detail10visitation7variant26visit_exhaustiveness_checkIZNK7WebCore12BufferSource6lengthEvEUlRT_E_JRKN3WTF6RefPtrIN3JSC11ArrayBufferENS9_12RawPtrTraitsISC_EENS9_21DefaultRefDerefTraitsISC_EEEEEE6invokeEOS8_SJ_();
}

unint64_t _ZN5mpark6detail10visitation7variant26visit_exhaustiveness_checkIZNK7WebCore12BufferSource6lengthEvEUlRT_E_JRKN3WTF6RefPtrIN3JSC11ArrayBufferENS9_12RawPtrTraitsISC_EENS9_21DefaultRefDerefTraitsISC_EEEEEE6invokeEOS8_SJ_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176invokeIZNK7WebCore12BufferSource6lengthEvEUlRT_E_JRKN3WTF6RefPtrIN3JSC11ArrayBufferENS8_12RawPtrTraitsISB_EENS8_21DefaultRefDerefTraitsISB_EEEEEEEDTclsr6detailE6invokeclsr3libE7forwardIS5_Efp_Espclsr3libE7forwardIT0_Efp0_EEEOS5_DpOSJ_();
}

unint64_t _ZN5mpark3lib5cpp176invokeIZNK7WebCore12BufferSource6lengthEvEUlRT_E_JRKN3WTF6RefPtrIN3JSC11ArrayBufferENS8_12RawPtrTraitsISB_EENS8_21DefaultRefDerefTraitsISB_EEEEEEEDTclsr6detailE6invokeclsr3libE7forwardIS5_Efp_Espclsr3libE7forwardIT0_Efp0_EEEOS5_DpOSJ_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176detail6invokeIZNK7WebCore12BufferSource6lengthEvEUlRT_E_JRKN3WTF6RefPtrIN3JSC11ArrayBufferENS9_12RawPtrTraitsISC_EENS9_21DefaultRefDerefTraitsISC_EEEEEEEDTclclsr3libE7forwardIS6_Efp_Espclsr3libE7forwardIT0_Efp0_EEEOS6_DpOSK_();
}

unint64_t _ZN5mpark3lib5cpp176detail6invokeIZNK7WebCore12BufferSource6lengthEvEUlRT_E_JRKN3WTF6RefPtrIN3JSC11ArrayBufferENS9_12RawPtrTraitsISC_EENS9_21DefaultRefDerefTraitsISC_EEEEEEEDTclclsr3libE7forwardIS6_Efp_Espclsr3libE7forwardIT0_Efp0_EEEOS6_DpOSK_()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  return _ZZNK7WebCore12BufferSource6lengthEvENKUlRT_E_clIKN3WTF6RefPtrIN3JSC11ArrayBufferENS5_12RawPtrTraitsIS8_EENS5_21DefaultRefDerefTraitsIS8_EEEEEEDaS2_(v1, v2);
}

unint64_t _ZZNK7WebCore12BufferSource6lengthEvENKUlRT_E_clIKN3WTF6RefPtrIN3JSC11ArrayBufferENS5_12RawPtrTraitsIS8_EENS5_21DefaultRefDerefTraitsIS8_EEEEEEDaS2_(uint64_t a1, atomic_ullong ***a2)
{
  if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(a2))
  {
    return JSC::ArrayBuffer::byteLength(*a2, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::at(uint64_t a1, unint64_t a2)
{
  v4 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
  if (a2 >= v4)
  {
    WTF::CrashOnOverflow::overflowed(v4);
  }

  return std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1) + 16 * a2;
}

uint64_t WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
  v7 = WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v3 + 1, a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
  WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator new();
  result = WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v4, v7);
  ++*(a1 + 12);
  return result;
}

uint64_t WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1) && a3 < WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1))
  {
    v5 = (a3 - WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1)) >> 4;
    WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1) + 16 * v5;
  }

  else
  {
    WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return a3;
  }
}

uint64_t WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, uint64_t a2)
{
  v8[1] = a1;
  v8[0] = a2;
  v7 = 16;
  v11 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(a1);
  v10 = v11 + (v11 >> 1);
  v9 = v11 + 1;
  v6 = *std::max[abi:sn200100]<unsigned long>(&v10, &v9);
  v3 = std::max[abi:sn200100]<unsigned long>(&v7, &v6);
  v4 = std::max[abi:sn200100]<unsigned long>(v8, v3);
  return WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, *v4) & 1;
}

uint64_t WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (a2 > WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(a1))
  {
    v6 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    v5 = WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a1);
    WTF::VectorBufferBase<WebCore::HTTPHeaderMap::CommonHeader,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(a1, a2);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
    v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    WTF::VectorTypeOperations<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::move(v6, v5, v3);
    WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::deallocateBuffer(a1, v6);
  }

  return 1;
}

uint64_t WTF::VectorMover<false,WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::move(uint64_t result, uint64_t *a2, uint64_t a3)
{
  for (i = result; i != a2; i += 2)
  {
    WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator new();
    WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v3, i);
    result = WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(i);
    a3 += 16;
  }

  return result;
}

void *std::max[abi:sn200100]<unsigned long,std::__less<void,void>>(void *a1, void *a2)
{
  if (std::__less<void,void>::operator()[abi:sn200100]<unsigned long,unsigned long>(&v5, a1, a2))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

WebCore::PublicKeyCredentialDescriptor *WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::PublicKeyCredentialDescriptor&>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
  v8 = WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v3 + 1, a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  v4 = WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
  v5 = operator new(40, 0, v4);
  result = WebCore::PublicKeyCredentialDescriptor::PublicKeyCredentialDescriptor(v5, v8);
  ++*(a1 + 12);
  return result;
}

uint64_t WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1) && a3 < WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1))
  {
    v5 = (a3 - WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1)) / 40;
    WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1) + 40 * v5;
  }

  else
  {
    WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return a3;
  }
}

uint64_t WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, uint64_t a2)
{
  v8[1] = a1;
  v8[0] = a2;
  v7 = 16;
  v11 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(a1);
  v10 = v11 + (v11 >> 1);
  v9 = v11 + 1;
  v6 = *std::max[abi:sn200100]<unsigned long>(&v10, &v9);
  v3 = std::max[abi:sn200100]<unsigned long>(&v7, &v6);
  v4 = std::max[abi:sn200100]<unsigned long>(v8, v3);
  return WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, *v4) & 1;
}

uint64_t WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (a2 > WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(a1))
  {
    v6 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    v5 = WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a1);
    WTF::VectorBufferBase<WebCore::PublicKeyCredentialDescriptor,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(a1, a2);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
    v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    WTF::VectorTypeOperations<WebCore::PublicKeyCredentialDescriptor>::move(v6, v5, v3);
    WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::deallocateBuffer(a1, v6);
  }

  return 1;
}

uint64_t WTF::VectorBufferBase<WebCore::PublicKeyCredentialDescriptor,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (!WTF::isValidCapacityForVector<WebCore::PublicKeyCredentialDescriptor>(a2))
  {
    __break(0xC471u);
    JUMPOUT(0x19D69F370);
  }

  result = WTF::FastMalloc::malloc((40 * a2));
  *(a1 + 8) = 40 * a2 / 0x28;
  *a1 = result;
  return result;
}

void WTF::VectorMover<false,WebCore::PublicKeyCredentialDescriptor>::move(WebCore::PublicKeyCredentialDescriptor *a1, WebCore::PublicKeyCredentialDescriptor *a2, uint64_t a3)
{
  while (a1 != a2)
  {
    v3 = operator new(40, 0, a3);
    WebCore::PublicKeyCredentialDescriptor::PublicKeyCredentialDescriptor(v3, a1);
    WebCore::PublicKeyCredentialDescriptor::~PublicKeyCredentialDescriptor(a1);
    a3 += 40;
    a1 = (a1 + 40);
  }
}

_BYTE *WebCore::PublicKeyCredentialDescriptor::PublicKeyCredentialDescriptor(_BYTE *a1, uint64_t a2)
{
  WebCore::PublicKeyCredentialDescriptor::PublicKeyCredentialDescriptor(a1, a2);
  return a1;
}

{
  *a1 = *a2 & 1;
  WebCore::BufferSource::BufferSource(a1 + 8);
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 24), (a2 + 24));
  return a1;
}

_BYTE *std::__optional_destruct_base<fido::PinParameters,false>::__optional_destruct_base[abi:sn200100](_BYTE *result)
{
  *result = 0;
  result[24] = 0;
  return result;
}

_DWORD *std::__optional_storage_base<fido::PinParameters,false>::__construct[abi:sn200100]<fido::PinParameters>(uint64_t a1, uint64_t a2)
{
  result = std::__construct_at[abi:sn200100]<fido::PinParameters,fido::PinParameters,fido::PinParameters*>(a1, a2);
  *(a1 + 24) = 1;
  return result;
}

_DWORD *std::construct_at[abi:sn200100]<fido::PinParameters,fido::PinParameters,fido::PinParameters*>(_DWORD *a1, uint64_t a2)
{
  if (!a1)
  {
    __break(1u);
  }

  return fido::PinParameters::PinParameters(a1, a2);
}

_DWORD *fido::PinParameters::PinParameters(_DWORD *a1, uint64_t a2)
{
  fido::PinParameters::PinParameters(a1, a2);
  return a1;
}

{
  *a1 = *a2;
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 2), (a2 + 8));
  return a1;
}

fido::PinParameters *std::__optional_copy_base<fido::PinParameters,false>::__optional_copy_base[abi:sn200100](fido::PinParameters *a1, uint64_t a2)
{
  std::__optional_storage_base<fido::PinParameters,false>::__optional_storage_base(a1);
  std::__optional_storage_base<fido::PinParameters,false>::__construct_from[abi:sn200100]<std::__optional_copy_base<fido::PinParameters,false> const&>(a1, a2);
  return a1;
}

uint64_t std::__optional_storage_base<fido::PinParameters,false>::__construct_from[abi:sn200100]<std::__optional_copy_base<fido::PinParameters,false> const&>(fido::PinParameters *a1, uint64_t a2)
{
  result = std::__optional_storage_base<fido::PinParameters,false>::has_value[abi:sn200100](a2);
  if (result)
  {
    std::__to_address[abi:sn200100]<char const>();
    return std::__optional_storage_base<fido::PinParameters,false>::__construct[abi:sn200100]<fido::PinParameters const&>(a1, v4);
  }

  return result;
}

fido::PinParameters *std::__optional_storage_base<fido::PinParameters,false>::__construct[abi:sn200100]<fido::PinParameters const&>(fido::PinParameters *a1, const fido::PinParameters *a2)
{
  result = std::__construct_at[abi:sn200100]<fido::PinParameters,fido::PinParameters const&,fido::PinParameters*>(a1, a2);
  *(a1 + 24) = 1;
  return result;
}

fido::PinParameters *std::construct_at[abi:sn200100]<fido::PinParameters,fido::PinParameters const&,fido::PinParameters*>(fido::PinParameters *a1, const fido::PinParameters *a2)
{
  if (!a1)
  {
    __break(1u);
  }

  return fido::PinParameters::PinParameters(a1, a2);
}

fido::PinParameters *fido::PinParameters::PinParameters(fido::PinParameters *this, const fido::PinParameters *a2)
{
  fido::PinParameters::PinParameters(this, a2);
  return this;
}

{
  *this = *a2;
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 8, a2 + 8);
  return this;
}

fido::PinParameters *std::__optional_destruct_base<fido::PinParameters,false>::~__optional_destruct_base[abi:sn200100](fido::PinParameters *a1)
{
  if (*(a1 + 24))
  {
    fido::PinParameters::~PinParameters(a1);
  }

  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::reset[abi:sn200100](a1, 0);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::reset[abi:sn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    return std::default_delete<WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::operator()[abi:sn200100](result, v2);
  }

  return result;
}

uint64_t std::default_delete<WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::operator()[abi:sn200100](uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    return (*(*a2 + 8))(a2, a2);
  }

  return result;
}

uint64_t *WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(uint64_t *a1)
{
  WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(a1);
  return a1;
}

{
  v3[1] = a1;
  v3[0] = 0;
  v6 = a1;
  v5 = v3;
  v4 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WTF::DefaultWeakPtrImpl,(WTF::DestructionThread)0>::deref(v4);
  }

  return a1;
}

uint64_t *WTF::Function<void ()(BOOL)>::Function(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(BOOL)>::Function(a1, a2);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100](a1, a2);
  return a1;
}

WTF::ThreadLikeAssertion *WTF::CompletionHandler<void ()(BOOL)>::~CompletionHandler(WTF::ThreadLikeAssertion *a1)
{
  WTF::CompletionHandler<void ()(BOOL)>::~CompletionHandler(a1);
  return a1;
}

{
  v4 = a1;
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v3);
  WTF::ThreadLikeAssertion::operator=();
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v3);
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(a1);
  WTF::Function<void ()(BOOL)>::~Function(a1);
  return a1;
}

uint64_t *WTF::Function<void ()(BOOL)>::~Function(uint64_t *a1)
{
  WTF::Function<void ()(BOOL)>::~Function(a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,BOOL>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,BOOL>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,BOOL>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,BOOL>>::reset[abi:sn200100](a1, 0);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,BOOL>>::reset[abi:sn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    return std::default_delete<WTF::Detail::CallableWrapperBase<void,BOOL>>::operator()[abi:sn200100](result, v2);
  }

  return result;
}

uint64_t std::default_delete<WTF::Detail::CallableWrapperBase<void,BOOL>>::operator()[abi:sn200100](uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    return (*(*a2 + 8))(a2, a2);
  }

  return result;
}

uint64_t std::__optional_destruct_base<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_destruct_base[abi:sn200100]<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, uint64_t *a2)
{
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, a2);
  *(a1 + 16) = 1;
  return a1;
}

uint64_t std::__optional_destruct_base<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::~__optional_destruct_base[abi:sn200100](uint64_t a1)
{
  if (*(a1 + 16))
  {
    WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1);
  }

  return a1;
}

uint64_t std::__optional_destruct_base<fido::PinParameters,false>::__optional_destruct_base[abi:sn200100]<fido::PinParameters>(uint64_t a1, uint64_t a2)
{
  fido::PinParameters::PinParameters(a1, a2);
  *(a1 + 24) = 1;
  return a1;
}

uint64_t std::as_bytes[abi:sn200100]<unsigned char const,18446744073709551615ul>(uint64_t a1, uint64_t a2)
{
  v3[0] = a1;
  v3[1] = a2;
  return std::span<unsigned char const,18446744073709551615ul>::__as_bytes[abi:sn200100](v3);
}

uint64_t std::span<unsigned char const,18446744073709551615ul>::__as_bytes[abi:sn200100](uint64_t a1)
{
  v2 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1);
  v3 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1);
  std::span<char const,18446744073709551615ul>::span[abi:sn200100]<char const*>(&v5, v2, v3);
  return v5;
}

_BYTE *std::__optional_storage_base<WebCore::CredentialPropertiesOutput,false>::__construct[abi:sn200100]<WebCore::CredentialPropertiesOutput>(_BYTE *a1, _BYTE *a2)
{
  result = std::__construct_at[abi:sn200100]<WebCore::CredentialPropertiesOutput,WebCore::CredentialPropertiesOutput,WebCore::CredentialPropertiesOutput*>(a1, a2);
  a1[1] = 1;
  return result;
}

_BYTE *std::construct_at[abi:sn200100]<WebCore::CredentialPropertiesOutput,WebCore::CredentialPropertiesOutput,WebCore::CredentialPropertiesOutput*>(_BYTE *result, _BYTE *a2)
{
  if (!result)
  {
    __break(1u);
  }

  *result = *a2;
  return result;
}

WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs *std::optional<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs>::~optional(WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs *a1)
{
  std::optional<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs,false>::~__optional_move_assign_base(a1);
  return a1;
}

WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs *std::optional<WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs>::~optional(WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs *a1)
{
  std::optional<WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs,false>::~__optional_move_assign_base(a1);
  return a1;
}

WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs *std::__optional_destruct_base<WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs,false>::~__optional_destruct_base[abi:sn200100](WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs *a1)
{
  if (*(a1 + 32))
  {
    WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs::~PRFOutputs(a1);
  }

  return a1;
}

void WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs::~PRFOutputs(WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs *this)
{
  WebCore::AuthenticationExtensionsClientOutputs::PRFOutputs::~PRFOutputs(this);
}

{
  std::optional<WebCore::AuthenticationExtensionsClientOutputs::PRFValues>::~optional((this + 8));
}

WebCore::AuthenticationExtensionsClientOutputs::PRFValues *std::optional<WebCore::AuthenticationExtensionsClientOutputs::PRFValues>::~optional(WebCore::AuthenticationExtensionsClientOutputs::PRFValues *a1)
{
  std::optional<WebCore::AuthenticationExtensionsClientOutputs::PRFValues>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<WebCore::AuthenticationExtensionsClientOutputs::PRFValues,false>::~__optional_move_assign_base(a1);
  return a1;
}

WebCore::AuthenticationExtensionsClientOutputs::PRFValues *std::__optional_destruct_base<WebCore::AuthenticationExtensionsClientOutputs::PRFValues,false>::~__optional_destruct_base[abi:sn200100](WebCore::AuthenticationExtensionsClientOutputs::PRFValues *a1)
{
  if (*(a1 + 16))
  {
    WebCore::AuthenticationExtensionsClientOutputs::PRFValues::~PRFValues(a1);
  }

  return a1;
}

void WebCore::AuthenticationExtensionsClientOutputs::PRFValues::~PRFValues(WebCore::AuthenticationExtensionsClientOutputs::PRFValues *this)
{
  WebCore::AuthenticationExtensionsClientOutputs::PRFValues::~PRFValues(this);
}

{
  v2[1] = this + 8;
  v2[0] = 0;
  v9 = this + 8;
  v8 = v2;
  v5 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this + 1);
  if (v5)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v5);
  }

  v3[1] = this;
  v3[0] = 0;
  v7 = this;
  v6 = v3;
  v4 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this);
  if (v4)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v4);
  }
}

WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs *std::__optional_destruct_base<WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs,false>::~__optional_destruct_base[abi:sn200100](WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs *a1)
{
  if (*(a1 + 24))
  {
    WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs::~LargeBlobOutputs(a1);
  }

  return a1;
}

void WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs::~LargeBlobOutputs(WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs *this)
{
  WebCore::AuthenticationExtensionsClientOutputs::LargeBlobOutputs::~LargeBlobOutputs(this);
}

{
  v1[1] = this + 8;
  v1[0] = 0;
  v4 = this + 8;
  v3 = v1;
  v2 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this + 1);
  if (v2)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v2);
  }
}

uint64_t mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::base<0ul,WTF::Ref<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>>(uint64_t a1)
{
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::recursive_union<WTF::Ref<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>>(a1);
  *(a1 + 16) = 0;
  return a1;
}

uint64_t *mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::recursive_union<WTF::Ref<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>>(uint64_t *a1)
{
  mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::recursive_union<WTF::Ref<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>>(a1);
  return a1;
}

{
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::alt<0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>>::alt<WTF::Ref<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>>(a1);
  return a1;
}

uint64_t *mpark::detail::alt<0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>>::alt<WTF::Ref<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>>(uint64_t *a1)
{
  mpark::detail::alt<0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>>::alt<WTF::Ref<WebCore::AuthenticatorAttestationResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAttestationResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAttestationResponse>>>(a1);
  return a1;
}

{
  std::__to_address[abi:sn200100]<char const>();
  WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(a1, v2);
  return a1;
}

uint64_t std::__optional_storage_base<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__construct[abi:sn200100]<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&>(uint64_t a1, uint64_t a2)
{
  result = std::__construct_at[abi:sn200100]<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&,WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>*>(a1, a2);
  *(a1 + 16) = 1;
  return result;
}

uint64_t std::construct_at[abi:sn200100]<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>&,WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>*>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __break(1u);
  }

  return WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, a2);
}

fido::pin::KeyAgreementResponse *std::__optional_destruct_base<fido::pin::KeyAgreementResponse,false>::~__optional_destruct_base[abi:sn200100](fido::pin::KeyAgreementResponse *a1)
{
  if (*(a1 + 8))
  {
    fido::pin::KeyAgreementResponse::~KeyAgreementResponse(a1);
  }

  return a1;
}

uint64_t *WTF::Ref<WebCore::CryptoKeyAES,WTF::RawPtrTraits<WebCore::CryptoKeyAES>,WTF::DefaultRefDerefTraits<WebCore::CryptoKeyAES>>::Ref(uint64_t *a1, uint64_t a2)
{
  WTF::Ref<WebCore::CryptoKeyAES,WTF::RawPtrTraits<WebCore::CryptoKeyAES>,WTF::DefaultRefDerefTraits<WebCore::CryptoKeyAES>>::Ref(a1, a2);
  return a1;
}

{
  v4 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(a2);
  WTF::ThreadSafeRefCountedBase::ref((v4 + 8));
  *a1 = v4;
  return a1;
}

void fido::pin::TokenRequest::~TokenRequest(fido::pin::TokenRequest *this)
{
  fido::pin::TokenRequest::~TokenRequest(this);
}

{
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 32);
  std::map<cbor::CBORValue,cbor::CBORValue,cbor::CBORValue::CTAPLess,WTF::FastAllocator<std::pair<cbor::CBORValue const,cbor::CBORValue>>>::~map[abi:sn200100](this + 8);
  WTF::Ref<WebCore::CryptoKeyAES,WTF::RawPtrTraits<WebCore::CryptoKeyAES>,WTF::DefaultRefDerefTraits<WebCore::CryptoKeyAES>>::~Ref(this);
}

uint64_t std::map<cbor::CBORValue,cbor::CBORValue,cbor::CBORValue::CTAPLess,WTF::FastAllocator<std::pair<cbor::CBORValue const,cbor::CBORValue>>>::~map[abi:sn200100](uint64_t a1)
{
  std::map<cbor::CBORValue,cbor::CBORValue,cbor::CBORValue::CTAPLess,WTF::FastAllocator<std::pair<cbor::CBORValue const,cbor::CBORValue>>>::~map[abi:sn200100](a1);
  return a1;
}

{
  std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::~__tree(a1);
  return a1;
}

uint64_t *WTF::Ref<WebCore::CryptoKeyAES,WTF::RawPtrTraits<WebCore::CryptoKeyAES>,WTF::DefaultRefDerefTraits<WebCore::CryptoKeyAES>>::~Ref(uint64_t *a1)
{
  WTF::Ref<WebCore::CryptoKeyAES,WTF::RawPtrTraits<WebCore::CryptoKeyAES>,WTF::DefaultRefDerefTraits<WebCore::CryptoKeyAES>>::~Ref(a1);
  return a1;
}

{
  v4 = a1;
  v5 = a1;
  v2 = 0;
  v7 = a1;
  v6 = &v2;
  v3 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
  if (v3)
  {
    v8 = v3;
    WTF::ThreadSafeRefCounted<WebCore::CryptoKey,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::~__tree(uint64_t a1)
{
  std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::~__tree(a1);
  return a1;
}

{
  v2 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__root[abi:sn200100]();
  std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::destroy(a1, v2);
  return a1;
}

uint64_t std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::destroy(uint64_t result, WTF *a2)
{
  v2 = result;
  if (a2)
  {
    std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::destroy(result, *a2);
    std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::destroy(v2, *(a2 + 1));
    std::__to_address[abi:sn200100]<char const>();
    v6 = v3;
    v4 = v3;
    std::__tree_key_value_types<std::__value_type<cbor::CBORValue,cbor::CBORValue>>::__get_ptr[abi:sn200100]();
    std::allocator_traits<WTF::FastAllocator<std::__tree_node<std::__value_type<cbor::CBORValue,cbor::CBORValue>,void *>>>::destroy[abi:sn200100]<std::pair<cbor::CBORValue const,cbor::CBORValue>,void,0>(v4, v5);
    return std::allocator_traits<WTF::FastAllocator<std::__tree_node<std::__value_type<cbor::CBORValue,cbor::CBORValue>,void *>>>::deallocate[abi:sn200100](v6, a2);
  }

  return result;
}

uint64_t std::__destroy_at[abi:sn200100]<std::pair<cbor::CBORValue const,cbor::CBORValue>,0>(uint64_t a1)
{
  if (!a1)
  {
    __break(1u);
  }

  return std::pair<cbor::CBORValue const,cbor::CBORValue>::~pair(a1);
}

uint64_t std::pair<cbor::CBORValue const,cbor::CBORValue>::~pair(uint64_t a1)
{
  std::pair<cbor::CBORValue const,cbor::CBORValue>::~pair(a1);
  return a1;
}

{
  cbor::CBORValue::~CBORValue((a1 + 32));
  cbor::CBORValue::~CBORValue(a1);
  return a1;
}

uint64_t WTF::ThreadSafeRefCounted<WebCore::CryptoKey,(WTF::DestructionThread)0>::deref(WTF::ThreadSafeRefCountedBase *a1)
{
  result = WTF::ThreadSafeRefCountedBase::derefBase(a1);
  if (result)
  {
    result = a1 - 8;
    if (a1 != 8)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

fido::pin::TokenRequest *std::__optional_destruct_base<fido::pin::TokenRequest,false>::~__optional_destruct_base[abi:sn200100](fido::pin::TokenRequest *a1)
{
  if (*(a1 + 48))
  {
    fido::pin::TokenRequest::~TokenRequest(a1);
  }

  return a1;
}

WTF::CString *std::__optional_destruct_base<WTF::CString,false>::~__optional_destruct_base[abi:sn200100](WTF::CString *a1)
{
  if (*(a1 + 8))
  {
    WTF::CString::~CString(a1);
  }

  return a1;
}

fido::pin::TokenResponse *std::__optional_destruct_base<fido::pin::TokenResponse,false>::~__optional_destruct_base[abi:sn200100](fido::pin::TokenResponse *a1)
{
  if (*(a1 + 8))
  {
    fido::pin::TokenResponse::~TokenResponse(a1);
  }

  return a1;
}

void fido::pin::TokenResponse::~TokenResponse(fido::pin::TokenResponse *this)
{
  fido::pin::TokenResponse::~TokenResponse(this);
}

{
  WTF::Ref<WebCore::CryptoKeyAES,WTF::RawPtrTraits<WebCore::CryptoKeyAES>,WTF::DefaultRefDerefTraits<WebCore::CryptoKeyAES>>::~Ref(this);
}

void *WTF::memcpySpan<unsigned char,18446744073709551615ul,unsigned char const,16ul>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a1;
  v10[1] = a2;
  v9 = a3;
  v3 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v10);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(&v9);
  if (v3 < 0x10)
  {
    isIntegralOrPointerType = WTF::isIntegralOrPointerType(v4);
    WTF::isIntegralOrPointerType(isIntegralOrPointerType);
    v14 = 1067;
    v13 = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/StdLibExtras.h";
    v12 = "void WTF::memcpySpan(std::span<T, TExtent>, std::span<U, UExtent>) [T = unsigned char, TExtent = 18446744073709551615UL, U = const unsigned char, UExtent = 16UL]";
    v11 = 2;
    v10[9] = 1067;
    v10[8] = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/StdLibExtras.h";
    v10[7] = "void WTF::memcpySpan(std::span<T, TExtent>, std::span<U, UExtent>) [T = unsigned char, TExtent = 18446744073709551615UL, U = const unsigned char, UExtent = 16UL]";
    v10[6] = 2;
    v10[5] = 1067;
    v10[4] = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/StdLibExtras.h";
    v10[3] = "void WTF::memcpySpan(std::span<T, TExtent>, std::span<U, UExtent>) [T = unsigned char, TExtent = 18446744073709551615UL, U = const unsigned char, UExtent = 16UL]";
    v10[2] = 2;
    __break(0xC471u);
    JUMPOUT(0x19D6A28A8);
  }

  v6 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v10);
  v7 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](&v9);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(&v9);
  return memcpy(v6, v7, 0x10uLL);
}

fido::pin::SetPinRequest *std::__optional_destruct_base<fido::pin::SetPinRequest,false>::~__optional_destruct_base[abi:sn200100](fido::pin::SetPinRequest *a1)
{
  if (*(a1 + 64))
  {
    fido::pin::SetPinRequest::~SetPinRequest(a1);
  }

  return a1;
}

void fido::pin::SetPinRequest::~SetPinRequest(fido::pin::SetPinRequest *this)
{
  fido::pin::SetPinRequest::~SetPinRequest(this);
}

{
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 48);
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 32);
  std::map<cbor::CBORValue,cbor::CBORValue,cbor::CBORValue::CTAPLess,WTF::FastAllocator<std::pair<cbor::CBORValue const,cbor::CBORValue>>>::~map[abi:sn200100](this + 8);
  WTF::Ref<WebCore::CryptoKeyAES,WTF::RawPtrTraits<WebCore::CryptoKeyAES>,WTF::DefaultRefDerefTraits<WebCore::CryptoKeyAES>>::~Ref(this);
}

void fido::AuthenticatorGetInfoResponse::~AuthenticatorGetInfoResponse(fido::AuthenticatorGetInfoResponse *this)
{
  fido::AuthenticatorGetInfoResponse::~AuthenticatorGetInfoResponse(this);
}

{
  std::optional<WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(this + 160);
  std::optional<WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(this + 128);
  std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(this + 88, v2);
  std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(this + 48);
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 24);
  std::set<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::~set[abi:sn200100](this);
}

uint64_t std::optional<WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(uint64_t a1)
{
  std::optional<WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::~__optional_move_assign_base(a1);
  return a1;
}

uint64_t std::optional<WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(uint64_t a1)
{
  std::optional<WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::~__optional_move_assign_base(a1);
  return a1;
}

uint64_t std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(uint64_t a1, void *a2)
{
  std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(a1, a2);
  return a1;
}

{
  std::__optional_move_assign_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::~__optional_move_assign_base(a1, a2);
  return a1;
}

uint64_t std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(uint64_t a1)
{
  std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::~__optional_move_assign_base(a1);
  return a1;
}

uint64_t std::set<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::~set[abi:sn200100](uint64_t a1)
{
  std::set<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::~set[abi:sn200100](a1);
  return a1;
}

{
  std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::~__tree(a1);
  return a1;
}

uint64_t std::__optional_destruct_base<WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::~__optional_destruct_base[abi:sn200100](uint64_t a1)
{
  if (*(a1 + 16))
  {
    WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1);
  }

  return a1;
}

uint64_t std::__optional_destruct_base<WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::~__optional_destruct_base[abi:sn200100](uint64_t a1)
{
  if (*(a1 + 16))
  {
    WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1);
  }

  return a1;
}

uint64_t std::__optional_destruct_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::~__optional_destruct_base[abi:sn200100](uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
  }

  return a1;
}

uint64_t std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::~__tree(uint64_t a1)
{
  std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::~__tree(a1);
  return a1;
}

{
  v2 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__root[abi:sn200100]();
  std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::destroy(a1, v2);
  return a1;
}

uint64_t std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::destroy(uint64_t result, WTF *a2)
{
  v2 = result;
  if (a2)
  {
    std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::destroy(result, *a2);
    std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::destroy(v2, *(a2 + 1));
    std::__to_address[abi:sn200100]<char const>();
    v6 = v3;
    v4 = v3;
    std::__to_address[abi:sn200100]<char const>();
    std::allocator_traits<WTF::FastAllocator<std::__tree_node<fido::ProtocolVersion,void *>>>::destroy[abi:sn200100]<fido::ProtocolVersion,void,0>(v4, v5);
    return std::allocator_traits<WTF::FastAllocator<std::__tree_node<std::__value_type<cbor::CBORValue,cbor::CBORValue>,void *>>>::deallocate[abi:sn200100](v6, a2);
  }

  return result;
}

uint64_t std::__destroy_at[abi:sn200100]<fido::ProtocolVersion,0>(uint64_t result)
{
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::VectorBuffer(uint64_t a1, WTF::FastMalloc *a2, int a3)
{
  WTF::VectorBufferBase<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,WTF::FastMalloc>::VectorBufferBase(a1);
  *(a1 + 12) = a3;
  if (a2)
  {
    WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(a1, a2);
  }

  return a1;
}

uint64_t WTF::VectorDestructor<true,WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::destruct(uint64_t result, uint64_t a2)
{
  for (i = result; i != a2; i += 16)
  {
    result = WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(i);
  }

  return result;
}

uint64_t WTF::VectorBuffer<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::FastMalloc>::VectorBuffer(uint64_t a1, unint64_t a2, int a3)
{
  WTF::VectorBufferBase<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,WTF::FastMalloc>::VectorBufferBase(a1);
  *(a1 + 12) = a3;
  if (a2)
  {
    WTF::VectorBufferBase<WebCore::PublicKeyCredentialDescriptor,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(a1, a2);
  }

  return a1;
}

WebCore::PublicKeyCredentialDescriptor *WTF::VectorCopier<false,WebCore::PublicKeyCredentialDescriptor>::uninitializedCopy<WebCore::PublicKeyCredentialDescriptor>(WebCore::PublicKeyCredentialDescriptor *result, const PublicKeyCredentialDescriptor *a2, uint64_t a3)
{
  for (i = result; i != a2; i = (i + 40))
  {
    v3 = operator new(40, 0, a3);
    result = WebCore::PublicKeyCredentialDescriptor::PublicKeyCredentialDescriptor(v3, i);
    a3 += 40;
  }

  return result;
}

uint64_t WTF::RefCounted<WebKit::CtapDriver>::deref(WTF::RefCountedBase *a1)
{
  result = WTF::RefCountedBase::derefBase(a1);
  if (result)
  {
    result = a1 - 16;
    if (a1 != 16)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::reset[abi:sn200100](a1);
  return a1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,WebKit::CtapAuthenticator::makeCredential(void)::$_0,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x10);
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7620;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

uint64_t *WebKit::CtapAuthenticator::makeCredential(void)::$_0::$_0(uint64_t *a1, uint64_t *a2)
{
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::$_0(a1, a2);
  return a1;
}

{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7620;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

void WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapperBase()
{
  __break(1u);
}

{
  __break(1u);
}

uint64_t *WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  result = WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator!(a1);
  if ((result & 1) == 0)
  {
    v4 = WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(a1);
    v5 = v9;
    WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(&v7, a1);
    WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v6);
    WTF::CompletionHandler<void ()(BOOL)>::CompletionHandler<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void>(&v8, &v7);
    WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(v4, v5, &v8);
    WTF::CompletionHandler<void ()(BOOL)>::~CompletionHandler(&v8);
    WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v6);
    return WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(&v7);
  }

  return result;
}

uint64_t WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(uint64_t *a1)
{
  result = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(a1);
  if (!result)
  {
    isIntegralOrPointerType = WTF::isIntegralOrPointerType(0);
    WTF::isIntegralOrPointerType(isIntegralOrPointerType);
    __break(0xC471u);
    JUMPOUT(0x19D6A3F30);
  }

  return result;
}

uint64_t *WTF::CompletionHandler<void ()(BOOL)>::CompletionHandler<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void>(uint64_t *a1, uint64_t *a2)
{
  WTF::CompletionHandler<void ()(BOOL)>::CompletionHandler<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void>(a1, a2);
  return a1;
}

{
  WTF::Function<void ()(BOOL)>::Function<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void>(a1, a2);
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(a1);
  return a1;
}

uint64_t *WTF::Function<void ()(BOOL)>::Function<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(BOOL)>::Function<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>,std::default_delete<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1}>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>,std::default_delete<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1}>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>,std::default_delete<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1}>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>,std::default_delete<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1}>>::reset[abi:sn200100](a1);
  return a1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x10);
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,BOOL>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7670;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7670;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

void WTF::Detail::CallableWrapperBase<void,BOOL>::~CallableWrapperBase()
{
  __break(1u);
}

{
  __break(1u);
}

uint64_t WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1}::operator()(uint64_t *a1, char a2)
{
  result = WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator!(a1);
  if ((result & 1) == 0)
  {
    v4 = WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(a1);
    return WebKit::CtapAuthenticator::continueMakeCredentialAfterCheckExcludedCredentials(v4, a2 & 1);
  }

  return result;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>,std::default_delete<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1}>>::reset[abi:sn200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::default_delete<WTF::Detail::CallableWrapperBase<void,BOOL>>::operator()[abi:sn200100](result, v1);
  }

  return result;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::reset[abi:sn200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::default_delete<WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::operator()[abi:sn200100](result, v1);
  }

  return result;
}

fido::PinParameters *WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  v6[3] = a1;
  v6[2] = a2;
  v3 = a1[1];
  WebKit::Authenticator::requestData(v3);
  WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator[]((v3 + 134), v3[131]);
  std::optional<fido::PinParameters>::optional[abi:sn200100](v5, a1[2]);
  fido::encodeSilentGetAssertion();
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(*a1, v6);
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6);
  return std::optional<fido::PinParameters>::~optional(v5);
}

fido::PinParameters *WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_1::operator()(uint64_t *a1, uint64_t a2)
{
  v6[3] = a1;
  v6[2] = a2;
  v3 = a1[1];
  WebKit::Authenticator::requestData(v3);
  WTF::Vector<WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator[]((v3 + 134), v3[131]);
  std::optional<fido::PinParameters>::optional[abi:sn200100](v5, a1[2]);
  fido::encodeSilentGetAssertion();
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(*a1, v6);
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6);
  return std::optional<fido::PinParameters>::~optional(v5);
}

void *WTF::Visitor<WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,WTF::CompletionHandler<void ()(BOOL)>)::$_1>::Visitor(void *a1, void *a2, void *a3)
{
  WTF::Visitor<WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &,WTF::CompletionHandler<void ()(BOOL)>)::$_1>::Visitor(a1, a2, a3);
  return a1;
}

{
  v7[5] = a1;
  v7[4] = a2;
  v7[3] = a3;
  v7[0] = *a2;
  v7[1] = a2[1];
  v7[2] = a2[2];
  WTF::Visitor<WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>::Visitor(a1, v7);
  v6[0] = *a3;
  v6[1] = a3[1];
  v6[2] = a3[2];
  WTF::Visitor<WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>::Visitor(a1 + 3, v6);
  return a1;
}

void *WTF::Visitor<WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>::Visitor(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  return result;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>,WTF::CompletionHandler<void ()(BOOL)> &,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x18);
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E76C0;
  WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2::$_2(a1 + 1, a2);
  return a1;
}

uint64_t *WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2::$_2(uint64_t *a1, uint64_t *a2)
{
  WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2::$_2(a1, a2);
  return a1;
}

{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1, a2);
  WTF::CompletionHandler<void ()(BOOL)>::CompletionHandler(a1 + 1, a2 + 1);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E76C0;
  WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2::~$_2(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t *WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::$_2::operator()(uint64_t *a1, uint64_t a2)
{
  if (WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator!(a1))
  {
    return WTF::CompletionHandler<void ()(BOOL)>::operator()((a1 + 1), 0);
  }

  v4 = WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(a1);
  return WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(v4, a2, a1 + 1);
}

void WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(uint64_t a1, unint64_t a2)
{
  v12 = a1;
  v11 = a2;
  v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::mutableSpan(a1);
  v9[1] = v4;
  v9[0] = v3;
  v5 = std::span<WebCore::PublicKeyCredentialDescriptor,18446744073709551615ul>::subspan[abi:sn200100](v9, v11);
  v10[1] = v6;
  v10[0] = v5;
  v7 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v10);
  v8 = WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
  WTF::VectorTypeOperations<WebCore::PublicKeyCredentialDescriptor>::destruct(v7, v8);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  *(a1 + 12) = v11;
}

uint64_t std::span<WebCore::PublicKeyCredentialDescriptor,18446744073709551615ul>::subspan[abi:sn200100](uint64_t a1, unint64_t a2)
{
  if (a2 > std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1))
  {
    __break(1u);
  }

  v3 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1) + 40 * a2;
  v4 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1);
  std::span<char const,18446744073709551615ul>::span[abi:sn200100]<char const*>(&v7, v3, v4 - a2);
  return v7;
}

void WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(WTF::RefCountedBase *a1, unint64_t a2)
{
  if (a2 < WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(a1))
  {
    if (a2 < WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1))
    {
      WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, a2);
    }

    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a1);
    v5 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    if (a2)
    {
      WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
      v4 = WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
      WTF::VectorBufferBase<WebCore::PublicKeyCredentialDescriptor,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(a1, a2);
      if (WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1) != v5)
      {
        v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
        WTF::VectorTypeOperations<WebCore::PublicKeyCredentialDescriptor>::move(v5, v4, v3);
      }
    }

    WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::deallocateBuffer(a1, v5);
    WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  }
}

uint64_t std::__copy_move_unwrap_iters[abi:sn200100]<std::__copy_impl,WebCore::PublicKeyCredentialDescriptor const*,WebCore::PublicKeyCredentialDescriptor const*,WebCore::PublicKeyCredentialDescriptor*,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v3 = std::__unwrap_range[abi:sn200100]<WebCore::PublicKeyCredentialDescriptor const*,WebCore::PublicKeyCredentialDescriptor const*>(a1, a2);
  v17 = v4;
  v16 = v3;
  v5 = v3;
  v6 = v4;
  std::__value_type<cbor::CBORValue,cbor::CBORValue>::__get_value[abi:sn200100]();
  v8 = std::__copy_impl::operator()[abi:sn200100]<WebCore::PublicKeyCredentialDescriptor const*,WebCore::PublicKeyCredentialDescriptor const*,WebCore::PublicKeyCredentialDescriptor*>(&v13, v5, v6, v7);
  v15 = v9;
  v14 = v8;
  v12 = std::__rewrap_range[abi:sn200100]<WebCore::PublicKeyCredentialDescriptor const*,WebCore::PublicKeyCredentialDescriptor const*,WebCore::PublicKeyCredentialDescriptor const*>(v20, v8);
  v11 = std::__rewrap_iter[abi:sn200100]<WebCore::PublicKeyCredentialDescriptor *,WebCore::PublicKeyCredentialDescriptor *,std::__unwrap_iter_impl<WebCore::PublicKeyCredentialDescriptor *,true>>(v18, v15);
  return std::make_pair[abi:sn200100]<WebCore::PublicKeyCredentialDescriptor const*,WebCore::PublicKeyCredentialDescriptor*>(&v12, &v11);
}

uint64_t std::__copy_impl::operator()[abi:sn200100]<WebCore::PublicKeyCredentialDescriptor const*,WebCore::PublicKeyCredentialDescriptor const*,WebCore::PublicKeyCredentialDescriptor*>(_BYTE *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = a4;
  while (v7[0] != v6)
  {
    WebCore::PublicKeyCredentialDescriptor::operator=(v5, v7[0]);
    v7[0] += 40;
    v5 += 40;
  }

  return std::make_pair[abi:sn200100]<WebCore::PublicKeyCredentialDescriptor const*,WebCore::PublicKeyCredentialDescriptor*>(v7, &v5);
}

WTF::RefCountedBase *WebCore::PublicKeyCredentialDescriptor::operator=(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2 & 1;
  WebCore::BufferSource::operator=((a1 + 8), (a2 + 8));
  return WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((a1 + 24), (a2 + 24));
}

WTF::RefCountedBase *WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(WTF::RefCountedBase *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return a1;
  }

  v3 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
  if (v3 <= WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2))
  {
    v5 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
    if (v5 > WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(a1))
    {
      WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::clear(a1);
      v16 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
      WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v16);
    }
  }

  else
  {
    v4 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
    WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, v4);
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  v6 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a2);
  v7 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
  v8 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
  std::copy_n[abi:sn200100]<WebCore::AuthenticatorTransport const*,unsigned long,WebCore::AuthenticatorTransport*,0>(v6, v7, v8);
  v9 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a2);
  v10 = (v9 + WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1));
  v11 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a2);
  v12 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
  WTF::VectorTypeOperations<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>>::move(v10, v11, v12);
  *(a1 + 3) = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  return a1;
}

void mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  if (!mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::valueless_by_exception(a1) || !mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::valueless_by_exception(a2))
  {
    if (mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::valueless_by_exception(a2))
    {
      mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::destroy(a1);
    }

    else
    {
      v3 = mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::index(a2);
      std::__to_address[abi:sn200100]<char const>();
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISJ_LNS0_5TraitE1EEEEEvOT_EUlRSR_OT0_E_JRSK_SQ_EEEDcmSS_DpOT0_(v3);
    }
  }
}

void _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISJ_LNS0_5TraitE1EEEEEvOT_EUlRSR_OT0_E_JRSK_SQ_EEEDcmSS_DpOT0_(uint64_t a1)
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  switch(a1)
  {
    case 0:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS8_12RawPtrTraitsISB_EENS8_21DefaultRefDerefTraitsISB_EEEENS9_INSA_11ArrayBufferENSC_ISH_EENSE_ISH_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISL_LNS0_5TraitE1EEEEEvOT_EUlRST_OT0_E_JRNS0_3altILm0ESG_EERKS10_EEEDcSU_DpOT0_();
      return;
    case 1:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      std::__to_address[abi:sn200100]<char const>();
      mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
      _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS8_12RawPtrTraitsISB_EENS8_21DefaultRefDerefTraitsISB_EEEENS9_INSA_11ArrayBufferENSC_ISH_EENSE_ISH_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISL_LNS0_5TraitE1EEEEEvOT_EUlRST_OT0_E_JRNS0_3altILm1ESK_EERKS10_EEEDcSU_DpOT0_();
      return;
    case 2:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_5;
    case 3:
LABEL_5:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_6;
    case 4:
LABEL_6:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_7;
    case 5:
LABEL_7:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_8;
    case 6:
LABEL_8:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_9;
    case 7:
LABEL_9:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_10;
    case 8:
LABEL_10:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_11;
    case 9:
LABEL_11:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_12;
    case 10:
LABEL_12:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_13;
    case 11:
LABEL_13:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_14;
    case 12:
LABEL_14:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_15;
    case 13:
LABEL_15:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_16;
    case 14:
LABEL_16:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_17;
    case 15:
LABEL_17:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_18;
    case 16:
LABEL_18:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_19;
    case 17:
LABEL_19:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_20;
    case 18:
LABEL_20:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_21;
    case 19:
LABEL_21:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_22;
    case 20:
LABEL_22:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_23;
    case 21:
LABEL_23:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_24;
    case 22:
LABEL_24:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_25;
    case 23:
LABEL_25:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_26;
    case 24:
LABEL_26:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_27;
    case 25:
LABEL_27:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_28;
    case 26:
LABEL_28:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_29;
    case 27:
LABEL_29:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_30;
    case 28:
LABEL_30:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_31;
    case 29:
LABEL_31:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_32;
    case 30:
LABEL_32:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      goto LABEL_33;
    case 31:
LABEL_33:
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      std::__to_address[abi:sn200100]<char const>();
      __break(1u);
      break;
    default:
      break;
  }

  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  __break(1u);
}

WTF::RefCountedBase **_ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS8_12RawPtrTraitsISB_EENS8_21DefaultRefDerefTraitsISB_EEEENS9_INSA_11ArrayBufferENSC_ISH_EENSE_ISH_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISL_LNS0_5TraitE1EEEEEvOT_EUlRST_OT0_E_JRNS0_3altILm0ESG_EERKS10_EEEDcSU_DpOT0_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE14generic_assignIRKNS3_15copy_assignmentISJ_LNS3_5TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS3_3altILm0ESE_EERKSY_EEEDTclsr6detailE6invokeclsr3libE7forwardISR_Efp_Espclsr3libE7forwardIT0_Efp0_EEESS_DpOS12_();
}

WTF::RefCountedBase **_ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE14generic_assignIRKNS3_15copy_assignmentISJ_LNS3_5TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS3_3altILm0ESE_EERKSY_EEEDTclsr6detailE6invokeclsr3libE7forwardISR_Efp_Espclsr3libE7forwardIT0_Efp0_EEESS_DpOS12_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176detail6invokeIZNS_6detail10assignmentINS4_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS7_12RawPtrTraitsISA_EENS7_21DefaultRefDerefTraitsISA_EEEENS8_INS9_11ArrayBufferENSB_ISG_EENSD_ISG_EEEEEEEE14generic_assignIRKNS4_15copy_assignmentISK_LNS4_5TraitE1EEEEEvOT_EUlRSS_OT0_E_JRNS4_3altILm0ESF_EERKSZ_EEEDTclclsr3libE7forwardISS_Efp_Espclsr3libE7forwardIT0_Efp0_EEEST_DpOS13_();
}

WTF::RefCountedBase **_ZN5mpark3lib5cpp176detail6invokeIZNS_6detail10assignmentINS4_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS7_12RawPtrTraitsISA_EENS7_21DefaultRefDerefTraitsISA_EEEENS8_INS9_11ArrayBufferENSB_ISG_EENSD_ISG_EEEEEEEE14generic_assignIRKNS4_15copy_assignmentISK_LNS4_5TraitE1EEEEEvOT_EUlRSS_OT0_E_JRNS4_3altILm0ESF_EERKSZ_EEEDTclclsr3libE7forwardISS_Efp_Espclsr3libE7forwardIT0_Efp0_EEEST_DpOS13_()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  v3 = v2;
  std::__to_address[abi:sn200100]<char const>();
  return _ZZN5mpark6detail10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS3_12RawPtrTraitsIS6_EENS3_21DefaultRefDerefTraitsIS6_EEEENS4_INS5_11ArrayBufferENS7_ISC_EENS9_ISC_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISG_LNS0_5TraitE1EEEEEvOT_ENKUlRSO_OT0_E_clINS0_3altILm0ESB_EERKSW_EEDaSQ_SS_(v1, v3);
}

WTF::RefCountedBase **_ZZN5mpark6detail10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS3_12RawPtrTraitsIS6_EENS3_21DefaultRefDerefTraitsIS6_EEEENS4_INS5_11ArrayBufferENS7_ISC_EENS9_ISC_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISG_LNS0_5TraitE1EEEEEvOT_ENKUlRSO_OT0_E_clINS0_3altILm0ESB_EERKSW_EEDaSQ_SS_(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::assign_alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>> const&>(v2, a2, v4);
}

WTF::RefCountedBase **mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::assign_alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>> const&>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7[2] = a3;
  if (mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::index(a1))
  {
    v7[0] = a1;
    std::__to_address[abi:sn200100]<char const>();
    v7[1] = v6;
    return mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::assign_alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>> const&>(mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>> &,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>> const&)::{unnamed type#1}::operator()(v7);
  }

  else
  {
    std::__to_address[abi:sn200100]<char const>();
    return WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>::operator=(v8, v4);
  }
}

WTF::RefCountedBase *WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>::operator=(uint64_t *a1, WTF::RefCountedBase **a2)
{
  v4[2] = a1;
  v4[1] = a2;
  v10 = v4;
  v9 = a2;
  v12 = v4;
  v11 = a2;
  v14 = a2;
  v13 = *a2;
  if (v13)
  {
    WTF::RefCountedBase::ref(v13);
  }

  v4[0] = v13;
  WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>::swap<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>(a1, v4);
  v4[3] = v4;
  v5[1] = v4;
  v5[0] = 0;
  v8 = v4;
  v7 = v5;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(v4);
  v6 = result;
  if (result)
  {
    return WTF::RefCounted<JSC::ArrayBufferView>::deref(v6);
  }

  return result;
}

WTF::RefCountedBase **mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::assign_alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>> const&>(mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>> &,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>> const&)::{unnamed type#1}::operator()(uint64_t *a1)
{
  v1 = *a1;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::emplace<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>> const&>(v1);
}

WTF::RefCountedBase **mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::emplace<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>> const&>(uint64_t a1)
{
  mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::destroy(a1);
  mpark::detail::access::base::get_alt<0ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
  std::__to_address[abi:sn200100]<char const>();
  result = mpark::detail::constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::construct_alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>> const&>();
  *(a1 + 8) = 0;
  return result;
}

uint64_t *_ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS8_12RawPtrTraitsISB_EENS8_21DefaultRefDerefTraitsISB_EEEENS9_INSA_11ArrayBufferENSC_ISH_EENSE_ISH_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISL_LNS0_5TraitE1EEEEEvOT_EUlRST_OT0_E_JRNS0_3altILm1ESK_EERKS10_EEEDcSU_DpOT0_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE14generic_assignIRKNS3_15copy_assignmentISJ_LNS3_5TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS3_3altILm1ESI_EERKSY_EEEDTclsr6detailE6invokeclsr3libE7forwardISR_Efp_Espclsr3libE7forwardIT0_Efp0_EEESS_DpOS12_();
}

uint64_t *_ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE14generic_assignIRKNS3_15copy_assignmentISJ_LNS3_5TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS3_3altILm1ESI_EERKSY_EEEDTclsr6detailE6invokeclsr3libE7forwardISR_Efp_Espclsr3libE7forwardIT0_Efp0_EEESS_DpOS12_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176detail6invokeIZNS_6detail10assignmentINS4_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS7_12RawPtrTraitsISA_EENS7_21DefaultRefDerefTraitsISA_EEEENS8_INS9_11ArrayBufferENSB_ISG_EENSD_ISG_EEEEEEEE14generic_assignIRKNS4_15copy_assignmentISK_LNS4_5TraitE1EEEEEvOT_EUlRSS_OT0_E_JRNS4_3altILm1ESJ_EERKSZ_EEEDTclclsr3libE7forwardISS_Efp_Espclsr3libE7forwardIT0_Efp0_EEEST_DpOS13_();
}

uint64_t *_ZN5mpark3lib5cpp176detail6invokeIZNS_6detail10assignmentINS4_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS7_12RawPtrTraitsISA_EENS7_21DefaultRefDerefTraitsISA_EEEENS8_INS9_11ArrayBufferENSB_ISG_EENSD_ISG_EEEEEEEE14generic_assignIRKNS4_15copy_assignmentISK_LNS4_5TraitE1EEEEEvOT_EUlRSS_OT0_E_JRNS4_3altILm1ESJ_EERKSZ_EEEDTclclsr3libE7forwardISS_Efp_Espclsr3libE7forwardIT0_Efp0_EEEST_DpOS13_()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  v3 = v2;
  std::__to_address[abi:sn200100]<char const>();
  return _ZZN5mpark6detail10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS3_12RawPtrTraitsIS6_EENS3_21DefaultRefDerefTraitsIS6_EEEENS4_INS5_11ArrayBufferENS7_ISC_EENS9_ISC_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISG_LNS0_5TraitE1EEEEEvOT_ENKUlRSO_OT0_E_clINS0_3altILm1ESF_EERKSW_EEDaSQ_SS_(v1, v3);
}

uint64_t *_ZZN5mpark6detail10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS3_12RawPtrTraitsIS6_EENS3_21DefaultRefDerefTraitsIS6_EEEENS4_INS5_11ArrayBufferENS7_ISC_EENS9_ISC_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISG_LNS0_5TraitE1EEEEEvOT_ENKUlRSO_OT0_E_clINS0_3altILm1ESF_EERKSW_EEDaSQ_SS_(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::assign_alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>> const&>(v2, a2, v4);
}

uint64_t *mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::assign_alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>> const&>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7[2] = a3;
  if (mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::index(a1) == 1)
  {
    std::__to_address[abi:sn200100]<char const>();
    return WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>::operator=(v8, v4);
  }

  else
  {
    v7[0] = a1;
    std::__to_address[abi:sn200100]<char const>();
    v7[1] = v6;
    return mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::assign_alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>> const&>(mpark::detail::alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>> &,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>> const&)::{unnamed type#1}::operator()(v7);
  }
}

uint64_t *WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>::operator=(uint64_t *a1, _DWORD **a2)
{
  v4[2] = a1;
  v4[1] = a2;
  v10 = v4;
  v9 = a2;
  v12 = v4;
  v11 = a2;
  v14 = a2;
  v13 = *a2;
  if (v13)
  {
    WTF::DeferrableRefCountedBase::ref(v13);
  }

  v4[0] = v13;
  WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>::swap<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>(a1, v4);
  v4[3] = v4;
  v5[1] = v4;
  v5[0] = 0;
  v8 = v4;
  v7 = v5;
  v6 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(v4);
  if (v6)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v6);
  }

  return a1;
}

void *mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::assign_alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>> const&>(mpark::detail::alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>> &,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>> const&)::{unnamed type#1}::operator()(uint64_t *a1)
{
  v1 = *a1;
  std::__to_address[abi:sn200100]<char const>();
  return mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::emplace<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>> const&>(v1);
}

void *mpark::detail::assignment<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::emplace<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>> const&>(uint64_t a1)
{
  mpark::detail::destructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>,(mpark::detail::Trait)1>::destroy(a1);
  mpark::detail::access::base::get_alt<1ul,mpark::detail::base<(mpark::detail::Trait)1,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>();
  std::__to_address[abi:sn200100]<char const>();
  result = mpark::detail::constructor<mpark::detail::traits<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>>::construct_alt<1ul,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>> const&>();
  *(a1 + 8) = 1;
  return result;
}

void WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(uint64_t a1, unint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::mutableSpan(a1);
  v7[1] = v4;
  v7[0] = v3;
  v5 = std::span<WebCore::AuthenticatorTransport,18446744073709551615ul>::subspan[abi:sn200100](v7, v9);
  v8[1] = v6;
  v8[0] = v5;
  std::span<char const,18446744073709551615ul>::data[abi:sn200100](v8);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
  WTF::VectorTypeOperations<unsigned char>::destruct();
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  *(a1 + 12) = v9;
}

uint64_t std::span<WebCore::AuthenticatorTransport,18446744073709551615ul>::subspan[abi:sn200100](uint64_t a1, unint64_t a2)
{
  if (a2 > std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1))
  {
    __break(1u);
  }

  v3 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1) + a2;
  v4 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1);
  std::span<char const,18446744073709551615ul>::span[abi:sn200100]<char const*>(&v7, v3, v4 - a2);
  return v7;
}

void WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(WTF::RefCountedBase *a1, void *a2)
{
  if (a2 < WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(a1))
  {
    if (a2 < WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1))
    {
      WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, a2);
    }

    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a1);
    v5 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    if (a2)
    {
      if (WTF::VectorBufferBase<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,WTF::FastMalloc>::shouldReallocateBuffer(a1, a2))
      {
        WTF::VectorBufferBase<WebCore::AuthenticatorTransport,WTF::FastMalloc>::reallocateBuffer(a1, a2);
        WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
        WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
        return;
      }

      v4 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
      WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(a1, a2);
      if (WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1) != v5)
      {
        v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
        WTF::VectorTypeOperations<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>>::move(v5, v4, v3);
      }
    }

    WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::deallocateBuffer(a1, v5);
    WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  }
}

uint64_t WTF::VectorBufferBase<WebCore::AuthenticatorTransport,WTF::FastMalloc>::reallocateBuffer(uint64_t a1, void *a2)
{
  if (a2 > std::numeric_limits<unsigned long>::max[abi:sn200100]())
  {
    __break(0xC471u);
    JUMPOUT(0x19D6A6478);
  }

  *(a1 + 8) = a2;
  result = WTF::FastMalloc::realloc(*a1, a2);
  *a1 = result;
  return result;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueMakeCredentialAfterCheckExcludedCredentials(BOOL)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,WebKit::CtapAuthenticator::continueMakeCredentialAfterCheckExcludedCredentials(BOOL)::$_0,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x10);
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueMakeCredentialAfterCheckExcludedCredentials(BOOL)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueMakeCredentialAfterCheckExcludedCredentials(BOOL)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueMakeCredentialAfterCheckExcludedCredentials(BOOL)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E76E8;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueMakeCredentialAfterCheckExcludedCredentials(BOOL)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueMakeCredentialAfterCheckExcludedCredentials(BOOL)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E76E8;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t WebKit::CtapAuthenticator::continueMakeCredentialAfterCheckExcludedCredentials(BOOL)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  result = WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator!(a1);
  if ((result & 1) == 0)
  {
    v4 = WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(a1);
    return WebKit::CtapAuthenticator::continueMakeCredentialAfterResponseReceived(v4, a2);
  }

  return result;
}

atomic_uint *WTF::tryMakeString<WTF::ASCIILiteral,unsigned char>(void *a1, _OWORD *a2, char *a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v6 = *a2;
  WTF::StringTypeAdapter<WTF::ASCIILiteral,void>::StringTypeAdapter(v7, v6, *(&v6 + 1));
  WTF::StringTypeAdapter<unsigned char,void>::StringTypeAdapter(&v5, *v8);
  return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned char,void>>(a1, v7, &v5);
}

atomic_uint *WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned char,void>>(void *a1, WTF *a2, unsigned __int8 *a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v4 = WTF::StringTypeAdapter<std::span<unsigned char const,18446744073709551615ul>,void>::length(a2);
  v5 = WTF::StringTypeAdapter<unsigned char,void>::length(v11);
  WTF::checkedSum<int,unsigned int,unsigned int>(&v10, v4, v5);
  if (WTF::RecordOverflow::hasOverflowed(&v10))
  {
    memset(a1, 0, sizeof(void));
    return WTF::WeakPtr<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1);
  }

  else
  {
    WTF::are8Bit<WTF::StringTypeAdapter<WTF::ASCIILiteral,void> &,WTF::StringTypeAdapter<unsigned char,void> &>(v12, v11);
    v9 = 1;
    v7 = WTF::Checked<int,WTF::RecordOverflow>::operator int(&v10);
    WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned char,void>>(&v8, v7, 1, *v12, *(v12 + 1), *v11);
    WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1, &v8);
    v14 = &v8;
    v15[1] = &v8;
    v15[0] = 0;
    v18 = &v8;
    v17 = v15;
    result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v8);
    v16 = result;
    if (result)
    {
      return WTF::StringImpl::deref(v16);
    }
  }

  return result;
}

void *WTF::StringTypeAdapter<WTF::ASCIILiteral,void>::StringTypeAdapter(void *a1, uint64_t a2, uint64_t a3)
{
  return WTF::StringTypeAdapter<WTF::ASCIILiteral,void>::StringTypeAdapter(a1, a2, a3);
}

{
  v7[0] = a2;
  v7[1] = a3;
  v4 = WTF::ASCIILiteral::span8(v7);
  WTF::StringTypeAdapter<std::span<unsigned char const,18446744073709551615ul>,void>::StringTypeAdapter(a1, v4, v5);
  return a1;
}

uint64_t WTF::checkedSum<int,unsigned int,unsigned int>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  WTF::Checked<int,WTF::RecordOverflow>::Checked<unsigned int>(v6, a2);
  WTF::checkedSum<int,unsigned int>(&v5, v7);
  return WTF::operator+<int,int,WTF::RecordOverflow>(a1, v6, &v5);
}

atomic_uint *WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned char,void>>(uint64_t *a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v42 = a1;
  *(&v41 + 1) = a5;
  *&v41 = a4;
  v40 = a6;
  v39 = a2;
  v38 = a3;
  if (a3)
  {
    std::span<unsigned char,18446744073709551615ul>::span[abi:sn200100](&v37);
    v78 = &v36;
    v77 = v39;
    v76 = &v37;
    if (v39)
    {
      v8 = v77;
      if (v8 <= WTF::StringImpl::maxInternalLength<unsigned char>())
      {
        WTF::Checked<unsigned long,WTF::CrashOnOverflow>::Checked<unsigned long>(&v72, v77);
        v10 = WTF::StringImpl::allocationSize<unsigned char>(&v72);
        v73 = WTF::FastCompactMalloc::tryMalloc(v10);
        if (v73)
        {
          v12 = WTF::StringImpl::tailPointer<unsigned char>(v73);
          v13 = WTF::unsafeMakeSpan<char const,18446744073709551615ul>(v12, v77);
          v70 = v14;
          v69[1] = v13;
          v15 = v76;
          *v76 = v13;
          v15[1] = v70;
          v111 = v69;
          v110 = v73;
          v109 = v77;
          WTF::StringImpl::operator new();
          v17 = v16;
          WTF::StringImpl::StringImpl(v16, v109);
          WTF::adoptRef<WebKit::AuthenticatorManager,WTF::RawPtrTraits<WebKit::AuthenticatorManager>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorManager>>(v69, v17);
          WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(&v36, v69);
          WTF::Ref<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::~Ref(v69);
        }

        else
        {
          std::span<unsigned char,18446744073709551615ul>::span[abi:sn200100](v71);
          v11 = v76;
          *v76 = v71[0];
          v11[1] = v71[1];
          v80 = &v36;
          v79 = 0;
          v86 = &v36;
          v85 = 0;
          v36 = 0;
        }
      }

      else
      {
        std::span<unsigned char,18446744073709551615ul>::span[abi:sn200100](v74);
        v9 = v76;
        *v76 = v74[0];
        v9[1] = v74[1];
        v82 = &v36;
        v81 = 0;
        v84 = &v36;
        v83 = 0;
        v36 = 0;
      }
    }

    else
    {
      std::span<unsigned char,18446744073709551615ul>::span[abi:sn200100](v75);
      v7 = v76;
      *v76 = v75[0];
      v7[1] = v75[1];
      v108 = &v36;
      v107 = MEMORY[0x1E696EB88];
      v113 = &v36;
      v112 = MEMORY[0x1E696EB88];
      v114 = MEMORY[0x1E696EB88];
      if (MEMORY[0x1E696EB88])
      {
        WTF::StringImpl::ref(v114);
      }

      v36 = v114;
    }

    if (WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(&v36))
    {
      v56 = a1;
      v55 = 0;
      v58 = a1;
      v57 = 0;
      *a1 = 0;
      v35 = 1;
    }

    else
    {
      if (std::span<char const,18446744073709551615ul>::data[abi:sn200100](&v37))
      {
        v34 = v37;
        v33 = v41;
        v32 = v40;
        WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned char,void>>(v37, *(&v37 + 1), v41, *(&v41 + 1), v40);
      }

      v64 = a1;
      v63 = &v36;
      v66 = a1;
      v65 = &v36;
      *a1 = WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::leakRef(&v36);
      v35 = 1;
    }

    v44 = &v36;
    v45[1] = &v36;
    v45[0] = 0;
    v52 = &v36;
    v51 = v45;
    result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v36);
    v48 = result;
    if (result)
    {
      return WTF::StringImpl::deref(v48);
    }
  }

  else
  {
    std::span<unsigned char,18446744073709551615ul>::span[abi:sn200100](v31);
    v96 = &v30;
    v95 = v39;
    v94 = v31;
    if (v39)
    {
      v20 = v95;
      if (v20 <= WTF::StringImpl::maxInternalLength<char16_t>())
      {
        WTF::Checked<unsigned long,WTF::CrashOnOverflow>::Checked<unsigned long>(&v90, v95);
        v22 = WTF::StringImpl::allocationSize<char16_t>(&v90);
        v91 = WTF::FastCompactMalloc::tryMalloc(v22);
        if (v91)
        {
          v24 = WTF::StringImpl::tailPointer<char16_t>(v91);
          v25 = WTF::unsafeMakeSpan<char const,18446744073709551615ul>(v24, v95);
          v88 = v26;
          v87[1] = v25;
          v27 = v94;
          *v94 = v25;
          v27[1] = v88;
          v120 = v87;
          v119 = v91;
          v118 = v95;
          WTF::StringImpl::operator new();
          v29 = v28;
          WTF::StringImpl::StringImpl(v28, v118);
          WTF::adoptRef<WebKit::AuthenticatorManager,WTF::RawPtrTraits<WebKit::AuthenticatorManager>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorManager>>(v87, v29);
          WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(&v30, v87);
          WTF::Ref<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::~Ref(v87);
        }

        else
        {
          std::span<unsigned char,18446744073709551615ul>::span[abi:sn200100](v89);
          v23 = v94;
          *v94 = v89[0];
          v23[1] = v89[1];
          v98 = &v30;
          v97 = 0;
          v104 = &v30;
          v103 = 0;
          v30 = 0;
        }
      }

      else
      {
        std::span<unsigned char,18446744073709551615ul>::span[abi:sn200100](v92);
        v21 = v94;
        *v94 = v92[0];
        v21[1] = v92[1];
        v100 = &v30;
        v99 = 0;
        v102 = &v30;
        v101 = 0;
        v30 = 0;
      }
    }

    else
    {
      std::span<unsigned char,18446744073709551615ul>::span[abi:sn200100](v93);
      v19 = v94;
      *v94 = v93[0];
      v19[1] = v93[1];
      v106 = &v30;
      v105 = MEMORY[0x1E696EB88];
      v116 = &v30;
      v115 = MEMORY[0x1E696EB88];
      v117 = MEMORY[0x1E696EB88];
      if (MEMORY[0x1E696EB88])
      {
        WTF::StringImpl::ref(v117);
      }

      v30 = v117;
    }

    if (WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(&v30))
    {
      v54 = a1;
      v53 = 0;
      v60 = a1;
      v59 = 0;
      *a1 = 0;
      v35 = 1;
    }

    else
    {
      if (std::span<char const,18446744073709551615ul>::data[abi:sn200100](v31))
      {
        WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned char,void>>(v31[0], v31[1], v41, *(&v41 + 1), v40);
      }

      v62 = a1;
      v61 = &v30;
      v68 = a1;
      v67 = &v30;
      *a1 = WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::leakRef(&v30);
      v35 = 1;
    }

    v43 = &v30;
    v46[1] = &v30;
    v46[0] = 0;
    v50 = &v30;
    v49 = v46;
    result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v30);
    v47 = result;
    if (result)
    {
      return WTF::StringImpl::deref(v47);
    }
  }

  return result;
}

uint64_t WTF::Checked<int,WTF::RecordOverflow>::operator int(unsigned int *a1)
{
  hasOverflowed = WTF::RecordOverflow::hasOverflowed(a1);
  if (hasOverflowed)
  {
    WTF::CrashOnOverflow::crash(hasOverflowed);
  }

  return a1[1];
}

uint64_t WTF::operator+<int,int,WTF::RecordOverflow>(uint64_t a1, WTF::RecordOverflow *this, WTF::RecordOverflow *a3)
{
  v12 = a1;
  v11 = this;
  v10 = a3;
  if (WTF::RecordOverflow::hasOverflowed(this) || WTF::RecordOverflow::hasOverflowed(a3))
  {
    return WTF::Checked<int,WTF::RecordOverflow>::Checked(a1);
  }

  v9 = 0;
  v7 = WTF::Checked<int,WTF::RecordOverflow>::operator int(this);
  v8 = WTF::Checked<int,WTF::RecordOverflow>::operator int(a3);
  if (WTF::safeAdd<WTF::RecordOverflow,int,int,int,void>(v7, v8, &v9))
  {
    return WTF::Checked<int,WTF::RecordOverflow>::Checked<int>(a1, v9);
  }

  else
  {
    return WTF::Checked<int,WTF::RecordOverflow>::Checked(a1);
  }
}

uint64_t WTF::Checked<int,WTF::RecordOverflow>::Checked<unsigned int>(uint64_t a1, unsigned int a2)
{
  WTF::Checked<int,WTF::RecordOverflow>::Checked<unsigned int>(a1, a2);
  return a1;
}

{
  WTF::RecordOverflow::RecordOverflow(a1);
  if (!WTF::isInBounds<int,unsigned int>(a2))
  {
    WTF::RecordOverflow::overflowed(a1);
  }

  *(a1 + 4) = a2;
  return a1;
}

uint64_t WTF::Checked<int,WTF::RecordOverflow>::Checked(uint64_t a1)
{
  WTF::Checked<int,WTF::RecordOverflow>::Checked(a1);
  return a1;
}

{
  WTF::RecordOverflow::RecordOverflow(a1);
  *(a1 + 4) = 0;
  WTF::RecordOverflow::overflowed(a1);
  return a1;
}

uint64_t WTF::Checked<int,WTF::RecordOverflow>::Checked<int>(uint64_t a1, int a2)
{
  WTF::Checked<int,WTF::RecordOverflow>::Checked<int>(a1, a2);
  return a1;
}

{
  WTF::RecordOverflow::RecordOverflow(a1);
  WTF::isInBounds<int,int>();
  *(a1 + 4) = a2;
  return a1;
}

uint64_t WTF::ArithmeticOperations<int,int,int,true,true>::add(int a1, int a2, _DWORD *a3)
{
  if (__OFADD__(a1, a2))
  {
    v5 = 0;
  }

  else
  {
    *a3 = a1 + a2;
    v5 = 1;
  }

  return v5 & 1;
}

BOOL WTF::BoundsChecker<int,unsigned int,true,true,false>::inBounds(WTF *a1)
{
  v1 = a1;
  std::numeric_limits<unsigned char>::max[abi:sn200100](a1);
  return v1 <= 0x7FFFFFFF;
}

uint64_t WTF::lengthOfIntegerAsStringImpl<unsigned char,(WTF::PositiveOrNegativeNumber)0>(unsigned __int8 a1)
{
  v2 = 0;
  do
  {
    ++v2;
    a1 /= 0xAu;
  }

  while (a1);
  return v2;
}

double WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned char,void>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v11[0] = a1;
  v11[1] = a2;
  v10[1] = a4;
  v10[0] = a3;
  WTF::StringTypeAdapter<std::span<unsigned char const,18446744073709551615ul>,void>::writeTo<unsigned char>(v10, a1, a2);
  v5 = WTF::StringTypeAdapter<std::span<unsigned char const,18446744073709551615ul>,void>::length(v10);
  v6 = std::span<unsigned char,18446744073709551615ul>::subspan[abi:sn200100](v11, v5, 0xFFFFFFFFFFFFFFFFLL);
  return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<unsigned char,void>>(v6, v7, a5);
}

double WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned char,void>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v11[0] = a1;
  v11[1] = a2;
  v10[1] = a4;
  v10[0] = a3;
  WTF::StringTypeAdapter<std::span<unsigned char const,18446744073709551615ul>,void>::writeTo<char16_t>(v10, a1, a2);
  v5 = WTF::StringTypeAdapter<std::span<unsigned char const,18446744073709551615ul>,void>::length(v10);
  v6 = std::span<char16_t,18446744073709551615ul>::subspan[abi:sn200100](v11, v5);
  return WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<unsigned char,void>>(v6, v7, a5);
}

void *std::span<unsigned char,18446744073709551615ul>::span[abi:sn200100](void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t WTF::StringImpl::maxInternalLength<unsigned char>()
{
  v2 = 0x7FFFFFFFLL;
  v1 = std::numeric_limits<unsigned int>::max[abi:sn200100]() - 32;
  return *std::min[abi:sn200100]<unsigned long>(&v2, &v1);
}

uint64_t WTF::FastCompactMalloc::tryMalloc(WTF::FastCompactMalloc *this)
{
  v3[1] = this;
  WTF::tryFastCompactMalloc(this);
  v2 = 0;
  if (WTF::TryMallocReturnValue::getValue<void>(v3, &v2))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~recursive_union(v3);
  return v4;
}

uint64_t WTF::StringImpl::allocationSize<unsigned char>(WTF::RefCountedBase *a1)
{
  v7 = a1;
  v2 = WTF::StringImpl::tailOffset<unsigned char>();
  WTF::Checked<unsigned long,WTF::CrashOnOverflow>::Checked(&v4, a1);
  WTF::operator*<unsigned long,unsigned long,WTF::CrashOnOverflow>(v5, &v4, 1);
  WTF::operator+<unsigned long,unsigned long,WTF::CrashOnOverflow>(v6, v2, v5);
  return WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::get(v6);
}

WTF::RefCountedBase **WTF::Checked<unsigned long,WTF::CrashOnOverflow>::Checked<unsigned long>(WTF::RefCountedBase **a1, WTF::RefCountedBase *a2)
{
  WTF::Checked<unsigned long,WTF::CrashOnOverflow>::Checked<unsigned long>(a1, a2);
  return a1;
}

{
  WTF::isHashTraitsReleasedWeakValue<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WebCore::AuthenticatorTransport>(a2);
  *a1 = a2;
  return a1;
}

void *std::min[abi:sn200100]<unsigned long,std::__less<void,void>>(void *a1, void *a2)
{
  if (std::__less<void,void>::operator()[abi:sn200100]<unsigned long,unsigned long>(&v5, a2, a1))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

BOOL WTF::TryMallocReturnValue::getValue<void>(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return *a2 != 0;
}

WTF::RefCountedBase **WTF::operator+<unsigned long,unsigned long,WTF::CrashOnOverflow>(WTF::RefCountedBase *a1, WTF::RefCountedBase *a2, WTF::RefCountedBase *a3)
{
  v7[3] = a1;
  v7[2] = a2;
  v7[1] = a3;
  WTF::Checked<unsigned long,WTF::CrashOnOverflow>::Checked<unsigned long>(v7, a2);
  WTF::Checked<unsigned long,WTF::CrashOnOverflow>::Checked(&v6, a3);
  return WTF::operator+<unsigned long,unsigned long,WTF::CrashOnOverflow>(a1, v7, &v6);
}

WTF::RefCountedBase **WTF::operator*<unsigned long,unsigned long,WTF::CrashOnOverflow>(WTF::RefCountedBase *a1, WTF::RefCountedBase *a2, WTF::RefCountedBase *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  WTF::Checked<unsigned long,WTF::CrashOnOverflow>::Checked(&v6, a2);
  WTF::Checked<unsigned long,WTF::CrashOnOverflow>::Checked<unsigned long>(&v5, v7);
  return WTF::operator*<unsigned long,unsigned long,WTF::CrashOnOverflow>(a1, &v6, &v5);
}

void *WTF::Checked<unsigned long,WTF::CrashOnOverflow>::Checked(void *a1, WTF::RefCountedBase *a2)
{
  WTF::Checked<unsigned long,WTF::CrashOnOverflow>::Checked(a1, a2);
  return a1;
}

{
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a2);
  *a1 = *a2;
  return a1;
}

WTF::RefCountedBase **WTF::operator+<unsigned long,unsigned long,WTF::CrashOnOverflow>(WTF::RefCountedBase *a1, WTF::RefCountedBase *this, WTF::RefCountedBase *a3)
{
  v9[3] = a1;
  v9[2] = this;
  v9[1] = a3;
  WTF::RefCountedBase::applyRefDerefThreadingCheck(this);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a3);
  v9[0] = 0;
  v6 = WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::get(this);
  v7 = WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::get(a3);
  if ((WTF::safeAdd<WTF::CrashOnOverflow,unsigned long,unsigned long,unsigned long,void>(v6, v7, v9) & 1) == 0)
  {
    WTF::Checked<unsigned long,WTF::CrashOnOverflow>::Checked(a1);
  }

  return WTF::Checked<unsigned long,WTF::CrashOnOverflow>::Checked<unsigned long>(a1, v9[0]);
}

void WTF::Checked<unsigned long,WTF::CrashOnOverflow>::Checked(WTF::CrashOnOverflow *a1)
{
  WTF::Checked<unsigned long,WTF::CrashOnOverflow>::Checked(a1);
}

{
  *a1 = 0;
  WTF::CrashOnOverflow::overflowed(a1);
}

uint64_t WTF::ArithmeticOperations<unsigned long,unsigned long,unsigned long,false,false>::add(uint64_t a1, uint64_t a2, void *a3)
{
  if (__CFADD__(a1, a2))
  {
    v5 = 0;
  }

  else
  {
    *a3 = a1 + a2;
    v5 = 1;
  }

  return v5 & 1;
}

WTF::RefCountedBase **WTF::operator*<unsigned long,unsigned long,WTF::CrashOnOverflow>(WTF::RefCountedBase *a1, WTF::RefCountedBase *this, WTF::RefCountedBase *a3)
{
  v9[3] = a1;
  v9[2] = this;
  v9[1] = a3;
  WTF::RefCountedBase::applyRefDerefThreadingCheck(this);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a3);
  v9[0] = 0;
  v6 = WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::get(this);
  v7 = WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::get(a3);
  if ((WTF::safeMultiply<WTF::CrashOnOverflow,unsigned long,unsigned long,unsigned long,void>(v6, v7, v9) & 1) == 0)
  {
    WTF::Checked<unsigned long,WTF::CrashOnOverflow>::Checked(a1);
  }

  return WTF::Checked<unsigned long,WTF::CrashOnOverflow>::Checked<unsigned long>(a1, v9[0]);
}

uint64_t WTF::ArithmeticOperations<unsigned long,unsigned long,unsigned long,false,false>::multiply(unint64_t a1, unint64_t a2, void *a3)
{
  if (is_mul_ok(a1, a2))
  {
    *a3 = a1 * a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t WTF::StringImpl::StringImpl(uint64_t a1, unsigned int a2, int a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v4 = WTF::StringImpl::tailPointer<unsigned char>(a1);
  v5 = WTF::unsafeMakeSpan<char const,18446744073709551615ul>(v4, v11);
  v8[1] = v6;
  v8[0] = v5;
  std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<unsigned char,18446744073709551615ul>(v9, v8);
  WTF::StringImplShape::StringImplShape(a1, v9[0], v9[1]);
  return a1;
}

uint64_t *std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<unsigned char,18446744073709551615ul>(uint64_t *a1, uint64_t a2)
{
  std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<unsigned char,18446744073709551615ul>(a1, a2);
  return a1;
}

{
  *a1 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a2);
  a1[1] = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a2);
  return a1;
}

uint64_t WTF::StringImplShape::StringImplShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v8 = a1;
  std::atomic<unsigned int>::atomic[abi:sn200100](a1, 2u);
  *(a1 + 4) = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v7);
  *(a1 + 8) = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v7);
  *(a1 + 16) = 4;
  v4 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v7);
  if (v4 > 0x7FFFFFFF)
  {
    isIntegralOrPointerType = WTF::isIntegralOrPointerType(v4);
    WTF::isIntegralOrPointerType(isIntegralOrPointerType);
    v20 = 840;
    v19 = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/text/StringImpl.h";
    v18 = "WTF::StringImplShape::StringImplShape(unsigned int, std::span<const LChar>, unsigned int)";
    v17 = 22;
    v16 = 840;
    v15 = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/text/StringImpl.h";
    v14 = "WTF::StringImplShape::StringImplShape(unsigned int, std::span<const LChar>, unsigned int)";
    v13 = 22;
    v12 = 840;
    v11 = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/text/StringImpl.h";
    v10 = "WTF::StringImplShape::StringImplShape(unsigned int, std::span<const LChar>, unsigned int)";
    v9 = 22;
    __break(0xC471u);
    JUMPOUT(0x19D6A80D4);
  }

  return v8;
}

{
  v7[0] = a2;
  v7[1] = a3;
  v8 = a1;
  std::atomic<unsigned int>::atomic[abi:sn200100](a1, 2u);
  *(a1 + 4) = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v7);
  *(a1 + 8) = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v7);
  *(a1 + 16) = 0;
  v4 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v7);
  if (v4 > 0x7FFFFFFF)
  {
    isIntegralOrPointerType = WTF::isIntegralOrPointerType(v4);
    WTF::isIntegralOrPointerType(isIntegralOrPointerType);
    v20 = 849;
    v19 = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/text/StringImpl.h";
    v18 = "WTF::StringImplShape::StringImplShape(unsigned int, std::span<const char16_t>, unsigned int)";
    v17 = 23;
    v16 = 849;
    v15 = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/text/StringImpl.h";
    v14 = "WTF::StringImplShape::StringImplShape(unsigned int, std::span<const char16_t>, unsigned int)";
    v13 = 23;
    v12 = 849;
    v11 = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/text/StringImpl.h";
    v10 = "WTF::StringImplShape::StringImplShape(unsigned int, std::span<const char16_t>, unsigned int)";
    v9 = 23;
    __break(0xC471u);
    JUMPOUT(0x19D6A8884);
  }

  return v8;
}

double WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<unsigned char,void>>(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = a1;
  v6 = a2;
  v4 = a3;
  return WTF::StringTypeAdapter<unsigned char,void>::writeTo<unsigned char>(&v4, a1, a2);
}

uint64_t std::span<unsigned char,18446744073709551615ul>::subspan[abi:sn200100](uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 > std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1))
  {
    __break(1u);
  }

  if (a3 == -1)
  {
    v4 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1) + a2;
    v5 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1);
    std::span<char const,18446744073709551615ul>::span[abi:sn200100]<char const*>(&v10, v4, v5 - a2);
  }

  else
  {
    if (a3 > std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1) - a2)
    {
      __break(1u);
    }

    v6 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1);
    std::span<char const,18446744073709551615ul>::span[abi:sn200100]<char const*>(&v10, v6 + a2, a3);
  }

  return v10;
}

uint64_t WTF::copyElements<unsigned char>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = a1;
  v9[1] = a2;
  v8[1] = a4;
  v8[0] = a3;
  v7 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v9);
  v6 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v8);
  result = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v8);
  if (result == 1)
  {
    *v7 = *v6;
  }

  else
  {
    result = std::span<char const,18446744073709551615ul>::empty[abi:sn200100](v8);
    if ((result & 1) == 0)
    {
      v5 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v8);
      return memcpy(v7, v6, v5);
    }
  }

  return result;
}

void WTF::writeIntegerToBufferImpl<unsigned char,unsigned char,(WTF::PositiveOrNegativeNumber)0>(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a2;
  v9[1] = a3;
  v8 = a1;
  WTF::RefCountedBase::applyRefDerefThreadingCheck(v7);
  v6 = 4;
  do
  {
    v3 = v8 % 0xAu + 48;
    *std::array<unsigned char,4ul>::operator[][abi:sn200100](v7, --v6) = v3;
    v8 /= 0xAu;
  }

  while (v8);
  for (i = 0; ; ++i)
  {
    WTF::RefCountedBase::applyRefDerefThreadingCheck(v7);
    if (i >= 4 - v6)
    {
      break;
    }

    v4 = *std::array<unsigned char,4ul>::operator[][abi:sn200100](v7, v6 + i);
    *std::span<unsigned char,18446744073709551615ul>::operator[][abi:sn200100](v9, i) = v4;
  }
}

uint64_t std::array<unsigned char,4ul>::operator[][abi:sn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
    __break(1u);
  }

  return a1 + a2;
}

unint64_t std::span<unsigned char,18446744073709551615ul>::operator[][abi:sn200100](void *a1, unint64_t a2)
{
  if (a2 >= std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1))
  {
    __break(1u);
  }

  return *a1 + a2;
}

uint64_t WTF::StringImpl::maxInternalLength<char16_t>()
{
  v2 = 0x7FFFFFFFLL;
  v1 = (std::numeric_limits<unsigned int>::max[abi:sn200100]() - 32) >> 1;
  return *std::min[abi:sn200100]<unsigned long>(&v2, &v1);
}

uint64_t WTF::StringImpl::allocationSize<char16_t>(WTF::RefCountedBase *a1)
{
  v7 = a1;
  v2 = WTF::StringImpl::tailOffset<char16_t>();
  WTF::Checked<unsigned long,WTF::CrashOnOverflow>::Checked(&v4, a1);
  WTF::operator*<unsigned long,unsigned long,WTF::CrashOnOverflow>(v5, &v4, 2);
  WTF::operator+<unsigned long,unsigned long,WTF::CrashOnOverflow>(v6, v2, v5);
  return WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::get(v6);
}

WTF::StringImpl *WTF::StringImpl::StringImpl(WTF::StringImpl *this, unsigned int a2)
{
  WTF::StringImpl::StringImpl(this, a2);
  return this;
}

{
  v10 = this;
  v9 = a2;
  v3 = WTF::StringImpl::tailPointer<char16_t>(this);
  v4 = WTF::unsafeMakeSpan<char const,18446744073709551615ul>(v3, v9);
  v7[1] = v5;
  v7[0] = v4;
  std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<unsigned char,18446744073709551615ul>(v8, v7);
  WTF::StringImplShape::StringImplShape(this, v8[0], v8[1]);
  return this;
}

unint64_t WTF::StringTypeAdapter<std::span<unsigned char const,18446744073709551615ul>,void>::writeTo<char16_t>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = WTF::spanReinterpretCast<unsigned char const,18446744073709551615ul,char const>(*a1, a1[1]);
  v11 = v4;
  v10 = v3;
  v5 = WTF::spanReinterpretCast<unsigned short,18446744073709551615ul,char16_t>(a2, a3);
  return WTF::copyElements(v5, v6, v10, v11);
}

double WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<unsigned char,void>>(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = a1;
  v6 = a2;
  v4 = a3;
  return WTF::StringTypeAdapter<unsigned char,void>::writeTo<char16_t>(&v4, a1, a2);
}

uint64_t std::span<char16_t,18446744073709551615ul>::subspan[abi:sn200100](uint64_t a1, unint64_t a2)
{
  if (a2 > std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1))
  {
    __break(1u);
  }

  v3 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1) + 2 * a2;
  v4 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1);
  std::span<char const,18446744073709551615ul>::span[abi:sn200100]<char const*>(&v7, v3, v4 - a2);
  return v7;
}

unint64_t WTF::copyElements(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[0] = a1;
  v28[1] = a2;
  v27[1] = a4;
  v27[0] = a3;
  v26 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v28);
  v25 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v27);
  result = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v27);
  v24 = v26 + 2 * result;
  if (result >= 0x40)
  {
    v23 = v26 + 2 * (result & 0x7FFFFFFFFFFFFFC0);
    v29 = 0;
    v61 = 0;
    v60 = 0u;
    v5 = &v61;
    v6 = vld1q_dup_s8(v5);
    v59 = v6;
    v60 = v6;
    v22.val[1] = v6;
    do
    {
      v34 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](&v25);
      v7 = *v34;
      v8 = v34[1];
      v9 = v34[2];
      v33 = v34[3];
      v32 = v9;
      v31 = v8;
      v30 = v7;
      v38 = v33;
      v37 = v9;
      v36 = v8;
      v35 = v7;
      v22.val[0] = v33;
      v21 = v9;
      v20 = v8;
      v19 = v7;
      v25 += 64;
      v10 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](&v26);
      v58 = v22.val[1];
      v57 = v19;
      v56 = v10;
      v55 = v22.val[1];
      v54 = v19;
      v11 = v10;
      v62.val[0] = v19;
      v62.val[1] = v22.val[1];
      vst2q_s8(v11, v62);
      v26 += 32;
      v12 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](&v26);
      v53 = v22.val[1];
      v52 = v20;
      v51 = v12;
      v50 = v22.val[1];
      v49 = v20;
      v13 = v12;
      v63.val[0] = v20;
      v63.val[1] = v22.val[1];
      vst2q_s8(v13, v63);
      v26 += 32;
      v14 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](&v26);
      v48 = v22.val[1];
      v47 = v21;
      v46 = v14;
      v64.val[0] = v21;
      v45 = v22.val[1];
      v44 = v21;
      v15 = v14;
      v64.val[1] = v22.val[1];
      vst2q_s8(v15, v64);
      v26 += 32;
      result = std::span<char const,18446744073709551615ul>::data[abi:sn200100](&v26);
      v43 = v22.val[1];
      v42 = v22.val[0];
      v41 = result;
      v40 = v22.val[1];
      v39 = v22.val[0];
      v16 = result;
      v65 = v22;
      vst2q_s8(v16, v65);
      v26 += 32;
    }

    while (v26 != v23);
  }

  while (v26 != v24)
  {
    v17 = v25++;
    LOWORD(v17) = *v17;
    v18 = v26;
    v26 += 2;
    *v18 = v17;
  }

  return result;
}

uint64_t WTF::spanReinterpretCast<unsigned short,18446744073709551615ul,char16_t>(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  v2 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v5);
  v3 = std::span<char16_t,18446744073709551615ul>::size_bytes[abi:sn200100](v5);
  std::span<char const,18446744073709551615ul>::span[abi:sn200100]<char const*>(&v6, v2, v3 >> 1);
  return v6;
}

void WTF::writeIntegerToBufferImpl<char16_t,unsigned char,(WTF::PositiveOrNegativeNumber)0>(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a2;
  v9[1] = a3;
  v8 = a1;
  WTF::RefCountedBase::applyRefDerefThreadingCheck(v7);
  v6 = 4;
  do
  {
    v3 = v8 % 0xAu + 48;
    *std::array<unsigned char,4ul>::operator[][abi:sn200100](v7, --v6) = v3;
    v8 /= 0xAu;
  }

  while (v8);
  for (i = 0; ; ++i)
  {
    WTF::RefCountedBase::applyRefDerefThreadingCheck(v7);
    if (i >= 4 - v6)
    {
      break;
    }

    v4 = *std::array<unsigned char,4ul>::operator[][abi:sn200100](v7, v6 + i);
    *std::span<char16_t,18446744073709551615ul>::operator[][abi:sn200100](v9, i) = v4;
  }
}

uint64_t std::span<char16_t,18446744073709551615ul>::operator[][abi:sn200100](void *a1, unint64_t a2)
{
  if (a2 >= std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1))
  {
    __break(1u);
  }

  return *a1 + 2 * a2;
}

void *WTF::StringTypeAdapter<std::span<unsigned char const,18446744073709551615ul>,void>::StringTypeAdapter(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  v3 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1);
  if (v3 > 0x7FFFFFFF)
  {
    isIntegralOrPointerType = WTF::isIntegralOrPointerType(v3);
    WTF::isIntegralOrPointerType(isIntegralOrPointerType);
    __break(0xC471u);
    JUMPOUT(0x19D6A90E0);
  }

  return a1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getAssertion(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,WebKit::CtapAuthenticator::getAssertion(void)::$_0,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x10);
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getAssertion(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getAssertion(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getAssertion(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7710;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getAssertion(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getAssertion(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7710;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t *WebKit::CtapAuthenticator::getAssertion(void)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  result = WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator!(a1);
  if ((result & 1) == 0)
  {
    v4 = WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(a1);
    v5 = v9;
    WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(&v7, a1);
    WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v6);
    WTF::CompletionHandler<void ()(BOOL)>::CompletionHandler<WebKit::CtapAuthenticator::getAssertion(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void>(&v8, &v7);
    WebKit::CtapAuthenticator::continueSilentlyCheckCredentials(v4, v5, &v8);
    WTF::CompletionHandler<void ()(BOOL)>::~CompletionHandler(&v8);
    WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v6);
    return WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(&v7);
  }

  return result;
}

uint64_t *WTF::CompletionHandler<void ()(BOOL)>::CompletionHandler<WebKit::CtapAuthenticator::getAssertion(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void>(uint64_t *a1, uint64_t *a2)
{
  WTF::CompletionHandler<void ()(BOOL)>::CompletionHandler<WebKit::CtapAuthenticator::getAssertion(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void>(a1, a2);
  return a1;
}

{
  WTF::Function<void ()(BOOL)>::Function<WebKit::CtapAuthenticator::getAssertion(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void>(a1, a2);
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(a1);
  return a1;
}

uint64_t *WTF::Function<void ()(BOOL)>::Function<WebKit::CtapAuthenticator::getAssertion(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(BOOL)>::Function<WebKit::CtapAuthenticator::getAssertion(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getAssertion(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>,std::default_delete<WebKit::CtapAuthenticator::makeCredential(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1}>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getAssertion(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x10);
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getAssertion(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getAssertion(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getAssertion(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,BOOL>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7738;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getAssertion(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getAssertion(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1},void,BOOL>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7738;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t WebKit::CtapAuthenticator::getAssertion(void)::$_0::operator() const(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::{lambda(BOOL)#1}::operator()(uint64_t *a1)
{
  result = WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator!(a1);
  if ((result & 1) == 0)
  {
    v3 = WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(a1);
    return WebKit::CtapAuthenticator::continueGetAssertionAfterCheckAllowCredentials(v3);
  }

  return result;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetAssertionAfterCheckAllowCredentials(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,WebKit::CtapAuthenticator::continueGetAssertionAfterCheckAllowCredentials(void)::$_0,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x10);
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetAssertionAfterCheckAllowCredentials(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetAssertionAfterCheckAllowCredentials(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetAssertionAfterCheckAllowCredentials(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7760;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetAssertionAfterCheckAllowCredentials(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetAssertionAfterCheckAllowCredentials(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7760;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t WebKit::CtapAuthenticator::continueGetAssertionAfterCheckAllowCredentials(void)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  result = WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator!(a1);
  if ((result & 1) == 0)
  {
    v4 = WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(a1);
    return WebKit::CtapAuthenticator::continueGetAssertionAfterResponseReceived(v4, a2);
  }

  return result;
}

uint64_t *WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
  v8 = WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, v3 + 1, a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  v4 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
  v5 = operator new(8, 0, v4);
  result = WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(v5, v8);
  ++*(a1 + 12);
  return result;
}

uint64_t WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1) && a3 < WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1))
  {
    v5 = (a3 - WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1)) >> 3;
    WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1) + 8 * v5;
  }

  else
  {
    WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return a3;
  }
}

uint64_t WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, uint64_t a2)
{
  v8[1] = a1;
  v8[0] = a2;
  v7 = 16;
  v11 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(a1);
  v10 = v11 + (v11 >> 1);
  v9 = v11 + 1;
  v6 = *std::max[abi:sn200100]<unsigned long>(&v10, &v9);
  v3 = std::max[abi:sn200100]<unsigned long>(&v7, &v6);
  v4 = std::max[abi:sn200100]<unsigned long>(v8, v3);
  return WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, *v4) & 1;
}

uint64_t WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (a2 > WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(a1))
  {
    v6 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    v5 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a1);
    WTF::VectorBufferBase<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(a1, a2);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
    v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    WTF::VectorTypeOperations<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>>::move(v6, v5, v3);
    WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::deallocateBuffer(a1, v6);
  }

  return 1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x10);
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7788;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7788;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t WebKit::CtapAuthenticator::continueGetAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  result = WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator!(a1);
  if ((result & 1) == 0)
  {
    v4 = WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(a1);
    return WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(v4, a2);
  }

  return result;
}

uint64_t WTF::VectorBuffer<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::FastMalloc>::VectorBuffer(uint64_t a1, unint64_t a2, int a3)
{
  WTF::VectorBufferBase<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,WTF::FastMalloc>::VectorBufferBase(a1);
  *(a1 + 12) = a3;
  if (a2)
  {
    WTF::VectorBufferBase<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(a1, a2);
  }

  return a1;
}

uint64_t *WTF::VectorCopier<false,WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>::uninitializedCopy<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>(uint64_t *result, uint64_t a2, uint64_t a3)
{
  for (i = result; i != a2; i += 8)
  {
    v3 = operator new(8, 0, a3);
    result = WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>::Ref(v3, i);
    a3 += 8;
  }

  return result;
}

uint64_t *WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>::Ref(uint64_t *a1, uint64_t a2)
{
  WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>::Ref(a1, a2);
  return a1;
}

{
  v4 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(a2);
  WTF::RefCountedBase::ref((v4 + 8));
  *a1 = v4;
  return a1;
}

uint64_t *WTF::Function<void ()(WebCore::AuthenticatorAssertionResponse *)>::Function<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WebCore::AuthenticatorAssertionResponse *)>::Function<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WebCore::AuthenticatorAssertionResponse *>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WebCore::AuthenticatorAssertionResponse *>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WebCore::AuthenticatorAssertionResponse *>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WebCore::AuthenticatorAssertionResponse *>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WebCore::AuthenticatorAssertionResponse *>>::reset[abi:sn200100](a1);
  return a1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WebCore::AuthenticatorAssertionResponse *>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::Detail::CallableWrapperBase<void,WebCore::AuthenticatorAssertionResponse *>::operator new();
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WebCore::AuthenticatorAssertionResponse *>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WebCore::AuthenticatorAssertionResponse *>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WebCore::AuthenticatorAssertionResponse *>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WebCore::AuthenticatorAssertionResponse *>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E77B0;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WebCore::AuthenticatorAssertionResponse *>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WebCore::AuthenticatorAssertionResponse *>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E77B0;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

void WTF::Detail::CallableWrapperBase<void,WebCore::AuthenticatorAssertionResponse *>::~CallableWrapperBase()
{
  __break(1u);
}

{
  __break(1u);
}

uint64_t WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0::operator()(WTF::RunLoop *a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  isMain = WTF::RunLoop::isMain(a1);
  if ((isMain ^ 1))
  {
    isIntegralOrPointerType = WTF::isIntegralOrPointerType(isMain);
    WTF::isIntegralOrPointerType(isIntegralOrPointerType);
    v24 = "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/WebAuthentication/fido/CtapAuthenticator.cpp";
    v23 = "auto WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(Vector<uint8_t> &&)::(anonymous class)::operator()(AuthenticatorAssertionResponse *) const";
    v22 = 172;
    v21 = "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/WebAuthentication/fido/CtapAuthenticator.cpp";
    v20 = "auto WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(Vector<uint8_t> &&)::(anonymous class)::operator()(AuthenticatorAssertionResponse *) const";
    v19 = 172;
    v18 = "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/WebAuthentication/fido/CtapAuthenticator.cpp";
    v17 = "auto WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(Vector<uint8_t> &&)::(anonymous class)::operator()(AuthenticatorAssertionResponse *) const";
    v16 = 172;
    __break(0xC471u);
    JUMPOUT(0x19D6AA6A0);
  }

  v26 = &v13;
  v25 = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(a1);
  v32 = &v13;
  v31 = v25;
  v33 = v25;
  if (v25)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::ref(v33 + 8);
  }

  v13 = v33;
  if (WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(&v13))
  {
    v12 = 1;
  }

  else
  {
    v29 = &v13;
    v34 = &v13;
    v10 = v14;
    NextAssertionAfterResponseReceivedEONS0_IhLm0ES9_Lm16ESA_EEENK3__0clEPS3_EUlRT_E_EEmRKSJ = _ZNK3WTF6VectorINS_3RefIN7WebCore30AuthenticatorAssertionResponseENS_12RawPtrTraitsIS3_EENS_21DefaultRefDerefTraitsIS3_EEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEE6findIfIZZN6WebKit17CtapAuthenticator45continueGetNextAssertionAfterResponseReceivedEONS0_IhLm0ES9_Lm16ESA_EEENK3__0clEPS3_EUlRT_E_EEmRKSJ_(v13 + 1056, &v10);
    if (NextAssertionAfterResponseReceivedEONS0_IhLm0ES9_Lm16ESA_EEENK3__0clEPS3_EUlRT_E_EEmRKSJ == -1)
    {
      v12 = 1;
    }

    else
    {
      v28 = &v13;
      v35 = &v13;
      v5 = v13;
      v27 = &v13;
      v36 = &v13;
      v6 = WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator[](v13 + 1056, NextAssertionAfterResponseReceivedEONS0_IhLm0ES9_Lm16ESA_EEENK3__0clEPS3_EUlRT_E_EEmRKSJ);
      WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>::copyRef(&v8, v6);
      mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::variant<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0,0,0,0ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,0>(v9);
      WebKit::Authenticator::receiveRespond(v5, v9);
      mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>::~variant(v9);
      WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>::~Ref(&v8);
      v12 = 0;
    }
  }

  v30 = &v13;
  v37[1] = &v13;
  v37[0] = 0;
  v40 = &v13;
  v39 = v37;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v13);
  v38 = result;
  if (result)
  {
    return WTF::RefCountedAndCanMakeWeakPtr<WebKit::Authenticator>::deref(v38 + 8);
  }

  return result;
}

uint64_t _ZNK3WTF6VectorINS_3RefIN7WebCore30AuthenticatorAssertionResponseENS_12RawPtrTraitsIS3_EENS_21DefaultRefDerefTraitsIS3_EEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEE6findIfIZZN6WebKit17CtapAuthenticator45continueGetNextAssertionAfterResponseReceivedEONS0_IhLm0ES9_Lm16ESA_EEENK3__0clEPS3_EUlRT_E_EEmRKSJ_(uint64_t a1, void *a2)
{
  for (i = 0; i < WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1); ++i)
  {
    v3 = WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::at(a1, i);
    if (_ZZZN6WebKit17CtapAuthenticator45continueGetNextAssertionAfterResponseReceivedEON3WTF6VectorIhLm0ENS1_15CrashOnOverflowELm16ENS1_10FastMallocEEEENK3__0clEPN7WebCore30AuthenticatorAssertionResponseEENKUlRT_E_clIKNS1_3RefIS9_NS1_12RawPtrTraitsIS9_EENS1_21DefaultRefDerefTraitsIS9_EEEEEEDaSC_(a2, v3))
    {
      return i;
    }
  }

  return -1;
}

uint64_t WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::at(uint64_t a1, unint64_t a2)
{
  v4 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
  if (a2 >= v4)
  {
    WTF::CrashOnOverflow::overflowed(v4);
  }

  return std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1) + 8 * a2;
}

void *WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>::Ref(void *a1, uint64_t a2)
{
  WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>::Ref(a1, a2);
  return a1;
}

{
  WTF::RefCountedBase::ref((a2 + 8));
  *a1 = a2;
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WebCore::AuthenticatorAssertionResponse *>>::reset[abi:sn200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::default_delete<WTF::Detail::CallableWrapperBase<void,WebCore::AuthenticatorAssertionResponse *>>::operator()[abi:sn200100](result, v1);
  }

  return result;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_1,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x10);
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_1,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_1,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_1,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7800;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_1,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetNextAssertionAfterResponseReceived(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_1,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7800;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getRetries(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,WebKit::CtapAuthenticator::getRetries(void)::$_0,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x10);
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getRetries(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getRetries(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getRetries(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7828;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getRetries(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::getRetries(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7828;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t WebKit::CtapAuthenticator::getRetries(void)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v22 = a1;
  v21 = a2;
  v45 = &v20;
  v44 = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(a1);
  v51 = &v20;
  v50 = v44;
  v52 = v44;
  if (v44)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::ref(v52 + 8);
  }

  v20 = v52;
  if (WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(&v20))
  {
    v19 = 1;
  }

  else
  {
    oslog = qword_1ED641530;
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog;
      v3 = v17;
      v4 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v20);
      v48 = &v20;
      v53 = &v20;
      WebKit::CtapAuthenticator::aaguidForDebugging(&v15, v20);
      WTF::String::utf8();
      v5 = WTF::CString::data(&v16);
      v47 = &v20;
      v54 = &v20;
      WebKit::FidoAuthenticator::transportForDebugging(&v13, v20);
      WTF::String::utf8();
      v6 = WTF::CString::data(&v14);
      std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(v10, v21);
      v9 = 0;
      WTF::OptionSet<WTF::Base64EncodeOption>::OptionSet(&v9);
      WTF::base64EncodeToString(&v11, v10[0], v10[1]);
      WTF::String::utf8();
      v7 = WTF::CString::data(&v12);
      __os_log_helper_16_2_4_8_0_8_32_8_32_8_32(buf, v4, v5, v6, v7);
      _os_log_impl(&dword_19D52D000, v2, v3, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::getRetries: Response %s", buf, 0x2Au);
      WTF::CString::~CString(&v12);
      v25 = &v11;
      v26 = &v11;
      v31 = &v11;
      v32[1] = &v11;
      v32[0] = 0;
      v43 = &v11;
      v42 = v32;
      v37 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v11);
      if (v37)
      {
        WTF::StringImpl::deref(v37);
      }

      WTF::CString::~CString(&v14);
      v24 = &v13;
      v27 = &v13;
      v30 = &v13;
      v33[1] = &v13;
      v33[0] = 0;
      v41 = &v13;
      v40 = v33;
      v36 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v13);
      if (v36)
      {
        WTF::StringImpl::deref(v36);
      }

      WTF::CString::~CString(&v16);
      v23 = &v15;
      v28 = &v15;
      v29 = &v15;
      v34[1] = &v15;
      v34[0] = 0;
      v39 = &v15;
      v38 = v34;
      v35 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v15);
      if (v35)
      {
        WTF::StringImpl::deref(v35);
      }
    }

    v46 = &v20;
    v55 = &v20;
    WebKit::CtapAuthenticator::continueGetKeyAgreementAfterGetRetries(v20, v21);
    v19 = 0;
  }

  v49 = &v20;
  v56[1] = &v20;
  v56[0] = 0;
  v59 = &v20;
  v58 = v56;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v20);
  v57 = result;
  if (result)
  {
    return WTF::RefCountedAndCanMakeWeakPtr<WebKit::Authenticator>::deref(v57 + 8);
  }

  return result;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetKeyAgreementAfterGetRetries(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x18);
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetKeyAgreementAfterGetRetries(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetKeyAgreementAfterGetRetries(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetKeyAgreementAfterGetRetries(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7850;
  WebKit::CtapAuthenticator::continueGetKeyAgreementAfterGetRetries(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0::$_0(a1 + 1, a2);
  return a1;
}

uint64_t *WebKit::CtapAuthenticator::continueGetKeyAgreementAfterGetRetries(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0::$_0(uint64_t *a1, uint64_t *a2)
{
  WebKit::CtapAuthenticator::continueGetKeyAgreementAfterGetRetries(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0::$_0(a1, a2);
  return a1;
}

{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1, a2);
  a1[1] = a2[1];
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetKeyAgreementAfterGetRetries(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetKeyAgreementAfterGetRetries(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7850;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t WebKit::CtapAuthenticator::continueGetKeyAgreementAfterGetRetries(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v23 = a1;
  v22 = a2;
  v46 = &v21;
  v45 = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(a1);
  v52 = &v21;
  v51 = v45;
  v53 = v45;
  if (v45)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::ref(v53 + 8);
  }

  v21 = v53;
  if (WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(&v21))
  {
    v20 = 1;
  }

  else
  {
    oslog = qword_1ED641530;
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v18;
      v5 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v21);
      v49 = &v21;
      v54 = &v21;
      WebKit::CtapAuthenticator::aaguidForDebugging(&v16, v21);
      WTF::String::utf8();
      v6 = WTF::CString::data(&v17);
      v48 = &v21;
      v55 = &v21;
      WebKit::FidoAuthenticator::transportForDebugging(&v14, v21);
      WTF::String::utf8();
      v7 = WTF::CString::data(&v15);
      std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(v11, v22);
      v10 = 0;
      WTF::OptionSet<WTF::Base64EncodeOption>::OptionSet(&v10);
      WTF::base64EncodeToString(&v12, v11[0], v11[1]);
      WTF::String::utf8();
      v8 = WTF::CString::data(&v13);
      __os_log_helper_16_2_4_8_0_8_32_8_32_8_32(buf, v5, v6, v7, v8);
      _os_log_impl(&dword_19D52D000, v3, v4, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueGetKeyAgreementAfterGetRetries: Response %s", buf, 0x2Au);
      WTF::CString::~CString(&v13);
      v26 = &v12;
      v27 = &v12;
      v32 = &v12;
      v33[1] = &v12;
      v33[0] = 0;
      v44 = &v12;
      v43 = v33;
      v38 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v12);
      if (v38)
      {
        WTF::StringImpl::deref(v38);
      }

      WTF::CString::~CString(&v15);
      v25 = &v14;
      v28 = &v14;
      v31 = &v14;
      v34[1] = &v14;
      v34[0] = 0;
      v42 = &v14;
      v41 = v34;
      v37 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v14);
      if (v37)
      {
        WTF::StringImpl::deref(v37);
      }

      WTF::CString::~CString(&v17);
      v24 = &v16;
      v29 = &v16;
      v30 = &v16;
      v35[1] = &v16;
      v35[0] = 0;
      v40 = &v16;
      v39 = v35;
      v36 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v16);
      if (v36)
      {
        WTF::StringImpl::deref(v36);
      }
    }

    v47 = &v21;
    v56 = &v21;
    WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(v21, v22, a1[1]);
    v20 = 0;
  }

  v50 = &v21;
  v57[1] = &v21;
  v57[0] = 0;
  v60 = &v21;
  v59 = v57;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v21);
  v58 = result;
  if (result)
  {
    return WTF::RefCountedAndCanMakeWeakPtr<WebKit::Authenticator>::deref(v58 + 8);
  }

  return result;
}

uint64_t *WTF::Function<void ()(WTF::String const&)>::Function<WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::String const&)>::Function<WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0,void,WTF::String const&>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>,std::default_delete<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0,void,WTF::String const&>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x18);
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0,void,WTF::String const&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0,void,WTF::String const&>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0,void,WTF::String const&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::String const&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7878;
  WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0::$_0(a1 + 1, a2);
  return a1;
}

uint64_t *WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0::$_0(uint64_t *a1, uint64_t *a2)
{
  WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0::$_0(a1, a2);
  return a1;
}

{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1, a2);
  fido::pin::KeyAgreementResponse::KeyAgreementResponse();
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0,void,WTF::String const&>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0,void,WTF::String const&>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7878;
  WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned long long)::$_0::operator()(WTF::RunLoop *a1, fido::pin *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v23 = a1;
  v22 = a2;
  isMain = WTF::RunLoop::isMain(a1);
  if ((isMain ^ 1))
  {
    isIntegralOrPointerType = WTF::isIntegralOrPointerType(isMain);
    WTF::isIntegralOrPointerType(isIntegralOrPointerType);
    v37 = 492;
    v36 = "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/WebAuthentication/fido/CtapAuthenticator.cpp";
    v35 = "auto WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(Vector<uint8_t> &&, uint64_t)::(anonymous class)::operator()(const String &) const";
    v34 = 182;
    v33 = 492;
    v32 = "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/WebAuthentication/fido/CtapAuthenticator.cpp";
    v31 = "auto WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(Vector<uint8_t> &&, uint64_t)::(anonymous class)::operator()(const String &) const";
    v30 = 182;
    v29 = 492;
    v28 = "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/WebAuthentication/fido/CtapAuthenticator.cpp";
    v27 = "auto WebKit::CtapAuthenticator::continueRequestPinAfterGetKeyAgreement(Vector<uint8_t> &&, uint64_t)::(anonymous class)::operator()(const String &) const";
    v26 = 182;
    __break(0xC471u);
    JUMPOUT(0x19D6ABE00);
  }

  v51 = &v21;
  v50 = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(a1);
  v57 = &v21;
  v56 = v50;
  v58 = v50;
  if (v50)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::ref(v58 + 8);
  }

  v21 = v58;
  if (WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(&v21))
  {
    v20 = 1;
  }

  else
  {
    oslog = qword_1ED641530;
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v18;
      v7 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v21);
      v54 = &v21;
      v59 = &v21;
      WebKit::CtapAuthenticator::aaguidForDebugging(&v16, v21);
      WTF::String::utf8();
      v8 = WTF::CString::data(&v17);
      v53 = &v21;
      v60 = &v21;
      WebKit::FidoAuthenticator::transportForDebugging(&v14, v21);
      WTF::String::utf8();
      v9 = WTF::CString::data(&v15);
      __os_log_helper_16_2_3_8_0_8_32_8_32(buf, v7, v8, v9);
      _os_log_impl(&dword_19D52D000, v5, v6, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueRequestPinAfterGetKeyAgreement: Got pin from observer.", buf, 0x20u);
      WTF::CString::~CString(&v15);
      v25 = &v14;
      v38 = &v14;
      v41 = &v14;
      v42[1] = &v14;
      v42[0] = 0;
      v49 = &v14;
      v48 = v42;
      v45 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v14);
      if (v45)
      {
        WTF::StringImpl::deref(v45);
      }

      WTF::CString::~CString(&v17);
      v24 = &v16;
      v39 = &v16;
      v40 = &v16;
      v43[1] = &v16;
      v43[0] = 0;
      v47 = &v16;
      v46 = v43;
      v44 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v16);
      if (v44)
      {
        WTF::StringImpl::deref(v44);
      }
    }

    v52 = &v21;
    v61 = &v21;
    v10 = v21;
    v11 = v22;
    v12 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(a1 + 8);
    WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(v10, v11, v12);
    v20 = 0;
  }

  v55 = &v21;
  v62[1] = &v21;
  v62[0] = 0;
  v65 = &v21;
  v64 = v62;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v21);
  v63 = result;
  if (result)
  {
    return WTF::RefCountedAndCanMakeWeakPtr<WebKit::Authenticator>::deref(v63 + 8);
  }

  return result;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x40);
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E78A0;
  WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0::$_0(a1 + 1, a2);
  return a1;
}

uint64_t *WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0::$_0(uint64_t *a1, uint64_t *a2)
{
  WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0::$_0(a1, a2);
  return a1;
}

{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1, a2);
  fido::pin::TokenRequest::TokenRequest(a1 + 1, (a2 + 1));
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E78A0;
  WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v23 = a1;
  v22 = a2;
  v46 = &v21;
  v45 = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(a1);
  v52 = &v21;
  v51 = v45;
  v53 = v45;
  if (v45)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::ref(v53 + 8);
  }

  v21 = v53;
  if (WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(&v21))
  {
    v20 = 1;
  }

  else
  {
    oslog = qword_1ED641530;
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v18;
      v5 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v21);
      v49 = &v21;
      v54 = &v21;
      WebKit::CtapAuthenticator::aaguidForDebugging(&v16, v21);
      WTF::String::utf8();
      v6 = WTF::CString::data(&v17);
      v48 = &v21;
      v55 = &v21;
      WebKit::FidoAuthenticator::transportForDebugging(&v14, v21);
      WTF::String::utf8();
      v7 = WTF::CString::data(&v15);
      std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(v11, v22);
      v10 = 0;
      WTF::OptionSet<WTF::Base64EncodeOption>::OptionSet(&v10);
      WTF::base64EncodeToString(&v12, v11[0], v11[1]);
      WTF::String::utf8();
      v8 = WTF::CString::data(&v13);
      __os_log_helper_16_2_4_8_0_8_32_8_32_8_32(buf, v5, v6, v7, v8);
      _os_log_impl(&dword_19D52D000, v3, v4, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::continueGetPinTokenAfterRequestPin: Response %s", buf, 0x2Au);
      WTF::CString::~CString(&v13);
      v26 = &v12;
      v27 = &v12;
      v32 = &v12;
      v33[1] = &v12;
      v33[0] = 0;
      v44 = &v12;
      v43 = v33;
      v38 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v12);
      if (v38)
      {
        WTF::StringImpl::deref(v38);
      }

      WTF::CString::~CString(&v15);
      v25 = &v14;
      v28 = &v14;
      v31 = &v14;
      v34[1] = &v14;
      v34[0] = 0;
      v42 = &v14;
      v41 = v34;
      v37 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v14);
      if (v37)
      {
        WTF::StringImpl::deref(v37);
      }

      WTF::CString::~CString(&v17);
      v24 = &v16;
      v29 = &v16;
      v30 = &v16;
      v35[1] = &v16;
      v35[0] = 0;
      v40 = &v16;
      v39 = v35;
      v36 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v16);
      if (v36)
      {
        WTF::StringImpl::deref(v36);
      }
    }

    v47 = &v21;
    v56 = &v21;
    WebKit::CtapAuthenticator::continueRequestAfterGetPinToken(v21, v22, (a1 + 1));
    v20 = 0;
  }

  v50 = &v21;
  v57[1] = &v21;
  v57[0] = 0;
  v60 = &v21;
  v59 = v57;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v21);
  v58 = result;
  if (result)
  {
    return WTF::RefCountedAndCanMakeWeakPtr<WebKit::Authenticator>::deref(v58 + 8);
  }

  return result;
}

uint64_t std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::find<fido::ProtocolVersion>(uint64_t a1, _DWORD *a2)
{
  v16 = a1;
  v15 = a2;
  v4 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__root[abi:sn200100]();
  std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::__end_node[abi:sn200100]();
  v14 = std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::__lower_bound<fido::ProtocolVersion>(a1, a2, v4, v5);
  v13 = std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::end[abi:sn200100]();
  v6 = std::operator!=[abi:sn200100](&v14, &v13);
  v7 = 0;
  if (v6)
  {
    std::__to_address[abi:sn200100]<char const>();
    v9 = v8;
    v10 = v15;
    v11 = std::__tree_const_iterator<fido::ProtocolVersion,std::__tree_node<fido::ProtocolVersion,void *> *,long>::operator*[abi:sn200100](&v14);
    v7 = !std::less<fido::ProtocolVersion>::operator()[abi:sn200100](v9, v10, v11);
  }

  if (v7)
  {
    return v14;
  }

  else
  {
    return std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::end[abi:sn200100]();
  }
}

uint64_t std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::__lower_bound<fido::ProtocolVersion>(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  while (a3)
  {
    std::__to_address[abi:sn200100]<char const>();
    if (std::less<fido::ProtocolVersion>::operator()[abi:sn200100](v4, (a3 + 28), a2))
    {
      a3 = *(a3 + 8);
    }

    else
    {
      a4 = a3;
      a3 = *a3;
    }
  }

  std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(&v9, a4);
  return v9;
}

uint64_t std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::end[abi:sn200100]()
{
  std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::__end_node[abi:sn200100]();
  std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(&v2, v0);
  return v2;
}

uint64_t WebKit::CtapAuthenticator::tryDowngrade(void)::$_0::operator()(_BYTE **a1, fido *a2)
{
  result = fido::isConvertibleToU2fRegisterCommand(a2, a2);
  **a1 = result & 1;
  return result;
}

uint64_t WebKit::CtapAuthenticator::tryDowngrade(void)::$_1::operator()(_BYTE **a1, fido *a2)
{
  result = fido::isConvertibleToU2fSignCommand(a2, a2);
  **a1 = result & 1;
  return result;
}

uint64_t WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveInitialCapacity<(WTF::FailureAction)0>(uint64_t a1, WTF::FastMalloc *a2)
{
  if (a2)
  {
    v3 = WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(a1, a2) & 1;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSetupPinAfterCommand(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&,WTF::Ref<WebCore::CryptoKeyEC,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>>)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>,WTF::Ref<WebCore::CryptoKeyEC,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>>,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x40);
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSetupPinAfterCommand(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&,WTF::Ref<WebCore::CryptoKeyEC,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>>)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSetupPinAfterCommand(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&,WTF::Ref<WebCore::CryptoKeyEC,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>>)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSetupPinAfterCommand(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&,WTF::Ref<WebCore::CryptoKeyEC,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>>)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E78C8;
  WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSetupPinAfterCommand(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&,WTF::Ref<WebCore::CryptoKeyEC,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>>)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSetupPinAfterCommand(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&,WTF::Ref<WebCore::CryptoKeyEC,WTF::RawPtrTraits<WebCore>,WTF::DefaultRefDerefTraits<WebCore>>)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E78C8;
  WebKit::CtapAuthenticator::continueGetPinTokenAfterRequestPin(WTF::String const&,WebCore::CryptoKeyEC const&)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

void WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(uint64_t a1, unint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::mutableSpan(a1);
  v7[1] = v4;
  v7[0] = v3;
  v5 = std::span<unsigned char,18446744073709551615ul>::subspan[abi:sn200100](v7, v9, 0xFFFFFFFFFFFFFFFFLL);
  v8[1] = v6;
  v8[0] = v5;
  std::span<char const,18446744073709551615ul>::data[abi:sn200100](v8);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
  WTF::VectorTypeOperations<unsigned char>::destruct();
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  *(a1 + 12) = v9;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>,WTF::String const&,0>(void *a1, uint64_t a2)
{
  v3 = WTF::FastMalloc::malloc(0x20);
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(void *a1, uint64_t a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E78F0;
  WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&)::$_0::$_0(a1 + 1, a2);
  return a1;
}

uint64_t *WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&)::$_0::$_0(uint64_t *a1, uint64_t a2)
{
  WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&)::$_0::$_0(a1, a2);
  return a1;
}

{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1, a2);
  WTF::String::String((a1 + 1), (a2 + 8));
  WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(a1 + 2, (a2 + 16));
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E78F0;
  WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::String const&)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v12 = &v8;
  v11 = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(a1);
  v16 = &v8;
  v15 = v11;
  v17 = v11;
  if (v11)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::ref(v17 + 8);
  }

  v8 = v17;
  if (WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(&v8))
  {
    v7 = 1;
  }

  else
  {
    v13 = &v8;
    v18 = &v8;
    v3 = v8;
    v4 = v9;
    WTF::Ref<WebCore::CryptoKeyAES,WTF::RawPtrTraits<WebCore::CryptoKeyAES>,WTF::DefaultRefDerefTraits<WebCore::CryptoKeyAES>>::Ref(&v6, (a1 + 2));
    WebKit::CtapAuthenticator::continueSetupPinAfterCommand(v3, v4, (a1 + 1), &v6);
    WTF::Ref<WebCore::CryptoKeyAES,WTF::RawPtrTraits<WebCore::CryptoKeyAES>,WTF::DefaultRefDerefTraits<WebCore::CryptoKeyAES>>::~Ref(&v6);
    v7 = 0;
  }

  v14 = &v8;
  v19[1] = &v8;
  v19[0] = 0;
  v22 = &v8;
  v21 = v19;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v8);
  v20 = result;
  if (result)
  {
    return WTF::RefCountedAndCanMakeWeakPtr<WebKit::Authenticator>::deref(v20 + 8);
  }

  return result;
}

uint64_t *WTF::Function<void ()(WTF::String const&)>::Function<WebKit::CtapAuthenticator::setupPin(void)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::String const&)>::Function<WebKit::CtapAuthenticator::setupPin(void)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::setupPin(void)::$_0,void,WTF::String const&>,WebKit::CtapAuthenticator::setupPin(void)::$_0,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>,std::default_delete<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::setupPin(void)::$_0,void,WTF::String const&>,WebKit::CtapAuthenticator::setupPin(void)::$_0,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x10);
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::setupPin(void)::$_0,void,WTF::String const&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::setupPin(void)::$_0,void,WTF::String const&>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::setupPin(void)::$_0,void,WTF::String const&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::String const&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7918;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::setupPin(void)::$_0,void,WTF::String const&>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::setupPin(void)::$_0,void,WTF::String const&>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7918;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t WebKit::CtapAuthenticator::setupPin(void)::$_0::operator()(uint64_t *a1, WTF::String *a2)
{
  v99 = *MEMORY[0x1E69E9840];
  v36 = a1;
  v35 = a2;
  v73 = &v34;
  v72 = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(a1);
  v84 = &v34;
  v83 = v72;
  v85 = v72;
  if (v72)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::ref(v85 + 8);
  }

  v34 = v85;
  if (WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(&v34))
  {
    v33 = 1;
  }

  else
  {
    v81 = &v34;
    v86 = &v34;
    v3 = fido::AuthenticatorGetInfoResponse::minPINLength((v34 + 840));
    v32[0] = *v3;
    v32[1] = v3[1];
    v4 = WTF::String::length(v35);
    if (std::optional<unsigned int>::operator BOOL[abi:sn200100](v32))
    {
      std::optional<unsigned int>::operator*[abi:sn200100](v32);
      v6 = *v5;
    }

    else
    {
      v6 = 4;
    }

    if (v4 >= v6)
    {
      if (WTF::String::sizeInBytes(v35) <= 0x3FuLL)
      {
        fido::pin::encodeAsCBOR();
        oslog = qword_1ED641530;
        v27 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
        {
          v7 = oslog;
          v8 = v27;
          v9 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v34);
          v76 = &v34;
          v91 = &v34;
          WebKit::CtapAuthenticator::aaguidForDebugging(&v25, v34);
          WTF::String::utf8();
          v10 = WTF::CString::data(&v26);
          v75 = &v34;
          v92 = &v34;
          WebKit::FidoAuthenticator::transportForDebugging(&v23, v34);
          WTF::String::utf8();
          v11 = WTF::CString::data(&v24);
          std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(v20, v29);
          v19 = 0;
          WTF::OptionSet<WTF::Base64EncodeOption>::OptionSet(&v19);
          WTF::base64EncodeToString(&v21, v20[0], v20[1]);
          WTF::String::utf8();
          v12 = WTF::CString::data(&v22);
          __os_log_helper_16_2_4_8_0_8_32_8_32_8_32(buf, v9, v10, v11, v12);
          _os_log_impl(&dword_19D52D000, v7, v8, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::setupPin: Sending %s", buf, 0x2Au);
          WTF::CString::~CString(&v22);
          v39 = &v21;
          v44 = &v21;
          v49 = &v21;
          v50[1] = &v21;
          v50[0] = 0;
          v61 = &v21;
          v60 = v50;
          v55 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v21);
          if (v55)
          {
            WTF::StringImpl::deref(v55);
          }

          WTF::CString::~CString(&v24);
          v38 = &v23;
          v45 = &v23;
          v48 = &v23;
          v51[1] = &v23;
          v51[0] = 0;
          v59 = &v23;
          v58 = v51;
          v54 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v23);
          if (v54)
          {
            WTF::StringImpl::deref(v54);
          }

          WTF::CString::~CString(&v26);
          v37 = &v25;
          v46 = &v25;
          v47 = &v25;
          v52[1] = &v25;
          v52[0] = 0;
          v57 = &v25;
          v56 = v52;
          v53 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v25);
          if (v53)
          {
            WTF::StringImpl::deref(v53);
          }
        }

        v74 = &v34;
        v93 = &v34;
        WebKit::FidoAuthenticator::protectedDriver(v34, &v18);
        v13 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v18);
        WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(&v15, a1);
        WTF::String::String(&v16, v35);
        WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::setupPin(void)::$_0::operator() const(WTF::String const&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)#1},void>(&v17, &v15);
        (*(*v13 + 16))(v13, v29, &v17);
        WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(&v17);
        WebKit::CtapAuthenticator::setupPin(void)::$_0::operator() const(WTF::String const&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)#1}::~Vector(&v15);
        WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>::~Ref(&v18);
        WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29);
        v33 = 0;
      }

      else
      {
        v78 = &v34;
        v89 = &v34;
        WebKit::Authenticator::protectedObserver(&v30, v34);
        v40 = &v30;
        v71 = &v30;
        (*(*v30 + 48))();
        v42 = &v30;
        v63[1] = &v30;
        v63[0] = 0;
        v67 = &v30;
        v66 = v63;
        v64 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v30);
        if (v64)
        {
          (*(*v64 + 8))();
        }

        v77 = &v34;
        v90 = &v34;
        WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(v34);
        v33 = 1;
      }
    }

    else
    {
      v80 = &v34;
      v87 = &v34;
      WebKit::Authenticator::protectedObserver(&v31, v34);
      v41 = &v31;
      v70 = &v31;
      (*(*v31 + 48))();
      v43 = &v31;
      v62[1] = &v31;
      v62[0] = 0;
      v69 = &v31;
      v68 = v62;
      v65 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v31);
      if (v65)
      {
        (*(*v65 + 8))();
      }

      v79 = &v34;
      v88 = &v34;
      WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(v34);
      v33 = 1;
    }
  }

  v82 = &v34;
  v94[1] = &v34;
  v94[0] = 0;
  v97 = &v34;
  v96 = v94;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v34);
  v95 = result;
  if (result)
  {
    return WTF::RefCountedAndCanMakeWeakPtr<WebKit::Authenticator>::deref(v95 + 8);
  }

  return result;
}

uint64_t WTF::String::length(fido::AuthenticatorSupportedOptions **this)
{
  if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(this))
  {
    return fido::AuthenticatorSupportedOptions::userVerificationAvailability(*this);
  }

  else
  {
    return 0;
  }
}

uint64_t WTF::String::sizeInBytes(fido::AuthenticatorSupportedOptions **this)
{
  if (!WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(this))
  {
    return 0;
  }

  v2 = fido::AuthenticatorSupportedOptions::userVerificationAvailability(*this);
  v3 = WTF::String::is8Bit(this);
  v4 = 1;
  if (!v3)
  {
    v4 = 2;
  }

  return v2 * v4;
}

uint64_t *WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::setupPin(void)::$_0::operator() const(WTF::String const&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)#1},void>(uint64_t *a1, uint64_t a2)
{
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapAuthenticator::setupPin(void)::$_0::operator() const(WTF::String const&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)#1},void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::setupPin(void)::$_0::operator() const(WTF::String const&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)#1},void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t *WebKit::CtapAuthenticator::setupPin(void)::$_0::operator() const(WTF::String const&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)#1}::~Vector(uint64_t *a1)
{
  WebKit::CtapAuthenticator::setupPin(void)::$_0::operator() const(WTF::String const&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)#1}::~Vector(a1);
  return a1;
}

{
  v3[1] = a1 + 1;
  v3[0] = 0;
  v6 = a1 + 1;
  v5 = v3;
  v4 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1 + 1);
  if (v4)
  {
    WTF::StringImpl::deref(v4);
  }

  WTF::WeakPtr<WebKit::CtapAuthenticator,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(a1);
  return a1;
}

BOOL WTF::String::is8Bit(WTF::StringImpl **this)
{
  v2 = WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(this);
  v3 = 1;
  if (!v2)
  {
    return WTF::StringImpl::is8Bit(*this);
  }

  return v3;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::setupPin(void)::$_0::operator() const(WTF::String const&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)#1},void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,0>(void *a1, uint64_t a2)
{
  v3 = WTF::FastMalloc::malloc(0x18);
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::setupPin(void)::$_0::operator() const(WTF::String const&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)#1},void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::setupPin(void)::$_0::operator() const(WTF::String const&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)#1},void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(void *a1, uint64_t a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::setupPin(void)::$_0::operator() const(WTF::String const&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)#1},void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7940;
  WebKit::CtapAuthenticator::setupPin(void)::$_0::operator() const(WTF::String const&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)#1}::Vector(a1 + 1, a2);
  return a1;
}

uint64_t *WebKit::CtapAuthenticator::setupPin(void)::$_0::operator() const(WTF::String const&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)#1}::Vector(uint64_t *a1, uint64_t a2)
{
  WebKit::CtapAuthenticator::setupPin(void)::$_0::operator() const(WTF::String const&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)#1}::Vector(a1, a2);
  return a1;
}

{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1, a2);
  WTF::String::String((a1 + 1), (a2 + 8));
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::setupPin(void)::$_0::operator() const(WTF::String const&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)#1},void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::setupPin(void)::$_0::operator() const(WTF::String const&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)#1},void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7940;
  WebKit::CtapAuthenticator::setupPin(void)::$_0::operator() const(WTF::String const&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)#1}::~Vector(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t WebKit::CtapAuthenticator::setupPin(void)::$_0::operator() const(WTF::String const&)::{lambda(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)#1}::operator()(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v23 = a1;
  v22 = a2;
  v46 = &v21;
  v45 = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(a1);
  v52 = &v21;
  v51 = v45;
  v53 = v45;
  if (v45)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::ref(v53 + 8);
  }

  v21 = v53;
  if (WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(&v21))
  {
    v20 = 1;
  }

  else
  {
    oslog = qword_1ED641530;
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v18;
      v5 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(&v21);
      v49 = &v21;
      v54 = &v21;
      WebKit::CtapAuthenticator::aaguidForDebugging(&v16, v21);
      WTF::String::utf8();
      v6 = WTF::CString::data(&v17);
      v48 = &v21;
      v55 = &v21;
      WebKit::FidoAuthenticator::transportForDebugging(&v14, v21);
      WTF::String::utf8();
      v7 = WTF::CString::data(&v15);
      std::span<unsigned char const,18446744073709551615ul>::span[abi:sn200100]<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(v11, v22);
      v10 = 0;
      WTF::OptionSet<WTF::Base64EncodeOption>::OptionSet(&v10);
      WTF::base64EncodeToString(&v12, v11[0], v11[1]);
      WTF::String::utf8();
      v8 = WTF::CString::data(&v13);
      __os_log_helper_16_2_4_8_0_8_32_8_32_8_32(buf, v5, v6, v7, v8);
      _os_log_impl(&dword_19D52D000, v3, v4, "%p [aaguid=%s, transport=%s] - CtapAuthenticator::setupPin: Response %s", buf, 0x2Au);
      WTF::CString::~CString(&v13);
      v26 = &v12;
      v27 = &v12;
      v32 = &v12;
      v33[1] = &v12;
      v33[0] = 0;
      v44 = &v12;
      v43 = v33;
      v38 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v12);
      if (v38)
      {
        WTF::StringImpl::deref(v38);
      }

      WTF::CString::~CString(&v15);
      v25 = &v14;
      v28 = &v14;
      v31 = &v14;
      v34[1] = &v14;
      v34[0] = 0;
      v42 = &v14;
      v41 = v34;
      v37 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v14);
      if (v37)
      {
        WTF::StringImpl::deref(v37);
      }

      WTF::CString::~CString(&v17);
      v24 = &v16;
      v29 = &v16;
      v30 = &v16;
      v35[1] = &v16;
      v35[0] = 0;
      v40 = &v16;
      v39 = v35;
      v36 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v16);
      if (v36)
      {
        WTF::StringImpl::deref(v36);
      }
    }

    v47 = &v21;
    v56 = &v21;
    WebKit::CtapAuthenticator::continueSetupPinAfterGetKeyAgreement(v21, v22, (a1 + 8));
    v20 = 0;
  }

  v50 = &v21;
  v57[1] = &v21;
  v57[0] = 0;
  v60 = &v21;
  v59 = v57;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v21);
  v58 = result;
  if (result)
  {
    return WTF::RefCountedAndCanMakeWeakPtr<WebKit::Authenticator>::deref(v58 + 8);
  }

  return result;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x18);
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7968;
  WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7968;
  WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0::operator()(WebKit::CtapAuthenticator *a1, WebKit::CtapAuthenticator *a2)
{
  v3[2] = a1;
  v3[1] = a2;
  v5 = v3;
  v4 = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(a1);
  v9 = v3;
  v8 = v4;
  v10 = v4;
  if (v4)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorPresenterCoordinator>::ref(v10 + 8);
  }

  v3[0] = v10;
  if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(v3))
  {
    v6 = v3;
    v11 = v3;
    WebKit::CtapAuthenticator::setupPin(v3[0]);
  }

  v7 = v3;
  v12[1] = v3;
  v12[0] = 0;
  v15 = v3;
  v14 = v12;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(v3);
  v13 = result;
  if (result)
  {
    return WTF::RefCountedAndCanMakeWeakPtr<WebKit::Authenticator>::deref(v13 + 8);
  }

  return result;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_1,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_1,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x18);
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_1,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_1,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_1,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7990;
  WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_1,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_1,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7990;
  WebKit::CtapAuthenticator::performAuthenticatorSelectionForSetupPin(void)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

void WebKit::CtapCcidDriver::transact(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (fido::isCtap2Protocol())
  {
    v6 = *(a2 + 12);
    if (*(a1 + 32) == 1 && *(a1 + 28) < v6)
    {
      v7 = qword_1ED641530;
      if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v21 = v6;
        _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "CtapCcidDriver::transact Sending data larger than maxSize. msgSize=%ld", buf, 0xCu);
        LODWORD(v6) = *(a2 + 12);
      }
    }

    *buf = 4224;
    v8 = *(a2 + 8);
    v9 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v23 = v8;
    v24 = v6;
    *&v21[4] = 0x10000;
    v22 = v9;
    v10 = *a3;
    *a3 = 0;
    ++*(a1 + 16);
    v11 = *(a1 + 40);
    apdu::ApduCommand::getEncodedCommand(&v18, buf);
    v12 = WTF::fastMalloc(0x20);
    *v12 = &unk_1F10E79E8;
    v12[1] = v10;
    v12[2] = a1;
    v12[3] = a1;
    v17 = v12;
    WebKit::CcidConnection::transact(v11, &v18, &v17);
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v14 = v18;
    if (v18)
    {
      v18 = 0;
      v19 = 0;
      WTF::fastFree(v14, v13);
    }

    v15 = v22;
    if (v22)
    {
      v22 = 0;
      v23 = 0;
      WTF::fastFree(v15, v13);
    }
  }

  else
  {
    v16 = *(a1 + 40);

    WebKit::CcidConnection::transact(v16, a2, a3);
  }
}

uint64_t WebKit::CtapCcidDriver::respondAsync(WTF::RunLoop *a1, uint64_t *a2)
{
  WTF::RunLoop::mainSingleton(a1);
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  v6 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v7 = WTF::fastMalloc(0x20);
  *v7 = &unk_1F10E7A10;
  v7[1] = v4;
  v7[2] = v5;
  v7[3] = v6;
  v9 = v7;
  WTF::RunLoop::dispatch();
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

void WebKit::CtapCcidDriver::~CtapCcidDriver(WebKit::CtapCcidDriver *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::CcidConnection,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  if (*(this + 4) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::CcidConnection,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  if (*(this + 4) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);

    bmalloc::api::tzoneFree(this, v4);
  }

  else
  {
    __break(0xC471u);
  }
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::CcidConnection,(WTF::DestructionThread)0>::deref(atomic_ullong *result, void *a2)
{
  while (1)
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, v2 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v2)
    {
      if (v2 == 3)
      {
        WebKit::CcidConnection::~CcidConnection(result);

        return WTF::fastFree(v4, v5);
      }

      return result;
    }
  }

  v6 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::CcidConnection,(WTF::DestructionThread)0>(v6, a2);
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::CcidConnection,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
{
  v2 = this;
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    this = MEMORY[0x19EB01E30](this);
  }

  v4 = *(v2 + 1) - 1;
  *(v2 + 1) = v4;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 3);
    ++*(v2 + 2);
    *(v2 + 3) = 0;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    if (v4)
    {
      return this;
    }
  }

  else
  {
    v13 = v4;
    this = WTF::Lock::unlockSlow(v2);
    if (v13)
    {
      return this;
    }
  }

  if (v5)
  {
    WebKit::CcidConnection::~CcidConnection(v5);
    this = WTF::fastFree(v7, v8);
  }

  v9 = 0;
  v10 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v9, 1u, memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    this = MEMORY[0x19EB01E30](v2);
  }

  v11 = *(v2 + 2) - 1;
  *(v2 + 2) = v11;
  atomic_compare_exchange_strong_explicit(v2, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 == 1)
  {
    if (v11)
    {
      return this;
    }
  }

  else
  {
    v12 = v11;
    this = WTF::Lock::unlockSlow(v2);
    if (v12)
    {
      return this;
    }
  }

  return WTF::fastFree(v2, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapCcidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10E79E8;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CtapCcidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10E79E8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

WTF *WTF::Detail::CallableWrapper<WebKit::CtapCcidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>::call(uint64_t a1)
{
  apdu::ApduResponse::createFromMessage();
  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (v9 != 36864)
  {
    if (v9 == 27904)
    {
      v4 = 1;
      WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v5, &v4, 1);
      WebKit::CtapCcidDriver::respondAsync((a1 + 8), &v5);
      result = v5;
      if (!v5)
      {
        goto LABEL_9;
      }

      v5 = 0;
      LODWORD(v6) = 0;
LABEL_7:
      result = WTF::fastFree(result, v2);
      goto LABEL_9;
    }

LABEL_6:
    v5 = 0;
    v6 = 0;
    WebKit::CtapCcidDriver::respondAsync((a1 + 8), &v5);
    result = v5;
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  result = WebKit::CtapCcidDriver::respondAsync((a1 + 8), &v7);
LABEL_9:
  if (v10 == 1)
  {
    result = v7;
    if (v7)
    {
      v7 = 0;
      v8 = 0;
      return WTF::fastFree(result, v2);
    }
  }

  return result;
}

uint64_t *WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t *result, char *a2, WTF *this)
{
  v3 = result;
  *result = 0;
  result[1] = 0;
  if (!this)
  {
    return v3;
  }

  v4 = this;
  if (!(this >> 32))
  {
    v6 = WTF::fastMalloc(this);
    *(v3 + 2) = v4;
    *v3 = v6;
    v7 = *(v3 + 3);
    do
    {
      v8 = *a2++;
      *(*v3 + v7) = v8;
      v7 = *(v3 + 3) + 1;
      *(v3 + 3) = v7;
      v4 = (v4 - 1);
    }

    while (v4);
    return v3;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CtapCcidDriver::respondAsync(WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)::$_0,void>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F10E7A10;
  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::CtapCcidDriver::respondAsync(WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10E7A10;
  v3 = *(this + 2);
  if (v3)
  {
    *(this + 2) = 0;
    *(this + 6) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::CtapHidDriverWorker::CtapHidDriverWorker(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  WTF::CanMakeWeakPtrBase<WTF::WeakPtrFactory<WebKit::AuthenticatorTransportServiceObserver,WTF::DefaultWeakPtrImpl>,(WTF::WeakPtrFactoryInitialization)0>::CanMakeWeakPtrBase(a1);
  WTF::WeakRef<WebKit::CtapHidDriver,WTF::DefaultWeakPtrImpl>::WeakRef<void>((a1 + 8), a2);
  WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>((a1 + 16), a3);
  *(a1 + 24) = 0;
  std::optional<fido::FidoHidMessage>::optional[abi:sn200100]((a1 + 32));
  std::optional<fido::FidoHidMessage>::optional[abi:sn200100]((a1 + 88));
  WTF::HashSet<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet((a1 + 144));
  v4 = *WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(a1 + 16);
  (*(v4 + 16))();
  return a1;
}

{
  WebKit::CtapHidDriverWorker::CtapHidDriverWorker(a1, a2, a3);
  return a1;
}

WTF::ThreadSafeRefCountedBase **WTF::WeakRef<WebKit::CtapHidDriver,WTF::DefaultWeakPtrImpl>::WeakRef<void>(WTF::ThreadSafeRefCountedBase **a1, uint64_t a2)
{
  WTF::WeakRef<WebKit::CtapHidDriver,WTF::DefaultWeakPtrImpl>::WeakRef<void>(a1, a2);
  return a1;
}

{
  v3 = WTF::CanMakeWeakPtrBase<WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>,(WTF::WeakPtrFactoryInitialization)0>::weakImpl((a2 + 8));
  WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>::Ref(a1, v3);
  return a1;
}

_BYTE *std::optional<fido::FidoHidMessage>::optional[abi:sn200100](_BYTE *a1)
{
  std::optional<fido::FidoHidMessage>::optional[abi:sn200100](a1);
  return a1;
}

{
  std::__optional_move_assign_base<fido::FidoHidMessage,false>::__optional_move_assign_base[abi:sn200100](a1);
  return a1;
}

void WebKit::CtapHidDriverWorker::~CtapHidDriverWorker(WebKit::CtapHidDriverWorker *this)
{
  v2 = *WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(this + 16);
  (*(v2 + 24))();
  WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)>::~Function(this + 18);
  std::optional<fido::FidoHidMessage>::~optional((this + 88));
  std::optional<fido::FidoHidMessage>::~optional((this + 32));
  WTF::Ref<WebKit::HidConnection,WTF::RawPtrTraits<WebKit::HidConnection>,WTF::DefaultRefDerefTraits<WebKit::HidConnection>>::~Ref(this + 2);
  WTF::WeakRef<WebKit::CtapHidDriver,WTF::DefaultWeakPtrImpl>::~WeakRef(this + 1);
  WTF::CanMakeWeakPtrBase<WTF::WeakPtrFactory<WebKit::CtapHidDriverWorker,WTF::DefaultWeakPtrImpl>,(WTF::WeakPtrFactoryInitialization)0>::~CanMakeWeakPtrBase(this);
}

{
  WebKit::CtapHidDriverWorker::~CtapHidDriverWorker(this);
}

uint64_t *WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)>::~Function(uint64_t *a1)
{
  WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)>::~Function(a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,std::optional<fido::FidoHidMessage> &&>,std::default_delete<std::optional<fido::FidoHidMessage> &&>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

fido::FidoHidMessage *std::optional<fido::FidoHidMessage>::~optional(fido::FidoHidMessage *a1)
{
  std::optional<fido::FidoHidMessage>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<fido::FidoHidMessage,false>::~__optional_move_assign_base(a1);
  return a1;
}

uint64_t *WTF::Ref<WebKit::HidConnection,WTF::RawPtrTraits<WebKit::HidConnection>,WTF::DefaultRefDerefTraits<WebKit::HidConnection>>::~Ref(uint64_t *a1)
{
  WTF::Ref<WebKit::HidConnection,WTF::RawPtrTraits<WebKit::HidConnection>,WTF::DefaultRefDerefTraits<WebKit::HidConnection>>::~Ref(a1);
  return a1;
}

{
  v4 = a1;
  v5 = a1;
  v2 = 0;
  v7 = a1;
  v6 = &v2;
  v3 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
  if (v3)
  {
    v8 = v3;
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::HidConnection>::deref(v3 + 8);
  }

  return v5;
}

uint64_t *WTF::WeakRef<WebKit::CtapHidDriver,WTF::DefaultWeakPtrImpl>::~WeakRef(uint64_t *a1)
{
  WTF::WeakRef<WebKit::CtapHidDriver,WTF::DefaultWeakPtrImpl>::~WeakRef(a1);
  return a1;
}

{
  WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>::~Ref(a1);
  return a1;
}

uint64_t WebKit::CtapHidDriverWorker::transact(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  *(a1 + 24) = 1;
  std::optional<fido::FidoHidMessage>::operator=[abi:sn200100]<fido::FidoHidMessage,void>(a1 + 32, v13);
  std::__optional_destruct_base<fido::FidoHidMessage,false>::reset[abi:sn200100]((a1 + 88));
  WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)>::operator=((a1 + 144), v12);
  v4 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(a1 + 16);
  WebKit::HidConnection::invalidateCache(v4);
  v5 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(a1 + 16);
  std::optional<fido::pin::TokenRequest>::operator*[abi:sn200100](a1 + 32);
  fido::FidoHidMessage::popNextPacket(v11, v6);
  WTF::WeakPtr<WebKit::CtapHidDriverWorker,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v9, a1);
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v8);
  WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)>::CompletionHandler<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void>(&v10, &v9);
  (*(*v5 + 40))(v5, v11, &v10);
  WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)>::~CompletionHandler(&v10);
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v8);
  WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0::~$_0(&v9);
  return WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v11);
}

void std::optional<fido::FidoHidMessage>::operator=[abi:sn200100]<fido::FidoHidMessage,void>(uint64_t a1, uint64_t a2)
{
  if (std::__optional_storage_base<fido::pin::TokenRequest,false>::has_value[abi:sn200100](a1))
  {
    std::__to_address[abi:sn200100]<char const>();
    fido::FidoHidMessage::operator=(v3, a2);
  }

  else
  {
    std::__optional_storage_base<fido::FidoHidMessage,false>::__construct[abi:sn200100]<fido::FidoHidMessage>(a1, a2);
  }
}

void std::__optional_destruct_base<fido::FidoHidMessage,false>::reset[abi:sn200100](fido::FidoHidMessage *a1)
{
  if (*(a1 + 48))
  {
    fido::FidoHidMessage::~FidoHidMessage(a1);
    *(a1 + 48) = 0;
  }
}

WTF::ThreadSafeRefCountedBase **WTF::WeakPtr<WebKit::CtapHidDriverWorker,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(WTF::ThreadSafeRefCountedBase **a1, uint64_t *a2)
{
  WTF::WeakPtr<WebKit::CtapHidDriverWorker,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(a1, a2);
  return a1;
}

{
  v5 = WTF::CanMakeWeakPtrBase<WTF::WeakPtrFactory<WebKit::CtapHidDriverWorker,WTF::DefaultWeakPtrImpl>,(WTF::WeakPtrFactoryInitialization)0>::weakImpl(a2);
  if (v5)
  {
    WTF::ThreadSafeRefCountedBase::ref(v5);
  }

  *a1 = v5;
  return a1;
}

uint64_t *WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)>::CompletionHandler<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)>::CompletionHandler<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void>(a1, a2);
  return a1;
}

{
  WTF::Function<void ()(WebKit::HidConnection::DataSent)>::Function<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void>(a1, a2);
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(a1);
  return a1;
}

WTF::ThreadLikeAssertion *WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)>::~CompletionHandler(WTF::ThreadLikeAssertion *a1)
{
  WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)>::~CompletionHandler(a1);
  return a1;
}

{
  v4 = a1;
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v3);
  WTF::ThreadLikeAssertion::operator=();
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v3);
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(a1);
  WTF::Function<void ()(WebKit::HidConnection::DataSent)>::~Function(a1);
  return a1;
}

uint64_t *WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0::~$_0(uint64_t *a1)
{
  WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0::~$_0(a1);
  return a1;
}

{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(a1);
  return a1;
}

uint64_t *WebKit::CtapHidDriverWorker::write(uint64_t *result, unsigned __int8 a2)
{
  v14 = result;
  v13 = a2;
  v2 = result;
  if (*(result + 24) == 1)
  {
    if (v13 << 31 >> 31 == -1)
    {
      std::optional<fido::pin::TokenRequest>::operator*[abi:sn200100]((result + 4));
      if (fido::FidoHidMessage::numPackets(v3))
      {
        v5 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get((v2 + 2));
        std::optional<fido::pin::TokenRequest>::operator*[abi:sn200100]((v2 + 4));
        fido::FidoHidMessage::popNextPacket(v10, v6);
        WTF::WeakPtr<WebKit::CtapHidDriverWorker,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v8, v2);
        WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v7);
        WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)>::CompletionHandler<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_1,void>(&v9, &v8);
        (*(*v5 + 40))(v5, v10, &v9);
        WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)>::~CompletionHandler(&v9);
        WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v7);
        WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0::~$_0(&v8);
        return WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10);
      }

      else
      {
        *(v2 + 24) = 2;
        v4 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get((v2 + 2));
        WTF::WeakPtr<WebKit::CtapHidDriverWorker,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v11, v2);
        WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapHidDriverWorker::write(WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function::HidConnection::DataSent)::$_0,void>(&v12, &v11);
        WebKit::HidConnection::registerDataReceivedCallback(v4, &v12);
        WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(&v12);
        return WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0::~$_0(&v11);
      }
    }

    else
    {
      std::optional<fido::FidoHidMessage>::operator=[abi:sn200100]((result + 11));
      return WebKit::CtapHidDriverWorker::returnMessage(v2);
    }
  }

  return result;
}

uint64_t *WebKit::CtapHidDriverWorker::returnMessage(WebKit::CtapHidDriverWorker *this)
{
  v4[1] = this;
  WTF::Function<void ()(WTF::String const&)>::Function(v4, this + 18);
  std::optional<fido::FidoHidMessage>::optional[abi:sn200100](v3, this + 88);
  WebKit::CtapHidDriverWorker::reset(this);
  WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)>::operator()(v4);
  std::optional<fido::FidoHidMessage>::~optional(v3);
  return WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)>::~Function(v4);
}

uint64_t *WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapHidDriverWorker::write(WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function::HidConnection::DataSent)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function<WebKit::CtapHidDriverWorker::write(WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::Function::HidConnection::DataSent)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_0,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapAuthenticator::makeCredential(void)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t *WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)>::CompletionHandler<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_1,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)>::CompletionHandler<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_1,void>(a1, a2);
  return a1;
}

{
  WTF::Function<void ()(WebKit::HidConnection::DataSent)>::Function<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_1,void>(a1, a2);
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(a1);
  return a1;
}

void WebKit::CtapHidDriverWorker::read(_BYTE *a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  if (a1[24] == 2)
  {
    if (std::optional<fido::pin::TokenRequest>::operator BOOL[abi:sn200100]((a1 + 88)))
    {
      std::optional<fido::pin::TokenRequest>::operator*[abi:sn200100]((a1 + 88));
      if ((fido::FidoHidMessage::addContinuationPacket() & 1) == 0)
      {
        std::optional<fido::FidoHidMessage>::operator=[abi:sn200100]((a1 + 88));
        WebKit::CtapHidDriverWorker::returnMessage(a1);
        return;
      }
    }

    else
    {
      fido::FidoHidMessage::createFromSerializedData();
      std::optional<fido::FidoHidMessage>::operator=[abi:sn200100]((a1 + 88), v8);
      std::optional<fido::FidoHidMessage>::~optional(v8);
      if ((std::optional<fido::pin::TokenRequest>::operator BOOL[abi:sn200100]((a1 + 88)) & 1) == 0 || (std::optional<fido::pin::TokenRequest>::operator*[abi:sn200100]((a1 + 88)), v4 = fido::FidoHidMessage::channelId(v3), std::optional<fido::pin::TokenRequest>::operator*[abi:sn200100]((a1 + 32)), v4 != fido::FidoHidMessage::channelId(v5)))
      {
LABEL_11:
        std::__optional_destruct_base<fido::FidoHidMessage,false>::reset[abi:sn200100]((a1 + 88));
        return;
      }
    }

    std::optional<fido::pin::TokenRequest>::operator*[abi:sn200100]((a1 + 88));
    if ((fido::FidoHidMessage::messageComplete(v6) & 1) == 0)
    {
      return;
    }

    std::optional<fido::pin::TokenRequest>::operator*[abi:sn200100]((a1 + 88));
    if (fido::FidoHidMessage::cmd(v7) == 59)
    {
      goto LABEL_11;
    }

    WebKit::CtapHidDriverWorker::returnMessage(a1);
  }
}

_BYTE *std::optional<fido::FidoHidMessage>::optional[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::optional<fido::FidoHidMessage>::optional[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__optional_move_assign_base<fido::FidoHidMessage,false>::__optional_move_assign_base[abi:sn200100](a1, a2);
  return a1;
}

void WebKit::CtapHidDriverWorker::reset(WebKit::CtapHidDriverWorker *this)
{
  v2 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(this + 16);
  WebKit::HidConnection::unregisterDataReceivedCallback(v2);
  WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)>::operator=(this + 18);
  std::optional<fido::FidoHidMessage>::operator=[abi:sn200100]((this + 88));
  std::optional<fido::FidoHidMessage>::operator=[abi:sn200100]((this + 32));
  *(this + 24) = 0;
}

uint64_t WebKit::CtapHidDriverWorker::cancel(WebKit::CtapHidDriverWorker *a1, fido::FidoHidMessage *a2)
{
  v8 = a1;
  v7 = a2;
  WebKit::CtapHidDriverWorker::reset(a1);
  v3 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(a1 + 16);
  WebKit::HidConnection::invalidateCache(v3);
  v4 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(a1 + 16);
  fido::FidoHidMessage::popNextPacket(v6, v7);
  (*(*v4 + 32))(v4, v6);
  return WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6);
}

void *WebKit::CtapHidDriver::create@<X0>(WebKit::CtapDriver *a1@<X0>, void *a2@<X8>)
{
  v3 = WebKit::CtapDriver::operator new(a1);
  WebKit::CtapHidDriver::CtapHidDriver(v3, a1);
  return WTF::adoptRef<WebKit::AuthenticatorManager,WTF::RawPtrTraits<WebKit::AuthenticatorManager>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorManager>>(a2, v3);
}

void *WebKit::CtapHidDriver::CtapHidDriver(void *a1, uint64_t *a2)
{
  WebKit::CtapHidDriver::CtapHidDriver(a1, a2);
  return a1;
}

{
  WebKit::CtapDriver::CtapDriver(a1);
  *a1 = &unk_1F10E7A38;
  WTF::makeUniqueRefWithoutRefCountedCheck<WebKit::CtapHidDriverWorker,WebKit::CtapHidDriver &,WTF::Ref<WebKit::HidConnection,WTF::RawPtrTraits<WebKit::HidConnection>,WTF::DefaultRefDerefTraits<WebKit::HidConnection>>>(a1 + 5, a1, a2);
  *(a1 + 48) = 0;
  *(a1 + 13) = -1;
  WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 7));
  WTF::HashSet<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(a1 + 9);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 10));
  return a1;
}

uint64_t WebKit::CtapDriver::CtapDriver(uint64_t a1)
{
  WTF::RefCountedAndCanMakeWeakPtr<WebKit::CtapDriver>::RefCountedAndCanMakeWeakPtr(a1 + 8);
  *a1 = &unk_1F10E7A68;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  std::optional<unsigned int>::optional[abi:sn200100]((a1 + 28));
  return a1;
}

fido::FidoHidMessage *WebKit::CtapHidDriver::transact(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v4 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  if (!WebKit::CtapDriver::isValidSize(a1, v4))
  {
    v28 = qword_1ED641530;
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      v5 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(v30);
      __os_log_helper_16_0_1_8_0(buf, v5);
      _os_log_impl(&dword_19D52D000, v28, v27, "CtapHidDriver::transact Sending data larger than maxSize. msgSize=%ld", buf, 0xCu);
    }
  }

  *(a1 + 48) = 1;
  *(a1 + 52) = -1;
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1 + 56, v30);
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator=((a1 + 72), v29);
  v26 = 2;
  for (i = 0; i < v26; ++i)
  {
    v24 = WTF::weakRandomNumber<unsigned int>();
    v6 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::mutableSpan(a1 + 80);
    v21[1] = v7;
    v21[0] = v6;
    v8 = std::span<unsigned char,18446744073709551615ul>::subspan[abi:sn200100](v21, 4 * i, 0xFFFFFFFFFFFFFFFFLL);
    v23 = v9;
    v22 = v8;
    v10 = WTF::asByteSpan<unsigned int,18446744073709551615ul>(&v24);
    v20 = v11;
    v19 = v10;
    WTF::memcpySpan<unsigned char,18446744073709551615ul,unsigned char const,18446744073709551615ul>(v22, v23, v10, v11);
  }

  fido::FidoHidMessage::create();
  v12 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::data(a1 + 40);
  std::optional<fido::pin::TokenRequest>::operator*[abi:sn200100](v18);
  v14 = v13;
  WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v16, a1);
  WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)>::Function<WebKit::CtapHidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_0,void>(&v17, &v16);
  WebKit::CtapHidDriverWorker::transact(v12, v14, &v17);
  WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)>::~Function(&v17);
  WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0::~$_0(&v16);
  return std::optional<fido::FidoHidMessage>::~optional(v18);
}

BOOL WebKit::CtapDriver::isValidSize(WebKit::CtapDriver *this, unint64_t a2)
{
  v3 = std::optional<unsigned int>::operator BOOL[abi:sn200100](this + 28);
  v4 = 1;
  if (v3)
  {
    std::optional<unsigned int>::operator*[abi:sn200100](this + 28);
    return a2 <= *v5;
  }

  return v4;
}

double __os_log_helper_16_0_1_8_0(uint64_t a1, uint64_t a2)
{
  *&result = 134217984;
  *a1 = 134217984;
  *(a1 + 4) = a2;
  return result;
}

void *WTF::memcpySpan<unsigned char,18446744073709551615ul,unsigned char const,18446744073709551615ul>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a1;
  v12[1] = a2;
  v11[1] = a4;
  v11[0] = a3;
  v4 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v12);
  v5 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v11);
  if (v4 < v5)
  {
    isIntegralOrPointerType = WTF::isIntegralOrPointerType(v5);
    WTF::isIntegralOrPointerType(isIntegralOrPointerType);
    v16 = 1067;
    v15 = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/StdLibExtras.h";
    v14 = "void WTF::memcpySpan(std::span<T, TExtent>, std::span<U, UExtent>) [T = unsigned char, TExtent = 18446744073709551615UL, U = const unsigned char, UExtent = 18446744073709551615UL]";
    v13 = 2;
    v12[9] = 1067;
    v12[8] = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/StdLibExtras.h";
    v12[7] = "void WTF::memcpySpan(std::span<T, TExtent>, std::span<U, UExtent>) [T = unsigned char, TExtent = 18446744073709551615UL, U = const unsigned char, UExtent = 18446744073709551615UL]";
    v12[6] = 2;
    v12[5] = 1067;
    v12[4] = "/AppleInternal/Library/BuildRoots/4~CAtBugAdX2ypK3woS13W0YBGfMX4uuy1xhucdh4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/StdLibExtras.h";
    v12[3] = "void WTF::memcpySpan(std::span<T, TExtent>, std::span<U, UExtent>) [T = unsigned char, TExtent = 18446744073709551615UL, U = const unsigned char, UExtent = 18446744073709551615UL]";
    v12[2] = 2;
    __break(0xC471u);
    JUMPOUT(0x19D6B0744);
  }

  v7 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v12);
  v8 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v11);
  v9 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v11);
  return memcpy(v7, v8, v9);
}

uint64_t *WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)>::Function<WebKit::CtapHidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)>::Function<WebKit::CtapHidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0,void,std::optional<fido::FidoHidMessage> &&>,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0,void,std::optional<fido::FidoHidMessage> &&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t WebKit::CtapHidDriver::continueAfterChannelAllocated(uint64_t result, uint64_t a2)
{
  v28 = result;
  v27 = a2;
  v2 = result;
  if (*(result + 48) == 1)
  {
    if (std::optional<fido::pin::TokenRequest>::operator BOOL[abi:sn200100](v27))
    {
      std::optional<fido::pin::TokenRequest>::operator*[abi:sn200100](v27);
      fido::FidoHidMessage::getMessagePayload(v25, v3);
      v4 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::mutableSpan(v25);
      v24 = v5;
      v23 = v4;
      v6 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::mutableSpan(v2 + 80);
      v22[2] = v7;
      v22[1] = v6;
      v8 = WTF::spanHasPrefix<unsigned char const,18446744073709551615ul,unsigned char const,18446744073709551615ul>(v23, v24, v6, v7);
      if (v8)
      {
        *(v2 + 48) = 2;
        v17 = 9;
        *(v2 + 52) = *WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator[](v25, 8uLL) << 24;
        v9 = v17++;
        *(v2 + 52) |= *WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator[](v25, v9) << 16;
        v10 = v17++;
        *(v2 + 52) |= *WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator[](v25, v10) << 8;
        *(v2 + 52) |= *WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator[](v25, v17);
        WebKit::CtapDriver::isCtap2Protocol(v2);
        fido::FidoHidMessage::create();
        v11 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::data(v2 + 40);
        std::optional<fido::pin::TokenRequest>::operator*[abi:sn200100](v16);
        v13 = v12;
        WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v14, v2);
        WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)>::Function<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &)::$_1,void>(&v15, &v14);
        WebKit::CtapHidDriverWorker::transact(v11, v13, &v15);
        WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)>::~Function(&v15);
        WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0::~$_0(&v14);
        std::optional<fido::FidoHidMessage>::~optional(v16);
        v18 = 0;
      }

      else
      {
        *(v2 + 48) = 0;
        WTF::RunLoop::mainSingleton(v8);
        WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(&v19, v2);
        WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v20, (v2 + 56));
        WTF::Function<void ()(BOOL)>::Function(&v21, (v2 + 72));
        WTF::Function<void ()(void)>::Function<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_0,void>(v22, &v19);
        WTF::RunLoop::dispatch();
        WTF::Function<void ()(void)>::~Function(v22);
        WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_0::~$_0(&v19);
        v18 = 1;
      }

      return WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25);
    }

    else
    {
      WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v26);
      WebKit::CtapHidDriver::returnResponse(v2, v26);
      return WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26);
    }
  }

  return result;
}

uint64_t *WebKit::CtapHidDriver::returnResponse(uint64_t *a1, uint64_t a2)
{
  v4[2] = a1;
  v4[1] = a2;
  WTF::Function<void ()(BOOL)>::Function(v4, a1 + 9);
  WebKit::CtapHidDriver::reset(a1);
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(v4);
  return WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(v4);
}

BOOL WTF::spanHasPrefix<unsigned char const,18446744073709551615ul,unsigned char const,18446744073709551615ul>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[0] = a1;
  v10[1] = a2;
  v9[1] = a4;
  v9[0] = a3;
  v4 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v10);
  if (v4 >= std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v9))
  {
    v5 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v10);
    v6 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v9);
    v7 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v9);
    return memcmp(v5, v6, v7) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t *WTF::Function<void ()(void)>::Function<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(void)>::Function<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_0,void>,std::optional<fido::FidoHidMessage> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t *WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_0::~$_0(uint64_t *a1)
{
  WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_0::~$_0(a1);
  return a1;
}

{
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(a1 + 3);
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 1));
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(a1);
  return a1;
}

uint64_t *WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)>::Function<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &)::$_1,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)>::Function<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &)::$_1,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::continueAfterChannelAllocated(std::optional<fido::FidoHidMessage> &&)::$_1,void,std::optional<fido::FidoHidMessage> &>,std::optional<fido::FidoHidMessage> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0,void,std::optional<fido::FidoHidMessage> &&>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t WebKit::CtapHidDriver::continueAfterResponseReceived(uint64_t result, uint64_t a2)
{
  v6 = result;
  v5 = a2;
  v2 = result;
  if (*(result + 48) == 2)
  {
    if (std::optional<fido::pin::TokenRequest>::operator BOOL[abi:sn200100](v5))
    {
      std::optional<fido::pin::TokenRequest>::operator*[abi:sn200100](v5);
      fido::FidoHidMessage::getMessagePayload(v4, v3);
    }

    else
    {
      WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v4);
    }

    WebKit::CtapHidDriver::returnResponse(v2, v4);
    return WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4);
  }

  return result;
}

uint64_t *WebKit::CtapHidDriver::reset(WebKit::CtapHidDriver *this)
{
  result = WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator=(this + 9);
  *(this + 13) = -1;
  *(this + 48) = 0;
  return result;
}

uint64_t WebKit::CtapHidDriver::cancel(uint64_t this)
{
  v6 = this;
  v1 = this;
  if (*(this + 48))
  {
    this = WebKit::CtapDriver::isCtap2Protocol(this);
    if (this)
    {
      if (*(v1 + 48) == 2)
      {
        WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v4);
        fido::FidoHidMessage::create();
        WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4);
        v2 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::data(v1 + 40);
        std::optional<fido::pin::TokenRequest>::operator*[abi:sn200100](v5);
        WebKit::CtapHidDriverWorker::cancel(v2, v3);
        std::optional<fido::FidoHidMessage>::~optional(v5);
      }

      return WebKit::CtapHidDriver::reset(v1);
    }
  }

  return this;
}

void WebKit::CtapHidDriver::~CtapHidDriver(WebKit::CtapHidDriver *this)
{
  WebKit::CtapHidDriver::~CtapHidDriver(this);
}

{
  WebKit::CtapHidDriver::~CtapHidDriver(this);
  bmalloc::api::tzoneFree(this, v2);
}

{
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 80);
  WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::~Function(this + 9);
  WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 56);
  WTF::UniqueRef<WebKit::CtapHidDriverWorker>::~UniqueRef(this + 5);
  WebKit::CtapDriver::~CtapDriver(this);
}

_BYTE *std::__optional_destruct_base<fido::FidoHidMessage,false>::__optional_destruct_base[abi:sn200100](_BYTE *result)
{
  *result = 0;
  result[48] = 0;
  return result;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,std::optional<fido::FidoHidMessage> &&>,std::default_delete<std::optional<fido::FidoHidMessage> &&>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,std::optional<fido::FidoHidMessage> &&>,std::default_delete<std::optional<fido::FidoHidMessage> &&>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,std::optional<fido::FidoHidMessage> &&>,std::default_delete<std::optional<fido::FidoHidMessage> &&>>::reset[abi:sn200100](a1, 0);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,std::optional<fido::FidoHidMessage> &&>,std::default_delete<std::optional<fido::FidoHidMessage> &&>>::reset[abi:sn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    return std::default_delete<WTF::Detail::CallableWrapperBase<void,std::optional<fido::FidoHidMessage> &&>>::operator()[abi:sn200100](result, v2);
  }

  return result;
}

uint64_t std::default_delete<WTF::Detail::CallableWrapperBase<void,std::optional<fido::FidoHidMessage> &&>>::operator()[abi:sn200100](uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    return (*(*a2 + 8))(a2, a2);
  }

  return result;
}

fido::FidoHidMessage *std::__optional_destruct_base<fido::FidoHidMessage,false>::~__optional_destruct_base[abi:sn200100](fido::FidoHidMessage *a1)
{
  if (*(a1 + 48))
  {
    fido::FidoHidMessage::~FidoHidMessage(a1);
  }

  return a1;
}

void fido::FidoHidMessage::~FidoHidMessage(fido::FidoHidMessage *this)
{
  fido::FidoHidMessage::~FidoHidMessage(this);
}

{
  WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::~Deque((this + 8));
}

WTF::RefCountedBase *WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::~Deque(WTF::RefCountedBase *a1)
{
  WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::~Deque(a1);
  return a1;
}

{
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::destroyAll(a1);
  WTF::VectorBuffer<std::unique_ptr<fido::FidoHidPacket>,0ul,WTF::FastMalloc>::~VectorBuffer(a1 + 16);
  return a1;
}

uint64_t *WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::destroyAll(unint64_t *a1)
{
  v9[2] = a1;
  v2 = WTF::VectorBufferBase<std::unique_ptr<fido::FidoHidPacket>,WTF::FastMalloc>::capacitySpan((a1 + 2));
  v9[1] = v3;
  v9[0] = v2;
  if (*a1 > a1[1])
  {
    v7 = std::span<char const,18446744073709551615ul>::first[abi:sn200100](v9, a1[1]);
    WTF::VectorTypeOperations<std::unique_ptr<fido::FidoHidPacket>>::destruct(v7, v8);
    v4 = std::span<std::unique_ptr<fido::FidoHidPacket>,18446744073709551615ul>::subspan[abi:sn200100](v9, *a1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v4 = std::span<std::unique_ptr<fido::FidoHidPacket>,18446744073709551615ul>::subspan[abi:sn200100](v9, *a1, a1[1] - *a1);
  }

  return WTF::VectorTypeOperations<std::unique_ptr<fido::FidoHidPacket>>::destruct(v4, v5);
}

uint64_t *WTF::VectorTypeOperations<std::unique_ptr<fido::FidoHidPacket>>::destruct(uint64_t a1, uint64_t a2)
{
  v8[0] = a1;
  v8[1] = a2;
  v7 = std::span<std::unique_ptr<fido::FidoHidPacket>,18446744073709551615ul>::begin[abi:sn200100](v8);
  std::to_address[abi:sn200100]<std::__wrap_iter<std::unique_ptr<fido::FidoHidPacket> *>>(&v7);
  v3 = v2;
  v6 = std::span<std::unique_ptr<fido::FidoHidPacket>,18446744073709551615ul>::end[abi:sn200100](v8);
  std::to_address[abi:sn200100]<std::__wrap_iter<std::unique_ptr<fido::FidoHidPacket> *>>(&v6);
  return WTF::VectorDestructor<true,std::unique_ptr<fido::FidoHidPacket>>::destruct(v3, v4);
}

uint64_t std::span<std::unique_ptr<fido::FidoHidPacket>,18446744073709551615ul>::subspan[abi:sn200100](uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 > std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1))
  {
    __break(1u);
  }

  if (a3 == -1)
  {
    v4 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1) + 8 * a2;
    v5 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1);
    std::span<char const,18446744073709551615ul>::span[abi:sn200100]<char const*>(&v10, v4, v5 - a2);
  }

  else
  {
    if (a3 > std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1) - a2)
    {
      __break(1u);
    }

    v6 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1);
    std::span<char const,18446744073709551615ul>::span[abi:sn200100]<char const*>(&v10, v6 + 8 * a2, a3);
  }

  return v10;
}

uint64_t *WTF::VectorDestructor<true,std::unique_ptr<fido::FidoHidPacket>>::destruct(uint64_t *result, uint64_t *a2)
{
  for (i = result; i != a2; ++i)
  {
    result = std::unique_ptr<fido::FidoHidPacket>::~unique_ptr[abi:sn200100](i);
  }

  return result;
}

uint64_t std::span<std::unique_ptr<fido::FidoHidPacket>,18446744073709551615ul>::begin[abi:sn200100](uint64_t a1)
{
  v1 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1);
  std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(&v3, v1);
  return v3;
}

uint64_t std::span<std::unique_ptr<fido::FidoHidPacket>,18446744073709551615ul>::end[abi:sn200100](uint64_t a1)
{
  v2 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1);
  v3 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1);
  std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(&v5, v2 + 8 * v3);
  return v5;
}

uint64_t *std::unique_ptr<fido::FidoHidPacket>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<fido::FidoHidPacket>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<fido::FidoHidPacket>::reset[abi:sn200100](a1);
  return a1;
}

uint64_t *std::unique_ptr<fido::FidoHidPacket>::reset[abi:sn200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::default_delete<fido::FidoHidPacket>::operator()[abi:sn200100](result, v1);
  }

  return result;
}

uint64_t std::default_delete<fido::FidoHidPacket>::operator()[abi:sn200100](uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    return (*(*a2 + 8))(a2, a2);
  }

  return result;
}

void std::pointer_traits<std::__wrap_iter<std::unique_ptr<fido::FidoHidPacket> *>>::to_address[abi:sn200100](uint64_t a1)
{
  v1 = a1;
  std::span<char const,18446744073709551615ul>::data[abi:sn200100](&v1);
  std::__to_address[abi:sn200100]<char const>();
}

uint64_t *WTF::WeakPtrFactory<WebKit::CtapHidDriverWorker,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(uint64_t *a1)
{
  WTF::WeakPtrFactory<WebKit::CtapHidDriverWorker,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(a1);
  return a1;
}

{
  if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(a1))
  {
    WTF::WeakPtrImplBase<WTF::DefaultWeakPtrImpl>::clear(*a1);
  }

  v4[1] = a1;
  v4[0] = 0;
  v4[3] = a1;
  v4[2] = v4;
  v5 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WTF::DefaultWeakPtrImpl,(WTF::DestructionThread)0>::deref(v5);
  }

  return a1;
}

void fido::FidoHidMessage::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::operator=((a1 + 8), (a2 + 8));
  *(a1 + 40) = *(a2 + 40);
}

uint64_t std::__optional_storage_base<fido::FidoHidMessage,false>::__construct[abi:sn200100]<fido::FidoHidMessage>(uint64_t a1, uint64_t a2)
{
  result = std::__construct_at[abi:sn200100]<fido::FidoHidMessage,fido::FidoHidMessage,fido::FidoHidMessage*>(a1, a2);
  *(a1 + 48) = 1;
  return result;
}

void WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::swap(uint64_t *a1, uint64_t *a2)
{
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a2);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  std::swap[abi:sn200100]<JSC::ArrayBufferView *>(a1, a2);
  std::swap[abi:sn200100]<JSC::ArrayBufferView *>(a1 + 1, a2 + 1);
  WTF::VectorBuffer<std::unique_ptr<fido::FidoHidPacket>,0ul,WTF::FastMalloc>::swap((a1 + 2), (a2 + 2));
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a2);
}

int *std::swap[abi:sn200100]<unsigned int>(int *result, int *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

uint64_t std::construct_at[abi:sn200100]<fido::FidoHidMessage,fido::FidoHidMessage,fido::FidoHidMessage*>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __break(1u);
  }

  return fido::FidoHidMessage::FidoHidMessage(a1, a2);
}

uint64_t fido::FidoHidMessage::FidoHidMessage(uint64_t a1, uint64_t a2)
{
  fido::FidoHidMessage::FidoHidMessage(a1, a2);
  return a1;
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::Deque((a1 + 8), (a2 + 8));
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

WTF::RefCountedBase *WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::Deque(WTF::RefCountedBase *a1, uint64_t *a2)
{
  WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::Deque(a1);
  WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::swap(a1, a2);
  return a1;
}

WTF::RefCountedBase *WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::Deque(WTF::RefCountedBase *a1)
{
  WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::Deque(a1);
  return a1;
}

{
  *a1 = 0;
  *(a1 + 1) = 0;
  WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 16);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  return a1;
}

void std::unique_ptr<WTF::Detail::CallableWrapperBase<void,std::optional<fido::FidoHidMessage> &&>,std::default_delete<std::optional<fido::FidoHidMessage> &&>>::operator=[abi:sn200100](uint64_t *a1, uint64_t *a2)
{
  v3 = std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::release[abi:sn200100](a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,std::optional<fido::FidoHidMessage> &&>,std::default_delete<std::optional<fido::FidoHidMessage> &&>>::reset[abi:sn200100](a1, v3);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a2);
}

void WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::clear(WTF::RefCountedBase *a1)
{
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::destroyAll(a1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v2 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1 + 16);
  WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::deallocateBuffer(a1 + 16, v2);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
}

uint64_t WTF::Deque<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul>::destroyAll(unint64_t *a1)
{
  v9[2] = a1;
  v2 = WTF::VectorBufferBase<std::unique_ptr<fido::FidoHidPacket>,WTF::FastMalloc>::capacitySpan((a1 + 2));
  v9[1] = v3;
  v9[0] = v2;
  if (*a1 > a1[1])
  {
    v7 = std::span<char const,18446744073709551615ul>::first[abi:sn200100](v9, a1[1]);
    WTF::VectorTypeOperations<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::destruct(v7, v8);
    v4 = std::span<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,18446744073709551615ul>::subspan[abi:sn200100](v9, *a1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v4 = std::span<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,18446744073709551615ul>::subspan[abi:sn200100](v9, *a1, a1[1] - *a1);
  }

  return WTF::VectorTypeOperations<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::destruct(v4, v5);
}

uint64_t WTF::VectorTypeOperations<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::destruct(uint64_t a1, uint64_t a2)
{
  v8[0] = a1;
  v8[1] = a2;
  v7 = std::span<std::unique_ptr<fido::FidoHidPacket>,18446744073709551615ul>::begin[abi:sn200100](v8);
  std::to_address[abi:sn200100]<std::__wrap_iter<std::unique_ptr<fido::FidoHidPacket> *>>(&v7);
  v3 = v2;
  v6 = std::span<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,18446744073709551615ul>::end[abi:sn200100](v8);
  std::to_address[abi:sn200100]<std::__wrap_iter<std::unique_ptr<fido::FidoHidPacket> *>>(&v6);
  return WTF::VectorDestructor<true,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::destruct(v3, v4);
}

uint64_t std::span<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,18446744073709551615ul>::subspan[abi:sn200100](uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 > std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1))
  {
    __break(1u);
  }

  if (a3 == -1)
  {
    v4 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1) + 16 * a2;
    v5 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1);
    std::span<char const,18446744073709551615ul>::span[abi:sn200100]<char const*>(&v10, v4, v5 - a2);
  }

  else
  {
    if (a3 > std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1) - a2)
    {
      __break(1u);
    }

    v6 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1);
    std::span<char const,18446744073709551615ul>::span[abi:sn200100]<char const*>(&v10, v6 + 16 * a2, a3);
  }

  return v10;
}

uint64_t WTF::VectorDestructor<true,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::destruct(uint64_t result, uint64_t a2)
{
  for (i = result; i != a2; i += 16)
  {
    result = WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(i);
  }

  return result;
}

uint64_t std::span<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,18446744073709551615ul>::end[abi:sn200100](uint64_t a1)
{
  v2 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1);
  v3 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1);
  std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(&v5, v2 + 16 * v3);
  return v5;
}

void std::__optional_storage_base<fido::FidoHidMessage,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<fido::FidoHidMessage,false>>(fido::FidoHidMessage *a1, uint64_t a2)
{
  v3 = *(a1 + 48) & 1;
  if (v3 == (std::__optional_storage_base<fido::pin::TokenRequest,false>::has_value[abi:sn200100](a2) & 1))
  {
    if (*(a1 + 48))
    {
      std::__to_address[abi:sn200100]<char const>();
      fido::FidoHidMessage::operator=(a1, v4);
    }
  }

  else if (*(a1 + 48))
  {
    std::__optional_destruct_base<fido::FidoHidMessage,false>::reset[abi:sn200100](a1);
  }

  else
  {
    std::__to_address[abi:sn200100]<char const>();
    std::__optional_storage_base<fido::FidoHidMessage,false>::__construct[abi:sn200100]<fido::FidoHidMessage>(a1, v5);
  }
}

_BYTE *std::__optional_move_base<fido::FidoHidMessage,false>::__optional_move_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  std::__optional_copy_base<fido::FidoHidMessage,false>::__optional_copy_base[abi:sn200100](a1);
  std::__optional_storage_base<fido::FidoHidMessage,false>::__construct_from[abi:sn200100]<std::__optional_move_base<fido::FidoHidMessage,false>>(a1, a2);
  return a1;
}

uint64_t std::__optional_storage_base<fido::FidoHidMessage,false>::__construct_from[abi:sn200100]<std::__optional_move_base<fido::FidoHidMessage,false>>(uint64_t a1, uint64_t a2)
{
  result = std::__optional_storage_base<fido::pin::TokenRequest,false>::has_value[abi:sn200100](a2);
  if (result)
  {
    std::__to_address[abi:sn200100]<char const>();
    return std::__optional_storage_base<fido::FidoHidMessage,false>::__construct[abi:sn200100]<fido::FidoHidMessage>(a1, v4);
  }

  return result;
}

uint64_t WTF::RefCountedAndCanMakeWeakPtr<WebKit::CtapDriver>::RefCountedAndCanMakeWeakPtr(uint64_t a1)
{
  WTF::CanMakeWeakPtrBase<WTF::WeakPtrFactory<WebKit::AuthenticatorTransportServiceObserver,WTF::DefaultWeakPtrImpl>,(WTF::WeakPtrFactoryInitialization)0>::CanMakeWeakPtrBase(a1);
  WTF::RefCounted<WebKit::AuthenticatorManager>::RefCounted((a1 + 8));
  return a1;
}

void WebKit::CtapDriver::~CtapDriver(WebKit::CtapDriver *this)
{
  __break(1u);
}

{
  __break(1u);
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::operator=[abi:sn200100](uint64_t *a1, uint64_t *a2)
{
  v3 = std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::release[abi:sn200100](a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,std::default_delete<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>>::reset[abi:sn200100](a1, v3);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

WebKit::CtapHidDriverWorker **WTF::UniqueRef<WebKit::CtapHidDriverWorker>::~UniqueRef(WebKit::CtapHidDriverWorker **a1)
{
  WTF::UniqueRef<WebKit::CtapHidDriverWorker>::~UniqueRef(a1);
  return a1;
}

{
  std::unique_ptr<WebKit::CtapHidDriverWorker>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

WebKit::CtapHidDriverWorker **std::unique_ptr<WebKit::CtapHidDriverWorker>::~unique_ptr[abi:sn200100](WebKit::CtapHidDriverWorker **a1)
{
  std::unique_ptr<WebKit::CtapHidDriverWorker>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<WebKit::CtapHidDriverWorker>::reset[abi:sn200100](a1);
  return a1;
}

WebKit::CtapHidDriverWorker **std::unique_ptr<WebKit::CtapHidDriverWorker>::reset[abi:sn200100](WebKit::CtapHidDriverWorker **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::default_delete<WebKit::CtapHidDriverWorker>::operator()[abi:sn200100](result, v1);
  }

  return result;
}

uint64_t std::default_delete<WebKit::CtapHidDriverWorker>::operator()[abi:sn200100](uint64_t a1, WebKit::CtapHidDriverWorker *a2)
{
  if (a2)
  {
    WebKit::CtapHidDriverWorker::~CtapHidDriverWorker(a2);
    return bmalloc::api::tzoneFree(a2, v3);
  }

  return result;
}

unsigned int **WTF::RefCountedAndCanMakeWeakPtr<WebKit::CtapDriver>::~RefCountedAndCanMakeWeakPtr(unsigned int **a1)
{
  WTF::RefCounted<WebKit::AuthenticatorManager>::~RefCounted((a1 + 1));
  WTF::CanMakeWeakPtrBase<WTF::WeakPtrFactory<WebKit::CtapDriver,WTF::DefaultWeakPtrImpl>,(WTF::WeakPtrFactoryInitialization)0>::~CanMakeWeakPtrBase(a1, v2);
  return a1;
}

WTF::ThreadSafeRefCountedBase **WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>::Ref(WTF::ThreadSafeRefCountedBase **a1, WTF::ThreadSafeRefCountedBase *a2)
{
  WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>::Ref(a1, a2);
  return a1;
}

{
  WTF::ThreadSafeRefCountedBase::ref(a2);
  *a1 = a2;
  return a1;
}

uint64_t WTF::RefCounted<WebKit::HidConnection>::deref(WTF::RefCountedBase *a1)
{
  result = WTF::RefCountedBase::derefBase(a1);
  if (result)
  {
    result = a1 - 16;
    if (a1 != 16)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

uint64_t *WTF::Function<void ()(WebKit::HidConnection::DataSent)>::Function<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WebKit::HidConnection::DataSent)>::Function<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void,WebKit::HidConnection::DataSent>,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)>,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void,WebKit::HidConnection::DataSent>,std::default_delete<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void,WebKit::HidConnection::DataSent>,std::default_delete<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void,WebKit::HidConnection::DataSent>,std::default_delete<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void,WebKit::HidConnection::DataSent>,std::default_delete<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0>>::reset[abi:sn200100](a1);
  return a1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void,WebKit::HidConnection::DataSent>,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)>,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::Detail::CallableWrapperBase<void,WebCore::AuthenticatorAssertionResponse *>::operator new();
  WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void,WebKit::HidConnection::DataSent>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void,WebKit::HidConnection::DataSent>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void,WebKit::HidConnection::DataSent>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WebKit::HidConnection::DataSent>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7A98;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void,WebKit::HidConnection::DataSent>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void,WebKit::HidConnection::DataSent>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7A98;
  WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

void WTF::Detail::CallableWrapperBase<void,WebKit::HidConnection::DataSent>::~CallableWrapperBase()
{
  __break(1u);
}

{
  __break(1u);
}

uint64_t *WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0::operator()(uint64_t *a1, char a2)
{
  result = WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator!(a1);
  if ((result & 1) == 0)
  {
    v4 = WTF::WeakPtr<WebKit::CtapHidDriverWorker,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(a1);
    return WebKit::CtapHidDriverWorker::write(v4, a2 & 1);
  }

  return result;
}

uint64_t WTF::WeakPtr<WebKit::CtapHidDriverWorker,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(uint64_t *a1)
{
  result = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(a1);
  if (!result)
  {
    isIntegralOrPointerType = WTF::isIntegralOrPointerType(0);
    WTF::isIntegralOrPointerType(isIntegralOrPointerType);
    __break(0xC471u);
    JUMPOUT(0x19D6B2EF4);
  }

  return result;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void,WebKit::HidConnection::DataSent>,std::default_delete<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0>>::reset[abi:sn200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::default_delete<WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void,WebKit::HidConnection::DataSent>>::operator()[abi:sn200100](result, v1);
  }

  return result;
}

uint64_t std::default_delete<WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void,WebKit::HidConnection::DataSent>>::operator()[abi:sn200100](uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    return (*(*a2 + 8))(a2, a2);
  }

  return result;
}

uint64_t *WTF::Function<void ()(WebKit::HidConnection::DataSent)>::~Function(uint64_t *a1)
{
  WTF::Function<void ()(WebKit::HidConnection::DataSent)>::~Function(a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WebKit::HidConnection::DataSent>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WebKit::HidConnection::DataSent>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WebKit::HidConnection::DataSent>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WebKit::HidConnection::DataSent>>::reset[abi:sn200100](a1, 0);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WebKit::HidConnection::DataSent>>::reset[abi:sn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    return std::default_delete<WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void,WebKit::HidConnection::DataSent>>::operator()[abi:sn200100](result, v2);
  }

  return result;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>,WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_0,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x10);
  WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7AE8;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7AE8;
  WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

void WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  if (!WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator!(a1))
  {
    v3 = WTF::WeakPtr<WebKit::CtapHidDriverWorker,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(a1);
    WebKit::CtapHidDriverWorker::read(v3, a2);
  }
}

uint64_t *WTF::Function<void ()(WebKit::HidConnection::DataSent)>::Function<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_1,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WebKit::HidConnection::DataSent)>::Function<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_1,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_1,void,WebKit::HidConnection::DataSent>,WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_1,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0,void,WebKit::HidConnection::DataSent>,std::default_delete<WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_1,void,WebKit::HidConnection::DataSent>,WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_1,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::Detail::CallableWrapperBase<void,WebCore::AuthenticatorAssertionResponse *>::operator new();
  WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_1,void,WebKit::HidConnection::DataSent>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_1,void,WebKit::HidConnection::DataSent>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_1,void,WebKit::HidConnection::DataSent>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WebKit::HidConnection::DataSent>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7B10;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_1,void,WebKit::HidConnection::DataSent>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapHidDriverWorker::write(WebKit::HidConnection::DataSent)::$_1,void,WebKit::HidConnection::DataSent>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7B10;
  WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

void *WTF::makeUniqueRefWithoutFastMallocCheck<WebKit::CtapHidDriverWorker,WebKit::CtapHidDriver &,WTF::Ref<WebKit::HidConnection,WTF::RawPtrTraits<WebKit::HidConnection>,WTF::DefaultRefDerefTraits<WebKit::HidConnection>>>(void *a1, void *a2, uint64_t *a3)
{
  v4 = WebKit::CtapHidDriverWorker::operator new(0x98, a2);
  WebKit::CtapHidDriverWorker::CtapHidDriverWorker(v4, a2, a3);
  return WTF::UniqueRef<WebKit::CtapHidDriverWorker>::UniqueRef(a1, v4);
}

uint64_t WebKit::CtapHidDriverWorker::operator new(WebKit::CtapHidDriverWorker *this, void *a2)
{
  if (WebKit::CtapHidDriverWorker::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::CtapHidDriverWorker::s_heapRef, a2);
  }

  return WebKit::CtapHidDriverWorker::operatorNewSlow(0x98);
}

void *WTF::UniqueRef<WebKit::CtapHidDriverWorker>::UniqueRef(void *a1, uint64_t a2)
{
  WTF::UniqueRef<WebKit::CtapHidDriverWorker>::UniqueRef(a1, a2);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, a2);
  return a1;
}

uint64_t WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t a1, WTF::FastMalloc *a2)
{
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::VectorBuffer(a1, a2, a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  if (WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1))
  {
    WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::VectorTypeOperations<unsigned char>::destruct();
  }

  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0,void,std::optional<fido::FidoHidMessage> &&>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0,void,std::optional<fido::FidoHidMessage> &&>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0,void,std::optional<fido::FidoHidMessage> &&>>::reset[abi:sn200100](a1);
  return a1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0,void,std::optional<fido::FidoHidMessage> &&>,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::Detail::CallableWrapperBase<void,WebCore::AuthenticatorAssertionResponse *>::operator new();
  WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0,void,std::optional<fido::FidoHidMessage> &&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0,void,std::optional<fido::FidoHidMessage> &&>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0,void,std::optional<fido::FidoHidMessage> &&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,std::optional<fido::FidoHidMessage> &&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E7B38;
  WebKit::CtapAuthenticator::makeCredential(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0,void,std::optional<fido::FidoHidMessage> &&>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::CtapHidDriver::transact(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::Function<void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &)> &&)::$_0,void,std::optional<fido::FidoHidMessage> &&>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E7B38;
  WebKit::CtapHidDriverWorker::transact(fido::FidoHidMessage &&,WTF::Function<void ()(std::optional<fido::FidoHidMessage> &&)> &&)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}
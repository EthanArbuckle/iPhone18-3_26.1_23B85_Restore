void *_ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_11constructorINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS8_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS8_26OpaqueOriginIdentifierTypeENSC_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructINS0_16move_constructorISJ_LNS0_5TraitE1EEEEEvRSK_OT_EUlRSQ_OT0_E_JRNS0_3altILm1ESI_EESX_EEEDcSR_DpOT0_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176invokeIZNS_6detail11constructorINS3_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructINS3_16move_constructorISH_LNS3_5TraitE1EEEEEvRSI_OT_EUlRSO_OT0_E_JRNS3_3altILm1ESG_EESV_EEEDTclsr6detailE6invokeclsr3libE7forwardISO_Efp_Espclsr3libE7forwardIT0_Efp0_EEESP_DpOSX_();
}

void *_ZN5mpark3lib5cpp176invokeIZNS_6detail11constructorINS3_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructINS3_16move_constructorISH_LNS3_5TraitE1EEEEEvRSI_OT_EUlRSO_OT0_E_JRNS3_3altILm1ESG_EESV_EEEDTclsr6detailE6invokeclsr3libE7forwardISO_Efp_Espclsr3libE7forwardIT0_Efp0_EEESP_DpOSX_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176detail6invokeIZNS_6detail11constructorINS4_6traitsIJN7WebCore18SecurityOriginData5TupleENS7_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS7_26OpaqueOriginIdentifierTypeENSB_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructINS4_16move_constructorISI_LNS4_5TraitE1EEEEEvRSJ_OT_EUlRSP_OT0_E_JRNS4_3altILm1ESH_EESW_EEEDTclclsr3libE7forwardISP_Efp_Espclsr3libE7forwardIT0_Efp0_EEESQ_DpOSY_();
}

void *_ZN5mpark3lib5cpp176detail6invokeIZNS_6detail11constructorINS4_6traitsIJN7WebCore18SecurityOriginData5TupleENS7_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS7_26OpaqueOriginIdentifierTypeENSB_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructINS4_16move_constructorISI_LNS4_5TraitE1EEEEEvRSJ_OT_EUlRSP_OT0_E_JRNS4_3altILm1ESH_EESW_EEEDTclclsr3libE7forwardISP_Efp_Espclsr3libE7forwardIT0_Efp0_EEESQ_DpOSY_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZZN5mpark6detail11constructorINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS3_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS3_26OpaqueOriginIdentifierTypeENS7_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructINS0_16move_constructorISE_LNS0_5TraitE1EEEEEvRSF_OT_ENKUlRSL_OT0_E_clINS0_3altILm1ESD_EEST_EEDaSN_SP_();
}

void std::__optional_storage_base<WebCore::SecurityOriginData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::SecurityOriginData,false>>(WebCore::SecurityOriginData *a1, uint64_t a2)
{
  v3 = *(a1 + 32) & 1;
  if (v3 == (std::__optional_storage_base<WebCore::SecurityOriginData,false>::has_value[abi:sn200100](a2) & 1))
  {
    if (*(a1 + 32))
    {
      std::__to_address[abi:sn200100]<char const>();
      WebCore::SecurityOriginData::operator=(a1);
    }
  }

  else if (*(a1 + 32))
  {
    std::__optional_destruct_base<WebCore::SecurityOriginData,false>::reset[abi:sn200100](a1);
  }

  else
  {
    std::__to_address[abi:sn200100]<char const>();
    std::__optional_storage_base<WebCore::SecurityOriginData,false>::__construct[abi:sn200100]<WebCore::SecurityOriginData>(a1);
  }
}

void std::__optional_destruct_base<WebCore::SecurityOriginData,false>::reset[abi:sn200100](WebCore::SecurityOriginData *a1)
{
  if (*(a1 + 32))
  {
    WebCore::SecurityOriginData::~SecurityOriginData(a1);
    *(a1 + 32) = 0;
  }
}

_BYTE *std::__optional_storage_base<WebCore::SecurityOriginData,false>::__construct[abi:sn200100]<WebCore::SecurityOriginData>(_BYTE *a1)
{
  result = std::__construct_at[abi:sn200100]<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WebCore::SecurityOriginData*>(a1);
  a1[32] = 1;
  return result;
}

void WebCore::SecurityOriginData::~SecurityOriginData(WebCore::SecurityOriginData *this)
{
  WebCore::SecurityOriginData::~SecurityOriginData(this);
}

{
  mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::~variant(this);
}

uint64_t mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::~variant(uint64_t a1)
{
  mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::~variant(a1);
  return a1;
}

{
  mpark::detail::impl<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::~impl(a1);
  return a1;
}

uint64_t mpark::detail::impl<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::~impl(uint64_t a1)
{
  mpark::detail::impl<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::~impl(a1);
  return a1;
}

{
  mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~copy_assignment(a1);
  return a1;
}

uint64_t mpark::detail::destructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~destructor(uint64_t a1)
{
  mpark::detail::destructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::destroy(a1);
  mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::~base(a1);
  return a1;
}

_BYTE *std::construct_at[abi:sn200100]<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WebCore::SecurityOriginData*>(_BYTE *a1)
{
  if (!a1)
  {
    __break(1u);
  }

  return WebCore::SecurityOriginData::SecurityOriginData(a1);
}

void std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::operator=[abi:sn200100](uint64_t *a1, uint64_t *a2)
{
  v3 = std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::release[abi:sn200100](a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::reset[abi:sn200100](a1, v3);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a2);
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::reset[abi:sn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    return std::default_delete<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::operator()[abi:sn200100](result, v2);
  }

  return result;
}

uint64_t std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::release[abi:sn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  return v2;
}

uint64_t std::default_delete<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::operator()[abi:sn200100](uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    return (*(*a2 + 8))(a2, a2);
  }

  return result;
}

void std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::operator*[abi:sn200100](uint64_t a1)
{
  if ((std::__optional_storage_base<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,false>::has_value[abi:sn200100](a1) & 1) == 0)
  {
    __break(1u);
  }

  std::__to_address[abi:sn200100]<char const>();
}

uint64_t std::default_delete<WTF::Detail::CallableWrapperBase<void>>::operator()[abi:sn200100](uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    return (*(*a2 + 8))(a2, a2);
  }

  return result;
}

uint64_t *WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::~WeakPtr(uint64_t *a1)
{
  v3[1] = a1;
  v3[0] = 0;
  v3[3] = a1;
  v3[2] = v3;
  v4 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WTF::DefaultWeakPtrImpl,(WTF::DestructionThread)0>::deref(v4);
  }

  return a1;
}

_BYTE *mpark::detail::base<(mpark::detail::Trait)1,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::base<0ul>(_BYTE *a1)
{
  mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::recursive_union<>(a1);
  a1[288] = 0;
  return a1;
}

void *mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::recursive_union<>(void *a1)
{
  mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::recursive_union<>(a1);
  return a1;
}

{
  mpark::detail::alt<0ul,WebCore::PublicKeyCredentialCreationOptions>::alt<>(a1);
  return a1;
}

void *mpark::detail::alt<0ul,WebCore::PublicKeyCredentialCreationOptions>::alt<>(void *a1)
{
  mpark::detail::alt<0ul,WebCore::PublicKeyCredentialCreationOptions>::alt<>(a1);
  return a1;
}

{
  memset(a1, 0, 0x120uLL);
  WebCore::PublicKeyCredentialCreationOptions::PublicKeyCredentialCreationOptions(a1);
  return a1;
}

uint64_t mpark::variant<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::variant<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,0>(uint64_t a1)
{
  mpark::variant<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::variant<WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,0>(a1);
  return a1;
}

{
  _ZN5mpark6detail4implIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS2_12RawPtrTraitsIS5_EENS2_21DefaultRefDerefTraitsIS5_EEEENS3_INS4_11ArrayBufferENS6_ISB_EENS8_ISB_EEEEEECI1NS0_4baseILNS0_5TraitE1EJSA_SE_EEEILm0EJEEENS_16in_place_index_tIXT_EEEDpOT0_(a1);
  return a1;
}

uint64_t mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::base<0ul>(uint64_t a1)
{
  mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::recursive_union<>(a1);
  *(a1 + 8) = 0;
  return a1;
}

void *mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::recursive_union<>(void *a1)
{
  mpark::detail::recursive_union<(mpark::detail::Trait)1,0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::recursive_union<>(a1);
  return a1;
}

{
  mpark::detail::alt<0ul,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>>::alt<>(a1);
  return a1;
}

WebCore::SecurityOriginData *std::optional<WebCore::SecurityOriginData>::~optional(WebCore::SecurityOriginData *a1)
{
  std::optional<WebCore::SecurityOriginData>::~optional(a1);
  return a1;
}

{
  std::__optional_move_assign_base<WebCore::SecurityOriginData,false>::~__optional_move_assign_base(a1);
  return a1;
}

uint64_t mpark::variant<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::~variant(uint64_t a1)
{
  mpark::variant<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::~variant(a1);
  return a1;
}

{
  mpark::detail::impl<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::~impl(a1);
  return a1;
}

WebCore::SecurityOriginData *std::__optional_destruct_base<WebCore::SecurityOriginData,false>::~__optional_destruct_base[abi:sn200100](WebCore::SecurityOriginData *a1)
{
  if (*(a1 + 32))
  {
    WebCore::SecurityOriginData::~SecurityOriginData(a1);
  }

  return a1;
}

uint64_t mpark::detail::impl<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::~impl(uint64_t a1)
{
  mpark::detail::impl<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>::~impl(a1);
  return a1;
}

{
  mpark::detail::copy_assignment<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>,(mpark::detail::Trait)1>::~copy_assignment(a1);
  return a1;
}

uint64_t mpark::detail::destructor<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>,(mpark::detail::Trait)1>::~destructor(uint64_t a1)
{
  mpark::detail::destructor<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>,(mpark::detail::Trait)1>::destroy(a1);
  mpark::detail::base<(mpark::detail::Trait)1,WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>,WTF::RefPtr<JSC::ArrayBuffer,WTF::RawPtrTraits<JSC::ArrayBuffer>,WTF::DefaultRefDerefTraits<JSC::ArrayBuffer>>>::~base(a1);
  return a1;
}

WTF::ThreadSafeRefCountedBase **WTF::WeakPtr<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr<void>(WTF::ThreadSafeRefCountedBase **a1, uint64_t a2)
{
  v5 = WTF::CanMakeWeakPtrBase<WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>,(WTF::WeakPtrFactoryInitialization)0>::weakImpl((a2 + 8));
  if (v5)
  {
    WTF::ThreadSafeRefCountedBase::ref(v5);
  }

  *a1 = v5;
  return a1;
}

uint64_t *WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(uint64_t *a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  result = WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(a1);
  if ((result & 1) == 0)
  {
    v4 = WTF::WeakPtrImplBase<WTF::DefaultWeakPtrImpl>::operator new(0x10);
    WTF::DefaultWeakPtrImpl::DefaultWeakPtrImpl<WebKit::AuthenticatorObserver>(v4, v6);
    WTF::adoptRef<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>(v4, &v5);
    WTF::RefPtr<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>::operator=<WTF::DefaultWeakPtrImpl>(a1, &v5);
    return WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>::~Ref(&v5);
  }

  return result;
}

uint64_t WTF::DefaultWeakPtrImpl::DefaultWeakPtrImpl<WebKit::AuthenticatorObserver>(uint64_t a1, uint64_t a2)
{
  WTF::DefaultWeakPtrImpl::DefaultWeakPtrImpl<WebKit::AuthenticatorObserver>(a1, a2);
  return a1;
}

{
  WTF::WeakPtrImplBase<WTF::DefaultWeakPtrImpl>::WeakPtrImplBase<WebKit::AuthenticatorObserver>(a1, a2);
  return a1;
}

uint64_t *WTF::RefPtr<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>::operator=<WTF::DefaultWeakPtrImpl>(uint64_t *a1, uint64_t *a2)
{
  v4[2] = a1;
  v4[1] = a2;
  WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(v4, a2);
  WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>::swap<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>(a1, v4);
  v4[3] = v4;
  v5[1] = v4;
  v5[0] = 0;
  v5[3] = v4;
  v5[2] = v5;
  v6 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(v4);
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WTF::DefaultWeakPtrImpl,(WTF::DestructionThread)0>::deref(v6);
  }

  return a1;
}

uint64_t *WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>::~Ref(uint64_t *a1)
{
  WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>::~Ref(a1);
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
    WTF::ThreadSafeRefCounted<WTF::DefaultWeakPtrImpl,(WTF::DestructionThread)0>::deref(v3);
  }

  return v5;
}

uint64_t WTF::WeakPtrImplBase<WTF::DefaultWeakPtrImpl>::WeakPtrImplBase<WebKit::AuthenticatorObserver>(uint64_t a1, uint64_t a2)
{
  WTF::ThreadSafeRefCounted<WTF::DefaultWeakPtrImpl,(WTF::DestructionThread)0>::ThreadSafeRefCounted(a1);
  *(a1 + 8) = a2;
  return a1;
}

std::__cxx_atomic_base_impl<unsigned int> *std::atomic<unsigned int>::atomic[abi:sn200100](std::__cxx_atomic_base_impl<unsigned int> *a1, unsigned int a2)
{
  std::atomic<unsigned int>::atomic[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__atomic_base<unsigned int,true>::__atomic_base[abi:sn200100](a1, a2);
  return a1;
}

std::__cxx_atomic_base_impl<unsigned int> *std::__cxx_atomic_impl<unsigned int,std::__cxx_atomic_base_impl<unsigned int>>::__cxx_atomic_impl[abi:sn200100](std::__cxx_atomic_base_impl<unsigned int> *a1, unsigned int a2)
{
  std::__cxx_atomic_impl<unsigned int,std::__cxx_atomic_base_impl<unsigned int>>::__cxx_atomic_impl[abi:sn200100](a1, a2);
  return a1;
}

{
  std::__cxx_atomic_base_impl<unsigned int>::__cxx_atomic_base_impl(a1, a2);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>>::reset[abi:sn200100](a1);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>>::reset[abi:sn200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::default_delete<WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>>::operator()[abi:sn200100](result, v1);
  }

  return result;
}

uint64_t std::default_delete<WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>>::operator()[abi:sn200100](uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    return (*(*a2 + 8))(a2, a2);
  }

  return result;
}

void std::optional<WebCore::MediationRequirement>::operator*[abi:sn200100](uint64_t a1)
{
  if ((std::__optional_storage_base<WebCore::MediationRequirement,false>::has_value[abi:sn200100](a1) & 1) == 0)
  {
    __break(1u);
  }

  std::__to_address[abi:sn200100]<char const>();
}

void mpark::detail::generic_get<1ul,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>(uint64_t a1)
{
  v3 = a1;
  v1 = mpark::holds_alternative<1ul,WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData>(a1);
  if (!v1)
  {
    mpark::throw_bad_variant_access(v1);
  }

  mpark::detail::generic_get_impl<1ul,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>::generic_get_impl(&v2);
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::generic_get_impl<1ul,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>::operator()();
}

uint64_t *WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>::~Ref(uint64_t *a1)
{
  WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>::~Ref(a1);
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
    WTF::RefCountedAndCanMakeWeakPtr<WebKit::Authenticator>::deref(v3 + 8);
  }

  return v5;
}

uint64_t WTF::RefCounted<WebKit::Authenticator>::deref(WTF::RefCountedBase *a1)
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

uint64_t *WTF::Function<void ()(WTF::String const&)>::Function(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::String const&)>::Function(a1, a2);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WTF::String const&>>::unique_ptr[abi:sn200100](a1, a2);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WTF::String const&>>::unique_ptr[abi:sn200100](uint64_t *a1, uint64_t *a2)
{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WTF::String const&>>::unique_ptr[abi:sn200100](a1, a2);
  return a1;
}

{
  *a1 = std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::release[abi:sn200100](a2);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a2);
  return a1;
}

WTF::ThreadLikeAssertion *WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse *)>::~CompletionHandler(WTF::ThreadLikeAssertion *a1)
{
  WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse *)>::~CompletionHandler(a1);
  return a1;
}

{
  v4 = a1;
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v3);
  WTF::ThreadLikeAssertion::operator=();
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v3);
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(a1);
  WTF::Function<void ()(WebCore::AuthenticatorAssertionResponse *)>::~Function(a1);
  return a1;
}

uint64_t WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1)
{
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1);
  return a1;
}

{
  if (*(a1 + 12))
  {
    v2 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
    WTF::VectorTypeOperations<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>::destruct(v2, v3);
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::VectorBuffer<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::FastMalloc>::~VectorBuffer(a1);
  return a1;
}

WTF::ThreadLikeAssertion *WTF::ThreadLikeAssertion::ThreadLikeAssertion(WTF::ThreadLikeAssertion *a1)
{
  WTF::AnyThreadLike::operator unsigned int();
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(a1);
  return a1;
}

uint64_t *WTF::Function<void ()(WebCore::AuthenticatorAssertionResponse *)>::~Function(uint64_t *a1)
{
  WTF::Function<void ()(WebCore::AuthenticatorAssertionResponse *)>::~Function(a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WebCore::AuthenticatorAssertionResponse *>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WebCore::AuthenticatorAssertionResponse *>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WebCore::AuthenticatorAssertionResponse *>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WebCore::AuthenticatorAssertionResponse *>>::reset[abi:sn200100](a1, 0);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WebCore::AuthenticatorAssertionResponse *>>::reset[abi:sn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    return std::default_delete<WTF::Detail::CallableWrapperBase<void,WebCore::AuthenticatorAssertionResponse *>>::operator()[abi:sn200100](result, v2);
  }

  return result;
}

uint64_t std::default_delete<WTF::Detail::CallableWrapperBase<void,WebCore::AuthenticatorAssertionResponse *>>::operator()[abi:sn200100](uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    return (*(*a2 + 8))(a2, a2);
  }

  return result;
}

uint64_t *WTF::VectorDestructor<true,WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>>::destruct(uint64_t *result, uint64_t *a2)
{
  for (i = result; i != a2; ++i)
  {
    result = WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>::~Ref(i);
  }

  return result;
}

WTF::ThreadLikeAssertion *WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)>::~CompletionHandler(WTF::ThreadLikeAssertion *a1)
{
  WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)>::~CompletionHandler(a1);
  return a1;
}

{
  v4 = a1;
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v3);
  WTF::ThreadLikeAssertion::operator=();
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v3);
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(a1);
  WTF::Function<void ()(WebKit::LocalAuthenticatorPolicy)>::~Function(a1);
  return a1;
}

uint64_t *WTF::Function<void ()(WebKit::LocalAuthenticatorPolicy)>::~Function(uint64_t *a1)
{
  WTF::Function<void ()(WebKit::LocalAuthenticatorPolicy)>::~Function(a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WebKit::LocalAuthenticatorPolicy>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WebKit::LocalAuthenticatorPolicy>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WebKit::LocalAuthenticatorPolicy>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WebKit::LocalAuthenticatorPolicy>>::reset[abi:sn200100](a1);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WebKit::LocalAuthenticatorPolicy>>::reset[abi:sn200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::default_delete<WTF::Detail::CallableWrapperBase<void,WebKit::LocalAuthenticatorPolicy>>::operator()[abi:sn200100](result, v1);
  }

  return result;
}

uint64_t std::default_delete<WTF::Detail::CallableWrapperBase<void,WebKit::LocalAuthenticatorPolicy>>::operator()[abi:sn200100](uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    return (*(*a2 + 8))(a2, a2);
  }

  return result;
}

WTF::ThreadLikeAssertion *WTF::CompletionHandler<void ()(LAContext *)>::~CompletionHandler(WTF::ThreadLikeAssertion *a1)
{
  WTF::CompletionHandler<void ()(LAContext *)>::~CompletionHandler(a1);
  return a1;
}

{
  v4 = a1;
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v3);
  WTF::ThreadLikeAssertion::operator=();
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v3);
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(a1);
  WTF::Function<void ()(LAContext *)>::~Function(a1);
  return a1;
}

uint64_t *WTF::Function<void ()(LAContext *)>::~Function(uint64_t *a1)
{
  WTF::Function<void ()(LAContext *)>::~Function(a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,LAContext *>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,LAContext *>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,LAContext *>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,LAContext *>>::reset[abi:sn200100](a1);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,LAContext *>>::reset[abi:sn200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::default_delete<WTF::Detail::CallableWrapperBase<void,LAContext *>>::operator()[abi:sn200100](result, v1);
  }

  return result;
}

uint64_t std::default_delete<WTF::Detail::CallableWrapperBase<void,LAContext *>>::operator()[abi:sn200100](uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    return (*(*a2 + 8))(a2, a2);
  }

  return result;
}

_DWORD *std::min[abi:sn200100]<unsigned int,std::__less<void,void>>(_DWORD *a1, _DWORD *a2)
{
  if (std::__less<void,void>::operator()[abi:sn200100]<unsigned int,unsigned int>(&v5, a2, a1))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

double *std::max[abi:sn200100]<WTF::Seconds,std::__less<void,void>>(double *a1, double *a2)
{
  if (std::__less<void,void>::operator()[abi:sn200100]<WTF::Seconds,WTF::Seconds>(&v5, a1, a2))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

uint64_t WTF::operator<=>(double a1, double a2)
{
  if (a1 == a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -127;
  }

  if (a1 > a2)
  {
    v2 = 1;
  }

  if (a1 < a2)
  {
    v2 = -1;
  }

  v4 = v2;
  if (!std::operator==[abi:sn200100](v2))
  {
    return v4;
  }

  else
  {
    return std::strong_ordering::operator std::partial_ordering[abi:sn200100]();
  }
}

uint64_t std::strong_ordering::operator std::partial_ordering[abi:sn200100]()
{
  if (std::strong_ordering::equal)
  {
    if (std::strong_ordering::equal < 0)
    {
      v0 = &std::partial_ordering::less;
    }

    else
    {
      v0 = &std::partial_ordering::greater;
    }
  }

  else
  {
    v0 = &std::partial_ordering::equivalent;
  }

  return *v0;
}

uint64_t std::__optional_destruct_base<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,true>::__optional_destruct_base[abi:sn200100]<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>&>(uint64_t result, void *a2)
{
  *result = *a2;
  *(result + 8) = 1;
  return result;
}

WTF::String *WTF::String::String(WTF::String *this, atomic_uint **a2)
{
  WTF::String::String(this, a2);
  return this;
}

{
  v5 = *a2;
  if (*a2)
  {
    WTF::StringImpl::ref(v5);
  }

  *this = v5;
  return this;
}

void mpark::detail::generic_get<0ul,mpark::variant<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions> const&>(uint64_t a1)
{
  v3 = a1;
  v1 = mpark::holds_alternative<0ul,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(a1);
  if (!v1)
  {
    mpark::throw_bad_variant_access(v1);
  }

  WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v2);
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::generic_get_impl<0ul,mpark::variant<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions> const&>::operator()();
}

void mpark::detail::generic_get<1ul,mpark::variant<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions> const&>(uint64_t a1)
{
  v3 = a1;
  v1 = mpark::holds_alternative<1ul,WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>(a1);
  if (!v1)
  {
    mpark::throw_bad_variant_access(v1);
  }

  WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v2);
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::generic_get_impl<1ul,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &>::operator()();
}

const void **WebCore::ResourceRequest::ResourceRequest(const void **this, const WebCore::ResourceRequest *a2)
{
  WebCore::ResourceRequest::ResourceRequest(this, a2);
  return this;
}

{
  WebCore::ResourceRequestBase::ResourceRequestBase(this, a2);
  WTF::RetainPtr<NSURLRequest>::RetainPtr(this + 24, a2 + 24);
  return this;
}

WebCore::SecurityOriginData *WebCore::SecurityOriginData::SecurityOriginData(WebCore::SecurityOriginData *this, const WebCore::SecurityOriginData *a2)
{
  WebCore::SecurityOriginData::SecurityOriginData(this, a2);
  return this;
}

{
  mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::variant(this, a2);
  return this;
}

const void **WebCore::CertificateInfo::CertificateInfo(const void **this, const void **a2)
{
  WebCore::CertificateInfo::CertificateInfo(this, a2);
  return this;
}

{
  WTF::RetainPtr<NSURLRequest>::RetainPtr(this, a2);
  return this;
}

WebCore::ResourceRequestBase *WebCore::ResourceRequestBase::ResourceRequestBase(WebCore::ResourceRequestBase *this, atomic_uint **a2)
{
  WebCore::ResourceRequestBase::RequestData::RequestData(this, a2);
  WTF::String::String((this + 152), a2 + 19);
  WTF::String::String((this + 160), a2 + 20);
  v5 = a2[21];
  if (v5)
  {
    WTF::RefCountedBase::ref(v5);
  }

  *(this + 21) = v5;
  *(this + 22) = a2[22];
  *(this + 184) = *(a2 + 184);
  return this;
}

const void **WTF::RetainPtr<NSURLRequest>::RetainPtr(const void **a1, const void **a2)
{
  WTF::RetainPtr<NSURLRequest>::RetainPtr(a1, a2);
  return a1;
}

{
  *a1 = *a2;
  if (*a1)
  {
    WTF::RetainPtr<NSURLRequest>::retainFoundationPtr(*a1);
  }

  return a1;
}

WebCore::ResourceRequestBase::RequestData *WebCore::ResourceRequestBase::RequestData::RequestData(WebCore::ResourceRequestBase::RequestData *this, atomic_uint **a2)
{
  WebCore::ResourceRequestBase::RequestData::RequestData(this, a2);
  return this;
}

{
  WTF::URL::URL(this, a2);
  WTF::URL::URL((this + 40), a2 + 5);
  *(this + 10) = a2[10];
  WTF::String::String((this + 88), a2 + 11);
  WebCore::HTTPHeaderMap::HTTPHeaderMap((this + 96), (a2 + 12));
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this + 128, (a2 + 16));
  *(this + 36) = *(a2 + 36);
  *(this + 148) = *(a2 + 148);
  return this;
}

WTF::URL *WTF::URL::URL(WTF::URL *this, atomic_uint **a2)
{
  WTF::URL::URL(this, a2);
  return this;
}

{
  WTF::String::String(this, a2);
  *(this + 1) = a2[1];
  *(this + 2) = a2[2];
  *(this + 3) = a2[3];
  *(this + 4) = a2[4];
  return this;
}

WebCore::HTTPHeaderMap *WebCore::HTTPHeaderMap::HTTPHeaderMap(WebCore::HTTPHeaderMap *this, const WebCore::HTTPHeaderMap *a2)
{
  WebCore::HTTPHeaderMap::HTTPHeaderMap(this, a2);
  return this;
}

{
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::Vector(this, a2);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::Vector(this + 16, a2 + 16);
  return this;
}

uint64_t WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::Vector(uint64_t a1, uint64_t a2)
{
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::Vector(a1, a2);
  return a1;
}

{
  v3 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  v4 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  WTF::VectorBuffer<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::FastMalloc>::VectorBuffer(a1, v3, v4);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  if (WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1))
  {
    v5 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a2);
    v6 = WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a2);
    v7 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    WTF::VectorTypeOperations<WebCore::HTTPHeaderMap::CommonHeader>::uninitializedCopy(v5, v6, v7);
  }

  return a1;
}

uint64_t WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::Vector(uint64_t a1, uint64_t a2)
{
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::Vector(a1, a2);
  return a1;
}

{
  v3 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  v4 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  WTF::VectorBuffer<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::FastMalloc>::VectorBuffer(a1, v3, v4);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a2);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  if (WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1))
  {
    v5 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a2);
    v6 = WTF::Vector<WebCore::PublicKeyCredentialParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a2);
    v7 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    WTF::VectorTypeOperations<WebCore::HTTPHeaderMap::UncommonHeader>::uninitializedCopy(v5, v6, v7);
  }

  return a1;
}

uint64_t WTF::VectorBuffer<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::FastMalloc>::VectorBuffer(uint64_t a1, unint64_t a2, int a3)
{
  WTF::VectorBufferBase<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,WTF::FastMalloc>::VectorBufferBase(a1);
  *(a1 + 12) = a3;
  if (a2)
  {
    WTF::VectorBufferBase<WebCore::HTTPHeaderMap::CommonHeader,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(a1, a2);
  }

  return a1;
}

uint64_t WTF::VectorBufferBase<WebCore::HTTPHeaderMap::CommonHeader,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (!WTF::isValidCapacityForVector<WebCore::HTTPHeaderMap::CommonHeader>(a2))
  {
    __break(0xC471u);
    JUMPOUT(0x19D66C368);
  }

  result = WTF::FastMalloc::malloc((16 * a2));
  *(a1 + 8) = a2;
  *a1 = result;
  return result;
}

WebCore::HTTPHeaderMap::CommonHeader *WTF::VectorCopier<false,WebCore::HTTPHeaderMap::CommonHeader>::uninitializedCopy<WebCore::HTTPHeaderMap::CommonHeader>(WebCore::HTTPHeaderMap::CommonHeader *result, atomic_uint **a2, uint64_t a3)
{
  for (i = result; i != a2; i += 2)
  {
    v3 = operator new(16, 0, a3);
    result = WebCore::HTTPHeaderMap::CommonHeader::CommonHeader(v3, i);
    a3 += 16;
  }

  return result;
}

WebCore::HTTPHeaderMap::CommonHeader *WebCore::HTTPHeaderMap::CommonHeader::CommonHeader(WebCore::HTTPHeaderMap::CommonHeader *this, atomic_uint **a2)
{
  WebCore::HTTPHeaderMap::CommonHeader::CommonHeader(this, a2);
  return this;
}

{
  *this = *a2;
  WTF::String::String((this + 8), a2 + 1);
  return this;
}

WebCore::HTTPHeaderMap::UncommonHeader *WTF::VectorCopier<false,WebCore::HTTPHeaderMap::UncommonHeader>::uninitializedCopy<WebCore::HTTPHeaderMap::UncommonHeader>(WebCore::HTTPHeaderMap::UncommonHeader *result, atomic_uint **a2, uint64_t a3)
{
  for (i = result; i != a2; i += 2)
  {
    v3 = operator new(16, 0, a3);
    result = WebCore::HTTPHeaderMap::UncommonHeader::UncommonHeader(v3, i);
    a3 += 16;
  }

  return result;
}

WebCore::HTTPHeaderMap::UncommonHeader *WebCore::HTTPHeaderMap::UncommonHeader::UncommonHeader(WebCore::HTTPHeaderMap::UncommonHeader *this, atomic_uint **a2)
{
  WebCore::HTTPHeaderMap::UncommonHeader::UncommonHeader(this, a2);
  return this;
}

{
  WTF::String::String(this, a2);
  WTF::String::String((this + 8), a2 + 1);
  return this;
}

void WTF::RefCountedBase::ref(WTF::RefCountedBase *this)
{
  WTF::RefCountedBase::applyRefDerefThreadingCheck(this);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(this);
  ++*this;
}

_BYTE *mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::variant(_BYTE *a1, uint64_t a2)
{
  mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::variant(a1, a2);
  return a1;
}

{
  mpark::detail::impl<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::impl(a1, a2);
  return a1;
}

_BYTE *mpark::detail::impl<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::impl(_BYTE *a1, uint64_t a2)
{
  mpark::detail::impl<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::impl(a1, a2);
  return a1;
}

{
  mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::copy_assignment(a1, a2);
  return a1;
}

_BYTE *mpark::detail::copy_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::copy_constructor(_BYTE *a1, uint64_t a2)
{
  _ZN5mpark6detail16copy_constructorINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS3_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS3_26OpaqueOriginIdentifierTypeENS7_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEELNS0_5TraitE1EECI2NS0_4baseILSF_1EJS5_SD_EEEENS0_11valueless_tE(a1);
  mpark::detail::constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_construct<mpark::detail::copy_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(a1, a2);
  return a1;
}

void mpark::detail::constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_construct<mpark::detail::copy_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  mpark::detail::destructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::destroy(a1);
  if (!mpark::detail::base<(mpark::detail::Trait)1,WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::valueless_by_exception(a2))
  {
    v2 = mpark::detail::base<(mpark::detail::Trait)1,WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>::index(a2);
    std::__to_address[abi:sn200100]<char const>();
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructIRKNS0_16copy_constructorISH_LNS0_5TraitE1EEEEEvRSI_OT_EUlRSQ_OT0_E_JSP_SO_EEEDcmSR_DpOT0_(v2);
    *(a1 + 24) = *(a2 + 24);
  }
}

void _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructIRKNS0_16copy_constructorISH_LNS0_5TraitE1EEEEEvRSI_OT_EUlRSQ_OT0_E_JSP_SO_EEEDcmSR_DpOT0_(uint64_t a1)
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
      _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_11constructorINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS8_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS8_26OpaqueOriginIdentifierTypeENSC_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructIRKNS0_16copy_constructorISJ_LNS0_5TraitE1EEEEEvRSK_OT_EUlRSS_OT0_E_JRNS0_3altILm0ESA_EERKSZ_EEEDcST_DpOT0_();
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
      _ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_11constructorINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS8_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS8_26OpaqueOriginIdentifierTypeENSC_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructINS0_16move_constructorISJ_LNS0_5TraitE1EEEEEvRSK_OT_EUlRSQ_OT0_E_JRNS0_3altILm1ESI_EESX_EEEDcSR_DpOT0_();
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

WebCore::SecurityOriginData::Tuple *_ZN5mpark6detail10visitation4base23visit_return_type_checkIvvE6invokeIZNS0_11constructorINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS8_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS8_26OpaqueOriginIdentifierTypeENSC_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructIRKNS0_16copy_constructorISJ_LNS0_5TraitE1EEEEEvRSK_OT_EUlRSS_OT0_E_JRNS0_3altILm0ESA_EERKSZ_EEEDcST_DpOT0_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176invokeIZNS_6detail11constructorINS3_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructIRKNS3_16copy_constructorISH_LNS3_5TraitE1EEEEEvRSI_OT_EUlRSQ_OT0_E_JRNS3_3altILm0ES8_EERKSX_EEEDTclsr6detailE6invokeclsr3libE7forwardISQ_Efp_Espclsr3libE7forwardIT0_Efp0_EEESR_DpOS11_();
}

WebCore::SecurityOriginData::Tuple *_ZN5mpark3lib5cpp176invokeIZNS_6detail11constructorINS3_6traitsIJN7WebCore18SecurityOriginData5TupleENS6_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS6_26OpaqueOriginIdentifierTypeENSA_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructIRKNS3_16copy_constructorISH_LNS3_5TraitE1EEEEEvRSI_OT_EUlRSQ_OT0_E_JRNS3_3altILm0ES8_EERKSX_EEEDTclsr6detailE6invokeclsr3libE7forwardISQ_Efp_Espclsr3libE7forwardIT0_Efp0_EEESR_DpOS11_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZN5mpark3lib5cpp176detail6invokeIZNS_6detail11constructorINS4_6traitsIJN7WebCore18SecurityOriginData5TupleENS7_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS7_26OpaqueOriginIdentifierTypeENSB_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructIRKNS4_16copy_constructorISI_LNS4_5TraitE1EEEEEvRSJ_OT_EUlRSR_OT0_E_JRNS4_3altILm0ES9_EERKSY_EEEDTclclsr3libE7forwardISR_Efp_Espclsr3libE7forwardIT0_Efp0_EEESS_DpOS12_();
}

WebCore::SecurityOriginData::Tuple *_ZN5mpark3lib5cpp176detail6invokeIZNS_6detail11constructorINS4_6traitsIJN7WebCore18SecurityOriginData5TupleENS7_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS7_26OpaqueOriginIdentifierTypeENSB_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructIRKNS4_16copy_constructorISI_LNS4_5TraitE1EEEEEvRSJ_OT_EUlRSR_OT0_E_JRNS4_3altILm0ES9_EERKSY_EEEDTclclsr3libE7forwardISR_Efp_Espclsr3libE7forwardIT0_Efp0_EEESS_DpOS12_()
{
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  std::__to_address[abi:sn200100]<char const>();
  return _ZZN5mpark6detail11constructorINS0_6traitsIJN7WebCore18SecurityOriginData5TupleENS3_16ProcessQualifiedIN3WTF23ObjectIdentifierGenericINS3_26OpaqueOriginIdentifierTypeENS7_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEEEEEE17generic_constructIRKNS0_16copy_constructorISE_LNS0_5TraitE1EEEEEvRSF_OT_ENKUlRSN_OT0_E_clINS0_3altILm0ES5_EERKSV_EEDaSP_SR_();
}

WebCore::SecurityOriginData::Tuple *mpark::detail::constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::construct_alt<0ul,WebCore::SecurityOriginData::Tuple,WebCore::SecurityOriginData::Tuple const&>()
{
  std::__to_address[abi:sn200100]<char const>();
  v1 = v0;
  std::__to_address[abi:sn200100]<char const>();
  mpark::detail::alt<0ul,WebCore::SecurityOriginData::Tuple>::alt<WebCore::SecurityOriginData::Tuple const&>(v1);
  return v1;
}

WebCore::SecurityOriginData::Tuple *mpark::detail::alt<0ul,WebCore::SecurityOriginData::Tuple>::alt<WebCore::SecurityOriginData::Tuple const&>(WebCore::SecurityOriginData::Tuple *a1)
{
  mpark::detail::alt<0ul,WebCore::SecurityOriginData::Tuple>::alt<WebCore::SecurityOriginData::Tuple const&>(a1);
  return a1;
}

{
  std::__to_address[abi:sn200100]<char const>();
  WebCore::SecurityOriginData::Tuple::Tuple(a1, v2);
  return a1;
}

WebCore::SecurityOriginData::Tuple *WebCore::SecurityOriginData::Tuple::Tuple(WebCore::SecurityOriginData::Tuple *this, atomic_uint **a2)
{
  WebCore::SecurityOriginData::Tuple::Tuple(this, a2);
  return this;
}

{
  WTF::String::String(this, a2);
  WTF::String::String((this + 8), a2 + 1);
  *(this + 4) = *(a2 + 4);
  return this;
}

uint64_t *WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::HashTable(uint64_t *a1, WTF::RefCountedBase *a2)
{
  WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::HashTable(a1, a2);
  return a1;
}

{
  *a1 = 0;
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a2);
  *a1 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a2);
  return a1;
}

void WebCore::CertificateInfo::~CertificateInfo(WebCore::CertificateInfo *this)
{
  WebCore::CertificateInfo::~CertificateInfo(this);
}

{
  WTF::RetainPtr<NSURLRequest>::~RetainPtr(this);
}

void WebCore::ResourceRequest::~ResourceRequest(WebCore::ResourceRequest *this)
{
  WebCore::ResourceRequest::~ResourceRequest(this);
}

{
  WTF::RetainPtr<NSURLRequest>::~RetainPtr(this + 24);
  WebCore::ResourceRequestBase::~ResourceRequestBase(this);
}

void WebCore::ResourceRequestBase::~ResourceRequestBase(WebCore::ResourceRequestBase *this)
{
  v3[1] = this + 168;
  v3[0] = 0;
  v3[3] = this + 168;
  v3[2] = v3;
  v4 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this + 21);
  if (v4)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v4);
  }

  v5 = this + 160;
  v6 = this + 160;
  v7[1] = this + 160;
  v7[0] = 0;
  v7[3] = this + 160;
  v7[2] = v7;
  v8 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this + 20);
  if (v8)
  {
    WTF::StringImpl::deref(v8);
  }

  v9 = this + 152;
  v10 = this + 152;
  v11[1] = this + 152;
  v11[0] = 0;
  v11[3] = this + 152;
  v11[2] = v11;
  v12 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this + 19);
  if (v12)
  {
    WTF::StringImpl::deref(v12);
  }

  WebCore::ResourceRequestBase::RequestData::~RequestData(this, v2);
}

void WebCore::ResourceRequestBase::RequestData::~RequestData(WebCore::ResourceRequestBase::RequestData *this, void *a2)
{
  WebCore::ResourceRequestBase::RequestData::~RequestData(this, a2);
}

{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 128, a2);
  WebCore::HTTPHeaderMap::~HTTPHeaderMap((this + 96), v3);
  v4[1] = this + 88;
  v4[0] = 0;
  v4[3] = this + 88;
  v4[2] = v4;
  v5 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this + 11);
  if (v5)
  {
    WTF::StringImpl::deref(v5);
  }

  WTF::URL::~URL((this + 40));
  WTF::URL::~URL(this);
}

void WebCore::HTTPHeaderMap::~HTTPHeaderMap(WebCore::HTTPHeaderMap *this, WTF::StringImpl *a2)
{
  WebCore::HTTPHeaderMap::~HTTPHeaderMap(this, a2);
}

{
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(this + 4, a2);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(this, v3);
}

void WTF::URL::~URL(WTF::URL *this)
{
  WTF::URL::~URL(this);
}

{
  v1[1] = this;
  v1[0] = 0;
  v1[3] = this;
  v1[2] = v1;
  v2 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(this);
  if (v2)
  {
    WTF::StringImpl::deref(v2);
  }
}

WTF::RefCountedBase *WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::~HashTable(WTF::RefCountedBase *a1)
{
  WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::~HashTable(a1);
  return a1;
}

{
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  if (*a1)
  {
    WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::deallocateTable(*a1, v2);
  }

  return a1;
}

uint64_t WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v4 = *(a1 - 4);
  for (i = 0; i < v4; ++i)
  {
    WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::isDeletedBucket();
  }

  return WTF::FastMalloc::free((a1 - 16), a2);
}

BOOL WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>::isDeletedValue(WTF *a1)
{
  v1 = a1;
  std::numeric_limits<unsigned char>::max[abi:sn200100](a1);
  return v1 == -2;
}

uint64_t WTF::RefCounted<WebKit::AuthenticatorManager>::deref(WTF::RefCountedBase *a1)
{
  result = WTF::RefCountedBase::derefBase(a1);
  if (result)
  {
    result = a1 - 16;
    if (a1 != 16)
    {
      return (*(*result + 24))();
    }
  }

  return result;
}

WTF::RefCountedBase *WTF::HashSet<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet(WTF::RefCountedBase *a1)
{
  WTF::HashSet<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet(a1);
  return a1;
}

{
  WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::~HashTable(a1);
  return a1;
}

void WTF::RunLoop::Timer::~Timer(WTF::RunLoop::Timer *this)
{
  WTF::RunLoop::Timer::~Timer(this);
}

{
  *this = &unk_1F10E6DC8;
  WTF::Function<void ()(void)>::~Function(this + 5);
  WTF::RunLoop::TimerBase::~TimerBase(this);
}

{
  WTF::RunLoop::Timer::~Timer(this);
  WTF::FastMalloc::fastFree(this, v2);
}

WTF::ThreadLikeAssertion *WTF::CompletionHandler<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::~CompletionHandler(WTF::ThreadLikeAssertion *a1)
{
  WTF::CompletionHandler<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::~CompletionHandler(a1);
  return a1;
}

{
  v4 = a1;
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v3);
  WTF::ThreadLikeAssertion::operator=();
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v3);
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(a1);
  WTF::Function<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::~Function(a1);
  return a1;
}

WTF::RefCountedBase *WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::~HashTable(WTF::RefCountedBase *a1)
{
  WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::~HashTable(a1);
  return a1;
}

{
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  if (*a1)
  {
    WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::deallocateTable(*a1, v2);
  }

  return a1;
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v4 = *(a1 - 4);
  for (i = 0; i < v4; ++i)
  {
    if (!WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::isDeletedBucket())
    {
      WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>::~Ref((a1 + 8 * i));
    }
  }

  return WTF::FastMalloc::free((a1 - 16), a2);
}

uint64_t *WTF::Function<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::~Function(uint64_t *a1)
{
  WTF::Function<void ()(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)>::~Function(a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::reset[abi:sn200100](a1, 0);
  return a1;
}

uint64_t WTF::AbstractRefCountedAndCanMakeWeakPtr<WebKit::AuthenticatorObserver>::~AbstractRefCountedAndCanMakeWeakPtr(uint64_t a1)
{
  WTF::CanMakeWeakPtrBase<WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>,(WTF::WeakPtrFactoryInitialization)0>::~CanMakeWeakPtrBase((a1 + 8));
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t *WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(uint64_t *a1)
{
  WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(a1);
  return a1;
}

{
  if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(a1))
  {
    v6 = a1;
    v7 = a1;
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

void WTF::RefCountedBase::~RefCountedBase(WTF::RefCountedBase *this)
{
  if (*this != 1)
  {
    isIntegralOrPointerType = WTF::isIntegralOrPointerType(this);
    WTF::isIntegralOrPointerType(isIntegralOrPointerType);
    __break(0xC471u);
    JUMPOUT(0x19D66E6A4);
  }
}

uint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref(void)const::{lambda(void)#1}::operator()(void *a1)
{
  result = *a1 - 8;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>(void)const::{lambda(void)#1}::operator()(uint64_t a1)
{
  v8 = a1;
  v1 = *a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 8))();
  }

  v7 = 0;
  WTF::Locker<WTF::Lock,void>::Locker(v6, v1);
  v3 = *(v1 + 2) - 1;
  *(v1 + 2) = v3;
  v7 = v3 != 0;
  result = WTF::Locker<WTF::Lock,void>::~Locker(v6);
  if (!v7)
  {
    if (v1)
    {
      return WTF::FastMalloc::fastFree(v1, v5);
    }
  }

  return result;
}

uint64_t *WTF::Function<void ()(WTF::String const&)>::~Function(uint64_t *a1)
{
  WTF::Function<void ()(WTF::String const&)>::~Function(a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WTF::String const&>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WTF::String const&>>::reset[abi:sn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    return std::default_delete<WTF::Detail::CallableWrapperBase<void,WTF::String const&>>::operator()[abi:sn200100](result, v2);
  }

  return result;
}

uint64_t std::default_delete<WTF::Detail::CallableWrapperBase<void,WTF::String const&>>::operator()[abi:sn200100](uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    return (*(*a2 + 8))(a2, a2);
  }

  return result;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WTF::String const&>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WTF::String const&>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void,WTF::String const&>>::reset[abi:sn200100](a1, 0);
  return a1;
}

uint64_t WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(uint64_t *a1, WTF *a2, WTF *a3)
{
  v8 = a2;
  v9 = a3;
  v7[2] = a1;
  v4 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::end(a1);
  v7[1] = v5;
  v7[0] = v4;
  result = WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::operator==(&v8, v7);
  if (result)
  {
    v10 = 0;
  }

  else
  {
    WTF::isIntegralOrPointerType(result);
    return WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::removeWithoutEntryConsistencyCheck(a1, v8, v9);
  }

  return result;
}

uint64_t WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::find(uint64_t *a1, WTF *a2)
{
  v5[3] = a1;
  v5[2] = a2;
  ShouldValidate = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::find<(WTF::ShouldValidateKey)1>(a1, a2);
  v5[1] = v3;
  v5[0] = ShouldValidate;
  WTF::HashTableConstIteratorAdapter<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport>::HashTableConstIteratorAdapter(&v6, v5);
  return v6;
}

BOOL WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::operator==(void *a1, uint64_t a2)
{
  v6[3] = a1;
  v6[2] = a2;
  v3 = WTF::HashTableIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::operator WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>(a2);
  v6[1] = v4;
  v6[0] = v3;
  return WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::operator==(a1, v6);
}

uint64_t WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::end(uint64_t *a1)
{
  v2 = *a1;
  v3 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSize(a1);
  return WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::makeKnownGoodIterator(a1, v2 + v3);
}

{
  v2 = *a1;
  v3 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSize(a1);
  return WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::makeKnownGoodConstIterator(a1, v2 + v3);
}

uint64_t WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::removeWithoutEntryConsistencyCheck(uint64_t *a1, WTF *a2, WTF *a3)
{
  v8[0] = a2;
  v8[1] = a3;
  v7[2] = a1;
  v4 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::end(a1);
  v7[1] = v5;
  v7[0] = v4;
  result = WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::operator==(v8, v7);
  if ((result & 1) == 0)
  {
    return WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::removeAndInvalidateWithoutEntryConsistencyCheck(a1, v8[0]);
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::makeKnownGoodIterator(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSize(a1);
  WTF::HashTableIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::HashTableIterator(&v7, a1, a2, v4 + v5);
  return v7;
}

uint64_t WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSize(void *a1)
{
  if (*a1)
  {
    return *(*a1 - 4);
  }

  else
  {
    return 0;
  }
}

void *WTF::HashTableIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::HashTableIterator(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WTF::HashTableIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::HashTableIterator(a1, a2, a3, a4);
  return a1;
}

{
  WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::HashTableConstIterator(a1, a2, a3, a4);
  return a1;
}

void *WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::HashTableConstIterator(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::HashTableConstIterator(a1, a2, a3, a4);
  return a1;
}

{
  *a1 = a3;
  a1[1] = a4;
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  return a1;
}

{
  WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::HashTableConstIterator(a1, a2, a3, a4);
  return a1;
}

{
  *a1 = a3;
  a1[1] = a4;
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::skipEmptyBuckets(a1);
  return a1;
}

uint64_t WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::remove(WTF *a1, WTF *a2)
{
  WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::deleteBucket(a2);
  v3 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::deletedCount(a1);
  WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::setDeletedCount(a1, v3 + 1);
  v4 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::keyCount(a1);
  WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::setKeyCount(a1, v4 - 1);
  shouldShrink = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::shouldShrink(a1);
  if (shouldShrink)
  {
    shouldShrink = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::shrink(a1);
  }

  return WTF::isIntegralOrPointerType(shouldShrink);
}

uint64_t WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::keyCount(void *a1)
{
  if (*a1)
  {
    return *(*a1 - 12);
  }

  else
  {
    return 0;
  }
}

BOOL WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::shouldShrink(void *a1)
{
  v2 = 6 * WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::keyCount(a1);
  v3 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSize(a1);
  v4 = 0;
  if (v2 < v3)
  {
    return WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSize(a1) > 8;
  }

  return v4;
}

uint64_t WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>::constructDeletedValue(WTF *a1)
{
  result = std::numeric_limits<unsigned char>::max[abi:sn200100](a1);
  *a1 = -2;
  return result;
}

uint64_t WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::rehash(WTF *a1, unsigned int a2, _BYTE *a3)
{
  WTF::isIntegralOrPointerType(a1);
  v12 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSize(a1);
  v11 = *a1;
  v10 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::keyCount(a1);
  *a1 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::allocateTable(a2);
  WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::setTableSize(a1, a2);
  WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::setTableSizeMask(a1, a2 - 1);
  WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::setDeletedCount(a1, 0);
  isDeletedBucket = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::setKeyCount(a1, v10);
  v9 = 0;
  for (i = 0; i != v12; ++i)
  {
    v7 = (v11 + i);
    isDeletedBucket = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::isDeletedBucket();
    if ((isDeletedBucket & 1) == 0)
    {
      isDeletedBucket = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::isEmptyBucket();
      if ((isDeletedBucket & 1) == 0)
      {
        WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::isReleasedWeakBucket();
        isDeletedBucket = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::reinsert(a1, v7);
        if (v7 == a3)
        {
          v9 = isDeletedBucket;
        }
      }
    }
  }

  if (v11)
  {
    isDeletedBucket = WTF::FastMalloc::free((v11 - 16), v5);
  }

  WTF::isIntegralOrPointerType(isDeletedBucket);
  return v9;
}

uint64_t WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::allocateTable(unsigned int a1)
{
  v3 = WTF::FastMalloc::malloc((a1 + 16)) + 16;
  for (i = 0; i < a1; ++i)
  {
    WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::initializeBucket(v3 + i);
  }

  return v3;
}

uint64_t WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::reinsert(uint64_t *a1, _BYTE *a2)
{
  std::__to_address[abi:sn200100]<char const>();
  v5 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::lookupForReinsert(a1, v3);
  *operator new(1, 0, v5) = *a2;
  return v5;
}

uint64_t WTF::GenericHashTraits<WebCore::AuthenticatorTransport>::constructEmptyValue<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>(uint64_t a1)
{
  v1 = operator new(1, 0, a1);
  result = WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>::emptyValue(v1);
  *v1 = -1;
  return result;
}

BOOL WTF::HashTraitsEmptyValueChecker<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,false>::isEmptyValue<WebCore::AuthenticatorTransport>(WTF *a1)
{
  v1 = *a1;
  WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>::emptyValue(a1);
  return v1 == -1;
}

uint64_t WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::lookupForReinsert<WTF::IdentityHashTranslator<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IntHash<WebCore::AuthenticatorTransport>>,WebCore::AuthenticatorTransport>(uint64_t *a1, WTF::RefCountedBase *a2)
{
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a2);
  v7 = *a1;
  v6 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSizeMask(a1);
  v5 = WTF::IdentityHashTranslator<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IntHash<WebCore::AuthenticatorTransport>>::hash<WebCore::AuthenticatorTransport>(a2) & v6;
  v4 = 0;
  while (!WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::isEmptyBucket())
  {
    ++v4;
    v5 = (v5 + v4) & v6;
  }

  return v7 + v5;
}

uint64_t WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSizeMask(void *a1)
{
  if (*a1)
  {
    return *(*a1 - 8);
  }

  else
  {
    return 0;
  }
}

uint64_t WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IntHash<WebCore::AuthenticatorTransport>>,(WTF::ShouldValidateKey)1,WebCore::AuthenticatorTransport>(uint64_t *a1, WTF *a2)
{
  if (!*a1)
  {
    return WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::end(a1);
  }

  v5 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IntHash<WebCore::AuthenticatorTransport>>,(WTF::ShouldValidateKey)1,WebCore::AuthenticatorTransport>(a1, a2);
  if (v5)
  {
    return WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::makeKnownGoodConstIterator(a1, v5);
  }

  else
  {
    return WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::end(a1);
  }
}

uint64_t WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IntHash<WebCore::AuthenticatorTransport>>,(WTF::ShouldValidateKey)1,WebCore::AuthenticatorTransport>(uint64_t *a1, WTF *a2)
{
  WTF::checkHashTableKey<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IdentityHashTranslator<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IntHash<WebCore::AuthenticatorTransport>>,(WTF::ShouldValidateKey)1,WebCore::AuthenticatorTransport>(a2);
  v8 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSizeMask(a1);
  v6 = WTF::IdentityHashTranslator<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IntHash<WebCore::AuthenticatorTransport>>::hash<WebCore::AuthenticatorTransport>(a2) & v7;
  for (i = 0; ; v6 = (v6 + i) & v7)
  {
    std::__to_address[abi:sn200100]<char const>();
    if (WTF::IdentityHashTranslator<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IntHash<WebCore::AuthenticatorTransport>>::equal<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport>(v3, a2))
    {
      return v8 + v6;
    }

    if (WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::isEmptyBucket())
    {
      break;
    }

    ++i;
  }

  return 0;
}

uint64_t WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::makeKnownGoodConstIterator(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSize(a1);
  WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::HashTableConstIterator(&v7, a1, a2, v4 + v5);
  return v7;
}

BOOL WTF::checkHashTableKey<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IdentityHashTranslator<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IntHash<WebCore::AuthenticatorTransport>>,(WTF::ShouldValidateKey)1,WebCore::AuthenticatorTransport>(WTF *a1)
{
  v1 = WTF::isHashTraitsEmptyValue<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WebCore::AuthenticatorTransport>(a1);
  if (v1)
  {
    isIntegralOrPointerType = WTF::isIntegralOrPointerType(v1);
    WTF::isIntegralOrPointerType(isIntegralOrPointerType);
    __break(0xC471u);
    JUMPOUT(0x19D66FB38);
  }

  result = WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>::isDeletedValue(*a1);
  if (result)
  {
    v4 = WTF::isIntegralOrPointerType(result);
    WTF::isIntegralOrPointerType(v4);
    __break(0xC471u);
    JUMPOUT(0x19D66FBF0);
  }

  return result;
}

void *WTF::HashTableConstIteratorAdapter<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport>::HashTableConstIteratorAdapter(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  return result;
}

uint64_t *WTF::Function<void ()(void)>::Function<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>(uint64_t *a1, void *a2)
{
  WTF::Function<void ()(void)>::Function<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,void (WTF::ASCIILiteral::*)(void),0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

void *WTF::RunLoop::Timer::Timer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  return WTF::RunLoop::Timer::Timer(a1, a2, a3, a4, a5);
}

{
  WTF::RunLoop::TimerBase::TimerBase();
  *a1 = &unk_1F10E6DC8;
  WTF::Function<void ()(void)>::Function(a1 + 5, a5);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(uint64_t *a1, uint64_t *a2)
{
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, a2);
  return a1;
}

{
  *a1 = std::unique_ptr<WTF::Detail::CallableWrapperBase<void,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>,std::default_delete<mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&>>::release[abi:sn200100](a2);
  std::__to_address[abi:sn200100]<char const>();
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(a1);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::reset[abi:sn200100](a1);
  return a1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,void (WTF::ASCIILiteral::*)(void),0>(void *a1, void *a2)
{
  v3 = WTF::FastMalloc::malloc(0x20);
  WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::CallableWrapper(void *a1, void *a2)
{
  WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E6990;
  a1[1] = *a2;
  a1[2] = a2[1];
  a1[3] = a2[2];
  return a1;
}

void WTF::Detail::CallableWrapperBase<void>::~CallableWrapperBase()
{
  __break(1u);
}

{
  __break(1u);
}

WebKit::AuthenticatorManager *WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}::operator()(uint64_t a1)
{
  v6[1] = a1;
  v2 = *a1;
  v6[3] = v6;
  v6[2] = v2;
  v6[6] = v6;
  v6[5] = v2;
  v7 = v2;
  if (v2)
  {
    WebKit::AuthenticatorManager::ref(v7);
  }

  v6[0] = v7;
  v3 = *(a1 + 16);
  v4 = *(a1 + 8);
  if (v3)
  {
    v4 = *(*(*a1 + (v3 >> 1)) + *(a1 + 8));
  }

  v4();
  v6[4] = v6;
  v8[1] = v6;
  v8[0] = 0;
  v11 = v6;
  v10 = v8;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(v6);
  v9 = result;
  if (result)
  {
    return WebKit::AuthenticatorManager::deref(v9);
  }

  return result;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::reset[abi:sn200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::default_delete<WTF::Detail::CallableWrapperBase<void>>::operator()[abi:sn200100](result, v1);
  }

  return result;
}

uint64_t WTF::RefCounted<WebKit::AuthenticatorPresenterCoordinator>::deref(WTF::RefCountedBase *a1)
{
  result = WTF::RefCountedBase::derefBase(a1);
  if (result)
  {
    v3 = (a1 - 8);
    if (v3)
    {
      WebKit::AuthenticatorPresenterCoordinator::~AuthenticatorPresenterCoordinator(v3);
      return bmalloc::api::tzoneFree(v3, v4);
    }
  }

  return result;
}

uint64_t *WTF::VectorDestructor<true,WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>>::destruct(uint64_t *result, uint64_t *a2)
{
  for (i = result; i != a2; ++i)
  {
    result = WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>::~Ref(i);
  }

  return result;
}

uint64_t *WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>::~Ref(uint64_t *a1)
{
  WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>::~Ref(a1);
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
    (*(*v3 + 8))();
  }

  return v5;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::clearStateAsync(void)::$_0,void>,WebKit::AuthenticatorManager::clearStateAsync(void)::$_0,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x10);
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::clearStateAsync(void)::$_0,void>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::clearStateAsync(void)::$_0,void>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::clearStateAsync(void)::$_0,void>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E69E0;
  WebKit::AuthenticatorManager::clearStateAsync(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

uint64_t *WebKit::AuthenticatorManager::clearStateAsync(void)::$_0::$_0(uint64_t *a1, uint64_t *a2)
{
  WebKit::AuthenticatorManager::clearStateAsync(void)::$_0::$_0(a1, a2);
  return a1;
}

{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::clearStateAsync(void)::$_0,void>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::clearStateAsync(void)::$_0,void>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E69E0;
  WebKit::AuthenticatorManager::clearStateAsync(void)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t WebKit::AuthenticatorManager::clearStateAsync(void)::$_0::operator()(uint64_t *a1)
{
  result = WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator!(a1);
  if ((result & 1) == 0)
  {
    v3 = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(a1);
    return WebKit::AuthenticatorManager::clearState(v3);
  }

  return result;
}

uint64_t WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator->(uint64_t *a1)
{
  result = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(a1);
  if (!result)
  {
    isIntegralOrPointerType = WTF::isIntegralOrPointerType(0);
    WTF::isIntegralOrPointerType(isIntegralOrPointerType);
    __break(0xC471u);
    JUMPOUT(0x19D67091CLL);
  }

  return result;
}

uint64_t WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(uint64_t *a1)
{
  if (WTF::RefPtr<WebKit::AuthenticatorPresenterCoordinator,WTF::RawPtrTraits<WebKit::AuthenticatorPresenterCoordinator>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorPresenterCoordinator>>::operator BOOL(a1))
  {
    return std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](*a1);
  }

  else
  {
    return 0;
  }
}

void WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::clear(WTF::RefCountedBase *a1)
{
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  if (*a1)
  {
    v2 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
    WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::deallocateTable(v2, v3);
  }
}

void WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(WTF::RefCountedBase *a1)
{
  if (WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::capacity(a1))
  {
    if (WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1))
    {
      WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, 0);
    }

    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetBufferSizeToFullCapacity(a1);
    v2 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(a1);
    WTF::VectorBufferBase<unsigned char,WTF::FastMalloc>::deallocateBuffer(a1, v2);
    WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  }
}

void WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(uint64_t a1, unint64_t a2)
{
  v12 = a1;
  v11 = a2;
  v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::mutableSpan(a1);
  v9[1] = v4;
  v9[0] = v3;
  v5 = std::span<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,18446744073709551615ul>::subspan[abi:sn200100](v9, v11);
  v10[1] = v6;
  v10[0] = v5;
  v7 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v10);
  v8 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
  WTF::VectorTypeOperations<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>>::destruct(v7, v8);
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  *(a1 + 12) = v11;
}

BOOL WTF::VectorBufferBase<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,WTF::FastMalloc>::shouldReallocateBuffer(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*(a1 + 8))
  {
    return a2 != 0;
  }

  return v2;
}

uint64_t WTF::VectorBufferBase<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,WTF::FastMalloc>::reallocateBuffer(uint64_t a1, unint64_t a2)
{
  if (a2 > std::numeric_limits<unsigned long>::max[abi:sn200100]() >> 3)
  {
    __break(0xC471u);
    JUMPOUT(0x19D670C4CLL);
  }

  *(a1 + 8) = a2;
  result = WTF::FastMalloc::realloc(*a1, (8 * a2));
  *a1 = result;
  return result;
}

uint64_t WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::mutableSpan(uint64_t a1)
{
  v2 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::data(a1);
  v3 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::size(a1);
  std::span<char const,18446744073709551615ul>::span[abi:sn200100]<char const*>(&v5, v2, v3);
  return v5;
}

uint64_t std::span<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,18446744073709551615ul>::subspan[abi:sn200100](uint64_t a1, unint64_t a2)
{
  if (a2 > std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1))
  {
    __break(1u);
  }

  v3 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](a1) + 8 * a2;
  v4 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](a1);
  std::span<char const,18446744073709551615ul>::span[abi:sn200100]<char const*>(&v7, v3, v4 - a2);
  return v7;
}

uint64_t WTF::VectorBufferBase<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (!WTF::isValidCapacityForVector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>>(a2))
  {
    __break(0xC471u);
    JUMPOUT(0x19D670E48);
  }

  result = WTF::FastMalloc::malloc((8 * a2));
  *(a1 + 8) = a2;
  *a1 = result;
  return result;
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(uint64_t a1, WTF::RefCountedBase *a2, uint64_t a3)
{
  v18 = a2;
  v17 = a3;
  std::__to_address[abi:sn200100]<char const>();
  v16 = v17;
  v32 = a2;
  v31 = v5;
  v30 = &v16;
  WTF::checkHashTableKey<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::IdentityHashTranslator<WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>,(WTF::ShouldValidateKey)1,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>(v5);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a2);
  if (!*a2)
  {
    v6 = WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::expand(a2, 0);
  }

  WTF::isIntegralOrPointerType(v6);
  v29 = *a2;
  v28 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSizeMask(a2);
  v27 = WTF::IdentityHashTranslator<WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>::hash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>(v31);
  v26 = v27 & v28;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  while (1)
  {
    v23 = (v29 + 8 * v26);
    if (WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::isEmptyBucket())
    {
      break;
    }

    if (WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::isDeletedBucket())
    {
      v24 = v23;
    }

    else
    {
      std::__to_address[abi:sn200100]<char const>();
      if (WTF::IdentityHashTranslator<WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>::equal<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>(v7, v31))
      {
        KnownGoodIterator = WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::makeKnownGoodIterator(a2, v23);
        v22 = v9;
        v21 = KnownGoodIterator;
        return WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>>::HashTableAddResult(a1, KnownGoodIterator, v9, 0);
      }
    }

    ++v25;
    v26 = (v26 + v25) & v28;
  }

  if (v24)
  {
    WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::initializeBucket(v24);
    v23 = v24;
    v11 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::deletedCount(a2);
    WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::setDeletedCount(a2, v11 - 1);
  }

  WTF::IdentityHashTranslator<WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>::translate<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>> WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>&&)::{lambda(void)#1}>(v23, v31, v30);
  v12 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::keyCount(a2);
  WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::setKeyCount(a2, v12 + 1);
  shouldExpand = WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::shouldExpand(a2);
  if (shouldExpand)
  {
    shouldExpand = WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::expand(a2, v23);
    v23 = shouldExpand;
  }

  WTF::isIntegralOrPointerType(shouldExpand);
  v14 = WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::makeKnownGoodIterator(a2, v23);
  v20 = v15;
  v19 = v14;
  return WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>>::HashTableAddResult(a1, v14, v15, 1);
}

BOOL WTF::checkHashTableKey<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::IdentityHashTranslator<WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>,(WTF::ShouldValidateKey)1,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>(WTF *a1)
{
  v1 = WTF::isHashTraitsEmptyValue<WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>(a1);
  if (v1)
  {
    isIntegralOrPointerType = WTF::isIntegralOrPointerType(v1);
    WTF::isIntegralOrPointerType(isIntegralOrPointerType);
    __break(0xC471u);
    JUMPOUT(0x19D67118CLL);
  }

  result = WTF::SimpleClassHashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>::isDeletedValue(a1);
  if (result)
  {
    v4 = WTF::isIntegralOrPointerType(result);
    WTF::isIntegralOrPointerType(v4);
    __break(0xC471u);
    JUMPOUT(0x19D67123CLL);
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::expand(WTF *a1, uint64_t *a2)
{
  v4 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSize(a1);
  if (!v4)
  {
    return WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::rehash(a1, 8u, a2);
  }

  if (WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::mustRehashInPlace(a1))
  {
    return WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::rehash(a1, v4, a2);
  }

  return WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::rehash(a1, 2 * v4, a2);
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::makeKnownGoodIterator(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSize(a1);
  WTF::HashTableIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::HashTableIterator(&v7, a1, a2, v4 + 8 * v5);
  return v7;
}

uint64_t *WTF::IdentityHashTranslator<WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>::translate<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>> WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>&&)::{lambda(void)#1}>(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  v5[3] = a1;
  v5[2] = a2;
  v5[1] = a3;
  v5[5] = v5;
  v5[4] = a3;
  WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(v5, *a3);
  WTF::GenericHashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>::assignToEmpty<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>(a1, v5);
  return WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>::~Ref(v5);
}

BOOL WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::shouldExpand(void *a1)
{
  v2 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::keyCount(a1);
  v3 = v2 + WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::deletedCount(a1);
  v4 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSize(a1);
  return WTF::HashTableCapacityForSize<1u>::shouldExpand(v3, v4);
}

BOOL WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>::isHashTableEmptyValue(WTF *a1)
{
  v1 = *a1;
  WTF::isIntegralOrPointerType(a1);
  return v1 == 0;
}

uint64_t *WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::rehash(WTF *a1, unsigned int a2, uint64_t *a3)
{
  WTF::isIntegralOrPointerType(a1);
  v13 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSize(a1);
  v12 = *a1;
  v11 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::keyCount(a1);
  *a1 = WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::allocateTable(a2);
  WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::setTableSize(a1, a2);
  WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::setTableSizeMask(a1, a2 - 1);
  WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::setDeletedCount(a1, 0);
  isDeletedBucket = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::setKeyCount(a1, v11);
  v10 = 0;
  for (i = 0; i != v13; ++i)
  {
    v8 = (v12 + 8 * i);
    isDeletedBucket = WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::isDeletedBucket();
    if ((isDeletedBucket & 1) == 0)
    {
      if (WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::isEmptyBucket())
      {
        isDeletedBucket = WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>::~Ref((v12 + 8 * i));
      }

      else
      {
        WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::isReleasedWeakBucket();
        v7 = WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::reinsert(a1, v8);
        isDeletedBucket = WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>::~Ref(v8);
        if (v8 == a3)
        {
          v10 = v7;
        }
      }
    }
  }

  if (v12)
  {
    isDeletedBucket = WTF::FastMalloc::free((v12 - 16), v5);
  }

  WTF::isIntegralOrPointerType(isDeletedBucket);
  return v10;
}

uint64_t *WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::reinsert(uint64_t *a1, uint64_t *a2)
{
  std::__to_address[abi:sn200100]<char const>();
  v6 = WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::lookupForReinsert(a1, v3);
  WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>::~Ref(v6);
  v4 = operator new(8, 0, v6);
  WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(v4, a2);
  return v6;
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::lookupForReinsert<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>(uint64_t *a1, WTF::RefCountedBase *a2)
{
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a2);
  v7 = *a1;
  v6 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSizeMask(a1);
  v5 = WTF::IdentityHashTranslator<WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>::hash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>(a2) & v6;
  v4 = 0;
  while (!WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::isEmptyBucket())
  {
    ++v4;
    v5 = (v5 + v4) & v6;
  }

  return v7 + 8 * v5;
}

unint64_t WTF::intHash(WTF *this)
{
  v1 = ~(((9 * ((((this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22)) + ~(((this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22)) << 13)) ^ ((((this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22)) + ~(((this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22)) << 13)) >> 8))) ^ ((9 * ((((this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22)) + ~(((this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22)) << 13)) ^ ((((this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22)) + ~(((this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22)) << 13)) >> 8))) >> 15)) << 27);
  v3 = ((9 * ((((this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22)) + ~(((this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22)) << 13)) ^ ((((this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22)) + ~(((this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22)) << 13)) >> 8))) ^ ((9 * ((((this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22)) + ~(((this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22)) << 13)) ^ ((((this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22)) + ~(((this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22)) << 13)) >> 8))) >> 15)) + v1;
  return v3 ^ (v3 >> 31);
}

BOOL WTF::PtrHashBase<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,true>::equal(uint64_t a1, uint64_t a2)
{
  v2 = WTF::getPtr<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>(a1);
  return v2 == WTF::getPtr<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>(a2);
}

{
  return WTF::getPtr<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>(a1) == a2;
}

uint64_t WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>>::HashTableAddResult(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4 & 1;
  return result;
}

void *WTF::zeroSpan<unsigned char,18446744073709551615ul>(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  v2 = std::span<char const,18446744073709551615ul>::data[abi:sn200100](v5);
  v3 = std::span<char const,18446744073709551615ul>::size_bytes[abi:sn200100](v5);
  return memset(v2, 0, v3);
}

uint64_t *WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>::operator=(uint64_t *a1, uint64_t *a2)
{
  v4[2] = a1;
  v4[1] = a2;
  WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(v4, a2);
  WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>::swap<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>(a1, v4);
  return WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>::~Ref(v4);
}

BOOL WTF::HashTableCapacityForSize<1u>::shouldExpand(uint64_t a1, unint64_t a2)
{
  if (a2 > 0x400)
  {
    return 2 * a1 >= a2;
  }

  else
  {
    return 4 * a1 >= 3 * a2;
  }
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::serviceStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,void,API::WebAuthenticationPanel const&>,WebKit::AuthenticatorManager::serviceStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,0>(void *a1, _BYTE *a2)
{
  v3 = WTF::FastMalloc::malloc(0x10);
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::serviceStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,void,API::WebAuthenticationPanel const&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::serviceStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,void,API::WebAuthenticationPanel const&>::CallableWrapper(uint64_t a1, _BYTE *a2)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::serviceStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,void,API::WebAuthenticationPanel const&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E6A08;
  *(a1 + 8) = *a2;
  return a1;
}

void WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>::~CallableWrapperBase()
{
  __break(1u);
}

{
  __break(1u);
}

uint64_t *WebKit::AuthenticatorManager::serviceStatusUpdated(WebKit::WebAuthenticationStatus)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v4[2] = a1;
  v4[1] = a2;
  API::WebAuthenticationPanel::protectedClient(a2, v4);
  v2 = *WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(v4);
  (*(v2 + 16))();
  return WTF::Ref<API::WebAuthenticationPanelClient,WTF::RawPtrTraits<API::WebAuthenticationPanelClient>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanelClient>>::~Ref(v4);
}

uint64_t *WTF::Ref<API::WebAuthenticationPanelClient,WTF::RawPtrTraits<API::WebAuthenticationPanelClient>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanelClient>>::~Ref(uint64_t *a1)
{
  WTF::Ref<API::WebAuthenticationPanelClient,WTF::RawPtrTraits<API::WebAuthenticationPanelClient>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanelClient>>::~Ref(a1);
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
    WTF::RefCounted<API::WebAuthenticationPanelClient>::deref((v3 + 8));
  }

  return v5;
}

uint64_t WTF::RefCounted<API::WebAuthenticationPanelClient>::deref(WTF::RefCountedBase *a1)
{
  result = WTF::RefCountedBase::derefBase(a1);
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

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::downgrade(WebKit::Authenticator &,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&)::$_0,void>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x18);
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::downgrade(WebKit::Authenticator &,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&)::$_0,void>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::downgrade(WebKit::Authenticator &,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&)::$_0,void>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::downgrade(WebKit::Authenticator &,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&)::$_0,void>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E6A58;
  WebKit::AuthenticatorManager::downgrade(WebKit::Authenticator &,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&)::$_0::$_0(a1 + 1, a2);
  return a1;
}

uint64_t *WebKit::AuthenticatorManager::downgrade(WebKit::Authenticator &,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&)::$_0::$_0(uint64_t *a1, uint64_t *a2)
{
  WebKit::AuthenticatorManager::downgrade(WebKit::Authenticator &,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&)::$_0::$_0(a1, a2);
  return a1;
}

{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1, a2);
  WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(a1 + 1, a2 + 1);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::downgrade(WebKit::Authenticator &,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::downgrade(WebKit::Authenticator &,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&)::$_0,void>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E6A58;
  WebKit::AuthenticatorManager::downgrade(WebKit::Authenticator &,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

WebKit::AuthenticatorManager *WebKit::AuthenticatorManager::downgrade(WebKit::Authenticator &,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>> &&)::$_0::operator()(uint64_t *a1)
{
  v5[1] = a1;
  v7 = v5;
  v6 = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(a1);
  v10 = v5;
  v9 = v6;
  v11 = v6;
  if (v6)
  {
    WebKit::AuthenticatorManager::ref(v11);
  }

  v5[0] = v11;
  if (!WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(v5))
  {
    v16 = v5;
    v17 = v5;
    v2 = (v5[0] + 928);
    v3 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get((a1 + 1));
    WTF::HashSet<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>(v2, v3);
  }

  v8 = v5;
  v12[1] = v5;
  v12[0] = 0;
  v15 = v5;
  v14 = v12;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(v5);
  v13 = result;
  if (result)
  {
    return WebKit::AuthenticatorManager::deref(v13);
  }

  return result;
}

uint64_t WTF::HashSet<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v9 = a2;
  v10 = a3;
  v8[2] = a1;
  v4 = WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::end(a1);
  v8[1] = v5;
  v8[0] = v4;
  v6 = WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::operator==(&v9, v8);
  if (v6)
  {
    v11 = 0;
  }

  else
  {
    WTF::isIntegralOrPointerType(v6);
    WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::removeWithoutEntryConsistencyCheck(a1, v9, v10);
    v11 = 1;
  }

  return v11 & 1;
}

uint64_t WTF::HashSet<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::find<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>(uint64_t *a1, uint64_t a2)
{
  v6[1] = a1;
  v6[0] = a2;
  v2 = WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>,(WTF::ShouldValidateKey)1,WebKit::Authenticator const*>(a1, v6);
  v5[1] = v3;
  v5[0] = v2;
  WTF::HashTableConstIteratorAdapter<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport>::HashTableConstIteratorAdapter(&v7, v5);
  return v7;
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::end(uint64_t *a1)
{
  v2 = *a1;
  v3 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSize(a1);
  return WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::makeKnownGoodIterator(a1, v2 + 8 * v3);
}

{
  v2 = *a1;
  v3 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSize(a1);
  return WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::makeKnownGoodConstIterator(a1, v2 + 8 * v3);
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::removeWithoutEntryConsistencyCheck(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v8[0] = a2;
  v8[1] = a3;
  v7[2] = a1;
  v4 = WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::end(a1);
  v7[1] = v5;
  v7[0] = v4;
  result = WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::operator==(v8, v7);
  if ((result & 1) == 0)
  {
    return WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::removeAndInvalidateWithoutEntryConsistencyCheck(a1, v8[0]);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::remove(WTF *a1, uint64_t *a2)
{
  WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::deleteBucket(a2);
  v3 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::deletedCount(a1);
  WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::setDeletedCount(a1, v3 + 1);
  v4 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::keyCount(a1);
  WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::setKeyCount(a1, v4 - 1);
  shouldShrink = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::shouldShrink(a1);
  if (shouldShrink)
  {
    shouldShrink = WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::shrink(a1);
  }

  return WTF::isIntegralOrPointerType(shouldShrink);
}

uint64_t *WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>::Ref(uint64_t *a1)
{
  WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>::Ref(a1);
  return a1;
}

{
  *a1 = WTF::RawPtrTraits<WebKit::Authenticator>::hashTableDeletedValue();
  return a1;
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>,(WTF::ShouldValidateKey)1,WebKit::Authenticator const*>(uint64_t *a1, WTF::RefCountedBase *a2)
{
  if (!*a1)
  {
    return WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::end(a1);
  }

  v5 = WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::lookup<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>,(WTF::ShouldValidateKey)1,WebKit::Authenticator const*>(a1, a2);
  if (v5)
  {
    return WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::makeKnownGoodConstIterator(a1, v5);
  }

  else
  {
    return WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::end(a1);
  }
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::lookup<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>,(WTF::ShouldValidateKey)1,WebKit::Authenticator const*>(uint64_t *a1, WTF::RefCountedBase *a2)
{
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a2);
  v8 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSizeMask(a1);
  v6 = WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>::hash<WebKit::Authenticator const*>(a2) & v7;
  for (i = 0; ; v6 = (v6 + i) & v7)
  {
    if (WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::isEmptyBucket())
    {
      return 0;
    }

    if (!WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::isDeletedBucket())
    {
      std::__to_address[abi:sn200100]<char const>();
      if (WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>::equal<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WebKit::Authenticator const*>(v3, a2))
      {
        break;
      }
    }

    ++i;
  }

  return v8 + 8 * v6;
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::makeKnownGoodConstIterator(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSize(a1);
  WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::HashTableConstIterator(&v7, a1, a2, v4 + 8 * v5);
  return v7;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::authenticatorStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,void,API::WebAuthenticationPanel const&>,WebKit::AuthenticatorManager::authenticatorStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,0>(void *a1, _BYTE *a2)
{
  v3 = WTF::FastMalloc::malloc(0x10);
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::authenticatorStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,void,API::WebAuthenticationPanel const&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::authenticatorStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,void,API::WebAuthenticationPanel const&>::CallableWrapper(uint64_t a1, _BYTE *a2)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::authenticatorStatusUpdated(WebKit::WebAuthenticationStatus)::$_0,void,API::WebAuthenticationPanel const&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E6A80;
  *(a1 + 8) = *a2;
  return a1;
}

uint64_t *WTF::Function<void ()(WTF::String const&)>::Function<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::String const&)>::Function<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>,WTF::CompletionHandler<void ()(WTF::String const&)> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>,std::default_delete<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>,std::default_delete<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>,std::default_delete<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>,std::default_delete<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0>>::reset[abi:sn200100](a1);
  return a1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>,WTF::CompletionHandler<void ()(WTF::String const&)> &&,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x18);
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::String const&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E6AA8;
  WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E6AA8;
  WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

void WTF::Detail::CallableWrapperBase<void,WTF::String const&>::~CallableWrapperBase()
{
  __break(1u);
}

{
  __break(1u);
}

WebKit::AuthenticatorManager *WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(uint64_t *a1, atomic_uint **a2)
{
  v6 = a1;
  v5 = a2;
  v8 = &v4;
  v7 = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(a1);
  v11 = &v4;
  v10 = v7;
  v12 = v7;
  if (v7)
  {
    WebKit::AuthenticatorManager::ref(v12);
  }

  v4 = v12;
  if (!WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(&v4))
  {
    v17 = &v4;
    v18 = &v4;
    WTF::String::operator=(v4 + 98, v5);
    WTF::CompletionHandler<void ()(WTF::String const&)>::operator()((a1 + 1), v5);
  }

  v9 = &v4;
  v13[1] = &v4;
  v13[0] = 0;
  v16 = &v4;
  v15 = v13;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v4);
  v14 = result;
  if (result)
  {
    return WebKit::AuthenticatorManager::deref(v14);
  }

  return result;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>,std::default_delete<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0>>::reset[abi:sn200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::default_delete<WTF::Detail::CallableWrapperBase<void,WTF::String const&>>::operator()[abi:sn200100](result, v1);
  }

  return result;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void,API::WebAuthenticationPanel const&>,WTF::CompletionHandler<void ()(WTF::String const&)> &&,0>(void *a1, void *a2)
{
  v3 = WTF::FastMalloc::malloc(0x20);
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void,API::WebAuthenticationPanel const&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void,API::WebAuthenticationPanel const&>::CallableWrapper(void *a1, void *a2)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void,API::WebAuthenticationPanel const&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E6AF8;
  WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1::$_1(a1 + 1, a2);
  return a1;
}

void *WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1::$_1(void *a1, void *a2)
{
  WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1::$_1(a1, a2);
  return a1;
}

{
  *a1 = *a2;
  WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::$_0(a1 + 1, a2 + 1);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void,API::WebAuthenticationPanel const&>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void,API::WebAuthenticationPanel const&>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E6AF8;
  WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1::~$_1((a1 + 1));
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t *WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1::operator()(uint64_t *a1, uint64_t a2)
{
  v8[2] = a1;
  v8[1] = a2;
  API::WebAuthenticationPanel::protectedClient(a2, v8);
  v3 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(v8);
  v4 = *a1;
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v6);
  WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)>&&)::$_0,void>(&v7, a1 + 1);
  (*(*v3 + 32))(v3, v4, &v7);
  WTF::CompletionHandler<void ()(WTF::String const&)>::~CompletionHandler(&v7);
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v6);
  return WTF::Ref<API::WebAuthenticationPanelClient,WTF::RawPtrTraits<API::WebAuthenticationPanelClient>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanelClient>>::~Ref(v8);
}

uint64_t *WTF::Function<void ()(WTF::String const&)>::Function<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WTF::String const&)>::Function<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>,WTF::CompletionHandler<void ()(WTF::String const&)> &&,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>,std::default_delete<WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>,WTF::CompletionHandler<void ()(WTF::String const&)> &&,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x18);
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WTF::String const&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E6B20;
  WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void,WTF::String const&>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E6B20;
  WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void,API::WebAuthenticationPanel const&>,WTF::CompletionHandler<void ()(WTF::String const&)> &&,0>(void *a1, void *a2)
{
  v3 = WTF::FastMalloc::malloc(0x20);
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void,API::WebAuthenticationPanel const&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void,API::WebAuthenticationPanel const&>::CallableWrapper(void *a1, void *a2)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void,API::WebAuthenticationPanel const&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E6B48;
  WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1::$_1(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void,API::WebAuthenticationPanel const&>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1,void,API::WebAuthenticationPanel const&>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E6B48;
  WebKit::AuthenticatorManager::requestPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1::~$_1((a1 + 1));
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t *WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_1::operator()(uint64_t *a1, uint64_t a2)
{
  v8[2] = a1;
  v8[1] = a2;
  API::WebAuthenticationPanel::protectedClient(a2, v8);
  v3 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(v8);
  v4 = *a1;
  WTF::ThreadLikeAssertion::ThreadLikeAssertion(&v6);
  WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler<WebKit::AuthenticatorManager::requestNewPin(unsigned long long,WTF::CompletionHandler<void ()(WTF::String const&)>&&)::$_0,void>(&v7, a1 + 1);
  (*(*v3 + 40))(v3, v4, &v7);
  WTF::CompletionHandler<void ()(WTF::String const&)>::~CompletionHandler(&v7);
  WTF::ThreadLikeAssertion::~ThreadLikeAssertion(&v6);
  return WTF::Ref<API::WebAuthenticationPanelClient,WTF::RawPtrTraits<API::WebAuthenticationPanelClient>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanelClient>>::~Ref(v8);
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_0,void,API::WebAuthenticationPanel const&>,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &,0>(void *a1, uint64_t a2)
{
  v3 = WTF::FastMalloc::malloc(0x28);
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_0,void,API::WebAuthenticationPanel const&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_0,void,API::WebAuthenticationPanel const&>::CallableWrapper(void *a1, uint64_t a2)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_0,void,API::WebAuthenticationPanel const&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E6B70;
  WebKit::AuthenticatorManager::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_0::$_0((a1 + 1), a2);
  return a1;
}

uint64_t WebKit::AuthenticatorManager::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_0::$_0(uint64_t a1, uint64_t a2)
{
  WebKit::AuthenticatorManager::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_0::$_0(a1, a2);
  return a1;
}

{
  WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1, a2);
  *(a1 + 16) = *(a2 + 16) & 1;
  WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler((a1 + 24), (a2 + 24));
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_0,void,API::WebAuthenticationPanel const&>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_0,void,API::WebAuthenticationPanel const&>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E6B70;
  WebKit::AuthenticatorManager::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_0::~$_0((a1 + 1));
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t *WebKit::AuthenticatorManager::selectAssertionResponse(WTF::Vector<WTF::Ref<WebCore::AuthenticatorAssertionResponse,WTF::RawPtrTraits<WebCore::AuthenticatorAssertionResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorAssertionResponse>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebKit::WebAuthenticationSource,WTF::CompletionHandler<void ()(WebCore::AuthenticatorAssertionResponse*)> &&)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v4[2] = a1;
  v4[1] = a2;
  API::WebAuthenticationPanel::protectedClient(a2, v4);
  v2 = *WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(v4);
  (*(v2 + 48))();
  return WTF::Ref<API::WebAuthenticationPanelClient,WTF::RawPtrTraits<API::WebAuthenticationPanelClient>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanelClient>>::~Ref(v4);
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0,void,API::WebAuthenticationPanel const&>,WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x10);
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0,void,API::WebAuthenticationPanel const&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0,void,API::WebAuthenticationPanel const&>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0,void,API::WebAuthenticationPanel const&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E6B98;
  WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0::$_0(a1 + 1, a2);
  return a1;
}

uint64_t *WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0::$_0(uint64_t *a1, uint64_t *a2)
{
  WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0::$_0(a1, a2);
  return a1;
}

{
  WTF::CompletionHandler<void ()(WTF::String const&)>::CompletionHandler(a1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0,void,API::WebAuthenticationPanel const&>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0,void,API::WebAuthenticationPanel const&>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E6B98;
  WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0::~$_0((a1 + 1));
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t *WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v4[2] = a1;
  v4[1] = a2;
  API::WebAuthenticationPanel::protectedClient(a2, v4);
  v2 = *WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(v4);
  (*(v2 + 56))();
  return WTF::Ref<API::WebAuthenticationPanelClient,WTF::RawPtrTraits<API::WebAuthenticationPanelClient>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanelClient>>::~Ref(v4);
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0,void,API::WebAuthenticationPanel const&>,WTF::CompletionHandler<void ()(LAContext *)> &&,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x10);
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0,void,API::WebAuthenticationPanel const&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0,void,API::WebAuthenticationPanel const&>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0,void,API::WebAuthenticationPanel const&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E6BC0;
  WebKit::AuthenticatorManager::decidePolicyForLocalAuthenticator(WTF::CompletionHandler<void ()(WebKit::LocalAuthenticatorPolicy)> &&)::$_0::$_0(a1 + 1, a2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0,void,API::WebAuthenticationPanel const&>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0,void,API::WebAuthenticationPanel const&>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E6BC0;
  WebKit::AuthenticatorManager::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0::~$_0((a1 + 1));
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t *WebKit::AuthenticatorManager::requestLAContextForUserVerification(WTF::CompletionHandler<void ()(LAContext *)> &&)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v4[2] = a1;
  v4[1] = a2;
  API::WebAuthenticationPanel::protectedClient(a2, v4);
  v2 = *WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(v4);
  (*(v2 + 64))();
  return WTF::Ref<API::WebAuthenticationPanelClient,WTF::RawPtrTraits<API::WebAuthenticationPanelClient>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanelClient>>::~Ref(v4);
}

BOOL WTF::Mapper<WebKit::AuthenticatorManager::startDiscovery(WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::$_0,WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(uint64_t a1, uint64_t *a2, void *a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v17 = a1;
  ShouldValidate = WTF::containerSize<WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(a2);
  WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveInitialCapacity<(WTF::FailureAction)0>(v17, ShouldValidate);
  v12[2] = v14;
  v3 = WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::begin(v14);
  v12[1] = v4;
  v12[0] = v3;
  v5 = WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::end(v14);
  v11[1] = v6;
  v11[0] = v5;
  while (1)
  {
    result = WTF::operator==<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport>(v12, v11);
    if (result)
    {
      break;
    }

    v10 = WTF::HashTableConstIteratorAdapter<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport>::operator*(v12);
    v8 = v15;
    WebKit::AuthenticatorManager::startDiscovery(WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::$_0::operator()<WebCore::AuthenticatorTransport const>(&v9, v13, v10);
    WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::unsafeAppendWithoutCapacityCheck(v8, &v9);
    WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>::~Ref(&v9);
    WTF::HashTableConstIteratorAdapter<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport>::operator++(v12);
  }

  return result;
}

uint64_t WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::begin(uint64_t *a1)
{
  v4[2] = a1;
  v1 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::begin(a1);
  v4[1] = v2;
  v4[0] = v1;
  WTF::HashTableConstIteratorAdapter<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport>::HashTableConstIteratorAdapter(&v5, v4);
  return v5;
}

uint64_t WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::end(uint64_t *a1)
{
  v4[2] = a1;
  v1 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::end(a1);
  v4[1] = v2;
  v4[0] = v1;
  WTF::HashTableConstIteratorAdapter<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport>::HashTableConstIteratorAdapter(&v5, v4);
  return v5;
}

uint64_t *WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::unsafeAppendWithoutCapacityCheck(uint64_t a1, uint64_t *a2)
{
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::asanSetInitialBufferSizeTo();
  v3 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(a1);
  v4 = operator new(8, 0, v3);
  result = WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(v4, a2);
  ++*(a1 + 12);
  return result;
}

uint64_t *WebKit::AuthenticatorManager::startDiscovery(WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::$_0::operator()<WebCore::AuthenticatorTransport const>(uint64_t *a1, void *a2, unsigned __int8 *a3)
{
  v6[3] = a1;
  v6[2] = a2;
  v6[1] = a3;
  (*(**a2 + 152))(v6, *a2, *a3, *a2);
  v4 = WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(v6);
  WebKit::AuthenticatorTransportService::startDiscovery(v4);
  WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>>(a1, v6);
  return WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>::~Ref(v6);
}

uint64_t WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveInitialCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (a2)
  {
    return WTF::VectorBufferBase<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,WTF::FastMalloc>::allocateBuffer<(WTF::FailureAction)0>(result, a2);
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::begin(uint64_t *a1)
{
  if (WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::isEmpty(a1))
  {
    return WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::end(a1);
  }

  else
  {
    return WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::makeConstIterator(a1, *a1);
  }
}

uint64_t WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::makeConstIterator(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSize(a1);
  WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::HashTableConstIterator(&v7, a1, a2, v4 + v5);
  return v7;
}

BOOL WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::skipEmptyBuckets(void *a1)
{
  while (1)
  {
    result = 0;
    if (*a1 != a1[1])
    {
      result = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::isEmptyOrDeletedBucket();
    }

    if (!result)
    {
      break;
    }

    ++*a1;
  }

  return result;
}

BOOL WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::isEmptyOrDeletedBucket()
{
  isEmptyBucket = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::isEmptyBucket();
  v1 = 1;
  if (!isEmptyBucket)
  {
    return WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::isDeletedBucket();
  }

  return v1;
}

BOOL WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::operator++(WTF::RefCountedBase *a1)
{
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  ++*a1;
  return WTF::HashTableConstIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>::skipEmptyBuckets(a1);
}

uint64_t *WebKit::AuthenticatorManager::initTimeOutTimer(void)::$_0::operator()(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *(a2 + 96);
  *(v2 + 4) = *(a2 + 100);
  return result;
}

uint64_t *WebKit::AuthenticatorManager::initTimeOutTimer(void)::$_1::operator()(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *(a2 + 16);
  *(v2 + 4) = *(a2 + 20);
  return result;
}

void *WTF::Visitor<WebKit::AuthenticatorManager::initTimeOutTimer(void)::$_0,WebKit::AuthenticatorManager::initTimeOutTimer(void)::$_1>::Visitor(void *a1, uint64_t a2, uint64_t a3)
{
  WTF::Visitor<WebKit::AuthenticatorManager::initTimeOutTimer(void)::$_0,WebKit::AuthenticatorManager::initTimeOutTimer(void)::$_1>::Visitor(a1, a2, a3);
  return a1;
}

{
  WTF::Visitor<WebKit::AuthenticatorManager::initTimeOutTimer(void)::$_0>::Visitor(a1, a2);
  WTF::Visitor<WebKit::AuthenticatorManager::initTimeOutTimer(void)::$_0>::Visitor(a1 + 1, a3);
  return a1;
}

uint64_t *WTF::Function<void ()(WebKit::WebAuthenticationPanelResult)>::Function<WebKit::AuthenticatorManager::runPanel(void)::$_0,void>(uint64_t *a1, uint64_t *a2)
{
  WTF::Function<void ()(WebKit::WebAuthenticationPanelResult)>::Function<WebKit::AuthenticatorManager::runPanel(void)::$_0,void>(a1, a2);
  return a1;
}

{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::runPanel(void)::$_0,void,WebKit::WebAuthenticationPanelResult>,WebKit::AuthenticatorManager::runPanel(void)::$_0,0>(v4, a2);
  std::unique_ptr<WTF::Detail::CallableWrapperBase<void>>::unique_ptr[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>,void,void>(a1, v4);
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::runPanel(void)::$_0,void,WebKit::WebAuthenticationPanelResult>>::~unique_ptr[abi:sn200100](v4);
  return a1;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::runPanel(void)::$_0,void,WebKit::WebAuthenticationPanelResult>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::runPanel(void)::$_0,void,WebKit::WebAuthenticationPanelResult>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::runPanel(void)::$_0,void,WebKit::WebAuthenticationPanelResult>>::reset[abi:sn200100](a1);
  return a1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::runPanel(void)::$_0,void,WebKit::WebAuthenticationPanelResult>,WebKit::AuthenticatorManager::runPanel(void)::$_0,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::Detail::CallableWrapperBase<void,WebKit::WebAuthenticationPanelResult>::operator new();
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::runPanel(void)::$_0,void,WebKit::WebAuthenticationPanelResult>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::runPanel(void)::$_0,void,WebKit::WebAuthenticationPanelResult>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::runPanel(void)::$_0,void,WebKit::WebAuthenticationPanelResult>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,WebKit::WebAuthenticationPanelResult>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E6BE8;
  WebKit::AuthenticatorManager::runPanel(void)::$_0::$_0(a1 + 1, a2);
  return a1;
}

uint64_t *WebKit::AuthenticatorManager::runPanel(void)::$_0::$_0(uint64_t *a1, uint64_t *a2)
{
  WebKit::AuthenticatorManager::runPanel(void)::$_0::$_0(a1, a2);
  return a1;
}

{
  WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(a1, a2);
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1 + 1, a2 + 1);
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1 + 2, a2 + 2);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::runPanel(void)::$_0,void,WebKit::WebAuthenticationPanelResult>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::runPanel(void)::$_0,void,WebKit::WebAuthenticationPanelResult>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E6BE8;
  WebKit::AuthenticatorManager::runPanel(void)::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

void WTF::Detail::CallableWrapperBase<void,WebKit::WebAuthenticationPanelResult>::~CallableWrapperBase()
{
  __break(1u);
}

{
  __break(1u);
}

WebKit::AuthenticatorManager *WebKit::AuthenticatorManager::runPanel(void)::$_0::operator()(uint64_t *a1, char a2)
{
  v7 = a1;
  v6 = a2;
  v9 = &v5;
  v8 = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(a1 + 2);
  v12 = &v5;
  v11 = v8;
  v13 = v8;
  if (v8)
  {
    WebKit::AuthenticatorManager::ref(v13);
  }

  v5 = v13;
  if (!WTF::RefPtr<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>::operator!(&v5) && !WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator!(a1 + 1) && v6 != 2)
  {
    v3 = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(a1 + 1);
    v19 = &v5;
    v20 = &v5;
    if (v3 == WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(v5 + 376))
    {
      v18 = &v5;
      v21 = &v5;
      WebKit::AuthenticatorManager::startDiscovery(v5, a1);
    }
  }

  v10 = &v5;
  v14[1] = &v5;
  v14[0] = 0;
  v17 = &v5;
  v16 = v14;
  result = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(&v5);
  v15 = result;
  if (result)
  {
    return WebKit::AuthenticatorManager::deref(v15);
  }

  return result;
}

uint64_t *std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::runPanel(void)::$_0,void,WebKit::WebAuthenticationPanelResult>>::reset[abi:sn200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::default_delete<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::runPanel(void)::$_0,void,WebKit::WebAuthenticationPanelResult>>::operator()[abi:sn200100](result, v1);
  }

  return result;
}

uint64_t std::default_delete<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::runPanel(void)::$_0,void,WebKit::WebAuthenticationPanelResult>>::operator()[abi:sn200100](uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    return (*(*a2 + 8))(a2, a2);
  }

  return result;
}

uint64_t *WTF::Function<void ()(WebKit::WebAuthenticationPanelResult)>::~Function(uint64_t *a1)
{
  WTF::Function<void ()(WebKit::WebAuthenticationPanelResult)>::~Function(a1);
  return a1;
}

{
  std::unique_ptr<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::runPanel(void)::$_0,void,WebKit::WebAuthenticationPanelResult>>::~unique_ptr[abi:sn200100](a1);
  return a1;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::invokePendingCompletionHandler(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)::$_0,void,API::WebAuthenticationPanel const&>,mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&,0>(void *a1, _BYTE *a2)
{
  v3 = WTF::FastMalloc::malloc(0x10);
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::invokePendingCompletionHandler(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)::$_0,void,API::WebAuthenticationPanel const&>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::invokePendingCompletionHandler(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)::$_0,void,API::WebAuthenticationPanel const&>::CallableWrapper(uint64_t a1, _BYTE *a2)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::invokePendingCompletionHandler(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)::$_0,void,API::WebAuthenticationPanel const&>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void,API::WebAuthenticationPanel const&>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E6C38;
  *(a1 + 8) = *a2;
  return a1;
}

uint64_t *WebKit::AuthenticatorManager::invokePendingCompletionHandler(mpark::variant<WTF::Ref<WebCore::AuthenticatorResponse,WTF::RawPtrTraits<WebCore::AuthenticatorResponse>,WTF::DefaultRefDerefTraits<WebCore::AuthenticatorResponse>>,WebCore::ExceptionData> &&)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v4[2] = a1;
  v4[1] = a2;
  API::WebAuthenticationPanel::protectedClient(a2, v4);
  v2 = *WTF::RefPtr<API::WebAuthenticationPanel,WTF::RawPtrTraits<API::WebAuthenticationPanel>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanel>>::get(v4);
  (*(v2 + 24))();
  return WTF::Ref<API::WebAuthenticationPanelClient,WTF::RawPtrTraits<API::WebAuthenticationPanelClient>,WTF::DefaultRefDerefTraits<API::WebAuthenticationPanelClient>>::~Ref(v4);
}

WTF::RefCountedBase *WebKit::AuthenticatorManager::getTransports(void)const::$_0::operator()(WTF::RefCountedBase **a1, uint64_t a2)
{
  v6 = a1;
  v5 = a2;
  WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::operator=(*a1, v4);
  return WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet(v4);
}

WTF::RefCountedBase *WebKit::AuthenticatorManager::getTransports(void)const::$_1::operator()(WTF::RefCountedBase **a1, uint64_t a2)
{
  v6 = a1;
  v5 = a2;
  WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::operator=(*a1, v4);
  return WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::~HashSet(v4);
}

uint64_t WebKit::anonymous namespace::collectTransports(WTF::RefCountedBase *a1, uint64_t a2)
{
  v42 = a1;
  v41 = a2;
  v40 = 0;
  WTF::HashSet<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(a1);
  if (std::optional<WebCore::AuthenticatorSelectionCriteria>::operator BOOL[abi:sn200100](v41) & 1) != 0 && (std::optional<WebCore::AuthenticatorSelectionCriteria>::operator->[abi:sn200100](v41), (std::optional<WebCore::MediationRequirement>::operator BOOL[abi:sn200100](v3)))
  {
    std::optional<WebCore::AuthenticatorSelectionCriteria>::operator->[abi:sn200100](v41);
    v22 = 0;
    if (std::operator==[abi:sn200100]<WebCore::MediationRequirement,WebCore::MediationRequirement>(v5, &v22))
    {
      v20 = 3;
      result = WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(v21, a1, &v20);
      v40 = 1;
      v23 = 1;
    }

    else
    {
      std::optional<WebCore::AuthenticatorSelectionCriteria>::operator->[abi:sn200100](v41);
      v19 = 1;
      result = std::operator==[abi:sn200100]<WebCore::MediationRequirement,WebCore::MediationRequirement>(v6, &v19);
      if (result)
      {
        v15 = 0;
        WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(&v16, a1, &v15);
        v12 = 1;
        WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(v13, a1, &v12);
        v16 = v13[0];
        v17 = v13[1];
        v18 = v14;
        v9 = 2;
        WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(v10, a1, &v9);
        v16 = v10[0];
        v17 = v10[1];
        v18 = v11;
        v7 = 6;
        return WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(&v8, a1, &v7);
      }
    }
  }

  else
  {
    v36 = 3;
    WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(&v37, a1, &v36);
    v33 = 0;
    WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(v34, a1, &v33);
    v37 = v34[0];
    v38 = v34[1];
    v39 = v35;
    v30 = 1;
    WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(v31, a1, &v30);
    v37 = v31[0];
    v38 = v31[1];
    v39 = v32;
    v27 = 2;
    WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(v28, a1, &v27);
    v37 = v28[0];
    v38 = v28[1];
    v39 = v29;
    v24 = 6;
    result = WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(v25, a1, &v24);
    v37 = v25[0];
    v38 = v25[1];
    v39 = v26;
    v40 = 1;
    v23 = 1;
  }

  return result;
}

void std::optional<WebCore::AuthenticatorSelectionCriteria>::operator->[abi:sn200100](uint64_t a1)
{
  if ((std::__optional_storage_base<WebCore::AuthenticatorSelectionCriteria,false>::has_value[abi:sn200100](a1) & 1) == 0)
  {
    __break(1u);
  }

  std::__to_address[abi:sn200100]<char const>();
}

uint64_t WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(uint64_t a1, WTF::RefCountedBase *a2, uint64_t a3)
{
  v18 = a2;
  v17 = a3;
  std::__to_address[abi:sn200100]<char const>();
  v16 = v17;
  v32 = a2;
  v31 = v5;
  v30 = &v16;
  WTF::checkHashTableKey<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IdentityHashTranslator<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IntHash<WebCore::AuthenticatorTransport>>,(WTF::ShouldValidateKey)1,WebCore::AuthenticatorTransport>(v5);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a2);
  if (!*a2)
  {
    v6 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::expand(a2, 0);
  }

  WTF::isIntegralOrPointerType(v6);
  v29 = *a2;
  v28 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSizeMask(a2);
  v27 = WTF::IdentityHashTranslator<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IntHash<WebCore::AuthenticatorTransport>>::hash<WebCore::AuthenticatorTransport>(v31);
  v26 = v27 & v28;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  while (1)
  {
    v23 = (v29 + v26);
    if (WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::isEmptyBucket())
    {
      break;
    }

    std::__to_address[abi:sn200100]<char const>();
    if (WTF::IdentityHashTranslator<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IntHash<WebCore::AuthenticatorTransport>>::equal<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport>(v7, v31))
    {
      KnownGoodIterator = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::makeKnownGoodIterator(a2, v23);
      v22 = v9;
      v21 = KnownGoodIterator;
      return WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>>::HashTableAddResult(a1, KnownGoodIterator, v9, 0);
    }

    if (WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::isDeletedBucket())
    {
      v24 = v23;
    }

    ++v25;
    v26 = (v26 + v25) & v28;
  }

  if (v24)
  {
    WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::initializeBucket(v24);
    v23 = v24;
    v11 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::deletedCount(a2);
    WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::setDeletedCount(a2, v11 - 1);
  }

  WTF::IdentityHashTranslator<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IntHash<WebCore::AuthenticatorTransport>>::translate<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>> WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(WebCore::AuthenticatorTransport&&)::{lambda(void)#1}>(v23, v31, v30);
  v12 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::keyCount(a2);
  WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::setKeyCount(a2, v12 + 1);
  shouldExpand = WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::shouldExpand(a2);
  if (shouldExpand)
  {
    shouldExpand = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::expand(a2, v23);
    v23 = shouldExpand;
  }

  WTF::isIntegralOrPointerType(shouldExpand);
  v14 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::makeKnownGoodIterator(a2, v23);
  v20 = v15;
  v19 = v14;
  return WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>>>::HashTableAddResult(a1, v14, v15, 1);
}

uint64_t WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::expand(WTF *a1, _BYTE *a2)
{
  v4 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::tableSize(a1);
  if (!v4)
  {
    return WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::rehash(a1, 8u, a2);
  }

  if (WTF::HashTable<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::FastMalloc>::mustRehashInPlace(a1))
  {
    return WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::rehash(a1, v4, a2);
  }

  return WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::rehash(a1, 2 * v4, a2);
}

_BYTE *WTF::IdentityHashTranslator<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IntHash<WebCore::AuthenticatorTransport>>::translate<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>,WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>>> WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(WebCore::AuthenticatorTransport&&)::{lambda(void)#1}>(_BYTE *a1, uint64_t a2, char **a3)
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  v8 = a3;
  v4 = **a3;
  return WTF::GenericHashTraits<WebCore::AuthenticatorTransport>::assignToEmpty<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport>(a1, &v4);
}

WTF::RefCountedBase *WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::operator=(WTF::RefCountedBase *a1, WTF::RefCountedBase *a2)
{
  v4[2] = a1;
  v4[1] = a2;
  WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::HashTable(v4, a2);
  WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::swap(a1, v4);
  return WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::~HashTable(v4);
}

uint64_t *WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::swap(WTF::RefCountedBase *a1, WTF::RefCountedBase *a2)
{
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a1);
  WTF::RefCountedBase::applyRefDerefThreadingCheck(a2);
  return std::swap[abi:sn200100]<JSC::ArrayBufferView *>(a1, a2);
}

uint64_t WebKit::anonymous namespace::collectTransports(WTF::RefCountedBase *a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v49 = a2;
  v48 = a3;
  v47 = 0;
  WTF::HashSet<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>,WTF::DefaultHash<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTraits<WTF::Ref<WebKit::Authenticator,WTF::RawPtrTraits<WebKit::Authenticator>,WTF::DefaultRefDerefTraits<WebKit::Authenticator>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(a1);
  if (WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::isEmpty(v49))
  {
    v43 = 3;
    WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(&v44, a1, &v43);
    v40 = 0;
    WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(v41, a1, &v40);
    v44 = v41[0];
    v45 = v41[1];
    v46 = v42;
    v37 = 1;
    WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(v38, a1, &v37);
    v44 = v38[0];
    v45 = v38[1];
    v46 = v39;
    v34 = 2;
    WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(v35, a1, &v34);
    v44 = v35[0];
    v45 = v35[1];
    v46 = v36;
    v31 = 6;
    WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(v32, a1, &v31);
    v44 = v32[0];
    v45 = v32[1];
    v46 = v33;
  }

  v30 = v49;
  v29 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(v49);
  v28 = WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(v30);
  while (v29 != v28)
  {
    v27 = v29;
    if (WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::isEmpty(v29 + 24))
    {
      v26 = 3;
      WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(v25, a1, &v26);
      v24 = 0;
      WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(v23, a1, &v24);
      v22 = 1;
      WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(v21, a1, &v22);
      v20 = 2;
      WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(v19, a1, &v20);
      v18 = 6;
      WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(v17, a1, &v18);
      break;
    }

    v16 = v27 + 24;
    v15 = WTF::Vector<WTF::Ref<WebKit::AuthenticatorTransportService,WTF::RawPtrTraits<WebKit::AuthenticatorTransportService>,WTF::DefaultRefDerefTraits<WebKit::AuthenticatorTransportService>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::begin(v27 + 24);
    v14 = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::end(v16);
    while (v15 != v14)
    {
      v13 = v15;
      if (*v15 != 2)
      {
        WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::add(v12, a1, v13);
        if (WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::size(a1) >= 5uLL)
        {
          break;
        }
      }

      ++v15;
    }

    v29 += 40;
  }

  result = std::optional<WebCore::MediationRequirement>::operator BOOL[abi:sn200100](v48);
  if (result)
  {
    v11 = 0;
    if (std::operator==[abi:sn200100]<WebCore::MediationRequirement,WebCore::MediationRequirement>(v48, &v11))
    {
      v10 = 0;
      WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(a1, &v10);
      v9 = 1;
      WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(a1, &v9);
      v8 = 2;
      WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(a1, &v8);
      v7 = 6;
      WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(a1, &v7);
    }

    v6 = 1;
    result = std::operator==[abi:sn200100]<WebCore::MediationRequirement,WebCore::MediationRequirement>(v48, &v6);
    if (result)
    {
      v5 = 3;
      return WTF::HashSet<WebCore::AuthenticatorTransport,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(a1, &v5);
    }
  }

  return result;
}

void *std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::dispatchPanelClientCall(WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&)::$_0,void>,WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&,0>(void *a1, uint64_t *a2)
{
  v3 = WTF::FastMalloc::malloc(0x18);
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::dispatchPanelClientCall(WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&)::$_0,void>::CallableWrapper(v3, a2);
  return std::unique_ptr<WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>,std::default_delete<WTF::RunLoop::Timer::Timer<WebKit::AuthenticatorManager>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::AuthenticatorManager *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1}>>::unique_ptr[abi:sn200100]<true,void>(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::dispatchPanelClientCall(WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&)::$_0,void>::CallableWrapper(void *a1, uint64_t *a2)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::dispatchPanelClientCall(WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&)::$_0,void>::CallableWrapper(a1, a2);
  return a1;
}

{
  WTF::Detail::CallableWrapperBase<void>::CallableWrapperBase(a1);
  *a1 = &unk_1F10E6C60;
  WebKit::AuthenticatorManager::dispatchPanelClientCall(WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&)const::$_0::$_0(a1 + 1, a2);
  return a1;
}

uint64_t *WebKit::AuthenticatorManager::dispatchPanelClientCall(WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&)const::$_0::$_0(uint64_t *a1, uint64_t *a2)
{
  WebKit::AuthenticatorManager::dispatchPanelClientCall(WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&)const::$_0::$_0(a1, a2);
  return a1;
}

{
  WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::WeakPtr(a1, a2);
  WTF::Function<void ()(API::WebAuthenticationPanel const&)>::Function(a1 + 1, a2 + 1);
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::dispatchPanelClientCall(WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  WTF::Detail::CallableWrapper<WebKit::AuthenticatorManager::dispatchPanelClientCall(WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&)::$_0,void>::~CallableWrapper(a1);
  return a1;
}

{
  *a1 = &unk_1F10E6C60;
  WebKit::AuthenticatorManager::dispatchPanelClientCall(WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&)const::$_0::~$_0(a1 + 1);
  std::__to_address[abi:sn200100]<char const>();
  return a1;
}

uint64_t WebKit::AuthenticatorManager::dispatchPanelClientCall(WTF::Function<void ()(API::WebAuthenticationPanel const&)> &&)const::$_0::operator()(uint64_t *a1)
{
  result = WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator!(a1);
  if ((result & 1) == 0)
  {
    WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator*(a1);
    return WTF::Function<void ()(API::WebAuthenticationPanel const&)>::operator()((a1 + 1));
  }

  return result;
}

uint64_t WTF::WeakPtr<API::WebAuthenticationPanel,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::operator*(uint64_t *a1)
{
  result = WTF::WeakPtr<WebKit::AuthenticatorManager,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>::get(a1);
  if (!result)
  {
    isIntegralOrPointerType = WTF::isIntegralOrPointerType(0);
    WTF::isIntegralOrPointerType(isIntegralOrPointerType);
    __break(0xC471u);
    JUMPOUT(0x19D676DF4);
  }

  return result;
}

Inspector::SupplementalBackendDispatcher *Inspector::AutomationBackendDispatcher::AutomationBackendDispatcher(Inspector::SupplementalBackendDispatcher *a1, Inspector::BackendDispatcher *a2, uint64_t a3)
{
  v5 = Inspector::SupplementalBackendDispatcher::SupplementalBackendDispatcher(a1, a2);
  *v5 = &unk_1F10E6DF0;
  v5[3] = a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::registerDispatcherForDomain();
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  return a1;
}

_DWORD *Inspector::AutomationBackendDispatcher::dispatch(_DWORD *a1, uint64_t a2, const WTF::StringImpl **a3, WTF::JSONImpl::ObjectBase **a4)
{
  v51[144] = *MEMORY[0x1E69E9840];
  ++a1[2];
  v7 = *a4;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::JSONImpl::ObjectBase::getObject(&v49, v7, v51);
  v10 = v51[0];
  v51[0] = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = &unk_1ED641000;
  if ((_MergedGlobals_44 & 1) == 0)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[0] = v50;
    v51[1] = Inspector::AutomationBackendDispatcher::getBrowsingContexts;
    v51[2] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[3] = v50;
    v51[4] = Inspector::AutomationBackendDispatcher::getBrowsingContext;
    v51[5] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[6] = v50;
    v51[7] = Inspector::AutomationBackendDispatcher::createBrowsingContext;
    v51[8] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[9] = v50;
    v51[10] = Inspector::AutomationBackendDispatcher::closeBrowsingContext;
    v51[11] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[12] = v50;
    v51[13] = Inspector::AutomationBackendDispatcher::deleteSession;
    v51[14] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[15] = v50;
    v51[16] = Inspector::AutomationBackendDispatcher::switchToBrowsingContext;
    v51[17] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[18] = v50;
    v51[19] = Inspector::AutomationBackendDispatcher::setWindowFrameOfBrowsingContext;
    v51[20] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[21] = v50;
    v51[22] = Inspector::AutomationBackendDispatcher::maximizeWindowOfBrowsingContext;
    v51[23] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[24] = v50;
    v51[25] = Inspector::AutomationBackendDispatcher::hideWindowOfBrowsingContext;
    v51[26] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[27] = v50;
    v51[28] = Inspector::AutomationBackendDispatcher::navigateBrowsingContext;
    v51[29] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[30] = v50;
    v51[31] = Inspector::AutomationBackendDispatcher::goBackInBrowsingContext;
    v51[32] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[33] = v50;
    v51[34] = Inspector::AutomationBackendDispatcher::goForwardInBrowsingContext;
    v51[35] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[36] = v50;
    v51[37] = Inspector::AutomationBackendDispatcher::reloadBrowsingContext;
    v51[38] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[39] = v50;
    v51[40] = Inspector::AutomationBackendDispatcher::waitForNavigationToComplete;
    v51[41] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[42] = v50;
    v51[43] = Inspector::AutomationBackendDispatcher::evaluateJavaScriptFunction;
    v51[44] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[45] = v50;
    v51[46] = Inspector::AutomationBackendDispatcher::performMouseInteraction;
    v51[47] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[48] = v50;
    v51[49] = Inspector::AutomationBackendDispatcher::performKeyboardInteractions;
    v51[50] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[51] = v50;
    v51[52] = Inspector::AutomationBackendDispatcher::performInteractionSequence;
    v51[53] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[54] = v50;
    v51[55] = Inspector::AutomationBackendDispatcher::cancelInteractionSequence;
    v51[56] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[57] = v50;
    v51[58] = Inspector::AutomationBackendDispatcher::takeScreenshot;
    v51[59] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[60] = v50;
    v51[61] = Inspector::AutomationBackendDispatcher::resolveChildFrameHandle;
    v51[62] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[63] = v50;
    v51[64] = Inspector::AutomationBackendDispatcher::resolveParentFrameHandle;
    v51[65] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[66] = v50;
    v51[67] = Inspector::AutomationBackendDispatcher::computeElementLayout;
    v51[68] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[69] = v50;
    v51[70] = Inspector::AutomationBackendDispatcher::getComputedRole;
    v51[71] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[72] = v50;
    v51[73] = Inspector::AutomationBackendDispatcher::getComputedLabel;
    v51[74] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[75] = v50;
    v51[76] = Inspector::AutomationBackendDispatcher::selectOptionElement;
    v51[77] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[78] = v50;
    v51[79] = Inspector::AutomationBackendDispatcher::isShowingJavaScriptDialog;
    v51[80] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[81] = v50;
    v51[82] = Inspector::AutomationBackendDispatcher::dismissCurrentJavaScriptDialog;
    v51[83] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[84] = v50;
    v51[85] = Inspector::AutomationBackendDispatcher::acceptCurrentJavaScriptDialog;
    v51[86] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[87] = v50;
    v51[88] = Inspector::AutomationBackendDispatcher::messageOfCurrentJavaScriptDialog;
    v51[89] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[90] = v50;
    v51[91] = Inspector::AutomationBackendDispatcher::setUserInputForCurrentJavaScriptPrompt;
    v51[92] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[93] = v50;
    v51[94] = Inspector::AutomationBackendDispatcher::setFilesToSelectForFileUpload;
    v51[95] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[96] = v50;
    v51[97] = Inspector::AutomationBackendDispatcher::setFilesForInputFileUpload;
    v51[98] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[99] = v50;
    v51[100] = Inspector::AutomationBackendDispatcher::getAllCookies;
    v51[101] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[102] = v50;
    v51[103] = Inspector::AutomationBackendDispatcher::deleteSingleCookie;
    v51[104] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[105] = v50;
    v51[106] = Inspector::AutomationBackendDispatcher::addSingleCookie;
    v51[107] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[108] = v50;
    v51[109] = Inspector::AutomationBackendDispatcher::deleteAllCookies;
    v51[110] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[111] = v50;
    v51[112] = Inspector::AutomationBackendDispatcher::getSessionPermissions;
    v51[113] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[114] = v50;
    v51[115] = Inspector::AutomationBackendDispatcher::setSessionPermissions;
    v51[116] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[117] = v50;
    v51[118] = Inspector::AutomationBackendDispatcher::addVirtualAuthenticator;
    v51[119] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[120] = v50;
    v51[121] = Inspector::AutomationBackendDispatcher::removeVirtualAuthenticator;
    v51[122] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[123] = v50;
    v51[124] = Inspector::AutomationBackendDispatcher::addVirtualAuthenticatorCredential;
    v51[125] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[126] = v50;
    v51[127] = Inspector::AutomationBackendDispatcher::getVirtualAuthenticatorCredentials;
    v51[128] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[129] = v50;
    v51[130] = Inspector::AutomationBackendDispatcher::removeVirtualAuthenticatorCredential;
    v51[131] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[132] = v50;
    v51[133] = Inspector::AutomationBackendDispatcher::removeAllVirtualAuthenticatorCredentials;
    v51[134] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[135] = v50;
    v51[136] = Inspector::AutomationBackendDispatcher::setVirtualAuthenticatorUserVerified;
    v51[137] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[138] = v50;
    v51[139] = Inspector::AutomationBackendDispatcher::generateTestReport;
    v51[140] = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v51[141] = v50;
    v51[142] = Inspector::AutomationBackendDispatcher::processBidiMessage;
    v51[143] = 0;
    v29 = WTF::fastMalloc(0xC10);
    bzero(v29 + 1, 0xC00uLL);
    v47 = 0;
    v50 = (v29 + 1);
    *v29 = xmmword_19E702B70;
    while (1)
    {
      v30 = &v51[v47];
      if (v51[v47] == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19D677D04);
      }

      if (!v51[v47])
      {
        goto LABEL_81;
      }

      v31 = v50;
      if (v50 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,void (Inspector::AutomationBackendDispatcher::*)(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)>,WTF::KeyValuePairKeyExtractor<void (Inspector::AutomationBackendDispatcher::*)(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,void ()(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&),WTF::DefaultHash,WTF::HashTraits<WTF::String>,WTF::HashMap<void ()(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::expand(&v50), (v31 = v50) != 0))
      {
        v32 = *(v31 - 2);
      }

      else
      {
        v32 = 0;
      }

      v33 = *(*v30 + 4);
      if (v33 < 0x100)
      {
        v34 = WTF::StringImpl::hashSlowCase(*v30);
      }

      else
      {
        v34 = v33 >> 8;
      }

      v35 = 0;
      for (i = 1; ; ++i)
      {
        v37 = v34 & v32;
        v38 = *(v31 + 3 * (v34 & v32));
        if (v38 == -1)
        {
          v35 = v31 + 24 * v37;
          goto LABEL_58;
        }

        if (!v38)
        {
          break;
        }

        if (WTF::equal(v38, *v30, v9))
        {
          goto LABEL_67;
        }

LABEL_58:
        v34 = i + v37;
      }

      v46 = v31 + 24 * v37;
      if (v35)
      {
        *v35 = 0;
        *(v35 + 1) = 0;
        *(v35 + 2) = 0;
        --*(v31 - 4);
        v46 = v35;
      }

      WTF::String::operator=(v46, v30);
      *(v46 + 8) = *(v30 + 1);
      v40 = v50;
      if (v50)
      {
        v41 = *(v50 - 3) + 1;
      }

      else
      {
        v41 = 1;
      }

      *(v50 - 3) = v41;
      v42 = (*(v40 - 4) + v41);
      v43 = *(v40 - 1);
      if (v43 > 0x400)
      {
        if (v43 <= 2 * v42)
        {
LABEL_66:
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,void (Inspector::AutomationBackendDispatcher::*)(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)>,WTF::KeyValuePairKeyExtractor<void (Inspector::AutomationBackendDispatcher::*)(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,void ()(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&),WTF::DefaultHash,WTF::HashTraits<WTF::String>,WTF::HashMap<void ()(long,WTF::RefPtr<WTF::JSONImpl::Object,WTF::RawPtrTraits<WTF::JSONImpl::Object>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Object>> &&)>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::expand(&v50);
        }
      }

      else if (3 * v43 <= 4 * v42)
      {
        goto LABEL_66;
      }

LABEL_67:
      v47 += 3;
      if (v47 == 144)
      {
        qword_1ED641A60 = v50;
        for (j = 141; j != -3; j -= 3)
        {
          v45 = v51[j];
          v51[j] = 0;
          if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v45, v39);
          }
        }

        _MergedGlobals_44 = 1;
        v11 = &unk_1ED641000;
        break;
      }
    }
  }

  v12 = v11[332];
  v13 = *a3;
  if (v12)
  {
    if (v13 != -1)
    {
      if (!v13)
      {
        __break(0xC471u);
        JUMPOUT(0x19D677CE4);
      }

      v14 = *(v12 - 8);
      v15 = *(v13 + 4);
      if (v15 < 0x100)
      {
        v16 = WTF::StringImpl::hashSlowCase(v13);
      }

      else
      {
        v16 = v15 >> 8;
      }

      for (k = 0; ; v16 = k + v18)
      {
        v18 = v16 & v14;
        v19 = v12 + 24 * (v16 & v14);
        v20 = *v19;
        if (*v19 != -1)
        {
          if (!v20)
          {
            v21 = v11[332];
            if (v21)
            {
              v19 = v21 + 24 * *(v21 - 4);
              goto LABEL_18;
            }

            goto LABEL_22;
          }

          if (WTF::equal(v20, *a3, v9))
          {
            v21 = v11[332];
            if (v21)
            {
LABEL_18:
              v21 += 24 * *(v21 - 4);
            }

            if (v21 != v19)
            {
              v22 = *(v19 + 8);
              v23 = *(v19 + 16);
              v24 = (a1 + (v23 >> 1));
              if (v23)
              {
                v22 = *(*v24 + v22);
              }

              v22(v24, a2, &v49);
              goto LABEL_33;
            }

LABEL_22:
            v13 = *a3;
            goto LABEL_23;
          }
        }

        ++k;
      }
    }

LABEL_81:
    __break(0xC471u);
    JUMPOUT(0x19D677CC4);
  }

LABEL_23:
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  v48 = v13;
  WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("'Automation.", 13, &v48, "' was not found", 16, v51);
  Inspector::BackendDispatcher::reportProtocolError();
  v26 = v51[0];
  v51[0] = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v25);
  }

  v27 = v48;
  v48 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v25);
  }

LABEL_33:
  result = v49;
  v49 = 0;
  if (result)
  {
    if (*result == 1)
    {
      result = WTF::JSONImpl::Value::operator delete();
      if (!a1)
      {
        return result;
      }

      goto LABEL_37;
    }

    --*result;
  }

  if (!a1)
  {
    return result;
  }

LABEL_37:
  if (a1[2] == 1)
  {
    return (*(*a1 + 8))(a1);
  }

  --a1[2];
  return result;
}

uint64_t Inspector::AutomationBackendDispatcher::getBrowsingContexts(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  ++*v4;
  v5 = WTF::fastMalloc(0x18);
  *v5 = &unk_1F10E6E18;
  v5[1] = v4;
  v5[2] = a2;
  v7 = v5;
  (**v3)(v3, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::getBrowsingContext(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v5 = *(a1 + 16);
  v6 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v5, v6, &v16);
  v8 = v16;
  v16 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(a1 + 16);
  if (v9[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v11 = v16;
    v16 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }
  }

  else
  {
    v12 = *(a1 + 24);
    ++*v9;
    v13 = WTF::fastMalloc(0x18);
    *v13 = &unk_1F10E6E40;
    *(v13 + 1) = v9;
    *(v13 + 2) = a2;
    v16 = v13;
    (*(*v12 + 8))(v12, &v17, &v16);
    v14 = v16;
    v16 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  result = v17;
  v17 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v10);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::createBrowsingContext(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v5 = *(a1 + 16);
  v6 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v5, v6, &v19);
  v8 = v19;
  v19 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v10 = v19;
    v19 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }
  }

  else
  {
    v11 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::BrowsingContextPresentation>(&v20);
    LODWORD(v19) = v11;
    BYTE4(v19) = BYTE4(v11);
    v14 = a1 + 16;
    v12 = *(a1 + 16);
    v13 = *(v14 + 8);
    ++*v12;
    v15 = WTF::fastMalloc(0x18);
    *v15 = &unk_1F10E6E68;
    v15[1] = v12;
    v15[2] = a2;
    v18 = v15;
    (*(*v13 + 16))(v13, &v19, &v18);
    v16 = v18;
    v18 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  result = v20;
  v20 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v9);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::closeBrowsingContext(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v5 = *(a1 + 16);
  v6 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v5, v6, &v16);
  v8 = v16;
  v16 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(a1 + 16);
  if (v9[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v11 = v16;
    v16 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }
  }

  else
  {
    v12 = *(a1 + 24);
    ++*v9;
    v13 = WTF::fastMalloc(0x18);
    *v13 = &unk_1F10E6E90;
    *(v13 + 1) = v9;
    *(v13 + 2) = a2;
    v16 = v13;
    (*(*v12 + 24))(v12, &v17, &v16);
    v14 = v16;
    v16 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  result = v17;
  v17 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v10);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::deleteSession(uint64_t a1)
{
  v1 = (*(**(a1 + 24) + 32))(&v5);
  if (v6 == 1)
  {
    result = Inspector::BackendDispatcher::reportProtocolError();
  }

  else
  {
    WTF::JSONImpl::Object::create(&v4, v1);
    Inspector::BackendDispatcher::sendResponse();
    result = v4;
    v4 = 0;
    if (result)
    {
      if (*result == 1)
      {
        result = WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  if (v6 == 1)
  {
    result = v5;
    v5 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v3);
      }
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::switchToBrowsingContext(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &v23);
  v9 = v23;
  v23 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v10, v11, &v22);
  v13 = v22;
  v22 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  if (v14[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v16 = v22;
    v22 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
    }
  }

  else
  {
    v17 = *(a1 + 24);
    ++*v14;
    v18 = WTF::fastMalloc(0x18);
    *v18 = &unk_1F10E6EB8;
    *(v18 + 1) = v14;
    *(v18 + 2) = a2;
    v22 = v18;
    (*(*v17 + 40))(v17, &v24, &v23, &v22);
    v19 = v22;
    v22 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  v20 = v23;
  v23 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v15);
  }

  result = v24;
  v24 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v15);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::setWindowFrameOfBrowsingContext(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &v29);
  v9 = v29;
  v29 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getObject(v10, v11, &v28);
  v13 = v28;
  v28 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  v15 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getObject(v14, v15, &v27);
  v17 = v27;
  v27 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  v18 = *(a1 + 16);
  if (v18[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v20 = v27;
    v27 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v19);
    }
  }

  else
  {
    v21 = *(a1 + 24);
    ++*v18;
    v22 = WTF::fastMalloc(0x18);
    *v22 = &unk_1F10E6EE0;
    *(v22 + 1) = v18;
    *(v22 + 2) = a2;
    v27 = v22;
    (*(*v21 + 48))(v21, &v30, &v29, &v28, &v27);
    v23 = v27;
    v27 = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }
  }

  v24 = v28;
  v28 = 0;
  if (v24)
  {
    if (*v24 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v24;
    }
  }

  v25 = v29;
  v29 = 0;
  if (v25)
  {
    if (*v25 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v25;
    }
  }

  result = v30;
  v30 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v19);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::maximizeWindowOfBrowsingContext(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v5 = *(a1 + 16);
  v6 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v5, v6, &v16);
  v8 = v16;
  v16 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(a1 + 16);
  if (v9[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v11 = v16;
    v16 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }
  }

  else
  {
    v12 = *(a1 + 24);
    ++*v9;
    v13 = WTF::fastMalloc(0x18);
    *v13 = &unk_1F10E6F08;
    *(v13 + 1) = v9;
    *(v13 + 2) = a2;
    v16 = v13;
    (*(*v12 + 56))(v12, &v17, &v16);
    v14 = v16;
    v16 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  result = v17;
  v17 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v10);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::hideWindowOfBrowsingContext(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v5 = *(a1 + 16);
  v6 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v5, v6, &v16);
  v8 = v16;
  v16 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(a1 + 16);
  if (v9[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v11 = v16;
    v16 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }
  }

  else
  {
    v12 = *(a1 + 24);
    ++*v9;
    v13 = WTF::fastMalloc(0x18);
    *v13 = &unk_1F10E6F30;
    *(v13 + 1) = v9;
    *(v13 + 2) = a2;
    v16 = v13;
    (*(*v12 + 64))(v12, &v17, &v16);
    v14 = v16;
    v16 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  result = v17;
  v17 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v10);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::navigateBrowsingContext(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &Double);
  v9 = Double;
  Double = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v10, v11, &Double);
  v13 = Double;
  Double = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  v15 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v14, v15, &Double);
  v17 = Double;
  Double = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  v18 = *(a1 + 16);
  v19 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Double = Inspector::BackendDispatcher::getDouble(v18, v19, &v34);
  v36 = v20;
  v21 = v34;
  v34 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v23 = v34;
    v34 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v22);
    }
  }

  else
  {
    v24 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::PageLoadStrategy>(&v37);
    LODWORD(v34) = v24;
    BYTE4(v34) = BYTE4(v24);
    v27 = a1 + 16;
    v25 = *(a1 + 16);
    v26 = *(v27 + 8);
    ++*v25;
    v28 = WTF::fastMalloc(0x18);
    *v28 = &unk_1F10E6F58;
    v28[1] = v25;
    v28[2] = a2;
    v33 = v28;
    (*(*v26 + 72))(v26, &v39, &v38, &v34, &Double, &v33);
    v29 = v33;
    v33 = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }
  }

  v30 = v37;
  v37 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v22);
  }

  v31 = v38;
  v38 = 0;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v22);
  }

  result = v39;
  v39 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v22);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::goBackInBrowsingContext(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &Double);
  v9 = Double;
  Double = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v10, v11, &Double);
  v13 = Double;
  Double = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  v15 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Double = Inspector::BackendDispatcher::getDouble(v14, v15, &v29);
  v31 = v16;
  v17 = v29;
  v29 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v19 = v29;
    v29 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v18);
    }
  }

  else
  {
    v20 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::PageLoadStrategy>(&v32);
    LODWORD(v29) = v20;
    BYTE4(v29) = BYTE4(v20);
    v23 = a1 + 16;
    v21 = *(a1 + 16);
    v22 = *(v23 + 8);
    ++*v21;
    v24 = WTF::fastMalloc(0x18);
    *v24 = &unk_1F10E6F80;
    v24[1] = v21;
    v24[2] = a2;
    v28 = v24;
    (*(*v22 + 80))(v22, &v33, &v29, &Double, &v28);
    v25 = v28;
    v28 = 0;
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }
  }

  v26 = v32;
  v32 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v18);
  }

  result = v33;
  v33 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v18);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::goForwardInBrowsingContext(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &Double);
  v9 = Double;
  Double = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v10, v11, &Double);
  v13 = Double;
  Double = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  v15 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Double = Inspector::BackendDispatcher::getDouble(v14, v15, &v29);
  v31 = v16;
  v17 = v29;
  v29 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v19 = v29;
    v29 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v18);
    }
  }

  else
  {
    v20 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::PageLoadStrategy>(&v32);
    LODWORD(v29) = v20;
    BYTE4(v29) = BYTE4(v20);
    v23 = a1 + 16;
    v21 = *(a1 + 16);
    v22 = *(v23 + 8);
    ++*v21;
    v24 = WTF::fastMalloc(0x18);
    *v24 = &unk_1F10E6FA8;
    v24[1] = v21;
    v24[2] = a2;
    v28 = v24;
    (*(*v22 + 88))(v22, &v33, &v29, &Double, &v28);
    v25 = v28;
    v28 = 0;
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }
  }

  v26 = v32;
  v32 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v18);
  }

  result = v33;
  v33 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v18);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::reloadBrowsingContext(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &Double);
  v9 = Double;
  Double = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v10, v11, &Double);
  v13 = Double;
  Double = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  v15 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Double = Inspector::BackendDispatcher::getDouble(v14, v15, &v29);
  v31 = v16;
  v17 = v29;
  v29 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v19 = v29;
    v29 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v18);
    }
  }

  else
  {
    v20 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::PageLoadStrategy>(&v32);
    LODWORD(v29) = v20;
    BYTE4(v29) = BYTE4(v20);
    v23 = a1 + 16;
    v21 = *(a1 + 16);
    v22 = *(v23 + 8);
    ++*v21;
    v24 = WTF::fastMalloc(0x18);
    *v24 = &unk_1F10E6FD0;
    v24[1] = v21;
    v24[2] = a2;
    v28 = v24;
    (*(*v22 + 96))(v22, &v33, &v29, &Double, &v28);
    v25 = v28;
    v28 = 0;
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }
  }

  v26 = v32;
  v32 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v18);
  }

  result = v33;
  v33 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v18);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::waitForNavigationToComplete(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &Double);
  v9 = Double;
  Double = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v10, v11, &Double);
  v13 = Double;
  Double = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  v15 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v14, v15, &Double);
  v17 = Double;
  Double = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  v18 = *(a1 + 16);
  v19 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Double = Inspector::BackendDispatcher::getDouble(v18, v19, &v34);
  v36 = v20;
  v21 = v34;
  v34 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v23 = v34;
    v34 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v22);
    }
  }

  else
  {
    v24 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::PageLoadStrategy>(&v37);
    LODWORD(v34) = v24;
    BYTE4(v34) = BYTE4(v24);
    v27 = a1 + 16;
    v25 = *(a1 + 16);
    v26 = *(v27 + 8);
    ++*v25;
    v28 = WTF::fastMalloc(0x18);
    *v28 = &unk_1F10E6FF8;
    v28[1] = v25;
    v28[2] = a2;
    v33 = v28;
    (*(*v26 + 104))(v26, &v39, &v38, &v34, &Double, &v33);
    v29 = v33;
    v33 = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }
  }

  v30 = v37;
  v37 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v22);
  }

  v31 = v38;
  v38 = 0;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v22);
  }

  result = v39;
  v39 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v22);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::evaluateJavaScriptFunction(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &Double);
  v9 = Double;
  Double = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v52 = Double;
  Inspector::BackendDispatcher::getString(v10, v11, &v52);
  v13 = v52;
  v52 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  v15 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v51 = Double;
  Inspector::BackendDispatcher::getString(v14, v15, &v51);
  v17 = v51;
  v51 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  v18 = *(a1 + 16);
  v19 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v50 = Double;
  Inspector::BackendDispatcher::getArray(v18, v19, &v50);
  v21 = v50;
  v50 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  v22 = *(a1 + 16);
  v23 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v50 = Double;
  Boolean = Inspector::BackendDispatcher::getBoolean(v22, v23, &v50);
  v25 = v50;
  v50 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v24);
  }

  v26 = *(a1 + 16);
  v27 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v48 = Inspector::BackendDispatcher::getBoolean(v26, v27, &Double);
  v29 = Double;
  Double = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v28);
  }

  v30 = *(a1 + 16);
  v31 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Double = Inspector::BackendDispatcher::getDouble(v30, v31, &v50);
  v47 = v32;
  v33 = v50;
  v50 = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v32);
  }

  v34 = *(a1 + 16);
  if (v34[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v36 = v50;
    v50 = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v35);
    }
  }

  else
  {
    v37 = *(a1 + 24);
    v50 = v51;
    v51 = 0;
    ++*v34;
    v38 = WTF::fastMalloc(0x18);
    *v38 = &unk_1F10E7020;
    v38[1] = v34;
    v38[2] = a2;
    v45 = v38;
    (*(*v37 + 112))(v37, &v54, &v53, &v52, &v50, &Boolean, &v48, &Double, &v45);
    v39 = v45;
    v45 = 0;
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }

    v40 = v50;
    v50 = 0;
    if (v40)
    {
      if (*v40 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v40;
      }
    }
  }

  v41 = v51;
  v51 = 0;
  if (v41)
  {
    if (*v41 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v41;
    }
  }

  v42 = v52;
  v52 = 0;
  if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v42, v35);
  }

  v43 = v53;
  v53 = 0;
  if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v43, v35);
  }

  result = v54;
  v54 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v35);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::performMouseInteraction(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &v57);
  v9 = v57;
  v57 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v54 = v57;
  Inspector::BackendDispatcher::getObject(v10, v11, &v54);
  v13 = v54;
  v54 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  v15 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v53 = v57;
  Inspector::BackendDispatcher::getString(v14, v15, &v53);
  v17 = v53;
  v53 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  v18 = *(a1 + 16);
  v19 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v52 = v57;
  Inspector::BackendDispatcher::getString(v18, v19, &v52);
  v21 = v52;
  v52 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  v22 = *(a1 + 16);
  v23 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v51 = v57;
  Inspector::BackendDispatcher::getArray(v22, v23, &v51);
  v25 = v51;
  v51 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v24);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v27 = v57;
    v57 = 0;
    if (!v27)
    {
      goto LABEL_46;
    }

    goto LABEL_36;
  }

  v28 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::MouseButton>(&v54);
  if ((v28 & 0x100000000) != 0)
  {
    v31 = v28;
    v32 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::MouseInteraction>(&v53);
    if ((v32 & 0x100000000) != 0)
    {
      v35 = v32;
      v57 = v55;
      v55 = 0;
      v51 = v52;
      v52 = 0;
      v38 = a1 + 16;
      v36 = *(a1 + 16);
      v37 = *(v38 + 8);
      ++*v36;
      v39 = WTF::fastMalloc(0x18);
      *v39 = &unk_1F10E7048;
      v39[1] = v36;
      v39[2] = a2;
      v48 = v39;
      (*(*v37 + 120))(v37, &v56, &v57, v31, v35, &v51, &v48);
      v40 = v48;
      v48 = 0;
      if (v40)
      {
        (*(*v40 + 8))(v40);
      }

      v41 = v51;
      v51 = 0;
      if (v41)
      {
        if (*v41 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v41;
        }
      }

      v42 = v57;
      v57 = 0;
      if (v42)
      {
        if (*v42 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v42;
        }
      }

      goto LABEL_46;
    }

    v33 = v53;
    if (v53)
    {
      atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
    }

    v49 = v33;
    v57 = "Unknown interaction: ";
    v58 = 22;
    WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(&v57, &v49, &v51);
    if (v51)
    {
      Inspector::BackendDispatcher::reportProtocolError();
      v34 = v51;
      v51 = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v26);
      }

      v27 = v49;
      v49 = 0;
      if (v27)
      {
        goto LABEL_36;
      }

      goto LABEL_46;
    }

    __break(0xC471u);
LABEL_68:
    JUMPOUT(0x19D67A2F0);
  }

  v29 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit(v54, 2u, memory_order_relaxed);
  }

  v50 = v29;
  v57 = "Unknown button: ";
  v58 = 17;
  WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(&v57, &v50, &v51);
  if (!v51)
  {
    __break(0xC471u);
    goto LABEL_68;
  }

  Inspector::BackendDispatcher::reportProtocolError();
  v30 = v51;
  v51 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v26);
  }

  v27 = v50;
  v50 = 0;
  if (v27)
  {
LABEL_36:
    if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v26);
    }
  }

LABEL_46:
  v43 = v52;
  v52 = 0;
  if (v43)
  {
    if (*v43 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v43;
    }
  }

  v44 = v53;
  v53 = 0;
  if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v44, v26);
  }

  v45 = v54;
  v54 = 0;
  if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v45, v26);
  }

  v46 = v55;
  v55 = 0;
  if (v46)
  {
    if (*v46 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v46;
    }
  }

  result = v56;
  v56 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v26);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::performKeyboardInteractions(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &v25);
  v9 = v25;
  v25 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getArray(v10, v11, &v24);
  v13 = v24;
  v24 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  if (v14[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v16 = v24;
    v24 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
    }
  }

  else
  {
    v17 = *(a1 + 24);
    v24 = v25;
    v25 = 0;
    ++*v14;
    v18 = WTF::fastMalloc(0x18);
    *v18 = &unk_1F10E7070;
    v18[1] = v14;
    v18[2] = a2;
    v23 = v18;
    (*(*v17 + 128))(v17, &v26, &v24, &v23);
    v19 = v23;
    v23 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v24;
    v24 = 0;
    if (v20)
    {
      if (*v20 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v20;
      }
    }
  }

  v21 = v25;
  v25 = 0;
  if (v21)
  {
    if (*v21 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v21;
    }
  }

  result = v26;
  v26 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v15);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::performInteractionSequence(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &v40);
  v9 = v40;
  v40 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v37 = v40;
  Inspector::BackendDispatcher::getString(v10, v11, &v37);
  v13 = v37;
  v37 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  v15 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40;
  Inspector::BackendDispatcher::getArray(v14, v15, &v36);
  v17 = v36;
  v36 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  v18 = *(a1 + 16);
  v19 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40;
  Inspector::BackendDispatcher::getArray(v18, v19, &v36);
  v21 = v36;
  v36 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  v22 = *(a1 + 16);
  if (v22[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v24 = v36;
    v36 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v23);
    }
  }

  else
  {
    v25 = *(a1 + 24);
    v36 = v37;
    v37 = 0;
    v35 = v40;
    v40 = 0;
    ++*v22;
    v26 = WTF::fastMalloc(0x18);
    *v26 = &unk_1F10E7098;
    v26[1] = v22;
    v26[2] = a2;
    v34 = v26;
    (*(*v25 + 136))(v25, &v39, &v38, &v36, &v35, &v34);
    v27 = v34;
    v34 = 0;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = v35;
    v35 = 0;
    if (v28)
    {
      if (*v28 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v28;
      }
    }

    v29 = v36;
    v36 = 0;
    if (v29)
    {
      if (*v29 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v29;
      }
    }
  }

  v30 = v40;
  v40 = 0;
  if (v30)
  {
    if (*v30 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v30;
    }
  }

  v31 = v37;
  v37 = 0;
  if (v31)
  {
    if (*v31 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v31;
    }
  }

  v32 = v38;
  v38 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v23);
  }

  result = v39;
  v39 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v23);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::cancelInteractionSequence(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &v23);
  v9 = v23;
  v23 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v10, v11, &v22);
  v13 = v22;
  v22 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  if (v14[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v16 = v22;
    v22 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
    }
  }

  else
  {
    v17 = *(a1 + 24);
    ++*v14;
    v18 = WTF::fastMalloc(0x18);
    *v18 = &unk_1F10E70C0;
    *(v18 + 1) = v14;
    *(v18 + 2) = a2;
    v22 = v18;
    (*(*v17 + 144))(v17, &v24, &v23, &v22);
    v19 = v22;
    v22 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  v20 = v23;
  v23 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v15);
  }

  result = v24;
  v24 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v15);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::takeScreenshot(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &v39);
  v9 = v39;
  v39 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v10, v11, &v38);
  v13 = v38;
  v38 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  v15 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v14, v15, &v37);
  v17 = v37;
  v37 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  v18 = *(a1 + 16);
  v19 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Boolean = Inspector::BackendDispatcher::getBoolean(v18, v19, &v37);
  v21 = v37;
  v37 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  v22 = *(a1 + 16);
  v23 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v35 = Inspector::BackendDispatcher::getBoolean(v22, v23, &v37);
  v25 = v37;
  v37 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v24);
  }

  v26 = *(a1 + 16);
  if (v26[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v28 = v37;
    v37 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v27);
    }
  }

  else
  {
    v29 = *(a1 + 24);
    ++*v26;
    v30 = WTF::fastMalloc(0x18);
    *v30 = &unk_1F10E70E8;
    *(v30 + 1) = v26;
    *(v30 + 2) = a2;
    v37 = v30;
    (*(*v29 + 152))(v29, &v40, &v39, &v38, &Boolean, &v35, &v37);
    v31 = v37;
    v37 = 0;
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }
  }

  v32 = v38;
  v38 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v27);
  }

  v33 = v39;
  v39 = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v27);
  }

  result = v40;
  v40 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v27);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::resolveChildFrameHandle(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &v42);
  v9 = v42;
  v42 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v40 = v42;
  Inspector::BackendDispatcher::getString(v10, v11, &v40);
  v13 = v40;
  v40 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  v15 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Integer = Inspector::BackendDispatcher::getInteger(v14, v15, &v39);
  LODWORD(v40) = Integer;
  BYTE4(v40) = BYTE4(Integer);
  v18 = v39;
  v39 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v17);
  }

  v19 = *(a1 + 16);
  v20 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v19, v20, &v38);
  v22 = v38;
  v38 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v21);
  }

  v23 = *(a1 + 16);
  v24 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v23, v24, &v37);
  v26 = v37;
  v37 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v25);
  }

  v27 = *(a1 + 16);
  if (v27[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v29 = v37;
    v37 = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v28);
    }
  }

  else
  {
    v30 = *(a1 + 24);
    ++*v27;
    v31 = WTF::fastMalloc(0x18);
    *v31 = &unk_1F10E7110;
    *(v31 + 1) = v27;
    *(v31 + 2) = a2;
    v37 = v31;
    (*(*v30 + 160))(v30, &v41, &v42, &v40, &v39, &v38, &v37);
    v32 = v37;
    v37 = 0;
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }
  }

  v33 = v38;
  v38 = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v28);
  }

  v34 = v39;
  v39 = 0;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v28);
  }

  v35 = v42;
  v42 = 0;
  if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v35, v28);
  }

  result = v41;
  v41 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v28);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::resolveParentFrameHandle(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &v23);
  v9 = v23;
  v23 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v10, v11, &v22);
  v13 = v22;
  v22 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  if (v14[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v16 = v22;
    v22 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
    }
  }

  else
  {
    v17 = *(a1 + 24);
    ++*v14;
    v18 = WTF::fastMalloc(0x18);
    *v18 = &unk_1F10E7138;
    *(v18 + 1) = v14;
    *(v18 + 2) = a2;
    v22 = v18;
    (*(*v17 + 168))(v17, &v24, &v23, &v22);
    v19 = v22;
    v22 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  v20 = v23;
  v23 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v15);
  }

  result = v24;
  v24 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v15);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::computeElementLayout(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, v48);
  v9 = v48[0];
  v48[0] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v45 = v48[0];
  Inspector::BackendDispatcher::getString(v10, v11, &v45);
  v13 = v45;
  v45 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  v15 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v44 = v48[0];
  Inspector::BackendDispatcher::getString(v14, v15, &v44);
  v17 = v44;
  v44 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  v18 = *(a1 + 16);
  v19 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v44 = v48[0];
  Boolean = Inspector::BackendDispatcher::getBoolean(v18, v19, &v44);
  v21 = v44;
  v44 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  v22 = *(a1 + 16);
  v23 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v42 = v48[0];
  Inspector::BackendDispatcher::getString(v22, v23, &v42);
  v25 = v42;
  v42 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v24);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v27 = v48[0];
    v48[0] = 0;
    if (v27)
    {
LABEL_27:
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v26);
      }
    }
  }

  else
  {
    v28 = Inspector::Protocol::AutomationHelpers::parseEnumValueFromString<Inspector::Protocol::Automation::CoordinateSystem>(&v44);
    if ((v28 & 0x100000000) != 0)
    {
      v32 = v28;
      v35 = a1 + 16;
      v33 = *(a1 + 16);
      v34 = *(v35 + 8);
      ++*v33;
      v36 = WTF::fastMalloc(0x18);
      *v36 = &unk_1F10E7160;
      *(v36 + 1) = v33;
      *(v36 + 2) = a2;
      v48[0] = v36;
      (*(*v34 + 176))(v34, &v47, &v46, &v45, &Boolean, v32, v48);
      v37 = v48[0];
      v48[0] = 0;
      if (v37)
      {
        (*(*v37 + 8))(v37);
      }

      goto LABEL_31;
    }

    v29 = v44;
    if (v44)
    {
      atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
    }

    v41 = v29;
    v48[0] = "Unknown coordinateSystem: ";
    v48[1] = 27;
    result = WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(v48, &v41, &v42);
    if (!v42)
    {
      __break(0xC471u);
      return result;
    }

    Inspector::BackendDispatcher::reportProtocolError();
    v31 = v42;
    v42 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v26);
    }

    v27 = v41;
    v41 = 0;
    if (v27)
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  v38 = v44;
  v44 = 0;
  if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v38, v26);
  }

  v39 = v45;
  v45 = 0;
  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v39, v26);
  }

  v40 = v46;
  v46 = 0;
  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v40, v26);
  }

  result = v47;
  v47 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v26);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::getComputedRole(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &v29);
  v9 = v29;
  v29 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v10, v11, &v28);
  v13 = v28;
  v28 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  v15 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v14, v15, &v27);
  v17 = v27;
  v27 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  v18 = *(a1 + 16);
  if (v18[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v20 = v27;
    v27 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v19);
    }
  }

  else
  {
    v21 = *(a1 + 24);
    ++*v18;
    v22 = WTF::fastMalloc(0x18);
    *v22 = &unk_1F10E7188;
    *(v22 + 1) = v18;
    *(v22 + 2) = a2;
    v27 = v22;
    (*(*v21 + 184))(v21, &v30, &v29, &v28, &v27);
    v23 = v27;
    v27 = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }
  }

  v24 = v28;
  v28 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v19);
  }

  v25 = v29;
  v29 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v19);
  }

  result = v30;
  v30 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v19);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::getComputedLabel(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &v29);
  v9 = v29;
  v29 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v10, v11, &v28);
  v13 = v28;
  v28 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  v15 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v14, v15, &v27);
  v17 = v27;
  v27 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  v18 = *(a1 + 16);
  if (v18[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v20 = v27;
    v27 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v19);
    }
  }

  else
  {
    v21 = *(a1 + 24);
    ++*v18;
    v22 = WTF::fastMalloc(0x18);
    *v22 = &unk_1F10E71B0;
    *(v22 + 1) = v18;
    *(v22 + 2) = a2;
    v27 = v22;
    (*(*v21 + 192))(v21, &v30, &v29, &v28, &v27);
    v23 = v27;
    v27 = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }
  }

  v24 = v28;
  v28 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v19);
  }

  v25 = v29;
  v29 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v19);
  }

  result = v30;
  v30 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v19);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::selectOptionElement(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &v29);
  v9 = v29;
  v29 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v10, v11, &v28);
  v13 = v28;
  v28 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  v15 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v14, v15, &v27);
  v17 = v27;
  v27 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  v18 = *(a1 + 16);
  if (v18[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v20 = v27;
    v27 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v19);
    }
  }

  else
  {
    v21 = *(a1 + 24);
    ++*v18;
    v22 = WTF::fastMalloc(0x18);
    *v22 = &unk_1F10E71D8;
    *(v22 + 1) = v18;
    *(v22 + 2) = a2;
    v27 = v22;
    (*(*v21 + 200))(v21, &v30, &v29, &v28, &v27);
    v23 = v27;
    v27 = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }
  }

  v24 = v28;
  v28 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v19);
  }

  v25 = v29;
  v29 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v19);
  }

  result = v30;
  v30 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v19);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::isShowingJavaScriptDialog(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v4 = *(a1 + 16);
  v5 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v4, v5, v29);
  v7 = v29[0];
  v29[0] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v9 = v29[0];
    v29[0] = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }
  }

  else
  {
    v10 = (*(**(a1 + 24) + 208))(&v25);
    if (v26)
    {
      if (v26 != 1)
      {
        mpark::throw_bad_variant_access(v10);
      }

      Inspector::BackendDispatcher::reportProtocolError();
    }

    else
    {
      v12 = v25;
      WTF::JSONImpl::Object::create(&v24, v10);
      v13 = v24;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::JSONImpl::Value::create(v12);
      WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v13 + 16), &v23, &v28, v29);
      if (v30 == 1)
      {
        v15 = *(v13 + 36);
        if (v15 == *(v13 + 32))
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v13 + 24, &v23);
        }

        else
        {
          v16 = *(v13 + 24);
          v17 = v23;
          if (v23)
          {
            atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
          }

          v18 = *(v13 + 36);
          *(v16 + 8 * v15) = v17;
          *(v13 + 36) = v18 + 1;
        }
      }

      v19 = v28;
      v28 = 0;
      if (v19)
      {
        if (*v19 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v19;
        }
      }

      v20 = v23;
      v23 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v14);
      }

      Inspector::BackendDispatcher::sendResponse();
      v21 = v24;
      v24 = 0;
      if (v21)
      {
        if (*v21 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v21;
        }
      }
    }

    mpark::detail::move_constructor<mpark::detail::traits<BOOL,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&v25, v11);
  }

  result = v27;
  v27 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::dismissCurrentJavaScriptDialog(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v4 = *(a1 + 16);
  v5 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v4, v5, &v14);
  v7 = v14;
  v14 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
LABEL_12:
    v11 = v14;
    v14 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }

    goto LABEL_15;
  }

  v9 = (*(**(a1 + 24) + 216))(&v14);
  if (v15 == 1)
  {
    Inspector::BackendDispatcher::reportProtocolError();
  }

  else
  {
    WTF::JSONImpl::Object::create(&v13, v9);
    Inspector::BackendDispatcher::sendResponse();
    v10 = v13;
    v13 = 0;
    if (v10)
    {
      if (*v10 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v10;
      }
    }
  }

  if (v15 == 1)
  {
    goto LABEL_12;
  }

LABEL_15:
  result = v16;
  v16 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::acceptCurrentJavaScriptDialog(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v4 = *(a1 + 16);
  v5 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v4, v5, &v14);
  v7 = v14;
  v14 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
LABEL_12:
    v11 = v14;
    v14 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }

    goto LABEL_15;
  }

  v9 = (*(**(a1 + 24) + 224))(&v14);
  if (v15 == 1)
  {
    Inspector::BackendDispatcher::reportProtocolError();
  }

  else
  {
    WTF::JSONImpl::Object::create(&v13, v9);
    Inspector::BackendDispatcher::sendResponse();
    v10 = v13;
    v13 = 0;
    if (v10)
    {
      if (*v10 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v10;
      }
    }
  }

  if (v15 == 1)
  {
    goto LABEL_12;
  }

LABEL_15:
  result = v16;
  v16 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::messageOfCurrentJavaScriptDialog(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v4 = *(a1 + 16);
  v5 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v4, v5, v31);
  v7 = v31[0];
  v31[0] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v9 = v31[0];
    v31[0] = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }
  }

  else
  {
    v10 = (*(**(a1 + 24) + 232))(&v27);
    if (v28)
    {
      if (v28 != 1)
      {
        mpark::throw_bad_variant_access(v10);
      }

      Inspector::BackendDispatcher::reportProtocolError();
    }

    else
    {
      v26 = v27;
      v27 = 0;
      WTF::JSONImpl::Object::create(&v25, v10);
      v12 = v25;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::JSONImpl::Value::create(&v30, &v26, v13);
      WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v12 + 16), &v24, &v30, v31);
      if (v32 == 1)
      {
        v15 = *(v12 + 36);
        if (v15 == *(v12 + 32))
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v12 + 24, &v24);
        }

        else
        {
          v16 = *(v12 + 24);
          v17 = v24;
          if (v24)
          {
            atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
          }

          v18 = *(v12 + 36);
          *(v16 + 8 * v15) = v17;
          *(v12 + 36) = v18 + 1;
        }
      }

      v19 = v30;
      v30 = 0;
      if (v19)
      {
        if (*v19 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v19;
        }
      }

      v20 = v24;
      v24 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v14);
      }

      Inspector::BackendDispatcher::sendResponse();
      v21 = v25;
      v25 = 0;
      if (v21)
      {
        if (*v21 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v21;
        }
      }

      v22 = v26;
      v26 = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v11);
      }
    }

    std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(&v27, v11);
  }

  result = v29;
  v29 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::setUserInputForCurrentJavaScriptPrompt(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v5 = *(a1 + 16);
  v6 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v5, v6, &v20);
  v8 = v20;
  v20 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(a1 + 16);
  v10 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v9, v10, &v20);
  v12 = v20;
  v20 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
LABEL_15:
    v16 = v20;
    v20 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v13);
    }

    goto LABEL_18;
  }

  v14 = (*(**(a1 + 24) + 240))(&v20);
  if (v21 == 1)
  {
    Inspector::BackendDispatcher::reportProtocolError();
  }

  else
  {
    WTF::JSONImpl::Object::create(&v19, v14);
    Inspector::BackendDispatcher::sendResponse();
    v15 = v19;
    v19 = 0;
    if (v15)
    {
      if (*v15 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v15;
      }
    }
  }

  if (v21 == 1)
  {
    goto LABEL_15;
  }

LABEL_18:
  v17 = v22;
  v22 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v13);
  }

  result = v23;
  v23 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::setFilesToSelectForFileUpload(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v5 = *(a1 + 16);
  v6 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v5, v6, &v25);
  v8 = v25;
  v25 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(a1 + 16);
  v10 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v25;
  Inspector::BackendDispatcher::getArray(v9, v10, &v28);
  v12 = v28;
  v28 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  v13 = *(a1 + 16);
  v14 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v25;
  Inspector::BackendDispatcher::getArray(v13, v14, &v27);
  v16 = v27;
  v27 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v15);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
LABEL_21:
    v21 = v25;
    v25 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v17);
    }

    goto LABEL_24;
  }

  v18 = *(a1 + 24);
  v27 = v29;
  v29 = 0;
  (*(*v18 + 248))(&v25);
  v19 = v27;
  v27 = 0;
  if (v19)
  {
    if (*v19 == 1)
    {
      v19 = WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v19;
    }
  }

  if (v26 == 1)
  {
    Inspector::BackendDispatcher::reportProtocolError();
  }

  else
  {
    WTF::JSONImpl::Object::create(&v27, v19);
    Inspector::BackendDispatcher::sendResponse();
    v20 = v27;
    v27 = 0;
    if (v20)
    {
      if (*v20 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v20;
      }
    }
  }

  if (v26 == 1)
  {
    goto LABEL_21;
  }

LABEL_24:
  v22 = v28;
  v28 = 0;
  if (v22)
  {
    if (*v22 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v22;
    }
  }

  v23 = v29;
  v29 = 0;
  if (v23)
  {
    if (*v23 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v23;
    }
  }

  result = v30;
  v30 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v17);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::setFilesForInputFileUpload(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &v38);
  v9 = v38;
  v38 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v38;
  Inspector::BackendDispatcher::getString(v10, v11, &v36);
  v13 = v36;
  v36 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  v15 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v14, v15, &v35);
  v17 = v35;
  v35 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  v18 = *(a1 + 16);
  v19 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getArray(v18, v19, &v34);
  v21 = v34;
  v34 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

  v22 = *(a1 + 16);
  if (v22[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v24 = v34;
    v34 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v23);
    }
  }

  else
  {
    v25 = *(a1 + 24);
    v34 = v35;
    v35 = 0;
    ++*v22;
    v26 = WTF::fastMalloc(0x18);
    *v26 = &unk_1F10E7200;
    v26[1] = v22;
    v26[2] = a2;
    v33 = v26;
    (*(*v25 + 256))(v25, &v37, &v38, &v36, &v34, &v33);
    v27 = v33;
    v33 = 0;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = v34;
    v34 = 0;
    if (v28)
    {
      if (*v28 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v28;
      }
    }
  }

  v29 = v35;
  v35 = 0;
  if (v29)
  {
    if (*v29 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v29;
    }
  }

  v30 = v36;
  v36 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v23);
  }

  v31 = v38;
  v38 = 0;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v23);
  }

  result = v37;
  v37 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v23);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::getAllCookies(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v5 = *(a1 + 16);
  v6 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v5, v6, &v16);
  v8 = v16;
  v16 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(a1 + 16);
  if (v9[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v11 = v16;
    v16 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }
  }

  else
  {
    v12 = *(a1 + 24);
    ++*v9;
    v13 = WTF::fastMalloc(0x18);
    *v13 = &unk_1F10E7228;
    *(v13 + 1) = v9;
    *(v13 + 2) = a2;
    v16 = v13;
    (*(*v12 + 264))(v12, &v17, &v16);
    v14 = v16;
    v16 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  result = v17;
  v17 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v10);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::deleteSingleCookie(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &v23);
  v9 = v23;
  v23 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v10, v11, &v22);
  v13 = v22;
  v22 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  if (v14[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v16 = v22;
    v22 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
    }
  }

  else
  {
    v17 = *(a1 + 24);
    ++*v14;
    v18 = WTF::fastMalloc(0x18);
    *v18 = &unk_1F10E7250;
    *(v18 + 1) = v14;
    *(v18 + 2) = a2;
    v22 = v18;
    (*(*v17 + 272))(v17, &v24, &v23, &v22);
    v19 = v22;
    v22 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  v20 = v23;
  v23 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v15);
  }

  result = v24;
  v24 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v15);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::addSingleCookie(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v6 = *(a1 + 16);
  v7 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v6, v7, &v25);
  v9 = v25;
  v25 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(a1 + 16);
  v11 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getObject(v10, v11, &v24);
  v13 = v24;
  v24 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = *(a1 + 16);
  if (v14[9])
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v16 = v24;
    v24 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
    }
  }

  else
  {
    v17 = *(a1 + 24);
    v24 = v25;
    v25 = 0;
    ++*v14;
    v18 = WTF::fastMalloc(0x18);
    *v18 = &unk_1F10E7278;
    v18[1] = v14;
    v18[2] = a2;
    v23 = v18;
    (*(*v17 + 280))(v17, &v26, &v24, &v23);
    v19 = v23;
    v23 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v24;
    v24 = 0;
    if (v20)
    {
      if (*v20 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v20;
      }
    }
  }

  v21 = v25;
  v25 = 0;
  if (v21)
  {
    if (*v21 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v21;
    }
  }

  result = v26;
  v26 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v15);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::deleteAllCookies(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v4 = *(a1 + 16);
  v5 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v4, v5, &v14);
  v7 = v14;
  v14 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
LABEL_12:
    v11 = v14;
    v14 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }

    goto LABEL_15;
  }

  v9 = (*(**(a1 + 24) + 288))(&v14);
  if (v15 == 1)
  {
    Inspector::BackendDispatcher::reportProtocolError();
  }

  else
  {
    WTF::JSONImpl::Object::create(&v13, v9);
    Inspector::BackendDispatcher::sendResponse();
    v10 = v13;
    v13 = 0;
    if (v10)
    {
      if (*v10 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v10;
      }
    }
  }

  if (v15 == 1)
  {
    goto LABEL_12;
  }

LABEL_15:
  result = v16;
  v16 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::getSessionPermissions(uint64_t a1)
{
  v1 = (*(**(a1 + 24) + 296))(&v16);
  if (v17)
  {
    if (v17 != 1)
    {
      mpark::throw_bad_variant_access(v1);
    }

    result = Inspector::BackendDispatcher::reportProtocolError();
  }

  else
  {
    v4 = v16;
    v16 = 0;
    WTF::JSONImpl::Object::create(&v15, v1);
    v5 = v15;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v13 = v4;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v5 + 16), &v14, &v13, v18);
    if (v18[16] == 1)
    {
      v7 = *(v5 + 36);
      if (v7 == *(v5 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v5 + 24, &v14);
      }

      else
      {
        v8 = *(v5 + 24);
        v9 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
        }

        v10 = *(v5 + 36);
        *(v8 + 8 * v7) = v9;
        *(v5 + 36) = v10 + 1;
      }
    }

    v11 = v13;
    v13 = 0;
    if (v11)
    {
      if (*v11 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v11;
      }
    }

    v12 = v14;
    v14 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v6);
    }

    Inspector::BackendDispatcher::sendResponse();
    result = v15;
    v15 = 0;
    if (result)
    {
      if (*result == 1)
      {
        result = WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  if (v17 != 255)
  {
    result = v16;
    v16 = 0;
    if (v17)
    {
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v3);
        }
      }
    }

    else if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  return result;
}

WTF::JSONImpl::Object *Inspector::AutomationBackendDispatcher::setSessionPermissions(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v4 = *(a1 + 16);
  v5 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getArray(v4, v5, &v15);
  v7 = v15;
  v15 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
LABEL_15:
    v12 = v15;
    v15 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v8);
    }

    goto LABEL_18;
  }

  v9 = *(a1 + 24);
  v14 = v17;
  v17 = 0;
  (*(*v9 + 304))(&v15);
  v10 = v14;
  v14 = 0;
  if (v10)
  {
    if (*v10 == 1)
    {
      v10 = WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v10;
    }
  }

  if (v16 == 1)
  {
    Inspector::BackendDispatcher::reportProtocolError();
  }

  else
  {
    WTF::JSONImpl::Object::create(&v14, v10);
    Inspector::BackendDispatcher::sendResponse();
    v11 = v14;
    v14 = 0;
    if (v11)
    {
      if (*v11 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v11;
      }
    }
  }

  if (v16 == 1)
  {
    goto LABEL_15;
  }

LABEL_18:
  result = v17;
  v17 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::addVirtualAuthenticator(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v5 = *(a1 + 16);
  v6 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v5, v6, v39);
  v8 = v39[0];
  v39[0] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(a1 + 16);
  v10 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v34 = v39[0];
  Inspector::BackendDispatcher::getObject(v9, v10, &v34);
  v12 = v34;
  v34 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v14 = v39[0];
    v39[0] = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v13);
    }
  }

  else
  {
    v15 = *(a1 + 24);
    v39[0] = v36;
    v36 = 0;
    (*(*v15 + 312))(&v34);
    v16 = v39[0];
    v39[0] = 0;
    if (v16)
    {
      if (*v16 == 1)
      {
        v16 = WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v16;
      }
    }

    if (v35)
    {
      if (v35 != 1)
      {
        mpark::throw_bad_variant_access(v16);
      }

      Inspector::BackendDispatcher::reportProtocolError();
    }

    else
    {
      v33 = v34;
      v34 = 0;
      WTF::JSONImpl::Object::create(&v32, v16);
      v18 = v32;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::JSONImpl::Value::create(&v38, &v33, v19);
      WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v18 + 16), &v31, &v38, v39);
      if (v40 == 1)
      {
        v21 = *(v18 + 36);
        if (v21 == *(v18 + 32))
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v18 + 24, &v31);
        }

        else
        {
          v22 = *(v18 + 24);
          v23 = v31;
          if (v31)
          {
            atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
          }

          v24 = *(v18 + 36);
          *(v22 + 8 * v21) = v23;
          *(v18 + 36) = v24 + 1;
        }
      }

      v25 = v38;
      v38 = 0;
      if (v25)
      {
        if (*v25 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v25;
        }
      }

      v26 = v31;
      v31 = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v20);
      }

      Inspector::BackendDispatcher::sendResponse();
      v27 = v32;
      v32 = 0;
      if (v27)
      {
        if (*v27 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v27;
        }
      }

      v28 = v33;
      v33 = 0;
      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v17);
      }
    }

    std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(&v34, v17);
  }

  v29 = v36;
  v36 = 0;
  if (v29)
  {
    if (*v29 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v29;
    }
  }

  result = v37;
  v37 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::removeVirtualAuthenticator(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v5 = *(a1 + 16);
  v6 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v5, v6, &v20);
  v8 = v20;
  v20 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(a1 + 16);
  v10 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v9, v10, &v20);
  v12 = v20;
  v20 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
LABEL_15:
    v16 = v20;
    v20 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v13);
    }

    goto LABEL_18;
  }

  v14 = (*(**(a1 + 24) + 320))(&v20);
  if (v21 == 1)
  {
    Inspector::BackendDispatcher::reportProtocolError();
  }

  else
  {
    WTF::JSONImpl::Object::create(&v19, v14);
    Inspector::BackendDispatcher::sendResponse();
    v15 = v19;
    v19 = 0;
    if (v15)
    {
      if (*v15 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v15;
      }
    }
  }

  if (v21 == 1)
  {
    goto LABEL_15;
  }

LABEL_18:
  v17 = v22;
  v22 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v13);
  }

  result = v23;
  v23 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::addVirtualAuthenticatorCredential(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v5 = *(a1 + 16);
  v6 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v5, v6, &v25);
  v8 = v25;
  v25 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(a1 + 16);
  v10 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v25;
  Inspector::BackendDispatcher::getString(v9, v10, &v28);
  v12 = v28;
  v28 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  v13 = *(a1 + 16);
  v14 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v25;
  Inspector::BackendDispatcher::getObject(v13, v14, &v27);
  v16 = v27;
  v27 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v15);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
LABEL_21:
    v21 = v25;
    v25 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v17);
    }

    goto LABEL_24;
  }

  v18 = *(a1 + 24);
  v27 = v28;
  v28 = 0;
  (*(*v18 + 328))(&v25);
  v19 = v27;
  v27 = 0;
  if (v19)
  {
    if (*v19 == 1)
    {
      v19 = WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v19;
    }
  }

  if (v26 == 1)
  {
    Inspector::BackendDispatcher::reportProtocolError();
  }

  else
  {
    WTF::JSONImpl::Object::create(&v27, v19);
    Inspector::BackendDispatcher::sendResponse();
    v20 = v27;
    v27 = 0;
    if (v20)
    {
      if (*v20 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v20;
      }
    }
  }

  if (v26 == 1)
  {
    goto LABEL_21;
  }

LABEL_24:
  v22 = v28;
  v28 = 0;
  if (v22)
  {
    if (*v22 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v22;
    }
  }

  v23 = v29;
  v29 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v17);
  }

  result = v30;
  v30 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v17);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::getVirtualAuthenticatorCredentials(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v5 = *(a1 + 16);
  v6 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v5, v6, v35);
  v8 = v35[0];
  v35[0] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(a1 + 16);
  v10 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v35[0];
  Inspector::BackendDispatcher::getString(v9, v10, &v31);
  v12 = v31;
  v31 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    v14 = v35[0];
    v35[0] = 0;
LABEL_9:
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v13);
    }

    goto LABEL_31;
  }

  v15 = (*(**(a1 + 24) + 336))(&v31);
  if (v32)
  {
    if (v32 != 1)
    {
      mpark::throw_bad_variant_access(v15);
    }

    Inspector::BackendDispatcher::reportProtocolError();
  }

  else
  {
    v16 = v31;
    v31 = 0;
    WTF::JSONImpl::Object::create(&v30, v15);
    v17 = v30;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v28 = v16;
    v29 = v35[0];
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>((v17 + 16), &v29, &v28, v35);
    if (v36 == 1)
    {
      v19 = *(v17 + 36);
      if (v19 == *(v17 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v17 + 24, &v29);
      }

      else
      {
        v20 = *(v17 + 24);
        v21 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
        }

        v22 = *(v17 + 36);
        *(v20 + 8 * v19) = v21;
        *(v17 + 36) = v22 + 1;
      }
    }

    v23 = v28;
    v28 = 0;
    if (v23)
    {
      if (*v23 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v23;
      }
    }

    v24 = v29;
    v29 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v18);
    }

    Inspector::BackendDispatcher::sendResponse();
    v25 = v30;
    v30 = 0;
    if (v25)
    {
      if (*v25 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v25;
      }
    }
  }

  if (v32 != 255)
  {
    v14 = v31;
    v31 = 0;
    if (v32)
    {
      goto LABEL_9;
    }

    if (v14)
    {
      if (*v14 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v14;
      }
    }
  }

LABEL_31:
  v26 = v33;
  v33 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v13);
  }

  result = v34;
  v34 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::removeVirtualAuthenticatorCredential(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v5 = *(a1 + 16);
  v6 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v5, v6, &v25);
  v8 = v25;
  v25 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(a1 + 16);
  v10 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v25;
  Inspector::BackendDispatcher::getString(v9, v10, &v27);
  v12 = v27;
  v27 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  v13 = *(a1 + 16);
  v14 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v13, v14, &v25);
  v16 = v25;
  v25 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v15);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
LABEL_18:
    v20 = v25;
    v25 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v17);
    }

    goto LABEL_21;
  }

  v18 = (*(**(a1 + 24) + 344))(&v25);
  if (v26 == 1)
  {
    Inspector::BackendDispatcher::reportProtocolError();
  }

  else
  {
    WTF::JSONImpl::Object::create(&v24, v18);
    Inspector::BackendDispatcher::sendResponse();
    v19 = v24;
    v24 = 0;
    if (v19)
    {
      if (*v19 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v19;
      }
    }
  }

  if (v26 == 1)
  {
    goto LABEL_18;
  }

LABEL_21:
  v21 = v27;
  v27 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v17);
  }

  v22 = v28;
  v28 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v17);
  }

  result = v29;
  v29 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v17);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::removeAllVirtualAuthenticatorCredentials(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v5 = *(a1 + 16);
  v6 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v5, v6, &v20);
  v8 = v20;
  v20 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(a1 + 16);
  v10 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v9, v10, &v20);
  v12 = v20;
  v20 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
LABEL_15:
    v16 = v20;
    v20 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v13);
    }

    goto LABEL_18;
  }

  v14 = (*(**(a1 + 24) + 352))(&v20);
  if (v21 == 1)
  {
    Inspector::BackendDispatcher::reportProtocolError();
  }

  else
  {
    WTF::JSONImpl::Object::create(&v19, v14);
    Inspector::BackendDispatcher::sendResponse();
    v15 = v19;
    v19 = 0;
    if (v15)
    {
      if (*v15 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v15;
      }
    }
  }

  if (v21 == 1)
  {
    goto LABEL_15;
  }

LABEL_18:
  v17 = v22;
  v22 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v13);
  }

  result = v23;
  v23 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::setVirtualAuthenticatorUserVerified(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v5 = *(a1 + 16);
  v6 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v5, v6, &v24);
  v8 = v24;
  v24 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(a1 + 16);
  v10 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v9, v10, &v24);
  v12 = v24;
  v24 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  v13 = *(a1 + 16);
  v14 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Boolean = Inspector::BackendDispatcher::getBoolean(v13, v14, &v24);
  result = v24;
  v24 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v15);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
LABEL_19:
    v21 = v24;
    v24 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v18);
    }

    goto LABEL_22;
  }

  if ((Boolean & 0x100) == 0)
  {
    __break(1u);
    return result;
  }

  v19 = (*(**(a1 + 24) + 360))(&v24);
  if (v25 == 1)
  {
    Inspector::BackendDispatcher::reportProtocolError();
  }

  else
  {
    WTF::JSONImpl::Object::create(&v23, v19);
    Inspector::BackendDispatcher::sendResponse();
    v20 = v23;
    v23 = 0;
    if (v20)
    {
      if (*v20 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v20;
      }
    }
  }

  if (v25 == 1)
  {
    goto LABEL_19;
  }

LABEL_22:
  v22 = v26;
  v26 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v18);
  }

  result = v27;
  v27 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v18);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::generateTestReport(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v5 = *(a1 + 16);
  v6 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v5, v6, &v25);
  v8 = v25;
  v25 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(a1 + 16);
  v10 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v25;
  Inspector::BackendDispatcher::getString(v9, v10, &v27);
  v12 = v27;
  v27 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  v13 = *(a1 + 16);
  v14 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v13, v14, &v25);
  v16 = v25;
  v25 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v15);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
LABEL_18:
    v20 = v25;
    v25 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v17);
    }

    goto LABEL_21;
  }

  v18 = (*(**(a1 + 24) + 368))(&v25);
  if (v26 == 1)
  {
    Inspector::BackendDispatcher::reportProtocolError();
  }

  else
  {
    WTF::JSONImpl::Object::create(&v24, v18);
    Inspector::BackendDispatcher::sendResponse();
    v19 = v24;
    v24 = 0;
    if (v19)
    {
      if (*v19 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v19;
      }
    }
  }

  if (v26 == 1)
  {
    goto LABEL_18;
  }

LABEL_21:
  v21 = v27;
  v27 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v17);
  }

  v22 = v28;
  v28 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v17);
  }

  result = v29;
  v29 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v17);
    }
  }

  return result;
}

WTF::StringImpl *Inspector::AutomationBackendDispatcher::processBidiMessage(uint64_t a1, uint64_t a2, WTF::JSONImpl::Object **a3)
{
  v4 = *(a1 + 16);
  v5 = *a3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  Inspector::BackendDispatcher::getString(v4, v5, &v14);
  v7 = v14;
  v14 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  if (*(*(a1 + 16) + 36))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
LABEL_12:
    v11 = v14;
    v14 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }

    goto LABEL_15;
  }

  v9 = (*(**(a1 + 24) + 376))(&v14);
  if (v15 == 1)
  {
    Inspector::BackendDispatcher::reportProtocolError();
  }

  else
  {
    WTF::JSONImpl::Object::create(&v13, v9);
    Inspector::BackendDispatcher::sendResponse();
    v10 = v13;
    v13 = 0;
    if (v10)
    {
      if (*v10 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v10;
      }
    }
  }

  if (v15 == 1)
  {
    goto LABEL_12;
  }

LABEL_15:
  result = v16;
  v16 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}
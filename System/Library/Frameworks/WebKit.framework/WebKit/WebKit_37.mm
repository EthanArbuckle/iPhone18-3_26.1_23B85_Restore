void sub_19D78A8F0(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, WTF::StringImpl **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *&STACK[0x270];
  if (LOBYTE(STACK[0xA98]) == 1)
  {
    v23 = STACK[0xA90];
    STACK[0xA90] = 0;
    if (v23)
    {
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, a2);
      }
    }
  }

  if (LOBYTE(STACK[0xAD0]) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&STACK[0xAC8]);
  }

  if (LOBYTE(STACK[0xAE8]) == 1)
  {
    WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xAD8], a2);
  }

  if (LOBYTE(STACK[0xB00]) == 1)
  {
    WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xAF0], a2);
  }

  if (LOBYTE(STACK[0xB60]) == 1 && LOBYTE(STACK[0xB58]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xB48], a2);
  }

  if (LOBYTE(STACK[0xB88]) == 1)
  {
    v24 = STACK[0xB80];
    STACK[0xB80] = 0;
    if (v24)
    {
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, a2);
      }
    }
  }

  std::optional<std::optional<WebKit::RemotePageParameters>>::~optional(&STACK[0xB90], a2);
  if (LOBYTE(STACK[0xC88]) == 1)
  {
    v26 = STACK[0xC80];
    STACK[0xC80] = 0;
    if (v26)
    {
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v25);
      }
    }
  }

  if ((STACK[0x3F8] & 1) != 0 && (STACK[0x3F4] & 1) != 0 && a10)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::MemoryCompactLookupOnlyRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(a10, v22);
  }

  if (LOBYTE(STACK[0xC98]) == 1 && STACK[0xC90])
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(STACK[0xC90], v25);
  }

  if (LOBYTE(STACK[0xCB0]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xCA0], v25);
  }

  if (LOBYTE(STACK[0xCC0]) == 1)
  {
    v27 = STACK[0xCB8];
    STACK[0xCB8] = 0;
    if (v27)
    {
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v25);
      }
    }
  }

  std::optional<std::optional<WebCore::Color>>::~optional(&STACK[0xCE0], v25);
  if (LOBYTE(STACK[0xD20]) == 1 && LOBYTE(STACK[0xD18]) == 1)
  {
    WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xD08], v28);
  }

  std::optional<WebKit::UserContentControllerParameters>::~optional(&STACK[0xD28], v28);
  if (LOBYTE(STACK[0xEA0]) == 1 && LOBYTE(STACK[0xE98]) == 1)
  {
    WebCore::ApplicationManifest::~ApplicationManifest(&STACK[0xD88], v29);
  }

  if (LOBYTE(STACK[0xEB8]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xEA8], v29);
    if ((STACK[0x3FC] & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (!LODWORD(STACK[0x3FC]))
  {
    goto LABEL_37;
  }

  if (STACK[0x348])
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(STACK[0x348], v29);
  }

LABEL_37:
  if (LOBYTE(STACK[0xEE0]) == 1)
  {
    v30 = STACK[0xED8];
    STACK[0xED8] = 0;
    if (v30)
    {
      if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v29);
      }
    }
  }

  if (LOBYTE(STACK[0xEF8]) == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xEE8], v29);
  }

  if (LOBYTE(STACK[0xF10]) == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xF00], v29);
  }

  if (LOBYTE(STACK[0xF28]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xF18], v29);
  }

  std::optional<WebCore::Color>::~optional(&STACK[0xF30], v29);
  if (LOBYTE(STACK[0xF80]) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0xF70], v31);
  }

  if (LOBYTE(STACK[0xFA8]) == 1)
  {
    v32 = STACK[0xFA0];
    STACK[0xFA0] = 0;
    if (v32)
    {
      if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v31);
      }
    }
  }

  std::optional<WebCore::Color>::~optional(v20 - 232, v31);
  if (a20 && STACK[0x3E8] && atomic_fetch_add_explicit(STACK[0x3E8], 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(STACK[0x3E8], v33);
  }

  std::optional<WebKit::WebPreferencesStore>::~optional(v20 - 216);
  _Unwind_Resume(a1);
}

void sub_19D78B340(uint64_t a1, void *a2)
{
  std::optional<WebCore::Color>::~optional(v3 - 232, a2);
  if (!v2)
  {
    JUMPOUT(0x19D78B194);
  }

  JUMPOUT(0x19D78B18CLL);
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::ActivityState>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WTF::OptionSet<WebCore::ActivityState>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x10000) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2 & 0xFFFFFF;
}

WTF *IPC::Decoder::decode<WebKit::WebPreferencesStore>(uint64_t a1, IPC::Decoder *this, double a3, __n128 a4)
{
  result = IPC::ArgumentCoder<WebKit::WebPreferencesStore,void>::decode(this, a1, a3, a4);
  if ((*(a1 + 48) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(this);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::PaginationMode>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::PaginationMode,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::MediaProducerMutedState>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WTF::OptionSet<WebCore::MediaProducerMutedState>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::Decoder::decode<std::optional<WebCore::ScrollbarOverlayStyle>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<std::optional<WebCore::ScrollbarOverlayStyle>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x10000) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2 & 0xFFFFFF;
}

uint64_t IPC::Decoder::decode<WebKit::HardwareKeyboardState>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebKit::HardwareKeyboardState,void>::decode(a1);
  if (!BYTE3(v2))
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::Decoder::decode<WebCore::UserInterfaceLayoutDirection>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v7 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v7;
    goto LABEL_7;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_7:
    v8 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v8;
    goto LABEL_8;
  }

  v2 = *v1;
  if (v2 > 1)
  {
LABEL_8:
    v6 = a1;
    IPC::Decoder::markInvalid(a1);
    IPC::Decoder::markInvalid(v6);
    v4 = 0;
    v3 = 0;
    return v4 | v3;
  }

  v3 = v2 != 0;
  v4 = 256;
  return v4 | v3;
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::LayoutMilestone>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WTF::OptionSet<WebCore::LayoutMilestone>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x10000) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2 & 0xFFFFFF;
}

uint64_t IPC::Decoder::decode<WebCore::HighlightVisibility>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::HighlightVisibility,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::Decoder::decode<WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2, a3);
  if ((*(a3 + 16) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D78B634(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<WebKit::RemotePageParameters>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 224) == 1)
  {
    if (*(a1 + 216) == 1)
    {
      WebKit::WebsitePoliciesData::~WebsitePoliciesData((a1 + 96), a2);
    }

    WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 80, a2);
    v5 = *(a1 + 72);
    *(a1 + 72) = 0;
    if (v5)
    {
      WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v5, v4);
    }

    v6 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    v7 = *a1;
    *a1 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }
  }

  return a1;
}

void WebKit::WebPreferencesStore::~WebPreferencesStore(WebKit::WebPreferencesStore *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v2, *(this + 8));
  }

  if (*this)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(*this, *(this + 2));
  }
}

uint64_t std::optional<std::optional<WebKit::RemotePageParameters>>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 232) == 1 && *(a1 + 224) == 1)
  {
    if (*(a1 + 216) == 1)
    {
      WebKit::WebsitePoliciesData::~WebsitePoliciesData((a1 + 96), a2);
    }

    WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 80, a2);
    v5 = *(a1 + 72);
    *(a1 + 72) = 0;
    if (v5)
    {
      WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v5, v4);
    }

    v6 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    v7 = *a1;
    *a1 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
    }
  }

  return a1;
}

uint64_t std::optional<WebKit::UserContentControllerParameters>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 88) == 1)
  {
    WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 72, a2);
    WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 56, v3);
    WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 40, v4);
    WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 24), v5);
    WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 8, v6);
  }

  return a1;
}

uint64_t std::optional<WebKit::WebPreferencesStore>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v2, *(a1 + 32));
    }

    if (*a1)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(*a1, *(a1 + 8));
    }
  }

  return a1;
}

WTF *IPC::Decoder::decode<WebKit::FrameTreeCreationParameters>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v6 = v5;
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, &v61);
  if ((v63 & 1) == 0)
  {
    v35 = *a2;
    v36 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v37 = *(a2 + 3);
    if (v37 && v36 != 0)
    {
      (*(*v37 + 16))(v37, v35);
    }
  }

  IPC::Decoder::decode<WTF::String>(a2, &v59);
  IPC::Decoder::decode<WTF::Ref<WebCore::FrameTreeSyncData,WTF::RawPtrTraits<WebCore::FrameTreeSyncData>,WTF::DefaultRefDerefTraits<WebCore::FrameTreeSyncData>>>(a2, &v57);
  v8 = *(a2 + 1);
  v9 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *a2;
  v11 = v9 - *a2;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (!v12 || v13 <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v51 = *(a2 + 3);
    if (v51)
    {
      if (v8)
      {
        (*(*v51 + 16))(v51);
        v8 = *(a2 + 1);
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_86;
  }

  *(a2 + 2) = v9 + 1;
  if (!v9)
  {
LABEL_86:
    *a2 = 0;
    *(a2 + 1) = 0;
    v52 = *(a2 + 3);
    if (v52 && v8)
    {
      (*(*v52 + 16))(v52);
    }

    LOBYTE(v55) = 0;
    v56 = 0;
LABEL_88:
    v43 = *a2;
    v53 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v53)
    {
      result = (*(*result + 16))(result, v43);
    }

    goto LABEL_58;
  }

  v15 = *v9;
  v70 = 0;
  v71 = 0;
  if (v15 >= 0x4924)
  {
    v26 = v56;
    do
    {
      IPC::Decoder::decode<WebKit::FrameTreeCreationParameters>(&v64, a2);
      v27 = v69;
      if (v69)
      {
        if (HIDWORD(v71) == v71)
        {
          WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::FrameTreeCreationParameters>(&v70, &v64);
        }

        else
        {
          v28 = v70 + 56 * HIDWORD(v71);
          v29 = v64;
          v28[16] = v65;
          *v28 = v29;
          v30 = v66;
          v66 = 0;
          *(v28 + 3) = v30;
          v31 = v67;
          v67 = 0;
          *(v28 + 5) = 0;
          *(v28 + 6) = 0;
          *(v28 + 4) = v31;
          v32 = v68;
          *&v68 = 0;
          *(v28 + 5) = v32;
          LODWORD(v32) = DWORD2(v68);
          DWORD2(v68) = 0;
          *(v28 + 12) = v32;
          LODWORD(v32) = HIDWORD(v68);
          HIDWORD(v68) = 0;
          *(v28 + 13) = v32;
          ++HIDWORD(v71);
        }
      }

      else
      {
        v26 = 0;
      }

      if (v69 == 1)
      {
        WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v68, v10);
        v33 = v67;
        v67 = 0;
        if (v33)
        {
          WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v33, v10);
        }

        v34 = v66;
        v66 = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v10);
        }
      }

      if ((v27 & 1) == 0)
      {
        LOBYTE(v55) = 0;
        v56 = v26;
        goto LABEL_57;
      }

      --v15;
    }

    while (v15);
    LOBYTE(v55) = 0;
    v56 = v26;
    v39 = HIDWORD(v71);
    if (v71 > HIDWORD(v71))
    {
      result = v70;
      if (HIDWORD(v71))
      {
        v54 = v70;
        if (HIDWORD(v71) >= 0x4924925)
        {
          __break(0xC471u);
          goto LABEL_96;
        }

        v41 = WTF::fastMalloc((56 * HIDWORD(v71)));
        result = v54;
        LODWORD(v71) = 56 * v39 / 0x38;
        v70 = v41;
        if (v41 != v54)
        {
          WTF::VectorMover<false,WebKit::FrameTreeCreationParameters>::move(v54, (v54 + 56 * v39), v41);
          result = v54;
        }
      }

      if (result)
      {
        if (v70 == result)
        {
          v70 = 0;
          LODWORD(v71) = 0;
        }

        WTF::fastFree(result, v10);
      }
    }
  }

  else if (v15)
  {
    v16 = WTF::fastMalloc((56 * v15));
    LODWORD(v71) = 56 * v15 / 0x38u;
    v70 = v16;
    v17 = v56;
    do
    {
      IPC::Decoder::decode<WebKit::FrameTreeCreationParameters>(&v64, a2);
      v18 = v69;
      if (v69)
      {
        if (HIDWORD(v71) == v71)
        {
          WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::FrameTreeCreationParameters>(&v70, &v64);
        }

        else
        {
          v19 = v70 + 56 * HIDWORD(v71);
          v20 = v64;
          v19[16] = v65;
          *v19 = v20;
          v21 = v66;
          v66 = 0;
          *(v19 + 3) = v21;
          v22 = v67;
          v67 = 0;
          *(v19 + 5) = 0;
          *(v19 + 6) = 0;
          *(v19 + 4) = v22;
          v23 = v68;
          *&v68 = 0;
          *(v19 + 5) = v23;
          LODWORD(v23) = DWORD2(v68);
          DWORD2(v68) = 0;
          *(v19 + 12) = v23;
          LODWORD(v23) = HIDWORD(v68);
          HIDWORD(v68) = 0;
          *(v19 + 13) = v23;
          ++HIDWORD(v71);
        }
      }

      else
      {
        v17 = 0;
      }

      if (v69 != 1)
      {
        goto LABEL_21;
      }

      WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v68, v10);
      v24 = v67;
      v67 = 0;
      if (v24)
      {
        WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v24, v10);
      }

      v25 = v66;
      v66 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v10);
        if ((v18 & 1) == 0)
        {
LABEL_25:
          LOBYTE(v55) = 0;
          v56 = v17;
          goto LABEL_57;
        }
      }

      else
      {
LABEL_21:
        if ((v18 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      --v15;
    }

    while (v15);
  }

  *&v55 = v70;
  v42 = v71;
  v70 = 0;
  v71 = 0;
  *(&v55 + 1) = v42;
  v56 = 1;
LABEL_57:
  result = WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, v10);
  if ((v56 & 1) == 0)
  {
    goto LABEL_88;
  }

LABEL_58:
  v44 = *a2;
  if (!*a2)
  {
    *a1 = 0;
    *(a1 + 56) = 0;
    goto LABEL_69;
  }

  if ((v6 & 1) == 0 || (*&v64 = v4, (v63 & 1) == 0) || (*(&v64 + 1) = v61, v65 = v62, (v60 & 1) == 0) || (v45 = v59, v59 = 0, (v58 & 1) == 0) || (v46 = v57, v57 = 0, (v56 & 1) == 0))
  {
LABEL_96:
    __break(1u);
    return result;
  }

  *&v7 = 0;
  v47 = v55;
  v55 = v7;
  *a1 = v64;
  *(a1 + 16) = v65;
  v66 = 0;
  v67 = 0;
  *(a1 + 24) = v45;
  *(a1 + 32) = v46;
  v68 = v7;
  *(a1 + 40) = v47;
  *(a1 + 56) = 1;
  WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v68, v43);
  v48 = v67;
  v67 = 0;
  if (v48)
  {
    WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(v48, v43);
  }

  result = v66;
  v66 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v43);
  }

LABEL_69:
  if (v56 == 1)
  {
    result = WTF::Vector<WebKit::FrameTreeCreationParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v55, v43);
  }

  if (v58 == 1)
  {
    result = v57;
    v57 = 0;
    if (result)
    {
      result = WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(result, v43);
    }
  }

  if (v60 == 1 && (result = v59, v59 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v43);
    if (v44)
    {
      return result;
    }
  }

  else if (v44)
  {
    return result;
  }

  v49 = *a2;
  v50 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v50)
    {
      return (*(*result + 16))(result, v49);
    }
  }

  return result;
}

void sub_19D78BF0C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, bmalloc::api *a13, char a14, WTF::StringImpl *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, WTF::StringImpl *a23, bmalloc::api *a24, uint64_t a25, uint64_t a26, char a27)
{
  if ((a14 & 1) != 0 && a13)
  {
    WTF::RefCounted<WebCore::FrameTreeSyncData>::deref(a13, a2);
  }

  if (a16 == 1 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebPageNetworkParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::String>(a1, &v7);
  v6 = *a1;
  if (*a1)
  {
    if ((v8 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v6 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    *a2 = v6;
    LOBYTE(v6) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = v6;
  if (v8 == 1)
  {
    result = v7;
    v7 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::WebPopupItem,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *a2;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  v6 = *(a2 + 24);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 25));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 48));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 49));
  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 50));
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebPopupItem,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    goto LABEL_74;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_76;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_79;
  }

  v8 = 0;
  v9 = v7 != 0;
  while (1)
  {
    IPC::Decoder::decode<WTF::String>(a1, &v68);
    IPC::Decoder::decode<WTF::String>(a1, &v66);
    v10 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a1);
    v11 = *(a1 + 1);
    v12 = *(a1 + 2);
    v13 = *a1;
    if (v11 <= &v12[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v41 = *(a1 + 3);
      if (v41)
      {
        if (v11)
        {
          (*(*v41 + 16))(v41);
          v11 = *(a1 + 1);
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      *(a1 + 2) = v12 + 1;
      if (v12)
      {
        v14 = *v12;
        if (v14 < 2)
        {
          v15 = 1;
          goto LABEL_9;
        }

        goto LABEL_86;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v42 = *(a1 + 3);
    if (!v42)
    {
      v11 = 0;
LABEL_85:
      v13 = 0;
      v14 = 0;
      goto LABEL_86;
    }

    if (!v11)
    {
      goto LABEL_85;
    }

    (*(*v42 + 16))(v42);
    v14 = 0;
    v13 = *a1;
    v11 = *(a1 + 1);
LABEL_86:
    *a1 = 0;
    *(a1 + 1) = 0;
    v43 = *(a1 + 3);
    if (v43 && v11)
    {
      (*(*v43 + 16))(v43, v13);
    }

    v15 = 0;
LABEL_9:
    v16 = v14 ? v15 : 0;
    IPC::Decoder::decode<WTF::String>(a1, &v64);
    result = IPC::Decoder::decode<WTF::String>(a1, &v62);
    v4 = *(a1 + 1);
    v18 = *(a1 + 2);
    v19 = *a1;
    if (v4 <= &v18[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v44 = *(a1 + 3);
      if (v44)
      {
        if (v4)
        {
          (*(*v44 + 16))(v44);
          v4 = *(a1 + 1);
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v20 = v18 + 1;
      *(a1 + 2) = v18 + 1;
      if (v18)
      {
        v21 = *v18;
        if (v21 < 2)
        {
          v22 = 1;
          goto LABEL_16;
        }

        v61 = v21;
        goto LABEL_94;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v45 = *(a1 + 3);
    if (!v45)
    {
      v4 = 0;
LABEL_92:
      v19 = 0;
      v61 = 0;
      goto LABEL_94;
    }

    if (!v4)
    {
      goto LABEL_92;
    }

    (*(*v45 + 16))(v45);
    v61 = 0;
    v19 = *a1;
    v4 = *(a1 + 1);
LABEL_94:
    *a1 = 0;
    *(a1 + 1) = 0;
    v46 = *(a1 + 3);
    if (!v46 || !v4)
    {
      v60 = 0;
      v47 = 0;
      v19 = 0;
LABEL_96:
      *a1 = 0;
      *(a1 + 1) = 0;
      v48 = *(a1 + 3);
      if (v48 && v47)
      {
        (*(*v48 + 16))(v48, v19, v47);
        v59 = 0;
        v19 = *a1;
        v4 = *(a1 + 1);
      }

      else
      {
        v4 = 0;
        v19 = 0;
        v59 = 0;
      }

      goto LABEL_99;
    }

    result = (*(*v46 + 16))(v46, v19);
    v22 = 0;
    v19 = *a1;
    v4 = *(a1 + 1);
    v20 = *(a1 + 2);
    v21 = v61;
LABEL_16:
    if (v21)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v4 <= v20 - v19)
    {
      LOBYTE(v60) = v22;
      BYTE4(v60) = v23;
      v47 = 0;
      v52 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v52 && v4)
      {
        (*(*v52 + 16))(v52);
        v19 = *a1;
        v47 = *(a1 + 1);
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_96;
    }

    v24 = v20 + 1;
    *(a1 + 2) = v20 + 1;
    if (!v20)
    {
      LOBYTE(v60) = v22;
      BYTE4(v60) = v23;
      v47 = v4;
      goto LABEL_96;
    }

    v25 = *v20;
    if (v25 < 2)
    {
      v26 = 1;
      goto LABEL_23;
    }

    v59 = v25;
    LOBYTE(v60) = v22;
    BYTE4(v60) = v23;
LABEL_99:
    *a1 = 0;
    *(a1 + 1) = 0;
    v49 = *(a1 + 3);
    if (!v49 || !v4)
    {
      v58 = 0;
      v50 = 0;
      v19 = 0;
LABEL_101:
      *a1 = 0;
      *(a1 + 1) = 0;
      v51 = *(a1 + 3);
      if (v51 && v50)
      {
        (*(*v51 + 16))(v51, v19, v50);
        v57 = 0;
        v19 = *a1;
        v4 = *(a1 + 1);
      }

      else
      {
        v4 = 0;
        v19 = 0;
        v57 = 0;
      }

      goto LABEL_104;
    }

    result = (*(*v49 + 16))(v49, v19);
    v26 = 0;
    v19 = *a1;
    v4 = *(a1 + 1);
    v24 = *(a1 + 2);
    v22 = v60;
    v23 = BYTE4(v60);
    v25 = v59;
LABEL_23:
    if (v25)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if (v4 <= v24 - v19)
    {
      LOBYTE(v58) = v26;
      BYTE4(v58) = v27;
      LOBYTE(v60) = v22;
      BYTE4(v60) = v23;
      v50 = 0;
      v53 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v53 && v4)
      {
        (*(*v53 + 16))(v53);
        v19 = *a1;
        v50 = *(a1 + 1);
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_101;
    }

    *(a1 + 2) = v24 + 1;
    if (!v24)
    {
      LOBYTE(v58) = v26;
      BYTE4(v58) = v27;
      LOBYTE(v60) = v22;
      BYTE4(v60) = v23;
      v50 = v4;
      goto LABEL_101;
    }

    v28 = *v24;
    if (v28 >= 2)
    {
      v57 = v28;
      LOBYTE(v58) = v26;
      BYTE4(v58) = v27;
      LOBYTE(v60) = v22;
      BYTE4(v60) = v23;
LABEL_104:
      *a1 = 0;
      *(a1 + 1) = 0;
      result = *(a1 + 3);
      if (!result || !v4)
      {
        goto LABEL_105;
      }

      result = (*(*result + 16))(result, v19);
      v29 = 0;
      v19 = *a1;
      v22 = v60;
      v23 = BYTE4(v60);
      v26 = v58;
      v27 = BYTE4(v58);
      v28 = v57;
      goto LABEL_30;
    }

    v29 = 1;
LABEL_30:
    if (v28)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    if (!v19)
    {
LABEL_105:
      v37 = 0;
      *a2 = 0;
      goto LABEL_56;
    }

    if (!v8 && (v69 & 1) != 0 && (v67 & 1) != 0 && v10 > 0xFFu && (v15 & 1) != 0 && (v65 & 1) != 0 && (v63 & 1) != 0 && (v22 & 1) != 0 && (v26 & 1) != 0 && (v29 & 1) != 0)
    {
      break;
    }

    __break(1u);
LABEL_74:
    *a1 = 0;
    *(a1 + 1) = 0;
    v38 = *(a1 + 3);
    if (v38)
    {
      if (v4)
      {
        (*(*v38 + 16))(v38);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_76:
    *a1 = 0;
    *(a1 + 1) = 0;
    v39 = *(a1 + 3);
    if (!v39)
    {
      v4 = 0;
LABEL_78:
      v6 = 0;
      goto LABEL_79;
    }

    if (!v4)
    {
      goto LABEL_78;
    }

    (*(*v39 + 16))(v39);
    v6 = *a1;
    v4 = *(a1 + 1);
LABEL_79:
    *a1 = 0;
    *(a1 + 1) = 0;
    v40 = *(a1 + 3);
    if (v40 && v4)
    {
      (*(*v40 + 16))(v40, v6);
      v9 = 0;
      v54 = *(a1 + 3);
      v55 = *a1;
      v56 = *(a1 + 1);
      v8 = 1;
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v54 && v56)
      {
        (*(*v54 + 16))(v54, v55);
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
      v8 = 1;
    }
  }

  v31 = v68;
  if (v68)
  {
    atomic_fetch_add_explicit(v68, 2u, memory_order_relaxed);
  }

  v32 = v66;
  if (v66)
  {
    atomic_fetch_add_explicit(v66, 2u, memory_order_relaxed);
  }

  if (v16)
  {
    v33 = 256;
  }

  else
  {
    v33 = 0;
  }

  v34 = v64;
  if (v64)
  {
    atomic_fetch_add_explicit(v64, 2u, memory_order_relaxed);
  }

  v35 = v33 & 0xFFFE | v10 & 1;
  v36 = v62;
  if (v62)
  {
    atomic_fetch_add_explicit(v62, 2u, memory_order_relaxed);
  }

  *a2 = v9;
  *(a2 + 8) = v31;
  *(a2 + 16) = v32;
  *(a2 + 24) = v35;
  *(a2 + 32) = v34;
  *(a2 + 40) = v36;
  *(a2 + 48) = v23;
  *(a2 + 49) = v27;
  v37 = 1;
  *(a2 + 50) = v30;
LABEL_56:
  *(a2 + 56) = v37;
  if (v63 == 1)
  {
    result = v62;
    v62 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v19);
      }
    }
  }

  if (v65 == 1)
  {
    result = v64;
    v64 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v19);
      }
    }
  }

  if (v67 == 1)
  {
    result = v66;
    v66 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v19);
      }
    }
  }

  if (v69 == 1)
  {
    result = v68;
    v68 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v19);
      }
    }
  }

  return result;
}

void sub_19D78C954(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14, WTF::StringImpl *a15, char a16, WTF::StringImpl *a17, char a18, WTF::StringImpl *a19, char a20)
{
  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a16 == 1 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
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

WTF *IPC::ArgumentCoder<WebKit::WebPreferencesStore,void>::decode@<X0>(IPC::Decoder *this@<X0>, uint64_t a2@<X8>, double a3@<D0>, __n128 a4@<Q1>)
{
  IPC::Decoder::decode<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(&v21, this, a3, a4);
  result = IPC::Decoder::decode<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(&v16, this, v6, v7);
  if (*this)
  {
    if ((v25 & 1) == 0 || (v9 = v21, v21 = 0, v10 = v22, v22 = 0, (v20 & 1) == 0))
    {
      __break(1u);
      return result;
    }

    v11 = v24;
    v12 = v16;
    v13 = v18;
    v14 = v19;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 12) = v23;
    *(a2 + 20) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v17;
    *(a2 + 40) = v13;
    *(a2 + 44) = v14;
    *(a2 + 48) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    if (v20)
    {
      result = v16;
      if (v16)
      {
        result = WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v16, v17);
      }
    }
  }

  if (v25 == 1)
  {
    result = v21;
    if (v21)
    {
      v15 = v22;

      return WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(result, v15);
    }
  }

  return result;
}

void sub_19D78CB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF *a13, unsigned int a14, uint64_t a15, char a16)
{
  if (a16)
  {
    if (a13)
    {
      WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(a13, a14);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *this, double a3, __n128 a4)
{
  v6 = *(this + 1);
  v7 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = v7 - *this;
  v9 = v6 >= v8;
  v10 = v6 - v8;
  if (!v9 || v10 <= 3)
  {
    IPC::Decoder::markInvalid(this);
LABEL_106:
    IPC::Decoder::markInvalid(this);
    *a1 = 0;
    *(a1 + 24) = 0;
    return IPC::Decoder::markInvalid(this);
  }

  *(this + 2) = v7 + 1;
  if (!v7)
  {
    goto LABEL_106;
  }

  v12 = *v7;
  *v64 = 0;
  *&v64[8] = 0;
  *&v64[13] = 0;
  v58 = v12;
  if (!v12)
  {
    v51 = 0;
    v49 = 0;
    v50 = 0;
LABEL_72:
    a4.n128_u64[0] = 0;
    *v64 = a4;
    *a1 = v49;
    *(a1 + 8) = v50;
    *&v64[16] = 0;
    *(a1 + 16) = v51;
    v64[20] = 0;
    *(a1 + 20) = v12;
    v52 = 1;
    *(a1 + 24) = 1;
    goto LABEL_73;
  }

  v13 = 0;
  while (1)
  {
    v14 = IPC::Decoder::decode<WTF::String>(this, &v62);
    if ((v63 & 1) == 0)
    {
      v52 = 0;
      *a1 = 0;
      *(a1 + 24) = 0;
      goto LABEL_73;
    }

    v17 = *(this + 1);
    v16 = *(this + 2);
    v18 = *this;
    if (v17 <= &v16[-*this])
    {
      goto LABEL_101;
    }

    v19 = v16 + 1;
    *(this + 2) = v16 + 1;
    if (!v16)
    {
      goto LABEL_102;
    }

    v20 = *v16;
    if (v20 <= 3)
    {
      if (!*v16)
      {
        v14 = IPC::Decoder::decode<WTF::String>(this, &v66);
        if (v67 == 1)
        {
          v59 = v66;
          v60 = 0;
          goto LABEL_19;
        }

        goto LABEL_103;
      }

      if (v20 != 1)
      {
        v14 = IPC::ArgumentCoder<mpark::variant<WTF::String,BOOL,unsigned int,double>,void>::decode<IPC::Decoder,0ul,1ul>(&v59, this, v20);
        if (v61)
        {
          goto LABEL_20;
        }

        goto LABEL_104;
      }

      if (v17 <= &v19[-v18])
      {
        IPC::Decoder::markInvalid(this);
      }

      else
      {
        *(this + 2) = v16 + 2;
        if (v16 != -1)
        {
          if (*v19 <= 1u)
          {
            LOBYTE(v59) = *v19;
            v60 = 1;
LABEL_19:
            v61 = 1;
            goto LABEL_20;
          }

          goto LABEL_102;
        }
      }

LABEL_101:
      IPC::Decoder::markInvalid(this);
LABEL_102:
      IPC::Decoder::markInvalid(this);
    }

LABEL_103:
    LOBYTE(v59) = 0;
    v61 = 0;
LABEL_104:
    v14 = IPC::Decoder::markInvalid(this);
    if ((v61 & 1) == 0)
    {
      *a1 = 0;
      *(a1 + 24) = 0;
      goto LABEL_80;
    }

LABEL_20:
    v21 = v63;
    if ((v63 & 1) == 0)
    {
      __break(1u);
      goto LABEL_95;
    }

    v14 = v62;
    if (v62 + 1 <= 1)
    {
      *a1 = 0;
      *(a1 + 24) = 0;
LABEL_78:
      if (!v60)
      {
        v54 = v59;
        v59 = 0;
        if (v54)
        {
          if (atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v54, v15);
          }
        }
      }

      goto LABEL_80;
    }

    v65 = &v59;
    v4 = *&v64[8];
    v21 = *&v64[12];
    if (10 * *&v64[12] < 9 * *&v64[8])
    {
      if (v64[20] != 1)
      {
        goto LABEL_24;
      }

LABEL_95:
      if (v4 > 2 * v21)
      {
        goto LABEL_24;
      }
    }

    v56 = v4 ? 2 * v4 : 8;
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::rehash(v64, v56);
    v4 = *&v64[8];
    v14 = v62;
LABEL_24:
    v22 = *&v64[16];
    v23 = *(v14 + 4);
    v24 = v23 < 0x100 ? WTF::StringImpl::hashSlowCase(v14) : v23 >> 8;
    v25 = v4 - 1;
    v26 = (v24 ^ v22) & (v4 - 1);
    v27 = *v64 + 24 * v26;
    v28 = *v27;
    if (*v27)
    {
      break;
    }

LABEL_35:
    WTF::HashMapTranslator<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>(WTF::String &&,mpark::variant<WTF::String,BOOL,unsigned int,double> &&)::{lambda(void)#1}>(v27, &v62, &v65);
LABEL_36:
    ++*&v64[12];
    if (v61 == 1 && !v60)
    {
      v34 = v59;
      v59 = 0;
      if (v34)
      {
        if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v33);
        }
      }
    }

    if (v63 == 1)
    {
      v35 = v62;
      v62 = 0;
      if (v35)
      {
        if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v35, v33);
        }
      }
    }

    if (++v13 == v58)
    {
      v49 = *v64;
      v50 = *&v64[8];
      v51 = *&v64[16];
      LOBYTE(v12) = v64[20];
      goto LABEL_72;
    }
  }

  v29 = 0;
  while (1)
  {
    v30 = *(v28 + 4);
    if (v30 < 0x100)
    {
      v31 = WTF::StringImpl::hashSlowCase(v28);
    }

    else
    {
      v31 = v30 >> 8;
    }

    v32 = (v26 + v4 - ((v31 ^ v22) & v25)) & v25;
    if (v29 > v32)
    {
      if (v29 >= 0x80)
      {
        v64[20] = 1;
      }

      v36 = *v27;
      *v27 = 0;
      v66 = v36;
      mpark::detail::move_constructor<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>,(mpark::detail::Trait)1>::move_constructor(&v67, (v27 + 8));
      mpark::detail::copy_constructor<mpark::detail::traits<WTF::String,BOOL,unsigned int,double>,(mpark::detail::Trait)1>::~copy_constructor(v27 + 8, v37);
      v39 = *v27;
      *v27 = 0;
      if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v38);
      }

      *v27 = 0;
      *(v27 + 8) = 0;
      *(v27 + 16) = 0;
      WTF::HashMapTranslator<WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>(WTF::String &&,mpark::variant<WTF::String,BOOL,unsigned int,double> &&)::{lambda(void)#1}>(v27, &v62, &v65);
      for (i = v26 + 1; ; i = v41 + 1)
      {
        v41 = i & v25;
        v42 = (*v64 + 24 * (i & v25));
        v43 = *v42;
        if (!*v42)
        {
          break;
        }

        v44 = *(v43 + 4);
        if (v44 < 0x100)
        {
          v45 = WTF::StringImpl::hashSlowCase(v43);
        }

        else
        {
          v45 = v44 >> 8;
        }

        v46 = v32 + 1;
        v32 = (v41 + v4 - ((v45 ^ v22) & v25)) & v25;
        if (v46 <= v32)
        {
          v32 = v46;
        }

        else
        {
          std::swap[abi:sn200100]<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>(&v66, v42);
        }
      }

      WTF::GenericHashTraits<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>::assignToEmpty<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>(*v64 + 24 * v41, &v66);
      if (!v68)
      {
        v47 = v67;
        v67 = 0;
        if (v47)
        {
          if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v47, v33);
          }
        }
      }

      v68 = -1;
      v48 = v66;
      v66 = 0;
      if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v48, v33);
      }

      goto LABEL_36;
    }

    if (v31 == v24 && (WTF::equal(*v27, v62, v20) & 1) != 0)
    {
      break;
    }

    v26 = (v26 + 1) & v25;
    ++v29;
    v27 = *v64 + 24 * v26;
    v28 = *v27;
    if (!*v27)
    {
      if (v29 >= 0x80)
      {
        v64[20] = 1;
      }

      goto LABEL_35;
    }
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  if (v61)
  {
    goto LABEL_78;
  }

LABEL_80:
  if (v63 == 1)
  {
    v55 = v62;
    v62 = 0;
    if (v55)
    {
      if (atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v55, v15);
      }
    }
  }

  v52 = 0;
LABEL_73:
  result = *v64;
  if (*v64)
  {
    result = WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(*v64, *&v64[8]);
  }

  if ((v52 & 1) == 0)
  {
    return IPC::Decoder::markInvalid(this);
  }

  return result;
}

void sub_19D78D14C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, int a13, __int16 a14, char a15, char a16, WTF::StringImpl *a17, char a18, WTF *a19, unsigned int a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a18 == 1 && a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  if (a19)
  {
    WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(a19, a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WTF::HashMap<WebCore::CSSValueKey,WebCore::Color,WTF::DefaultHash<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::CSSValueKey>,WTF::HashTraits<WebCore::Color>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[8] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::ScriptTrackingPrivacyRules>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::ScriptTrackingPrivacyRules,void>::decode(a1, a2);
  if ((*(a2 + 64) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void *WTF::Vector<std::pair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D78D2CC(_Unwind_Exception *exception_object, void *a2)
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

uint64_t std::optional<WebKit::ScriptTrackingPrivacyRules>::~optional(uint64_t a1, void *a2)
{
  if (*(a1 + 64) == 1)
  {
    WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 48, a2);
    WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 32, v3);
    WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, v4);
    WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, v5);
  }

  return a1;
}

void IPC::ArgumentCoder<WebKit::WebProcessDataStoreParameters,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  IPC::Decoder::decode<WTF::String>(a1, &v39);
  IPC::Decoder::decode<WTF::String>(a1, &v37);
  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a1, &v35);
  v7 = IPC::Decoder::decode<std::array<unsigned char,8ul>>(a1);
  v9 = v8;
  IPC::Decoder::decode<WTF::String>(a1, &v33);
  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a1, &v31);
  v10 = IPC::Decoder::decode<WebCore::ThirdPartyCookieBlockingMode>(a1);
  IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(a1, &v29);
  IPC::Decoder::decode<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(&v27, a1);
  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a1, &v25);
  v11 = IPC::Decoder::decode<BOOL>(a1);
  v12 = IPC::Decoder::decode<BOOL>(a1);
  if (*a1)
  {
    if ((v6 & 1) == 0 || (v41 = v4, (v40 & 1) == 0) || (v14 = v39, v39 = 0, *&v42 = v14, (v38 & 1) == 0) || (v15 = v37, v37 = 0, (v36 & 1) == 0) || (v16 = v35, v35 = 0, (v9 & 1) == 0) || (v44 = v7, (v34 & 1) == 0) || (v17 = v33, v33 = 0, (v32 & 1) == 0) || (v18 = v31, v31 = 0, (v10 & 0x100) == 0) || (v46 = v10, (v30 & 1) == 0) || (v19 = v29, v29 = 0, (v28 & 1) == 0) || (v20 = v27, v27 = 0, (v26 & 1) == 0) || (v21 = v25, v25 = 0, (v11 & 0x100) == 0) || (LOBYTE(v49) = v11, (v12 & 0x100) == 0))
    {
      __break(1u);
    }

    HIBYTE(v49) = v12;
    *a2 = v4;
    *(a2 + 8) = v14;
    v42 = 0u;
    v43 = 0;
    *(a2 + 16) = v15;
    *(a2 + 24) = v16;
    *(a2 + 32) = v7;
    *(a2 + 40) = v17;
    v45 = 0u;
    *(a2 + 48) = v18;
    *(a2 + 56) = v10;
    v47 = 0u;
    *(a2 + 64) = v19;
    *(a2 + 72) = v20;
    v48 = 0;
    *(a2 + 80) = v21;
    *(a2 + 88) = v49;
    *(a2 + 96) = 1;
    WebKit::WebProcessDataStoreParameters::~WebProcessDataStoreParameters(&v41);
  }

  else
  {
    *a2 = 0;
    *(a2 + 96) = 0;
  }

  if (v26 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v25);
  }

  if (v28 == 1 && v27)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v27, v13);
  }

  if (v30 == 1 && v29)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v29, v13);
  }

  if (v32 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v31);
  }

  if (v34 == 1)
  {
    v22 = v33;
    v33 = 0;
    if (v22)
    {
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v13);
      }
    }
  }

  if (v36 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v35);
  }

  if (v38 == 1)
  {
    v23 = v37;
    v37 = 0;
    if (v23)
    {
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v13);
      }
    }
  }

  if (v40 == 1)
  {
    v24 = v39;
    v39 = 0;
    if (v24)
    {
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v13);
      }
    }
  }
}

void sub_19D78D678(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebKit::SandboxExtensionImpl *a10, __int16 a11, char a12, char a13, WTF::StringImpl **a14, char a15, WTF::StringImpl **a16, char a17, int a18, WebKit::SandboxExtensionImpl *a19, __int16 a20, char a21, char a22, WTF::StringImpl *a23, char a24, int a25, WebKit::SandboxExtensionImpl *a26, __int16 a27, char a28, char a29, WTF::StringImpl *a30, char a31, WTF::StringImpl *a32, char a33)
{
  if (a11 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a10);
  }

  if (a15 == 1 && a14)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(a14, a2);
  }

  if (a17 == 1 && a16)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a16, a2);
  }

  if (a20 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a19);
  }

  if (a24 == 1)
  {
    v34 = a23;
    a23 = 0;
    if (v34)
    {
      if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, a2);
      }
    }
  }

  if (a27 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a26);
  }

  if (a31 == 1)
  {
    v35 = a30;
    a30 = 0;
    if (v35)
    {
      if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, a2);
      }
    }
  }

  if (a33 == 1)
  {
    v36 = a32;
    a32 = 0;
    if (v36)
    {
      if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::Decoder::decode<std::array<unsigned char,8ul>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<std::array<unsigned char,8ul>,void>::decode<IPC::Decoder>(a1);
  if ((v3 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::ArgumentCoder<WebKit::WebsitePoliciesData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(a1, a2);
  IPC::VectorArgumentCoder<false,WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 8);
  IPC::VectorArgumentCoder<false,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 24);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 64));
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 74));
  v5 = *(a2 + 80);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 88));
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 96));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 98));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 99));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 100));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 101));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 102));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 103));
  v6 = *(a2 + 104);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 105));
  v7 = *(a2 + 106);
  IPC::Encoder::operator<<<BOOL>(a1, &v7);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 107));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 108));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 109));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 111));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 112));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 113));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 114));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 115));
  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 116));
}

void IPC::ArgumentCoder<WebKit::WebsitePoliciesData,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(a1, &v173);
  if ((v174 & 1) == 0)
  {
    goto LABEL_172;
  }

  while (1)
  {
    v5 = *(a1 + 1);
    v6 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v7 = v6 - *a1;
    v8 = v5 >= v7;
    v9 = v5 - v7;
    if (!v8 || v9 <= 7)
    {
      IPC::Decoder::markInvalid(a1);
LABEL_210:
      IPC::Decoder::markInvalid(a1);
      LOBYTE(v170) = 0;
      v172 = 0;
      goto LABEL_170;
    }

    *(a1 + 2) = v6 + 1;
    if (!v6)
    {
      goto LABEL_210;
    }

    v11 = *v6;
    v167 = 0;
    v168 = 0;
    if (v11 >= 0x8000)
    {
      while (1)
      {
        IPC::Decoder::decode<WebCore::CustomHeaderFields>(&v129, a1);
        if ((v133 & 1) == 0)
        {
          break;
        }

        if (HIDWORD(v168) == v168)
        {
          WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::CustomHeaderFields>(&v167, &v129);
        }

        else
        {
          WebCore::CustomHeaderFields::CustomHeaderFields((v167 + 32 * HIDWORD(v168)), &v129);
          ++HIDWORD(v168);
        }

        std::optional<WebCore::CustomHeaderFields>::~optional(&v129, v87);
        if (!--v11)
        {
          WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v167, HIDWORD(v168));
          goto LABEL_10;
        }
      }
    }

    else
    {
      if (!v11)
      {
LABEL_10:
        v170 = v167;
        v12 = v168;
        v167 = 0;
        v168 = 0;
        v171 = v12;
        v172 = 1;
        WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v167, v4);
        goto LABEL_11;
      }

      v93 = WTF::fastMalloc((32 * v11));
      LODWORD(v168) = v11;
      v167 = v93;
      while (1)
      {
        IPC::Decoder::decode<WebCore::CustomHeaderFields>(&v129, a1);
        if ((v133 & 1) == 0)
        {
          break;
        }

        if (HIDWORD(v168) == v168)
        {
          WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::CustomHeaderFields>(&v167, &v129);
        }

        else
        {
          WebCore::CustomHeaderFields::CustomHeaderFields((v167 + 32 * HIDWORD(v168)), &v129);
          ++HIDWORD(v168);
        }

        std::optional<WebCore::CustomHeaderFields>::~optional(&v129, v94);
        if (!--v11)
        {
          goto LABEL_10;
        }
      }
    }

    LOBYTE(v170) = 0;
    v172 = 0;
    std::optional<WebCore::CustomHeaderFields>::~optional(&v129, v88);
    WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v167, v89);
LABEL_170:
    IPC::Decoder::markInvalid(a1);
LABEL_11:
    v14 = *(a1 + 1);
    v15 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v16 = v15 - *a1;
    v8 = v14 >= v16;
    v17 = v14 - v16;
    if (!v8 || v17 <= 7)
    {
      IPC::Decoder::markInvalid(a1);
LABEL_211:
      IPC::Decoder::markInvalid(a1);
      LOBYTE(v167) = 0;
      v169 = 0;
LABEL_208:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_20;
    }

    *(a1 + 2) = v15 + 1;
    if (!v15)
    {
      goto LABEL_211;
    }

    v19 = *v15;
    v175 = 0;
    v176 = 0;
    if (v19 >= 0x10000)
    {
      v90 = v169;
      while (1)
      {
        IPC::Decoder::decode<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v129);
        v91 = v131;
        if (v131)
        {
          if (HIDWORD(v176) == v176)
          {
            WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v175, &v129);
          }

          else
          {
            WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v175 + 2 * HIDWORD(v176), &v129);
            ++HIDWORD(v176);
          }
        }

        else
        {
          v90 = 0;
        }

        if (v131 == 1)
        {
          WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v129, v13);
        }

        if ((v91 & 1) == 0)
        {
          break;
        }

        if (!--v19)
        {
          WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v175, HIDWORD(v176));
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v19)
      {
LABEL_19:
        v167 = v175;
        v20 = v176;
        v175 = 0;
        v176 = 0;
        v168 = v20;
        v169 = 1;
        WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v175, v13);
        goto LABEL_20;
      }

      v95 = WTF::fastMalloc((16 * v19));
      LODWORD(v176) = v19;
      v175 = v95;
      v90 = v169;
      while (1)
      {
        IPC::Decoder::decode<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v129);
        v96 = v131;
        if (v131)
        {
          if (HIDWORD(v176) == v176)
          {
            WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v175, &v129);
          }

          else
          {
            WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v175 + 2 * HIDWORD(v176), &v129);
            ++HIDWORD(v176);
          }
        }

        else
        {
          v90 = 0;
        }

        if (v131 == 1)
        {
          WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v129, v13);
        }

        if ((v96 & 1) == 0)
        {
          break;
        }

        if (!--v19)
        {
          goto LABEL_19;
        }
      }
    }

    LOBYTE(v167) = 0;
    v169 = v90;
    WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v175, v13);
    if ((v90 & 1) == 0)
    {
      goto LABEL_208;
    }

LABEL_20:
    IPC::Decoder::decode<WTF::String>(a1, &v175);
    IPC::Decoder::decode<WTF::String>(a1, &v165);
    IPC::Decoder::decode<WTF::String>(a1, &v163);
    IPC::Decoder::decode<WTF::String>(a1, &v161);
    v127 = IPC::Decoder::decode<WTF::OptionSet<WebCore::AdvancedPrivacyProtections>>(a1);
    v21 = *(a1 + 1);
    v22 = *(a1 + 2);
    v23 = *a1;
    if (v21 <= &v22[-*a1])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_213:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_214;
    }

    v24 = v22 + 1;
    *(a1 + 2) = v22 + 1;
    if (!v22)
    {
      goto LABEL_213;
    }

    v25 = *v22;
    if (v25 < 0x10)
    {
      v126 = v25 | 0x100;
      goto LABEL_24;
    }

LABEL_214:
    IPC::Decoder::markInvalid(a1);
    v126 = 0;
    v21 = *(a1 + 1);
    v24 = *(a1 + 2);
    v23 = *a1;
LABEL_24:
    if (v21 <= &v24[-v23])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_216:
      IPC::Decoder::markInvalid(a1);
LABEL_217:
      IPC::Decoder::markInvalid(a1);
      IPC::Decoder::markInvalid(a1);
      goto LABEL_218;
    }

    *(a1 + 2) = v24 + 1;
    if (!v24)
    {
      goto LABEL_216;
    }

    v26 = *v24;
    if (v26 >= 2)
    {
      goto LABEL_217;
    }

    IPC::Decoder::decode<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v129, a1);
    if (v130 == 1)
    {
      v125 = v129;
      v27 = 1;
      goto LABEL_29;
    }

LABEL_218:
    IPC::Decoder::markInvalid(a1);
    v27 = 0;
    LOBYTE(v26) = 0;
LABEL_29:
    v128 = v27;
    v124 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
    v28 = *(a1 + 1);
    v29 = *(a1 + 2);
    v30 = *a1;
    if (v28 <= &v29[-*a1])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_220:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_221;
    }

    v31 = v29 + 1;
    *(a1 + 2) = v29 + 1;
    if (!v29)
    {
      goto LABEL_220;
    }

    v32 = *v29;
    if (v32 < 4)
    {
      v33 = 0;
      goto LABEL_33;
    }

LABEL_221:
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v32) = 0;
    v28 = *(a1 + 1);
    v31 = *(a1 + 2);
    v33 = 1;
    v30 = *a1;
LABEL_33:
    if (v28 <= &v31[-v30])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_223:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_224;
    }

    v34 = v31 + 1;
    *(a1 + 2) = v31 + 1;
    if (!v31)
    {
      goto LABEL_223;
    }

    v35 = *v31;
    if (v35 < 3)
    {
      v36 = 0;
      goto LABEL_37;
    }

LABEL_224:
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v35) = 0;
    v28 = *(a1 + 1);
    v34 = *(a1 + 2);
    v36 = 1;
    v30 = *a1;
LABEL_37:
    if (v28 <= &v34[-v30])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_226:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_227;
    }

    v37 = v34 + 1;
    *(a1 + 2) = v34 + 1;
    if (!v34)
    {
      goto LABEL_226;
    }

    v38 = *v34;
    if (v38 < 3)
    {
      v39 = 0;
      goto LABEL_41;
    }

LABEL_227:
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v38) = 0;
    v28 = *(a1 + 1);
    v37 = *(a1 + 2);
    v39 = 1;
    v30 = *a1;
LABEL_41:
    if (v28 <= &v37[-v30])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_229:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_230;
    }

    v40 = v37 + 1;
    *(a1 + 2) = v37 + 1;
    if (!v37)
    {
      goto LABEL_229;
    }

    v41 = *v37;
    if (v41 < 3)
    {
      v113 = v41;
      v115 = 0;
      goto LABEL_45;
    }

LABEL_230:
    IPC::Decoder::markInvalid(a1);
    v113 = 0;
    v28 = *(a1 + 1);
    v40 = *(a1 + 2);
    v115 = 1;
    v30 = *a1;
LABEL_45:
    if (v28 <= &v40[-v30])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_232:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_233;
    }

    v42 = v40 + 1;
    *(a1 + 2) = v40 + 1;
    if (!v40)
    {
      goto LABEL_232;
    }

    v121 = *v40;
    if (v121 < 3)
    {
      v112 = 0;
      goto LABEL_49;
    }

LABEL_233:
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v121) = 0;
    v28 = *(a1 + 1);
    v42 = *(a1 + 2);
    v112 = 1;
    v30 = *a1;
LABEL_49:
    if (v28 <= &v42[-v30])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_235:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_236;
    }

    v43 = v42 + 1;
    *(a1 + 2) = v42 + 1;
    if (!v42)
    {
      goto LABEL_235;
    }

    v118 = *v42;
    if (v118 < 3)
    {
      v111 = 0;
      goto LABEL_53;
    }

LABEL_236:
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v118) = 0;
    v28 = *(a1 + 1);
    v43 = *(a1 + 2);
    v111 = 1;
    v30 = *a1;
LABEL_53:
    if (v28 <= &v43[-v30])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_238:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_239;
    }

    *(a1 + 2) = v43 + 1;
    if (!v43)
    {
      goto LABEL_238;
    }

    v108 = *v43;
    if (v108 < 2)
    {
      v110 = 0;
      goto LABEL_57;
    }

LABEL_239:
    IPC::Decoder::markInvalid(a1);
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v108) = 0;
    v110 = 1;
LABEL_57:
    v107 = IPC::Decoder::decode<IPC::WebCore_Filter_Subclass>(a1);
    v45 = *(a1 + 1);
    v46 = *(a1 + 2);
    v47 = *a1;
    if (v45 <= &v46[-*a1])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_241:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_242;
    }

    v48 = v46 + 1;
    *(a1 + 2) = v46 + 1;
    if (!v46)
    {
      goto LABEL_241;
    }

    v104 = *v46;
    if (v104 < 2)
    {
      v106 = 0;
      goto LABEL_61;
    }

LABEL_242:
    IPC::Decoder::markInvalid(a1);
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v104) = 0;
    v45 = *(a1 + 1);
    v48 = *(a1 + 2);
    v106 = 1;
    v47 = *a1;
LABEL_61:
    if (v45 <= &v48[-v47])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_244:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_245;
    }

    v49 = v48 + 1;
    *(a1 + 2) = v48 + 1;
    if (!v48)
    {
      goto LABEL_244;
    }

    v50 = *v48;
    if (v50 < 3)
    {
      v103 = v50;
      v105 = 0;
      goto LABEL_65;
    }

LABEL_245:
    IPC::Decoder::markInvalid(a1);
    v103 = 0;
    v45 = *(a1 + 1);
    v49 = *(a1 + 2);
    v105 = 1;
    v47 = *a1;
LABEL_65:
    if (v45 <= &v49[-v47])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_247:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_248;
    }

    v51 = v49 + 1;
    *(a1 + 2) = v49 + 1;
    if (!v49)
    {
      goto LABEL_247;
    }

    v109 = *v49;
    if (v109 < 3)
    {
      v102 = 0;
      goto LABEL_69;
    }

LABEL_248:
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v109) = 0;
    v45 = *(a1 + 1);
    v51 = *(a1 + 2);
    v102 = 1;
    v47 = *a1;
LABEL_69:
    if (v45 <= &v51[-v47])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_250:
      IPC::Decoder::markInvalid(a1);
LABEL_251:
      IPC::Decoder::markInvalid(a1);
      v100 = 0;
      v101 = 0;
      goto LABEL_252;
    }

    *(a1 + 2) = v51 + 1;
    if (!v51)
    {
      goto LABEL_250;
    }

    if (*v51 >= 2u)
    {
      goto LABEL_251;
    }

    if (!*v51)
    {
      v100 = 0;
      v101 = 0;
      v53 = 0x10000;
      goto LABEL_75;
    }

    v52 = IPC::Decoder::decode<WebCore::StoredCredentialsPolicy>(a1);
    v100 = (v52 & ((v52 << 7) >> 15));
    v101 = 256;
    if ((v52 & 0x100) != 0)
    {
      v53 = (v52 & 0x100) << 8;
LABEL_75:
      v99 = v53;
      goto LABEL_76;
    }

LABEL_252:
    IPC::Decoder::markInvalid(a1);
    v99 = 0;
LABEL_76:
    v119 = v36;
    v120 = v32;
    v117 = v35;
    v122 = v33;
    v123 = v26;
    v97 = a2;
    v54 = *(a1 + 1);
    v55 = *(a1 + 2);
    v56 = *a1;
    if (v54 <= &v55[-*a1])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_254:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_255;
    }

    v57 = v55 + 1;
    *(a1 + 2) = v55 + 1;
    if (!v55)
    {
      goto LABEL_254;
    }

    v58 = *v55;
    if (v58 < 4)
    {
      v98 = 0;
      goto LABEL_80;
    }

LABEL_255:
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v58) = 0;
    v54 = *(a1 + 1);
    v57 = *(a1 + 2);
    v98 = 1;
    v56 = *a1;
LABEL_80:
    v114 = v38;
    v116 = v39;
    if (v54 <= &v57[-v56])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_257:
      IPC::Decoder::markInvalid(a1);
      v60 = 0;
      goto LABEL_258;
    }

    v59 = v57 + 1;
    *(a1 + 2) = v57 + 1;
    if (!v57)
    {
      goto LABEL_257;
    }

    v60 = *v57;
    if (v60 < 2)
    {
      v61 = 1;
      goto LABEL_84;
    }

LABEL_258:
    IPC::Decoder::markInvalid(a1);
    v61 = 0;
    v54 = *(a1 + 1);
    v59 = *(a1 + 2);
    v56 = *a1;
LABEL_84:
    if (v60)
    {
      v62 = v61;
    }

    else
    {
      v62 = 0;
    }

    if (v54 <= &v59[-v56])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_260:
      IPC::Decoder::markInvalid(a1);
      v64 = 0;
      goto LABEL_261;
    }

    v63 = v59 + 1;
    *(a1 + 2) = v59 + 1;
    if (!v59)
    {
      goto LABEL_260;
    }

    v64 = *v59;
    if (v64 < 2)
    {
      v65 = 1;
      goto LABEL_91;
    }

LABEL_261:
    IPC::Decoder::markInvalid(a1);
    v65 = 0;
    v54 = *(a1 + 1);
    v63 = *(a1 + 2);
    v56 = *a1;
LABEL_91:
    if (v64)
    {
      v66 = v65;
    }

    else
    {
      v66 = 0;
    }

    if (v54 <= &v63[-v56])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_263:
      IPC::Decoder::markInvalid(a1);
      v68 = 0;
      goto LABEL_264;
    }

    v67 = v63 + 1;
    *(a1 + 2) = v63 + 1;
    if (!v63)
    {
      goto LABEL_263;
    }

    v68 = *v63;
    if (v68 < 2)
    {
      a2 = 1;
      goto LABEL_98;
    }

LABEL_264:
    IPC::Decoder::markInvalid(a1);
    a2 = 0;
    v54 = *(a1 + 1);
    v67 = *(a1 + 2);
    v56 = *a1;
LABEL_98:
    if (v68)
    {
      v69 = a2;
    }

    else
    {
      v69 = 0;
    }

    if (v54 <= &v67[-v56])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_266:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_267;
    }

    v70 = v67 + 1;
    *(a1 + 2) = v67 + 1;
    if (!v67)
    {
      goto LABEL_266;
    }

    v71 = *v67;
    if (v71 < 3)
    {
      v72 = 0;
      goto LABEL_105;
    }

LABEL_267:
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v71) = 0;
    v54 = *(a1 + 1);
    v70 = *(a1 + 2);
    v72 = 1;
    v56 = *a1;
LABEL_105:
    if (v54 <= &v70[-v56])
    {
      IPC::Decoder::markInvalid(a1);
LABEL_269:
      IPC::Decoder::markInvalid(a1);
      goto LABEL_270;
    }

    *(a1 + 2) = v70 + 1;
    if (!v70)
    {
      goto LABEL_269;
    }

    v73 = *v70;
    if (v73 < 3)
    {
      v74 = 0;
      goto LABEL_109;
    }

LABEL_270:
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v73) = 0;
    v56 = *a1;
    v74 = 1;
LABEL_109:
    if (!v56)
    {
      break;
    }

    if (v174)
    {
      v75 = v173;
      v173 = 0;
      v129 = v75;
      if (v172)
      {
        v130 = v170;
        v76 = v171;
        v170 = 0;
        v171 = 0;
        v131 = v76;
        if (v169)
        {
          v132 = v167;
          v77 = v168;
          v167 = 0;
          v168 = 0;
          v133 = v77;
          if (v176)
          {
            v78 = v175;
            v175 = 0;
            v134 = v78;
            if (v166)
            {
              v79 = v165;
              v165 = 0;
              v135 = v79;
              if (v164)
              {
                v80 = v163;
                v163 = 0;
                v136 = v80;
                if (v162)
                {
                  v81 = v161;
                  v161 = 0;
                  v137 = v81;
                  if ((v127 & 0x10000) != 0)
                  {
                    v138 = v127;
                    if (v126 > 0xFF)
                    {
                      v139 = v126;
                      if (v128)
                      {
                        v140 = v123;
                        v141 = v125;
                        if ((v124 & 0x10000) != 0)
                        {
                          v142 = v124;
                          if (!v122)
                          {
                            v143 = v120;
                            if (!v119)
                            {
                              v144 = v117;
                              if (!v116)
                              {
                                v145 = v114;
                                if (!v115)
                                {
                                  v146 = v113;
                                  if (!v112)
                                  {
                                    v147 = v121;
                                    if (!v111)
                                    {
                                      v148 = v118;
                                      if (!v110)
                                      {
                                        v149 = v108;
                                        if ((v107 & 0x100) != 0)
                                        {
                                          v150 = v107;
                                          if (!v106)
                                          {
                                            v151 = v104;
                                            if (!v105)
                                            {
                                              v152 = v103;
                                              if (!v102)
                                              {
                                                v153 = v109;
                                                if ((v100 | v101 | v99) >> 16)
                                                {
                                                  v154 = v100 | v101;
                                                  if (!v98)
                                                  {
                                                    v155 = v58;
                                                    if (v61)
                                                    {
                                                      v156 = v62;
                                                      if (v65)
                                                      {
                                                        v157 = v66;
                                                        if (a2)
                                                        {
                                                          v158 = v69;
                                                          if (!v72)
                                                          {
                                                            v159 = v71;
                                                            if (!v74)
                                                            {
                                                              v160 = v73;
                                                              *(WebKit::WebsitePoliciesData::WebsitePoliciesData(v97, &v129) + 120) = 1;
                                                              WebKit::WebsitePoliciesData::~WebsitePoliciesData(&v129, v82);
                                                              goto LABEL_140;
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_172:
    IPC::Decoder::markInvalid(a1);
  }

  *v97 = 0;
  v97[120] = 0;
  v92 = v128;
  if (!v125)
  {
    v92 = 0;
  }

  if (v92)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v125, v44);
  }

LABEL_140:
  if (v162 == 1)
  {
    v83 = v161;
    v161 = 0;
    if (v83)
    {
      if (atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v83, v44);
      }
    }
  }

  if (v164 == 1)
  {
    v84 = v163;
    v163 = 0;
    if (v84)
    {
      if (atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v84, v44);
      }
    }
  }

  if (v166 == 1)
  {
    v85 = v165;
    v165 = 0;
    if (v85)
    {
      if (atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v85, v44);
      }
    }
  }

  if (v176 == 1)
  {
    v86 = v175;
    v175 = 0;
    if (v86)
    {
      if (atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v86, v44);
      }
    }
  }

  if (v169 == 1)
  {
    WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v167, v44);
  }

  if (v172 == 1)
  {
    WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v170, v44);
  }

  if (v174 == 1)
  {
    if (v173)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v173, v44);
    }
  }
}

void sub_19D78E7FC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, WTF::StringImpl **a24, uint64_t a25, int a26, char a27, char a28, uint64_t a29, char a30)
{
  if (!a24)
  {
    a27 = 0;
  }

  if (a27)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a24, a2);
  }

  if (*(v30 - 208) == 1)
  {
    v33 = *(v30 - 216);
    *(v30 - 216) = 0;
    if (v33)
    {
      if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, a2);
      }
    }
  }

  if (*(v30 - 192) == 1)
  {
    v34 = *(v30 - 200);
    *(v30 - 200) = 0;
    if (v34)
    {
      if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, a2);
      }
    }
  }

  if (*(v30 - 176) == 1)
  {
    v35 = *(v30 - 184);
    *(v30 - 184) = 0;
    if (v35)
    {
      if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, a2);
      }
    }
  }

  if (*(v30 - 96) == 1)
  {
    v36 = *(v30 - 104);
    *(v30 - 104) = 0;
    if (v36)
    {
      if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, a2);
      }
    }
  }

  if (*(v30 - 152) == 1)
  {
    WTF::Vector<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30 - 168, a2);
  }

  if (*(v30 - 128) == 1)
  {
    WTF::Vector<WebCore::CustomHeaderFields,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30 - 144, a2);
  }

  if (*(v30 - 112) == 1)
  {
    v37 = *(v30 - 120);
    if (v37)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v37, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebKit::PaymentSetupFeatures,void>::decode(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21[16] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v21[0] = v4;
  if (v4)
  {
    v4 = v4;
  }

  v5 = MEMORY[0x1E69E2378];
  v6 = (*MEMORY[0x1E69E2378])(v4);
  v21[1] = v6;
  if (v6)
  {
    v7 = v6;
  }

  WTF::HashSet<WTF::RetainPtr<objc_class *>,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v17, v21, 2);
  IPC::decodeRequiringAllowedClasses<NSArray,NSArray*>(&v15, a1);
  if (v17)
  {
    WTF::HashTable<WTF::RetainPtr<objc_class *>,WTF::RetainPtr<objc_class *>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::HashTraits<WTF::RetainPtr<objc_class *>>,WTF::FastMalloc>::deallocateTable(v17, v8);
  }

  for (i = 1; i != -1; --i)
  {
    v10 = v21[i];
    v21[i] = 0;
    if (v10)
    {
    }
  }

  if (*a1)
  {
    if ((v16 & 1) == 0)
    {
      __break(1u);
    }

    v11 = v15;
    if (v15 && (v19 = 0u, v20 = 0u, v17 = 0u, v18 = 0u, (v12 = [v15 countByEnumeratingWithState:&v17 objects:v21 count:16]) != 0))
    {
      v13 = *v18;
LABEL_16:
      v14 = 0;
      while (1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        (*v5)();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v12)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      if (*a1)
      {
        *a2 = v11;
        *(a2 + 8) = 1;
        return;
      }
    }

    *a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    if ((v16 & 1) == 0)
    {
      return;
    }
  }

  if (v15)
  {
  }
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::PaymentSetupConfiguration,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v45);
  IPC::Decoder::decode<WTF::String>(a1, &v43);
  IPC::Decoder::decode<WTF::String>(a1, &v41);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v32);
  if (!*a1)
  {
    goto LABEL_61;
  }

  if ((v46 & 1) == 0)
  {
    goto LABEL_60;
  }

  v5 = v45;
  v45 = 0;
  v27 = v5;
  if ((v44 & 1) == 0)
  {
    goto LABEL_60;
  }

  v6 = v43;
  v43 = 0;
  v28 = v6;
  if ((v42 & 1) == 0)
  {
    goto LABEL_60;
  }

  v7 = v41;
  v41 = 0;
  v29 = v7;
  if ((v34 & 1) == 0)
  {
    goto LABEL_60;
  }

  v30[0] = v32;
  v8 = v33;
  v32 = 0;
  v33 = 0;
  v30[1] = v8;
  WebCore::ApplePaySetupConfiguration::ApplePaySetupConfiguration(&v36, &v27);
  v40 = 1;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v9);
  v10 = v29;
  v29 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v4);
  }

  v11 = v28;
  v28 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v4);
  }

  v12 = v27;
  v27 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v4);
  }

  while (1)
  {
    if (v34 == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v4);
    }

    if (v42 == 1)
    {
      v13 = v41;
      v41 = 0;
      if (v13)
      {
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v4);
        }
      }
    }

    if (v44 == 1)
    {
      v14 = v43;
      v43 = 0;
      if (v14)
      {
        if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v4);
        }
      }
    }

    if (v46 == 1)
    {
      v15 = v45;
      v45 = 0;
      if (v15)
      {
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v4);
        }
      }
    }

    if ((v40 & 1) == 0)
    {
      v24 = *a1;
      v25 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v26 = *(a1 + 3);
      if (v26)
      {
        if (v25)
        {
          (*(*v26 + 16))(v26, v24);
        }
      }
    }

    result = IPC::Decoder::decode<WTF::URL>(a1, &v32);
    if (!*a1)
    {
      *a2 = 0;
      *(a2 + 80) = 0;
      goto LABEL_45;
    }

    if (v40 & 1) != 0 && (v35)
    {
      break;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    LOBYTE(v36) = 0;
    v40 = 0;
  }

  WebKit::PaymentSetupConfiguration::PaymentSetupConfiguration(&v27, &v36, &v32);
  WebCore::ApplePaySetupConfiguration::ApplePaySetupConfiguration(a2, &v27);
  WTF::URL::URL(a2 + 40, &v31);
  *(a2 + 80) = 1;
  v18 = v31;
  v31 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v17);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v17);
  v19 = v29;
  v29 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v4);
  }

  v20 = v28;
  v28 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v4);
  }

  result = v27;
  v27 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v4);
  }

LABEL_45:
  if (v35 == 1)
  {
    result = v32;
    v32 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v4);
      }
    }
  }

  if (v40 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v4);
    v22 = v38;
    v38 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v21);
    }

    v23 = v37;
    v37 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v21);
    }

    result = v36;
    v36 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v21);
      }
    }
  }

  return result;
}

void sub_19D78F060(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF::StringImpl *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, WTF::StringImpl *a25, WTF::StringImpl *a26, WTF::StringImpl *a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a30 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a28, a2);
    if (a27 && atomic_fetch_add_explicit(a27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a27, v31);
    }

    if (a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a26, v31);
    }

    if (a25)
    {
      if (atomic_fetch_add_explicit(a25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a25, v31);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebIDBResult,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::IDBResultData,void>::decode(a1, v37);
  if ((v44 & 1) == 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    result = IPC::Decoder::decode<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v4, &v34);
    if (!*a1)
    {
      *a2 = 0;
      *(a2 + 120) = 0;
      goto LABEL_10;
    }

    if (v44 & 1) != 0 && (v36)
    {
      break;
    }

    __break(1u);
LABEL_20:
    v4 = *a1;
    v22 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v23 = a1[3];
    if (v23)
    {
      v24 = v22 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      (*(*v23 + 16))(v23, v4);
    }
  }

  MEMORY[0x19EB04BF0](&v25, v37);
  v7 = v34;
  v34 = 0;
  *a2 = v25;
  *(a2 + 16) = v26;
  *(a2 + 24) = v27;
  v8 = v28;
  v28 = 0;
  *(a2 + 32) = v8;
  *(a2 + 40) = v29;
  v9 = v30;
  v30 = 0u;
  *(a2 + 56) = v9;
  v10 = *v31;
  *v31 = 0;
  *(a2 + 72) = v10;
  v11 = *&v31[16];
  v12 = v32;
  *&v31[8] = 0u;
  *(a2 + 88) = v11;
  *(a2 + 96) = v12;
  v33[0] = 0;
  *(a2 + 104) = v7;
  v33[1] = 0;
  v13 = v35;
  v35 = 0;
  *(a2 + 112) = v13;
  *(a2 + 120) = 1;
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v33, v14);
  std::unique_ptr<WebCore::IDBGetAllResult>::reset[abi:sn200100](&v31[16], 0);
  std::unique_ptr<WebCore::IDBGetResult>::reset[abi:sn200100](&v31[8], 0);
  v16 = *v31;
  *v31 = 0;
  if (v16)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v16 + 8, v15);
    bmalloc::api::tzoneFree(v16, v17);
  }

  std::unique_ptr<WebCore::IDBTransactionInfo>::reset[abi:sn200100](&v30 + 1, 0);
  std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](&v30, 0);
  result = v28;
  v28 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v6);
  }

LABEL_10:
  if (v36 == 1)
  {
    result = WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v6);
  }

  if (v44 == 1)
  {
    std::unique_ptr<WebCore::IDBGetAllResult>::reset[abi:sn200100](&v43, 0);
    std::unique_ptr<WebCore::IDBGetResult>::reset[abi:sn200100](&v42, 0);
    v19 = v41;
    v41 = 0;
    if (v19)
    {
      mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v19 + 8, v18);
      bmalloc::api::tzoneFree(v19, v20);
    }

    std::unique_ptr<WebCore::IDBTransactionInfo>::reset[abi:sn200100](&v40, 0);
    std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](&v39, 0);
    result = v38;
    v38 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v21);
      }
    }
  }

  return result;
}

void sub_19D78F580(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, WTF::StringImpl *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, bmalloc::api *a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a26 == 1)
  {
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a24, a2);
  }

  if (a43 == 1)
  {
    std::unique_ptr<WebCore::IDBGetAllResult>::reset[abi:sn200100](&a41, 0);
    std::unique_ptr<WebCore::IDBGetResult>::reset[abi:sn200100](&a40, 0);
    v45 = a39;
    a39 = 0;
    if (v45)
    {
      mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v45 + 8, v44);
      bmalloc::api::tzoneFree(v45, v46);
    }

    std::unique_ptr<WebCore::IDBTransactionInfo>::reset[abi:sn200100](&a38, 0);
    std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](&a37, 0);
    v48 = a34;
    a34 = 0;
    if (v48)
    {
      if (atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v48, v47);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteLayerBackingStoreProperties,void>::encode(IPC::Encoder *a1, unint64_t a2)
{
  IPC::ArgumentCoder<std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>>(a1, a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 104);
  IPC::ArgumentCoder<std::optional<WebKit::BufferAndBackendInfo>,void>::encode<IPC::Encoder,std::optional<WebKit::BufferAndBackendInfo>>(a1, a2 + 120);
  IPC::ArgumentCoder<std::optional<WebKit::BufferAndBackendInfo>,void>::encode<IPC::Encoder,std::optional<WebKit::BufferAndBackendInfo>>(a1, a2 + 144);
  IPC::ArgumentCoder<std::optional<WebKit::BufferAndBackendInfo>,void>::encode<IPC::Encoder,std::optional<WebKit::BufferAndBackendInfo>>(a1, a2 + 168);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 192);
  IPC::ArgumentCoder<std::optional<WebCore::IntRect>,void>::encode<IPC::Encoder,std::optional<WebCore::IntRect>>(a1, a2 + 208);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 228));
  v5 = *(a2 + 229);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 230));
  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 232));
}

void IPC::ArgumentCoder<WebKit::RemoteLayerBackingStoreProperties,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v92[2] = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>>(a1, v90);
  v4 = *(v2 + 1);
  v5 = *(v2 + 2);
  v6 = *v2;
  if (v4 <= &v5[-*v2])
  {
    *v2 = 0;
    *(v2 + 1) = 0;
    v13 = *(v2 + 3);
    if (v13)
    {
      if (v4)
      {
        (*(*v13 + 16))(v13);
        v4 = *(v2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_10;
  }

  *(v2 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_10:
    *v2 = 0;
    *(v2 + 1) = 0;
    v14 = *(v2 + 3);
    if (v14)
    {
      if (v4)
      {
        (*(*v14 + 16))(v14);
        v6 = *v2;
        v4 = *(v2 + 1);
        goto LABEL_13;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_13:
    *v2 = 0;
    *(v2 + 1) = 0;
    v15 = *(v2 + 3);
    if (v15 && v4)
    {
      (*(*v15 + 16))(v15, v6);
    }

    goto LABEL_14;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_13;
  }

  if (!v7)
  {
    v10 = 0;
    v11 = 0;
    v60 = 0;
    v12 = 1;
    goto LABEL_16;
  }

  v8 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v2);
  if (v9)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFF00;
    v11 = v8;
    v12 = 1;
    v60 = 1;
    goto LABEL_16;
  }

LABEL_14:
  v16 = *v2;
  v17 = *(v2 + 1);
  *v2 = 0;
  *(v2 + 1) = 0;
  v18 = *(v2 + 3);
  if (v18 && v17)
  {
    (*(*v18 + 16))(v18, v16);
  }

  v12 = 0;
  v10 = 0;
  v11 = 0;
LABEL_16:
  IPC::Decoder::decode<std::optional<WebKit::BufferAndBackendInfo>>(&v87, v2);
  IPC::Decoder::decode<std::optional<WebKit::BufferAndBackendInfo>>(&v84, v2);
  v65 = v12;
  v63 = v11;
  v64 = v10;
  IPC::Decoder::decode<std::optional<WebKit::BufferAndBackendInfo>>(&v81, v2);
  v19 = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v2, &v78);
  v20 = *(v2 + 1);
  if ((v80 & 1) == 0)
  {
    v27 = *v2;
    *v2 = 0;
    *(v2 + 1) = 0;
    v28 = *(v2 + 3);
    if (!v28 || !v20)
    {
      v20 = 0;
      v21 = *v2;
LABEL_28:
      *v2 = 0;
      *(v2 + 1) = 0;
      v29 = *(v2 + 3);
      if (v29)
      {
        if (v20)
        {
          (*(*v29 + 16))(v29, v21);
          v20 = *(v2 + 1);
        }
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_30;
    }

    v19 = (*(*v28 + 16))(v28, v27);
    v20 = *(v2 + 1);
  }

  v21 = *v2;
  v22 = *(v2 + 2);
  if (v20 <= &v22[-*v2])
  {
    goto LABEL_28;
  }

  *(v2 + 2) = v22 + 1;
  if (!v22)
  {
LABEL_30:
    *v2 = 0;
    *(v2 + 1) = 0;
    v30 = *(v2 + 3);
    if (v30)
    {
      if (v20)
      {
        (*(*v30 + 16))(v30);
        v21 = *v2;
        v20 = *(v2 + 1);
        goto LABEL_33;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = 0;
LABEL_33:
    *v2 = 0;
    *(v2 + 1) = 0;
    v31 = *(v2 + 3);
    if (v31 && v20)
    {
      (*(*v31 + 16))(v31, v21);
    }

LABEL_34:
    v32 = *v2;
    v33 = *(v2 + 1);
    *v2 = 0;
    *(v2 + 1) = 0;
    v19 = *(v2 + 3);
    if (v19)
    {
      goto LABEL_77;
    }

    goto LABEL_35;
  }

  v23 = *v22;
  if (v23 >= 2)
  {
    goto LABEL_33;
  }

  if (!v23)
  {
    v24 = 0;
    v26 = 0;
    i = 1;
    goto LABEL_37;
  }

  v19 = IPC::Decoder::decode<WebCore::IntRect>(v2, &v66);
  if (v68 != 1)
  {
    goto LABEL_34;
  }

  v24 = v66;
  v92[0] = *v67;
  *(v92 + 7) = *&v67[7];
  for (i = 1; ; i = 0)
  {
    v26 = 1;
LABEL_37:
    v33 = *(v2 + 1);
    v34 = *(v2 + 2);
    v32 = *v2;
    v61 = v26;
    v62 = i;
    if (v33 <= &v34[-*v2])
    {
      *v2 = 0;
      *(v2 + 1) = 0;
      v48 = *(v2 + 3);
      if (v48)
      {
        if (v33)
        {
          (*(*v48 + 16))(v48);
          v33 = *(v2 + 1);
        }
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v35 = v34 + 1;
      *(v2 + 2) = v34 + 1;
      if (v34)
      {
        v36 = *v34;
        if (v36 < 2)
        {
          v37 = 1;
          goto LABEL_41;
        }

        goto LABEL_92;
      }
    }

    *v2 = 0;
    *(v2 + 1) = 0;
    v49 = *(v2 + 3);
    if (!v49)
    {
      v33 = 0;
LABEL_91:
      v32 = 0;
      v36 = 0;
      goto LABEL_92;
    }

    if (!v33)
    {
      goto LABEL_91;
    }

    (*(*v49 + 16))(v49);
    v36 = 0;
    v32 = *v2;
    v33 = *(v2 + 1);
LABEL_92:
    *v2 = 0;
    *(v2 + 1) = 0;
    v19 = *(v2 + 3);
    if (v19)
    {
      if (v33)
      {
        v19 = (*(*v19 + 16))(v19, v32);
        v32 = *v2;
        v33 = *(v2 + 1);
        goto LABEL_95;
      }
    }

    else
    {
      v33 = 0;
    }

    v32 = 0;
LABEL_95:
    v37 = 0;
    v35 = *(v2 + 2);
LABEL_41:
    if (v36)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    if (v33 <= &v35[-v32])
    {
      *v2 = 0;
      *(v2 + 1) = 0;
      v50 = *(v2 + 3);
      if (v50)
      {
        if (v33)
        {
          (*(*v50 + 16))(v50);
          v32 = *v2;
          v33 = *(v2 + 1);
LABEL_99:
          *v2 = 0;
          *(v2 + 1) = 0;
          v51 = *(v2 + 3);
          if (v51)
          {
            if (v33)
            {
              (*(*v51 + 16))(v51, v32);
              v32 = *v2;
              v33 = *(v2 + 1);
LABEL_102:
              *v2 = 0;
              *(v2 + 1) = 0;
              v52 = *(v2 + 3);
              if (v52)
              {
                if (v33)
                {
                  (*(*v52 + 16))(v52, v32);
                  v41 = 0;
                  v32 = 0;
                  v57 = *(v2 + 3);
                  v58 = *v2;
                  v59 = *(v2 + 1);
                  v40 = 1;
                  *v2 = 0;
                  *(v2 + 1) = 0;
                  v33 = 0;
                  if (!v57 || !v59)
                  {
                    goto LABEL_105;
                  }

                  v19 = (*(*v57 + 16))(v57, v58, v59);
                  v41 = 0;
                  v32 = *v2;
                  v33 = *(v2 + 1);
                  goto LABEL_48;
                }

                v32 = 0;
                v41 = 0;
              }

              else
              {
                v32 = 0;
                v41 = 0;
                v33 = 0;
              }

              v40 = 1;
              goto LABEL_105;
            }
          }

          else
          {
            v33 = 0;
          }

          v32 = 0;
          goto LABEL_102;
        }
      }

      else
      {
        v33 = 0;
      }

      v32 = 0;
      goto LABEL_99;
    }

    *(v2 + 2) = v35 + 1;
    if (!v35)
    {
      goto LABEL_99;
    }

    v39 = *v35;
    if (v39 >= 2)
    {
      goto LABEL_102;
    }

    v40 = 0;
    v41 = v39 != 0;
LABEL_48:
    v42 = *(v2 + 2);
    if (v33 > &v42[-v32])
    {
      *(v2 + 2) = v42 + 1;
      if (v42)
      {
        v43 = *v42;
        if (v43 < 2)
        {
          v44 = 1;
          goto LABEL_52;
        }

        goto LABEL_111;
      }

      goto LABEL_108;
    }

LABEL_105:
    *v2 = 0;
    *(v2 + 1) = 0;
    v53 = *(v2 + 3);
    if (v53)
    {
      if (v33)
      {
        (*(*v53 + 16))(v53, v32);
        v32 = *v2;
        v33 = *(v2 + 1);
        goto LABEL_108;
      }
    }

    else
    {
      v33 = 0;
    }

    v32 = 0;
LABEL_108:
    *v2 = 0;
    *(v2 + 1) = 0;
    v54 = *(v2 + 3);
    if (!v54)
    {
      v33 = 0;
LABEL_110:
      v32 = 0;
      v43 = 0;
      goto LABEL_111;
    }

    if (!v33)
    {
      goto LABEL_110;
    }

    (*(*v54 + 16))(v54, v32);
    v43 = 0;
    v32 = *v2;
    v33 = *(v2 + 1);
LABEL_111:
    *v2 = 0;
    *(v2 + 1) = 0;
    v19 = *(v2 + 3);
    if (!v19)
    {
      v32 = 0;
      v33 = 0;
LABEL_113:
      v44 = 0;
      goto LABEL_52;
    }

    if (!v33)
    {
      v32 = 0;
      goto LABEL_113;
    }

    v19 = (*(*v19 + 16))(v19, v32);
    v44 = 0;
    v32 = *v2;
    v33 = *(v2 + 1);
LABEL_52:
    v45 = v43 ? v44 : 0;
    v46 = ((*(v2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v33 < v46 - v32 || v33 - (v46 - v32) <= 3)
    {
      *v2 = 0;
      *(v2 + 1) = 0;
      v55 = *(v2 + 3);
      if (v55)
      {
        if (v33)
        {
          (*(*v55 + 16))(v55);
          v32 = *v2;
          v33 = *(v2 + 1);
          goto LABEL_117;
        }
      }

      else
      {
        v33 = 0;
      }

      v32 = 0;
    }

    else
    {
      *(v2 + 2) = v46 + 1;
      if (v46)
      {
        v47 = *v46 | 0x100000000;
        if (!v32)
        {
          goto LABEL_118;
        }

        goto LABEL_59;
      }
    }

LABEL_117:
    *v2 = 0;
    *(v2 + 1) = 0;
    v56 = *(v2 + 3);
    if (!v56 || !v33 || (v19 = (*(*v56 + 16))(v56, v32), v47 = 0, (v32 = *v2) == 0))
    {
LABEL_118:
      *a2 = 0;
      *(a2 + 240) = 0;
      goto LABEL_72;
    }

LABEL_59:
    v66 = 0;
    v69 = 0;
    v70 = 0;
    LOBYTE(v71) = 0;
    BYTE8(v71) = 0;
    LOBYTE(v72) = 0;
    v73[0] = 0;
    v73[8] = 0;
    v73[24] = 0;
    LOBYTE(v74) = 0;
    LOBYTE(v75) = 0;
    BYTE8(v75) = 0;
    v76[0] = 0;
    v76[8] = 0;
    v76[24] = 0;
    v76[28] = 0;
    v76[30] = 0;
    v77 = 1065353216;
    if (v91)
    {
      std::__optional_storage_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>>(&v66, v90);
      if (v65)
      {
        *&v71 = v63 | v64;
        BYTE8(v71) = v60;
        if (v89)
        {
          v2 = &v66;
          v72 = v87;
          v73[0] = v88;
          if (v86)
          {
            *&v73[8] = v84;
            v73[24] = v85;
            if (v83)
            {
              v74 = v81;
              LOBYTE(v75) = v82;
              if (v80)
              {
                *(&v75 + 1) = v78;
                v76[0] = v79;
                if (v62)
                {
                  v76[8] = v24;
                  *&v76[9] = v92[0];
                  *&v76[16] = *(v92 + 7);
                  v76[24] = v61;
                  if (v37)
                  {
                    v76[28] = v38;
                    if (!v40)
                    {
                      v76[29] = v41;
                      if (v44)
                      {
                        v76[30] = v45;
                        if ((v47 & 0x100000000) != 0)
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
        }
      }
    }

    __break(1u);
LABEL_77:
    if (v33)
    {
      v19 = (*(*v19 + 16))(v19, v32);
    }

LABEL_35:
    v24 = 0;
  }

  v77 = v47;
  std::__optional_move_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__optional_move_base[abi:sn200100](a2, &v66);
  *(a2 + 96) = v70;
  *(a2 + 184) = v75;
  *(a2 + 200) = *v76;
  *(a2 + 216) = *&v76[16];
  *(a2 + 232) = v77;
  *(a2 + 120) = v72;
  *(a2 + 136) = *v73;
  *(a2 + 152) = *&v73[16];
  *(a2 + 168) = v74;
  *(a2 + 104) = v71;
  *(a2 + 240) = 1;
  v70 = 0;
  if (v69 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(&v66);
  }

LABEL_72:
  if (v91 == 1 && v90[88] == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v90);
  }
}

void sub_19D79010C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27)
{
  if (*(v27 - 120) == 1 && *(v27 - 128) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor((v27 - 216));
  }

  _Unwind_Resume(exception_object);
}

WTF::MachSendRight *IPC::Decoder::decode<std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[96] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D7901CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 96) == 1 && *(v1 + 88) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<std::optional<WebKit::BufferAndBackendInfo>>(uint64_t result, void *a2)
{
  v2 = a2;
  v3 = a2[2];
  v4 = *a2;
  v5 = v2[1];
  if (v5 <= v3 - v4)
  {
    v28 = result;
    *v2 = 0;
    v2[1] = 0;
    v31 = v2;
    v23 = v2[3];
    if (v23)
    {
      if (v5)
      {
        (*(*v23 + 16))(v23);
        v4 = *v31;
        v5 = v31[1];
LABEL_46:
        *v31 = 0;
        v31[1] = 0;
        v24 = v31[3];
        if (v24)
        {
          if (v5)
          {
            (*(*v24 + 16))(v24, v4);
            v5 = v31[1];
          }
        }

        else
        {
          v5 = 0;
        }

LABEL_50:
        v2 = v31;
        *v31 = 0;
        v31[1] = 0;
        v20 = v31[3];
        result = v28;
        if (v20)
        {
          goto LABEL_51;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v5 = 0;
    }

    v4 = 0;
    goto LABEL_46;
  }

  v2[2] = v3 + 1;
  if (!v3)
  {
    v31 = v2;
    v28 = result;
    goto LABEL_46;
  }

  if (*v3 >= 2u)
  {
    v31 = v2;
    v28 = result;
    goto LABEL_50;
  }

  if (!*v3)
  {
    v13 = 0;
    *result = 0;
LABEL_22:
    *(result + 16) = v13;
    *(result + 24) = 1;
    return result;
  }

  v6 = v3 & 0xFFFFFFFFFFFFFFF8;
  v7 = ((v3 & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v5 >= v7 - v4 && v5 - (v7 - v4) > 7)
  {
    v2[2] = v6 + 16;
    if (v7)
    {
      if (v4)
      {
        v9 = *v7;
        if ((v9 - 1) < 0xFFFFFFFFFFFFFFFELL)
        {
          v10 = 1;
          goto LABEL_14;
        }
      }

      v30 = v2;
      v27 = result;
      goto LABEL_25;
    }

    v30 = v2;
    v27 = result;
    v15 = v5;
    v16 = v4;
  }

  else
  {
    v27 = result;
    v15 = 0;
    v16 = 0;
    *v2 = 0;
    v2[1] = 0;
    v30 = v2;
    result = v2[3];
    if (result)
    {
      goto LABEL_61;
    }
  }

  while (1)
  {
    *v30 = 0;
    v30[1] = 0;
    v17 = v30[3];
    if (v17 && v15)
    {
      result = (*(*v17 + 16))(v17, v16, v15);
      if (*v30)
      {
        goto LABEL_60;
      }

      v4 = 0;
      v5 = v30[1];
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

LABEL_25:
    *v30 = 0;
    v30[1] = 0;
    v14 = v30[3];
    if (v14)
    {
      if (v5)
      {
        (*(*v14 + 16))(v14, v4);
        v10 = 0;
        v9 = 0;
        v2 = v30;
        v4 = *v30;
        v5 = v30[1];
        result = v27;
        goto LABEL_14;
      }

      v4 = 0;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    v10 = 0;
    v9 = 0;
    result = v27;
    v2 = v30;
LABEL_14:
    v11 = ((v2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v5 < v11 - v4 || v5 - (v11 - v4) <= 3)
    {
      v26 = v10;
      v25 = v9;
      v27 = result;
      *v2 = 0;
      v2[1] = 0;
      v30 = v2;
      v18 = v2[3];
      if (v18)
      {
        if (v5)
        {
          (*(*v18 + 16))(v18);
          v4 = *v30;
          v5 = v30[1];
          goto LABEL_34;
        }
      }

      else
      {
        v5 = 0;
      }

      v4 = 0;
    }

    else
    {
      v2[2] = v11 + 1;
      if (v11)
      {
        v12 = *v11 | 0x100000000;
        if (!v4)
        {
          break;
        }

        goto LABEL_18;
      }

      v26 = v10;
      v25 = v9;
      v30 = v2;
      v27 = result;
    }

LABEL_34:
    v2 = v30;
    *v30 = 0;
    v30[1] = 0;
    v19 = v30[3];
    result = v27;
    if (!v19 || !v5)
    {
      goto LABEL_38;
    }

    (*(*v19 + 16))(v30[3], v4);
    v2 = v30;
    result = v27;
    v12 = 0;
    v9 = v25;
    v10 = v26;
    if (!*v30)
    {
      break;
    }

LABEL_18:
    if ((v10 & 1) != 0 && (v12 & 0x100000000) != 0)
    {
      *result = v9;
      *(result + 8) = v12;
      v13 = 1;
      goto LABEL_22;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    (*(*result + 16))(result);
    v16 = *v30;
    v15 = v30[1];
  }

  v5 = v2[1];
  v20 = v2[3];
  *v2 = 0;
  v2[1] = 0;
  if (!v20)
  {
    goto LABEL_38;
  }

LABEL_51:
  if (v5)
  {
    v29 = result;
    v32 = v2;
    (*(*v20 + 16))(v20);
    v2 = v32;
    result = v29;
  }

LABEL_38:
  *result = 0;
  *(result + 24) = 0;
  v21 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  result = v2[3];
  if (result && v21)
  {
    v22 = *(*result + 16);

    return v22();
  }

  return result;
}

void WebKit::RemoteLayerBackingStoreProperties::~RemoteLayerBackingStoreProperties(WebKit::RemoteLayerBackingStoreProperties *this)
{
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
  }

  if (*(this + 88) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(this);
  }
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteLayerTreeTransaction,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,void>::encode<IPC::Encoder,WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<WebKit::ChangedLayers,void>::encode(a1, (a2 + 24));
  v5 = *(a2 + 40);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v5 == 0);
  if (v5)
  {
    v11 = *(a2 + 40);
    if (!v11)
    {
      result = 157;
      __break(0xC471u);
      return result;
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v11);
  }

  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 60));
  v6 = *(a2 + 60);
  if (!v6)
  {
    goto LABEL_9;
  }

  v5 = *(a2 + 48);
  v2 = 112 * v6;
LABEL_4:
  IPC::ArgumentCoder<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,void>::encode<IPC::Encoder,WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> const&>(a1, v5);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(v5 + 16));
  if ((*(v5 + 56) & 1) == 0)
  {
    v14 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v14);
    goto LABEL_6;
  }

  v13 = 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v13);
  if (*(v5 + 56))
  {
    IPC::ArgumentCoder<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::VideoElementData,void>::encode(a1, v5 + 24);
LABEL_6:
    v12 = *(v5 + 104);
    v7 = IPC::Encoder::operator<<<BOOL>(a1, &v12);
    v8 = v12;
    if (!v12)
    {
      if (*(v5 + 104))
      {
        mpark::throw_bad_variant_access(v7);
      }

      goto LABEL_8;
    }

    goto LABEL_27;
  }

  while (1)
  {
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_27:
    IPC::ArgumentCoder<mpark::variant<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> const&,0ul>(a1, (v5 + 64), v8);
LABEL_8:
    v5 += 112;
    v2 -= 112;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_9:
    IPC::VectorArgumentCoder<false,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 64);
    IPC::VectorArgumentCoder<false,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 80);
    IPC::VectorArgumentCoder<false,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 96);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 124));
    v9 = *(a2 + 124);
    if (v9)
    {
      v5 = *(a2 + 112);
      v2 = 8 * v9;
      do
      {
        IPC::ArgumentCoder<WebKit::CallbackID,void>::encode(a1, v5);
        v5 += 8;
        v2 -= 8;
      }

      while (v2);
    }

    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 128));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 132));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 136));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 140));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 144));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 148));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 152));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 156));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 160));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 164));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 168));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 172));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 176));
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 180));
    IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 184));
    IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 192));
    IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 200));
    if ((*(a2 + 272) & 1) == 0)
    {
      v16 = 0;
      IPC::Encoder::operator<<<BOOL>(a1, &v16);
      goto LABEL_12;
    }

    v15 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v15);
    if (*(a2 + 272))
    {
      v17 = *(a2 + 216);
      IPC::Encoder::operator<<<BOOL>(a1, &v17);
      IPC::ArgumentCoder<mpark::variant<WebCore::PredominantColorType,WebCore::Color>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PredominantColorType,WebCore::Color> const&>(a1, (a2 + 208), v17);
      v18 = *(a2 + 232);
      IPC::Encoder::operator<<<BOOL>(a1, &v18);
      IPC::ArgumentCoder<mpark::variant<WebCore::PredominantColorType,WebCore::Color>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PredominantColorType,WebCore::Color> const&>(a1, (a2 + 224), v18);
      v19 = *(a2 + 248);
      IPC::Encoder::operator<<<BOOL>(a1, &v19);
      IPC::ArgumentCoder<mpark::variant<WebCore::PredominantColorType,WebCore::Color>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PredominantColorType,WebCore::Color> const&>(a1, (a2 + 240), v19);
      v20 = *(a2 + 264);
      IPC::Encoder::operator<<<BOOL>(a1, &v20);
      IPC::ArgumentCoder<mpark::variant<WebCore::PredominantColorType,WebCore::Color>,void>::encode<IPC::Encoder,mpark::variant<WebCore::PredominantColorType,WebCore::Color> const&>(a1, (a2 + 256), v20);
LABEL_12:
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 280));
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 288));
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 296));
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 304));
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 312));
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 320));
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 328));
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 336));
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 344));
      IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 352));
      IPC::Encoder::operator<<<BOOL>(a1, (a2 + 354));
      IPC::Encoder::operator<<<BOOL>(a1, (a2 + 355));
      IPC::Encoder::operator<<<BOOL>(a1, (a2 + 356));
      IPC::Encoder::operator<<<BOOL>(a1, (a2 + 357));
      IPC::Encoder::operator<<<BOOL>(a1, (a2 + 358));
      IPC::Encoder::operator<<<BOOL>(a1, (a2 + 359));
      if ((*(a2 + 912) & 1) == 0)
      {
        v22 = 0;
        IPC::Encoder::operator<<<BOOL>(a1, &v22);
        goto LABEL_14;
      }

      v21 = 1;
      IPC::Encoder::operator<<<BOOL>(a1, &v21);
      if (*(a2 + 912))
      {
        break;
      }
    }
  }

  IPC::ArgumentCoder<WebKit::EditorState,void>::encode(a1, a2 + 368);
LABEL_14:
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(a1, a2 + 928);
  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 944));
}

void IPC::ArgumentCoder<WebKit::RemoteLayerTreeTransaction,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v10 = a1;
  v377 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>(&v296, a1);
  v11 = &v298;
  v12 = *(v10 + 8);
  v13 = ((*(v10 + 16) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = *v10;
  v15 = v13 - *v10;
  v16 = v12 >= v15;
  v17 = v12 - v15;
  if (!v16 || v17 <= 3)
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    v171 = *(v10 + 24);
    if (v171)
    {
      if (v12)
      {
        (*(*v171 + 16))(v171);
        v12 = *(v10 + 8);
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_297;
  }

  *(v10 + 16) = v13 + 1;
  if (!v13)
  {
LABEL_297:
    *v10 = 0;
    *(v10 + 8) = 0;
    v172 = *(v10 + 24);
    v11 = &v298;
    if (v172 && v12)
    {
      (*(*v172 + 16))(v172);
    }

    goto LABEL_47;
  }

  v4 = *v13;
  v269[0] = 0;
  if (!v4)
  {
    v133 = 0;
LABEL_50:
    *v317 = v133;
    LOBYTE(i) = 1;
    v317[8] = 1;
    if (v14)
    {
      WebKit::ChangedLayers::ChangedLayers(&v357, v317);
      WebKit::ChangedLayers::ChangedLayers(v294, &v357);
      v295 = 1;
      WebKit::ChangedLayers::~ChangedLayers(&v357, v40);
      if ((v317[8] & 1) == 0)
      {
        goto LABEL_53;
      }

      v133 = *v317;
      if (!*v317)
      {
        goto LABEL_53;
      }
    }

    else
    {
      LOBYTE(v294[0]) = 0;
      v295 = 0;
      if (!v133)
      {
        goto LABEL_53;
      }
    }

    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v133, v14);
    goto LABEL_53;
  }

  LODWORD(v5) = 0;
  LOBYTE(v6) = 24;
  while (1)
  {
    IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v10, &v357);
    if ((v358 & 1) == 0)
    {
      break;
    }

    IPC::ArgumentCoder<WebKit::LayerProperties,void>::decode(v317, v10);
    if ((v353 & 1) == 0)
    {
      v19 = *v10;
      v31 = *(v10 + 8);
      *v10 = 0;
      *(v10 + 8) = 0;
      v32 = *(v10 + 24);
      if (!v32)
      {
        goto LABEL_470;
      }

      if (!v31)
      {
        v11 = &v298;
LABEL_470:
        *v10 = 0;
        *(v10 + 8) = 0;
        break;
      }

      (*(*v32 + 16))(v32, v19);
      v11 = &v298;
      if ((v353 & 1) == 0)
      {
        v19 = *v10;
        v33 = *(v10 + 8);
        v34 = *(v10 + 24);
        *v10 = 0;
        *(v10 + 8) = 0;
        if (v34 && v33)
        {
          (*(*v34 + 16))(v34, v19);
        }

        break;
      }
    }

    v3 = WTF::fastMalloc(0x310);
    v20 = WebKit::LayerProperties::LayerProperties(v3, v317);
    if (v353)
    {
      WebKit::LayerProperties::~LayerProperties(v317);
    }

    if ((v358 & 1) == 0)
    {
      goto LABEL_443;
    }

    if (*(&v357 + 1) == -1 || v357 == 0)
    {
      goto LABEL_44;
    }

    v7 = v269[0];
    if (v269[0] || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(v269), (v7 = v269[0]) != 0))
    {
      v8 = *(v7 - 8);
    }

    else
    {
      v8 = 0;
    }

    v22 = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v357) & v8;
    i = v7 + 24 * v22;
    v24 = *i;
    v23 = *(i + 8);
    if (*i != 0)
    {
      v25 = 0;
      v26 = 1;
      while (__PAIR128__(v23, v24) != v357)
      {
        if (v23 == -1)
        {
          v25 = i;
        }

        v22 = (v22 + v26) & v8;
        i = v7 + 24 * v22;
        v24 = *i;
        v23 = *(i + 8);
        ++v26;
        if (*i == 0)
        {
          if (v25)
          {
            *v25 = 0;
            v25[1] = 0;
            v25[2] = 0;
            --*(v7 - 16);
            i = v25;
          }

          goto LABEL_27;
        }
      }

LABEL_44:
      WebKit::LayerProperties::~LayerProperties(v3);
      WTF::fastFree(v35, v36);
      break;
    }

LABEL_27:
    *i = v357;
    std::unique_ptr<WebKit::LayerProperties>::reset[abi:sn200100]((i + 16), v3);
    v27 = v269[0];
    if (v269[0])
    {
      v28 = *(v269[0] - 12) + 1;
    }

    else
    {
      v28 = 1;
    }

    *(v269[0] - 12) = v28;
    v29 = (*(v27 - 16) + v28);
    v30 = *(v27 - 4);
    if (v30 > 0x400)
    {
      if (v30 > 2 * v29)
      {
        goto LABEL_33;
      }

LABEL_32:
      WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(v269);
      goto LABEL_33;
    }

    if (3 * v30 <= 4 * v29)
    {
      goto LABEL_32;
    }

LABEL_33:
    LODWORD(v5) = v5 + 1;
    if (v5 == v4)
    {
      v133 = v269[0];
      v14 = *v10;
      goto LABEL_50;
    }
  }

  if (v269[0])
  {
    WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::UniqueRef<WebKit::LayerProperties>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::UniqueRef<WebKit::LayerProperties>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v269[0], v19);
  }

LABEL_47:
  v37 = *v10;
  v38 = *(v10 + 8);
  *v10 = 0;
  *(v10 + 8) = 0;
  v39 = *(v10 + 24);
  if (v39)
  {
    if (v38)
    {
      v20 = (*(*v39 + 16))(v39, v37);
      if (*v10)
      {
        goto LABEL_443;
      }
    }
  }

  LOBYTE(v294[0]) = 0;
  v295 = 0;
LABEL_53:
  v41 = *(v10 + 8);
  if ((v295 & 1) == 0)
  {
    v136 = *v10;
    *v10 = 0;
    *(v10 + 8) = 0;
    v137 = *(v10 + 24);
    if (v137 && v41)
    {
      (*(*v137 + 16))(v137, v136);
      v41 = *(v10 + 8);
      goto LABEL_54;
    }

    v41 = 0;
    v42 = *v10;
    goto LABEL_223;
  }

LABEL_54:
  v42 = *v10;
  v43 = *(v10 + 16);
  if (v41 <= &v43[-*v10])
  {
LABEL_223:
    *v10 = 0;
    *(v10 + 8) = 0;
    v138 = *(v10 + 24);
    if (v138)
    {
      if (v41)
      {
        (*(*v138 + 16))(v138, v42);
        v41 = *(v10 + 8);
      }
    }

    else
    {
      v41 = 0;
    }

    goto LABEL_225;
  }

  *(v10 + 16) = v43 + 1;
  if (!v43)
  {
LABEL_225:
    *v10 = 0;
    *(v10 + 8) = 0;
    v139 = *(v10 + 24);
    if (v139)
    {
      if (v41)
      {
        (*(*v139 + 16))(v139);
        v42 = *v10;
        v41 = *(v10 + 8);
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }

LABEL_227:
    *v10 = 0;
    *(v10 + 8) = 0;
    v140 = *(v10 + 24);
    if (v140 && v41)
    {
      (*(*v140 + 16))(v140, v42);
    }

    goto LABEL_228;
  }

  v44 = *v43;
  if (v44 >= 2)
  {
    goto LABEL_227;
  }

  if (v44)
  {
    v7 = 0;
    goto LABEL_61;
  }

  v45 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v10);
  if (v46)
  {
    v7 = v45;
LABEL_61:
    LOBYTE(v8) = 1;
    goto LABEL_62;
  }

LABEL_228:
  v141 = *v10;
  v142 = *(v10 + 8);
  *v10 = 0;
  *(v10 + 8) = 0;
  v143 = *(v10 + 24);
  if (v143)
  {
    if (!v142)
    {
      v7 = 0;
      LOBYTE(v8) = 0;
      goto LABEL_62;
    }

    (*(*v143 + 16))(v143, v141);
  }

  v7 = 0;
  LOBYTE(v8) = 0;
LABEL_62:
  v47 = *(v10 + 8);
  v48 = ((*(v10 + 16) + 7) & 0xFFFFFFFFFFFFFFF8);
  v49 = *v10;
  v50 = v48 - *v10;
  v16 = v47 >= v50;
  v51 = v47 - v50;
  if (!v16 || v51 <= 7)
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    v165 = *(v10 + 24);
    if (v165)
    {
      if (v47)
      {
        (*(*v165 + 16))(v165);
        v47 = *(v10 + 8);
      }
    }

    else
    {
      v47 = 0;
    }

    goto LABEL_285;
  }

  *(v10 + 16) = v48 + 1;
  if (!v48)
  {
LABEL_285:
    *v10 = 0;
    *(v10 + 8) = 0;
    v166 = *(v10 + 24);
    if (v166 && v47)
    {
      (*(*v166 + 16))(v166);
    }

    LOBYTE(v291) = 0;
    v293 = 0;
    goto LABEL_250;
  }

  v3 = *v48;
  v357 = 0uLL;
  if (v3 >= 0x2492)
  {
    v127 = v293;
    LOBYTE(i) = 112;
    while (1)
    {
      IPC::Decoder::decode<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties>(v317, v10);
      v144 = v325;
      if (v325)
      {
        if (HIDWORD(v357) == DWORD2(v357))
        {
          WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties>(&v357, v317);
        }

        else
        {
          v145 = v357 + 112 * HIDWORD(v357);
          v146 = *v317;
          v147 = *&v317[16];
          v148 = *v318;
          *(v145 + 41) = *&v318[9];
          *(v145 + 16) = v147;
          *(v145 + 32) = v148;
          *v145 = v146;
          mpark::detail::move_constructor<mpark::detail::traits<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,(mpark::detail::Trait)1>::move_constructor((v145 + 64), &v319);
          ++HIDWORD(v357);
        }
      }

      else
      {
        v127 = 0;
      }

      if (v325 == 1)
      {
        mpark::variant<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::~variant(&v319, v49);
      }

      if ((v144 & 1) == 0)
      {
        break;
      }

      if (!--v3)
      {
        v149 = HIDWORD(v357);
        if (DWORD2(v357) <= HIDWORD(v357))
        {
          goto LABEL_68;
        }

        i = v357;
        if (HIDWORD(v357))
        {
          if (HIDWORD(v357) >= 0x2492493)
          {
            __break(0xC471u);
            return;
          }

          LODWORD(v3) = 112 * HIDWORD(v357);
          v150 = WTF::fastMalloc((112 * HIDWORD(v357)));
          DWORD2(v357) = (613566757 * (v3 >> 4)) >> 32;
          *&v357 = v150;
          if (v150 != i)
          {
            WTF::VectorMover<false,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties>::move(i, i + 112 * v149, v150);
          }
        }

        if (i)
        {
          if (v357 == i)
          {
            *&v357 = 0;
            DWORD2(v357) = 0;
          }

          WTF::fastFree(i, v49);
        }

        goto LABEL_68;
      }
    }
  }

  else
  {
    if (!v3)
    {
LABEL_68:
      v52 = *(&v357 + 1);
      v291 = v357;
      v357 = 0uLL;
      v292 = v52;
      v293 = 1;
      WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v357, v49);
      goto LABEL_69;
    }

    v126 = WTF::fastMalloc((112 * v3));
    DWORD2(v357) = (613566757 * ((7 * v3) & 0xFFFFFFF)) >> 32;
    *&v357 = v126;
    v127 = v293;
    LOBYTE(i) = 112;
    while (1)
    {
      IPC::Decoder::decode<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties>(v317, v10);
      v128 = v325;
      if (v325)
      {
        if (HIDWORD(v357) == DWORD2(v357))
        {
          WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties>(&v357, v317);
        }

        else
        {
          v129 = v357 + 112 * HIDWORD(v357);
          v130 = *v317;
          v131 = *&v317[16];
          v132 = *v318;
          *(v129 + 41) = *&v318[9];
          *(v129 + 16) = v131;
          *(v129 + 32) = v132;
          *v129 = v130;
          mpark::detail::move_constructor<mpark::detail::traits<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,(mpark::detail::Trait)1>::move_constructor((v129 + 64), &v319);
          ++HIDWORD(v357);
        }
      }

      else
      {
        v127 = 0;
      }

      if (v325 == 1)
      {
        mpark::variant<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::~variant(&v319, v49);
      }

      if ((v128 & 1) == 0)
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_68;
      }
    }
  }

  LOBYTE(v291) = 0;
  v293 = v127;
  WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v357, v49);
  if (v127)
  {
    goto LABEL_69;
  }

LABEL_250:
  v151 = *v10;
  v152 = *(v10 + 8);
  *v10 = 0;
  *(v10 + 8) = 0;
  v153 = *(v10 + 24);
  if (v153 && v152)
  {
    (*(*v153 + 16))(v153, v151);
  }

LABEL_69:
  IPC::Decoder::decode<WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v288, v10);
  IPC::Decoder::decode<WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v285, v10);
  IPC::Decoder::decode<WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v282, v10);
  IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v10, &v279);
  if ((v281 & 1) == 0)
  {
    v154 = *v10;
    v155 = *(v10 + 8);
    *v10 = 0;
    *(v10 + 8) = 0;
    v156 = *(v10 + 24);
    if (v156)
    {
      if (v155)
      {
        (*(*v156 + 16))(v156, v154);
      }
    }
  }

  v53 = IPC::Decoder::decode<WebCore::IntSize>(v10);
  v265 = v54;
  v4 = v53;
  v55 = IPC::Decoder::decode<WebCore::IntSize>(v10);
  v264 = v56;
  v5 = v55;
  v57 = IPC::Decoder::decode<WebCore::IntPoint>(v10);
  v263 = v58;
  v6 = v57;
  v59 = IPC::Decoder::decode<WebCore::LayoutPoint>(v10);
  v262 = v60;
  v11 = v59;
  v61 = IPC::Decoder::decode<WebCore::LayoutPoint>(v10);
  v261 = v62;
  v9 = v61;
  v257 = IPC::Decoder::decode<WebCore::LayoutPoint>(v10);
  v259 = v63;
  v254 = IPC::Decoder::decode<WebCore::IntPoint>(v10);
  v256 = v64;
  IPC::Decoder::decode<WebCore::Color>(v10, &v277);
  IPC::Decoder::decode<WebCore::Color>(v10, &v275);
  IPC::Decoder::decode<WebCore::Color>(v10, &v273);
  v65 = *(v10 + 8);
  v66 = *(v10 + 16);
  v67 = *v10;
  if (v65 <= &v66[-*v10])
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    v173 = *(v10 + 24);
    if (v173)
    {
      if (v65)
      {
        (*(*v173 + 16))(v173);
        v65 = *(v10 + 8);
      }
    }

    else
    {
      v65 = 0;
    }

    goto LABEL_302;
  }

  *(v10 + 16) = v66 + 1;
  if (!v66)
  {
LABEL_302:
    *v10 = 0;
    *(v10 + 8) = 0;
    v174 = *(v10 + 24);
    if (v174)
    {
      if (v65)
      {
        (*(*v174 + 16))(v174);
        v67 = *v10;
        v65 = *(v10 + 8);
        goto LABEL_305;
      }
    }

    else
    {
      v65 = 0;
    }

    v67 = 0;
LABEL_305:
    *v10 = 0;
    *(v10 + 8) = 0;
    v175 = *(v10 + 24);
    if (v175 && v65)
    {
      (*(*v175 + 16))(v175, v67);
    }

    goto LABEL_265;
  }

  v68 = *v66;
  if (v68 >= 2)
  {
    goto LABEL_305;
  }

  if (v68)
  {
    IPC::Decoder::decode<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>(&v314, v10);
    IPC::Decoder::decode<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>(&v311, v10);
    IPC::Decoder::decode<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>(&v308, v10);
    v20 = IPC::Decoder::decode<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>(&v305, v10);
    if (*v10)
    {
      if ((v316 & 1) == 0 || (v313 & 1) == 0 || (v310 & 1) == 0 || (v307 & 1) == 0)
      {
        goto LABEL_443;
      }

      LOBYTE(v298) = 0;
      BYTE8(v298) = -1;
      if (v315 != 255)
      {
        if (v315)
        {
          v72 = v314;
          v314 = 0;
          *&v298 = v72;
        }

        else
        {
          LOBYTE(v298) = v314;
        }

        BYTE8(v298) = v315;
      }

      LOBYTE(v299) = 0;
      v300 = -1;
      if (v312 != 255)
      {
        if (v312)
        {
          v73 = v311;
          v311 = 0;
          v299 = v73;
        }

        else
        {
          LOBYTE(v299) = v311;
        }

        v300 = v312;
      }

      LOBYTE(v301) = 0;
      v302 = -1;
      if (v309 != 255)
      {
        if (v309)
        {
          v74 = v308;
          v308 = 0;
          v301 = v74;
        }

        else
        {
          LOBYTE(v301) = v308;
        }

        v302 = v309;
      }

      LOBYTE(v303) = 0;
      v304 = -1;
      if (v306 != 255)
      {
        if (v306)
        {
          v75 = v305;
          v305 = 0;
          v303 = v75;
        }

        else
        {
          LOBYTE(v303) = v305;
        }

        v304 = v306;
      }

      v3 = &v298;
      WebCore::RectEdges<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>::RectEdges(v317, &v298);
      LOBYTE(v319) = 1;
      for (i = 48; i != -16; i -= 16)
      {
        v20 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(&v298 + i, v21);
      }
    }

    else
    {
      v317[0] = 0;
      LOBYTE(v319) = 0;
    }

    if (v307 == 1)
    {
      v20 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(&v305, v21);
    }

    if (v310 == 1)
    {
      v20 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(&v308, v21);
    }

    if (v313 == 1)
    {
      v20 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(&v311, v21);
    }

    if (v316 == 1)
    {
      v20 = mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(&v314, v21);
    }

    if ((v319 & 1) == 0)
    {
      v21 = *v10;
      v160 = *(v10 + 8);
      *v10 = 0;
      *(v10 + 8) = 0;
      v20 = *(v10 + 24);
      if (v20)
      {
        if (v160)
        {
          v20 = (*(*v20 + 16))(v20, v21);
        }
      }
    }

    if (*v10)
    {
      if ((v319 & 1) == 0)
      {
        goto LABEL_443;
      }

      WebCore::RectEdges<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>::RectEdges(&v298, v317);
      WebCore::RectEdges<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>::RectEdges(&v357, &v298);
      v361 = 1;
      for (j = 48; j != -16; j -= 16)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(&v298 + j, v21);
      }
    }

    else
    {
      LOBYTE(v357) = 0;
      v361 = 0;
    }

    if (v319 == 1)
    {
      v77 = &v318[16];
      v78 = -64;
      do
      {
        v77 = (mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(v77, v21) - 16);
        v78 += 16;
      }

      while (v78);
    }

    if (v361 & 1) != 0 || (v161 = *v10, v162 = *(v10 + 8), *v10 = 0, *(v10 + 8) = 0, (v163 = *(v10 + 24)) != 0) && v162 && ((*(*v163 + 16))(v163, v161), (v361))
    {
      WebCore::RectEdges<mpark::variant<WebCore::PredominantColorType,WebCore::Color>>::RectEdges(v269, &v357);
      v271 = 1;
      v272 = 1;
      if (v361)
      {
        v134 = &v359;
        v135 = -64;
        do
        {
          v134 = (mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(v134, v79) - 16);
          v135 += 16;
        }

        while (v135);
      }
    }

    else
    {
LABEL_265:
      LOBYTE(v269[0]) = 0;
      v272 = 0;
    }
  }

  else
  {
    v317[0] = 0;
    LOBYTE(v319) = 0;
    std::__optional_move_base<WebCore::FixedContainerEdges,false>::__optional_move_base[abi:sn200100](v269, v317);
    v272 = 1;
    if (v319 == 1)
    {
      v70 = &v318[16];
      v71 = -64;
      do
      {
        v70 = (mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(v70, v69) - 16);
        v71 += 16;
      }

      while (v71);
    }
  }

  if ((v272 & 1) == 0)
  {
    v157 = *v10;
    v158 = *(v10 + 8);
    *v10 = 0;
    *(v10 + 8) = 0;
    v159 = *(v10 + 24);
    if (v159)
    {
      if (v158)
      {
        (*(*v159 + 16))(v159, v157);
      }
    }
  }

  v80 = IPC::Decoder::decode<unsigned long long>(v10);
  v251 = v81;
  v82 = v80;
  v83 = IPC::Decoder::decode<unsigned long long>(v10);
  v250 = v84;
  v85 = v83;
  v246 = IPC::Decoder::decode<unsigned long long>(v10);
  v248 = v86;
  v244 = IPC::Decoder::decode<unsigned long long>(v10);
  v245 = v87;
  v242 = IPC::Decoder::decode<unsigned long long>(v10);
  v243 = v88;
  v89 = *(v10 + 8);
  v90 = ((*(v10 + 16) + 7) & 0xFFFFFFFFFFFFFFF8);
  v91 = v90 - *v10;
  v16 = v89 >= v91;
  v92 = v89 - v91;
  if (v16 && v92 > 7)
  {
    *(v10 + 16) = v90 + 1;
    if (v90)
    {
      v240 = *v90;
      v241 = 1;
      goto LABEL_129;
    }
  }

  else
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    v167 = *(v10 + 24);
    if (v167)
    {
      if (v89)
      {
        (*(*v167 + 16))(v167);
        v89 = *(v10 + 8);
      }
    }

    else
    {
      v89 = 0;
    }
  }

  *v10 = 0;
  *(v10 + 8) = 0;
  v168 = *(v10 + 24);
  if (v168 && v89)
  {
    (*(*v168 + 16))(v168);
  }

  v241 = 0;
  v240 = 0;
LABEL_129:
  IPC::Decoder::decode<WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>>(&v298, v10);
  v93 = *(v10 + 8);
  v94 = ((*(v10 + 16) + 7) & 0xFFFFFFFFFFFFFFF8);
  v95 = v94 - *v10;
  v16 = v93 >= v95;
  v96 = v93 - v95;
  if (v16 && v96 > 7)
  {
    *(v10 + 16) = v94 + 1;
    if (v94)
    {
      v238 = *v94;
      v239 = 1;
      goto LABEL_134;
    }
  }

  else
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    v169 = *(v10 + 24);
    if (v169)
    {
      if (v93)
      {
        (*(*v169 + 16))(v169);
        v93 = *(v10 + 8);
      }
    }

    else
    {
      v93 = 0;
    }
  }

  *v10 = 0;
  *(v10 + 8) = 0;
  v170 = *(v10 + 24);
  if (v170 && v93)
  {
    (*(*v170 + 16))(v170);
  }

  v239 = 0;
  v238 = 0;
LABEL_134:
  v237 = IPC::Decoder::decode<WTF::OptionSet<WebCore::LayoutMilestone>>(v10);
  v97 = *(v10 + 8);
  v98 = *(v10 + 16);
  v99 = *v10;
  v266 = v7;
  v267 = v8;
  v260 = v4;
  v258 = v5;
  v255 = v6;
  v252 = v9;
  v253 = v11;
  v249 = v82;
  v247 = v85;
  if (v97 <= &v98[-*v10])
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    v176 = *(v10 + 24);
    if (v176)
    {
      if (v97)
      {
        (*(*v176 + 16))(v176);
        v97 = *(v10 + 8);
      }
    }

    else
    {
      v97 = 0;
    }
  }

  else
  {
    v100 = v98 + 1;
    *(v10 + 16) = v98 + 1;
    if (v98)
    {
      v101 = *v98;
      if (v101 < 2)
      {
        v102 = 1;
        goto LABEL_138;
      }

      goto LABEL_313;
    }
  }

  *v10 = 0;
  *(v10 + 8) = 0;
  v177 = *(v10 + 24);
  if (v177)
  {
    if (v97)
    {
      (*(*v177 + 16))(v177);
      v101 = 0;
      v99 = *v10;
      v97 = *(v10 + 8);
      goto LABEL_313;
    }
  }

  else
  {
    v97 = 0;
  }

  v99 = 0;
  v101 = 0;
LABEL_313:
  *v10 = 0;
  *(v10 + 8) = 0;
  v178 = *(v10 + 24);
  if (!v178 || !v97)
  {
    v235 = 0;
    v236 = 0;
    v179 = 0;
    v99 = 0;
LABEL_315:
    *v10 = 0;
    *(v10 + 8) = 0;
    v180 = *(v10 + 24);
    if (v180 && v179)
    {
      (*(*v180 + 16))(v180, v99, v179);
      v105 = 0;
      v99 = *v10;
      v97 = *(v10 + 8);
    }

    else
    {
      v97 = 0;
      v99 = 0;
      v105 = 0;
    }

    goto LABEL_317;
  }

  (*(*v178 + 16))(v178, v99);
  v102 = 0;
  v99 = *v10;
  v97 = *(v10 + 8);
  v100 = *(v10 + 16);
LABEL_138:
  v236 = v102;
  if (v101)
  {
    v103 = v102;
  }

  else
  {
    v103 = 0;
  }

  v235 = v103;
  if (v97 <= v100 - v99)
  {
    v179 = 0;
    v227 = *(v10 + 24);
    *v10 = 0;
    *(v10 + 8) = 0;
    if (v227 && v97)
    {
      (*(*v227 + 16))(v227);
      v99 = *v10;
      v179 = *(v10 + 8);
    }

    else
    {
      v99 = 0;
    }

    goto LABEL_315;
  }

  v104 = v100 + 1;
  *(v10 + 16) = v100 + 1;
  if (!v100)
  {
    v179 = v97;
    goto LABEL_315;
  }

  v105 = *v100;
  if (v105 < 2)
  {
    LOBYTE(v6) = 1;
    goto LABEL_145;
  }

LABEL_317:
  *v10 = 0;
  *(v10 + 8) = 0;
  v181 = *(v10 + 24);
  if (!v181 || !v97)
  {
    v234 = 0;
    LOBYTE(v6) = 0;
    v182 = 0;
    v99 = 0;
LABEL_319:
    *v10 = 0;
    *(v10 + 8) = 0;
    v183 = *(v10 + 24);
    if (v183 && v182)
    {
      (*(*v183 + 16))(v183, v99, v182);
      v108 = 0;
      v99 = *v10;
      v97 = *(v10 + 8);
    }

    else
    {
      v97 = 0;
      v99 = 0;
      v108 = 0;
    }

    goto LABEL_321;
  }

  (*(*v181 + 16))(v181, v99);
  LOBYTE(v6) = 0;
  v99 = *v10;
  v97 = *(v10 + 8);
  v104 = *(v10 + 16);
LABEL_145:
  if (v105)
  {
    v106 = v6;
  }

  else
  {
    v106 = 0;
  }

  v234 = v106;
  if (v97 <= v104 - v99)
  {
    v182 = 0;
    v228 = *(v10 + 24);
    *v10 = 0;
    *(v10 + 8) = 0;
    if (v228 && v97)
    {
      (*(*v228 + 16))(v228);
      v99 = *v10;
      v182 = *(v10 + 8);
    }

    else
    {
      v99 = 0;
    }

    goto LABEL_319;
  }

  v107 = v104 + 1;
  *(v10 + 16) = v104 + 1;
  if (!v104)
  {
    v182 = v97;
    goto LABEL_319;
  }

  v108 = *v104;
  if (v108 < 2)
  {
    LOBYTE(v8) = 1;
    goto LABEL_152;
  }

LABEL_321:
  *v10 = 0;
  *(v10 + 8) = 0;
  v184 = *(v10 + 24);
  if (!v184 || !v97)
  {
    v233 = 0;
    LOBYTE(v8) = 0;
    v185 = 0;
    v99 = 0;
LABEL_323:
    *v10 = 0;
    *(v10 + 8) = 0;
    v186 = *(v10 + 24);
    if (v186 && v185)
    {
      (*(*v186 + 16))(v186, v99, v185);
      v111 = 0;
      v99 = *v10;
      v97 = *(v10 + 8);
    }

    else
    {
      v97 = 0;
      v99 = 0;
      v111 = 0;
    }

    goto LABEL_325;
  }

  (*(*v184 + 16))(v184, v99);
  LOBYTE(v8) = 0;
  v99 = *v10;
  v97 = *(v10 + 8);
  v107 = *(v10 + 16);
LABEL_152:
  if (v108)
  {
    v109 = v8;
  }

  else
  {
    v109 = 0;
  }

  v233 = v109;
  if (v97 <= v107 - v99)
  {
    v185 = 0;
    v229 = *(v10 + 24);
    *v10 = 0;
    *(v10 + 8) = 0;
    if (v229 && v97)
    {
      (*(*v229 + 16))(v229);
      v99 = *v10;
      v185 = *(v10 + 8);
    }

    else
    {
      v99 = 0;
    }

    goto LABEL_323;
  }

  v110 = v107 + 1;
  *(v10 + 16) = v107 + 1;
  if (!v107)
  {
    v185 = v97;
    goto LABEL_323;
  }

  v111 = *v107;
  if (v111 < 2)
  {
    LOBYTE(v3) = 1;
    goto LABEL_159;
  }

LABEL_325:
  *v10 = 0;
  *(v10 + 8) = 0;
  v187 = *(v10 + 24);
  if (!v187 || !v97)
  {
    v232 = 0;
    LOBYTE(v3) = 0;
    v188 = 0;
    v99 = 0;
LABEL_327:
    *v10 = 0;
    *(v10 + 8) = 0;
    v189 = *(v10 + 24);
    if (v189 && v188)
    {
      (*(*v189 + 16))(v189, v99, v188);
      v114 = 0;
      v99 = *v10;
      v97 = *(v10 + 8);
    }

    else
    {
      v97 = 0;
      v99 = 0;
      v114 = 0;
    }

    goto LABEL_329;
  }

  (*(*v187 + 16))(v187, v99);
  LOBYTE(v3) = 0;
  v99 = *v10;
  v97 = *(v10 + 8);
  v110 = *(v10 + 16);
LABEL_159:
  if (v111)
  {
    v112 = v3;
  }

  else
  {
    v112 = 0;
  }

  v232 = v112;
  if (v97 <= v110 - v99)
  {
    v188 = 0;
    v230 = *(v10 + 24);
    *v10 = 0;
    *(v10 + 8) = 0;
    if (v230 && v97)
    {
      (*(*v230 + 16))(v230);
      v99 = *v10;
      v188 = *(v10 + 8);
    }

    else
    {
      v99 = 0;
    }

    goto LABEL_327;
  }

  v113 = v110 + 1;
  *(v10 + 16) = v110 + 1;
  if (!v110)
  {
    v188 = v97;
    goto LABEL_327;
  }

  v114 = *v110;
  if (v114 < 2)
  {
    LOBYTE(v11) = 1;
    goto LABEL_166;
  }

LABEL_329:
  *v10 = 0;
  *(v10 + 8) = 0;
  v190 = *(v10 + 24);
  if (!v190 || !v97)
  {
    LOBYTE(v7) = 0;
    LOBYTE(v11) = 0;
    v191 = 0;
    v99 = 0;
LABEL_331:
    *v10 = 0;
    *(v10 + 8) = 0;
    v192 = *(v10 + 24);
    if (v192 && v191)
    {
      (*(*v192 + 16))(v192, v99, v191);
      v115 = 0;
      v99 = *v10;
      v97 = *(v10 + 8);
    }

    else
    {
      v97 = 0;
      v99 = 0;
      v115 = 0;
    }

    goto LABEL_333;
  }

  (*(*v190 + 16))(v190, v99);
  LOBYTE(v11) = 0;
  v99 = *v10;
  v97 = *(v10 + 8);
  v113 = *(v10 + 16);
LABEL_166:
  if (v114)
  {
    LOBYTE(v7) = v11;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  if (v97 <= v113 - v99)
  {
    v191 = 0;
    v231 = *(v10 + 24);
    *v10 = 0;
    *(v10 + 8) = 0;
    if (v231 && v97)
    {
      (*(*v231 + 16))(v231);
      v99 = *v10;
      v191 = *(v10 + 8);
    }

    else
    {
      v99 = 0;
    }

    goto LABEL_331;
  }

  *(v10 + 16) = v113 + 1;
  if (!v113)
  {
    v191 = v97;
    goto LABEL_331;
  }

  v115 = *v113;
  if (v115 < 2)
  {
    LOBYTE(v9) = 1;
    goto LABEL_173;
  }

LABEL_333:
  *v10 = 0;
  *(v10 + 8) = 0;
  v193 = *(v10 + 24);
  if (!v193 || !v97)
  {
    v99 = 0;
    LOBYTE(i) = 0;
    LOBYTE(v9) = 0;
    v97 = 0;
LABEL_335:
    *v10 = 0;
    *(v10 + 8) = 0;
    v194 = *(v10 + 24);
    if (v194)
    {
      if (v97)
      {
        (*(*v194 + 16))(v194, v99);
        v99 = *v10;
        v97 = *(v10 + 8);
        goto LABEL_338;
      }
    }

    else
    {
      v97 = 0;
    }

    v99 = 0;
LABEL_338:
    *v10 = 0;
    *(v10 + 8) = 0;
    v195 = *(v10 + 24);
    if (v195)
    {
      if (v97)
      {
        (*(*v195 + 16))(v195, v99);
        v99 = *v10;
        v97 = *(v10 + 8);
        goto LABEL_341;
      }
    }

    else
    {
      v97 = 0;
    }

    v99 = 0;
LABEL_341:
    *v10 = 0;
    *(v10 + 8) = 0;
    v196 = *(v10 + 24);
    if (v196 && v97)
    {
      (*(*v196 + 16))(v196, v99);
    }

    goto LABEL_342;
  }

  (*(*v193 + 16))(v193, v99);
  LOBYTE(v9) = 0;
  v99 = *v10;
  v97 = *(v10 + 8);
LABEL_173:
  if (v115)
  {
    LOBYTE(i) = v9;
  }

  else
  {
    LOBYTE(i) = 0;
  }

  v116 = *(v10 + 16);
  if (v97 <= v116 - v99)
  {
    goto LABEL_335;
  }

  *(v10 + 16) = v116 + 1;
  if (!v116)
  {
    goto LABEL_338;
  }

  v117 = *v116;
  if (v117 >= 2)
  {
    goto LABEL_341;
  }

  if (!v117)
  {
    v317[0] = 0;
    v352 = 0;
    std::__optional_move_base<WebKit::EditorState,false>::__optional_move_base[abi:sn200100](&v357, v317);
    v376 = 1;
    if (v352 == 1)
    {
      goto LABEL_184;
    }

    goto LABEL_343;
  }

  IPC::Decoder::decode<WebKit::EditorState>(v10, v317);
  if (v352 != 1)
  {
LABEL_342:
    LOBYTE(v357) = 0;
    v376 = 0;
    goto LABEL_343;
  }

  std::optional<WebKit::EditorState>::optional[abi:sn200100]<WebKit::EditorState,0>(&v357, v317);
  v376 = 1;
  if (v352)
  {
LABEL_184:
    if (v351 == 1)
    {
      v119 = v349;
      if (v349)
      {
        v349 = 0;
        v350 = 0;
        WTF::fastFree(v119, v118);
      }

      v120 = v346;
      if (v346)
      {
        v346 = 0;
        v347 = 0;
        WTF::fastFree(v120, v118);
      }

      v121 = *(&v344 + 1);
      if (*(&v344 + 1))
      {
        *(&v344 + 1) = 0;
        LODWORD(v345) = 0;
        WTF::fastFree(v121, v118);
      }
    }

    if (v337[48] == 1)
    {
      if ((v327 & 0x8000000000000) != 0)
      {
        v164 = (v327 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v327 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v164);
          WTF::fastFree(v164, v118);
        }
      }

      v122 = v324;
      if (v324)
      {
        v324 = 0;
        LODWORD(v325) = 0;
        WTF::fastFree(v122, v118);
      }

      v123 = v321;
      v321 = 0;
      if (v123 && atomic_fetch_add_explicit(v123, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v123, v118);
      }

      v124 = v320;
      v320 = 0;
      if (v124 && atomic_fetch_add_explicit(v124, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v124, v118);
      }

      if ((*&v318[24] & 0x8000000000000) != 0)
      {
        v125 = (*&v318[24] & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((*&v318[24] & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v125);
          WTF::fastFree(v125, v118);
        }
      }
    }
  }

LABEL_343:
  if ((v376 & 1) == 0)
  {
    v218 = *v10;
    v219 = *(v10 + 8);
    *v10 = 0;
    *(v10 + 8) = 0;
    v220 = *(v10 + 24);
    if (v220)
    {
      if (v219)
      {
        (*(*v220 + 16))(v220, v218);
      }
    }
  }

  IPC::Decoder::decode<std::optional<unsigned long long>>(v10, &v314);
  v197 = IPC::Decoder::decode<WTF::Seconds>(v10);
  if (*v10)
  {
    v4 = v197;
    LOBYTE(v5) = v198;
    v20 = WebKit::RemoteLayerTreeTransaction::RemoteLayerTreeTransaction(v317);
    if ((v297 & 1) == 0)
    {
      goto LABEL_443;
    }

    *&v317[8] = v296;
    if ((v295 & 1) == 0)
    {
      goto LABEL_443;
    }

    v20 = WebKit::ChangedLayers::operator=(&v317[24], v294);
    if ((v267 & 1) == 0)
    {
      goto LABEL_443;
    }

    *&v318[8] = v266;
    if ((v293 & 1) == 0)
    {
      goto LABEL_443;
    }

    if (*&v318[28])
    {
      v224 = 112 * *&v318[28];
      v225 = *&v318[16] + 64;
      do
      {
        v225 = mpark::variant<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::NoAdditionalData,WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::CustomData,WTF::Ref<WebCore::Model,WTF::RawPtrTraits<WebCore::Model>,WTF::DefaultRefDerefTraits<WebCore::Model>>,WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>::~variant(v225, v21) + 112;
        v224 -= 112;
      }

      while (v224);
    }

    v20 = *&v318[16];
    v10 = a2;
    if (*&v318[16])
    {
      *&v318[16] = 0;
      *&v318[24] = 0;
      v20 = WTF::fastFree(v20, v21);
    }

    *&v318[16] = v291;
    v199 = v292;
    v291 = 0;
    v292 = 0;
    *&v318[24] = v199;
    if ((v290 & 1) == 0)
    {
      goto LABEL_443;
    }

    v20 = v319;
    if (v319)
    {
      goto LABEL_444;
    }

    while (1)
    {
      v319 = v288;
      v200 = v289;
      v288 = 0;
      v289 = 0;
      v320 = v200;
      if (v287)
      {
        v20 = v321;
        if (v321)
        {
          v321 = 0;
          LODWORD(v322) = 0;
          v20 = WTF::fastFree(v20, v21);
        }

        v321 = v285;
        v201 = v286;
        v285 = 0;
        v286 = 0;
        v322 = v201;
        if (v284)
        {
          v20 = v323;
          if (v323)
          {
            v323 = 0;
            LODWORD(v324) = 0;
            v20 = WTF::fastFree(v20, v21);
          }

          v323 = v282;
          v202 = v283;
          v282 = 0;
          v283 = 0;
          v324 = v202;
          if (v281)
          {
            v20 = v325;
            if (v325)
            {
              v325 = 0;
              LODWORD(v326) = 0;
              v20 = WTF::fastFree(v20, v21);
            }

            v325 = v279;
            v203 = v280;
            v279 = 0;
            v280 = 0;
            v326 = v203;
            if (v265)
            {
              v327 = v260;
              if (v264)
              {
                v328 = v258;
                if (v263)
                {
                  v329 = v255;
                  if (v262)
                  {
                    v330 = v253;
                    if (v261)
                    {
                      v331 = v252;
                      if (v259)
                      {
                        v332 = v257;
                        if (v256)
                        {
                          v333 = v254;
                          if (v278)
                          {
                            if ((v334 & 0x8000000000000) != 0)
                            {
                              v20 = (v334 & 0xFFFFFFFFFFFFLL);
                              if (atomic_fetch_add((v334 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
                              {
                                atomic_store(1u, v20);
                                v20 = WTF::fastFree(v20, v21);
                              }
                            }

                            v204 = v277;
                            v277 = 0;
                            v334 = v204;
                            if (v276)
                            {
                              if ((v335 & 0x8000000000000) != 0)
                              {
                                v20 = (v335 & 0xFFFFFFFFFFFFLL);
                                if (atomic_fetch_add((v335 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
                                {
                                  atomic_store(1u, v20);
                                  v20 = WTF::fastFree(v20, v21);
                                }
                              }

                              v205 = v275;
                              v275 = 0;
                              v335 = v205;
                              if (v274)
                              {
                                if ((v336 & 0x8000000000000) != 0)
                                {
                                  v20 = (v336 & 0xFFFFFFFFFFFFLL);
                                  if (atomic_fetch_add((v336 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
                                  {
                                    atomic_store(1u, v20);
                                    v20 = WTF::fastFree(v20, v21);
                                  }
                                }

                                v206 = v273;
                                v273 = 0;
                                v336 = v206;
                                if (v272)
                                {
                                  v20 = std::__optional_storage_base<WebCore::FixedContainerEdges,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::FixedContainerEdges,false>>(v337, v269);
                                  if (v251)
                                  {
                                    v338 = v249;
                                    if (v250)
                                    {
                                      v339 = v247;
                                      if (v248)
                                      {
                                        v340 = v246;
                                        if (v245)
                                        {
                                          v341 = v244;
                                          if (v243)
                                          {
                                            v342 = v242;
                                            if (v241)
                                            {
                                              v343 = v240;
                                              if (v299)
                                              {
                                                v344 = v298;
                                                if (v239)
                                                {
                                                  v345 = v238;
                                                  if ((v237 & 0x10000) != 0)
                                                  {
                                                    LOWORD(v346) = v237;
                                                    if (v236)
                                                    {
                                                      BYTE2(v346) = v235;
                                                      if (v6)
                                                      {
                                                        BYTE3(v346) = v234;
                                                        if (v8)
                                                        {
                                                          BYTE4(v346) = v233;
                                                          if (v3)
                                                          {
                                                            BYTE5(v346) = v232;
                                                            if (v11)
                                                            {
                                                              BYTE6(v346) = v7;
                                                              if (v9)
                                                              {
                                                                HIBYTE(v346) = i;
                                                                if (v376)
                                                                {
                                                                  std::__optional_storage_base<WebKit::EditorState,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::EditorState,false>>(&v348, &v357);
                                                                  if (v316)
                                                                  {
                                                                    v354 = v314;
                                                                    v355 = v315;
                                                                    if (v5)
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
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_443:
      __break(1u);
LABEL_444:
      v319 = 0;
      LODWORD(v320) = 0;
      v20 = WTF::fastFree(v20, v21);
    }

    v356 = v4;
    WebKit::RemoteLayerTreeTransaction::RemoteLayerTreeTransaction(v10, v317);
    *(v10 + 960) = 1;
    WebKit::RemoteLayerTreeTransaction::~RemoteLayerTreeTransaction(v317, v207);
  }

  else
  {
    *a2 = 0;
    a2[960] = 0;
  }

  if (v376 == 1 && v375 == 1)
  {
    if (v374 == 1)
    {
      v209 = v372;
      if (v372)
      {
        v372 = 0;
        v373 = 0;
        WTF::fastFree(v209, v198);
      }

      v210 = v370;
      if (v370)
      {
        v370 = 0;
        v371 = 0;
        WTF::fastFree(v210, v198);
      }

      v211 = v368;
      if (v368)
      {
        v368 = 0;
        v369 = 0;
        WTF::fastFree(v211, v198);
      }
    }

    if (v367 == 1)
    {
      if ((v366 & 0x8000000000000) != 0)
      {
        v226 = (v366 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v366 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v226);
          WTF::fastFree(v226, v198);
        }
      }

      v212 = v364;
      if (v364)
      {
        v364 = 0;
        v365 = 0;
        WTF::fastFree(v212, v198);
      }

      v213 = v363;
      v363 = 0;
      if (v213 && atomic_fetch_add_explicit(v213, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v213, v198);
      }

      v214 = v362;
      v362 = 0;
      if (v214 && atomic_fetch_add_explicit(v214, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v214, v198);
      }

      if ((v360 & 0x8000000000000) != 0)
      {
        v215 = (v360 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v360 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v215);
          WTF::fastFree(v215, v198);
        }
      }
    }
  }

  if (v272 == 1 && v271 == 1)
  {
    v216 = &v270;
    v217 = -64;
    do
    {
      v216 = (mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(v216, v198) - 16);
      v217 += 16;
    }

    while (v217);
  }

  if (v274 == 1 && (v273 & 0x8000000000000) != 0)
  {
    v221 = (v273 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v273 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v221);
      WTF::fastFree(v221, v198);
    }
  }

  if (v276 == 1 && (v275 & 0x8000000000000) != 0)
  {
    v222 = (v275 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v275 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v222);
      WTF::fastFree(v222, v198);
    }
  }

  if (v278 == 1 && (v277 & 0x8000000000000) != 0)
  {
    v223 = (v277 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v277 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v223);
      WTF::fastFree(v223, v198);
    }
  }

  if (v281 == 1)
  {
    v208 = v279;
    if (v279)
    {
      v279 = 0;
      LODWORD(v280) = 0;
      WTF::fastFree(v208, v198);
    }
  }

  if (v284 == 1 && v282)
  {
    WTF::fastFree(v282, v198);
  }

  if (v287 == 1 && v285)
  {
    WTF::fastFree(v285, v198);
  }

  if (v290 == 1 && v288)
  {
    WTF::fastFree(v288, v198);
  }

  if (v293 == 1)
  {
    WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v291, v198);
  }

  if (v295 == 1)
  {
    WebKit::ChangedLayers::~ChangedLayers(v294, v198);
  }
}

void sub_19D792C58(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, int a53, char a54, uint64_t a55, char a56, uint64_t a57, char a58, uint64_t a59, char a60, WTF *a61, int a62, int a63)
{
  if (a54 == 1 && a52 == 1)
  {
    v75 = &a50;
    v76 = -64;
    do
    {
      v75 = (mpark::detail::move_constructor<mpark::detail::traits<WebCore::PredominantColorType,WebCore::Color>,(mpark::detail::Trait)1>::~move_constructor(v75, a2) - 16);
      v76 += 16;
    }

    while (v76);
  }

  if (a56 == 1 && (a55 & 0x8000000000000) != 0)
  {
    v79 = (a55 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a55 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v79);
      WTF::fastFree(v79, a2);
    }
  }

  if (a58 == 1 && (a57 & 0x8000000000000) != 0)
  {
    v78 = (a57 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a57 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v78);
      WTF::fastFree(v78, a2);
    }
  }

  if (a60 == 1 && (a59 & 0x8000000000000) != 0)
  {
    v77 = (a59 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a59 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v77);
      WTF::fastFree(v77, a2);
    }
  }

  if (a64 == 1)
  {
    v74 = a61;
    if (a61)
    {
      a61 = 0;
      a62 = 0;
      WTF::fastFree(v74, a2);
    }
  }

  if (a67 == 1 && a65)
  {
    WTF::fastFree(a65, a2);
  }

  if (a70 == 1 && a68)
  {
    WTF::fastFree(a68, a2);
  }

  if (a72 == 1 && a71)
  {
    WTF::fastFree(a71, a2);
  }

  if (LOBYTE(STACK[0x208]) == 1)
  {
    WTF::Vector<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a73, a2);
  }

  if (LOBYTE(STACK[0x220]) == 1)
  {
    WebKit::ChangedLayers::~ChangedLayers(&STACK[0x210], a2);
  }

  _Unwind_Resume(a1);
}

void *IPC::Decoder::decode<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>(void *result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v9 = *(a2 + 3);
    if (v9)
    {
      if (v6)
      {
        (*(*v9 + 16))(v9);
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
    v10 = *(a2 + 3);
    if (v10)
    {
      if (v6)
      {
        (*(*v10 + 16))(v10, v5);
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
    v11 = *(a2 + 3);
    if (v11 && v6)
    {
      (*(*v11 + 16))(v11, v5);
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
    *result = 0;
    result[1] = 0;
    v8 = 1;
LABEL_8:
    *(v3 + 16) = v8;
    return result;
  }

  result = IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v14);
  v8 = v15;
  if (v15 == 1)
  {
    *v3 = v14;
    goto LABEL_8;
  }

LABEL_17:
  *v3 = 0;
  *(v3 + 16) = 0;
  v12 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v12)
  {
    v13 = *(*result + 16);

    return v13();
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteLayerTreeTransaction::LayerCreationProperties::VideoElementData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 20));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  v4 = *(a2 + 28);

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::LayerProperties::AnimationChanges,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::VectorArgumentCoder<false,std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
  IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 24);

  return IPC::ArgumentCoder<WebCore::AcceleratedEffectValues,void>::encode(a1, a2 + 40);
}

uint64_t IPC::ArgumentCoder<WebKit::LayerProperties,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  v5 = *a2;
  if (*a2)
  {
    result = IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
    v5 = *a2;
  }

  if ((v5 & 2) != 0)
  {
    result = IPC::ArgumentCoder<std::unique_ptr<WebCore::TransformationMatrix>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::TransformationMatrix> const&>(a1, (a2 + 24));
    v5 = *a2;
  }

  if ((v5 & 4) != 0)
  {
    result = IPC::ArgumentCoder<std::unique_ptr<WebCore::TransformationMatrix>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::TransformationMatrix> const&>(a1, (a2 + 32));
    v5 = *a2;
  }

  if ((v5 & 8) != 0)
  {
    result = IPC::ArgumentCoder<std::unique_ptr<WebCore::FloatRoundedRect>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::FloatRoundedRect> const&>(a1, (a2 + 40));
    v5 = *a2;
  }

  if ((v5 & 0x10) != 0)
  {
    result = IPC::VectorArgumentCoder<false,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 48);
    v5 = *a2;
  }

  if ((v5 & 0x20) != 0)
  {
    result = IPC::ArgumentCoder<WebKit::LayerProperties::AnimationChanges,void>::encode(a1, a2 + 64);
    v5 = *a2;
  }

  if ((v5 & 0x40) != 0)
  {
    result = IPC::ArgumentCoder<WebCore::FloatPoint3D,void>::encode(a1, (a2 + 352));
    v5 = *a2;
  }

  if ((v5 & 0x80) != 0)
  {
    result = IPC::ArgumentCoder<WebCore::FloatPoint3D,void>::encode(a1, (a2 + 364));
    v5 = *a2;
  }

  if ((v5 & 0x100) != 0)
  {
    result = IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 376));
    v5 = *a2;
  }

  if ((v5 & 0x200) != 0)
  {
    result = IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 392));
    v5 = *a2;
  }

  if ((v5 & 0x400) != 0)
  {
    result = IPC::ArgumentCoder<WebKit::RemoteLayerBackingStoreOrProperties,void>::encode(a1, (a2 + 408));
    v5 = *a2;
  }

  if ((v5 & 0x800) != 0)
  {
    if (*(a2 + 424))
    {
      v14 = 1;
      v7 = IPC::Encoder::operator<<<BOOL>(a1, &v14);
      result = IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v7, *(a2 + 424));
    }

    else
    {
      v13 = 0;
      result = IPC::Encoder::operator<<<BOOL>(a1, &v13);
    }

    v5 = *a2;
  }

  if ((v5 & 0x1000) != 0)
  {
    result = IPC::ArgumentCoder<WebCore::Path,void>::encode(a1, (a2 + 432));
    v5 = *a2;
  }

  if ((v5 & 0x2000) != 0)
  {
    result = IPC::ArgumentCoder<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,void>::encode<IPC::Encoder,WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> const&>(a1, (a2 + 496));
    v5 = *a2;
  }

  if ((v5 & 0x4000) != 0)
  {
    result = IPC::ArgumentCoder<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,void>::encode<IPC::Encoder,WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> const&>(a1, (a2 + 512));
    v5 = *a2;
  }

  if ((v5 & 0x8000) != 0)
  {
    result = IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 528));
    v5 = *a2;
  }

  if ((v5 & 0x10000) != 0)
  {
    result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 536));
    v5 = *a2;
  }

  if ((v5 & 0x20000) != 0)
  {
    result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 540));
    v5 = *a2;
  }

  if ((v5 & 0x40000) != 0)
  {
    result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 544));
    v5 = *a2;
  }

  if ((v5 & 0x80000) != 0)
  {
    result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 548));
    v5 = *a2;
  }

  if ((v5 & 0x100000) != 0)
  {
    result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 552));
    v5 = *a2;
  }

  if ((v5 & 0x200000) != 0)
  {
    result = IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 560));
    v5 = *a2;
  }

  if ((v5 & 0x400000) != 0)
  {
    result = IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 568));
    v5 = *a2;
  }

  if ((v5 & 0x800000) != 0)
  {
    v11 = *(a2 + 576);
    result = IPC::Encoder::operator<<<BOOL>(a1, &v11);
    v5 = *a2;
  }

  if ((v5 & 0x1000000) != 0)
  {
    result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 577));
    v5 = *a2;
  }

  if ((v5 & 0x2000000) != 0)
  {
    result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 578));
    v5 = *a2;
  }

  if ((v5 & 0x4000000) != 0)
  {
    result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 579));
    v5 = *a2;
  }

  if ((v5 & 0x8000000) != 0)
  {
    v12 = *(a2 + 580);
    result = IPC::Encoder::operator<<<BOOL>(a1, &v12);
    v5 = *a2;
  }

  if ((v5 & 0x10000000) != 0)
  {
    result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 581));
    v5 = *a2;
  }

  if ((v5 & 0x20000000) != 0)
  {
    result = IPC::Encoder::operator<<<BOOL>(a1, (a2 + 582));
    v5 = *a2;
  }

  if ((v5 & 0x40000000) != 0)
  {
    result = IPC::Encoder::operator<<<BOOL>(a1, (a2 + 583));
    v5 = *a2;
  }

  if ((v5 & 0x80000000) != 0)
  {
    result = IPC::Encoder::operator<<<BOOL>(a1, (a2 + 584));
    v5 = *a2;
  }

  if ((v5 & 0x100000000) != 0)
  {
    result = IPC::Encoder::operator<<<BOOL>(a1, (a2 + 585));
    v5 = *a2;
  }

  if ((v5 & 0x200000000) != 0)
  {
    result = IPC::Encoder::operator<<<BOOL>(a1, (a2 + 586));
    v5 = *a2;
  }

  if ((v5 & 0x400000000) != 0)
  {
    result = IPC::Encoder::operator<<<BOOL>(a1, (a2 + 587));
    v5 = *a2;
  }

  if ((v5 & 0x800000000) != 0)
  {
    result = IPC::Encoder::operator<<<BOOL>(a1, (a2 + 589));
    v5 = *a2;
  }

  if ((v5 & 0x1000000000) != 0)
  {
    result = IPC::Encoder::operator<<<BOOL>(a1, (a2 + 590));
    v5 = *a2;
  }

  if ((v5 & 0x2000000000) != 0)
  {
    result = IPC::Encoder::operator<<<BOOL>(a1, (a2 + 591));
    v5 = *a2;
  }

  if ((v5 & 0x4000000000) != 0)
  {
    result = IPC::Encoder::operator<<<BOOL>(a1, (a2 + 592));
    v5 = *a2;
  }

  if ((v5 & 0x8000000000) != 0)
  {
    result = IPC::Encoder::operator<<<BOOL>(a1, (a2 + 593));
    v5 = *a2;
  }

  if ((v5 & 0x10000000000) != 0)
  {
    IPC::ArgumentCoder<WebCore::Region,void>::encode(a1, a2 + 600);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 636));
    v6 = *(a2 + 636);
    if (v6)
    {
      v8 = *(a2 + 624);
      v9 = 24 * v6;
      do
      {
        IPC::ArgumentCoder<WebCore::Region,void>::encode(a1, v8);
        v8 += 24;
        v9 -= 24;
      }

      while (v9);
    }

    IPC::ArgumentCoder<WebCore::Region,void>::encode(a1, a2 + 640);
    IPC::ArgumentCoder<WebCore::Region,void>::encode(a1, a2 + 664);
    if (*(a2 + 712))
    {
      v15 = 1;
      IPC::Encoder::operator<<<BOOL>(a1, &v15);
      if ((*(a2 + 712) & 1) == 0)
      {
        v10 = std::__throw_bad_optional_access[abi:sn200100]();
        return IPC::ArgumentCoder<WebKit::LayerProperties,void>::decode(v10);
      }

      result = IPC::ArgumentCoder<WebCore::Region,void>::encode(a1, a2 + 688);
    }

    else
    {
      v16 = 0;
      result = IPC::Encoder::operator<<<BOOL>(a1, &v16);
    }

    v5 = *a2;
  }

  if ((v5 & 0x20000000000) != 0)
  {
    return IPC::ArgumentCoder<WebCore::AppleVisualEffectData,void>::encode(a1, a2 + 724);
  }

  return result;
}

void IPC::ArgumentCoder<WebKit::LayerProperties,void>::decode(_BYTE *a1, IPC::Decoder *a2)
{
  v465 = *MEMORY[0x1E69E9840];
  WebKit::LayerProperties::LayerProperties(v396);
  v4 = *(a2 + 1);
  v5 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a2;
  v7 = v5 - *a2;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (!v8 || v9 <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v238 = *(a2 + 3);
    if (v238)
    {
      if (v4)
      {
        (*(*v238 + 16))(v238);
        v4 = *(a2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_427;
  }

  *(a2 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_427:
    *a2 = 0;
    *(a2 + 1) = 0;
    v239 = *(a2 + 3);
    if (v239)
    {
      if (v4)
      {
        (*(*v239 + 16))(v239);
        v4 = *(a2 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_429;
  }

  v11 = *v5;
  if (*v5 >> 42)
  {
LABEL_429:
    *a2 = 0;
    *(a2 + 1) = 0;
    v240 = *(a2 + 3);
    if (v240 && v4)
    {
      (*(*v240 + 16))(v240);
    }

    goto LABEL_430;
  }

  v396[0] = *v5;
  if (v11)
  {
    IPC::Decoder::decode<WTF::String>(a2, v379);
    v12 = v379[8];
    if (v379[8] == 1)
    {
      v13 = *v379;
      *v379 = 0;
      v14 = v397;
      v397 = v13;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v6);
      }
    }

    else
    {
      *a1 = 0;
      a1[784] = 0;
    }

    if (v379[8] == 1 && (v15 = *v379, *v379 = 0, v15) && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v6);
      if (!v12)
      {
        goto LABEL_431;
      }
    }

    else if (!v12)
    {
      goto LABEL_431;
    }
  }

  if ((v11 & 2) == 0)
  {
    goto LABEL_21;
  }

  IPC::Decoder::decode<std::unique_ptr<WebCore::TransformationMatrix>>(v379, a2);
  if (v379[8] != 1)
  {
    goto LABEL_430;
  }

  v16 = v398;
  v398 = *v379;
  if (v16)
  {
    bmalloc::api::tzoneFree(v16, v6);
    if ((v11 & 4) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
    if ((v11 & 4) == 0)
    {
      goto LABEL_25;
    }
  }

  IPC::Decoder::decode<std::unique_ptr<WebCore::TransformationMatrix>>(v379, a2);
  if (v379[8] != 1)
  {
    goto LABEL_430;
  }

  v17 = v399;
  v399 = *v379;
  if (v17)
  {
    bmalloc::api::tzoneFree(v17, v6);
  }

LABEL_25:
  if ((v11 & 8) == 0)
  {
    goto LABEL_34;
  }

  v18 = *(a2 + 1);
  v19 = *(a2 + 2);
  v6 = *a2;
  if (v18 <= &v19[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v259 = *(a2 + 3);
    if (v259)
    {
      if (v18)
      {
        (*(*v259 + 16))(v259);
        v18 = *(a2 + 1);
      }
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_463;
  }

  *(a2 + 2) = v19 + 1;
  if (!v19)
  {
LABEL_463:
    *a2 = 0;
    *(a2 + 1) = 0;
    v260 = *(a2 + 3);
    if (v260)
    {
      if (v18)
      {
        (*(*v260 + 16))(v260);
        v6 = *a2;
        v18 = *(a2 + 1);
        goto LABEL_466;
      }
    }

    else
    {
      v18 = 0;
    }

    v6 = 0;
LABEL_466:
    *a2 = 0;
    *(a2 + 1) = 0;
    v234 = *(a2 + 3);
    if (v234 && v18)
    {
LABEL_468:
      (*(*v234 + 16))(v234, v6);
    }

LABEL_422:
    v235 = *a2;
    v236 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v237 = *(a2 + 3);
    if (v237 && v236)
    {
      (*(*v237 + 16))(v237, v235);
    }

    goto LABEL_430;
  }

  v20 = *v19;
  if (v20 >= 2)
  {
    goto LABEL_466;
  }

  if (v20)
  {
    IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::decode(a2, v379);
    if (v380)
    {
      v22 = WebCore::FloatRoundedRect::operator new(0x30, v21);
      *v22 = *v379;
      *(v22 + 1) = *&v379[16];
      *(v22 + 2) = *&v379[32];
      goto LABEL_33;
    }

    v6 = *a2;
    v233 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v234 = *(a2 + 3);
    if (v234 && v233)
    {
      goto LABEL_468;
    }

    goto LABEL_422;
  }

  v22 = 0;
LABEL_33:
  v23 = v400;
  v400 = v22;
  if (v23)
  {
    bmalloc::api::tzoneFree(v23, v6);
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

LABEL_34:
  if ((v11 & 0x10) == 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  IPC::Decoder::decode<WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v379, a2);
  if (v379[16] != 1)
  {
    goto LABEL_430;
  }

  v24 = v401;
  if (v401)
  {
    v401 = 0;
    LODWORD(v402) = 0;
    WTF::fastFree(v24, v6);
  }

  v401 = *v379;
  v402 = *&v379[8];
LABEL_39:
  if ((v11 & 0x20) == 0)
  {
    goto LABEL_149;
  }

  v25 = *(a2 + 1);
  v26 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v27 = *a2;
  v28 = v26 - *a2;
  v8 = v25 >= v28;
  v29 = v25 - v28;
  if (!v8 || v29 <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v252 = *(a2 + 3);
    if (v252)
    {
      if (v25)
      {
        (*(*v252 + 16))(v252);
        v25 = *(a2 + 1);
      }
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_453;
  }

  *(a2 + 2) = v26 + 1;
  if (!v26)
  {
LABEL_453:
    *a2 = 0;
    *(a2 + 1) = 0;
    v253 = *(a2 + 3);
    if (v253 && v25)
    {
      (*(*v253 + 16))(v253);
    }

    LOBYTE(v375) = 0;
    v377 = 0;
    goto LABEL_64;
  }

  v30 = *v26;
  v356 = 0;
  v357 = 0;
  if (v30 >= 0x1C71)
  {
    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>(&v460, a2);
      if ((v464 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v357) == v357)
      {
        WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>(&v356, &v460);
      }

      else
      {
        std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>::pair[abi:sn200100]((v356 + 144 * HIDWORD(v357)), &v460);
        ++HIDWORD(v357);
      }

      std::optional<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>::~optional(&v460, v34);
      if (!--v30)
      {
        WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v356, HIDWORD(v357));
        goto LABEL_52;
      }
    }
  }

  else
  {
    if (!v30)
    {
LABEL_52:
      v375 = v356;
      v33 = v357;
      v356 = 0;
      v357 = 0;
      v376 = v33;
      v377 = 1;
      WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v356, v27);
      goto LABEL_65;
    }

    LODWORD(v357) = 144 * v30 / 0x90u;
    v356 = WTF::fastMalloc((144 * v30));
    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>(&v460, a2);
      if ((v464 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v357) == v357)
      {
        WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>(&v356, &v460);
      }

      else
      {
        std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>::pair[abi:sn200100]((v356 + 144 * HIDWORD(v357)), &v460);
        ++HIDWORD(v357);
      }

      std::optional<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>::~optional(&v460, v32);
      if (!--v30)
      {
        goto LABEL_52;
      }
    }
  }

  LOBYTE(v375) = 0;
  v377 = 0;
  std::optional<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>>::~optional(&v460, v31);
  WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v356, v35);
LABEL_64:
  v36 = *a2;
  v37 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v38 = *(a2 + 3);
  if (v38 && v37)
  {
    (*(*v38 + 16))(v38, v36);
  }

LABEL_65:
  IPC::Decoder::decode<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v365, a2);
  v39 = *(a2 + 1);
  v40 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v41 = *a2;
  v42 = v40 - *a2;
  v8 = v39 >= v42;
  v43 = v39 - v42;
  if (!v8 || v43 <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v254 = *(a2 + 3);
    if (v254)
    {
      if (v39)
      {
        (*(*v254 + 16))(v254);
        v39 = *(a2 + 1);
      }
    }

    else
    {
      v39 = 0;
    }

LABEL_457:
    *a2 = 0;
    *(a2 + 1) = 0;
    v255 = *(a2 + 3);
    if (v255 && v39)
    {
      (*(*v255 + 16))(v255);
    }

    LOBYTE(v368) = 0;
    v370 = 0;
LABEL_97:
    v63 = *a2;
    v64 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v65 = *(a2 + 3);
    if (v65 && v64)
    {
      (*(*v65 + 16))(v65, v63);
    }

    goto LABEL_103;
  }

  *(a2 + 2) = v40 + 1;
  if (!v40)
  {
    goto LABEL_457;
  }

  v45 = *v40;
  v460 = 0uLL;
  if (v45 >= 0x20000)
  {
    while (1)
    {
      IPC::Decoder::decode<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>>(&v356, a2);
      if ((v357 & 1) == 0)
      {
LABEL_96:
        LOBYTE(v368) = 0;
        v370 = 0;
        WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v460, v41);
        goto LABEL_97;
      }

      v55 = HIDWORD(v460);
      if (HIDWORD(v460) != DWORD2(v460))
      {
        break;
      }

      v56 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v460, HIDWORD(v460) + 1, &v356);
      v57 = HIDWORD(v460);
      v58 = HIDWORD(v460) + 1;
      v59 = v460;
      v60 = *v56;
      *v56 = 0;
      *(v59 + 8 * v57) = v60;
      HIDWORD(v460) = v58;
      if (v357)
      {
        goto LABEL_89;
      }

LABEL_92:
      if (!--v45)
      {
        WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v460, HIDWORD(v460));
        goto LABEL_102;
      }
    }

    v61 = v356;
    v356 = 0;
    *(v460 + 8 * HIDWORD(v460)) = v61;
    HIDWORD(v460) = v55 + 1;
LABEL_89:
    v62 = v356;
    v356 = 0;
    if (v62)
    {
      if (v62[4] == 1)
      {
        (*(*v62 + 56))(v62);
      }

      else
      {
        --v62[4];
      }
    }

    goto LABEL_92;
  }

  if (v45)
  {
    v46 = WTF::fastMalloc((8 * v45));
    DWORD2(v460) = v45;
    *&v460 = v46;
    while (1)
    {
      IPC::Decoder::decode<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>>(&v356, a2);
      if ((v357 & 1) == 0)
      {
        goto LABEL_96;
      }

      v47 = HIDWORD(v460);
      if (HIDWORD(v460) != DWORD2(v460))
      {
        break;
      }

      v48 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v460, HIDWORD(v460) + 1, &v356);
      v49 = HIDWORD(v460);
      v50 = HIDWORD(v460) + 1;
      v51 = v460;
      v52 = *v48;
      *v48 = 0;
      *(v51 + 8 * v49) = v52;
      HIDWORD(v460) = v50;
      if (v357)
      {
        goto LABEL_79;
      }

LABEL_82:
      if (!--v45)
      {
        goto LABEL_102;
      }
    }

    v53 = v356;
    v356 = 0;
    *(v460 + 8 * HIDWORD(v460)) = v53;
    HIDWORD(v460) = v47 + 1;
LABEL_79:
    v54 = v356;
    v356 = 0;
    if (v54)
    {
      if (v54[4] == 1)
      {
        (*(*v54 + 56))(v54);
      }

      else
      {
        --v54[4];
      }
    }

    goto LABEL_82;
  }

LABEL_102:
  v66 = *(&v460 + 1);
  v368 = v460;
  v460 = 0uLL;
  v369 = v66;
  v370 = 1;
  WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v460, v41);
LABEL_103:
  IPC::Decoder::decode<WebCore::AcceleratedEffectValues>(&v356, a2);
  if (*a2)
  {
    if ((v377 & 1) == 0)
    {
      goto LABEL_705;
    }

    *&v460 = v375;
    v68 = v376;
    v375 = 0;
    v376 = 0;
    *(&v460 + 1) = v68;
    if ((v366 & 1) == 0)
    {
      goto LABEL_705;
    }

    v69 = v365;
    v365 = 0;
    *v461 = v69;
    if ((v370 & 1) == 0)
    {
      goto LABEL_705;
    }

    *&v461[8] = v368;
    v70 = v369;
    v368 = 0;
    v369 = 0;
    *&v461[16] = v70;
    if ((v360 & 1) == 0)
    {
      goto LABEL_705;
    }

    WebCore::AcceleratedEffectValues::AcceleratedEffectValues(&v461[24], &v356);
    WebKit::LayerProperties::AnimationChanges::AnimationChanges(v379, &v460);
    v395 = 1;
    WebCore::AcceleratedEffectValues::~AcceleratedEffectValues(&v461[24], v71);
    WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v461[8], v72);
    if (*v461)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v461, v73);
    }

    WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v460, v73);
  }

  else
  {
    v379[0] = 0;
    v395 = 0;
  }

  if (v360 == 1)
  {
    WebCore::AcceleratedEffectValues::~AcceleratedEffectValues(&v356, v67);
  }

  if (v370 == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v368, v67);
  }

  if (v366 == 1 && v365)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v365, v67);
  }

  if (v377 == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v375, v67);
  }

  if ((v395 & 1) == 0)
  {
    v216 = *a2;
    v217 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v218 = *(a2 + 3);
    if (!v218)
    {
      goto LABEL_430;
    }

    if (!v217)
    {
      goto LABEL_430;
    }

    (*(*v218 + 16))(v218, v216);
    if ((v395 & 1) == 0)
    {
      goto LABEL_430;
    }
  }

  if (HIDWORD(v404))
  {
    v74 = 144 * HIDWORD(v404);
    v75 = v403 + 128;
    do
    {
      WTF::Vector<WebKit::PlatformCAAnimationRemoteProperties,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v75, v67);
      WTF::Vector<WTF::Ref<WebCore::TimingFunction,WTF::RawPtrTraits<WebCore::TimingFunction>,WTF::DefaultRefDerefTraits<WebCore::TimingFunction>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v75 - 16), v76);
      v78 = *(v75 - 4);
      if (v78)
      {
        *(v75 - 4) = 0;
        *(v75 - 6) = 0;
        WTF::fastFree(v78, v77);
      }

      WTF::Vector<mpark::variant<float,WebCore::Color,WebCore::FloatPoint3D,WebCore::TransformationMatrix,WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v75 - 48), v77);
      v79 = *(v75 - 8);
      *(v75 - 8) = 0;
      if (v79)
      {
        if (v79[2] == 1)
        {
          (*(*v79 + 16))(v79);
        }

        else
        {
          --v79[2];
        }
      }

      v80 = *(v75 - 15);
      *(v75 - 15) = 0;
      if (v80 && atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v80, v67);
      }

      v81 = *(v75 - 16);
      *(v75 - 16) = 0;
      if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v81, v67);
      }

      v75 += 144;
      v74 -= 144;
    }

    while (v74);
  }

  v82 = v403;
  if (v403)
  {
    v403 = 0;
    LODWORD(v404) = 0;
    WTF::fastFree(v82, v67);
  }

  v403 = *v379;
  v83 = *&v379[8];
  memset(v379, 0, 24);
  v404 = v83;
  v84 = v405;
  v405 = *&v379[16];
  if (v84)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v84, v67);
  }

  if (HIDWORD(v407))
  {
    WTF::VectorDestructor<true,WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>>::destruct(v406, v406 + HIDWORD(v407));
  }

  v85 = v406;
  if (v406)
  {
    v406 = 0;
    LODWORD(v407) = 0;
    WTF::fastFree(v85, v67);
  }

  v406 = *&v379[24];
  v86 = *&v379[32];
  *&v379[24] = 0;
  *&v379[32] = 0;
  v407 = v86;
  WebCore::AcceleratedEffectValues::operator=(v408, &v379[40]);
  if (v395)
  {
    WebCore::AcceleratedEffectValues::~AcceleratedEffectValues(&v379[40], v6);
    WTF::Vector<WTF::Ref<WebCore::AcceleratedEffect,WTF::RawPtrTraits<WebCore::AcceleratedEffect>,WTF::DefaultRefDerefTraits<WebCore::AcceleratedEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v379[24], v87);
    if (*&v379[16])
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*&v379[16], v88);
    }

    WTF::Vector<std::pair<WTF::String,WebKit::PlatformCAAnimationRemoteProperties>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v379, v88);
  }

LABEL_149:
  if ((v11 & 0x40) != 0)
  {
    v89 = IPC::Decoder::decode<WebCore::FloatPoint3D>(a2);
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_430;
    }

    v408[31] = v89;
    v409 = v6;
  }

  if ((v11 & 0x80) != 0)
  {
    v90 = IPC::Decoder::decode<WebCore::FloatPoint3D>(a2);
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_430;
    }

    v410 = v90;
    v411 = v6;
  }

  if ((v11 & 0x100) != 0)
  {
    v91 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
    v93 = v92;
    if ((v92 & 1) == 0)
    {
      v261 = *a2;
      v262 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v263 = *(a2 + 3);
      if (v263)
      {
        if (v262)
        {
          (*(*v263 + 16))(v263, v261);
        }
      }
    }

    v94 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
    if ((v6 & 1) == 0)
    {
      v245 = *a2;
      v244 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v246 = *(a2 + 3);
      if (v246)
      {
        if (v244)
        {
          v354 = v94;
          v247 = v6;
          (*(*v246 + 16))(v246, v245);
          v6 = v247;
          v94 = v354;
        }
      }
    }

    if (!*a2)
    {
      v241 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v242 = *(a2 + 3);
      if (!v242 || !v241)
      {
        goto LABEL_430;
      }

LABEL_441:
      (*(*v242 + 16))(v242, 0);
      goto LABEL_430;
    }

    if ((v93 & 1) == 0 || (v6 & 1) == 0)
    {
      goto LABEL_705;
    }

    v412 = v91;
    v413 = v94;
  }

  if ((v11 & 0x200) == 0)
  {
    goto LABEL_169;
  }

  v95 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
  v97 = v96;
  if ((v96 & 1) == 0)
  {
    v264 = *a2;
    v265 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v266 = *(a2 + 3);
    if (v266)
    {
      if (v265)
      {
        (*(*v266 + 16))(v266, v264);
      }
    }
  }

  v98 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
  if ((v6 & 1) == 0)
  {
    v249 = *a2;
    v248 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v250 = *(a2 + 3);
    if (v250)
    {
      if (v248)
      {
        v355 = v98;
        v251 = v6;
        (*(*v250 + 16))(v250, v249);
        v6 = v251;
        v98 = v355;
      }
    }
  }

  if (!*a2)
  {
    v243 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v242 = *(a2 + 3);
    if (!v242 || !v243)
    {
      goto LABEL_430;
    }

    goto LABEL_441;
  }

  if ((v97 & 1) == 0 || (v6 & 1) == 0)
  {
    goto LABEL_705;
  }

  v414 = v95;
  v415 = v98;
LABEL_169:
  if ((v11 & 0x400) == 0)
  {
    goto LABEL_170;
  }

  v106 = *(a2 + 1);
  v107 = *(a2 + 2);
  v108 = *a2;
  if (v106 <= &v107[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v267 = *(a2 + 3);
    if (v267)
    {
      if (v106)
      {
        (*(*v267 + 16))(v267);
        v106 = *(a2 + 1);
      }
    }

    else
    {
      v106 = 0;
    }

    goto LABEL_477;
  }

  *(a2 + 2) = v107 + 1;
  if (!v107)
  {
LABEL_477:
    *a2 = 0;
    *(a2 + 1) = 0;
    v268 = *(a2 + 3);
    if (v268)
    {
      if (v106)
      {
        (*(*v268 + 16))(v268);
        v108 = *a2;
        v106 = *(a2 + 1);
        goto LABEL_480;
      }
    }

    else
    {
      v106 = 0;
    }

    v108 = 0;
LABEL_480:
    *a2 = 0;
    *(a2 + 1) = 0;
    v269 = *(a2 + 3);
    if (v269 && v106)
    {
      (*(*v269 + 16))(v269, v108);
    }

    goto LABEL_393;
  }

  v109 = *v107;
  if (v109 >= 2)
  {
    goto LABEL_480;
  }

  if (v109)
  {
    IPC::ArgumentCoder<WebKit::RemoteLayerBackingStoreProperties,void>::decode(a2, v379);
    if ((v394 & 1) == 0)
    {
      v221 = *a2;
      v222 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v223 = *(a2 + 3);
      if (!v223 || !v222 || ((*(*v223 + 16))(v223, v221), (v394 & 1) == 0))
      {
LABEL_393:
        v224 = *a2;
        v225 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        v226 = *(a2 + 3);
        if (v226 && v225)
        {
          (*(*v226 + 16))(v226, v224);
        }

        v121 = 0;
        v112 = 0;
        goto LABEL_191;
      }
    }

    if (WebKit::RemoteLayerBackingStoreProperties::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteLayerBackingStoreProperties::s_heapRef, v110);
    }

    else
    {
      NonCompact = WebKit::RemoteLayerBackingStoreProperties::operatorNewSlow(0xF0);
    }

    v112 = NonCompact;
    std::__optional_move_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__optional_move_base[abi:sn200100](NonCompact, v379);
    v113 = v384;
    v384 = 0;
    *(v112 + 12) = v113;
    *(v112 + 104) = v385;
    v114 = v386;
    v115 = v387;
    v116 = v388;
    *(v112 + 168) = v389;
    *(v112 + 152) = v116;
    *(v112 + 136) = v115;
    *(v112 + 120) = v114;
    v117 = v390;
    v118 = v391;
    v119 = v392;
    *(v112 + 58) = v393;
    *(v112 + 216) = v119;
    *(v112 + 200) = v118;
    *(v112 + 184) = v117;
    if (v394)
    {
      v120 = v384;
      v384 = 0;
      if (v120)
      {
      }

      if (v383[0] == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v379);
      }
    }
  }

  else
  {
    v112 = 0;
  }

  v121 = 1;
LABEL_191:
  v6 = *a2;
  if (*a2)
  {
    if ((v121 & 1) == 0)
    {
      goto LABEL_705;
    }

    *v379 = 0;
    *&v379[8] = 0;
    *&v460 = 0;
    *(&v460 + 1) = v112;
    v461[0] = 1;
    WebKit::RemoteLayerBackingStoreOrProperties::~RemoteLayerBackingStoreOrProperties(v379);
  }

  else
  {
    LOBYTE(v460) = 0;
    v461[0] = 0;
    if (!v112)
    {
      v121 = 0;
    }

    if (v121)
    {
      v228 = *(v112 + 12);
      *(v112 + 12) = 0;
      if (v228)
      {
      }

      if (v112[88] == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v112);
      }

      bmalloc::api::tzoneFree(v112, v6);
      v6 = *a2;
    }

    v219 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v220 = *(a2 + 3);
    if (v220 && v219)
    {
      (*(*v220 + 16))(v220);
    }
  }

  if (v461[0] != 1)
  {
    goto LABEL_430;
  }

  v122 = v460;
  *&v460 = 0;
  v123 = v416;
  v416 = v122;
  if (v123)
  {
    (*(*v123 + 8))(v123);
  }

  v124 = *(&v460 + 1);
  *(&v460 + 1) = 0;
  v125 = v417;
  v417 = v124;
  if (v125)
  {
    v227 = *(v125 + 12);
    *(v125 + 12) = 0;
    if (v227)
    {
    }

    if (*(v125 + 88) == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v125);
    }

    bmalloc::api::tzoneFree(v125, v6);
  }

  if (v461[0])
  {
    WebKit::RemoteLayerBackingStoreOrProperties::~RemoteLayerBackingStoreOrProperties(&v460);
  }

LABEL_170:
  if ((v11 & 0x800) == 0)
  {
    goto LABEL_202;
  }

  v99 = *(a2 + 1);
  v100 = *(a2 + 2);
  v6 = *a2;
  if (v99 <= &v100[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v270 = *(a2 + 3);
    if (v270)
    {
      if (v99)
      {
        (*(*v270 + 16))(v270);
        v99 = *(a2 + 1);
      }
    }

    else
    {
      v99 = 0;
    }

    goto LABEL_485;
  }

  *(a2 + 2) = v100 + 1;
  if (!v100)
  {
LABEL_485:
    *a2 = 0;
    *(a2 + 1) = 0;
    v271 = *(a2 + 3);
    if (v271)
    {
      if (v99)
      {
        (*(*v271 + 16))(v271);
        v6 = *a2;
        v99 = *(a2 + 1);
        goto LABEL_488;
      }
    }

    else
    {
      v99 = 0;
    }

    v6 = 0;
LABEL_488:
    *a2 = 0;
    *(a2 + 1) = 0;
    v272 = *(a2 + 3);
    if (v272 && v99)
    {
      (*(*v272 + 16))(v272, v6);
    }

    goto LABEL_489;
  }

  v101 = *v100;
  if (v101 >= 2)
  {
    goto LABEL_488;
  }

  if (v101)
  {
    IPC::Decoder::decode<WebCore::FilterOperations>(v379, a2);
    if (v379[16] == 1)
    {
      v103 = WebCore::FilterOperations::operator new(0x10, v102);
      *v103 = 0;
      *(v103 + 8) = 0;
      v104 = *v379;
      *v379 = 0;
      *v103 = v104;
      LODWORD(v104) = *&v379[8];
      *&v379[8] = 0;
      *(v103 + 8) = v104;
      LODWORD(v104) = *&v379[12];
      *&v379[12] = 0;
      *(v103 + 12) = v104;
      WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v379, v105);
      goto LABEL_201;
    }

LABEL_489:
    v166 = *a2;
    v273 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v274 = *(a2 + 3);
    if (!v274 || !v273)
    {
      goto LABEL_430;
    }

LABEL_636:
    (*(*v274 + 16))(v274, v166);
    goto LABEL_430;
  }

  v103 = 0;
LABEL_201:
  v126 = v418;
  v418 = v103;
  if (!v126)
  {
LABEL_202:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_228;
    }

    goto LABEL_203;
  }

  v130 = WTF::Vector<WTF::Ref<WebCore::FilterOperation,WTF::RawPtrTraits<WebCore::FilterOperation>,WTF::DefaultRefDerefTraits<WebCore::FilterOperation>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v126, v6);
  bmalloc::api::tzoneFree(v130, v131);
  if ((v11 & 0x1000) == 0)
  {
    goto LABEL_228;
  }

LABEL_203:
  IPC::ArgumentCoder<WebCore::Path,void>::decode(a2, v6, v379);
  if ((v382[0] & 1) == 0)
  {
    v256 = *a2;
    v257 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v258 = *(a2 + 3);
    if (!v258 || !v257 || ((*(*v258 + 16))(v258, v256), (v382[0] & 1) == 0))
    {
      v129 = 0;
      *a1 = 0;
      a1[784] = 0;
      goto LABEL_222;
    }
  }

  if (v421 == 255 && v381 == 255)
  {
    goto LABEL_221;
  }

  if (v381 == 255)
  {
    mpark::detail::destructor<mpark::detail::traits<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>,(mpark::detail::Trait)1>::destroy(v419);
    goto LABEL_221;
  }

  if (v381 != 2)
  {
    if (v381 == 1)
    {
      if (v421 == 1)
      {
        v419[0] = *v379;
        v419[1] = *&v379[16];
        v419[2] = *&v379[32];
        v420 = v380;
      }

      else
      {
        *&v460 = v419;
        *(&v460 + 1) = v379;
        mpark::detail::assignment<mpark::detail::traits<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>>::assign_alt<1ul,WebCore::PathSegment,WebCore::PathSegment>(mpark::detail::alt<1ul,WebCore::PathSegment> &,WebCore::PathSegment &&)::{unnamed type#1}::operator()(&v460);
      }
    }

    else if (v421)
    {
      *&v460 = v419;
      *(&v460 + 1) = v379;
      mpark::detail::assignment<mpark::detail::traits<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>>::assign_alt<0ul,std::monostate,std::monostate>(mpark::detail::alt<0ul,std::monostate> &,std::monostate &&)::{unnamed type#1}::operator()(&v460);
    }

    goto LABEL_221;
  }

  if (v421 != 2)
  {
    mpark::detail::destructor<mpark::detail::traits<std::monostate,WebCore::PathSegment,WTF::DataRef<WebCore::PathImpl>>,(mpark::detail::Trait)1>::destroy(v419);
    v132 = *v379;
    *v379 = 0;
    *&v419[0] = v132;
    v421 = 2;
    goto LABEL_221;
  }

  v127 = *v379;
  *v379 = 0;
  v128 = *&v419[0];
  *&v419[0] = v127;
  if (!v128)
  {
LABEL_221:
    v129 = 1;
    goto LABEL_222;
  }

  v129 = 1;
  if (atomic_fetch_add(v128 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v128 + 2);
    (*(*v128 + 8))(v128);
  }

LABEL_222:
  if (v382[0] == 1 && v381 >= 2u && v381 != 255 && (v133 = *v379, *v379 = 0, v133) && atomic_fetch_add(v133 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v133 + 2);
    (*(*v133 + 8))(v133);
    if ((v129 & 1) == 0)
    {
      goto LABEL_431;
    }
  }

  else if ((v129 & 1) == 0)
  {
    goto LABEL_431;
  }

LABEL_228:
  if ((v11 & 0x2000) != 0)
  {
    IPC::Decoder::decode<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>(v379, a2);
    if (v379[16] != 1)
    {
      goto LABEL_430;
    }

    v422 = *v379;
  }

  if ((v11 & 0x4000) != 0)
  {
    IPC::Decoder::decode<WTF::Markable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::MarkableTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>(v379, a2);
    if (v379[16] != 1)
    {
      goto LABEL_430;
    }

    v423 = *v379;
  }

  if ((v11 & 0x8000) != 0)
  {
    v134 = IPC::Decoder::decode<unsigned long long>(a2);
    if ((v135 & 1) == 0)
    {
      goto LABEL_430;
    }

    v424 = v134;
  }

  if ((v11 & 0x10000) != 0)
  {
    v136 = *(a2 + 1);
    v137 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v138 = v137 - *a2;
    v8 = v136 >= v138;
    v139 = v136 - v138;
    if (v8 && v139 > 3)
    {
      *(a2 + 2) = v137 + 1;
      if (v137)
      {
        v425 = *v137;
        goto LABEL_243;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v285 = *(a2 + 3);
      if (v285)
      {
        if (v136)
        {
          (*(*v285 + 16))(v285);
          v136 = *(a2 + 1);
        }
      }

      else
      {
        v136 = 0;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v286 = *(a2 + 3);
    if (v286 && v136)
    {
      goto LABEL_712;
    }

    goto LABEL_430;
  }

LABEL_243:
  if ((v11 & 0x20000) == 0)
  {
    goto LABEL_249;
  }

  v140 = *(a2 + 1);
  v141 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v142 = v141 - *a2;
  v8 = v140 >= v142;
  v143 = v140 - v142;
  if (!v8 || v143 <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v287 = *(a2 + 3);
    if (v287)
    {
      if (v140)
      {
        (*(*v287 + 16))(v287);
        v140 = *(a2 + 1);
      }
    }

    else
    {
      v140 = 0;
    }

LABEL_531:
    *a2 = 0;
    *(a2 + 1) = 0;
    v286 = *(a2 + 3);
    if (v286 && v140)
    {
      goto LABEL_712;
    }

    goto LABEL_430;
  }

  *(a2 + 2) = v141 + 1;
  if (!v141)
  {
    goto LABEL_531;
  }

  v426 = *v141;
LABEL_249:
  if ((v11 & 0x40000) == 0)
  {
    goto LABEL_255;
  }

  v144 = *(a2 + 1);
  v145 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v146 = v145 - *a2;
  v8 = v144 >= v146;
  v147 = v144 - v146;
  if (!v8 || v147 <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v288 = *(a2 + 3);
    if (v288)
    {
      if (v144)
      {
        (*(*v288 + 16))(v288);
        v144 = *(a2 + 1);
      }
    }

    else
    {
      v144 = 0;
    }

LABEL_536:
    *a2 = 0;
    *(a2 + 1) = 0;
    v286 = *(a2 + 3);
    if (v286 && v144)
    {
      goto LABEL_712;
    }

    goto LABEL_430;
  }

  *(a2 + 2) = v145 + 1;
  if (!v145)
  {
    goto LABEL_536;
  }

  v427 = *v145;
LABEL_255:
  if ((v11 & 0x80000) == 0)
  {
    goto LABEL_261;
  }

  v148 = *(a2 + 1);
  v149 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v150 = v149 - *a2;
  v8 = v148 >= v150;
  v151 = v148 - v150;
  if (!v8 || v151 <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v289 = *(a2 + 3);
    if (v289)
    {
      if (v148)
      {
        (*(*v289 + 16))(v289);
        v148 = *(a2 + 1);
      }
    }

    else
    {
      v148 = 0;
    }

LABEL_541:
    *a2 = 0;
    *(a2 + 1) = 0;
    v286 = *(a2 + 3);
    if (v286 && v148)
    {
      goto LABEL_712;
    }

    goto LABEL_430;
  }

  *(a2 + 2) = v149 + 1;
  if (!v149)
  {
    goto LABEL_541;
  }

  v428 = *v149;
LABEL_261:
  if ((v11 & 0x100000) == 0)
  {
    goto LABEL_267;
  }

  v152 = *(a2 + 1);
  v153 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v154 = v153 - *a2;
  v8 = v152 >= v154;
  v155 = v152 - v154;
  if (!v8 || v155 <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v290 = *(a2 + 3);
    if (v290)
    {
      if (v152)
      {
        (*(*v290 + 16))(v290);
        v152 = *(a2 + 1);
      }
    }

    else
    {
      v152 = 0;
    }

LABEL_546:
    *a2 = 0;
    *(a2 + 1) = 0;
    v286 = *(a2 + 3);
    if (v286 && v152)
    {
      goto LABEL_712;
    }

    goto LABEL_430;
  }

  *(a2 + 2) = v153 + 1;
  if (!v153)
  {
    goto LABEL_546;
  }

  v429 = *v153;
LABEL_267:
  if ((v11 & 0x200000) != 0)
  {
    IPC::Decoder::decode<WebCore::Color>(a2, v379);
    if (v379[8] != 1)
    {
      goto LABEL_430;
    }

    if ((v430 & 0x8000000000000) != 0)
    {
      v275 = (v430 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v430 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v275);
        WTF::fastFree(v275, v156);
      }
    }

    v430 = *v379;
  }

  if ((v11 & 0x400000) != 0)
  {
    IPC::Decoder::decode<WebCore::Color>(a2, v379);
    if (v379[8] != 1)
    {
      goto LABEL_430;
    }

    if ((v431 & 0x8000000000000) != 0)
    {
      v276 = (v431 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v431 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v276);
        WTF::fastFree(v276, v157);
      }
    }

    v431 = *v379;
  }

  if ((v11 & 0x800000) != 0)
  {
    v158 = *(a2 + 1);
    v159 = *(a2 + 2);
    v160 = *a2;
    if (v158 <= &v159[-*a2])
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v279 = *(a2 + 3);
      if (v279)
      {
        if (v158)
        {
          (*(*v279 + 16))(v279);
          v158 = *(a2 + 1);
        }
      }

      else
      {
        v158 = 0;
      }
    }

    else
    {
      *(a2 + 2) = v159 + 1;
      if (v159)
      {
        v161 = *v159;
        if (v161 < 2)
        {
          v432 = v161;
          goto LABEL_280;
        }

        goto LABEL_511;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v280 = *(a2 + 3);
    if (v280)
    {
      if (v158)
      {
        (*(*v280 + 16))(v280);
        v160 = *a2;
        v158 = *(a2 + 1);
        goto LABEL_511;
      }
    }

    else
    {
      v158 = 0;
    }

    v160 = 0;
LABEL_511:
    *a2 = 0;
    *(a2 + 1) = 0;
    v281 = *(a2 + 3);
    if (!v281)
    {
      goto LABEL_430;
    }

    if (!v158)
    {
      goto LABEL_430;
    }

    (*(*v281 + 16))(v281, v160);
    v274 = *(a2 + 3);
    v166 = *a2;
    v282 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (!v274 || !v282)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

LABEL_280:
  if ((v11 & 0x1000000) != 0)
  {
    v162 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a2);
    if (v162 < 0x100u)
    {
      goto LABEL_430;
    }

    v433 = v162;
  }

  if ((v11 & 0x2000000) != 0)
  {
    v163 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a2);
    if (v163 < 0x100u)
    {
      goto LABEL_430;
    }

    v434 = v163;
  }

  if ((v11 & 0x4000000) != 0)
  {
    v164 = *(a2 + 1);
    v165 = *(a2 + 2);
    v166 = *a2;
    if (v164 <= &v165[-*a2])
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v283 = *(a2 + 3);
      if (v283)
      {
        if (v164)
        {
          (*(*v283 + 16))(v283);
          v164 = *(a2 + 1);
        }
      }

      else
      {
        v164 = 0;
      }
    }

    else
    {
      *(a2 + 2) = v165 + 1;
      if (v165)
      {
        v167 = *v165;
        if ((v167 - 1) < 0x12)
        {
          v435 = v167;
          goto LABEL_291;
        }

        goto LABEL_521;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v284 = *(a2 + 3);
    if (v284)
    {
      if (v164)
      {
        (*(*v284 + 16))(v284);
        v166 = *a2;
        v164 = *(a2 + 1);
        goto LABEL_521;
      }
    }

    else
    {
      v164 = 0;
    }

    v166 = 0;
LABEL_521:
    *a2 = 0;
    *(a2 + 1) = 0;
    v274 = *(a2 + 3);
    if (!v274 || !v164)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

LABEL_291:
  if ((v11 & 0x8000000) != 0)
  {
    v168 = IPC::Decoder::decode<WebCore::WindRule>(a2);
    if ((v168 & 0x100) == 0)
    {
      goto LABEL_430;
    }

    v436 = v168;
  }

  if ((v11 & 0x10000000) != 0)
  {
    v169 = IPC::Decoder::decode<WebCore::WritingDirection>(a2);
    if ((v169 & 0x100) == 0)
    {
      goto LABEL_430;
    }

    v437 = v169;
  }

  if ((v11 & 0x20000000) != 0)
  {
    v170 = *(a2 + 1);
    v171 = *(a2 + 2);
    v166 = *a2;
    if (v170 <= &v171[-*a2])
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v291 = *(a2 + 3);
      if (v291)
      {
        if (v170)
        {
          (*(*v291 + 16))(v291);
          v170 = *(a2 + 1);
        }
      }

      else
      {
        v170 = 0;
      }
    }

    else
    {
      *(a2 + 2) = v171 + 1;
      if (v171)
      {
        v172 = *v171;
        if (v172 < 2)
        {
          v438 = v172;
          goto LABEL_302;
        }

        goto LABEL_554;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v292 = *(a2 + 3);
    if (v292)
    {
      if (v170)
      {
        (*(*v292 + 16))(v292);
        v166 = *a2;
        v170 = *(a2 + 1);
        goto LABEL_554;
      }
    }

    else
    {
      v170 = 0;
    }

    v166 = 0;
LABEL_554:
    *a2 = 0;
    *(a2 + 1) = 0;
    v274 = *(a2 + 3);
    if (!v274 || !v170)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

LABEL_302:
  if ((v11 & 0x40000000) == 0)
  {
    goto LABEL_307;
  }

  v173 = *(a2 + 1);
  v174 = *(a2 + 2);
  v166 = *a2;
  if (v173 <= &v174[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v293 = *(a2 + 3);
    if (v293)
    {
      if (v173)
      {
        (*(*v293 + 16))(v293);
        v173 = *(a2 + 1);
      }
    }

    else
    {
      v173 = 0;
    }

    goto LABEL_559;
  }

  *(a2 + 2) = v174 + 1;
  if (!v174)
  {
LABEL_559:
    *a2 = 0;
    *(a2 + 1) = 0;
    v294 = *(a2 + 3);
    if (v294)
    {
      if (v173)
      {
        (*(*v294 + 16))(v294);
        v166 = *a2;
        v173 = *(a2 + 1);
        goto LABEL_562;
      }
    }

    else
    {
      v173 = 0;
    }

    v166 = 0;
LABEL_562:
    *a2 = 0;
    *(a2 + 1) = 0;
    v274 = *(a2 + 3);
    if (!v274 || !v173)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v175 = *v174;
  if (v175 >= 2)
  {
    goto LABEL_562;
  }

  v439 = v175;
LABEL_307:
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_312;
  }

  v176 = *(a2 + 1);
  v177 = *(a2 + 2);
  v166 = *a2;
  if (v176 <= &v177[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v295 = *(a2 + 3);
    if (v295)
    {
      if (v176)
      {
        (*(*v295 + 16))(v295);
        v176 = *(a2 + 1);
      }
    }

    else
    {
      v176 = 0;
    }

    goto LABEL_567;
  }

  *(a2 + 2) = v177 + 1;
  if (!v177)
  {
LABEL_567:
    *a2 = 0;
    *(a2 + 1) = 0;
    v296 = *(a2 + 3);
    if (v296)
    {
      if (v176)
      {
        (*(*v296 + 16))(v296);
        v166 = *a2;
        v176 = *(a2 + 1);
        goto LABEL_570;
      }
    }

    else
    {
      v176 = 0;
    }

    v166 = 0;
LABEL_570:
    *a2 = 0;
    *(a2 + 1) = 0;
    v274 = *(a2 + 3);
    if (!v274 || !v176)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v178 = *v177;
  if (v178 >= 2)
  {
    goto LABEL_570;
  }

  v440 = v178;
LABEL_312:
  if ((v11 & 0x100000000) == 0)
  {
    goto LABEL_317;
  }

  v179 = *(a2 + 1);
  v180 = *(a2 + 2);
  v166 = *a2;
  if (v179 <= &v180[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v297 = *(a2 + 3);
    if (v297)
    {
      if (v179)
      {
        (*(*v297 + 16))(v297);
        v179 = *(a2 + 1);
      }
    }

    else
    {
      v179 = 0;
    }

    goto LABEL_575;
  }

  *(a2 + 2) = v180 + 1;
  if (!v180)
  {
LABEL_575:
    *a2 = 0;
    *(a2 + 1) = 0;
    v298 = *(a2 + 3);
    if (v298)
    {
      if (v179)
      {
        (*(*v298 + 16))(v298);
        v166 = *a2;
        v179 = *(a2 + 1);
        goto LABEL_578;
      }
    }

    else
    {
      v179 = 0;
    }

    v166 = 0;
LABEL_578:
    *a2 = 0;
    *(a2 + 1) = 0;
    v274 = *(a2 + 3);
    if (!v274 || !v179)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v181 = *v180;
  if (v181 >= 2)
  {
    goto LABEL_578;
  }

  v441 = v181;
LABEL_317:
  if ((v11 & 0x200000000) == 0)
  {
    goto LABEL_322;
  }

  v182 = *(a2 + 1);
  v183 = *(a2 + 2);
  v166 = *a2;
  if (v182 <= &v183[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v299 = *(a2 + 3);
    if (v299)
    {
      if (v182)
      {
        (*(*v299 + 16))(v299);
        v182 = *(a2 + 1);
      }
    }

    else
    {
      v182 = 0;
    }

    goto LABEL_583;
  }

  *(a2 + 2) = v183 + 1;
  if (!v183)
  {
LABEL_583:
    *a2 = 0;
    *(a2 + 1) = 0;
    v300 = *(a2 + 3);
    if (v300)
    {
      if (v182)
      {
        (*(*v300 + 16))(v300);
        v166 = *a2;
        v182 = *(a2 + 1);
        goto LABEL_586;
      }
    }

    else
    {
      v182 = 0;
    }

    v166 = 0;
LABEL_586:
    *a2 = 0;
    *(a2 + 1) = 0;
    v274 = *(a2 + 3);
    if (!v274 || !v182)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v184 = *v183;
  if (v184 >= 2)
  {
    goto LABEL_586;
  }

  v442 = v184;
LABEL_322:
  if ((v11 & 0x400000000) == 0)
  {
    goto LABEL_327;
  }

  v185 = *(a2 + 1);
  v186 = *(a2 + 2);
  v166 = *a2;
  if (v185 <= &v186[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v301 = *(a2 + 3);
    if (v301)
    {
      if (v185)
      {
        (*(*v301 + 16))(v301);
        v185 = *(a2 + 1);
      }
    }

    else
    {
      v185 = 0;
    }

    goto LABEL_591;
  }

  *(a2 + 2) = v186 + 1;
  if (!v186)
  {
LABEL_591:
    *a2 = 0;
    *(a2 + 1) = 0;
    v302 = *(a2 + 3);
    if (v302)
    {
      if (v185)
      {
        (*(*v302 + 16))(v302);
        v166 = *a2;
        v185 = *(a2 + 1);
        goto LABEL_594;
      }
    }

    else
    {
      v185 = 0;
    }

    v166 = 0;
LABEL_594:
    *a2 = 0;
    *(a2 + 1) = 0;
    v274 = *(a2 + 3);
    if (!v274 || !v185)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v187 = *v186;
  if (v187 >= 2)
  {
    goto LABEL_594;
  }

  v443 = v187;
LABEL_327:
  if ((v11 & 0x800000000) == 0)
  {
    goto LABEL_332;
  }

  v188 = *(a2 + 1);
  v189 = *(a2 + 2);
  v166 = *a2;
  if (v188 <= &v189[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v303 = *(a2 + 3);
    if (v303)
    {
      if (v188)
      {
        (*(*v303 + 16))(v303);
        v188 = *(a2 + 1);
      }
    }

    else
    {
      v188 = 0;
    }

    goto LABEL_599;
  }

  *(a2 + 2) = v189 + 1;
  if (!v189)
  {
LABEL_599:
    *a2 = 0;
    *(a2 + 1) = 0;
    v304 = *(a2 + 3);
    if (v304)
    {
      if (v188)
      {
        (*(*v304 + 16))(v304);
        v166 = *a2;
        v188 = *(a2 + 1);
        goto LABEL_602;
      }
    }

    else
    {
      v188 = 0;
    }

    v166 = 0;
LABEL_602:
    *a2 = 0;
    *(a2 + 1) = 0;
    v274 = *(a2 + 3);
    if (!v274 || !v188)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v190 = *v189;
  if (v190 >= 2)
  {
    goto LABEL_602;
  }

  v444 = v190;
LABEL_332:
  if ((v11 & 0x1000000000) == 0)
  {
    goto LABEL_337;
  }

  v191 = *(a2 + 1);
  v192 = *(a2 + 2);
  v166 = *a2;
  if (v191 <= &v192[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v305 = *(a2 + 3);
    if (v305)
    {
      if (v191)
      {
        (*(*v305 + 16))(v305);
        v191 = *(a2 + 1);
      }
    }

    else
    {
      v191 = 0;
    }

    goto LABEL_607;
  }

  *(a2 + 2) = v192 + 1;
  if (!v192)
  {
LABEL_607:
    *a2 = 0;
    *(a2 + 1) = 0;
    v306 = *(a2 + 3);
    if (v306)
    {
      if (v191)
      {
        (*(*v306 + 16))(v306);
        v166 = *a2;
        v191 = *(a2 + 1);
        goto LABEL_610;
      }
    }

    else
    {
      v191 = 0;
    }

    v166 = 0;
LABEL_610:
    *a2 = 0;
    *(a2 + 1) = 0;
    v274 = *(a2 + 3);
    if (!v274 || !v191)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v193 = *v192;
  if (v193 >= 2)
  {
    goto LABEL_610;
  }

  v445 = v193;
LABEL_337:
  if ((v11 & 0x2000000000) == 0)
  {
    goto LABEL_342;
  }

  v194 = *(a2 + 1);
  v195 = *(a2 + 2);
  v166 = *a2;
  if (v194 <= &v195[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v307 = *(a2 + 3);
    if (v307)
    {
      if (v194)
      {
        (*(*v307 + 16))(v307);
        v194 = *(a2 + 1);
      }
    }

    else
    {
      v194 = 0;
    }

    goto LABEL_615;
  }

  *(a2 + 2) = v195 + 1;
  if (!v195)
  {
LABEL_615:
    *a2 = 0;
    *(a2 + 1) = 0;
    v308 = *(a2 + 3);
    if (v308)
    {
      if (v194)
      {
        (*(*v308 + 16))(v308);
        v166 = *a2;
        v194 = *(a2 + 1);
        goto LABEL_618;
      }
    }

    else
    {
      v194 = 0;
    }

    v166 = 0;
LABEL_618:
    *a2 = 0;
    *(a2 + 1) = 0;
    v274 = *(a2 + 3);
    if (!v274 || !v194)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v196 = *v195;
  if (v196 >= 2)
  {
    goto LABEL_618;
  }

  v446 = v196;
LABEL_342:
  if ((v11 & 0x4000000000) == 0)
  {
    goto LABEL_347;
  }

  v197 = *(a2 + 1);
  v198 = *(a2 + 2);
  v166 = *a2;
  if (v197 <= &v198[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v309 = *(a2 + 3);
    if (v309)
    {
      if (v197)
      {
        (*(*v309 + 16))(v309);
        v197 = *(a2 + 1);
      }
    }

    else
    {
      v197 = 0;
    }

    goto LABEL_623;
  }

  *(a2 + 2) = v198 + 1;
  if (!v198)
  {
LABEL_623:
    *a2 = 0;
    *(a2 + 1) = 0;
    v310 = *(a2 + 3);
    if (v310)
    {
      if (v197)
      {
        (*(*v310 + 16))(v310);
        v166 = *a2;
        v197 = *(a2 + 1);
        goto LABEL_626;
      }
    }

    else
    {
      v197 = 0;
    }

    v166 = 0;
LABEL_626:
    *a2 = 0;
    *(a2 + 1) = 0;
    v274 = *(a2 + 3);
    if (!v274 || !v197)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v199 = *v198;
  if (v199 >= 2)
  {
    goto LABEL_626;
  }

  v447 = v199;
LABEL_347:
  if ((v11 & 0x8000000000) == 0)
  {
    goto LABEL_352;
  }

  v200 = *(a2 + 1);
  v201 = *(a2 + 2);
  v166 = *a2;
  if (v200 <= &v201[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v311 = *(a2 + 3);
    if (v311)
    {
      if (v200)
      {
        (*(*v311 + 16))(v311);
        v200 = *(a2 + 1);
      }
    }

    else
    {
      v200 = 0;
    }

    goto LABEL_631;
  }

  *(a2 + 2) = v201 + 1;
  if (!v201)
  {
LABEL_631:
    *a2 = 0;
    *(a2 + 1) = 0;
    v312 = *(a2 + 3);
    if (v312)
    {
      if (v200)
      {
        (*(*v312 + 16))(v312);
        v166 = *a2;
        v200 = *(a2 + 1);
        goto LABEL_634;
      }
    }

    else
    {
      v200 = 0;
    }

    v166 = 0;
LABEL_634:
    *a2 = 0;
    *(a2 + 1) = 0;
    v274 = *(a2 + 3);
    if (!v274 || !v200)
    {
      goto LABEL_430;
    }

    goto LABEL_636;
  }

  v202 = *v201;
  if (v202 >= 2)
  {
    goto LABEL_634;
  }

  v448 = v202;
LABEL_352:
  if ((v11 & 0x10000000000) == 0)
  {
    goto LABEL_684;
  }

  IPC::Decoder::decode<WebCore::Region>(&v375, a2);
  v203 = *(a2 + 1);
  v204 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v205 = *a2;
  v206 = v204 - *a2;
  v8 = v203 >= v206;
  v207 = v203 - v206;
  if (!v8 || v207 <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v277 = *(a2 + 3);
    if (v277)
    {
      if (v203)
      {
        (*(*v277 + 16))(v277);
        v203 = *(a2 + 1);
      }
    }

    else
    {
      v203 = 0;
    }

    goto LABEL_498;
  }

  *(a2 + 2) = v204 + 1;
  if (!v204)
  {
LABEL_498:
    *a2 = 0;
    *(a2 + 1) = 0;
    v278 = *(a2 + 3);
    if (v278 && v203)
    {
      (*(*v278 + 16))(v278);
    }

    LOBYTE(v372) = 0;
    v374 = 0;
    goto LABEL_418;
  }

  v208 = *v204;
  v356 = 0;
  v357 = 0;
  if (v208 >= 0xAAAA)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::Region>(&v460, a2);
      v229 = v461[8];
      if (v461[8])
      {
        if (HIDWORD(v357) == v357)
        {
          WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::Region>(&v356, &v460);
        }

        else
        {
          WebCore::Region::Region();
          ++HIDWORD(v357);
        }
      }

      if (v461[8] == 1)
      {
        WebCore::Region::~Region(&v460);
      }

      if ((v229 & 1) == 0)
      {
        break;
      }

      if (!--v208)
      {
        WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v356, HIDWORD(v357));
        goto LABEL_368;
      }
    }
  }

  else
  {
    if (!v208)
    {
LABEL_368:
      v372 = v356;
      v211 = v357;
      v356 = 0;
      v357 = 0;
      v373 = v211;
      v374 = 1;
      WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v356, v205);
      goto LABEL_369;
    }

    v209 = WTF::fastMalloc((24 * v208));
    LODWORD(v357) = 24 * v208 / 0x18u;
    v356 = v209;
    while (1)
    {
      IPC::Decoder::decode<WebCore::Region>(&v460, a2);
      v210 = v461[8];
      if (v461[8])
      {
        if (HIDWORD(v357) == v357)
        {
          WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::Region>(&v356, &v460);
        }

        else
        {
          WebCore::Region::Region();
          ++HIDWORD(v357);
        }
      }

      if (v461[8] == 1)
      {
        WebCore::Region::~Region(&v460);
      }

      if ((v210 & 1) == 0)
      {
        break;
      }

      if (!--v208)
      {
        goto LABEL_368;
      }
    }
  }

  LOBYTE(v372) = 0;
  v374 = 0;
  WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v356, v205);
LABEL_418:
  v230 = *a2;
  v231 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v232 = *(a2 + 3);
  if (v232 && v231)
  {
    (*(*v232 + 16))(v232, v230);
  }

LABEL_369:
  IPC::Decoder::decode<WebCore::Region>(&v368, a2);
  IPC::Decoder::decode<WebCore::Region>(&v365, a2);
  v212 = *(a2 + 1);
  v213 = *(a2 + 2);
  v214 = *a2;
  if (v212 <= &v213[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v313 = *(a2 + 3);
    if (v313)
    {
      if (v212)
      {
        (*(*v313 + 16))(v313);
        v212 = *(a2 + 1);
      }
    }

    else
    {
      v212 = 0;
    }

    goto LABEL_639;
  }

  *(a2 + 2) = v213 + 1;
  if (!v213)
  {
LABEL_639:
    *a2 = 0;
    *(a2 + 1) = 0;
    v314 = *(a2 + 3);
    if (v314)
    {
      if (v212)
      {
        (*(*v314 + 16))(v314);
        v214 = *a2;
        v212 = *(a2 + 1);
        goto LABEL_642;
      }
    }

    else
    {
      v212 = 0;
    }

    v214 = 0;
LABEL_642:
    *a2 = 0;
    *(a2 + 1) = 0;
    v315 = *(a2 + 3);
    if (v315 && v212)
    {
      (*(*v315 + 16))(v315, v214);
    }

    goto LABEL_643;
  }

  v215 = *v213;
  if (v215 >= 2)
  {
    goto LABEL_642;
  }

  if (!v215)
  {
    LOBYTE(v460) = 0;
    v461[8] = 0;
    std::__optional_move_base<WebCore::Region,false>::__optional_move_base[abi:sn200100](&v356, &v460);
    v359 = 1;
    if (v461[8] != 1)
    {
      goto LABEL_644;
    }

    goto LABEL_377;
  }

  IPC::Decoder::decode<WebCore::Region>(&v460, a2);
  if (v461[8] != 1)
  {
LABEL_643:
    LOBYTE(v356) = 0;
    v359 = 0;
    goto LABEL_644;
  }

  WebCore::Region::Region();
  v358 = 1;
  v359 = 1;
  if (v461[8])
  {
LABEL_377:
    WebCore::Region::~Region(&v460);
  }

LABEL_644:
  if ((v359 & 1) == 0)
  {
    goto LABEL_706;
  }

  while (1)
  {
    if (*a2)
    {
      if ((v378 & 1) == 0)
      {
        goto LABEL_705;
      }

      if ((v374 & 1) == 0)
      {
        goto LABEL_705;
      }

      v364[0] = v372;
      v316 = v373;
      v372 = 0;
      v373 = 0;
      v364[1] = v316;
      if ((v371 & 1) == 0)
      {
        goto LABEL_705;
      }

      WebCore::Region::Region();
      if ((v367 & 1) == 0)
      {
        goto LABEL_705;
      }

      WebCore::Region::Region();
      if ((v359 & 1) == 0)
      {
        goto LABEL_705;
      }

      std::__optional_move_base<WebCore::Region,false>::__optional_move_base[abi:sn200100](v361, &v356);
      WebCore::EventRegion::EventRegion();
      WebCore::EventRegion::EventRegion(v379, &v460);
      LOBYTE(v386) = 1;
      if (v463[24] == 1)
      {
        WebCore::Region::~Region(v463);
      }

      WebCore::Region::~Region(&v462);
      WebCore::Region::~Region(&v461[24]);
      WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v461[8], v317);
      WebCore::Region::~Region(&v460);
      if (v361[24] == 1)
      {
        WebCore::Region::~Region(v361);
      }

      WebCore::Region::~Region(v362);
      WebCore::Region::~Region(v363);
      WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v364, v318);
    }

    else
    {
      v379[0] = 0;
      LOBYTE(v386) = 0;
    }

    if (v359 == 1 && v358 == 1)
    {
      WebCore::Region::~Region(&v356);
    }

    if (v367 == 1)
    {
      WebCore::Region::~Region(&v365);
    }

    if (v371 == 1)
    {
      WebCore::Region::~Region(&v368);
    }

    if (v374 == 1)
    {
      WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v372, v214);
    }

    if (v378 == 1)
    {
      WebCore::Region::~Region(&v375);
    }

    if ((v386 & 1) == 0)
    {
      v341 = *a2;
      v342 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v343 = *(a2 + 3);
      if (!v343)
      {
        goto LABEL_430;
      }

      if (!v342)
      {
        goto LABEL_430;
      }

      (*(*v343 + 16))(v343, v341);
      if ((v386 & 1) == 0)
      {
        goto LABEL_430;
      }
    }

    WebCore::Region::operator=();
    if (HIDWORD(v450))
    {
      v320 = v449;
      v321 = 24 * HIDWORD(v450);
      do
      {
        WebCore::Region::~Region(v320);
        v320 = (v322 + 24);
        v321 -= 24;
      }

      while (v321);
    }

    v323 = v449;
    if (v449)
    {
      v449 = 0;
      LODWORD(v450) = 0;
      WTF::fastFree(v323, v319);
    }

    v449 = *&v379[24];
    v324 = *&v379[32];
    *&v379[24] = 0;
    *&v379[32] = 0;
    v450 = v324;
    WebCore::Region::operator=();
    WebCore::Region::operator=();
    if (v452 == BYTE8(v385))
    {
      if (v452)
      {
        WebCore::Region::operator=();
      }
    }

    else
    {
      if (v452)
      {
        WebCore::Region::~Region(&v451);
        v325 = 0;
      }

      else
      {
        WebCore::Region::Region();
        v325 = 1;
      }

      v452 = v325;
    }

    if (v386)
    {
      if (BYTE8(v385) == 1)
      {
        WebCore::Region::~Region(v383);
      }

      WebCore::Region::~Region(v382);
      WebCore::Region::~Region(&v379[40]);
      WTF::Vector<WebCore::Region,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v379[24], v326);
      WebCore::Region::~Region(v379);
    }

LABEL_684:
    if (!(v11 >> 41))
    {
      goto LABEL_703;
    }

    v327 = IPC::Decoder::decode<WebCore::AppleVisualEffect>(a2);
    v328 = IPC::Decoder::decode<WebCore::AppleVisualEffect>(a2);
    v11 = &v460;
    v329 = *(a2 + 1);
    v330 = *(a2 + 2);
    v331 = *a2;
    if (v329 <= &v330[-*a2])
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v346 = *(a2 + 3);
      if (v346)
      {
        if (v329)
        {
          (*(*v346 + 16))(v346);
          v329 = *(a2 + 1);
        }
      }

      else
      {
        v329 = 0;
      }
    }

    else
    {
      v332 = v330 + 1;
      *(a2 + 2) = v330 + 1;
      if (v330)
      {
        v333 = *v330;
        if (v333 < 2)
        {
          v334 = v333 | 0x100;
          goto LABEL_689;
        }

        goto LABEL_725;
      }
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    v347 = *(a2 + 3);
    if (v347)
    {
      if (v329)
      {
        (*(*v347 + 16))(v347);
        v331 = *a2;
        v329 = *(a2 + 1);
        goto LABEL_725;
      }
    }

    else
    {
      v329 = 0;
    }

    v331 = 0;
LABEL_725:
    *a2 = 0;
    *(a2 + 1) = 0;
    v348 = *(a2 + 3);
    if (!v348)
    {
      v334 = 0;
      goto LABEL_727;
    }

    if (!v329)
    {
      v334 = 0;
      goto LABEL_728;
    }

    (*(*v348 + 16))(v348, v331);
    v334 = 0;
    v331 = *a2;
    v329 = *(a2 + 1);
    v332 = *(a2 + 2);
LABEL_689:
    if (v329 <= v332 - v331)
    {
      v353 = *(a2 + 3);
      *a2 = 0;
      *(a2 + 1) = 0;
      if (v353)
      {
        if (v329)
        {
          (*(*v353 + 16))(v353);
          v331 = *a2;
          v329 = *(a2 + 1);
LABEL_729:
          *a2 = 0;
          *(a2 + 1) = 0;
          v349 = *(a2 + 3);
          if (v349)
          {
            if (v329)
            {
              (*(*v349 + 16))(v349, v331);
              v331 = *a2;
              v329 = *(a2 + 1);
              goto LABEL_732;
            }
          }

          else
          {
            v329 = 0;
          }

          v331 = 0;
LABEL_732:
          *a2 = 0;
          *(a2 + 1) = 0;
          v345 = *(a2 + 3);
          if (v345 && v329)
          {
            goto LABEL_719;
          }

          goto LABEL_733;
        }

LABEL_728:
        v331 = 0;
        goto LABEL_729;
      }

LABEL_727:
      v329 = 0;
      goto LABEL_728;
    }

    *(a2 + 2) = v332 + 1;
    if (!v332)
    {
      goto LABEL_729;
    }

    v335 = *v332;
    if (v335 >= 2)
    {
      goto LABEL_732;
    }

    if (v335)
    {
      IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::decode(a2, v379);
      if (v380)
      {
        LOBYTE(v335) = v379[0];
        v460 = *&v379[1];
        *v461 = *&v379[17];
        *&v461[15] = *&v379[32];
        v336 = 1;
LABEL_695:
        v337 = 1;
        goto LABEL_697;
      }

      v331 = *a2;
      v344 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v345 = *(a2 + 3);
      if (v345 && v344)
      {
LABEL_719:
        (*(*v345 + 16))(v345, v331);
      }

LABEL_733:
      v350 = *a2;
      v351 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v352 = *(a2 + 3);
      if (v352 && v351)
      {
        (*(*v352 + 16))(v352, v350);
      }

      v336 = 0;
      LOBYTE(v335) = 0;
      goto LABEL_695;
    }

    v337 = 0;
    v336 = 1;
LABEL_697:
    if (!*a2)
    {
      break;
    }

    if (v327 > 0xFFu && v328 > 0xFFu && v334 > 0xFF && (v336 & 1) != 0)
    {
      v457 = v460;
      *v458 = *v461;
      *&v458[15] = *&v461[15];
      v453 = v327;
      v454 = v328;
      v455 = v334;
      v456 = v335;
      v459 = v337;
LABEL_703:
      if (!*a2)
      {
        goto LABEL_430;
      }

      WebKit::LayerProperties::LayerProperties(a1, v396);
      a1[784] = 1;
      goto LABEL_431;
    }

LABEL_705:
    __break(1u);
LABEL_706:
    v214 = *a2;
    v338 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v339 = *(a2 + 3);
    if (v339 && v338)
    {
      (*(*v339 + 16))(v339, v214);
    }
  }

  v340 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v286 = *(a2 + 3);
  if (!v286 || !v340)
  {
    goto LABEL_430;
  }

LABEL_712:
  (*(*v286 + 16))(v286);
LABEL_430:
  *a1 = 0;
  a1[784] = 0;
LABEL_431:
  WebKit::LayerProperties::~LayerProperties(v396);
}
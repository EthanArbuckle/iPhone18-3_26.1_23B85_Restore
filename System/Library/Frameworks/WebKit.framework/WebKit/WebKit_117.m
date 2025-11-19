uint64_t WebKit::NetworkBroadcastChannelRegistry::create@<X0>(atomic_uint *this@<X0>, WebKit::NetworkProcess *a2@<X1>, void *a3@<X8>)
{
  result = WebKit::NetworkBroadcastChannelRegistry::operator new(0x18, a2);
  *result = 1;
  atomic_fetch_add(this + 36, 1u);
  *(result + 8) = this;
  *(result + 16) = 0;
  *a3 = result;
  return result;
}

uint64_t WebKit::NetworkBroadcastChannelRegistry::operator new(WebKit::NetworkBroadcastChannelRegistry *this, void *a2)
{
  if (WebKit::NetworkBroadcastChannelRegistry::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkBroadcastChannelRegistry::s_heapRef, a2);
  }

  else
  {
    return WebKit::NetworkBroadcastChannelRegistry::operatorNewSlow(0x18);
  }
}

void WebKit::NetworkBroadcastChannelRegistry::~NetworkBroadcastChannelRegistry(WebKit::NetworkBroadcastChannelRegistry *this, void *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 36);
    (*(*v4 + 24))(v4);
  }

  if (*this != 1)
  {
    __break(0xC471u);
  }
}

void WebKit::NetworkBroadcastChannelRegistry::registerChannel(WebKit::NetworkBroadcastChannelRegistry *this, IPC::Connection *a2, const WebCore::ClientOrigin *a3, WTF::StringImpl **a4)
{
  v42 = *MEMORY[0x1E69E9840];
  if ((WebCore::SecurityOriginData::isNull(a3) & 1) != 0 || WebCore::SecurityOriginData::isNull((a3 + 32)))
  {
    v39 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::NetworkBroadcastChannelRegistry::registerChannel(IPC::Connection &, const WebCore::ClientOrigin &, const String &)";
      _os_log_fault_impl(&dword_19D52D000, v39, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkBroadcastChannelRegistry.cpp 63: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      return;
    }

    __break(0xC471u);
LABEL_77:
    JUMPOUT(0x19DC1F520);
  }

  v8 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
  if (v8)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC1F590);
  }

  if (*(a3 + 24))
  {
    if (*(a3 + 24) != 1)
    {
LABEL_20:
      mpark::throw_bad_variant_access(v8);
    }

    goto LABEL_6;
  }

  if (*a3 == -1)
  {
    __break(0xC471u);
    goto LABEL_77;
  }

LABEL_6:
  v9 = *(this + 2);
  v40 = a2;
  if (v9 || (WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(this + 2, 0), (v9 = *(this + 2)) != 0))
  {
    v10 = *(v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = WTF::computeHash<WebCore::ClientOrigin>(a3) & v10;
  v12 = v9 + 72 * v11;
  v8 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
  if (v8)
  {
    goto LABEL_23;
  }

  v13 = 0;
  v14 = 1;
  do
  {
    if (*(v12 + 24))
    {
      if (*(v12 + 24) != 1)
      {
        goto LABEL_20;
      }
    }

    else if (*v12 == -1)
    {
      v13 = v12;
      goto LABEL_17;
    }

    if (WebCore::operator==() && (WebCore::operator==() & 1) != 0)
    {
      goto LABEL_30;
    }

LABEL_17:
    v11 = (v11 + v14) & v10;
    v12 = v9 + 72 * v11;
    v8 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>();
    ++v14;
  }

  while (!v8);
  if (v13)
  {
    *(v13 + 64) = 0;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    --*(*(this + 2) - 16);
    v12 = v13;
  }

LABEL_23:
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v12, a3);
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>((v12 + 32), a3 + 2);
  v17 = *(v12 + 64);
  *(v12 + 64) = 0;
  if (v17)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v17, v16);
  }

  v18 = *(this + 2);
  if (v18)
  {
    v19 = *(v18 - 12) + 1;
  }

  else
  {
    v19 = 1;
  }

  *(v18 - 12) = v19;
  v20 = (*(v18 - 16) + v19);
  v21 = *(v18 - 4);
  if (v21 > 0x400)
  {
    if (v21 <= 2 * v20)
    {
LABEL_29:
      v12 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand(this + 2, v12);
    }
  }

  else if (3 * v21 <= 4 * v20)
  {
    goto LABEL_29;
  }

LABEL_30:
  if (*a4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC1F5B0);
  }

  if (!*a4)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC1F5D0);
  }

  v22 = *(v12 + 64);
  if (v22 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((v12 + 64), 0), (v22 = *(v12 + 64)) != 0))
  {
    v23 = *(v22 - 8);
  }

  else
  {
    v23 = 0;
  }

  v24 = *(*a4 + 4);
  if (v24 < 0x100)
  {
    v25 = WTF::StringImpl::hashSlowCase(*a4);
  }

  else
  {
    v25 = v24 >> 8;
  }

  v26 = 0;
  v27 = 1;
  while (2)
  {
    v28 = v25 & v23;
    v29 = v22 + 24 * (v25 & v23);
    v30 = *v29;
    if (*v29 == -1)
    {
      v26 = (v22 + 24 * v28);
LABEL_43:
      v25 = v27 + v28;
      ++v27;
      continue;
    }

    break;
  }

  if (v30)
  {
    if (WTF::equal(v30, *a4, v15))
    {
      goto LABEL_54;
    }

    goto LABEL_43;
  }

  if (v26)
  {
    *v26 = 0;
    v26[1] = 0;
    v26[2] = 0;
    --*(*(v12 + 64) - 16);
    v29 = v26;
  }

  WTF::String::operator=(v29, a4);
  v32 = *(v29 + 8);
  if (v32)
  {
    *(v29 + 8) = 0;
    *(v29 + 16) = 0;
    WTF::fastFree(v32, v31);
  }

  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  v33 = *(v12 + 64);
  if (v33)
  {
    v34 = *(v33 - 12) + 1;
  }

  else
  {
    v34 = 1;
  }

  *(v33 - 12) = v34;
  v35 = (*(v33 - 16) + v34);
  v36 = *(v33 - 4);
  if (v36 > 0x400)
  {
    if (v36 <= 2 * v35)
    {
LABEL_53:
      v29 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((v12 + 64), v29);
    }
  }

  else if (3 * v36 <= 4 * v35)
  {
    goto LABEL_53;
  }

LABEL_54:
  v37 = *(v40 + 3);
  *buf = v37;
  v38 = *(v29 + 20);
  if (v38 == *(v29 + 16))
  {
    *(*(v29 + 8) + 8 * *(v29 + 20)) = *WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v29 + 8, v38 + 1, buf);
  }

  else
  {
    *(*(v29 + 8) + 8 * v38) = v37;
  }

  ++*(v29 + 20);
}

void WebKit::NetworkBroadcastChannelRegistry::unregisterChannel(WebKit::NetworkBroadcastChannelRegistry *this, IPC::Connection *a2, const WebCore::ClientOrigin *a3, const WTF::StringImpl **a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((WebCore::SecurityOriginData::isNull(a3) & 1) != 0 || WebCore::SecurityOriginData::isNull((a3 + 32)))
  {
    v18 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v19 = 136446210;
      v20 = "void WebKit::NetworkBroadcastChannelRegistry::unregisterChannel(IPC::Connection &, const WebCore::ClientOrigin &, const String &)";
      _os_log_fault_impl(&dword_19D52D000, v18, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkBroadcastChannelRegistry.cpp 73: Invalid message dispatched %{public}s", &v19, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC1F750);
    }
  }

  else
  {
    v8 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>( this + 2,  a3);
    v10 = v8;
    v11 = *(this + 2);
    if (v11)
    {
      v11 += 72 * *(v11 - 4);
    }

    if (v11 != v8)
    {
      v12 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((v8 + 64), a4, v9);
      v13 = v12;
      v14 = *(v10 + 64);
      if (v14)
      {
        v14 += 24 * *(v14 - 4);
      }

      if (v14 != v12)
      {
        v15 = *(v12 + 20);
        if (v15)
        {
          v16 = *(v12 + 8);
          v17 = 8 * v15 - 8;
          while (*v16 != *(a2 + 3))
          {
            v17 -= 8;
            ++v16;
            if (v17 == -8)
            {
              return;
            }
          }

          if (v17)
          {
            memmove(v16, v16 + 1, v17);
            LODWORD(v15) = *(v13 + 20);
          }

          *(v13 + 20) = v15 - 1;
        }
      }
    }
  }
}

atomic_uint *WebKit::NetworkBroadcastChannelRegistry::postMessage(uint64_t a1, uint64_t a2, WebCore::SecurityOriginData *this, const WTF::StringImpl **a4, void *a5, uint64_t *a6)
{
  v44 = *MEMORY[0x1E69E9840];
  if ((WebCore::SecurityOriginData::isNull(this) & 1) != 0 || WebCore::SecurityOriginData::isNull((this + 32)))
  {
    v38 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "void WebKit::NetworkBroadcastChannelRegistry::postMessage(IPC::Connection &, const WebCore::ClientOrigin &, const String &, WebCore::MessageWithMessagePorts &&, CompletionHandler<void ()> &&)";
      _os_log_fault_impl(&dword_19D52D000, v38, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkBroadcastChannelRegistry.cpp 90: Invalid message dispatched %{public}s", &buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
LABEL_32:
      JUMPOUT(0x19DC1FBA0);
    }

    v39 = *a6;
    *a6 = 0;
    (*(*v39 + 16))(v39);
    return (*(*v39 + 8))(v39);
  }

  else
  {
    v11 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>( (a1 + 16),  this);
    v13 = v11;
    v14 = *(a1 + 16);
    if (v14)
    {
      v14 += 72 * *(v14 - 4);
    }

    if (v14 == v11)
    {
      goto LABEL_22;
    }

    v15 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((v11 + 64), a4, v12);
    v16 = v15;
    v17 = *(v13 + 64);
    if (v17)
    {
      v17 += 24 * *(v17 - 4);
    }

    if (v17 == v15)
    {
LABEL_22:
      v35 = *a6;
      *a6 = 0;
      (*(*v35 + 16))(v35);
      v36 = *(*v35 + 8);

      return v36(v35);
    }

    else
    {
      v18 = WTF::fastMalloc(0x10);
      *v18 = 1;
      v19 = *a6;
      *a6 = 0;
      *(v18 + 8) = v19;
      v20 = *(v16 + 20);
      if (v20)
      {
        v21 = *(v16 + 8);
        for (i = 8 * v20; i; i -= 8)
        {
          if (*v21 != *(a2 + 24))
          {
            IPC::Connection::connection(*v21, &v41);
            v23 = v41;
            if (v41)
            {
              atomic_fetch_add(v18, 1u);
              v24 = WTF::fastMalloc(0x10);
              *v24 = &unk_1F10FF830;
              v24[1] = v18;
              if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
              {
                __break(0xC471u);
                goto LABEL_32;
              }

              v25 = v24;
              IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
              v28 = IPC::Encoder::operator new(0x238, v27);
              *v28 = 1844;
              *(v28 + 68) = 0;
              *(v28 + 70) = 0;
              *(v28 + 69) = 0;
              *(v28 + 2) = 0;
              *(v28 + 3) = 0;
              *(v28 + 1) = 0;
              IPC::Encoder::encodeHeader(v28);
              v42 = v28;
              IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(v28, this);
              IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v28, a4);
              IPC::ArgumentCoder<WTF::RefPtr<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>>,void>::encode<IPC::Encoder,WebCore::SerializedScriptValue>(v28, a5);
              IPC::VectorArgumentCoder<false,std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v28, (a5 + 1));
              *&buf = v25;
              *(&buf + 1) = IdentifierInternal;
              IPC::Connection::sendMessageWithAsyncReply(v23, &v42, &buf, 0, 0);
              v30 = buf;
              *&buf = 0;
              if (v30)
              {
                (*(*v30 + 8))(v30);
              }

              v31 = v42;
              v42 = 0;
              if (v31)
              {
                IPC::Encoder::~Encoder(v31, v29);
                bmalloc::api::tzoneFree(v33, v34);
              }

              v32 = v41;
              v41 = 0;
              if (v32)
              {
                WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v32);
              }
            }
          }

          ++v21;
        }
      }

      return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v18);
    }
  }
}

uint64_t WebKit::NetworkBroadcastChannelRegistry::removeConnection(WebKit::NetworkBroadcastChannelRegistry *this, IPC::Connection *a2)
{
  v31 = 0;
  v32 = 0;
  v3 = (this + 16);
  v4 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::begin(*(this + 2));
  v6 = v4;
  v7 = v5;
  v8 = 0;
  if (*v3)
  {
    v8 = *v3 + 72 * *(*v3 - 4);
  }

  if (v8 != v4)
  {
    do
    {
      v29 = 0;
      v30 = 0;
      v12 = (v6 + 64);
      v13 = *(v6 + 64);
      v14 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v13);
      v15 = v14;
      v16 = v10;
      if (v13)
      {
        v13 += 3 * *(v13 - 1);
      }

      if (v13 != v14)
      {
        do
        {
          v28 = *(a2 + 3);
          WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::removeFirstMatching<BOOL WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::removeFirst<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&)::{lambda(WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> const&)#1}>((v15 + 8), &v28);
          if (!*(v15 + 20))
          {
            v18 = HIDWORD(v30);
            if (HIDWORD(v30) == v30)
            {
              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String&>(&v29, v15);
            }

            else
            {
              v19 = v29;
              v20 = *v15;
              if (*v15)
              {
                atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
              }

              v21 = HIDWORD(v30);
              v19[v18] = v20;
              HIDWORD(v30) = v21 + 1;
            }
          }

          do
          {
            v15 += 24;
          }

          while (v15 != v16 && (*v15 + 1) <= 1);
        }

        while (v15 != v13);
        if (HIDWORD(v30))
        {
          v22 = v29;
          v23 = 8 * HIDWORD(v30);
          do
          {
            v24 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((v6 + 64), v22, v17);
            WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove((v6 + 64), v24);
            ++v22;
            v23 -= 8;
          }

          while (v23);
        }
      }

      if (!*v12 || !*(*v12 - 12))
      {
        if (HIDWORD(v32) == v32)
        {
          WTF::Vector<WebCore::ClientOrigin,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ClientOrigin&>(&v31, v6);
        }

        else
        {
          v11 = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v31 + (HIDWORD(v32) << 6)), v6);
          mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v11 + 32, v6 + 32);
          ++HIDWORD(v32);
        }
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v29, v10);
      do
      {
        v6 += 72;
      }

      while (v6 != v7 && WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v6));
    }

    while (v6 != v8);
    if (HIDWORD(v32))
    {
      v25 = v31;
      v26 = HIDWORD(v32) << 6;
      do
      {
        v27 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>( v3,  v25);
        WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::ObjectIdentifierGeneric<IPC::Connection::UniqueIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(v3, v27);
        v25 += 64;
        v26 -= 64;
      }

      while (v26);
    }
  }

  return WTF::Vector<WebCore::ClientOrigin,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v5);
}

uint64_t WebKit::NetworkCORSPreflightChecker::NetworkCORSPreflightChecker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  *(a1 + 16) = 1;
  *a1 = &unk_1F10FF548;
  *(a1 + 8) = 0;
  WTF::URL::URL(a1 + 24, a4);
  WTF::URL::URL(a1 + 64, (a4 + 40));
  *(a1 + 104) = *(a4 + 80);
  v12 = *(a4 + 88);
  *(a4 + 88) = 0;
  *(a1 + 112) = v12;
  *(a1 + 128) = 0;
  *(a1 + 120) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 120, (a4 + 96));
  *(a1 + 144) = 0;
  *(a1 + 136) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 136, (a4 + 112));
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 152, (a4 + 128));
  v13 = *(a4 + 144);
  *(a1 + 172) = *(a4 + 148);
  *(a1 + 168) = v13;
  v14 = *(a4 + 152);
  *(a4 + 152) = 0;
  *(a1 + 176) = v14;
  v15 = *(a4 + 160);
  *(a4 + 160) = 0;
  *(a1 + 184) = v15;
  v16 = *(a4 + 168);
  *(a4 + 168) = 0;
  *(a1 + 192) = v16;
  v17 = *(a4 + 176);
  *(a1 + 208) = *(a4 + 184);
  *(a1 + 200) = v17;
  v18 = *(a4 + 192);
  *(a4 + 192) = 0;
  *(a1 + 216) = v18;
  v19 = *(a4 + 200);
  *(a4 + 200) = 0;
  *(a1 + 224) = v19;
  v20 = *(a4 + 208);
  *(a4 + 208) = 0;
  *(a1 + 232) = v20;
  v21 = *(a4 + 216);
  *(a4 + 216) = 0;
  *(a1 + 240) = v21;
  v22 = *(a4 + 224);
  *(a4 + 224) = 0;
  *(a1 + 248) = v22;
  v23 = *(a4 + 232);
  *(a1 + 269) = *(a4 + 245);
  *(a1 + 256) = v23;
  atomic_fetch_add((a2 + 144), 1u);
  *(a1 + 280) = a2;
  WebCore::ResourceResponseBase::ResourceResponseBase((a1 + 288));
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 426) = *(a1 + 426) & 0xF1 | 4;
  v24 = *a6;
  *a6 = 0;
  *(a1 + 552) = v24;
  *(a1 + 560) = 0;
  *(a1 + 568) = a5;
  WebCore::ResourceRequest::ResourceRequest((a1 + 584));
  WebCore::ResourceResponseBase::ResourceResponseBase((a1 + 784));
  *(a1 + 1032) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 922) = *(a1 + 922) & 0xF1 | 4;
  WebCore::NetworkLoadMetrics::NetworkLoadMetrics((a1 + 1048));
  if (a3)
  {
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 8), a3);
    v25 = *(a3 + 8);
    if (v25)
    {
      atomic_fetch_add(v25, 1u);
    }
  }

  else
  {
    v25 = 0;
  }

  *(a1 + 1176) = v25;
  return a1;
}

void WebKit::NetworkCORSPreflightChecker::~NetworkCORSPreflightChecker(WebKit::NetworkCORSPreflightChecker *this, void *a2)
{
  v3 = *(this + 70);
  if (v3)
  {
    v4 = v3 + 1;
    while (1)
    {
      v5 = *v4;
      if ((*v4 & 1) == 0)
      {
        break;
      }

      v6 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v5)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_7:
    v7 = v3[3];
    v3[3] = 0;
    if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v7);
      WTF::fastFree(v7, a2);
    }

    (*(*v3 + 16))(v3);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v3 + 1);
  }

  if (*(this + 69))
  {
    v28 = 0;
    v29 = 0;
    WTF::URL::invalidate(&v29);
    v30 = 0;
    v31 = 0;
    v32 = 3;
    cf = 0;
    v34 = 1;
    v8 = *(this + 69);
    *(this + 69) = 0;
    (*(*v8 + 16))(v8, &v28);
    (*(*v8 + 8))(v8);
    v9 = cf;
    cf = 0;
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = v30;
    v30 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }

    v11 = v29;
    v29 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }

    v12 = v28;
    v28 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }
  }

  v13 = *(this + 147);
  *(this + 147) = 0;
  if (v13 && atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13);
    WTF::fastFree(v13, a2);
  }

  v14 = *(this + 146);
  *(this + 146) = 0;
  if (v14)
  {
    WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v14, a2);
  }

  v15 = *(this + 142);
  *(this + 142) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  v16 = *(this + 129);
  *(this + 129) = 0;
  if (v16)
  {
    CFRelease(v16);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((this + 784), a2);
  WebCore::ResourceRequest::~ResourceRequest((this + 584));
  v18 = *(this + 70);
  *(this + 70) = 0;
  if (v18)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v18 + 8));
  }

  v19 = *(this + 69);
  *(this + 69) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(this + 67);
  *(this + 67) = 0;
  if (v20)
  {
    CFRelease(v20);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase((this + 288), v17);
  v22 = *(this + 35);
  *(this + 35) = 0;
  if (v22 && atomic_fetch_add(v22 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v22 + 36);
    (*(*v22 + 24))(v22);
  }

  v23 = *(this + 31);
  *(this + 31) = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v21);
  }

  v24 = *(this + 30);
  *(this + 30) = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v21);
  }

  v25 = *(this + 29);
  *(this + 29) = 0;
  if (v25)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v25, v21);
  }

  v26 = *(this + 28);
  *(this + 28) = 0;
  if (v26)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v26, v21);
  }

  WebCore::ResourceRequest::~ResourceRequest((this + 24));
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v27);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::NetworkCORSPreflightChecker::~NetworkCORSPreflightChecker(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::NetworkCORSPreflightChecker::startPreflight(WebKit::NetworkCORSPreflightChecker *this)
{
  v90 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 134217984;
    *(buf + 4) = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - NetworkCORSPreflightChecker::startPreflight", buf, 0xCu);
  }

  memset(buf, 0, 44);
  WebCore::ResourceRequest::ResourceRequest(v70);
  v77 = 0;
  v78 = 1;
  v79 = 0;
  v80[0] = 0;
  v81 = 0;
  v84 = 0;
  v86 = 0;
  v82 = 0u;
  v83 = 0;
  v87 = 16777472;
  v88 = 0;
  v89 = 0;
  WebCore::createAccessControlPreflightRequest((this + 24), *(this + 28), (this + 240), *(this + 276));
  WebCore::ResourceRequestBase::RequestData::operator=(v70, &v50);
  v4 = v52;
  v52 = 0;
  v5 = v71;
  v71 = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  v6 = v53;
  v53 = 0;
  v7 = v72;
  v72 = v6;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v3);
  }

  v8 = v54;
  v54 = 0;
  v9 = v73;
  v73 = v8;
  if (v9)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v9);
  }

  v74 = v55;
  v75 = v56;
  v10 = v57;
  v57 = 0;
  v11 = cf;
  cf = v10;
  if (v11)
  {
    CFRelease(v11);
  }

  WebCore::ResourceRequest::~ResourceRequest(&v50);
  v12 = *(this + 31);
  v88 = *(this + 137);
  if (v12)
  {
    WebCore::ResourceRequestBase::setHTTPHeaderField();
  }

  if (*(this + 568) == 1)
  {
    LOBYTE(v50) = 1;
    WebCore::ResourceRequest::ResourceRequest(v51, v70);
    WebCore::ResourceResponseBase::ResourceResponseBase(v59);
    v61 = 0;
    v62 = 0;
    v60 = v60 & 0xF1 | 4;
    WebCore::NetworkLoadMetrics::NetworkLoadMetrics(v63);
    *(this + 576) = v50;
    WebCore::ResourceRequestBase::RequestData::operator=(this + 584, v51);
    v14 = v53;
    v53 = 0;
    v15 = *(this + 92);
    *(this + 92) = v14;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v13);
    }

    v16 = v54;
    v54 = 0;
    v17 = *(this + 93);
    *(this + 93) = v16;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v13);
    }

    v18 = v55;
    v55 = 0;
    v19 = *(this + 94);
    *(this + 94) = v18;
    if (v19)
    {
      WTF::RefCounted<WebCore::FormData>::deref(v19);
    }

    *(this + 95) = v56;
    *(this + 768) = v57;
    v20 = v58;
    v58 = 0;
    v21 = *(this + 97);
    *(this + 97) = v20;
    if (v21)
    {
      CFRelease(v21);
    }

    WebCore::ResourceResponseBase::operator=(this + 784, v59);
    v23 = v61;
    v61 = 0;
    v24 = *(this + 129);
    *(this + 129) = v23;
    if (v24)
    {
      CFRelease(v24);
    }

    *(this + 1040) = v62;
    v25 = v63[3];
    *(this + 1080) = v63[2];
    *(this + 1096) = v25;
    *(this + 1112) = v63[4];
    *(this + 141) = v64;
    v26 = v63[1];
    *(this + 1048) = v63[0];
    *(this + 1064) = v26;
    v27 = v65;
    v65 = 0;
    v28 = *(this + 142);
    *(this + 142) = v27;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v22);
    }

    *(this + 145) = v67;
    *(this + 1144) = v66;
    v29 = v68;
    v68 = 0;
    v30 = *(this + 146);
    *(this + 146) = v29;
    if (v30)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v30, v22);
      v49 = v68;
      v68 = 0;
      if (v49)
      {
        WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v49, v22);
      }
    }

    v31 = v65;
    v65 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v22);
    }

    v32 = v61;
    v61 = 0;
    if (v32)
    {
      CFRelease(v32);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v59, v22);
    WebCore::ResourceRequest::~ResourceRequest(v51);
  }

  v33 = *(this + 32);
  *&buf[0] = *(this + 33);
  HIBYTE(v87) = *(this + 273);
  v34 = *(this + 35);
  v50 = v33;
  v35 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v34 + 240), &v50);
  if (v35)
  {
    v37 = v35;
    ++*(v35 + 16);
    v38 = WTF::fastMalloc(0x318);
    v39 = (WebKit::NetworkDataTaskCocoa::NetworkDataTaskCocoa(v38, v37, this, buf) + 8);
    while (1)
    {
      v40 = *v39;
      if ((*v39 & 1) == 0)
      {
        break;
      }

      v41 = *v39;
      atomic_compare_exchange_strong_explicit(v39, &v41, v40 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v41 == v40)
      {
        goto LABEL_44;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v39);
LABEL_44:
    v42 = *(this + 70);
    *(this + 70) = v38;
    if (v42)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref((v42 + 8));
    }

    (*(*v38 + 24))(v38);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v39);
    v43 = *(v37 + 4);
    if (!v43)
    {
      result = 290;
      __break(0xC471u);
      return result;
    }

    *(v37 + 4) = v43 - 1;
  }

  if (v86 == 1)
  {
    v48 = v85;
    v85 = 0;
    if (v48)
    {
    }
  }

  WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v82, v36);
  if (v81 == 1)
  {
    WebKit::NavigationActionData::~NavigationActionData(v80, v44);
  }

  WebCore::ResourceRequest::~ResourceRequest(v70);
  v46 = *&buf[2];
  *&buf[2] = 0;
  if (v46)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v46, v45);
  }

  result = *(&buf[1] + 1);
  *(&buf[1] + 1) = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(result, v45);
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCORSPreflightChecker::willPerformHTTPRedirection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(a1 + 568) == 1)
  {
    WebCore::ResourceResponseBase::operator=(a1 + 784, a2);
    v7 = *(a2 + 248);
    *(a2 + 248) = 0;
    v8 = *(a1 + 1032);
    *(a1 + 1032) = v7;
    if (v8)
    {
      CFRelease(v8);
    }

    *(a1 + 1040) = *(a2 + 256);
  }

  v9 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 134217984;
    *(buf + 4) = a1;
    _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%p - NetworkCORSPreflightChecker::willPerformHTTPRedirection", buf, 0xCu);
  }

  WebCore::ResourceRequest::ResourceRequest(buf);
  v10 = *a4;
  *a4 = 0;
  (*(*v10 + 16))(v10, buf);
  (*(*v10 + 8))(v10);
  WebCore::ResourceRequest::~ResourceRequest(buf);
  v11 = *(MEMORY[0x1E69E26C8] + 8);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v12 = *&buf[0];
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = WebCore::ResourceRequestBase::url((a1 + 24));
  v14 = WebCore::ResourceResponseBase::httpStatusCode(a2);
  *&buf[0] = "Preflight response is not successful. Status code: ";
  *(&buf[0] + 1) = 52;
  v26 = v14;
  result = WTF::tryMakeString<WTF::ASCIILiteral,int>(buf, &v26, &v25);
  if (!v25)
  {
    __break(0xC471u);
    return result;
  }

  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  }

  *&buf[0] = v12;
  v16 = *v13;
  if (*v13)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  }

  *(&buf[0] + 1) = v16;
  v17 = *(v13 + 24);
  buf[1] = *(v13 + 8);
  buf[2] = v17;
  v18 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
  }

  v28 = v18;
  v29 = 0;
  v30 = 2;
  cf = 0;
  v32 = 1;
  v19 = *(a1 + 552);
  *(a1 + 552) = 0;
  (*(*v19 + 16))(v19, buf);
  (*(*v19 + 8))(v19);
  v21 = cf;
  cf = 0;
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = v28;
  v28 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v20);
  }

  v23 = *(&buf[0] + 1);
  *(&buf[0] + 1) = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v20);
  }

  v24 = *&buf[0];
  *&buf[0] = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v20);
  }

  result = v25;
  v25 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v20);
    if (!v12)
    {
      return result;
    }
  }

  else if (!v12)
  {
    return result;
  }

  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v12, v20);
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCORSPreflightChecker::didReceiveChallenge(uint64_t a1, WebCore::AuthenticationChallengeBase *a2, char a3, uint64_t *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(WebCore::AuthenticationChallengeBase::protectionSpace(a2) + 21);
    *v16 = 134218240;
    *&v16[4] = a1;
    *&v16[12] = 1024;
    *&v16[14] = v9;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - NetworkCORSPreflightChecker::didReceiveChallenge, authentication scheme: %u", v16, 0x12u);
  }

  if (*(WebCore::AuthenticationChallengeBase::protectionSpace(a2) + 21) - 7 >= 2)
  {
    WebCore::CredentialBase::CredentialBase(v16);
    cf = 0;
    v12 = *a4;
    *a4 = 0;
    (*(*v12 + 16))(v12, 0, v16);
    (*(*v12 + 8))(v12);
    v14 = cf;
    cf = 0;
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = *&v16[8];
    *&v16[8] = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v13);
    }

    result = *v16;
    *v16 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  else
  {
    WebKit::NetworkProcess::protectedAuthenticationManager(*(a1 + 280), v16);
    v10 = *v16;
    result = WebKit::AuthenticationManager::didReceiveAuthenticationChallenge(*v16, *(a1 + 256), *(a1 + 264), *(a1 + 264) != 0, (*(a1 + 232) + 8), a2, a3, a4);
    if (v10)
    {
      return WebKit::AuthenticationManager::deref(v10);
    }
  }

  return result;
}

uint64_t WebKit::NetworkCORSPreflightChecker::didReceiveResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    v16 = a1;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - NetworkCORSPreflightChecker::didReceiveResponse", &v15, 0xCu);
  }

  if (*(a1 + 568) == 1)
  {
    WebCore::ResourceResponseBase::operator=(a1 + 784, a2);
    v9 = *(a2 + 248);
    if (v9)
    {
      CFRetain(*(a2 + 248));
    }

    v10 = *(a1 + 1032);
    *(a1 + 1032) = v9;
    if (v10)
    {
      CFRelease(v10);
    }

    *(a1 + 1040) = *(a2 + 256);
  }

  WebCore::ResourceResponseBase::operator=(a1 + 288, a2);
  v11 = *(a2 + 248);
  *(a2 + 248) = 0;
  v12 = *(a1 + 536);
  *(a1 + 536) = v11;
  if (v12)
  {
    CFRelease(v12);
  }

  *(a1 + 544) = *(a2 + 256);
  v13 = *a5;
  *a5 = 0;
  (*(*v13 + 16))(v13, 0);
  return (*(*v13 + 8))(v13);
}

void WebKit::NetworkCORSPreflightChecker::didReceiveData(WebKit::NetworkCORSPreflightChecker *this, const WebCore::SharedBuffer *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = this;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - NetworkCORSPreflightChecker::didReceiveData", &v4, 0xCu);
  }
}

atomic_uint *WebKit::NetworkCORSPreflightChecker::didCompleteWithError(WebKit::NetworkCORSPreflightChecker *this, const WebCore::ResourceError *a2, const WebCore::NetworkLoadMetrics *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  if (*(this + 568) == 1)
  {
    v6 = *(a3 + 1);
    *(this + 1048) = *a3;
    *(this + 1064) = v6;
    v7 = *(a3 + 2);
    v8 = *(a3 + 3);
    v9 = *(a3 + 4);
    *(this + 141) = *(a3 + 10);
    *(this + 1096) = v8;
    *(this + 1112) = v9;
    *(this + 1080) = v7;
    WTF::String::operator=(this + 142, a3 + 11);
    v11 = *(a3 + 6);
    *(this + 145) = *(a3 + 14);
    *(this + 1144) = v11;
    v12 = *(a3 + 15);
    if (v12)
    {
      ++*v12;
    }

    v13 = *(this + 146);
    *(this + 146) = v12;
    if (v13)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v13, v10);
    }
  }

  v14 = *(a2 + 60);
  v15 = qword_1ED6416F0;
  v16 = os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      *buf = 134217984;
      *&buf[4] = this;
      _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "%p - NetworkCORSPreflightChecker::didCompleteWithError", buf, 0xCu);
    }

    v17 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    }

    *buf = v17;
    v18 = *(a2 + 1);
    if (v18)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    }

    *&buf[8] = v18;
    v19 = *(a2 + 2);
    *&buf[16] = *(a2 + 1);
    v49 = v19;
    v20 = *(a2 + 6);
    if (v20)
    {
      atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
    }

    v50[0] = v20;
    LODWORD(v50[1]) = *(a2 + 14);
    WORD2(v50[1]) = *(a2 + 30);
    v21 = *(a2 + 8);
    cf = v21;
    if (v21)
    {
      CFRetain(v21);
    }

    v52 = *(a2 + 72);
    if (BYTE4(v50[1]) <= 1u)
    {
      WebCore::ResourceErrorBase::setType();
    }

    v22 = *(this + 69);
    *(this + 69) = 0;
    (*(*v22 + 16))(v22, buf);
    (*(*v22 + 8))(v22);
    v24 = cf;
    cf = 0;
    if (v24)
    {
      CFRelease(v24);
    }

    v25 = v50[0];
    v50[0] = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v23);
    }

    v26 = *&buf[8];
    *&buf[8] = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v23);
    }

    result = *buf;
    *buf = 0;
    if (result)
    {
      goto LABEL_80;
    }

    return result;
  }

  if (v16)
  {
    *buf = 134218240;
    *&buf[4] = this;
    *&buf[12] = 1024;
    *&buf[14] = WebCore::ResourceResponseBase::httpStatusCode((this + 288));
    _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "%p - NetworkCORSPreflightChecker::didComplete http_status_code=%d", buf, 0x12u);
  }

  WebCore::validatePreflightResponse();
  if (v47 != 1)
  {
    *buf = 0;
    *&buf[8] = 0;
    WTF::URL::invalidate(&buf[8]);
    cf = 0;
    memset(v50, 0, 14);
    v52 = 1;
    v35 = *(this + 69);
    *(this + 69) = 0;
    (*(*v35 + 16))(v35, buf);
    (*(*v35 + 8))(v35);
    v36 = cf;
    cf = 0;
    if (v36)
    {
      CFRelease(v36);
    }

    v37 = v50[0];
    v50[0] = 0;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v23);
    }

    v38 = *&buf[8];
    *&buf[8] = 0;
    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v38, v23);
    }

    result = *buf;
    *buf = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      goto LABEL_76;
    }

    goto LABEL_78;
  }

  v28 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    WTF::String::utf8();
    v29 = v45 ? v45 + 16 : 0;
    *buf = 134218242;
    *&buf[4] = this;
    *&buf[12] = 2080;
    *&buf[14] = v29;
    _os_log_impl(&dword_19D52D000, v28, OS_LOG_TYPE_DEFAULT, "%p - NetworkCORSPreflightChecker::didComplete, AccessControl error: %s", buf, 0x16u);
    if (v45)
    {
      if (*v45 == 1)
      {
        WTF::fastFree(v45, v30);
      }

      else
      {
        --*v45;
      }
    }
  }

  v31 = *(MEMORY[0x1E69E26C8] + 8);
  if (!v31)
  {
    v33 = WebCore::ResourceRequestBase::url((this + 24));
    if (v47)
    {
      v32 = 0;
      goto LABEL_58;
    }

LABEL_84:
    __break(1u);
  }

  if (v31 == 1)
  {
    v32 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    v33 = WebCore::ResourceRequestBase::url((this + 24));
    if (v47)
    {
      goto LABEL_43;
    }

    goto LABEL_84;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v32 = *buf;
  v33 = WebCore::ResourceRequestBase::url((this + 24));
  if ((v47 & 1) == 0)
  {
    goto LABEL_84;
  }

  if (!v32)
  {
LABEL_58:
    v34 = 1;
    goto LABEL_59;
  }

LABEL_43:
  v34 = 0;
  atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
LABEL_59:
  *buf = v32;
  v39 = *v33;
  if (*v33)
  {
    atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
  }

  *&buf[8] = v39;
  v40 = *(v33 + 24);
  *&buf[16] = *(v33 + 8);
  v49 = v40;
  if (v46)
  {
    atomic_fetch_add_explicit(v46, 2u, memory_order_relaxed);
  }

  v50[0] = v46;
  LODWORD(v50[1]) = 0;
  WORD2(v50[1]) = 2;
  cf = 0;
  v52 = 1;
  v41 = *(this + 69);
  *(this + 69) = 0;
  (*(*v41 + 16))(v41, buf);
  (*(*v41 + 8))(v41);
  v42 = cf;
  cf = 0;
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = v50[0];
  v50[0] = 0;
  if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v43, v23);
  }

  v44 = *&buf[8];
  *&buf[8] = 0;
  if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v44, v23);
  }

  result = *buf;
  *buf = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v23);
    if (v34)
    {
      goto LABEL_78;
    }
  }

  else if (v34)
  {
    goto LABEL_78;
  }

  if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = v32;
LABEL_76:
    result = WTF::StringImpl::destroy(result, v23);
  }

LABEL_78:
  if (v47 == 1)
  {
    result = v46;
    if (v46)
    {
LABEL_80:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v23);
      }
    }
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCORSPreflightChecker::wasBlocked(WebKit::NetworkCORSPreflightChecker *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v15[0]) = 134217984;
    *(v15 + 4) = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - NetworkCORSPreflightChecker::wasBlocked", v15, 0xCu);
  }

  v3 = *(MEMORY[0x1E69E26C8] + 8);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v4 = *&v15[0];
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = WebCore::ResourceRequestBase::url((this + 24));
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v6 = *&v15[0];
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *&v15[0] = v4;
  v7 = *v5;
  if (*v5)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(&v15[0] + 1) = v7;
  v8 = *(v5 + 24);
  v15[1] = *(v5 + 8);
  v15[2] = v8;
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v16 = v6;
  v17 = 0;
  v18 = 2;
  cf = 0;
  v20 = 1;
  v9 = *(this + 69);
  *(this + 69) = 0;
  (*(*v9 + 16))(v9, v15);
  (*(*v9 + 8))(v9);
  v11 = cf;
  cf = 0;
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = v16;
  v16 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = *(&v15[0] + 1);
  *(&v15[0] + 1) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  result = *&v15[0];
  *&v15[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v10);
    if (!v6)
    {
      goto LABEL_26;
    }
  }

  else if (!v6)
  {
    goto LABEL_26;
  }

  if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v6, v10);
  }

LABEL_26:
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v4, v10);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCORSPreflightChecker::cannotShowURL(WebKit::NetworkCORSPreflightChecker *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v15[0]) = 134217984;
    *(v15 + 4) = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - NetworkCORSPreflightChecker::cannotShowURL", v15, 0xCu);
  }

  v3 = *(MEMORY[0x1E69E26C8] + 8);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v4 = *&v15[0];
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = WebCore::ResourceRequestBase::url((this + 24));
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v6 = *&v15[0];
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *&v15[0] = v4;
  v7 = *v5;
  if (*v5)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(&v15[0] + 1) = v7;
  v8 = *(v5 + 24);
  v15[1] = *(v5 + 8);
  v15[2] = v8;
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v16 = v6;
  v17 = 0;
  v18 = 2;
  cf = 0;
  v20 = 1;
  v9 = *(this + 69);
  *(this + 69) = 0;
  (*(*v9 + 16))(v9, v15);
  (*(*v9 + 8))(v9);
  v11 = cf;
  cf = 0;
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = v16;
  v16 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = *(&v15[0] + 1);
  *(&v15[0] + 1) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  result = *&v15[0];
  *&v15[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v10);
    if (!v6)
    {
      goto LABEL_26;
    }
  }

  else if (!v6)
  {
    goto LABEL_26;
  }

  if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v6, v10);
  }

LABEL_26:
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v4, v10);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCORSPreflightChecker::wasBlockedByRestrictions(WebKit::NetworkCORSPreflightChecker *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416F0;
  if (os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v15[0]) = 134217984;
    *(v15 + 4) = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - NetworkCORSPreflightChecker::wasBlockedByRestrictions", v15, 0xCu);
  }

  v3 = *(MEMORY[0x1E69E26C8] + 8);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v4 = *&v15[0];
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = WebCore::ResourceRequestBase::url((this + 24));
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v6 = *&v15[0];
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *&v15[0] = v4;
  v7 = *v5;
  if (*v5)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(&v15[0] + 1) = v7;
  v8 = *(v5 + 24);
  v15[1] = *(v5 + 8);
  v15[2] = v8;
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v16 = v6;
  v17 = 0;
  v18 = 2;
  cf = 0;
  v20 = 1;
  v9 = *(this + 69);
  *(this + 69) = 0;
  (*(*v9 + 16))(v9, v15);
  (*(*v9 + 8))(v9);
  v11 = cf;
  cf = 0;
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = v16;
  v16 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = *(&v15[0] + 1);
  *(&v15[0] + 1) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  result = *&v15[0];
  *&v15[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v10);
    if (!v6)
    {
      goto LABEL_26;
    }
  }

  else if (!v6)
  {
    goto LABEL_26;
  }

  if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v6, v10);
  }

LABEL_26:
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v4, v10);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCORSPreflightChecker::wasBlockedByDisabledFTP(WebKit::NetworkCORSPreflightChecker *this)
{
  WebKit::ftpDisabledError((this + 24), &v8);
  v2 = *(this + 69);
  *(this + 69) = 0;
  (*(*v2 + 16))(v2, &v8);
  (*(*v2 + 8))(v2);
  v4 = cf;
  cf = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = v10;
  v10 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  v6 = v9;
  v9 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v3);
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

uint64_t WebKit::NetworkConnectionToWebProcess::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = WTF::fastMalloc(0x170);
  result = WebKit::NetworkConnectionToWebProcess::NetworkConnectionToWebProcess(v12, a1, a2, a3, a4, a5);
  *a6 = result;
  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::NetworkConnectionToWebProcess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0x100000000;
  v11 = a1 + 56;
  *(a1 + 64) = 0;
  v12 = (a1 + 64);
  *(a1 + 72) = 0;
  *a1 = &unk_1F10FF5E0;
  *(a1 + 8) = 0;
  *(a1 + 24) = &unk_1F10FF6B0;
  *(a1 + 32) = 0;
  *(a1 + 40) = &unk_1F10FF6F8;
  *(a1 + 48) = 0;
  *(a1 + 56) = &unk_1F10FF730;
  IPC::Connection::createServerConnection(a6, (a1 + 80));
  atomic_fetch_add((a2 + 144), 1u);
  *(a1 + 88) = a2;
  *(a1 + 96) = a4;
  *(a1 + 104) = 0;
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F10FF858;
  v13[1] = a1;
  *v32 = v13;
  WebKit::NetworkResourceLoadMap::NetworkResourceLoadMap(a1 + 112, v32);
  v14 = *v32;
  *v32 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  WebKit::NetworkMDNSRegister::NetworkMDNSRegister((a1 + 176), a1);
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = a3;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  v15 = WTF::fastMalloc(0x10);
  *v15 = 1;
  *(v15 + 1) = 0;
  *(a1 + 296) = v15;
  v17 = WebKit::NetworkOriginAccessPatterns::operator new(v15, v16);
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  *v17 = &unk_1F1102240;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = v17;
  v18 = *(a5 + 16);
  *(a1 + 328) = *a5;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = v18;
  v19 = WTF::RunLoop::mainSingleton(v17);
  if (WTF::RunLoop::isCurrent(v19))
  {
    v20 = *(a1 + 80);
    while (1)
    {
      v21 = *v20;
      if ((*v20 & 1) == 0)
      {
        break;
      }

      v31 = *v20;
      atomic_compare_exchange_strong_explicit(v20, &v31, v21 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v31 == v21)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v20);
LABEL_7:
    v22 = IPC::Connection::setOnlySendMessagesAsDispatchWhenWaitingForSyncReplyWhenProcessingSuchAMessage(v20, 1);
    v23 = WTF::RunLoop::currentSingleton(v22);
    IPC::Connection::open(v20, v11, v23);
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v12, v11);
    v24 = *v12;
    atomic_fetch_add(v24, 1u);
    v25 = WTF::fastMalloc(0x10);
    *v25 = &unk_1F10FF880;
    v25[1] = v24;
    *v32 = v25;
    IPC::Connection::setOutgoingMessageQueueIsGrowingLargeCallback(v20, v32);
    v26 = *v32;
    *v32 = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    WebKit::NetworkConnectionToWebProcess::establishSWServerConnection(a1);
    WebKit::NetworkConnectionToWebProcess::establishSharedWorkerServerConnection(a1);
    if ((*(a1 + 336) & 1) == 0)
    {
      v28 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(a1 + 272);
        v30 = *(a1 + 328);
        *v32 = 134218496;
        *&v32[4] = a1;
        v33 = 2048;
        v34 = v29;
        v35 = 2048;
        v36 = v30;
        _os_log_impl(&dword_19D52D000, v28, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::NetworkConnectionToWebProcess: webSocketEnabled is false (version=%llu)", v32, 0x20u);
      }
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v20);
    return a1;
  }

  else
  {
    result = 154;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::establishSWServerConnection(uint64_t this)
{
  v1 = this;
  v2 = *(this + 224);
  if (!v2 || !*(v2 + 8))
  {
    v3 = *(this + 88);
    v15 = *(this + 96);
    this = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v3 + 240), &v15);
    if (this)
    {
      v5 = this;
      ++*(this + 16);
      v6 = WebKit::NetworkSession::ensureSWServer(this, v4);
      v7 = v6 + 2;
      ++v6[2];
      WebKit::WebSWServerConnection::create(v1, v6, *(v1 + 80), &v15);
      v8 = v15;
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v15 + 2, v15);
      v10 = *(v8 + 8);
      atomic_fetch_add(v10, 1u);
      v11 = *(v1 + 224);
      *(v1 + 224) = v10;
      if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v11);
        WTF::fastFree(v11, v9);
      }

      v14 = v15;
      v15 = 0;
      WebCore::SWServer::addConnection();
      if (v14)
      {
        if (v14[4] == 1)
        {
          (*(*v14 + 8))(v14);
        }

        else
        {
          --v14[4];
        }
      }

      v12 = v15;
      v15 = 0;
      if (v12)
      {
        if (v12[4] == 1)
        {
          (*(*v12 + 8))(v12);
        }

        else
        {
          --v12[4];
        }
      }

      this = WTF::RefCounted<WebCore::SWServer>::deref(v7);
      v13 = *(v5 + 16);
      if (v13)
      {
        *(v5 + 16) = v13 - 1;
      }

      else
      {
        this = 290;
        __break(0xC471u);
      }
    }
  }

  return this;
}

uint64_t WebKit::NetworkConnectionToWebProcess::establishSharedWorkerServerConnection(uint64_t this)
{
  v1 = this;
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(this + 240);
  if (!v2 || !*(v2 + 8))
  {
    v3 = *(this + 88);
    *v16 = *(this + 96);
    this = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v3 + 240), v16);
    if (this)
    {
      v4 = this;
      ++*(this + 16);
      v5 = qword_1ED641300;
      if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v1 + 272);
        *v16 = 134218240;
        *&v16[4] = v1;
        v17 = 2048;
        v18 = v7;
        _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::establishSharedWorkerServerConnection:", v16, 0x16u);
      }

      WebKit::NetworkSession::ensureSharedWorkerServer(v4, v6);
      v9 = v8;
      ++v8[2];
      WebKit::WebSharedWorkerServerConnection::create(*(v1 + 88), v8, *(v1 + 80), *(v1 + 272), v16);
      v10 = *v16;
      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((*v16 + 16), *v16 + 8);
      v12 = *(v10 + 16);
      atomic_fetch_add(v12, 1u);
      v13 = *(v1 + 240);
      *(v1 + 240) = v12;
      if (v13 && atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v13);
        WTF::fastFree(v13, v11);
      }

      WebKit::WebSharedWorkerServer::addConnection(v9, v16);
      this = *v16;
      *v16 = 0;
      if (this)
      {
        if (*(this + 24) == 1)
        {
          this = (*(*this + 8))(this);
        }

        else
        {
          --*(this + 24);
        }
      }

      v14 = *(v9 + 8);
      if (!v14 || (*(v9 + 8) = v14 - 1, (v15 = *(v4 + 4)) == 0))
      {
        __break(0xC471u);
        JUMPOUT(0x19DC2274CLL);
      }

      *(v4 + 4) = v15 - 1;
    }
  }

  return this;
}

void WebKit::NetworkConnectionToWebProcess::~NetworkConnectionToWebProcess(WebKit::NetworkConnectionToWebProcess *this)
{
  v2 = WTF::RunLoop::mainSingleton(this);
  if ((WTF::RunLoop::isCurrent(v2) & 1) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC22C60);
  }

  IPC::Connection::invalidate(*(this + 10));
  WebKit::NetworkResourceLoadMap::clear((this + 112), v3);
  v4 = *(this + 35);
  v5 = WTF::HashTable<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::HashTraits<WebCore::MessagePortIdentifier>,WTF::FastMalloc>::begin(v4);
  v6 = v5;
  v8 = v7;
  if (v4)
  {
    v4 += 2 * *(v4 - 1);
  }

  if (v4 != v5)
  {
    while (1)
    {
      v9 = *(this + 11);
      ++*(v9 + 336);
      WebCore::MessagePortChannelRegistry::didCloseMessagePort();
      v10 = *(v9 + 336);
      if (!v10)
      {
        break;
      }

      *(v9 + 336) = v10 - 1;
      do
      {
        v6 += 2;
        if (v6 == v8)
        {
          break;
        }
      }

      while (*v6 == -1 || *v6 == 0);
      if (v6 == v4)
      {
        goto LABEL_14;
      }
    }

    __break(0xC471u);
LABEL_83:
    JUMPOUT(0x19DC22C40);
  }

LABEL_14:
  v12 = *(this + 36);
  *(this + 36) = 0;
  v13 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v12);
  v14 = v13;
  v16 = v15;
  if (v12)
  {
    v17 = &v12[2 * *(v12 - 1)];
  }

  else
  {
    v17 = 0;
  }

  if (v17 != v13)
  {
    do
    {
      v54 = v14[1];
      v14[1] = 0;
      (*(*v54 + 16))(v54);
      (*(*v54 + 8))(v54);
      do
      {
        v14 += 2;
      }

      while (v14 != v16 && (*v14 + 1) <= 1);
    }

    while (v14 != v17);
  }

  v18 = *(this + 11);
  v56 = *(this + 12);
  v19 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v18 + 248), &v56);
  if (v19)
  {
    v20 = v19;
    ++*(v19 + 8);
    WebCore::NetworkStorageSession::stopListeningForCookieChangeNotifications();
    v21 = *(v20 + 8);
    if (!v21)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC22CA0);
    }

    *(v20 + 8) = v21 - 1;
  }

  v22 = *(this + 11);
  v56 = *(this + 12);
  v23 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v22 + 248), &v56);
  if (v23)
  {
    v24 = v23;
    ++*(v23 + 8);
    WebCore::NetworkStorageSession::removeCookiesEnabledStateObserver();
    v25 = *(v24 + 8);
    if (!v25)
    {
      __break(0xC471u);
      goto LABEL_83;
    }

    *(v24 + 8) = v25 - 1;
  }

  v26 = *(this + 21);
  if (v26)
  {
    v55 = (v26 + 6);
    atomic_fetch_add(v26 + 6, 1u);
    WebKit::NetworkRTCProvider::close(v26);
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref(v55);
  }

  WebKit::NetworkConnectionToWebProcess::unregisterToRTCDataChannelProxy(this);
  WebKit::NetworkConnectionToWebProcess::unregisterSWConnection(*(this + 28));
  WebKit::NetworkConnectionToWebProcess::unregisterSharedWorkerConnection(this);
  if (v12)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v12, v27);
  }

  v28 = *(this + 45);
  if (v28)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteCDMProxy,WTF::RawPtrTraits<WebKit::RemoteCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v28, v27);
  }

  v29 = *(this + 44);
  if (v29)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v29, v27);
  }

  v30 = *(this + 40);
  if (v30)
  {
    WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashMap<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::deallocateTable(v30, v27);
  }

  v31 = *(this + 39);
  if (v31)
  {
    WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::deallocateTable(v31, v27);
  }

  WTF::UniqueRef<WebKit::NetworkOriginAccessPatterns>::~UniqueRef(this + 38, v27);
  v33 = *(this + 37);
  *(this + 37) = 0;
  if (v33)
  {
    WTF::RefCounted<WebKit::NetworkSchemeRegistry>::deref(v33, v32);
  }

  v34 = *(this + 36);
  if (v34)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(void)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MessageBatchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v34, v32);
  }

  v35 = *(this + 35);
  if (v35)
  {
    WTF::fastFree((v35 - 16), v32);
  }

  v36 = *(this + 33);
  *(this + 33) = 0;
  if (v36)
  {
    WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref((v36 + 40));
  }

  v37 = *(this + 31);
  *(this + 31) = 0;
  if (v37)
  {
    WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref((v37 + 24));
  }

  v38 = *(this + 30);
  *(this + 30) = 0;
  if (v38 && atomic_fetch_add(v38, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v38);
    WTF::fastFree(v38, v32);
  }

  v39 = *(this + 29);
  *(this + 29) = 0;
  if (v39)
  {
    if (v39[4] == 1)
    {
      (*(*v39 + 8))(v39);
    }

    else
    {
      --v39[4];
    }
  }

  v40 = *(this + 28);
  *(this + 28) = 0;
  if (v40 && atomic_fetch_add(v40, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v40);
    WTF::fastFree(v40, v32);
  }

  v41 = *(this + 26);
  if (v41)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v41, v32);
  }

  WebKit::NetworkMDNSRegister::~NetworkMDNSRegister((this + 176));
  v43 = *(this + 21);
  *(this + 21) = 0;
  if (v43)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v43 + 24));
  }

  v44 = *(this + 20);
  if (v44)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v44, v42);
  }

  WTF::Vector<WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 36, v42);
  v46 = *(this + 17);
  if (v46)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v46, v45);
  }

  WebKit::NetworkResourceLoadMap::~NetworkResourceLoadMap((this + 112));
  v48 = *(this + 13);
  if (v48)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v48, v47);
  }

  v49 = *(this + 11);
  *(this + 11) = 0;
  if (v49 && atomic_fetch_add(v49 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v49 + 36);
    (*(*v49 + 24))(v49);
  }

  v50 = *(this + 10);
  *(this + 10) = 0;
  if (v50)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v50);
  }

  *(this + 7) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 8, v47);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 6, v51);
  WTF::WeakPtrFactory<WebKit::SessionSet,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 4, v52);
  WTF::WeakPtrFactory<WebKit::SessionSet,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v53);
  if (*(this + 5) != 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC22C80);
  }
}

void WebKit::NetworkConnectionToWebProcess::unregisterToRTCDataChannelProxy(WebKit::NetworkProcess **this)
{
  if (*(this + 256) == 1)
  {
    v6[3] = v1;
    v6[4] = v2;
    WebKit::NetworkProcess::protectedRTCDataChannelProxy(this[11], v6);
    v4 = v6[0];
    WebKit::RTCDataChannelRemoteManagerProxy::unregisterConnectionToWebProcess(v6[0], this);
    if (v4)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v4 + 1, v5);
    }
  }
}

_DWORD *WebKit::NetworkConnectionToWebProcess::unregisterSWConnection(_DWORD *this)
{
  if (this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(v2 + 24);
      if (v3)
      {
        this = *(v3 + 8);
        if (this)
        {
          v4 = this + 2;
          ++this[2];
          WebCore::SWServer::removeConnection();

          return WTF::RefCounted<WebCore::SWServer>::deref(v4);
        }
      }
    }
  }

  return this;
}

void WebKit::NetworkConnectionToWebProcess::unregisterSharedWorkerConnection(WebKit::NetworkConnectionToWebProcess *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 34);
    v11 = 134218240;
    v12 = this;
    v13 = 2048;
    v14 = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::unregisterSharedWorkerConnection:", &v11, 0x16u);
  }

  v4 = *(this + 30);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      ++*(v5 + 16);
      v6 = WebKit::WebSharedWorkerServerConnection::server((v5 - 8));
      if (v6)
      {
        v7 = v6;
        ++*(v6 + 8);
        v8 = *(this + 30);
        if (!v8 || (v9 = *(v8 + 8)) == 0 || (WebKit::WebSharedWorkerServer::removeConnection(v6, *(v9 + 48)), (v10 = *(v7 + 8)) == 0))
        {
          __break(0xC471u);
          JUMPOUT(0x19DC22F08);
        }

        *(v7 + 8) = v10 - 1;
      }

      if (*(v5 + 16) == 1)
      {
        (*(*(v5 - 8) + 8))(v5 - 8);
      }

      else
      {
        --*(v5 + 16);
      }
    }
  }
}

void non-virtual thunk toWebKit::NetworkConnectionToWebProcess::~NetworkConnectionToWebProcess(WebKit::NetworkConnectionToWebProcess *this)
{
  WebKit::NetworkConnectionToWebProcess::~NetworkConnectionToWebProcess((this - 24));
}

{
  WebKit::NetworkConnectionToWebProcess::~NetworkConnectionToWebProcess((this - 40));
}

{
  WebKit::NetworkConnectionToWebProcess::~NetworkConnectionToWebProcess((this - 56));
}

{
  WebKit::NetworkConnectionToWebProcess::operator delete((this - 24));
}

{
  WebKit::NetworkConnectionToWebProcess::operator delete((this - 40));
}

{
  WebKit::NetworkConnectionToWebProcess::operator delete((this - 56));
}

double WebKit::NetworkConnectionToWebProcess::operator delete(WebKit::NetworkConnectionToWebProcess *a1)
{
  WebKit::NetworkConnectionToWebProcess::~NetworkConnectionToWebProcess(a1);
  if (atomic_load((v1 + 72)))
  {
    result = 0.0;
    *(v1 + 336) = 0u;
    *(v1 + 352) = 0u;
    *(v1 + 304) = 0u;
    *(v1 + 320) = 0u;
    *(v1 + 272) = 0u;
    *(v1 + 288) = 0u;
    *(v1 + 240) = 0u;
    *(v1 + 256) = 0u;
    *(v1 + 208) = 0u;
    *(v1 + 224) = 0u;
    *(v1 + 176) = 0u;
    *(v1 + 192) = 0u;
    *(v1 + 144) = 0u;
    *(v1 + 160) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *v1 = 0u;
  }

  else
  {

    WTF::fastFree(v1, v2);
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::loadImageForDecoding(void *a1, WebCore::ResourceRequestBase *this, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = WebCore::ResourceRequestBase::url(this);
  v11 = *v10;
  if (*v10)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
  }

  if (*(v10 + 8))
  {
    v12 = a1[11];
    *buf = a1[12];
    v13 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v12 + 240), buf);
    if (v13)
    {
      v14 = v13;
      ++v13[4];
      result = (*(*v13 + 144))(v13, this, a3, a4, a5);
      v17 = v14[4];
      if (v17)
      {
        v14[4] = v17 - 1;
        goto LABEL_7;
      }

LABEL_23:
      __break(0xC471u);
      JUMPOUT(0x19DC2331CLL);
    }
  }

  else
  {
    v24 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::NetworkConnectionToWebProcess::loadImageForDecoding(WebCore::ResourceRequest &&, WebPageProxyIdentifier, uint64_t, CompletionHandler<void (Expected<Ref<WebCore::FragmentedSharedBuffer>, WebCore::ResourceError> &&)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v24, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 224: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a1[10] + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      goto LABEL_23;
    }
  }

  v25[0] = 0;
  v25[1] = 0;
  WTF::URL::invalidate(&v25[1]);
  v30 = 0;
  v29 = 0;
  v32 = 1;
  v28 = 0;
  v38 = 0;
  v37 = 0;
  cf = 0;
  v18 = *v25;
  v25[1] = 0;
  *buf = v18;
  v34 = v26;
  LODWORD(v26) = v26 & 0xFFFFFFFE;
  v35 = v27;
  v36 = 0;
  v39 = 0;
  v40 = 1;
  v41 = 1;
  v19 = *a5;
  *a5 = 0;
  (*(*v19 + 16))(v19, buf);
  (*(*v19 + 8))(v19);
  std::experimental::fundamentals_v3::expected<WTF::Ref<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>,WebCore::ResourceError>::~expected(buf, v20);
  v21 = cf;
  cf = 0;
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = v28;
  v28 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v16);
  }

  v23 = v25[1];
  v25[1] = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v16);
  }

  result = 0;
LABEL_7:
  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v11, v16);
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::didCleanupResourceLoader(WebKit::NetworkProcess **this, WebKit::NetworkResourceLoader *a2)
{
  v4 = WTF::RunLoop::mainSingleton(this);
  if ((WTF::RunLoop::isCurrent(v4) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (*(a2 + 4625) != 1)
  {
    v5 = *(a2 + 410);
    if (v5)
    {

      return WebKit::NetworkResourceLoadMap::remove((this + 14), v5);
    }

LABEL_10:
    __break(0xC471u);
    JUMPOUT(0x19DC233C4);
  }

  v7 = this[11];

  return WebKit::NetworkProcess::removeKeptAliveLoad(v7, a2);
}

_DWORD *WebKit::NetworkConnectionToWebProcess::transferKeptAliveLoad(WebKit::NetworkConnectionToWebProcess *this, WebKit::NetworkResourceLoader *a2)
{
  v4 = WTF::RunLoop::mainSingleton(this);
  if ((WTF::RunLoop::isCurrent(v4) & 1) == 0 || (v5 = *(a2 + 410)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC234ACLL);
  }

  result = WebKit::NetworkResourceLoadMap::take(this + 112, v5, &v9);
  if (v9)
  {
    v7 = *(this + 11);
    v8 = v9;
    WebKit::NetworkProcess::addKeptAliveLoad(v7, &v8);
    result = v8;
    v8 = 0;
    if (result)
    {
      if (result[5] == 1)
      {
        return (*(*result + 24))(result);
      }

      else
      {
        --result[5];
      }
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::dispatchMessage(WebKit::NetworkConnectionToWebProcess *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(a3 + 25) >= 0x107Fu)
  {
    v6 = 4223;
  }

  else
  {
    v6 = *(a3 + 25);
  }

  v7 = LOBYTE((&IPC::Detail::messageDescriptions)[3 * v6 + 2]);
  if (v7 == 200)
  {
    v8 = *(this + 28);
    if (!v8)
    {
      return 1;
    }

    v9 = *(v8 + 8);
    if (!v9)
    {
      return 1;
    }

    ++*(v9 + 4);
    WebKit::WebSWServerConnection::didReceiveMessage(v9, a2, a3);
    v10 = *(v9 + 4) - 1;
    if (*(v9 + 4) != 1)
    {
      goto LABEL_8;
    }

LABEL_58:
    (*(*v9 + 8))(v9);
    return 1;
  }

  v11 = 0;
  if (LOBYTE((&IPC::Detail::messageDescriptions)[3 * v6 + 2]) >= 0x2Au)
  {
    if (LOBYTE((&IPC::Detail::messageDescriptions)[3 * v6 + 2]) <= 0x2Au)
    {
      if ((*(a3 + 7) - 1) < 0xFFFFFFFFFFFFFFFELL)
      {
        *v39 = *(a3 + 7);
        v13 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(this + 14, v39);
        if (!v13)
        {
          return 1;
        }

        v9 = v13;
        ++*(v13 + 5);
        WebKit::NetworkResourceLoader::didReceiveMessage(v13, a2, a3);
        if (*(v9 + 5) != 1)
        {
          --*(v9 + 5);
          return 1;
        }

        goto LABEL_28;
      }

      v26 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *v39 = 136446210;
        *&v39[4] = "BOOL WebKit::NetworkConnectionToWebProcess::dispatchMessage(IPC::Connection &, IPC::Decoder &)";
        _os_log_fault_impl(&dword_19D52D000, v26, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 266: Invalid message dispatched %{public}s", v39, 0xCu);
      }

      *(*(this + 10) + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC23CE8);
      }

      return 0;
    }

    if (LOBYTE((&IPC::Detail::messageDescriptions)[3 * v6 + 2]) <= 0x2Du)
    {
      if (v7 == 43)
      {
        if ((*(this + 84) & 1) == 0)
        {
          v27 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            v28 = *(this + 34);
            v29 = (&IPC::Detail::messageDescriptions)[3 * v6];
            v30 = *(this + 41);
            *v39 = 134218754;
            *&v39[4] = this;
            v40 = 2048;
            v41 = v28;
            v42 = 2080;
            v43 = v29;
            v44 = 2048;
            v45 = v30;
            _os_log_error_impl(&dword_19D52D000, v27, OS_LOG_TYPE_ERROR, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::dispatchMessage: ignoring message '%s' as webSocketEnabled is false (version=%llu)", v39, 0x2Au);
          }

          return 1;
        }

        v24 = *(a3 + 7);
        if ((v24 - 1) < 0xFFFFFFFFFFFFFFFELL)
        {
          v25 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(this + 13, v24);
          if (!v25)
          {
            return 1;
          }

          v9 = v25;
          ++*(v25 + 6);
          (*(*v25 + 80))(v25, a2, a3);
          if (*(v9 + 6) != 1)
          {
            --*(v9 + 6);
            return 1;
          }

          goto LABEL_58;
        }

        v38 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
        {
          *v39 = 136446210;
          *&v39[4] = "BOOL WebKit::NetworkConnectionToWebProcess::dispatchMessage(IPC::Connection &, IPC::Decoder &)";
          _os_log_fault_impl(&dword_19D52D000, v38, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 280: Invalid message dispatched %{public}s", v39, 0xCu);
        }

        *(*(this + 10) + 94) = 1;
        if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DC23C20);
        }
      }

      else
      {
        if (v7 != 45)
        {
          return v11;
        }

        v16 = *(a3 + 7);
        if ((v16 - 1) < 0xFFFFFFFFFFFFFFFELL)
        {
          v17 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::WebTransportSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 45, v16);
          if (!v17)
          {
            return 1;
          }

          v9 = v17;
          ++*(v17 + 4);
          WebKit::NetworkTransportSession::didReceiveMessage(v17, a2, a3);
          v10 = *(v9 + 4) - 1;
          if (*(v9 + 4) != 1)
          {
            goto LABEL_8;
          }

LABEL_28:
          (*(*v9 + 24))(v9);
          return 1;
        }

        v36 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
        {
          *v39 = 136446210;
          *&v39[4] = "BOOL WebKit::NetworkConnectionToWebProcess::dispatchMessage(IPC::Connection &, IPC::Decoder &)";
          _os_log_fault_impl(&dword_19D52D000, v36, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 308: Invalid message dispatched %{public}s", v39, 0xCu);
        }

        *(*(this + 10) + 94) = 1;
        if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DC23BA8);
        }
      }

      return 0;
    }

    if (LOBYTE((&IPC::Detail::messageDescriptions)[3 * v6 + 2]) > 0xC8u)
    {
      if (v7 == 201)
      {
        v9 = *(this + 29);
        if (!v9)
        {
          return 1;
        }

        ++*(v9 + 4);
        WebKit::WebSWServerToContextConnection::didReceiveMessage(v9, a2, a3);
LABEL_57:
        v10 = *(v9 + 4) - 1;
        if (*(v9 + 4) == 1)
        {
          goto LABEL_58;
        }

LABEL_8:
        *(v9 + 4) = v10;
        return 1;
      }

      if (v7 != 206)
      {
        if (v7 != 207)
        {
          return v11;
        }

        v33 = *(this + 31);
        if (v33)
        {
          v34 = v33 + 6;
          ++v33[6];
          WebKit::WebSharedWorkerServerToContextConnection::didReceiveMessage(v33, a2, a3);
          WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref(v34);
        }

        return 1;
      }

      v31 = *(this + 30);
      if (v31)
      {
        v32 = *(v31 + 8);
        if (v32)
        {
          v9 = (v32 - 8);
          ++*(v32 + 16);
          WebKit::WebSharedWorkerServerConnection::didReceiveMessage((v32 - 8), a2, a3);
          if (*(v32 + 16) != 1)
          {
            --*(v32 + 16);
            return 1;
          }

          goto LABEL_58;
        }
      }
    }

    else
    {
      if (v7 == 46)
      {
        if ((*(this + 338) & 1) == 0)
        {
          v37 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
          {
            *v39 = 136446210;
            *&v39[4] = "BOOL WebKit::NetworkConnectionToWebProcess::dispatchMessage(IPC::Connection &, IPC::Decoder &)";
            _os_log_fault_impl(&dword_19D52D000, v37, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 288: Invalid message dispatched %{public}s", v39, 0xCu);
          }

          *(*(this + 10) + 94) = 1;
          if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
          {
            __break(0xC471u);
            JUMPOUT(0x19DC23BE4);
          }

          return 0;
        }

        v18 = *(this + 11);
        *v39 = *(this + 12);
        v19 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v18 + 240), v39);
        if (!v19)
        {
          return 1;
        }

        v9 = v19;
        ++*(v19 + 16);
        (*(**(v19 + 1080) + 32))(*(v19 + 1080), a2, a3);
        v20 = *(v9 + 4);
        if (!v20)
        {
LABEL_88:
          __break(0xC471u);
          JUMPOUT(0x19DC237CCLL);
        }

        goto LABEL_44;
      }

      if (v7 != 140)
      {
        if (v7 != 189)
        {
          return v11;
        }

        v35 = WebKit::NetworkConnectionToWebProcess::paymentCoordinator(this, a2);
        WebKit::WebPaymentCoordinatorProxy::didReceiveMessage(v35, a2, a3);
        return 1;
      }

      v9 = *(this + 29);
      if (v9)
      {
        ++*(v9 + 4);
        WebKit::WebSWServerToContextConnection::didReceiveFetchTaskMessage(v9, a2, a3);
        goto LABEL_57;
      }
    }

    return 1;
  }

  if (LOBYTE((&IPC::Detail::messageDescriptions)[3 * v6 + 2]) <= 0x24u)
  {
    if (v7 != 33)
    {
      if (v7 != 36)
      {
        return v11;
      }

      WebKit::NetworkMDNSRegister::ref(this + 176);
      WebKit::NetworkMDNSRegister::didReceiveMessage((this + 176), a2, a3);
      WebKit::NetworkMDNSRegister::deref((this + 176));
      return 1;
    }

    v22 = *(this + 11);
    *v39 = *(this + 12);
    v23 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v22 + 240), v39);
    if (v23)
    {
      v9 = v23;
      ++*(v23 + 16);
      WebKit::NetworkBroadcastChannelRegistry::didReceiveMessage(*(v23 + 712), a2, a3);
      v20 = *(v9 + 4);
      if (!v20)
      {
        goto LABEL_88;
      }

LABEL_44:
      v10 = v20 - 1;
      goto LABEL_8;
    }

    return 1;
  }

  if (v7 == 37)
  {
    v21 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v39 = 136446210;
      *&v39[4] = "BOOL WebKit::NetworkConnectionToWebProcess::dispatchMessage(IPC::Connection &, IPC::Decoder &)";
      _os_log_fault_impl(&dword_19D52D000, v21, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 257: Invalid message dispatched %{public}s", v39, 0xCu);
    }

    *(*(this + 10) + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC23808);
    }

    return 0;
  }

  if (v7 == 40)
  {
    v14 = WebKit::NetworkConnectionToWebProcess::rtcProvider(this);
    v15 = (v14 + 6);
    v11 = 1;
    atomic_fetch_add(v14 + 6, 1u);
    WebKit::NetworkRTCProvider::didReceiveNetworkRTCMonitorMessage(v14, a2, a3);
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref(v15);
  }

  return v11;
}

unsigned int *WebKit::NetworkRTCProvider::didReceiveNetworkRTCMonitorMessage(WebKit::NetworkRTCProvider *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v3 = *(this + 11);
  if (!v3 || (atomic_fetch_add((v3 + 24), 1u), WebKit::NetworkRTCMonitor::didReceiveMessage((this + 80), a2, a3), (v5 = *(this + 11)) == 0))
  {
    __break(0xC471u);
    JUMPOUT(0x19DC23D80);
  }

  return WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v5 + 24));
}

atomic_uint *WebKit::NetworkConnectionToWebProcess::rtcProvider(WebKit::NetworkConnectionToWebProcess *this)
{
  v1 = *(this + 21);
  if (!v1)
  {
    v1 = WTF::fastMalloc(0xA0);
    v3 = WebKit::NetworkRTCProvider::NetworkRTCProvider(v1, this);
    WebKit::NetworkRTCProvider::startListeningForIPC(v3);
    v4 = *(this + 21);
    *(this + 21) = v1;
    if (v4)
    {
      WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v4 + 24));
      return *(this + 21);
    }
  }

  return v1;
}

uint64_t WebKit::NetworkConnectionToWebProcess::createRTCProvider(WebKit::NetworkConnectionToWebProcess *a1, uint64_t *a2)
{
  WebKit::NetworkConnectionToWebProcess::rtcProvider(a1);
  v3 = *a2;
  *a2 = 0;
  (*(*v3 + 16))(v3);
  v4 = *(*v3 + 8);

  return v4(v3);
}

uint64_t WebKit::NetworkConnectionToWebProcess::connectToRTCDataChannelRemoteSource(WebKit::NetworkConnectionToWebProcess *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *(a1 + 11);
  v29[0] = a5;
  v13 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkConnectionToWebProcess,WTF::RawPtrTraits<WebKit::NetworkConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::NetworkConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>( (v12 + 152),  v29);
  if (v13 && (v17 = *(v13 + 8)) != 0)
  {
    ++*(v17 + 20);
    WebKit::NetworkConnectionToWebProcess::registerToRTCDataChannelProxy(a1);
    WebKit::NetworkConnectionToWebProcess::registerToRTCDataChannelProxy(v17);
    v18 = *(v17 + 80);
    v19 = *a6;
    *a6 = 0;
    v20 = WTF::fastMalloc(0x10);
    *v20 = &unk_1F10FF8D0;
    v20[1] = v19;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v21 = v20;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v24 = IPC::Encoder::operator new(0x238, v23);
      *v24 = 510;
      *(v24 + 68) = 0;
      *(v24 + 70) = 0;
      *(v24 + 69) = 0;
      *(v24 + 2) = 0;
      *(v24 + 3) = 0;
      *(v24 + 1) = 0;
      IPC::Encoder::encodeHeader(v24);
      v30 = v24;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v24, a4);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v24, a5);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v24, a2);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v24, a3);
      v29[0] = v21;
      v29[1] = IdentifierInternal;
      IPC::Connection::sendMessageWithAsyncReply(v18, &v30, v29, 0, 0);
      v26 = v29[0];
      v29[0] = 0;
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      result = v30;
      v30 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v25);
        result = bmalloc::api::tzoneFree(v27, v28);
      }

      if (*(v17 + 20) == 1)
      {
        return (*(*v17 + 8))(v17);
      }

      else
      {
        --*(v17 + 20);
      }
    }
  }

  else
  {
    v14 = *a6;
    *a6 = 0;
    (*(*v14 + 16))(v14, 256);
    v15 = *(*v14 + 8);

    return v15(v14);
  }

  return result;
}

void WebKit::NetworkConnectionToWebProcess::registerToRTCDataChannelProxy(WebKit::NetworkConnectionToWebProcess *this)
{
  if ((*(this + 256) & 1) == 0)
  {
    *(this + 256) = 1;
    WebKit::NetworkProcess::protectedRTCDataChannelProxy(*(this + 11), &v4);
    v2 = v4;
    WebKit::RTCDataChannelRemoteManagerProxy::registerConnectionToWebProcess(v4, this);
    if (v2)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v2 + 1, v3);
    }
  }
}

uint64_t WebKit::NetworkConnectionToWebProcess::dispatchSyncMessage(WebKit::NetworkConnectionToWebProcess *this, void *a2, unsigned __int16 *a3, IPC::Decoder **a4)
{
  result = 0;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3[25];
  if (v6 >= 0x107F)
  {
    v6 = 4223;
  }

  v7 = LOBYTE((&IPC::Detail::messageDescriptions)[3 * v6 + 2]);
  if (v7 <= 199)
  {
    switch(v7)
    {
      case 46:
        if (*(this + 338))
        {
          v14 = *(this + 11);
          *v20 = *(this + 12);
          result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v14 + 240), v20);
          if (!result)
          {
            return result;
          }

          v15 = result;
          ++*(result + 16);
          result = (*(**(result + 1080) + 48))(*(result + 1080), a2, a3, a4);
          v16 = *(v15 + 16);
          if (v16)
          {
            *(v15 + 16) = v16 - 1;
            return result;
          }

          goto LABEL_30;
        }

        v19 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
        {
          *v20 = 136446210;
          *&v20[4] = "BOOL WebKit::NetworkConnectionToWebProcess::dispatchSyncMessage(IPC::Connection &, IPC::Decoder &, UniqueRef<IPC::Encoder> &)";
          _os_log_fault_impl(&dword_19D52D000, v19, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 417: Invalid message dispatched %{public}s", v20, 0xCu);
        }

        *(*(this + 10) + 94) = 1;
        if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DC243CCLL);
        }

        break;
      case 189:
        v17 = WebKit::NetworkConnectionToWebProcess::paymentCoordinator(this, a2);

        return WebKit::WebPaymentCoordinatorProxy::didReceiveSyncMessage(v17, a2, a3, a4);
      case 37:
        v18 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
        {
          *v20 = 136446210;
          *&v20[4] = "BOOL WebKit::NetworkConnectionToWebProcess::dispatchSyncMessage(IPC::Connection &, IPC::Decoder &, UniqueRef<IPC::Encoder> &)";
          _os_log_fault_impl(&dword_19D52D000, v18, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 407: Invalid message dispatched %{public}s", v20, 0xCu);
        }

        *(*(this + 10) + 94) = 1;
        if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
        {
LABEL_30:
          __break(0xC471u);
          JUMPOUT(0x19DC24390);
        }

        break;
      default:
        return result;
    }

    return 0;
  }

  if (v7 == 200)
  {
    v8 = *(this + 28);
    if (v8)
    {
      v9 = *(v8 + 8);
      if (v9)
      {
        v10 = v9[4];
        v9[4] = v10 + 1;
        if (v10)
        {
          result = 0;
          v9[4] = v10;
          return result;
        }

        (*(*v9 + 8))(v9);
      }
    }

    return 0;
  }

  return result;
}

void WebKit::NetworkConnectionToWebProcess::didClose(WebKit::NetworkConnectionToWebProcess *this, IPC::Connection *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = *(this + 29);
  *(this + 29) = 0;
  if (v4)
  {
    WebKit::WebSWServerToContextConnection::stop(v4);
    if (*(v4 + 4) == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --*(v4 + 4);
    }
  }

  v5 = *(this + 31);
  *(this + 31) = 0;
  if (v5)
  {
    WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref((v5 + 24));
  }

  ++*(this + 5);
  v6 = qword_1ED640D10;
  if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 34);
    *v33 = 134218496;
    *&v33[4] = this;
    v34 = 2048;
    v35 = v7;
    v36 = 1024;
    v37 = IPC::Connection::remoteProcessID(a2);
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::didClose: WebProcess (%d) closed its connection. Aborting related loaders.", v33, 0x1Cu);
  }

  v9 = (this + 112);
  v8 = *(this + 14);
  if (v8)
  {
    do
    {
      if (!*(v8 - 12))
      {
        break;
      }

      v30 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(this + 14)[1];
      ++*(v30 + 5);
      WebKit::NetworkResourceLoader::abort(v30);
      if (*(v30 + 5) == 1)
      {
        (*(*v30 + 24))(v30);
      }

      else
      {
        --*(v30 + 5);
      }

      v8 = *v9;
    }

    while (*v9);
  }

  v10 = *(this + 11);
  *v33 = *(this + 12);
  v11 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v10 + 240), v33);
  if (v11)
  {
    v13 = v11;
    ++*(v11 + 16);
    WebKit::NetworkBroadcastChannelRegistry::removeConnection(*(v11 + 712), a2);
    v14 = WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::begin(*(this + 39));
    v15 = v14;
    v17 = v16;
    v18 = *(this + 39);
    if (v18)
    {
      v19 = (v18 + 80 * *(v18 - 4));
    }

    else
    {
      v19 = 0;
    }

    if (v19 != v14)
    {
      do
      {
        WebCore::BlobRegistryImpl::unregisterBlobURL();
        do
        {
          v15 += 10;
        }

        while (v15 != v17 && ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v15) & 1) != 0 || *v15 == -1));
      }

      while (v15 != v19);
    }

    v20 = WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashMap<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::begin(*(this + 40));
    v21 = v20;
    v22 = v12;
    v23 = *(this + 40);
    if (v23)
    {
      v24 = (v23 + 88 * *(v23 - 4));
    }

    else
    {
      v24 = 0;
    }

    if (v24 != v20)
    {
      do
      {
        if (*(v21 + 80))
        {
          v29 = 0;
          do
          {
            WebCore::BlobRegistryImpl::unregisterBlobURLHandle();
            ++v29;
          }

          while (v29 < *(v21 + 80));
        }

        do
        {
          v21 += 88;
        }

        while (v21 != v22 && ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v21) & 1) != 0 || *v21 == -1));
      }

      while (v21 != v24);
    }

    v25 = *(v13 + 16);
    if (!v25)
    {
      __break(0xC471u);
      return;
    }

    *(v13 + 16) = v25 - 1;
  }

  WebKit::NetworkConnectionToWebProcess::stopAllNetworkActivityTracking(this, v12);
  v26 = *(this + 11);
  atomic_fetch_add(v26 + 36, 1u);
  WebKit::NetworkProcess::connectionToWebProcessClosed(v26, a2, *(this + 12));
  WebKit::NetworkProcess::removeNetworkConnectionToWebProcess(v26, this);
  v27 = *(this + 21);
  if (v27)
  {
    v31 = (v27 + 6);
    atomic_fetch_add(v27 + 6, 1u);
    WebKit::NetworkRTCProvider::close(v27);
    v32 = *(this + 21);
    *(this + 21) = 0;
    if (v32)
    {
      WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v32 + 24));
    }

    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref(v31);
  }

  WebKit::NetworkConnectionToWebProcess::unregisterSWConnection(*(this + 28));
  WebKit::NetworkConnectionToWebProcess::unregisterSharedWorkerConnection(this);
  v28 = *(this + 33);
  *(this + 33) = 0;
  if (v28)
  {
    WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref((v28 + 40));
  }

  if (v26 && atomic_fetch_add(v26 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v26 + 36);
    (*(*v26 + 24))(v26);
  }

  if (*(this + 5) == 1)
  {
    (*(*this + 8))(this);
  }

  else
  {
    --*(this + 5);
  }
}

unsigned int *WebKit::NetworkConnectionToWebProcess::stopAllNetworkActivityTracking(WebKit::NetworkConnectionToWebProcess *this, void *a2)
{
  v2 = (this + 144);
  v3 = *(this + 39);
  if (v3)
  {
    v5 = 48 * v3;
    v6 = *(this + 18) + 24;
    do
    {
      WebKit::NetworkActivityTracker::complete(v6);
      v6 += 48;
      v5 -= 48;
    }

    while (v5);
  }

  return WTF::Vector<WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v2, a2);
}

atomic_ullong *WebKit::NetworkConnectionToWebProcess::didReceiveInvalidMessage(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    if (a3 >= 0x107F)
    {
      v14 = 4223;
    }

    else
    {
      v14 = a3;
    }

    v15 = (&IPC::Detail::messageDescriptions)[3 * v14];
    v16 = *(a1 + 272);
    *buf = 136446466;
    *&buf[4] = v15;
    v19 = 2048;
    v20 = v16;
    _os_log_fault_impl(&dword_19D52D000, v5, OS_LOG_TYPE_FAULT, "Received an invalid message '%{public}s' from WebContent process %llu, requesting for it to be terminated.", buf, 0x16u);
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(a1 + 88), &v17);
  v6 = v17;
  v8 = IPC::Encoder::operator new(0x238, v7);
  *v8 = 565;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  IPC::Encoder::encodeHeader(v8);
  *buf = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, *(a1 + 272));
  IPC::Connection::sendMessageImpl(v6, buf, 0, 0);
  v10 = *buf;
  *buf = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v9);
    bmalloc::api::tzoneFree(v12, v13);
  }

  result = v17;
  v17 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

void WebKit::NetworkConnectionToWebProcess::createSocketChannel(uint64_t a1, WebCore::ResourceRequestBase *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, uint64_t a13, char a14)
{
  v43 = *MEMORY[0x1E69E9840];
  v21 = *(a1 + 88);
  v22 = *(a1 + 272);
  PartyForCookies = WebCore::ResourceRequestBase::firstPartyForCookies(this);
  if (WebKit::NetworkProcess::allowsFirstPartyForCookies(v21, v22, PartyForCookies) == 2)
  {
    v40 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::NetworkConnectionToWebProcess::createSocketChannel(const ResourceRequest &, const String &, WebSocketIdentifier, WebPageProxyIdentifier, std::optional<FrameIdentifier>, std::optional<PageIdentifier>, const ClientOrigin &, BOOL, BOOL, OptionSet<AdvancedPrivacyProtections>, WebCore::StoredCredentialsPolicy)";
      _os_log_fault_impl(&dword_19D52D000, v40, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 498: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(*(a1 + 80) + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      return;
    }

LABEL_36:
    __break(0xC471u);
    JUMPOUT(0x19DC24D88);
  }

  WebKit::NetworkSocketChannel::create(a1, *(a1 + 96), this, a3, a4, a5, a6, a7, buf, a9, a10, a11, a12, v41, a13, 0, a14);
  v24 = *buf;
  if (!*buf)
  {
    return;
  }

  if (a4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC24DECLL);
  }

  if (!a4)
  {
    goto LABEL_36;
  }

  v25 = *(a1 + 104);
  if (!v25)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 104), 0);
    v25 = *(a1 + 104);
  }

  v26 = *(v25 - 8);
  v27 = (~(a4 << 32) + a4) ^ ((~(a4 << 32) + a4) >> 22);
  v28 = 9 * ((v27 + ~(v27 << 13)) ^ ((v27 + ~(v27 << 13)) >> 8));
  v29 = (v28 ^ (v28 >> 15)) + ~((v28 ^ (v28 >> 15)) << 27);
  v30 = v26 & ((v29 >> 31) ^ v29);
  v31 = (v25 + 16 * v30);
  v32 = *v31;
  if (*v31)
  {
    v33 = 0;
    v34 = 1;
    do
    {
      if (v32 == a4)
      {
        if (v24[6] == 1)
        {
          (*(*v24 + 8))(v24);
        }

        else
        {
          --v24[6];
        }

        return;
      }

      if (v32 == -1)
      {
        v33 = v31;
      }

      v30 = (v30 + v34) & v26;
      v31 = (v25 + 16 * v30);
      v32 = *v31;
      ++v34;
    }

    while (*v31);
    if (v33)
    {
      *v33 = 0;
      v33[1] = 0;
      --*(*(a1 + 104) - 16);
      v31 = v33;
    }
  }

  v35 = v31[1];
  *v31 = a4;
  v31[1] = v24;
  if (v35)
  {
    if (v35[6] == 1)
    {
      (*(*v35 + 8))(v35);
    }

    else
    {
      --v35[6];
    }
  }

  v36 = *(a1 + 104);
  if (v36)
  {
    v37 = *(v36 - 12) + 1;
  }

  else
  {
    v37 = 1;
  }

  *(v36 - 12) = v37;
  v38 = (*(v36 - 16) + v37);
  v39 = *(v36 - 4);
  if (v39 <= 0x400)
  {
    if (3 * v39 > 4 * v38)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v39 <= 2 * v38)
  {
LABEL_25:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 104), v31);
  }
}

uint64_t *WebKit::NetworkConnectionToWebProcess::removeSocketChannel(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( (a1 + 104),  &v6);
  v4 = *(a1 + 104);
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
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkSocketChannel,WTF::RawPtrTraits<WebKit::NetworkSocketChannel>,WTF::DefaultRefDerefTraits<WebKit::NetworkSocketChannel>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove((a1 + 104), result);
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::resolveBlobReferences@<X0>(WebKit::NetworkConnectionToWebProcess *this@<X0>, const WebKit::NetworkResourceLoadParameters *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED640D10;
  if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 34);
    v8 = *(a2 + 60);
    v9 = *a2;
    v10 = *(a2 + 1);
    v11 = *(a2 + 2);
    v12 = *(a2 + 400);
    *buf = 134219520;
    *&buf[4] = this;
    v27 = 2048;
    v28 = v7;
    v29 = 1024;
    v30 = v8;
    v31 = 2048;
    v32 = v9;
    v33 = 2048;
    v34 = v10;
    v35 = 2048;
    v36 = v11;
    v37 = 2048;
    v38 = v12;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::resolveBlobReferences: (parentPID=%d, pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu)", buf, 0x44u);
  }

  v13 = *(this + 11);
  *buf = *(this + 12);
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v13 + 240), buf);
  if (result)
  {
    v15 = result;
    ++*(result + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    WebCore::ResourceRequestBase::httpBody(&v25, (a2 + 24));
    result = v25;
    if (v25)
    {
      v17 = *(v25 + 5);
      if (v17)
      {
        v18 = *(v25 + 1);
        v19 = 48 * v17;
        do
        {
          if (v18 && *(v18 + 40) == 2)
          {
            buf[0] = 0;
            BYTE2(v32) = 0;
            WebCore::BlobRegistryImpl::filesInBlob();
            WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendVector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>(a3, v24);
            WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24, v23);
            std::optional<WebCore::SecurityOriginData>::~optional(buf);
          }

          v18 += 48;
          v19 -= 48;
        }

        while (v19);
        result = v25;
      }

      WebCore::FormData::resolveBlobReferences(v24, result, (v15 + 640));
      v20 = v24[0];
      v24[0] = 0;
      *buf = v20;
      WebCore::ResourceRequestBase::setHTTPBody();
      v21 = *buf;
      *buf = 0;
      if (v21)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v21);
      }

      v22 = v24[0];
      v24[0] = 0;
      if (v22)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v22);
      }

      result = v25;
      v25 = 0;
      if (result)
      {
        result = WTF::RefCounted<WebCore::FormData>::deref(result);
      }
    }

    v16 = *(v15 + 16);
    if (v16)
    {
      *(v15 + 16) = v16 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void **WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendVector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 12);
  v5 = *(result + 2);
  v6 = v4 + *(result + 3);
  if (v6 > v5)
  {
    v7 = v5 + (v5 >> 1);
    if (v7 <= v5 + 1)
    {
      v7 = v5 + 1;
    }

    if (v7 > v6)
    {
      v6 = v7;
    }

    if (v6 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v6;
    }

    result = WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(result, v8);
    v4 = *(a2 + 12);
  }

  if (v4)
  {
    v9 = *a2;
    v10 = *(v3 + 3);
    v11 = 8 * v4;
    do
    {
      v12 = *v3;
      v13 = *v9;
      *v9++ = 0;
      v12[v10++] = v13;
      v11 -= 8;
    }

    while (v11);
    *(v3 + 3) = v10;
  }

  return result;
}

void WebKit::NetworkConnectionToWebProcess::createFetchTask(WebKit::NetworkConnectionToWebProcess *this@<X0>, WebKit::NetworkResourceLoader *a2@<X1>, const WebCore::ResourceRequest *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = WebKit::NetworkConnectionToWebProcess::swConnection(this);
  if (v7)
  {
    v8 = v7;
    ++v7[4];
    WebKit::WebSWServerConnection::createFetchTask(v7, a2, a3, a4);
    if (v8[4] == 1)
    {
      v9 = *(*v8 + 8);

      v9(v8);
    }

    else
    {
      --v8[4];
    }
  }

  else
  {
    *a4 = 0;
  }
}

uint64_t WebKit::NetworkConnectionToWebProcess::swConnection(WebKit::NetworkConnectionToWebProcess *this)
{
  v2 = *(this + 28);
  if (!v2 || (result = *(v2 + 8)) == 0)
  {
    WebKit::NetworkConnectionToWebProcess::establishSWServerConnection(this);
    v4 = *(this + 28);
    if (v4)
    {
      return *(v4 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void WebKit::NetworkConnectionToWebProcess::scheduleResourceLoad(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v87 = *MEMORY[0x1E69E9840];
  v9 = *(v1 + 88);
  v10 = *(v1 + 272);
  PartyForCookies = WebCore::ResourceRequestBase::firstPartyForCookies((v6 + 3));
  v12 = WebKit::NetworkProcess::allowsFirstPartyForCookies(v9, v10, PartyForCookies);
  v13 = qword_1ED640D10;
  if (v12 != 1)
  {
    v43 = v12;
    if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_ERROR))
    {
      WebCore::ResourceRequestBase::firstPartyForCookies((v7 + 3));
      WTF::String::utf8();
      if (v71)
      {
        v63 = v71 + 16;
      }

      else
      {
        v63 = 0;
      }

      WebCore::ResourceRequestBase::url((v7 + 3));
      WTF::String::utf8();
      if (v70)
      {
        v64 = v70 + 16;
      }

      else
      {
        v64 = 0;
      }

      *buf = 136643075;
      *&buf[4] = v63;
      *&buf[12] = 2085;
      *&buf[14] = v64;
      _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "scheduleResourceLoad: Web process does not have cookie access to url %{sensitive}s for request %{sensitive}s", buf, 0x16u);
      v66 = v70;
      v70 = 0;
      if (v66)
      {
        if (*v66 == 1)
        {
          WTF::fastFree(v66, v65);
        }

        else
        {
          --*v66;
        }
      }

      v67 = v71;
      v71 = 0;
      if (v67)
      {
        if (*v67 == 1)
        {
          WTF::fastFree(v67, v65);
        }

        else
        {
          --*v67;
        }
      }
    }

    if (v43 == 2)
    {
      v69 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "void WebKit::NetworkConnectionToWebProcess::scheduleResourceLoad(NetworkResourceLoadParameters &&, std::optional<NetworkResourceLoadIdentifier>)";
        _os_log_fault_impl(&dword_19D52D000, v69, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 550: Invalid message dispatched %{public}s", buf, 0xCu);
      }

      *(*(v8 + 80) + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        goto LABEL_87;
      }

      return;
    }

    v13 = qword_1ED640D10;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(v8 + 272);
    v15 = *(v7 + 60);
    v16 = *v7;
    v17 = v7[1];
    v18 = v7[2];
    v19 = v7[400];
    if (v3)
    {
      v20 = v5;
    }

    else
    {
      v20 = 0;
    }

    *buf = 134219776;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = v14;
    v73 = 1024;
    v74 = v15;
    v75 = 2048;
    v76 = v16;
    v77 = 2048;
    v78 = v17;
    v79 = 2048;
    v80 = v18;
    v81 = 2048;
    v82 = v19;
    v83 = 2048;
    v84 = v20;
    _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::scheduleResourceLoad: (parentPID=%d, pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu, existingLoaderToResume=%llu)", buf, 0x4Eu);
  }

  v21 = *(v8 + 88);
  *buf = *(v8 + 96);
  v22 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v21 + 240), buf);
  if (!v22)
  {
LABEL_11:
    v28 = v7[400];
    if (!v28)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC25A40);
    }

    v29 = WTF::RunLoop::mainSingleton(v22);
    if ((WTF::RunLoop::isCurrent(v29) & 1) == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC25A60);
    }

    if ((v3 & 1) == 0)
    {
      goto LABEL_14;
    }

    v34 = *(v8 + 88);
    *buf = *(v8 + 96);
    v35 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v34 + 240), buf);
    if (v35)
    {
      v36 = v35;
      ++*(v35 + 16);
      WebKit::NetworkSession::takeLoaderAwaitingWebProcessTransfer(v35, v5, &v71);
      v37 = v71;
      if (v71)
      {
        v38 = qword_1ED640D10;
        if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT))
        {
          v39 = *(v8 + 272);
          *buf = 134218240;
          *&buf[4] = v8;
          *&buf[12] = 2048;
          *&buf[14] = v39;
          _os_log_impl(&dword_19D52D000, v38, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::scheduleResourceLoad: Resuming existing NetworkResourceLoader", buf, 0x16u);
          v37 = v71;
        }

        ++*(v37 + 5);
        v70 = v37;
        WebKit::NetworkResourceLoadMap::add(v8 + 112, v28, &v70, buf);
        v40 = v70;
        v70 = 0;
        if (v40)
        {
          if (*(v40 + 5) == 1)
          {
            (*(*v40 + 24))(v40);
          }

          else
          {
            --*(v40 + 5);
          }
        }

        WebKit::NetworkResourceLoader::transferToNewWebProcess(v71, v8, v7);
        v41 = v71;
        v71 = 0;
        if (v41)
        {
          if (*(v41 + 5) == 1)
          {
            (*(*v41 + 24))(v41);
          }

          else
          {
            --*(v41 + 5);
          }
        }

        v42 = *(v36 + 16);
        if (!v42)
        {
          __break(0xC471u);
          JUMPOUT(0x19DC25AA0);
        }

        *(v36 + 16) = v42 - 1;
        return;
      }

      v59 = qword_1ED640D10;
      if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_ERROR))
      {
        v68 = *(v8 + 272);
        *buf = 134218240;
        *&buf[4] = v8;
        *&buf[12] = 2048;
        *&buf[14] = v68;
        _os_log_error_impl(&dword_19D52D000, v59, OS_LOG_TYPE_ERROR, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::scheduleResourceLoad: Could not find existing NetworkResourceLoader to resume, will do a fresh load", buf, 0x16u);
      }

      v60 = *(v36 + 16);
      if (!v60)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC25AE0);
      }

      *(v36 + 16) = v60 - 1;
    }

    else
    {
      v61 = qword_1ED640D10;
      if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_ERROR))
      {
        v62 = *(v8 + 272);
        *buf = 134218240;
        *&buf[4] = v8;
        *&buf[12] = 2048;
        *&buf[14] = v62;
        _os_log_error_impl(&dword_19D52D000, v61, OS_LOG_TYPE_ERROR, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::scheduleResourceLoad: Could not find network session of existing NetworkResourceLoader to resume, will do a fresh load", buf, 0x16u);
      }
    }

LABEL_14:
    if (*(v7 + 4042) != 1)
    {
      goto LABEL_15;
    }

    if (*(v7 + 3168) != 1)
    {
      goto LABEL_15;
    }

    v44 = *(v8 + 88);
    *buf = *(v8 + 96);
    v45 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v44 + 240), buf);
    if (!v45)
    {
      goto LABEL_15;
    }

    v46 = v45;
    v47 = *(v45 + 16) + 1;
    *(v45 + 16) = v47;
    v48 = *(v45 + 72);
    if (v48)
    {
      while (1)
      {
        v49 = *v48;
        if ((*v48 & 1) == 0)
        {
          break;
        }

        v50 = *v48;
        atomic_compare_exchange_strong_explicit(v48, &v50, v49 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v50 == v49)
        {
          goto LABEL_43;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v48);
LABEL_43:
      v51 = *v7;
      v52 = v7[2];
      v53 = WebCore::ResourceRequestBase::url((v7 + 3));
      WebCore::RegistrableDomain::RegistrableDomain(buf, v53);
      WebKit::WebResourceLoadStatisticsStore::recordFrameLoadForStorageAccess(v48, v51, v52, buf);
      v55 = *buf;
      *buf = 0;
      if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v55, v54);
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v48);
      v47 = *(v46 + 16);
    }

    if (v47)
    {
      *(v46 + 16) = v47 - 1;
LABEL_15:
      v70 = 0;
      v30 = WTF::fastMalloc(0x14C0);
      v71 = WebKit::NetworkResourceLoader::NetworkResourceLoader(v30, v7, v8, &v70);
      WebKit::NetworkResourceLoadMap::add(v8 + 112, v28, &v71, buf);
      v31 = v71;
      v32 = *buf;
      v71 = 0;
      if (v31)
      {
        if (*(v31 + 5) == 1)
        {
          (*(*v31 + 24))(v31);
        }

        else
        {
          --*(v31 + 5);
        }
      }

      v33 = v70;
      v70 = 0;
      if (v33)
      {
        (*(*v33 + 8))(v33);
      }

      WebKit::NetworkResourceLoader::startWithServiceWorker(*(v32 + 8));
      return;
    }

    __break(0xC471u);
LABEL_87:
    JUMPOUT(0x19DC259D0);
  }

  v24 = v22;
  ++*(v22 + 4);
  v25 = WebKit::NetworkSession::ensureSWServer(v22, v23);
  v26 = (v25 + 8);
  ++*(v25 + 8);
  if (*(v25 + 192))
  {
    v22 = WTF::RefCounted<WebCore::SWServer>::deref((v25 + 8));
    v27 = *(v24 + 4);
    if (!v27)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC25A80);
    }

    *(v24 + 4) = v27 - 1;
    goto LABEL_11;
  }

  ++*(v8 + 20);
  *buf = v8;
  *&buf[8] = v8;
  WebKit::NetworkResourceLoadParameters::NetworkResourceLoadParameters(&buf[16], v7);
  v85 = v5;
  v86 = v3;
  WTF::CompletionHandler<void ()(void)>::CompletionHandler<WebKit::NetworkConnectionToWebProcess::scheduleResourceLoad(WebKit::NetworkResourceLoadParameters &&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0,void>(&v71, buf);
  WebCore::SWServer::whenImportIsCompleted();
  v57 = v71;
  v71 = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  WebKit::NetworkConnectionToWebProcess::scheduleResourceLoad(WebKit::NetworkResourceLoadParameters &&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0::~$_0(buf, v56);
  WTF::RefCounted<WebCore::SWServer>::deref(v26);
  v58 = *(v24 + 4);
  if (!v58)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC25AC0);
  }

  *(v24 + 4) = v58 - 1;
}

uint64_t *WTF::CompletionHandler<void ()(void)>::CompletionHandler<WebKit::NetworkConnectionToWebProcess::scheduleResourceLoad(WebKit::NetworkResourceLoadParameters &&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0,void>(uint64_t *a1, uint64_t a2)
{
  v4 = WTF::fastMalloc(0x1000);
  *v4 = &unk_1F10FF8F8;
  *(v4 + 16) = *a2;
  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(v4 + 24) = v5;
  WebKit::NetworkResourceLoadParameters::NetworkResourceLoadParameters(v4 + 32, (a2 + 16));
  *(v4 + 4080) = *(a2 + 4064);
  *a1 = v4;
  return a1;
}

uint64_t WebKit::NetworkConnectionToWebProcess::scheduleResourceLoad(WebKit::NetworkResourceLoadParameters &&,std::optional<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  WebKit::NetworkResourceLoadParameters::~NetworkResourceLoadParameters((a1 + 16), a2);
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    if (v3[5] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[5];
    }
  }

  return a1;
}

void WebKit::NetworkConnectionToWebProcess::performSynchronousLoad(const char *a1, uint64_t *a2, uint64_t *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 11);
  v7 = *(a1 + 34);
  PartyForCookies = WebCore::ResourceRequestBase::firstPartyForCookies((a2 + 3));
  if (WebKit::NetworkProcess::allowsFirstPartyForCookies(v6, v7, PartyForCookies) == 1)
  {
    v9 = qword_1ED640D10;
    v10 = os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      v11 = *(a1 + 34);
      v12 = *(a2 + 60);
      v13 = *a2;
      v14 = a2[1];
      v15 = a2[2];
      v16 = a2[400];
      *buf = 134219520;
      v25 = a1;
      v26 = 2048;
      v27 = v11;
      v28 = 1024;
      v29 = v12;
      v30 = 2048;
      v31 = v13;
      v32 = 2048;
      v33 = v14;
      v34 = 2048;
      v35 = v15;
      v36 = 2048;
      v37 = v16;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::performSynchronousLoad: (parentPID=%d, pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu)", buf, 0x44u);
    }

    v17 = a2[400];
    if (!v17)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC25E9CLL);
    }

    v18 = WTF::RunLoop::mainSingleton(v10);
    if (WTF::RunLoop::isCurrent(v18))
    {
      v19 = WTF::fastMalloc(0x14C0);
      v20 = WebKit::NetworkResourceLoader::NetworkResourceLoader(v19, a2, a1, a3);
      ++*(v20 + 20);
      v23 = v20;
      WebKit::NetworkResourceLoadMap::add((a1 + 112), v17, &v23, buf);
      v21 = v23;
      v23 = 0;
      if (v21)
      {
        if (v21[5] == 1)
        {
          (*(*v21 + 24))(v21);
        }

        else
        {
          --v21[5];
        }
      }

      WebKit::NetworkResourceLoader::startRequest(v19, (v19 + 26));
      if (v19[5] == 1)
      {
        (*(*v19 + 24))(v19);
      }

      else
      {
        --v19[5];
      }

      return;
    }

LABEL_19:
    __break(0xC471u);
    JUMPOUT(0x19DC25E38);
  }

  v22 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    v25 = "void WebKit::NetworkConnectionToWebProcess::performSynchronousLoad(NetworkResourceLoadParameters &&, CompletionHandler<void (const ResourceError &, const ResourceResponse, Vector<uint8_t> &&)> &&)";
    _os_log_fault_impl(&dword_19D52D000, v22, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 601: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  *(*(a1 + 10) + 94) = 1;
  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    goto LABEL_19;
  }
}

uint64_t WebKit::NetworkConnectionToWebProcess::testProcessIncomingSyncMessagesWhenWaitingForSyncReply(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(a1 + 88), &v25);
  v5 = v25;
  IPC::Connection::createSyncMessageEncoder(0xFA9, 0, v28);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v28[0], a2);
  v6 = IPC::Connection::sendSyncMessage(v5, v28[1], v28, 0, &v26, INFINITY);
  if (v27)
  {
    if (v27 != 1)
    {
      mpark::throw_bad_variant_access(v6);
    }

    v8 = v26;
    v9 = 1;
    goto LABEL_12;
  }

  v8 = v26;
  v26 = 0;
  if (*(v8 + 50) == 3194)
  {
    v10 = 11;
  }

  else
  {
    v13 = IPC::Decoder::decode<std::tuple<BOOL>>(v8);
    if (v13 >= 0x100u)
    {
      LOBYTE(v5) = v13;
      v9 = 0;
      goto LABEL_9;
    }

    v10 = 14;
  }

  IPC::Decoder::~Decoder(v8);
  bmalloc::api::tzoneFree(v11, v12);
  v9 = 1;
  v8 = v10;
LABEL_9:
  if (!v27)
  {
    v14 = v26;
    v26 = 0;
    if (v14)
    {
      IPC::Decoder::~Decoder(v14);
      bmalloc::api::tzoneFree(v21, v22);
    }
  }

LABEL_12:
  v15 = v28[0];
  v28[0] = 0;
  if (v15)
  {
    IPC::Encoder::~Encoder(v15, v7);
    bmalloc::api::tzoneFree(v19, v20);
  }

  v16 = v25;
  v25 = 0;
  if (v16)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v16);
  }

  v17 = *a3;
  *a3 = 0;
  (*(*v17 + 16))(v17, (v9 == 0) & v5);
  result = (*(*v17 + 8))(v17);
  if (!v9)
  {
    if (v8)
    {
      IPC::Decoder::~Decoder(v8);
      return bmalloc::api::tzoneFree(v23, v24);
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::loadPing(WebKit::NetworkConnectionToWebProcess *a1, uint64_t *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED640D10;
  if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 34);
    v6 = *(a2 + 60);
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    v10 = a2[400];
    *v21 = 134219520;
    *&v21[4] = a1;
    v22 = 2048;
    v23 = v5;
    v24 = 1024;
    v25 = v6;
    v26 = 2048;
    v27 = v7;
    v28 = 2048;
    v29 = v8;
    v30 = 2048;
    v31 = v9;
    v32 = 2048;
    v33 = v10;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::loadPing: (parentPID=%d, pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu)", v21, 0x44u);
  }

  v11 = *(a1 + 10);
  while (1)
  {
    v12 = *v11;
    if ((*v11 & 1) == 0)
    {
      break;
    }

    v13 = *v11;
    atomic_compare_exchange_strong_explicit(v11, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v13 == v12)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_8:
  v14 = a2[400];
  if (v14)
  {
    v15 = WTF::fastMalloc(0x18);
    *v15 = &unk_1F10FF920;
    v15[1] = v11;
    v15[2] = v14;
    *v21 = v15;
    v16 = WTF::fastMalloc(0x1060);
    v17 = WebKit::PingLoad::PingLoad(v16, a1, a2, v21);
    v19 = *(v17 + 24);
    *(v17 + 24) = v17;
    if (v19)
    {
      WTF::RefCounted<WebKit::PingLoad>::deref((v19 + 16), v18);
    }

    result = *v21;
    if (*v21)
    {
      return (*(**v21 + 8))(*v21);
    }
  }

  else
  {
    result = 158;
    __break(0xC471u);
  }

  return result;
}

IPC::Encoder *WebKit::NetworkConnectionToWebProcess::setOnLineState(WebKit::NetworkConnectionToWebProcess *this, char a2)
{
  v2 = *(this + 10);
  v4 = a2;
  return IPC::Connection::send<Messages::NetworkProcessConnection::SetOnLineState>(v2, &v4);
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkProcessConnection::SetOnLineState>(uint64_t *a1, _BYTE *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 519;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v4, *a2);
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::NetworkProcessConnection::CookieAcceptPolicyChanged>(uint64_t *a1, _BYTE *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 511;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v10, *a2);
  v12 = IPC::Connection::sendMessageImpl(a1, &v17, a4, a5);
  v13 = v17;
  v17 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v11);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return v12;
}

uint64_t WebKit::NetworkConnectionToWebProcess::removeLoadIdentifier(uint64_t *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = WTF::RunLoop::mainSingleton(a1);
  if (WTF::RunLoop::isCurrent(v4))
  {
    *v9 = a2;
    result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1 + 14, v9);
    if (result)
    {
      v6 = result;
      ++*(result + 20);
      v7 = qword_1ED640D10;
      if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[34];
        *v9 = 134218496;
        *&v9[4] = a1;
        v10 = 2048;
        v11 = v8;
        v12 = 2048;
        v13 = a2;
        _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::removeLoadIdentifier: Removing identifier %llu and aborting corresponding loader", v9, 0x20u);
      }

      result = WebKit::NetworkResourceLoader::abort(v6);
      if (*(v6 + 5) == 1)
      {
        return (*(*v6 + 24))(v6);
      }

      else
      {
        --*(v6 + 5);
      }
    }
  }

  else
  {
    result = 645;
    __break(0xC471u);
  }

  return result;
}

void WebKit::NetworkConnectionToWebProcess::stopAllNetworkActivityTrackingForPage(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  v4 = *(a1 + 156);
  if (v4)
  {
    v10 = 48 * v4;
    v11 = v3 + 24;
    do
    {
      if (*(v11 - 24) == a2)
      {
        WebKit::NetworkActivityTracker::complete(v11);
      }

      v11 += 48;
      v10 -= 48;
    }

    while (v10);
    v3 = *(a1 + 144);
    LODWORD(v4) = *(a1 + 156);
    v6 = (v3 + 48 * v4);
    v5 = 0;
    if (v4)
    {
      v12 = *(a1 + 144);
      v7 = v3 + 48 * v4;
      v13 = v7;
      do
      {
        if (*v3 == a2)
        {
          v14 = v3;
          if (v7 != *(a1 + 144) + 48 * *(a1 + 156))
          {
            if (v3 == v13)
            {
              v14 = v7;
            }

            else
            {
              WTF::VectorMover<false,WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker>::moveOverlapping(v13, v3, v7);
              v14 = v7 + v12 - v13;
            }
          }

          v15 = *(v3 + 40);
          *(v3 + 40) = 0;
          if (v15)
          {
          }

          v13 = (v3 + 48);
          ++v5;
          v7 = v14;
        }

        v3 += 48;
        v12 += 48;
      }

      while (v3 < v6);
      v3 = *(a1 + 144);
      LODWORD(v4) = *(a1 + 156);
      v6 = v13;
    }

    else
    {
      v7 = *(a1 + 144);
    }
  }

  else
  {
    v5 = 0;
    v6 = *(a1 + 144);
    v7 = v6;
  }

  v8 = (v3 + 48 * v4);
  if (v6 != v8)
  {
    WTF::VectorMover<false,WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker>::moveOverlapping(v6, v8, v7);
    LODWORD(v4) = *(a1 + 156);
  }

  *(a1 + 156) = v4 - v5;
}

uint64_t WebKit::NetworkConnectionToWebProcess::browsingContextRemoved(uint64_t a1, void **a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 88);
  v13 = *(a1 + 96);
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v7 + 240), &v13);
  if (result)
  {
    v9 = result;
    v10 = *(result + 16) + 1;
    *(result + 16) = v10;
    result = *(result + 624);
    if (result)
    {
      v11 = (result + 8);
      ++*(result + 8);
      WebKit::NetworkCache::Cache::browsingContextRemoved(result, a2, a3, a4);
      result = WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(v11, v12);
      v10 = *(v9 + 16);
    }

    if (v10)
    {
      *(v9 + 16) = v10 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::sendH2Ping(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 88);
  v40[0] = *(a1 + 96);
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v5 + 240), v40);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    v8 = WebCore::ResourceRequestBase::url((a2 + 24));
    v9 = *v8;
    if (*v8)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    }

    *v34 = v9;
    v10 = *(v8 + 24);
    *&v34[8] = *(v8 + 8);
    *&v34[24] = v10;
    WebKit::NetworkResourceLoadParameters::networkLoadParameters(a2, v40);
    v11 = WTF::fastMalloc(0x30);
    WebKit::PreconnectTask::PreconnectTask(v11, v7, v40);
    if (v52 == 1)
    {
      v33 = v51;
      v51 = 0;
      if (v33)
      {
      }
    }

    WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v12);
    if (v49[2912] == 1)
    {
      WebKit::NavigationActionData::~NavigationActionData(v49, v13);
    }

    WebCore::ResourceRequest::~ResourceRequest(&v43);
    v15 = v42;
    *&v42 = 0;
    if (v15)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v15, v14);
    }

    v16 = *(&v41 + 1);
    *(&v41 + 1) = 0;
    if (v16)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v16, v14);
    }

    WebKit::NetworkLoad::setH2PingCallback(*(v11 + 24), v34, a3);
    v40[0] = 0;
    WebKit::PreconnectTask::start(v11, v40, 60.0);
    v18 = v40[0];
    v40[0] = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    if (*(v11 + 20) == 1)
    {
      (*(*v11 + 24))(v11);
    }

    else
    {
      --*(v11 + 20);
    }

    result = *v34;
    *v34 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v17);
    }

    v20 = v7[4];
    if (v20)
    {
      v7[4] = v20 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    WebCore::ResourceRequestBase::url((a2 + 24));
    WebCore::internalError();
    v21 = v35;
    v45 = v37;
    v44 = v36;
    v22 = cf;
    v35 = 0;
    cf = 0;
    v23 = *v34;
    *v34 = 0;
    *&v34[8] = 0;
    *v40 = v23;
    v41 = *&v34[16];
    *&v34[16] &= ~1u;
    v42 = *&v34[32];
    v43 = v21;
    v46 = v22;
    v47 = v39;
    v48 = 1;
    v24 = *a3;
    *a3 = 0;
    (*(*v24 + 16))(v24, v40);
    (*(*v24 + 8))(v24);
    if (v48 && v48 != 255)
    {
      v26 = v46;
      v46 = 0;
      if (v26)
      {
        CFRelease(v26);
      }

      v27 = v43;
      v43 = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v25);
      }

      v28 = v40[1];
      v40[1] = 0;
      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v25);
      }

      v29 = v40[0];
      v40[0] = 0;
      if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v25);
      }
    }

    v48 = -1;
    v30 = cf;
    cf = 0;
    if (v30)
    {
      CFRelease(v30);
    }

    v31 = v35;
    v35 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v25);
    }

    v32 = *&v34[8];
    *&v34[8] = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v25);
    }

    result = *v34;
    *v34 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v25);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkConnectionToWebProcess::preconnectTo(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED640D10;
  if (os_log_type_enabled(qword_1ED640D10, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 272);
    v10 = *(a4 + 60);
    v11 = *a4;
    v12 = a4[1];
    v13 = a4[2];
    v14 = a4[400];
    *v45 = 134219520;
    *&v45[4] = a1;
    *&v45[12] = 2048;
    *&v45[14] = v9;
    v46 = 1024;
    LODWORD(v47) = v10;
    WORD2(v47) = 2048;
    *(&v47 + 6) = v11;
    HIWORD(v47) = 2048;
    v48 = v12;
    *v49 = 2048;
    *&v49[2] = v13;
    v50 = 2048;
    cf[0] = v14;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::preconnectTo: (parentPID=%d, pageProxyID=%llu, webPageID=%llu, frameID=%llu, resourceID=%llu)", v45, 0x44u);
  }

  ++*(a1 + 20);
  v15 = WebKit::NetworkProcess::supplement<WebKit::LegacyCustomProtocolManager>(*(a1 + 88));
  v16 = v15;
  if (v15)
  {
    v17 = *(v15 + 24);
    if (!v17)
    {
      goto LABEL_66;
    }

    atomic_fetch_add((v17 + 144), 1u);
  }

  v18 = WebCore::ResourceRequestBase::url((a4 + 3));
  WTF::URL::protocol(v18);
  if ((v19 & 0x100000000) != 0)
  {
    WTF::String::String();
  }

  else
  {
    WTF::String::String();
  }

  v21 = WebKit::LegacyCustomProtocolManager::supportsScheme(v16, v45);
  v22 = *v45;
  *v45 = 0;
  if (!v22 || atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (!v16)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  WTF::StringImpl::destroy(v22, v20);
  if (v16)
  {
LABEL_11:
    WebKit::LegacyCustomProtocolManager::deref(v16);
  }

LABEL_12:
  if (v21)
  {
    WebCore::ResourceRequestBase::url((a4 + 3));
    WebCore::internalError();
    if (a3)
    {
      WebKit::NetworkConnectionToWebProcess::didFinishPreconnection(a1, a2, v45);
    }

    v24 = *(cf + 4);
    *(cf + 4) = 0;
    if (v24)
    {
      CFRelease(v24);
    }

    v25 = *v49;
    *v49 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v23);
    }

    v26 = *&v45[8];
    *&v45[8] = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v23);
    }

    result = *v45;
    *v45 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v23);
    }

    goto LABEL_57;
  }

  v28 = *(a1 + 88);
  *v45 = *(a1 + 96);
  v29 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v28 + 240), v45);
  v30 = v29;
  if (v29)
  {
    ++*(v29 + 16);
    if (*(v29 + 724) == 1)
    {
      WebKit::NetworkResourceLoadParameters::networkLoadParameters(a4, v45);
      v31 = WTF::fastMalloc(0x30);
      WebKit::PreconnectTask::PreconnectTask(v31, v30, v45);
      if (v55 == 1)
      {
        v44 = v54;
        v54 = 0;
        if (v44)
        {
        }
      }

      WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v53, v32);
      if (v52[2912] == 1)
      {
        WebKit::NavigationActionData::~NavigationActionData(v52, v33);
      }

      WebCore::ResourceRequest::~ResourceRequest(v49);
      v35 = *(&v47 + 1);
      *(&v47 + 1) = 0;
      if (v35)
      {
        WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v35, v34);
      }

      v36 = v47;
      *&v47 = 0;
      if (v36)
      {
        WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v36, v34);
      }

      v37 = WTF::fastMalloc(0x28);
      *v37 = &unk_1F10FF948;
      *(v37 + 8) = a1;
      *(v37 + 16) = a1;
      *(v37 + 24) = a2;
      *(v37 + 32) = a3;
      *v45 = v37;
      WebKit::PreconnectTask::start(v31, v45, 60.0);
      result = *v45;
      *v45 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      if (*(v31 + 20) == 1)
      {
        result = (*(*v31 + 24))(v31);
      }

      else
      {
        --*(v31 + 20);
      }

      v38 = v30[4];
      if (v38)
      {
        v30[4] = v38 - 1;
        return result;
      }

      goto LABEL_66;
    }
  }

  WebCore::ResourceRequestBase::url((a4 + 3));
  WebCore::internalError();
  if (a3)
  {
    WebKit::NetworkConnectionToWebProcess::didFinishPreconnection(a1, a2, v45);
  }

  v40 = *(cf + 4);
  *(cf + 4) = 0;
  if (v40)
  {
    CFRelease(v40);
  }

  v41 = *v49;
  *v49 = 0;
  if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v41, v39);
  }

  v42 = *&v45[8];
  *&v45[8] = 0;
  if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v42, v39);
  }

  result = *v45;
  *v45 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v39);
  }

  if (!v30)
  {
    goto LABEL_57;
  }

  v43 = v30[4];
  if (!v43)
  {
LABEL_66:
    __break(0xC471u);
    JUMPOUT(0x19DC2707CLL);
  }

  v30[4] = v43 - 1;
LABEL_57:
  if (*(a1 + 20) == 1)
  {
    return (*(*a1 + 8))(a1);
  }

  --*(a1 + 20);
  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::isResourceLoadFinished(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 112);
  if (v3)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC271DCLL);
    }

    v4 = *(v3 - 8);
    v5 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v3 + 16 * v8);
    if (v9 == a2)
    {
      v10 = 0;
    }

    else
    {
      v11 = 1;
      do
      {
        v10 = v9 == 0;
        if (!v9)
        {
          break;
        }

        v8 = (v8 + v11) & v4;
        v9 = *(v3 + 16 * v8);
        ++v11;
      }

      while (v9 != a2);
    }
  }

  else
  {
    v10 = 1;
  }

  v12 = *a3;
  *a3 = 0;
  (*(*v12 + 16))(v12, v10);
  v13 = *(*v12 + 8);

  return v13(v12);
}

IPC::Encoder *WebKit::NetworkConnectionToWebProcess::didFinishPreconnection(IPC::Encoder *result, void *a2, WebCore::ResourceError *a3)
{
  v3 = atomic_load((*(result + 10) + 33));
  if (v3)
  {
    v6 = *(result + 10);
    v7 = IPC::Encoder::operator new(0x238, a2);
    *v7 = 516;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = 0;
    IPC::Encoder::encodeHeader(v7);
    v11 = v7;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, a2);
    IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(v7, a3);
    IPC::Connection::sendMessageImpl(v6, &v11, 0, 0);
    result = v11;
    v11 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v8);
      return bmalloc::api::tzoneFree(v9, v10);
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::startDownload(void *a1, uint64_t a2, CFTypeRef *a3, WebCore::SecurityOriginData *a4, __int16 a5, atomic_uint **a6, char a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  v16 = a1[11];
  v15 = a1[12];
  v18 = *(v16 + 184);
  v17 = (v16 + 184);
  *v17 = v18 + 1;
  result = WebKit::DownloadManager::startDownload(v17, v15, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a1[34], 1);
  if (*v17)
  {
    --*v17;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::NetworkProcessConnection::LoadCancelledDownloadRedirectRequestInFrame>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 517;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  Messages::NetworkProcessConnection::LoadCancelledDownloadRedirectRequestInFrame::encode<IPC::Encoder>(a2, v10);
  v12 = IPC::Connection::sendMessageImpl(a1, &v17, a4, a5);
  v13 = v17;
  v17 = 0;
  if (v13)
  {
    IPC::Encoder::~Encoder(v13, v11);
    bmalloc::api::tzoneFree(v15, v16);
  }

  return v12;
}

WTF::StringImpl *WebKit::NetworkConnectionToWebProcess::convertMainResourceLoadToDownload(uint64_t *a1, WTF::StringImpl *a2, char a3, uint64_t a4, CFTypeRef *a5, WebCore::SecurityOriginData *a6, WebCore::ResourceResponseBase *a7, __int16 a8)
{
  v16 = WTF::RunLoop::mainSingleton(a1);
  if ((WTF::RunLoop::isCurrent(v16) & 1) == 0)
  {
    __break(0xC471u);
    goto LABEL_17;
  }

  if ((a3 & 1) == 0)
  {
    v19 = a1[11];
    v21 = *(v19 + 184);
    v20 = (v19 + 184);
    *v20 = v21 + 1;
    v22 = a1[12];
    v25 = 0;
    WebKit::DownloadManager::startDownload(v20, v22, a4, a5, a6, a8, &v25, 0, 0, 0, 0, 0, 0, 0);
    result = v25;
    v25 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v23);
    }

    if (*v20)
    {
      --*v20;
      return result;
    }

    __break(0xC471u);
LABEL_17:
    JUMPOUT(0x19DC275B0);
  }

  v25 = a2;
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1 + 14, &v25);
  if (result)
  {
    v18 = result;
    ++*(result + 5);
    result = WebKit::NetworkResourceLoader::convertToDownload(result, a4, a5, a7);
    if (*(v18 + 5) == 1)
    {
      v24 = *(*v18 + 24);

      return v24(v18);
    }

    else
    {
      --*(v18 + 5);
    }
  }

  return result;
}

WebKit::NetworkSchemeRegistry *WebKit::NetworkConnectionToWebProcess::registerURLSchemesAsCORSEnabled(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 296);
  ++*v2;
  v3 = a2[3];
  if (v3)
  {
    v4 = *a2;
    v5 = 8 * v3;
    do
    {
      WebKit::NetworkSchemeRegistry::registerURLSchemeAsCORSEnabled(v2, v4++);
      v5 -= 8;
    }

    while (v5);
  }

  return WTF::RefCounted<WebKit::NetworkSchemeRegistry>::deref(v2, a2);
}

WTF::StringImpl *WebKit::NetworkConnectionToWebProcess::cookiesForDOM(void *a1, WTF::URL *a2, unsigned __int8 *a3, const WTF::String **a4, WTF::String *a5, WTF::String *a6, int a7, uint64_t a8, uint64_t *a9)
{
  v43 = *MEMORY[0x1E69E9840];
  PartyForCookies = WebKit::NetworkProcess::allowsFirstPartyForCookies(a1[11], a1[34], a2);
  if (PartyForCookies != 1)
  {
    if (PartyForCookies != 2)
    {
      v39 = 0;
      WTF::CompletionHandler<void ()(WTF::String,BOOL)>::operator()(a9, &v39);
      result = v39;
      if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {

        return WTF::StringImpl::destroy(result, v18);
      }

      return result;
    }

    v35 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::NetworkConnectionToWebProcess::cookiesForDOM(const URL &, const SameSiteInfo &, const URL &, FrameIdentifier, PageIdentifier, IncludeSecureCookies, WebPageProxyIdentifier, CompletionHandler<void (String, BOOL)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v35, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 794: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a1[10] + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      v40 = 0;
      WTF::CompletionHandler<void ()(WTF::String,BOOL)>::operator()(a9, &v40);
      result = v40;
      if (!v40)
      {
        return result;
      }

      goto LABEL_30;
    }

    __break(0xC471u);
LABEL_42:
    JUMPOUT(0x19DC27A84);
  }

  if (*a3 != 1 || (WebKit::shouldTreatAsSameSite(a2, a4, v17) & 1) != 0)
  {
    v20 = a1[11];
    *buf = a1[12];
    v21 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v20 + 248), buf);
    if (!v21)
    {
      v37 = 0;
      WTF::CompletionHandler<void ()(WTF::String,BOOL)>::operator()(a9, &v37);
      result = v37;
      if (!v37)
      {
        return result;
      }

      goto LABEL_30;
    }

    v22 = v21;
    ++*(v21 + 8);
    v23 = a1[11];
    *buf = a8;
    *&buf[8] = 1;
    if (*(v23 + 384))
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v23 + 384), buf);
    }

    WebCore::NetworkStorageSession::cookiesForDOM();
    v24 = a1[11];
    v41 = a1[12];
    v25 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v24 + 240), &v41);
    if (v25)
    {
      v26 = v25;
      ++v25[4];
      if ((*(*v25 + 88))(v25))
      {
        WebKit::NetworkResourceLoader::logCookieInformation(a1, "NetworkConnectionToWebProcess::cookiesForDOM", 45, a1, v22, a2, a3, a4, MEMORY[0x1E696EBA8], a5, 1, a6, 1, 0, 0);
      }

      v27 = v26[4];
      if (!v27)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC27AA4);
      }

      v26[4] = v27 - 1;
    }

    v28 = *buf;
    *buf = 0;
    v36 = v28;
    WTF::CompletionHandler<void ()(WTF::String,BOOL)>::operator()(a9, &v36);
    v30 = v36;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v29);
    }

    result = *buf;
    *buf = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v29);
    }

    v31 = *(v22 + 8);
    if (v31)
    {
      *(v22 + 8) = v31 - 1;
      return result;
    }

    __break(0xC471u);
    goto LABEL_42;
  }

  v32 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v34 = a1[34];
    *buf = 134218240;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = v34;
    _os_log_error_impl(&dword_19D52D000, v32, OS_LOG_TYPE_ERROR, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::cookiesForDOM: Rejecting cookie access due to invalid sameSiteInfo", buf, 0x16u);
  }

  v38 = 0;
  WTF::CompletionHandler<void ()(WTF::String,BOOL)>::operator()(a9, &v38);
  result = v38;
  if (v38)
  {
LABEL_30:
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v33);
    }
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(WTF::String,BOOL)>::operator()(uint64_t *a1, WTF::StringImpl **a2)
{
  v2 = *a1;
  *a1 = 0;
  v3 = *a2;
  *a2 = 0;
  v7 = v3;
  (*(*v2 + 16))(v2, &v7);
  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  return (*(*v2 + 8))(v2);
}

uint64_t WebKit::shouldTreatAsSameSite(WebKit *this, const WTF::URL *a2, const WTF::URL *a3)
{
  if (WebCore::SecurityPolicy::shouldInheritSecurityOriginFromOwner(a2, a2))
  {
    return 1;
  }

  WebCore::RegistrableDomain::RegistrableDomain(&v12, this);
  WebCore::RegistrableDomain::RegistrableDomain(&v11, a2);
  v5 = WTF::equal(v12, v11, v6);
  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = v12;
  v12 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  return v5;
}

void WebKit::NetworkConnectionToWebProcess::setCookiesFromDOM(void *a1, WTF::URL *a2, unsigned __int8 *a3, const WTF::String **a4, WTF::String *a5, WTF::String *a6, int a7, int a8, uint64_t a9)
{
  v30 = *MEMORY[0x1E69E9840];
  PartyForCookies = WebKit::NetworkProcess::allowsFirstPartyForCookies(a1[11], a1[34], a2);
  if (PartyForCookies == 1)
  {
    if (*a3 == 1 && (WebKit::shouldTreatAsSameSite(a2, a4, v16) & 1) == 0)
    {
      v27 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v28 = a1[34];
        *buf = 134218240;
        *&buf[4] = a1;
        *&buf[12] = 2048;
        *&buf[14] = v28;
        _os_log_error_impl(&dword_19D52D000, v27, OS_LOG_TYPE_ERROR, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::setCookiesFromDOM: Rejecting cookie access due to invalid sameSiteInfo", buf, 0x16u);
      }
    }

    else
    {
      v18 = a1[11];
      *buf = a1[12];
      v19 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v18 + 248), buf);
      if (v19)
      {
        v20 = v19;
        ++*(v19 + 8);
        v21 = a1[11];
        *buf = a9;
        *&buf[8] = 1;
        if (*(v21 + 384))
        {
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v21 + 384), buf);
        }

        WebCore::NetworkStorageSession::setCookiesFromDOM();
        v22 = a1[11];
        *buf = a1[12];
        v23 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v22 + 240), buf);
        if (v23)
        {
          v24 = v23;
          ++v23[4];
          if ((*(*v23 + 88))(v23))
          {
            WebKit::NetworkResourceLoader::logCookieInformation(a1, "NetworkConnectionToWebProcess::setCookiesFromDOM", 49, a1, v20, a2, a3, a4, MEMORY[0x1E696EBA8], a5, 1, a6, 1, 0, 0);
          }

          v25 = v24[4];
          if (!v25)
          {
LABEL_23:
            __break(0xC471u);
            JUMPOUT(0x19DC27CB0);
          }

          v24[4] = v25 - 1;
        }

        v26 = *(v20 + 8);
        if (!v26)
        {
          __break(0xC471u);
          JUMPOUT(0x19DC27F0CLL);
        }

        *(v20 + 8) = v26 - 1;
      }
    }
  }

  else if (PartyForCookies == 2)
  {
    v17 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::NetworkConnectionToWebProcess::setCookiesFromDOM(const URL &, const SameSiteInfo &, const URL &, FrameIdentifier, PageIdentifier, const String &, RequiresScriptTrackingPrivacy, WebPageProxyIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v17, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 818: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a1[10] + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      goto LABEL_23;
    }
  }
}

uint64_t WebKit::NetworkConnectionToWebProcess::cookiesEnabled(void *a1, WTF::URL *a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, uint64_t *a9)
{
  v25 = *MEMORY[0x1E69E9840];
  PartyForCookies = WebKit::NetworkProcess::allowsFirstPartyForCookies(a1[11], a1[34], a2);
  if (PartyForCookies == 1)
  {
    v12 = a1[11];
    *&v24 = a1[12];
    v13 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v12 + 248), &v24);
    if (v13)
    {
      v14 = v13;
      ++*(v13 + 8);
      WebCore::NetworkStorageSession::addCookiesEnabledStateObserver();
      v15 = a1[11];
      *&v24 = a8;
      *(&v24 + 1) = 1;
      if (*(v15 + 384))
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v15 + 384), &v24);
      }

      v16 = WebCore::NetworkStorageSession::cookiesEnabled();
      v17 = *a9;
      *a9 = 0;
      (*(*v17 + 16))(v17, v16);
      result = (*(*v17 + 8))(v17);
      v19 = *(v14 + 8);
      if (v19)
      {
        *(v14 + 8) = v19 - 1;
        return result;
      }

LABEL_15:
      __break(0xC471u);
      JUMPOUT(0x19DC2826CLL);
    }

    goto LABEL_12;
  }

  if (PartyForCookies != 2)
  {
LABEL_12:
    v22 = *a9;
    *a9 = 0;
    (*(*v22 + 16))(v22, 0);
    v23 = *(*v22 + 8);

    return v23(v22);
  }

  v20 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v24) = 136446210;
    *(&v24 + 4) = "void WebKit::NetworkConnectionToWebProcess::cookiesEnabled(const URL &, const URL &, std::optional<FrameIdentifier>, std::optional<PageIdentifier>, WebPageProxyIdentifier, CompletionHandler<void (BOOL)> &&)";
    _os_log_fault_impl(&dword_19D52D000, v20, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 846: Invalid message dispatched %{public}s", &v24, 0xCu);
  }

  *(a1[10] + 94) = 1;
  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    goto LABEL_15;
  }

  v21 = *a9;
  *a9 = 0;
  (*(*v21 + 16))(v21, 0);
  return (*(*v21 + 8))(v21);
}

WTF::StringImpl *WebKit::NetworkConnectionToWebProcess::cookieRequestHeaderFieldValue(void *a1, WTF::URL *a2, _BYTE *a3, const WTF::URL *a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v38 = *MEMORY[0x1E69E9840];
  PartyForCookies = WebKit::NetworkProcess::allowsFirstPartyForCookies(a1[11], a1[34], a2);
  if (PartyForCookies != 1)
  {
    if (PartyForCookies != 2)
    {
      v35 = 0;
      WTF::CompletionHandler<void ()(WTF::String,BOOL)>::operator()(a12, &v35);
      result = v35;
      if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {

        return WTF::StringImpl::destroy(result, v18);
      }

      return result;
    }

    v31 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::NetworkConnectionToWebProcess::cookieRequestHeaderFieldValue(const URL &, const SameSiteInfo &, const URL &, std::optional<FrameIdentifier>, std::optional<PageIdentifier>, IncludeSecureCookies, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (String, BOOL)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v31, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 863: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a1[10] + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      v36 = 0;
      WTF::CompletionHandler<void ()(WTF::String,BOOL)>::operator()(a12, &v36);
      result = v36;
      if (!v36)
      {
        return result;
      }

      goto LABEL_26;
    }

    __break(0xC471u);
LABEL_38:
    JUMPOUT(0x19DC28648);
  }

  if (*a3 != 1 || (WebKit::shouldTreatAsSameSite(a2, a4, v17) & 1) != 0)
  {
    v20 = a1[11];
    *buf = a1[12];
    v21 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v20 + 248), buf);
    if (!v21)
    {
      v33 = 0;
      WTF::CompletionHandler<void ()(WTF::String,BOOL)>::operator()(a12, &v33);
      result = v33;
      if (!v33)
      {
        return result;
      }

      goto LABEL_26;
    }

    v22 = v21;
    ++*(v21 + 8);
    v23 = a1[11];
    *buf = a10;
    *&buf[8] = a11;
    if ((a11 & 1) != 0 && *(v23 + 384))
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v23 + 384), buf);
    }

    WebCore::NetworkStorageSession::cookieRequestHeaderFieldValue();
    v24 = *buf;
    *buf = 0;
    v32 = v24;
    WTF::CompletionHandler<void ()(WTF::String,BOOL)>::operator()(a12, &v32);
    v26 = v32;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v25);
    }

    result = *buf;
    *buf = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v25);
    }

    v27 = *(v22 + 8);
    if (v27)
    {
      *(v22 + 8) = v27 - 1;
      return result;
    }

    __break(0xC471u);
    goto LABEL_38;
  }

  v28 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v30 = a1[34];
    *buf = 134218240;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = v30;
    _os_log_error_impl(&dword_19D52D000, v28, OS_LOG_TYPE_ERROR, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::cookieRequestHeaderFieldValue: Rejecting cookie access due to invalid sameSiteInfo", buf, 0x16u);
  }

  v34 = 0;
  WTF::CompletionHandler<void ()(WTF::String,BOOL)>::operator()(a12, &v34);
  result = v34;
  if (v34)
  {
LABEL_26:
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v29);
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::getRawCookies(void *a1, WTF::URL *a2, _BYTE *a3, const WTF::URL *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v32 = *MEMORY[0x1E69E9840];
  PartyForCookies = WebKit::NetworkProcess::allowsFirstPartyForCookies(a1[11], a1[34], a2);
  if (PartyForCookies != 1)
  {
    if (PartyForCookies == 2)
    {
      v29 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "void WebKit::NetworkConnectionToWebProcess::getRawCookies(const URL &, const SameSiteInfo &, const URL &, std::optional<FrameIdentifier>, std::optional<PageIdentifier>, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (Vector<WebCore::Cookie> &&)> &&)";
        _os_log_fault_impl(&dword_19D52D000, v29, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 881: Invalid message dispatched %{public}s", buf, 0xCu);
      }

      *(a1[10] + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        goto LABEL_19;
      }
    }

    goto LABEL_3;
  }

  if (*a3 == 1 && (WebKit::shouldTreatAsSameSite(a2, a4, v16) & 1) == 0)
  {
    v27 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v28 = a1[34];
      *buf = 134218240;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = v28;
      _os_log_error_impl(&dword_19D52D000, v27, OS_LOG_TYPE_ERROR, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::getRawCookies: Rejecting cookie access due to invalid sameSiteInfo", buf, 0x16u);
    }

    goto LABEL_3;
  }

  v20 = a1[11];
  *buf = a1[12];
  v21 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v20 + 248), buf);
  if (!v21)
  {
LABEL_3:
    *buf = 0;
    *&buf[8] = 0;
    v17 = *a11;
    *a11 = 0;
    (*(*v17 + 16))(v17, buf);
    (*(*v17 + 8))(v17);
    return WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v18);
  }

  v22 = v21;
  ++*(v21 + 8);
  v30[0] = 0;
  v30[1] = 0;
  v23 = a1[11];
  *buf = a9;
  *&buf[8] = a10;
  if ((a10 & 1) != 0 && *(v23 + 384))
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v23 + 384), buf);
  }

  WebCore::NetworkStorageSession::getRawCookies();
  v24 = *a11;
  *a11 = 0;
  (*(*v24 + 16))(v24, v30);
  (*(*v24 + 8))(v24);
  result = WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v25);
  v26 = *(v22 + 8);
  if (!v26)
  {
    __break(0xC471u);
LABEL_19:
    JUMPOUT(0x19DC28918);
  }

  *(v22 + 8) = v26 - 1;
  return result;
}

void WebKit::NetworkConnectionToWebProcess::setRawCookie(void *a1, WTF::URL *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  PartyForCookies = WebKit::NetworkProcess::allowsFirstPartyForCookies(a1[11], a1[34], a2);
  if (PartyForCookies == 1)
  {
    v5 = a1[11];
    *v9 = a1[12];
    v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v5 + 248), v9);
    if (v6)
    {
      v7 = v6;
      ++*(v6 + 8);
      WebCore::NetworkStorageSession::setCookie();
      v8 = *(v7 + 8);
      if (!v8)
      {
        goto LABEL_11;
      }

      *(v7 + 8) = v8 - 1;
    }
  }

  else if (PartyForCookies == 2)
  {
    v4 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v9 = 136446210;
      *&v9[4] = "void WebKit::NetworkConnectionToWebProcess::setRawCookie(const URL &, const URL &, const WebCore::Cookie &, ShouldPartitionCookie)";
      _os_log_fault_impl(&dword_19D52D000, v4, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 900: Invalid message dispatched %{public}s", v9, 0xCu);
    }

    *(a1[10] + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
LABEL_11:
      __break(0xC471u);
      JUMPOUT(0x19DC28A28);
    }
  }
}

uint64_t WebKit::NetworkConnectionToWebProcess::deleteCookie(void *a1, WTF::URL *a2, _BYTE *a3, uint64_t a4, uint64_t *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!*a2 || !*(*a2 + 4) || (*(a2 + 8) & 1) == 0)
  {
    v11 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v20 = 136446210;
      *&v20[4] = "void WebKit::NetworkConnectionToWebProcess::deleteCookie(const URL &, const URL &, const String &, CompletionHandler<void ()> &&)";
      _os_log_fault_impl(&dword_19D52D000, v11, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 919: Invalid message dispatched %{public}s", v20, 0xCu);
    }

    *(a1[10] + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      goto LABEL_28;
    }

    goto LABEL_34;
  }

  if (!*a3 || !*(*a3 + 4) || (a3[8] & 1) == 0)
  {
    v16 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v20 = 136446210;
      *&v20[4] = "void WebKit::NetworkConnectionToWebProcess::deleteCookie(const URL &, const URL &, const String &, CompletionHandler<void ()> &&)";
      _os_log_fault_impl(&dword_19D52D000, v16, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 920: Invalid message dispatched %{public}s", v20, 0xCu);
    }

    *(a1[10] + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC28CFCLL);
    }

    goto LABEL_28;
  }

  if (!*a4 || !*(*a4 + 4))
  {
    v17 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v20 = 136446210;
      *&v20[4] = "void WebKit::NetworkConnectionToWebProcess::deleteCookie(const URL &, const URL &, const String &, CompletionHandler<void ()> &&)";
      _os_log_fault_impl(&dword_19D52D000, v17, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 921: Invalid message dispatched %{public}s", v20, 0xCu);
    }

    *(a1[10] + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      goto LABEL_28;
    }

LABEL_34:
    __break(0xC471u);
    JUMPOUT(0x19DC28C70);
  }

  PartyForCookies = WebKit::NetworkProcess::allowsFirstPartyForCookies(a1[11], a1[34], a2);
  if (PartyForCookies != 1)
  {
    if (PartyForCookies != 2)
    {
LABEL_11:
      v8 = *a5;
      *a5 = 0;
      (*(*v8 + 16))(v8);
      v9 = *(*v8 + 8);

      return v9(v8);
    }

    v19 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v20 = 136446210;
      *&v20[4] = "void WebKit::NetworkConnectionToWebProcess::deleteCookie(const URL &, const URL &, const String &, CompletionHandler<void ()> &&)";
      _os_log_fault_impl(&dword_19D52D000, v19, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 923: Invalid message dispatched %{public}s", v20, 0xCu);
    }

    *(a1[10] + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC28EB4);
    }

LABEL_28:
    v18 = *a5;
    *a5 = 0;
    (*(*v18 + 16))(v18);
    return (*(*v18 + 8))(v18);
  }

  v12 = a1[11];
  *v20 = a1[12];
  v13 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v12 + 248), v20);
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v13;
  ++*(v13 + 8);
  result = WebCore::NetworkStorageSession::deleteCookie();
  v15 = *(v14 + 8);
  if (!v15)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC28F18);
  }

  *(v14 + 8) = v15 - 1;
  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::cookiesForDOMAsync(void *a1, WTF::URL *a2, unsigned __int8 *a3, const WTF::URL *a4, WTF::String *a5, uint64_t a6, WTF::String *a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  v43 = *MEMORY[0x1E69E9840];
  PartyForCookies = WebKit::NetworkProcess::allowsFirstPartyForCookies(a1[11], a1[34], a2);
  if (PartyForCookies != 1)
  {
    if (PartyForCookies == 2)
    {
      v39 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "void WebKit::NetworkConnectionToWebProcess::cookiesForDOMAsync(const URL &, const SameSiteInfo &, const URL &, std::optional<WebCore::FrameIdentifier>, std::optional<WebCore::PageIdentifier>, IncludeSecureCookies, WebCore::CookieStoreGetOptions &&, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (std::optional<Vector<WebCore::Cookie>> &&)> &&)";
        _os_log_fault_impl(&dword_19D52D000, v39, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 936: Invalid message dispatched %{public}s", buf, 0xCu);
      }

      *(a1[10] + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        goto LABEL_29;
      }
    }

    goto LABEL_3;
  }

  if (*a3 == 1 && (WebKit::shouldTreatAsSameSite(a2, a4, v22) & 1) == 0)
  {
    v37 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v38 = a1[34];
      *buf = 134218240;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = v38;
      _os_log_error_impl(&dword_19D52D000, v37, OS_LOG_TYPE_ERROR, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::cookiesForDOMAsync: Rejecting cookie access due to invalid sameSiteInfo", buf, 0x16u);
    }

    goto LABEL_3;
  }

  v26 = a1[11];
  *buf = a1[12];
  v27 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v26 + 248), buf);
  if (!v27)
  {
LABEL_3:
    buf[0] = 0;
    buf[16] = 0;
    v23 = *a13;
    *a13 = 0;
    (*(*v23 + 16))(v23, buf);
    result = (*(*v23 + 8))(v23);
    if (buf[16] == 1)
    {
      return WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v25);
    }

    return result;
  }

  v28 = v27;
  v40 = a8;
  ++*(v27 + 8);
  v29 = a1[11];
  *buf = a11;
  *&buf[8] = a12;
  if ((a12 & 1) != 0 && *(v29 + 384))
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v29 + 384), buf);
  }

  WebCore::NetworkStorageSession::cookiesForDOMAsVector();
  v30 = a1[11];
  v41 = a1[12];
  v31 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v30 + 240), &v41);
  if (v31)
  {
    v32 = v31;
    ++v31[4];
    if ((*(*v31 + 88))(v31))
    {
      WebKit::NetworkResourceLoader::logCookieInformation(a1, "NetworkConnectionToWebProcess::cookiesForDOMAsync", 50, a1, v28, a2, a3, a4, MEMORY[0x1E696EBA8], a5, a6, a7, v40, 0, 0);
    }

    v33 = v32[4];
    if (!v33)
    {
      __break(0xC471u);
LABEL_29:
      JUMPOUT(0x19DC292C4);
    }

    v32[4] = v33 - 1;
  }

  v34 = *a13;
  *a13 = 0;
  (*(*v34 + 16))(v34, buf);
  result = (*(*v34 + 8))(v34);
  if (buf[16] == 1)
  {
    result = WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v35);
  }

  v36 = *(v28 + 8);
  if (!v36)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC29340);
  }

  *(v28 + 8) = v36 - 1;
  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::setCookieFromDOMAsync(void *a1, WTF::URL *a2, unsigned __int8 *a3, const WTF::URL *a4, WTF::String *a5, uint64_t a6, WTF::String *a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  v48 = *MEMORY[0x1E69E9840];
  PartyForCookies = WebKit::NetworkProcess::allowsFirstPartyForCookies(a1[11], a1[34], a2);
  if (PartyForCookies != 1)
  {
    if (PartyForCookies != 2)
    {
LABEL_3:
      v21 = *a13;
      *a13 = 0;
      (*(*v21 + 16))(v21, 0);
      v22 = *(*v21 + 8);

      return v22(v21);
    }

    v43 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::NetworkConnectionToWebProcess::setCookieFromDOMAsync(const URL &, const SameSiteInfo &, const URL &, std::optional<FrameIdentifier>, std::optional<PageIdentifier>, WebCore::Cookie &&, RequiresScriptTrackingPrivacy, std::optional<WebPageProxyIdentifier>, CompletionHandler<void (BOOL)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v43, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 960: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a1[10] + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
LABEL_29:
      __break(0xC471u);
      JUMPOUT(0x19DC297B4);
    }

LABEL_22:
    v41 = *a13;
    *a13 = 0;
    (*(*v41 + 16))(v41, 0);
    return (*(*v41 + 8))(v41);
  }

  if (*a3 == 1 && (WebKit::shouldTreatAsSameSite(a2, a4, v20) & 1) == 0)
  {
    v40 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v42 = a1[34];
      *buf = 134218240;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = v42;
      _os_log_error_impl(&dword_19D52D000, v40, OS_LOG_TYPE_ERROR, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::setCookieFromDOMAsync: Rejecting cookie access due to invalid sameSiteInfo", buf, 0x16u);
    }

    goto LABEL_22;
  }

  v44 = a5;
  v24 = a1[11];
  *buf = a1[12];
  v25 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v24 + 248), buf);
  if (!v25)
  {
    goto LABEL_3;
  }

  v26 = v25;
  ++*(v25 + 8);
  v27 = a1[11];
  *buf = a11;
  *&buf[8] = a12;
  if (a12)
  {
    v28 = a4;
    if (*(v27 + 384))
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v27 + 384), buf);
    }

    v29 = a6;
    v30 = a7;
    v31 = a3;
    v32 = a8;
  }

  else
  {
    v29 = a6;
    v28 = a4;
    v30 = a7;
    v31 = a3;
    v32 = a8;
  }

  v33 = WebCore::NetworkStorageSession::setCookieFromDOM();
  v34 = a1[11];
  *buf = a1[12];
  v35 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v34 + 240), buf);
  if (v35)
  {
    v36 = v35;
    ++v35[4];
    if ((*(*v35 + 88))(v35))
    {
      WebKit::NetworkResourceLoader::logCookieInformation(a1, "NetworkConnectionToWebProcess::setCookiesFromDOMAsync", 54, a1, v26, a2, v31, v28, MEMORY[0x1E696EBA8], v44, v29, v30, v32, 0, 0);
    }

    v37 = v36[4];
    if (!v37)
    {
      goto LABEL_29;
    }

    v36[4] = v37 - 1;
  }

  v38 = *a13;
  *a13 = 0;
  (*(*v38 + 16))(v38, v33);
  result = (*(*v38 + 8))(v38);
  v39 = *(v26 + 8);
  if (!v39)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC29854);
  }

  *(v26 + 8) = v39 - 1;
  return result;
}

WTF::StringImpl *WebKit::NetworkConnectionToWebProcess::domCookiesForHost(void *a1, WTF::URL *this, uint64_t *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  WTF::URL::host(this);
  if ((v6 & 0x100000000) != 0)
  {
    WTF::String::String();
  }

  else
  {
    WTF::String::String();
  }

  WTF::URL::host(this);
  if ((v7 & 0x100000000) != 0)
  {
    WTF::String::String();
  }

  else
  {
    WTF::String::String();
  }

  v9 = *buf;
  *buf = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  if (v9 + 1 <= 1)
  {
    v10 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::NetworkConnectionToWebProcess::domCookiesForHost(const URL &, CompletionHandler<void (const Vector<WebCore::Cookie> &)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v10, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 985: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a1[10] + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC29BACLL);
    }

    goto LABEL_12;
  }

  PartyForCookies = WebKit::NetworkProcess::allowsFirstPartyForCookies(a1[11], a1[34], this);
  if (PartyForCookies != 1)
  {
    if (PartyForCookies != 2)
    {
      goto LABEL_12;
    }

    v16 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::NetworkConnectionToWebProcess::domCookiesForHost(const URL &, CompletionHandler<void (const Vector<WebCore::Cookie> &)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v16, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 987: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a1[10] + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  v17 = a1[11];
  *buf = a1[12];
  v18 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v17 + 248), buf);
  if (!v18)
  {
LABEL_12:
    *buf = 0uLL;
    v11 = *a3;
    *a3 = 0;
    (*(*v11 + 16))(v11, buf);
    (*(*v11 + 8))(v11);
    WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v12);
    goto LABEL_13;
  }

  v19 = v18;
  ++*(v18 + 2);
  WebCore::NetworkStorageSession::domCookiesForHost(buf, v18, this);
  v20 = *a3;
  *a3 = 0;
  (*(*v20 + 16))(v20, buf);
  (*(*v20 + 8))(v20);
  WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v21);
  v22 = *(v19 + 2);
  if (!v22)
  {
LABEL_29:
    __break(0xC471u);
    JUMPOUT(0x19DC29A5CLL);
  }

  *(v19 + 2) = v22 - 1;
LABEL_13:
  result = v23;
  if (v23)
  {
    if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v23, v13);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkConnectionToWebProcess::subscribeToCookieChangeNotifications(void *a1, WTF::URL *a2, WTF::URL *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v31 = *MEMORY[0x1E69E9840];
  PartyForCookies = WebKit::NetworkProcess::allowsFirstPartyForCookies(a1[11], a1[34], a3);
  if (PartyForCookies != 1)
  {
    if (PartyForCookies != 2)
    {
      v12 = *a7;
      *a7 = 0;
      (*(*v12 + 16))(v12, 0);
      v13 = *(*v12 + 8);

      return v13(v12);
    }

    v27 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "void WebKit::NetworkConnectionToWebProcess::subscribeToCookieChangeNotifications(const URL &, const URL &, WebCore::FrameIdentifier, WebCore::PageIdentifier, WebPageProxyIdentifier, CompletionHandler<void (BOOL)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v27, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 1003: Invalid message dispatched %{public}s", &buf, 0xCu);
    }

    *(a1[10] + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      v28 = *a7;
      *a7 = 0;
      (*(*v28 + 16))(v28, 0);
      return (*(*v28 + 8))(v28);
    }

LABEL_30:
    __break(0xC471u);
    JUMPOUT(0x19DC29FB0);
  }

  WTF::URL::host(a2);
  if ((v15 & 0x100000000) != 0)
  {
    WTF::String::String();
  }

  else
  {
    WTF::String::String();
  }

  if (v29 + 1 > 1)
  {
    v20 = a1[11];
    *&buf = a1[12];
    v21 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v20 + 248), &buf);
    if (v21)
    {
      v22 = v21;
      ++*(v21 + 8);
      v23 = a1[11];
      *&buf = a6;
      *(&buf + 1) = 1;
      if (*(v23 + 384))
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v23 + 384), &buf);
      }

      v24 = WebCore::NetworkStorageSession::startListeningForCookieChangeNotifications();
      v26 = *(v22 + 8);
      if (!v26)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC29FD0);
      }

      *(v22 + 8) = v26 - 1;
      if (v24)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a1 + 26, &v29, v25, &buf);
        v17 = 1;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v16 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "void WebKit::NetworkConnectionToWebProcess::subscribeToCookieChangeNotifications(const URL &, const URL &, WebCore::FrameIdentifier, WebCore::PageIdentifier, WebPageProxyIdentifier, CompletionHandler<void (BOOL)> &&)";
      _os_log_fault_impl(&dword_19D52D000, v16, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 1008: Invalid message dispatched %{public}s", &buf, 0xCu);
    }

    *(a1[10] + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      goto LABEL_30;
    }
  }

  v17 = 0;
LABEL_13:
  v18 = *a7;
  *a7 = 0;
  (*(*v18 + 16))(v18, v17);
  (*(*v18 + 8))(v18);
  result = v29;
  v29 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v19);
  }

  return result;
}

void WebKit::NetworkConnectionToWebProcess::unsubscribeFromCookieChangeNotifications(WebKit::NetworkConnectionToWebProcess *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a2 + 1 <= 1)
  {
    v4 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::NetworkConnectionToWebProcess::unsubscribeFromCookieChangeNotifications(const String &)";
      _os_log_fault_impl(&dword_19D52D000, v4, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 1021: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(*(this + 10) + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      goto LABEL_24;
    }

    return;
  }

  v6 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(this + 26, a2, a3);
  v7 = *(this + 26);
  if (v7)
  {
    v8 = (v7 + 8 * *(v7 - 4));
    if (v8 == v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_10;
    }

    v8 = 0;
  }

  if (v8 != v6)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(this + 26, v6);
  }

LABEL_10:
  v9 = *(this + 11);
  *buf = *(this + 12);
  v10 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v9 + 248), buf);
  if (v10)
  {
    v11 = v10;
    ++*(v10 + 8);
    v12 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    }

    v16 = v12;
    WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(buf, &v16, 1);
    WebCore::NetworkStorageSession::stopListeningForCookieChangeNotifications();
    if (*buf)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v13);
    }

    v14 = v16;
    v16 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v13);
    }

    v15 = *(v11 + 8);
    if (!v15)
    {
      __break(0xC471u);
LABEL_24:
      JUMPOUT(0x19DC2A050);
    }

    *(v11 + 8) = v15 - 1;
  }
}

IPC::Encoder *WebKit::NetworkConnectionToWebProcess::cookiesAdded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 80);
  v5[0] = a2;
  v5[1] = a3;
  return IPC::Connection::send<Messages::NetworkProcessConnection::CookiesAdded>(v3, v5);
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkProcessConnection::CookiesAdded>(uint64_t *a1, uint64_t *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 512;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, *a2);
  IPC::VectorArgumentCoder<false,WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v4, a2[1]);
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

IPC::Encoder *non-virtual thunk toWebKit::NetworkConnectionToWebProcess::cookiesAdded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  v5[0] = a2;
  v5[1] = a3;
  return IPC::Connection::send<Messages::NetworkProcessConnection::CookiesAdded>(v3, v5);
}

IPC::Encoder *WebKit::NetworkConnectionToWebProcess::cookiesDeleted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 80);
  v5[0] = a2;
  v5[1] = a3;
  return IPC::Connection::send<Messages::NetworkProcessConnection::CookiesDeleted>(v3, v5);
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkProcessConnection::CookiesDeleted>(uint64_t *a1, uint64_t *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 513;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, *a2);
  IPC::VectorArgumentCoder<false,WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v4, a2[1]);
  IPC::Connection::sendMessageImpl(a1, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

IPC::Encoder *non-virtual thunk toWebKit::NetworkConnectionToWebProcess::cookiesDeleted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  v5[0] = a2;
  v5[1] = a3;
  return IPC::Connection::send<Messages::NetworkProcessConnection::CookiesDeleted>(v3, v5);
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkProcessConnection::AllCookiesDeleted>(uint64_t *a1, void *a2)
{
  v3 = IPC::Encoder::operator new(0x238, a2);
  *v3 = 508;
  *(v3 + 68) = 0;
  *(v3 + 70) = 0;
  *(v3 + 69) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 1) = 0;
  IPC::Encoder::encodeHeader(v3);
  v8 = v3;
  IPC::Connection::sendMessageImpl(a1, &v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v4);
    return bmalloc::api::tzoneFree(v6, v7);
  }

  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::NetworkProcessConnection::UpdateCachedCookiesEnabled>(uint64_t *a1, void *a2)
{
  v3 = IPC::Encoder::operator new(0x238, a2);
  *v3 = 520;
  *(v3 + 68) = 0;
  *(v3 + 70) = 0;
  *(v3 + 69) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 1) = 0;
  IPC::Encoder::encodeHeader(v3);
  v8 = v3;
  IPC::Connection::sendMessageImpl(a1, &v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v4);
    return bmalloc::api::tzoneFree(v6, v7);
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::isFilePathAllowed(uint64_t a1, const WTF::String *a2, WTF::FileSystemImpl *a3)
{
  WTF::FileSystemImpl::lexicallyNormal(&v33, a3, a2);
  v7 = v33;
  v33 = 0;
  v8 = *a3;
  *a3 = v7;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }

    v9 = v33;
    v33 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v6);
    }
  }

  WTF::FileSystemImpl::parentPath(&v33, a3, v6);
  if (WTF::equal(v33, *a3, v10))
  {
LABEL_8:
    v13 = 0;
  }

  else
  {
    while (1)
    {
      v14 = *(a1 + 352);
      if (v14)
      {
        break;
      }

LABEL_10:
      if (WTF::equal(v33, *(*(a2 + 131) + 48), v12) & 1) != 0 || (WTF::equal(v33, *(*(a2 + 131) + 152), v15))
      {
        goto LABEL_35;
      }

      v16 = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
      }

      v17 = *a3;
      *a3 = v16;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v11);
      }

      WTF::FileSystemImpl::parentPath(&v32, a3, v11);
      v21 = v32;
      v20 = v33;
      v32 = 0;
      v33 = v21;
      if (v20)
      {
        if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v18);
        }

        v22 = v32;
        v32 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v18);
        }
      }

      if (WTF::equal(v33, *a3, v19))
      {
        goto LABEL_8;
      }
    }

    v23 = *a3;
    if (*a3 == -1 || !v23)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC2A70CLL);
    }

    v24 = *(v14 - 8);
    v25 = *(v23 + 4);
    if (v25 < 0x100)
    {
      v26 = WTF::StringImpl::hashSlowCase(v23);
    }

    else
    {
      v26 = v25 >> 8;
    }

    for (i = 0; ; v26 = i + v28)
    {
      v28 = v26 & v24;
      v29 = *(v14 + 8 * (v26 & v24));
      if (v29 != -1)
      {
        if (!v29)
        {
          goto LABEL_10;
        }

        if (WTF::equal(v29, *a3, v12))
        {
          break;
        }
      }

      ++i;
    }

LABEL_35:
    v13 = 1;
  }

  v30 = v33;
  v33 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v11);
  }

  return v13;
}

void WebKit::NetworkConnectionToWebProcess::registerInternalFileBlobURL(uint64_t a1, uint64_t a2, const WTF::String *a3, const WTF::String *a4, uint64_t *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*a2 && *(*a2 + 4))
  {
    v10 = *(a1 + 88);
    *buf = *(a1 + 96);
    v11 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v10 + 240), buf);
    if (!v11)
    {
      return;
    }

    v12 = v11;
    ++*(v11 + 16);
    if ((*(a1 + 339) & 8) == 0)
    {
      goto LABEL_13;
    }

    v13 = WTF::linkedOnOrAfterSDKWithBehavior();
    if (!v13 || (WebCore::Quirks::shouldDisableBlobFileAccessEnforcement(v13) & 1) != 0)
    {
      goto LABEL_13;
    }

    v14 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    }

    v32 = v14;
    isFilePathAllowed = WebKit::NetworkConnectionToWebProcess::isFilePathAllowed(a1, v12, &v32);
    v17 = v32;
    v32 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v15);
    }

    if (isFilePathAllowed)
    {
LABEL_13:
      v18 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      }

      *buf = v18;
      *&buf[8] = *(a2 + 8);
      v34 = *(a2 + 24);
      LOBYTE(v35) = 0;
      v38 = 0;
      WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v31, (a1 + 312), buf);
      if (v38 == 1)
      {
        if (!v37)
        {
          v20 = v36;
          v36 = 0;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v19);
          }

          v21 = v35;
          v35 = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v19);
          }
        }

        v37 = -1;
      }

      v22 = *buf;
      *buf = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v19);
      }

      if (*a5)
      {
        v23 = WTF::fastMalloc(0x18);
        *v23 = 1;
        v24 = *a5;
        *a5 = 0;
        *(v23 + 8) = v24;
        *(v23 + 16) = 0;
      }

      else
      {
        v23 = 0;
      }

      v25 = WTF::fastMalloc(0x40);
      v26 = WebCore::BlobDataFileReference::BlobDataFileReference(v25, a3, a4);
      *v26 = &unk_1F110D7F0;
      v26[7] = v23;
      *buf = v26;
      WebCore::BlobRegistryImpl::registerInternalFileBlobURL();
      v27 = *buf;
      *buf = 0;
      if (v27)
      {
        if (v27[2] == 1)
        {
          (*(*v27 + 8))(v27);
        }

        else
        {
          --v27[2];
        }
      }

LABEL_33:
      v28 = *(v12 + 4);
      if (!v28)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC2AAE8);
      }

      *(v12 + 4) = v28 - 1;
      return;
    }

    v30 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::NetworkConnectionToWebProcess::registerInternalFileBlobURL(const URL &, const String &, const String &, SandboxExtension::Handle &&, const String &)";
      _os_log_fault_impl(&dword_19D52D000, v30, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 1082: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(*(a1 + 80) + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
    {
      goto LABEL_33;
    }

    __break(0xC471u);
LABEL_46:
    JUMPOUT(0x19DC2AA84);
  }

  v29 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::NetworkConnectionToWebProcess::registerInternalFileBlobURL(const URL &, const String &, const String &, SandboxExtension::Handle &&, const String &)";
    _os_log_fault_impl(&dword_19D52D000, v29, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 1076: Invalid message dispatched %{public}s", buf, 0xCu);
  }

  *(*(a1 + 80) + 94) = 1;
  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    goto LABEL_46;
  }
}

uint64_t std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>::~pair(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 72) == 1)
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
  }

  v5 = *a1;
  *a1 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WebKit::NetworkConnectionToWebProcess::registerInternalBlobURL(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a1[11];
  v12 = a1[12];
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v4 + 240), &v12);
  if (result)
  {
    v6 = result;
    ++*(result + 16);
    v7 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    v12 = v7;
    v8 = *(a2 + 24);
    v13 = *(a2 + 8);
    v14 = v8;
    v15 = 0;
    v16 = 0;
    WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v11, a1 + 39, &v12);
    std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>::~pair(&v12, v9);
    result = WebCore::BlobRegistryImpl::registerInternalBlobURL();
    v10 = *(v6 + 16);
    if (v10)
    {
      *(v6 + 16) = v10 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::registerBlobURL(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[10] = *MEMORY[0x1E69E9840];
  v8 = a1[11];
  v14[0] = a1[12];
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v8 + 240), v14);
  if (result)
  {
    v10 = result;
    ++*(result + 16);
    std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>::pair[abi:sn200100]<true,0>(v14, a2, a5);
    WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v13, a1 + 39, v14);
    std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>::~pair(v14, v11);
    result = WebCore::BlobRegistryImpl::registerBlobURL();
    v12 = *(v10 + 16);
    if (v12)
    {
      *(v10 + 16) = v12 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

void WebKit::NetworkConnectionToWebProcess::registerInternalBlobURLOptionallyFileBacked(uint64_t a1, uint64_t a2, uint64_t a3, const WTF::String *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*a2 && *(*a2 + 4) && *a3 && *(*a3 + 4) && *a4 && *(*a4 + 4))
  {
    v7 = *(a1 + 88);
    *buf = *(a1 + 96);
    v8 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v7 + 240), buf);
    if (v8)
    {
      v9 = v8;
      ++*(v8 + 16);
      if ((*(a1 + 339) & 8) == 0)
      {
        goto LABEL_17;
      }

      v10 = WTF::linkedOnOrAfterSDKWithBehavior();
      if (!v10 || (WebCore::Quirks::shouldDisableBlobFileAccessEnforcement(v10) & 1) != 0)
      {
        goto LABEL_17;
      }

      v11 = *a4;
      if (*a4)
      {
        atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      }

      v35 = v11;
      isFilePathAllowed = WebKit::NetworkConnectionToWebProcess::isFilePathAllowed(a1, v9, &v35);
      v14 = v35;
      v35 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v12);
      }

      if ((isFilePathAllowed & 1) == 0)
      {
        v32 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446210;
          *&buf[4] = "void WebKit::NetworkConnectionToWebProcess::registerInternalBlobURLOptionallyFileBacked(URL &&, URL &&, const String &, String &&)";
          _os_log_fault_impl(&dword_19D52D000, v32, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 1115: Invalid message dispatched %{public}s", buf, 0xCu);
        }

        *(*(a1 + 80) + 94) = 1;
        if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
        {
          __break(0xC471u);
          goto LABEL_62;
        }
      }

      else
      {
LABEL_17:
        v15 = *a2;
        if (*a2)
        {
          atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
        }

        *buf = v15;
        *&buf[8] = *(a2 + 8);
        *v37 = *(a2 + 24);
        LOBYTE(v38) = 0;
        v42 = 0;
        WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v34, (a1 + 312), buf);
        if (v42 == 1)
        {
          if (!v41)
          {
            v17 = v39;
            v39 = 0;
            if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v16);
            }

            v18 = v38;
            v38 = 0;
            if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, v16);
            }
          }

          LOBYTE(v41) = -1;
        }

        v19 = *buf;
        *buf = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v16);
        }

        v33 = 0;
        v20 = WTF::fastMalloc(0x40);
        v21 = WebCore::BlobDataFileReference::BlobDataFileReference(v20, a4, &v33);
        *v21 = &unk_1F110D7F0;
        v21[7] = 0;
        v34 = v21;
        memset(buf, 0, sizeof(buf));
        LOWORD(v37[0]) = 0;
        v37[1] = 0;
        v38 = 0;
        LOWORD(v39) = 0;
        v40 = 0;
        v41 = 0;
        v42 = 7;
        WebCore::BlobRegistryImpl::registerInternalBlobURLOptionallyFileBacked();
        v23 = v41;
        v41 = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v22);
        }

        v24 = v40;
        v40 = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v22);
        }

        v25 = v38;
        v38 = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v22);
        }

        v26 = v37[1];
        v37[1] = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v22);
        }

        WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v22);
        v28 = v34;
        v34 = 0;
        if (v28)
        {
          if (v28[2] == 1)
          {
            (*(*v28 + 8))(v28);
          }

          else
          {
            --v28[2];
          }
        }

        v29 = v33;
        v33 = 0;
        if (v29)
        {
          if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v27);
          }
        }
      }

      v30 = *(v9 + 4);
      if (v30)
      {
        *(v9 + 4) = v30 - 1;
        return;
      }

      __break(0xC471u);
LABEL_62:
      JUMPOUT(0x19DC2B1D0);
    }
  }

  else
  {
    v31 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::NetworkConnectionToWebProcess::registerInternalBlobURLOptionallyFileBacked(URL &&, URL &&, const String &, String &&)";
      _os_log_fault_impl(&dword_19D52D000, v31, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 1110: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(*(a1 + 80) + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC2B21CLL);
    }
  }
}

uint64_t WebKit::NetworkConnectionToWebProcess::registerInternalBlobURLForSlice(WebKit::NetworkConnectionToWebProcess *this, const WTF::URL *a2, const WTF::URL *a3, uint64_t a4, uint64_t a5, const WTF::String *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v12 = *(this + 11);
  v23 = *(this + 12);
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v12 + 240), &v23);
  if (result)
  {
    v14 = result;
    ++*(result + 16);
    v15 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    }

    v23 = v15;
    v16 = *(a2 + 24);
    v24 = *(a2 + 8);
    v25 = v16;
    LOBYTE(v26) = 0;
    v29 = 0;
    WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v22, this + 39, &v23);
    if (v29 == 1)
    {
      if (!v28)
      {
        v18 = v27;
        v27 = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v17);
        }

        v19 = v26;
        v26 = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v17);
        }
      }

      v28 = -1;
    }

    v20 = v23;
    v23 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v17);
    }

    result = WebCore::BlobRegistryImpl::registerInternalBlobURLForSlice((v14 + 640), a2, a3, a4, a5, a6);
    v21 = *(v14 + 16);
    if (v21)
    {
      *(v14 + 16) = v21 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::unregisterBlobURL(void *a1, uint64_t a2, uint64_t a3)
{
  v12[10] = *MEMORY[0x1E69E9840];
  v6 = a1[11];
  v12[0] = a1[12];
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v6 + 240), v12);
  if (result)
  {
    v8 = result;
    ++*(result + 16);
    std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>::pair[abi:sn200100]<true,0>(v12, a2, a3);
    v9 = WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>>,(WTF::ShouldValidateKey)1,std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(a1 + 39, v12);
    WTF::HashSet<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(a1 + 39, v9);
    std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>::~pair(v12, v10);
    result = WebCore::BlobRegistryImpl::unregisterBlobURL();
    v11 = *(v8 + 16);
    if (v11)
    {
      *(v8 + 16) = v11 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::registerBlobURLHandle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 88);
  v25[0] = *(a1 + 96);
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v6 + 240), v25);
  if (result)
  {
    v8 = result;
    ++*(result + 16);
    std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>::pair[abi:sn200100]<true,0>(v25, a2, a3);
    if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v25))
    {
      goto LABEL_42;
    }

    if (v25[0] == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC2B7E4);
    }

    v9 = *(a1 + 320);
    if (v9 || (WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashMap<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::expand((a1 + 320), 0), (v9 = *(a1 + 320)) != 0))
    {
      v10 = *(v9 - 8);
    }

    else
    {
      v10 = 0;
    }

    v11 = WTF::PairHash<WTF::URL,std::optional<WebCore::SecurityOriginData>>::hash(v25) & v10;
    v12 = v9 + 88 * v11;
    if ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v12) & 1) == 0)
    {
      v14 = 0;
      v15 = 1;
      do
      {
        if (*v12 == -1)
        {
          v14 = v12;
        }

        else if (WTF::PairHash<WTF::URL,std::optional<WebCore::SecurityOriginData>>::equal(v12, v25, v13))
        {
          goto LABEL_21;
        }

        v11 = (v11 + v15) & v10;
        v12 = v9 + 88 * v11;
        ++v15;
      }

      while (!WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v12));
      if (v14)
      {
        WTF::PairHashTraits<WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::optional<WebCore::SecurityOriginData>>>::emptyValue(v14);
        *(v14 + 80) = 0;
        --*(*(a1 + 320) - 16);
        v12 = v14;
      }
    }

    WTF::URL::operator=(v12, v25);
    std::__optional_storage_base<WebCore::SecurityOriginData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::SecurityOriginData,false>>((v12 + 40), &v26);
    *(v12 + 80) = 0;
    v17 = *(a1 + 320);
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
LABEL_21:
        ++*(v12 + 80);
        if (v29 == 1)
        {
          if (!v28)
          {
            v21 = v27;
            v27 = 0;
            if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v21, v16);
            }

            v22 = v26;
            v26 = 0;
            if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v22, v16);
            }
          }

          v28 = -1;
        }

        v23 = v25[0];
        v25[0] = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v16);
        }

        result = WebCore::BlobRegistryImpl::registerBlobURLHandle();
        v24 = *(v8 + 16);
        if (v24)
        {
          *(v8 + 16) = v24 - 1;
          return result;
        }

LABEL_42:
        __break(0xC471u);
        JUMPOUT(0x19DC2B7C4);
      }
    }

    else if (3 * v20 > 4 * v19)
    {
      goto LABEL_21;
    }

    v12 = WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashMap<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::expand((a1 + 320), v12);
    goto LABEL_21;
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::unregisterBlobURLHandle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 88);
  v31[0] = *(a1 + 96);
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v6 + 240), v31);
  if (result)
  {
    v8 = result;
    ++*(result + 16);
    std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>::pair[abi:sn200100]<true,0>(v31, a2, a3);
    if (!*(a1 + 320))
    {
      goto LABEL_12;
    }

    if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v31))
    {
      __break(0xC471u);
      JUMPOUT(0x19DC2BB64);
    }

    if (v31[0] == -1)
    {
      goto LABEL_59;
    }

    v10 = *(a1 + 320);
    if (!v10)
    {
      goto LABEL_12;
    }

    v11 = *(v10 - 8);
    v12 = WTF::PairHash<WTF::URL,std::optional<WebCore::SecurityOriginData>>::hash(v31) & v11;
    v13 = v10 + 88 * v12;
    if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v13))
    {
LABEL_11:
      v16 = *(a1 + 320);
      if (!v16)
      {
        goto LABEL_12;
      }

      v13 = v16 + 88 * *(v16 - 4);
    }

    else
    {
      v15 = 1;
      while (*v13 == -1 || (WTF::PairHash<WTF::URL,std::optional<WebCore::SecurityOriginData>>::equal(v13, v31, v14) & 1) == 0)
      {
        v12 = (v12 + v15) & v11;
        v13 = v10 + 88 * v12;
        ++v15;
        if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,false>::isEmptyValue<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>(v13))
        {
          goto LABEL_11;
        }
      }

      v16 = *(a1 + 320);
      if (!v16)
      {
        v21 = 0;
        v22 = 1;
LABEL_31:
        if (v21 == v13)
        {
          goto LABEL_12;
        }

        if (*(v13 + 80) != 1)
        {
          --*(v13 + 80);
          goto LABEL_12;
        }

        if (v22)
        {
          v23 = 0;
        }

        else
        {
          v23 = v16 + 88 * *(v16 - 4);
          if (v23 == v13)
          {
            goto LABEL_12;
          }
        }

        if (v23 != v13)
        {
          if (*(v13 + 72) == 1)
          {
            if (!*(v13 + 64))
            {
              v24 = *(v13 + 48);
              *(v13 + 48) = 0;
              if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v24, v9);
              }

              v25 = *(v13 + 40);
              *(v13 + 40) = 0;
              if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v25, v9);
              }
            }

            *(v13 + 64) = -1;
          }

          v26 = *v13;
          *v13 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v9);
          }

          *v13 = -1;
          v27 = *(a1 + 320);
          v28 = vadd_s32(*(v27 - 16), 0xFFFFFFFF00000001);
          *(v27 - 16) = v28;
          v29 = *(v27 - 4);
          if (6 * v28.i32[1] < v29 && v29 >= 9)
          {
            WTF::HashTable<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int>>,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashMap<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>,unsigned int,WTF::DefaultHash<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::URL,std::optional<WebCore::SecurityOriginData>>>,WTF::FastMalloc>::rehash((a1 + 320), v29 >> 1, 0);
          }
        }

LABEL_12:
        if (v35 == 1)
        {
          if (!v34)
          {
            v17 = v33;
            v33 = 0;
            if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v9);
            }

            v18 = v32;
            v32 = 0;
            if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, v9);
            }
          }

          v34 = -1;
        }

        v19 = v31[0];
        v31[0] = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v9);
        }

        result = WebCore::BlobRegistryImpl::unregisterBlobURLHandle();
        v20 = *(v8 + 16);
        if (v20)
        {
          *(v8 + 16) = v20 - 1;
          return result;
        }

LABEL_59:
        __break(0xC471u);
        JUMPOUT(0x19DC2BB44);
      }
    }

    v22 = 0;
    v21 = v16 + 88 * *(v16 - 4);
    goto LABEL_31;
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::blobType(uint64_t a1, const WTF::URL *a2, uint64_t *a3)
{
  v5 = *(a1 + 88);
  v14 = *(a1 + 96);
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v5 + 240), &v14);
  if (v6)
  {
    v7 = v6;
    ++*(v6 + 16);
    WebCore::BlobRegistryImpl::blobType(&v13, (v6 + 640), a2);
    WTF::CompletionHandler<void ()(WTF::String)>::operator()(a3, &v13);
    result = v13;
    v13 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v8);
    }

    v10 = *(v7 + 16);
    if (v10)
    {
      *(v7 + 16) = v10 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  else
  {
    v11 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    }

    v13 = v11;
    WTF::CompletionHandler<void ()(WTF::String)>::operator()(a3, &v13);
    result = v13;
    v13 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::blobSize(uint64_t a1, const WTF::URL *a2, uint64_t *a3)
{
  v5 = *(a1 + 88);
  v12 = *(a1 + 96);
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v5 + 240), &v12);
  v7 = v6;
  if (v6)
  {
    ++*(v6 + 16);
    v8 = WebCore::BlobRegistryImpl::blobSize((v6 + 640), a2);
  }

  else
  {
    v8 = 0;
  }

  v9 = *a3;
  *a3 = 0;
  (*(*v9 + 16))(v9, v8);
  result = (*(*v9 + 8))(v9);
  if (v7)
  {
    v11 = *(v7 + 16);
    if (v11)
    {
      *(v7 + 16) = v11 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::writeBlobsToTemporaryFilesForIndexedDB(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v56[3] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 88);
  *&buf = *(a1 + 96);
  v7 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v6 + 240), &buf);
  if (v7)
  {
    v8 = v7;
    ++*(v7 + 16);
    if (*(v7 + 24) <= -2)
    {
      v43 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 136446210;
        *(&buf + 4) = "void WebKit::NetworkConnectionToWebProcess::writeBlobsToTemporaryFilesForIndexedDB(const Vector<String> &, CompletionHandler<void (Vector<String> &&)> &&)";
        _os_log_fault_impl(&dword_19D52D000, v43, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/NetworkProcess/NetworkConnectionToWebProcess.cpp 1179: Invalid message dispatched %{public}s", &buf, 0xCu);
      }

      *(*(a1 + 80) + 94) = 1;
      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        goto LABEL_57;
      }

      buf = 0uLL;
      v44 = *a3;
      *a3 = 0;
      (*(*v44 + 16))(v44, &buf);
      (*(*v44 + 8))(v44);
      result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf, v45);
    }

    else
    {
      v49 = 0;
      v50 = 0;
      v9 = *(a2 + 3);
      if (v9)
      {
        v10 = *a2;
        v11 = *a2 + 8 * v9;
        do
        {
          v46[0] = 0;
          WTF::URL::invalidate(v46);
          MEMORY[0x19EB01E00](&buf, v46, v10, 0);
          LOBYTE(v51) = 0;
          v54 = 0;
          WebCore::BlobRegistryImpl::filesInBlob();
          v13 = v48;
          v14 = v48 + HIDWORD(v50);
          if (v14 > v50)
          {
            v15 = v50 + (v50 >> 1);
            if (v15 <= v50 + 1)
            {
              v15 = v50 + 1;
            }

            if (v15 > v14)
            {
              v14 = v15;
            }

            if (v14 <= 0x10)
            {
              v16 = 16;
            }

            else
            {
              v16 = v14;
            }

            WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v49, v16);
            v13 = v48;
          }

          if (v13)
          {
            v17 = v47;
            v18 = HIDWORD(v50);
            v19 = 8 * v13;
            v20 = v49;
            do
            {
              v21 = *v17;
              *v17++ = 0;
              v20[v18++] = v21;
              v19 -= 8;
            }

            while (v19);
            HIDWORD(v50) = v18;
          }

          WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v47, v12);
          if (v54 == 1 && v53 == 0)
          {
            v24 = v52;
            v52 = 0;
            if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v24, v22);
            }

            v25 = v51;
            v51 = 0;
            if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v25, v22);
            }
          }

          v26 = buf;
          *&buf = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v22);
          }

          v27 = v46[0];
          v46[0] = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v22);
          }

          v10 += 8;
        }

        while (v10 != v11);
        v28 = v49;
        v29 = HIDWORD(v50);
        if (HIDWORD(v50))
        {
          v30 = 0;
          v31 = 8 * HIDWORD(v50);
          do
          {
            (*(**&v28[v30] + 16))(*&v28[v30]);
            v30 += 8;
          }

          while (v31 != v30);
        }
      }

      else
      {
        v29 = 0;
        v28 = 0;
      }

      *&buf = a1;
      ++*(a1 + 20);
      v32 = v50;
      v49 = 0;
      v50 = 0;
      v33 = *a3;
      *a3 = 0;
      v34 = WTF::fastMalloc(0x30);
      *v34 = &unk_1F10FF970;
      *(v34 + 8) = a1;
      *(v34 + 16) = a1;
      *(v34 + 24) = v28;
      *(&buf + 1) = 0;
      v56[0] = 0;
      v56[1] = 0;
      *(v34 + 32) = v32;
      *(v34 + 36) = v29;
      *(v34 + 40) = v33;
      v46[0] = v34;
      WebCore::BlobRegistryImpl::writeBlobsToTemporaryFilesForIndexedDB();
      v36 = v46[0];
      v46[0] = 0;
      if (v36)
      {
        (*(*v36 + 8))(v36);
      }

      v56[2] = 0;
      WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v56, v35);
      v38 = *(&buf + 1);
      *(&buf + 1) = 0;
      if (v38)
      {
        if (v38[5] == 1)
        {
          (*(*v38 + 8))(v38);
        }

        else
        {
          --v38[5];
        }
      }

      result = WTF::Vector<WTF::RefPtr<WebCore::BlobDataFileReference,WTF::RawPtrTraits<WebCore::BlobDataFileReference>,WTF::DefaultRefDerefTraits<WebCore::BlobDataFileReference>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v49, v37);
    }

    v40 = *(v8 + 16);
    if (v40)
    {
      *(v8 + 16) = v40 - 1;
      return result;
    }

    __break(0xC471u);
LABEL_57:
    JUMPOUT(0x19DC2C270);
  }

  buf = 0uLL;
  v41 = *a3;
  *a3 = 0;
  (*(*v41 + 16))(v41, &buf);
  (*(*v41 + 8))(v41);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf, v42);
}

uint64_t WebKit::NetworkConnectionToWebProcess::registerBlobPathForTesting(WebKit::NetworkConnectionToWebProcess *a1, const WTF::String *a2, uint64_t *a3)
{
  if ((*(a1 + 336) & 4) != 0)
  {
    WebKit::NetworkConnectionToWebProcess::allowAccessToFile(a1, a2);
  }

  v4 = *a3;
  *a3 = 0;
  (*(*v4 + 16))(v4);
  v5 = *(*v4 + 8);

  return v5(v4);
}

WTF::StringImpl *WebKit::NetworkConnectionToWebProcess::allowAccessToFile(WebKit::NetworkConnectionToWebProcess *this, const WTF::String *a2)
{
  WTF::FileSystemImpl::lexicallyNormal(&v7, a2, a2);
  WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this + 44, &v7, v3, &v6);
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

void *WebKit::NetworkConnectionToWebProcess::setCaptureExtraNetworkLoadMetricsEnabled(void *this, void *a2)
{
  *(this + 216) = a2;
  if ((a2 & 1) == 0)
  {
    v2 = this;
    v3 = this[20];
    if (v3)
    {
      v2[20] = 0;
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebCore::NetworkLoadInformation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkLoadInformation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
    }

    this = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkResourceLoader,WTF::RawPtrTraits<WebKit::NetworkResourceLoader>,WTF::DefaultRefDerefTraits<WebKit::NetworkResourceLoader>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(v2 + 14);
    v5 = v2[14];
    if (v5)
    {
      v5 += 2 * *(v5 - 1);
    }

    while (this != v5)
    {
      *(this[1] + 4624) = 0;
      do
      {
        this += 2;
      }

      while (this != v4 && (*this + 1) <= 1);
    }
  }

  return this;
}

uint64_t WebKit::NetworkConnectionToWebProcess::clearPageSpecificData(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 88);
  v14 = *(a1 + 96);
  v5 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v4 + 240), &v14);
  if (v5)
  {
    v7 = v5;
    ++*(v5 + 4);
    WebKit::NetworkSession::protectedNetworkLoadScheduler(v5, v6, &v14);
    WebKit::NetworkLoadScheduler::clearPageData(v14, a2);
    v8 = v14;
    v14 = 0;
    if (v8)
    {
      WTF::RefCounted<WebKit::NetworkLoadScheduler>::deref((v8 + 8));
    }

    v9 = *(v7 + 4);
    if (!v9)
    {
      goto LABEL_10;
    }

    *(v7 + 4) = v9 - 1;
  }

  v10 = *(a1 + 88);
  v14 = *(a1 + 96);
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v10 + 248), &v14);
  if (!result)
  {
    return result;
  }

  v12 = result;
  ++*(result + 8);
  result = WebCore::NetworkStorageSession::clearPageSpecificDataForResourceLoadStatistics();
  v13 = *(v12 + 8);
  if (!v13)
  {
LABEL_10:
    __break(0xC471u);
    JUMPOUT(0x19DC2C4ECLL);
  }

  *(v12 + 8) = v13 - 1;
  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::removeStorageAccessForFrame(uint64_t a1)
{
  v1 = *(a1 + 88);
  v5 = *(a1 + 96);
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v1 + 248), &v5);
  if (result)
  {
    v3 = result;
    ++*(result + 8);
    result = WebCore::NetworkStorageSession::removeStorageAccessForFrame();
    v4 = *(v3 + 8);
    if (v4)
    {
      *(v3 + 8) = v4 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::logUserInteraction(uint64_t a1, WTF **a2)
{
  v3 = *(a1 + 88);
  v12 = *(a1 + 96);
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v3 + 240), &v12);
  if (result)
  {
    v5 = result;
    v6 = *(result + 16) + 1;
    *(result + 16) = v6;
    v7 = *(result + 72);
    if (v7)
    {
      while (1)
      {
        v8 = *v7;
        if ((*v7 & 1) == 0)
        {
          break;
        }

        v9 = *v7;
        atomic_compare_exchange_strong_explicit(v7, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v9 == v8)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_5:
      v10 = WTF::fastMalloc(0x10);
      *v10 = &unk_1F10FF998;
      v12 = v10;
      WebKit::WebResourceLoadStatisticsStore::logUserInteraction(v7, a2, &v12);
      v11 = v12;
      v12 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v7);
      v6 = *(v5 + 16);
    }

    if (v6)
    {
      *(v5 + 16) = v6 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::hasStorageAccess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *(a1 + 88);
  v25 = *(a1 + 96);
  v13 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v12 + 240), &v25);
  if (v13)
  {
    v14 = v13;
    ++*(v13 + 16);
    v15 = *(v13 + 72);
    if (v15)
    {
      while (1)
      {
        v16 = *v15;
        if ((*v15 & 1) == 0)
        {
          break;
        }

        v17 = *v15;
        atomic_compare_exchange_strong_explicit(v15, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v17 == v16)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v15);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::hasStorageAccess(v15, a2, a3, a4, 1, a5, a6);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v15);
    }

    else
    {
      v22 = *(a1 + 88);
      v25 = *(a1 + 96);
      v23 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v22 + 248), &v25);
      ++*(v23 + 8);
      result = WebCore::NetworkStorageSession::hasCookies();
      v24 = *(v23 + 8);
      if (!v24)
      {
        goto LABEL_14;
      }

      *(v23 + 8) = v24 - 1;
    }

    v19 = *(v14 + 16);
    if (v19)
    {
      *(v14 + 16) = v19 - 1;
      return result;
    }

LABEL_14:
    __break(0xC471u);
    JUMPOUT(0x19DC2C89CLL);
  }

  v20 = *a6;
  *a6 = 0;
  (*(*v20 + 16))(v20, 0);
  v21 = *(*v20 + 8);

  return v21(v20);
}

uint64_t WebKit::NetworkConnectionToWebProcess::requestStorageAccess(uint64_t a1, WTF **a2, WTF::StringImpl *a3, WTF::StringImpl *a4, WTF::StringImpl *a5, void *a6, char a7, uint64_t *a8)
{
  v15 = *(a1 + 88);
  v32 = *(a1 + 96);
  v16 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v15 + 240), &v32);
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + 16);
    *(v16 + 16) = v18 + 1;
    v19 = *(v16 + 72);
    if (v19)
    {
      while (1)
      {
        v20 = *v19;
        if ((*v19 & 1) == 0)
        {
          break;
        }

        v21 = *v19;
        atomic_compare_exchange_strong_explicit(v19, &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v21 == v20)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v19);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::requestStorageAccess(v19, a2, a3, a4, a5, a6, a7, a8);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v19);
      v23 = *(v17 + 16);
      if (v23)
      {
        *(v17 + 16) = v23 - 1;
        return result;
      }

LABEL_21:
      result = 290;
      __break(0xC471u);
      return result;
    }

    if (v18 == -1)
    {
      goto LABEL_21;
    }

    *(v16 + 16) = v18;
  }

  v28 = 1;
  v29 = a7;
  v24 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
  }

  v30 = v24;
  v25 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
  }

  v31 = v25;
  WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()(a8, &v28);
  v27 = v31;
  v31 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v26);
  }

  result = v30;
  v30 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v26);
    }
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(WebCore::RequestStorageAccessResult)>::operator()(uint64_t *a1, __int16 *a2)
{
  v2 = *a1;
  *a1 = 0;
  v8 = *a2;
  v9 = *(a2 + 2);
  v3 = *(a2 + 4);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *v10 = v3;
  (*(*v2 + 16))(v2, &v8);
  v5 = v10[1];
  v10[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = v10[0];
  v10[0] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  return (*(*v2 + 8))(v2);
}

uint64_t WebKit::NetworkConnectionToWebProcess::setLoginStatus(uint64_t a1, WTF **a2, const WTF::StringImpl *a3, uint64_t a4, uint64_t *a5)
{
  if (*(a1 + 343) & 1) == 0 || (*(a4 + 40))
  {
    goto LABEL_20;
  }

  WebCore::LoginStatus::create();
  v11 = v32;
  if (v32)
  {
    v12 = *a5;
    *a5 = 0;
    (*(*v12 + 16))(v12);
    result = (*(*v12 + 8))(v12);
  }

  else
  {
    v15 = v30;
    v29 = v30;
    v30 = 0;
    if (*(a4 + 40) == 1)
    {
      WTF::String::operator=(a4, v15);
      WTF::String::operator=((a4 + 8), v15 + 1);
      v16 = v15[4];
      *(a4 + 16) = *(v15 + 1);
      *(a4 + 32) = v16;
    }

    else
    {
      v17 = *v15;
      if (*v15)
      {
        atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
      }

      *a4 = v17;
      v18 = v15[1];
      if (v18)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      }

      *(a4 + 8) = v18;
      v19 = *(v15 + 1);
      *(a4 + 32) = v15[4];
      *(a4 + 16) = v19;
      *(a4 + 40) = 1;
    }

    result = std::unique_ptr<WebCore::LoginStatus>::reset[abi:sn200100](&v29, v10);
  }

  if (v32 != 255)
  {
    if (v32)
    {
      result = v31;
      v31 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v14);
        }
      }
    }

    else
    {
      result = std::unique_ptr<WebCore::LoginStatus>::reset[abi:sn200100](&v30, v14);
    }
  }

  if (!v11)
  {
LABEL_20:
    v20 = *(a1 + 88);
    v30 = *(a1 + 96);
    v21 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v20 + 240), &v30);
    if (v21)
    {
      v22 = v21;
      v23 = *(v21 + 16);
      *(v21 + 16) = v23 + 1;
      v24 = *(v21 + 72);
      if (v24)
      {
        while (1)
        {
          v25 = *v24;
          if ((*v24 & 1) == 0)
          {
            break;
          }

          v26 = *v24;
          atomic_compare_exchange_strong_explicit(v24, &v26, v25 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v26 == v25)
          {
            goto LABEL_24;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v24);
LABEL_24:
        WebKit::WebResourceLoadStatisticsStore::setLoginStatus(v24, a2, a3, a4, a5);
        result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v24);
        v27 = *(v22 + 16);
        if (v27)
        {
          *(v22 + 16) = v27 - 1;
          return result;
        }

LABEL_31:
        result = 290;
        __break(0xC471u);
        return result;
      }

      if (v23 == -1)
      {
        goto LABEL_31;
      }

      *(v21 + 16) = v23;
    }

    v28 = *a5;
    *a5 = 0;
    (*(*v28 + 16))(v28);
    return (*(*v28 + 8))(v28);
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::isLoggedIn(uint64_t a1, WTF **a2, const WTF::StringImpl *a3)
{
  v5 = *(a1 + 88);
  v16 = *(a1 + 96);
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v5 + 240), &v16);
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + 16);
    *(v6 + 16) = v8 + 1;
    v9 = *(v6 + 72);
    if (v9)
    {
      while (1)
      {
        v10 = *v9;
        if ((*v9 & 1) == 0)
        {
          break;
        }

        v11 = *v9;
        atomic_compare_exchange_strong_explicit(v9, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v11 == v10)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::isLoggedIn(v9, a2, a3);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v9);
      v13 = *(v7 + 16);
      if (v13)
      {
        *(v7 + 16) = v13 - 1;
        return result;
      }

      goto LABEL_13;
    }

    if (v8 == -1)
    {
LABEL_13:
      result = 290;
      __break(0xC471u);
      return result;
    }

    *(v6 + 16) = v8;
  }

  v14 = *a3;
  *a3 = 0;
  (*(*v14 + 16))(v14, 0);
  v15 = *(*v14 + 8);

  return v15(v14);
}

uint64_t WebKit::NetworkConnectionToWebProcess::storageAccessQuirkForTopFrameDomain(int a1, WebCore::NetworkStorageSession *this, uint64_t *a3)
{
  WebCore::NetworkStorageSession::storageAccessQuirkForTopFrameDomain(v7, this, this);
  WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>::operator()(a3, v7, v4);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v5);
}

uint64_t WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)>::operator()(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v3 = *a1;
  *a1 = 0;
  v4 = *a2;
  *a2 = 0;
  v9 = a3;
  v10[0] = v4;
  v5 = a2[1];
  a2[1] = 0;
  v10[1] = v5;
  (*(*v3 + 16))(v3, v10);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v6);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v7);
  return (*(*v3 + 8))(v3);
}

uint64_t WebKit::NetworkConnectionToWebProcess::requestStorageAccessUnderOpener(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 88);
  v14 = *(a1 + 96);
  result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v7 + 240), &v14);
  if (result)
  {
    v9 = result;
    v10 = *(result + 16) + 1;
    *(result + 16) = v10;
    v11 = *(result + 72);
    if (v11)
    {
      while (1)
      {
        v12 = *v11;
        if ((*v11 & 1) == 0)
        {
          break;
        }

        v13 = *v11;
        atomic_compare_exchange_strong_explicit(v11, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v13 == v12)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v11);
LABEL_5:
      WebKit::WebResourceLoadStatisticsStore::requestStorageAccessUnderOpener(v11, a2, a3, a4);
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebResourceLoadStatisticsStore,(WTF::DestructionThread)1>::deref(v11);
      v10 = *(v9 + 16);
    }

    if (v10)
    {
      *(v9 + 16) = v10 - 1;
    }

    else
    {
      result = 290;
      __break(0xC471u);
    }
  }

  return result;
}

WebCore::SecurityPolicy *WebKit::NetworkConnectionToWebProcess::addOriginAccessAllowListEntry(WebKit::NetworkConnectionToWebProcess *this, const WTF::String *a2, const WTF::String *a3, const WTF::String *a4, const WTF::String *a5)
{
  WebCore::SecurityOrigin::createFromString(&v10, a2, a2);
  WebCore::SecurityPolicy::addOriginAccessAllowlistEntry(v10, a3, a4, a5);
  result = v10;
  v10 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(result, v8);
  }

  return result;
}

WebCore::SecurityPolicy *WebKit::NetworkConnectionToWebProcess::removeOriginAccessAllowListEntry(WebKit::NetworkConnectionToWebProcess *this, const WTF::String *a2, const WTF::String *a3, const WTF::String *a4, const WTF::String *a5)
{
  WebCore::SecurityOrigin::createFromString(&v10, a2, a2);
  WebCore::SecurityPolicy::removeOriginAccessAllowlistEntry(v10, a3, a4, a5);
  result = v10;
  v10 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(result, v8);
  }

  return result;
}

uint64_t *WebKit::NetworkConnectionToWebProcess::startTrackingResourceLoad@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v19 = a3;
  v20 = a2;
  if (result[12] <= -2)
  {
    goto LABEL_4;
  }

  v8 = result;
  if (a4)
  {
    WebKit::NetworkConnectionToWebProcess::stopAllNetworkActivityTrackingForPage(result, a2);
    v11 = *(v8 + 39);
    if (v11 == *(v8 + 38))
    {
      WTF::Vector<WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::constructAndAppendSlowCase<(WTF::FailureAction)0,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &>((v8 + 18), &v20);
      v12 = *(v8 + 39);
    }

    else
    {
      v18 = v8[18] + 48 * v11;
      *v18 = a2;
      *(v18 + 8) = 0;
      *(v18 + 16) = 1;
      *(v18 + 24) = 0x100000010;
      *(v18 + 32) = 0;
      *(v18 + 40) = nw_activity_create();
      v12 = *(v8 + 39) + 1;
      *(v8 + 39) = v12;
    }

    if (v12 <= v11)
    {
      __break(0xC471u);
LABEL_27:
      JUMPOUT(0x19DC2D40CLL);
    }

    WebKit::NetworkActivityTracker::start((v8[18] + 48 * v11 + 24));
    LODWORD(v9) = *(v8 + 39);
  }

  else
  {
    v9 = *(result + 39);
    if (!v9)
    {
LABEL_4:
      v10 = 0;
      *a5 = 0;
      goto LABEL_5;
    }

    v11 = 0;
    v17 = (result[18] + 16);
    while (*v17 != 1 || *(v17 - 2) != a2)
    {
      ++v11;
      v17 += 48;
      if (v9 == v11)
      {
        goto LABEL_4;
      }
    }
  }

  if (v9 == *(v8 + 38))
  {
    WTF::Vector<WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::constructAndAppendSlowCase<(WTF::FailureAction)0,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long> &>((v8 + 18), &v20, &v19);
    v14 = *(v8 + 39);
  }

  else
  {
    v13 = v8[18] + 48 * v9;
    *v13 = a2;
    *(v13 + 8) = a3;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0x200000010;
    *(v13 + 32) = 0;
    *(v13 + 40) = nw_activity_create();
    v14 = *(v8 + 39) + 1;
    *(v8 + 39) = v14;
  }

  if (v14 <= v9)
  {
    __break(0xC471u);
    goto LABEL_27;
  }

  if (v11 >= v14)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC2D414);
  }

  v15 = v8[18];
  v16 = v15 + 48 * v9;
  WebKit::NetworkActivityTracker::setParent(v16 + 24, v15 + 48 * v11 + 24);
  WebKit::NetworkActivityTracker::start((v16 + 24));
  *a5 = *(v16 + 24);
  *(a5 + 8) = *(v16 + 32);
  result = *(v16 + 40);
  *(a5 + 16) = result;
  if (result)
  {
    result = CFRetain(result);
  }

  v10 = 1;
LABEL_5:
  *(a5 + 24) = v10;
  return result;
}

void WebKit::NetworkConnectionToWebProcess::stopTrackingResourceLoad(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 156);
  if (v2)
  {
    v3 = 0;
    v5 = *(a1 + 144);
    v4 = (a1 + 144);
    for (i = v5 + 24; ; i += 48)
    {
      v7 = *(i - 16);
      if (v7 && v7 == a2)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return;
      }
    }

    v9 = v4;
    v10 = v3;
    if (v3 >= v2)
    {
      __break(0xC471u);
    }

    else
    {
      WebKit::NetworkActivityTracker::complete(i);

      WTF::Vector<WebKit::NetworkConnectionToWebProcess::ResourceNetworkActivityTracker,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::removeAt(v9, v10, 1uLL);
    }
  }
}

uint64_t WebKit::NetworkConnectionToWebProcess::establishSharedWorkerContextConnection(WebKit::NetworkConnectionToWebProcess *a1, uint64_t a2, atomic_uint **a3, uint64_t *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 34);
    *v21 = 134218240;
    *&v21[4] = a1;
    v22 = 2048;
    v23 = v8;
    _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::establishSharedWorkerContextConnection:", v21, 0x16u);
  }

  v9 = *(a1 + 11);
  *v21 = *(a1 + 12);
  v10 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v9 + 240), v21);
  v12 = v10;
  if (v10)
  {
    ++*(v10 + 16);
    v13 = *(v10 + 800);
    if (v13)
    {
      ++*(v13 + 2);
      v14 = WebKit::WebSharedWorkerServerToContextConnection::operator new(0x88, v11);
      v15 = WebKit::WebSharedWorkerServerToContextConnection::WebSharedWorkerServerToContextConnection(v14, a1, a3, v13);
      v16 = *(a1 + 31);
      *(a1 + 31) = v15;
      if (v16)
      {
        WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref((v16 + 24));
      }

      v17 = *(v13 + 2);
      if (!v17)
      {
        goto LABEL_13;
      }

      *(v13 + 2) = v17 - 1;
    }
  }

  v18 = *a4;
  *a4 = 0;
  (*(*v18 + 16))(v18);
  result = (*(*v18 + 8))(v18);
  if (!v12)
  {
    return result;
  }

  v20 = *(v12 + 16);
  if (!v20)
  {
LABEL_13:
    __break(0xC471u);
    JUMPOUT(0x19DC2D684);
  }

  *(v12 + 16) = v20 - 1;
  return result;
}

void WebKit::NetworkConnectionToWebProcess::closeSharedWorkerContextConnection(WebKit::NetworkConnectionToWebProcess *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 34);
    v5 = 134218240;
    v6 = this;
    v7 = 2048;
    v8 = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::closeSharedWorkerContextConnection:", &v5, 0x16u);
  }

  v4 = *(this + 31);
  *(this + 31) = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref((v4 + 24));
  }
}

atomic_ullong *WebKit::NetworkConnectionToWebProcess::sharedWorkerServerToContextConnectionIsNoLongerNeeded(WebKit::NetworkConnectionToWebProcess *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641300;
  if (os_log_type_enabled(qword_1ED641300, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 34);
    *buf = 134218240;
    *v9 = this;
    *&v9[8] = 2048;
    *&v9[10] = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - [webProcessIdentifier=%llu] NetworkConnectionToWebProcess::sharedWorkerServerToContextConnectionIsNoLongerNeeded:", buf, 0x16u);
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(*(this + 11), &v7);
  v6 = *(this + 34);
  buf[0] = 2;
  *&v9[4] = &v6;
  IPC::Connection::send<Messages::NetworkProcessProxy::RemoteWorkerContextConnectionNoLongerNeeded>(v7, buf);
  result = v7;
  v7 = 0;
  if (result)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  v5 = *(this + 31);
  *(this + 31) = 0;
  if (v5)
  {
    return WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref((v5 + 24));
  }

  return result;
}
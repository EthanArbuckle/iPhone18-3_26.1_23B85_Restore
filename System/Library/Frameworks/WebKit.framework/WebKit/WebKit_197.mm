BOOL WebKit::SharedVideoFrameReader::setSharedMemory(uint64_t a1)
{
  WebCore::SharedMemory::map();
  v2 = *(a1 + 32);
  *(a1 + 32) = v4;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v2);
  }

  return *(a1 + 32) != 0;
}

uint64_t WebKit::WebGamepad::WebGamepad(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_1F112AD20;
  WTF::Vector<WebCore::SharedGamepadValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 64, *(a2 + 36));
  WTF::Vector<WebCore::SharedGamepadValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 80, *(a2 + 52));
  v6 = *(a2 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  *(a1 + 24) = v8;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  WTF::HashTable<WebCore::GamepadHapticEffectType,WebCore::GamepadHapticEffectType,WTF::IdentityExtractor,WTF::IntHash<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::FastMalloc>::HashTable(&v14, (a2 + 64));
  v12 = *(a1 + 56);
  *(a1 + 56) = v14;
  v14 = v12;
  if (v12)
  {
    WTF::fastFree((v12 - 16), v10);
  }

  WebKit::WebGamepad::updateValues(a1, a2, v11);
  return a1;
}

double WebKit::WebGamepad::updateValues(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 36);
  if (v5)
  {
    if (v5 >> 29)
    {
      __break(0xC471u);
      goto LABEL_28;
    }

    v6 = WTF::fastMalloc((8 * v5));
    v7 = *(a2 + 36);
    if (v7)
    {
      v8 = 0;
      v9 = *(a2 + 24);
      v10 = 8 * v7;
      do
      {
        v11 = v8;
        v12 = *(v9 + 8 * v8);
        v13 = WTF::fastMalloc(0x10);
        *v13 = 1;
        *(v13 + 8) = v12;
        ++v8;
        *(v6 + 8 * v11) = v13;
        v10 -= 8;
      }

      while (v10);
    }

    else
    {
      LODWORD(v8) = 0;
    }
  }

  else
  {
    LODWORD(v8) = 0;
    v6 = 0;
  }

  v14 = *(a1 + 76);
  if (v14)
  {
    WTF::VectorDestructor<true,WTF::CString>::destruct(*(a1 + 64), (*(a1 + 64) + 8 * v14));
  }

  v15 = *(a1 + 64);
  if (v15)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    WTF::fastFree(v15, a2);
  }

  a3.n128_u64[0] = 0;
  v30 = a3;
  *(a1 + 64) = v6;
  *(a1 + 72) = v5;
  *(a1 + 76) = v8;
  WTF::Vector<WebCore::SharedGamepadValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, a2);
  v18 = *(a2 + 52);
  if (!v18)
  {
    LODWORD(v21) = 0;
    v19 = 0;
    goto LABEL_21;
  }

  if (v18 >> 29)
  {
    __break(0xC471u);
LABEL_28:
    JUMPOUT(0x19E2D5204);
  }

  v19 = WTF::fastMalloc((8 * v18));
  v20 = *(a2 + 52);
  if (v20)
  {
    v21 = 0;
    v22 = *(a2 + 40);
    v23 = 8 * v20;
    do
    {
      v24 = v21;
      v25 = *(v22 + 8 * v21);
      v26 = WTF::fastMalloc(0x10);
      *v26 = 1;
      *(v26 + 8) = v25;
      ++v21;
      *(v19 + 8 * v24) = v26;
      v23 -= 8;
    }

    while (v23);
    v30.n128_u32[3] = v21;
  }

  else
  {
    LODWORD(v21) = 0;
  }

LABEL_21:
  v27 = *(a1 + 92);
  if (v27)
  {
    WTF::VectorDestructor<true,WTF::CString>::destruct(*(a1 + 80), (*(a1 + 80) + 8 * v27));
  }

  v28 = *(a1 + 80);
  if (v28)
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    WTF::fastFree(v28, v16);
  }

  v17.n128_u64[0] = 0;
  v30 = v17;
  *(a1 + 80) = v19;
  *(a1 + 88) = v18;
  *(a1 + 92) = v21;
  WTF::Vector<WebCore::SharedGamepadValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, v16);
  result = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

void WebKit::WebGamepadProvider::~WebGamepadProvider(WebKit::WebGamepadProvider *this, void *a2)
{
  WTF::Vector<WTF::WeakPtr<WebKit::ListDataObserver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 64, a2);
  v4 = *(this + 15);
  v5 = *(this + 6);
  if (v4)
  {
    v6 = 8 * v4;
    do
    {
      v7 = *v5;
      *v5 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      v5 = (v5 + 8);
      v6 -= 8;
    }

    while (v6);
    v5 = *(this + 6);
  }

  if (v5)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v5, v3);
  }

  v8 = *(this + 4);
  if (v8)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v8, v3);
  }

  *this = &unk_1F112AFF0;
  v9 = *(this + 1);
  if (v9)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v9, v3);
  }
}

{
  WebKit::WebGamepadProvider::~WebGamepadProvider(this, a2);

  JUMPOUT(0x19EB14CF0);
}

void WebKit::WebGamepadProvider::setInitialGamepads(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(a1 + 60))
  {
    v30 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      v31 = 136446210;
      v32 = "(m_gamepads.isEmpty())";
      _os_log_fault_impl(&dword_19D52D000, v30, OS_LOG_TYPE_FAULT, "Exiting: %{public}s is false", &v31, 0xCu);
    }

    WTFCrashWithInfoImpl(66, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/WebProcess/Gamepad/WebGamepadProvider.cpp", "void WebKit::WebGamepadProvider::setInitialGamepads(const Vector<std::optional<GamepadData>> &)");
  }

  v4 = *(a2 + 12);
  if (v4)
  {
    v5 = *(a1 + 56);
    if (v5 < v4)
    {
      if (v5 + (v5 >> 1) <= v5 + 1)
      {
        v6 = v5 + 1;
      }

      else
      {
        v6 = v5 + (v5 >> 1);
      }

      if (v6 <= v4)
      {
        v6 = *(a2 + 12);
      }

      if (v6 <= 0x10)
      {
        v7 = 16;
      }

      else
      {
        v7 = v6;
      }

      WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>((a1 + 48), v7);
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      bzero((v8 + 8 * *(a1 + 60)), 8 * (v4 - *(a1 + 60)));
    }
  }

  *(a1 + 60) = v4;
  v9 = *(a2 + 12);
  v10 = *(a1 + 76);
  if (v10 >= v9)
  {
    WTF::VectorDestructor<true,WTF::WeakPtr<WebKit::ListDataObserver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>::destruct((*(a1 + 64) + 8 * v9), (*(a1 + 64) + 8 * v10));
  }

  else
  {
    v11 = *(a1 + 72);
    if (v11 < v9)
    {
      if (v11 + (v11 >> 1) <= v11 + 1)
      {
        v12 = v11 + 1;
      }

      else
      {
        v12 = v11 + (v11 >> 1);
      }

      if (v12 <= v9)
      {
        v12 = *(a2 + 12);
      }

      if (v12 <= 0x10)
      {
        v13 = 16;
      }

      else
      {
        v13 = v12;
      }

      WTF::Vector<WTF::WeakPtr<WebCore::PlatformGamepad,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>((a1 + 64), v13);
    }

    v14 = *(a1 + 64);
    if (v14)
    {
      v15 = *(a1 + 76);
      if (v15 != v9)
      {
        bzero((v14 + 8 * v15), 8 * (v9 - v15));
      }
    }
  }

  *(a1 + 76) = v9;
  if (*(a2 + 12))
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *a2 + v16;
      if (*(v18 + 72) != 1)
      {
        break;
      }

      NonCompactSlow = bmalloc::api::tzoneAllocateNonCompactSlow();
      v20 = WebKit::WebGamepad::WebGamepad(NonCompactSlow, v18);
      v22 = *(a1 + 60);
      if (v17 >= v22)
      {
        goto LABEL_52;
      }

      v23 = *(a1 + 48);
      v24 = *(v23 + 8 * v17);
      *(v23 + 8 * v17) = v20;
      if (v24)
      {
        (*(*v24 + 8))(v24);
        v22 = *(a1 + 60);
      }

      if (v17 >= v22)
      {
        __break(0xC471u);
        JUMPOUT(0x19E2D561CLL);
      }

      v25 = *(a1 + 48);
      v26 = *(v25 + 8 * v17);
      if (v26)
      {
        WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v26 + 8), *(v25 + 8 * v17));
        v27 = *(v26 + 8);
        if (v27)
        {
          atomic_fetch_add(v27, 1u);
        }
      }

      else
      {
        v27 = 0;
      }

      if (v17 >= *(a1 + 76))
      {
LABEL_52:
        __break(0xC471u);
        JUMPOUT(0x19E2D5614);
      }

      v28 = *(a1 + 64);
      v29 = *(v28 + 8 * v17);
      *(v28 + 8 * v17) = v27;
      if (v29)
      {
        if (atomic_fetch_add(v29, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v29);
          WTF::fastFree(v29, v21);
        }
      }

      ++v17;
      v16 += 80;
    }

    while (v17 < *(a2 + 12));
  }
}

void *WebKit::WebGamepadProvider::gamepadConnected(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (*(a1 + 60) <= *a2)
  {
    v8 = v6 + 1;
    v9 = *(a1 + 56);
    if (v9 < v8)
    {
      if (v9 + (v9 >> 1) <= v9 + 1)
      {
        v10 = v9 + 1;
      }

      else
      {
        v10 = v9 + (v9 >> 1);
      }

      if (v10 <= v8)
      {
        v10 = v8;
      }

      if (v10 <= 0x10)
      {
        v11 = 16;
      }

      else
      {
        v11 = v10;
      }

      WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>((a1 + 48), v11);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      bzero((v12 + 8 * *(a1 + 60)), 8 * (v8 - *(a1 + 60)));
    }

    *(a1 + 60) = v8;
    v13 = *a2 + 1;
    v14 = *(a1 + 72);
    if (v14 < v13)
    {
      if (v14 + (v14 >> 1) <= v14 + 1)
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = v14 + (v14 >> 1);
      }

      if (v15 <= v13)
      {
        v15 = *a2 + 1;
      }

      if (v15 <= 0x10)
      {
        v16 = 16;
      }

      else
      {
        v16 = v15;
      }

      WTF::Vector<WTF::WeakPtr<WebCore::PlatformGamepad,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>((a1 + 64), v16);
    }

    v17 = *(a1 + 64);
    if (v17)
    {
      v18 = *(a1 + 76);
      if (v18 != v13)
      {
        bzero((v17 + 8 * v18), 8 * (v13 - v18));
      }
    }

    *(a1 + 76) = v13;
    v6 = *a2;
    v7 = *(a1 + 60);
  }

  else
  {
    v7 = *(a1 + 60);
  }

  if (v7 <= v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2D5998);
  }

  if (*(*(a1 + 48) + 8 * v6))
  {
    v37 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *v44 = "(!m_gamepads[gamepadData.index()])";
      _os_log_fault_impl(&dword_19D52D000, v37, OS_LOG_TYPE_FAULT, "Exiting: %{public}s is false", buf, 0xCu);
    }

    WTFCrashWithInfoImpl(88, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/WebProcess/Gamepad/WebGamepadProvider.cpp", "void WebKit::WebGamepadProvider::gamepadConnected(const GamepadData &, EventMakesGamepadsVisible)");
  }

  NonCompactSlow = bmalloc::api::tzoneAllocateNonCompactSlow();
  v20 = WebKit::WebGamepad::WebGamepad(NonCompactSlow, a2);
  v22 = *a2;
  v23 = *(a1 + 60);
  if (v23 <= *a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2D59A0);
  }

  v24 = *(a1 + 48);
  v25 = *(v24 + 8 * v22);
  *(v24 + 8 * v22) = v20;
  if (v25)
  {
    (*(*v25 + 8))(v25);
    v22 = *a2;
    v23 = *(a1 + 60);
  }

  if (v23 <= v22)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2D59A8);
  }

  v26 = *(a1 + 48);
  v27 = *(v26 + 8 * v22);
  if (v27)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v27 + 8), *(v26 + 8 * v22));
    v28 = *(v27 + 8);
    if (v28)
    {
      atomic_fetch_add(v28, 1u);
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = *a2;
  if (*(a1 + 76) <= v29)
  {
    __break(0xC471u);
LABEL_59:
    JUMPOUT(0x19E2D5990);
  }

  v30 = *(a1 + 64);
  v31 = *(v30 + 8 * v29);
  *(v30 + 8 * v29) = v28;
  if (v31 && atomic_fetch_add(v31, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v31);
    WTF::fastFree(v31, v21);
  }

  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin((a1 + 32), buf);
  v32 = *(a1 + 32);
  if (v32)
  {
    v33 = *(v32 - 4);
    v34 = v32 + 8 * v33;
  }

  else
  {
    v34 = 0;
    v33 = 0;
  }

  v38 = a1 + 32;
  v39 = v34;
  v40 = v34;
  v41 = v34;
  v42 = v32 + 8 * v33;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v38);
  while (*&v44[4] != v39)
  {
    v36 = *a2;
    if (*(a1 + 60) <= v36)
    {
      __break(0xC471u);
      goto LABEL_59;
    }

    (*(**(**&v44[4] + 8) + 16))(*(**&v44[4] + 8), *(*(a1 + 48) + 8 * v36), a3);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(buf);
  }

  return result;
}

void *WebKit::WebGamepadProvider::gamepadDisconnected(void *this, void *a2)
{
  v2 = this;
  v18 = *MEMORY[0x1E69E9840];
  if (*(this + 15) <= a2)
  {
    v10 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *v17 = "(m_gamepads.size() > index)";
      _os_log_fault_impl(&dword_19D52D000, v10, OS_LOG_TYPE_FAULT, "Exiting: %{public}s is false", buf, 0xCu);
    }

    WTFCrashWithInfoImpl(99, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/WebProcess/Gamepad/WebGamepadProvider.cpp", "void WebKit::WebGamepadProvider::gamepadDisconnected");
  }

  v3 = this[6];
  v4 = *(v3 + 8 * a2);
  *(v3 + 8 * a2) = 0;
  if (*(this + 19) <= a2)
  {
    __break(0xC471u);
  }

  else
  {
    v5 = this[8];
    v6 = *(v5 + 8 * a2);
    *(v5 + 8 * a2) = 0;
    if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      WTF::fastFree(v6, a2);
    }

    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin((v2 + 32), buf);
    v7 = *(v2 + 32);
    if (v7)
    {
      v8 = *(v7 - 4);
      v9 = v7 + 8 * v8;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v11 = v2 + 32;
    v12 = v9;
    v13 = v9;
    v14 = v9;
    v15 = v7 + 8 * v8;
    this = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v11);
    while (*&v17[4] != v12)
    {
      (*(**(**&v17[4] + 8) + 24))(*(**&v17[4] + 8), v4);
      this = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(buf);
    }

    if (v4)
    {
      return (*(*v4 + 8))(v4);
    }
  }

  return this;
}

void *WebKit::WebGamepadProvider::gamepadActivity(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = *(a1 + 60);
  if (v6)
  {
    v8 = 0;
    for (i = 0; i < v6; ++i)
    {
      result = *(*(a1 + 48) + 8 * i);
      if (result)
      {
        if (i >= *(a2 + 12))
        {
          __break(0xC471u);
          return result;
        }

        v11 = *a2 + v8;
        if (*(v11 + 72) == 1)
        {
          a4.n128_f64[0] = WebKit::WebGamepad::updateValues(result, v11, a4);
          v6 = *(a1 + 60);
        }
      }

      v8 += 80;
    }
  }

  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin((a1 + 32), &v20);
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(v12 - 4);
    v14 = v12 + 8 * v13;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = a1 + 32;
  v16 = v14;
  v17 = v14;
  v18 = v14;
  v19 = v12 + 8 * v13;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v15);
  while (v21 != v16)
  {
    (*(**(*v21 + 8) + 32))(*(*v21 + 8), a3);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v20);
  }

  return result;
}

WTF *WebKit::WebGamepadProvider::startMonitoringGamepads(uint64_t a1, uint64_t a2)
{
  isEmptyIgnoringNullReferences = WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences((a1 + 32));
  v6 = *(a1 + 44);
  v7 = *(a1 + 40) + 1;
  *(a1 + 40) = v7;
  if (v7 > v6)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 - 4);
      if (!v9)
      {
LABEL_15:
        v15 = *(v8 - 4);
        if (6 * *(v8 - 12) < v15 && v15 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize((a1 + 32));
          v8 = *(a1 + 32);
          *(a1 + 40) = 0;
          if (!v8)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *(a1 + 40) = 0;
        }

        LODWORD(v8) = *(v8 - 12);
        if (v8 > 0x7FFFFFFE)
        {
          v17 = -2;
          goto LABEL_24;
        }

LABEL_22:
        v17 = 2 * v8;
LABEL_24:
        *(a1 + 44) = v17;
        goto LABEL_25;
      }

      v10 = 0;
      v11 = 8 * v9;
      v12 = v8 - 8;
      do
      {
        v13 = *(v12 + v11);
        if ((v13 + 1) >= 2 && !*(v13 + 8))
        {
          *(v12 + v11) = 0;
          if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v13);
            WTF::fastFree(v13, v4);
          }

          *(v12 + v11) = -1;
          ++v10;
        }

        v11 -= 8;
      }

      while (v11);
      v8 = *(a1 + 32);
      if (v10)
      {
        v14 = *(v8 - 12) - v10;
        *(v8 - 16) += v10;
        *(v8 - 12) = v14;
        goto LABEL_15;
      }

      if (v8)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v8) = 0;
    *(a1 + 40) = 0;
    goto LABEL_22;
  }

LABEL_25:
  if (!*(a2 + 8))
  {
    v19 = WTF::fastCompactMalloc(0x10);
    *v19 = 1;
    *(v19 + 8) = a2;
    v20 = *(a2 + 8);
    *(a2 + 8) = v19;
    if (v20)
    {
      if (atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v20);
        WTF::fastFree(v20, v18);
      }
    }
  }

  v21 = *(a2 + 8);
  atomic_fetch_add(v21, 1u);
  v30 = v21;
  WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((a1 + 32), &v30, v29);
  result = v30;
  v30 = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, v22);
  }

  if (isEmptyIgnoringNullReferences)
  {
    {
      v24 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v24 = WebKit::WebProcess::operator new(0x370, v22);
      WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v24);
    }

    v25 = IPC::Encoder::operator new(0x238, v22);
    *v25 = 2898;
    *(v25 + 68) = 0;
    *(v25 + 70) = 0;
    *(v25 + 69) = 0;
    *(v25 + 2) = 0;
    *(v25 + 3) = 0;
    *(v25 + 1) = 0;
    IPC::Encoder::encodeHeader(v25);
    v29[0] = v25;
    (*(*(v24 + 3) + 32))(v24 + 3, v29, 0);
    result = v29[0];
    v29[0] = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v26);
      return bmalloc::api::tzoneFree(v27, v28);
    }
  }

  return result;
}

uint64_t WebKit::WebGamepadProvider::stopMonitoringGamepads(uint64_t a1, void *a2)
{
  v4 = *(a1 + 44);
  v5 = *(a1 + 40) + 1;
  *(a1 + 40) = v5;
  if (v5 > v4)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 - 4);
      if (!v7)
      {
LABEL_15:
        v13 = *(v6 - 4);
        if (6 * *(v6 - 12) < v13 && v13 > 8)
        {
          WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize((a1 + 32));
          v6 = *(a1 + 32);
          *(a1 + 40) = 0;
          if (!v6)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *(a1 + 40) = 0;
        }

        LODWORD(v6) = *(v6 - 12);
        if (v6 > 0x7FFFFFFE)
        {
          v15 = -2;
          goto LABEL_24;
        }

LABEL_22:
        v15 = 2 * v6;
LABEL_24:
        *(a1 + 44) = v15;
        goto LABEL_25;
      }

      v8 = 0;
      v9 = 8 * v7;
      v10 = v6 - 8;
      do
      {
        v11 = *(v10 + v9);
        if ((v11 + 1) >= 2 && !*(v11 + 8))
        {
          *(v10 + v9) = 0;
          if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v11);
            WTF::fastFree(v11, a2);
          }

          *(v10 + v9) = -1;
          ++v8;
        }

        v9 -= 8;
      }

      while (v9);
      v6 = *(a1 + 32);
      if (v8)
      {
        v12 = *(v6 - 12) - v8;
        *(v6 - 16) += v8;
        *(v6 - 12) = v12;
        goto LABEL_15;
      }

      if (v6)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v6) = 0;
    *(a1 + 40) = 0;
    goto LABEL_22;
  }

LABEL_25:
  v16 = a2[1];
  if (v16 && *(v16 + 8))
  {
    v35[0] = a2[1];
    v17 = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::find<WTF::HashSetTranslator<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>((a1 + 32), v35);
    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = (v18 + 8 * *(v18 - 4));
      if (v19 == v17)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_34;
      }

      v19 = 0;
    }

    if (v19 != v17)
    {
      WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::remove((a1 + 32), v17);
    }
  }

LABEL_34:
  result = WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences((a1 + 32));
  if (result)
  {
    {
      v22 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v22 = WebKit::WebProcess::operator new(0x370, v21);
      WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v22);
    }

    v24 = *(v22 + 3);
    v23 = (v22 + 24);
    v25 = (*(v24 + 56))(v23);
    v27 = IPC::Encoder::operator new(0x238, v26);
    *v27 = 2900;
    *(v27 + 2) = 0;
    *(v27 + 3) = 0;
    *(v27 + 1) = v25;
    *(v27 + 68) = 0;
    *(v27 + 70) = 0;
    *(v27 + 69) = 0;
    IPC::Encoder::encodeHeader(v27);
    v36 = v27;
    v28 = WTF::fastMalloc(0x10);
    *v28 = &unk_1F112B110;
    v28[1] = a1;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v29 = v28;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v35[0] = v29;
      v35[1] = IdentifierInternal;
      (*(*v23 + 40))(v23, &v36, v35, 0);
      v32 = v35[0];
      v35[0] = 0;
      if (v32)
      {
        (*(*v32 + 8))(v32);
      }

      result = v36;
      v36 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v31);
        return bmalloc::api::tzoneFree(v33, v34);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebGamepadProvider::playEffect(uint64_t a1, void *a2, uint64_t *a3, char a4, double *a5, uint64_t *a6)
{
  v10 = a2;
  {
    v11 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v11 = WebKit::WebProcess::operator new(0x370, a2);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v11);
  }

  v13 = *(v11 + 3);
  v12 = (v11 + 24);
  v14 = (*(v13 + 56))(v12);
  v16 = IPC::Encoder::operator new(0x238, v15);
  *v16 = 2896;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 1) = v14;
  *(v16 + 68) = 0;
  *(v16 + 70) = 0;
  *(v16 + 69) = 0;
  IPC::Encoder::encodeHeader(v16);
  v25 = v16;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v16, v10);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v16, a3);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v16, a4);
  IPC::ArgumentCoder<WebCore::GamepadEffectParameters,void>::encode(v16, a5);
  v17 = *a6;
  *a6 = 0;
  v18 = WTF::fastMalloc(0x10);
  *v18 = &unk_1F112B138;
  v18[1] = v17;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v24[0] = v18;
    v24[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v12 + 40))(v12, &v25, v24, 0);
    v20 = v24[0];
    v24[0] = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    result = v25;
    v25 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v19);
      return bmalloc::api::tzoneFree(v22, v23);
    }
  }

  return result;
}

uint64_t WebKit::WebGamepadProvider::stopEffects(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = a2;
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v7 = WebKit::WebProcess::operator new(0x370, a2);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v7);
  }

  v9 = *(v7 + 3);
  v8 = (v7 + 24);
  v10 = (*(v9 + 56))(v8);
  v12 = IPC::Encoder::operator new(0x238, v11);
  *v12 = 2899;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v10;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v21 = v12;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v12, v6);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a3);
  v13 = *a4;
  *a4 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F112B160;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v20[0] = v14;
    v20[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    (*(*v8 + 40))(v8, &v21, v20, 0);
    v16 = v20[0];
    v20[0] = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    result = v21;
    v21 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v15);
      return bmalloc::api::tzoneFree(v18, v19);
    }
  }

  return result;
}

void WebKit::GeolocationPermissionRequestManager::~GeolocationPermissionRequestManager(WebKit::GeolocationPermissionRequestManager *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 1);
  if (v4)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  if (*this)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(*this, a2);
  }
}

void WebKit::GeolocationPermissionRequestManager::startRequestForGeolocation(WebKit::GeolocationPermissionRequestManager *this, WebCore::Geolocation *a2)
{
  v55[44] = *MEMORY[0x1E69E9840];
  v4 = WebCore::Geolocation::frame(a2);
  if (v4)
  {
    v5 = v4;
    ++*(v4 + 16);
    IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 8, a2);
    v7 = *(a2 + 4);
    atomic_fetch_add(v7, 1u);
    if (v7 != -1)
    {
      if (!v7)
      {
        __break(0xC471u);
        JUMPOUT(0x19E2D6C48);
      }

      v8 = *(this + 1);
      if (v8 || (WTF::HashTable<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::expand(this + 1, 0), (v8 = *(this + 1)) != 0))
      {
        v9 = *(v8 - 8);
      }

      else
      {
        v9 = 0;
      }

      v52 = v5;
      v10 = WTF::PtrHashBase<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,true>::hash(*(v7 + 8));
      v11 = 0;
      for (i = 1; ; ++i)
      {
        v13 = v10 & v9;
        v14 = (v8 + 16 * (v10 & v9));
        v15 = *v14;
        if (*v14 == -1)
        {
          v11 = v8 + 16 * v13;
        }

        else
        {
          if (!v15)
          {
            if (v11)
            {
              *v11 = 0;
              *(v11 + 8) = 0;
              --*(*(this + 1) - 16);
              *v11 = v7;
            }

            else
            {
              *v14 = v7;
              v11 = v8 + 16 * v13;
            }

            *(v11 + 8) = IdentifierInternal;
            v17 = *(this + 1);
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
                goto LABEL_25;
              }
            }

            else if (3 * v20 > 4 * v19)
            {
              goto LABEL_25;
            }

            WTF::HashTable<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::expand(this + 1, v11);
            goto LABEL_25;
          }

          if (WTF::PtrHashBase<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,true>::equal(*(v15 + 8), v7))
          {
            v14[1] = IdentifierInternal;
            if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v7);
              WTF::fastFree(v7, v16);
            }

LABEL_25:
            if (IdentifierInternal == -1)
            {
              __break(0xC471u);
              JUMPOUT(0x19E2D6C68);
            }

            if (!IdentifierInternal)
            {
              __break(0xC471u);
              JUMPOUT(0x19E2D6C88);
            }

            v21 = *this;
            if (!*this)
            {
              WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(this, 0);
              v21 = *this;
            }

            v22 = *(v21 - 8);
            v23 = (IdentifierInternal + ~(IdentifierInternal << 32)) ^ ((IdentifierInternal + ~(IdentifierInternal << 32)) >> 22);
            v24 = 9 * ((v23 + ~(v23 << 13)) ^ ((v23 + ~(v23 << 13)) >> 8));
            v25 = (v24 ^ (v24 >> 15)) + ~((v24 ^ (v24 >> 15)) << 27);
            v26 = v22 & ((v25 >> 31) ^ v25);
            v27 = (v21 + 16 * v26);
            v28 = *v27;
            if (!*v27)
            {
LABEL_37:
              *v27 = IdentifierInternal;
              WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 8, a2);
              v32 = *(a2 + 4);
              atomic_fetch_add(v32, 1u);
              v33 = v27[1];
              v27[1] = v32;
              if (v33 && atomic_fetch_add(v33, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v33);
                WTF::fastFree(v33, v31);
              }

              v34 = *this;
              if (*this)
              {
                v35 = *(v34 - 12) + 1;
              }

              else
              {
                v35 = 1;
              }

              *(v34 - 12) = v35;
              v39 = (*(v34 - 16) + v35);
              v40 = *(v34 - 4);
              if (v40 > 0x400)
              {
                if (v40 > 2 * v39)
                {
                  goto LABEL_47;
                }
              }

              else if (3 * v40 > 4 * v39)
              {
                goto LABEL_47;
              }

              WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(this, v27);
              goto LABEL_47;
            }

            v29 = 0;
            v30 = 1;
            while (v28 != IdentifierInternal)
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
                  --*(*this - 16);
                  v27 = v29;
                }

                goto LABEL_37;
              }
            }

            WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 8, a2);
            v37 = *(a2 + 4);
            atomic_fetch_add(v37, 1u);
            v38 = v27[1];
            v27[1] = v37;
            if (v38 && atomic_fetch_add(v38, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v38);
              WTF::fastFree(v38, v36);
            }

LABEL_47:
            WebKit::WebFrame::fromCoreFrame(v52, &v53);
            v41 = *(*(this + 2) + 8);
            if (v41)
            {
              CFRetain(*(v41 - 8));
              v42 = v53;
              WebKit::WebFrame::info(v53, 0, v55);
              v43 = (*(*(v41 + 16) + 56))(v41 + 16);
              v45 = IPC::Encoder::operator new(0x238, v44);
              *v45 = 2329;
              *(v45 + 2) = 0;
              *(v45 + 3) = 0;
              *(v45 + 1) = v43;
              *(v45 + 68) = 0;
              *(v45 + 70) = 0;
              *(v45 + 69) = 0;
              IPC::Encoder::encodeHeader(v45);
              v54 = v45;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v45, IdentifierInternal);
              IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(v45, v55);
              (*(*(v41 + 16) + 32))(v41 + 16, &v54, 0);
              v47 = v54;
              v54 = 0;
              if (v47)
              {
                IPC::Encoder::~Encoder(v47, v46);
                bmalloc::api::tzoneFree(v48, v49);
              }

              WebKit::FrameInfoData::~FrameInfoData(v55);
              CFRelease(*(v41 - 8));
              if (v42)
              {
                CFRelease(*(v42 + 1));
              }

              if (v52[4] == 1)
              {
                (*(*v52 + 8))(v52);
              }

              else
              {
                --v52[4];
              }

              return;
            }

            __break(0xC471u);
LABEL_71:
            JUMPOUT(0x19E2D6C28);
          }
        }

        v10 = i + v13;
      }
    }

    __break(0xC471u);
    goto LABEL_71;
  }

  v55[0] = 0;
  WebCore::Geolocation::setIsAllowed(a2, 0, v55);
  v51 = v55[0];
  v55[0] = 0;
  if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v51, v50);
  }
}

void WebKit::GeolocationPermissionRequestManager::revokeAuthorizationToken(WebKit::GeolocationPermissionRequestManager *this, const WTF::String *a2)
{
  v2 = *(*(this + 2) + 8);
  if (v2)
  {
    CFRetain(*(v2 - 8));
    v4 = (*(*(v2 + 16) + 56))(v2 + 16);
    v6 = IPC::Encoder::operator new(0x238, v5);
    *v6 = 2339;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 1) = v4;
    *(v6 + 68) = 0;
    *(v6 + 70) = 0;
    *(v6 + 69) = 0;
    IPC::Encoder::encodeHeader(v6);
    v11 = v6;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v6, a2);
    (*(*(v2 + 16) + 32))(v2 + 16, &v11, 0);
    v8 = v11;
    v11 = 0;
    if (v8)
    {
      IPC::Encoder::~Encoder(v8, v7);
      bmalloc::api::tzoneFree(v9, v10);
    }

    CFRelease(*(v2 - 8));
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t *WebKit::GeolocationPermissionRequestManager::cancelRequestForGeolocation(WebKit::GeolocationPermissionRequestManager *this, WebCore::Geolocation *a2)
{
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 8, a2);
  v4 = *(a2 + 4);
  atomic_fetch_add(v4, 1u);
  v8 = v4;
  v9 = WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::takeOptional(this + 1, &v8);
  v10 = v5;
  result = v8;
  v8 = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, v5);
  }

  if (v10 == 1)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this, &v9);
    if (*this)
    {
      v7 = *this + 16 * *(*this - 4);
      if (v7 == result)
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

      v7 = 0;
    }

    if (v7 != result)
    {
      return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(this, result);
    }
  }

  return result;
}

uint64_t WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::takeOptional(uint64_t *a1, uint64_t *a2)
{
  v3 = WTF::HashTable<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>>,(WTF::ShouldValidateKey)1,WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>(a1, a2);
  v4 = *a1;
  if (*a1)
  {
    v4 += 16 * *(v4 - 4);
  }

  if (v4 == v3)
  {
    return 0;
  }

  else
  {
    return WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(a1, v3);
  }
}

unsigned int *WebKit::GeolocationPermissionRequestManager::didReceiveGeolocationPermissionDecision(uint64_t *a1, uint64_t a2, const WTF::String *a3)
{
  v12 = a2;
  v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, &v12);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(a1, v5, &v13);
  result = v13;
  if (v13)
  {
    v8 = *(v13 + 1);
    if (v8)
    {
      ++*(v8 + 10);
      v13 = 0;
      if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        WTF::fastFree(result, v6);
      }

      v13 = v8;
      v9 = WTF::HashTable<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>>,(WTF::ShouldValidateKey)1,WebCore::Geolocation const*>(a1 + 1, &v13);
      v10 = a1[1];
      if (v10)
      {
        v11 = (v10 + 16 * *(v10 - 4));
        if (v11 == v9)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (!v9)
        {
LABEL_12:
          WebCore::Geolocation::setIsAllowed(v8, *a3 != 0, a3);
          return WTF::RefCounted<WebCore::Geolocation>::deref(v8 + 10);
        }

        v11 = 0;
      }

      if (v11 != v9)
      {
        WTF::HashTable<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::remove(a1 + 1, v9);
      }

      goto LABEL_12;
    }

    v13 = 0;
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v6);
    }
  }

  return result;
}

void WebKit::WebGeolocationManager::~WebGeolocationManager(WebKit::WebGeolocationManager *this, WTF::StringImpl *a2)
{
  *this = &unk_1F112ADC8;
  *(this + 1) = &unk_1F112AE18;
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = *(this + 5);
      do
      {
        if (*v5 != -1)
        {
          v6 = *(v5 + 8);
          *(v5 + 8) = 0;
          if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, a2);
          }

          v7 = *v5;
          *v5 = 0;
          if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v7);
            WTF::fastFree(v7, a2);
          }
        }

        v5 += 16;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), a2);
  }

  v8 = *(this + 4);
  if (v8)
  {
    v9 = *(v8 - 4);
    if (v9)
    {
      v10 = *(this + 4);
      do
      {
        if (*v10 != -1)
        {
          v11 = *(v10 + 24);
          if (v11)
          {
            WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v11, a2);
          }

          v12 = *(v10 + 8);
          if (v12)
          {
            WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v12, a2);
          }

          v13 = *v10;
          *v10 = 0;
          if (v13)
          {
            if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, a2);
            }
          }
        }

        v10 += 40;
        --v9;
      }

      while (v9);
    }

    WTF::fastFree((v8 - 16), a2);
  }

  v14 = *(this + 3);
  *(this + 3) = 0;
  if (!v14)
  {
    goto LABEL_30;
  }

  v15 = (v14 + 16);
  if (atomic_load(v15))
  {
    atomic_fetch_add(v15, 0xFFFFFFFF);
LABEL_30:
    *(this + 1) = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, a2);
    return;
  }

  __break(0xC471u);
}

{
  WebKit::WebGeolocationManager::~WebGeolocationManager(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebKit::WebGeolocationManager::~WebGeolocationManager(WebKit::WebGeolocationManager *this, WTF::StringImpl *a2)
{
  WebKit::WebGeolocationManager::~WebGeolocationManager((this - 8), a2);
}

{
  WebKit::WebGeolocationManager::~WebGeolocationManager((this - 8), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::WebGeolocationManager::ref(uint64_t this)
{
  if (!*(this + 24))
  {
    this = 120;
    __break(0xC471u);
  }

  return this;
}

uint64_t non-virtual thunk toWebKit::WebGeolocationManager::ref(uint64_t this)
{
  if (!*(this + 16))
  {
    this = 120;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::WebGeolocationManager::deref(uint64_t this)
{
  if (!*(this + 24))
  {
    this = 120;
    __break(0xC471u);
  }

  return this;
}

uint64_t non-virtual thunk toWebKit::WebGeolocationManager::deref(uint64_t this)
{
  if (!*(this + 16))
  {
    this = 120;
    __break(0xC471u);
  }

  return this;
}

WTF::StringImpl *WebKit::WebGeolocationManager::registerWebPage(WebKit::WebGeolocationManager *this, WebKit::WebPage *a2, const WTF::String *a3, int a4)
{
  result = *(a2 + 7);
  if (!result)
  {
    return result;
  }

  v9 = (result + 8);
  ++*(result + 2);
  v10 = WebCore::Page::mainFrameURL(result);
  WebCore::RegistrableDomain::RegistrableDomain(&v74, v10);
  WTF::RefCounted<WebCore::Page>::deref(v9);
  result = v74;
  if (!v74)
  {
    return result;
  }

  if (!*(v74 + 1))
  {
    goto LABEL_76;
  }

  if (WTF::equal(v74, 0, v12))
  {
    __break(0xC471u);
    goto LABEL_97;
  }

  if (v74 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2D7900);
  }

  v67 = a3;
  v14 = *(this + 4);
  if (v14 || (WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(this + 4, 0), (v14 = *(this + 4)) != 0))
  {
    v15 = *(v14 - 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = WTF::ASCIICaseInsensitiveHash::hash(v74, v13) & v15;
  v17 = v14 + 40 * v16;
  if ((WTF::equal(*v17, 0, v18) & 1) == 0)
  {
    v21 = 0;
    v22 = 1;
    do
    {
      if (*v17 == -1)
      {
        v21 = v17;
      }

      else if (WTF::equalIgnoringASCIICase(*v17, v74, v20))
      {
        goto LABEL_33;
      }

      v16 = (v16 + v22) & v15;
      v17 = v14 + 40 * v16;
      ++v22;
    }

    while (!WTF::equal(*v17, 0, v20));
    if (v21)
    {
      *(v21 + 32) = 0;
      *v21 = 0u;
      *(v21 + 16) = 0u;
      --*(*(this + 4) - 16);
      v17 = v21;
    }
  }

  v23 = v74;
  if (v74)
  {
    atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
  }

  v24 = *v17;
  *v17 = v23;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v19);
  }

  v25 = *(v17 + 8);
  *(v17 + 8) = 0;
  if (v25)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v25, v19);
  }

  v26 = *(v17 + 24);
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  if (v26)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v26, v19);
  }

  *(v17 + 32) = 0;
  v27 = *(this + 4);
  if (v27)
  {
    v28 = *(v27 - 12) + 1;
  }

  else
  {
    v28 = 1;
  }

  *(v27 - 12) = v28;
  v29 = (*(v27 - 16) + v28);
  v30 = *(v27 - 4);
  if (v30 <= 0x400)
  {
    if (3 * v30 > 4 * v29)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v30 <= 2 * v29)
  {
LABEL_32:
    v17 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(this + 4, v17);
  }

LABEL_33:
  isEmptyIgnoringNullReferences = WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences((v17 + 8));
  v32 = WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences((v17 + 24));
  WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(v17 + 8, a2, &v69);
  if (a4)
  {
    WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(v17 + 24, a2, &v69);
  }

  v34 = *(this + 12);
  v35 = *(this + 13);
  *(this + 12) = v34 + 1;
  if (v34 > v35)
  {
    WTF::WeakHashMap<WebKit::WebPage,WebCore::RegistrableDomain,WTF::DefaultWeakPtrImpl>::removeNullReferences(this + 40, v33);
  }

  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 6, a2 + 16);
  v36 = *(a2 + 3);
  atomic_fetch_add(v36, 1u);
  v69 = v36;
  if (v36 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2D7920);
  }

  if (!v36)
  {
    __break(0xC471u);
LABEL_97:
    JUMPOUT(0x19E2D78E0);
  }

  v37 = *(this + 5);
  if (v37 || (WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand(this + 5), (v37 = *(this + 5)) != 0))
  {
    v38 = *(v37 - 8);
  }

  else
  {
    v38 = 0;
  }

  v40 = WTF::PtrHashBase<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,true>::hash(&v69);
  v41 = 0;
  v42 = 1;
  v43 = v69;
  while (1)
  {
    v44 = v40 & v38;
    v45 = (v37 + 16 * v44);
    v46 = *v45;
    if (*v45 == -1)
    {
      v41 = (v37 + 16 * v44);
      goto LABEL_48;
    }

    if (!v46)
    {
      break;
    }

    if (v46 == v69)
    {
      goto LABEL_63;
    }

LABEL_48:
    v40 = v42 + v44;
    ++v42;
  }

  if (v41)
  {
    *v41 = 0;
    v41[1] = 0;
    --*(*(this + 5) - 16);
    v45 = v41;
  }

  v69 = 0;
  v47 = *v45;
  *v45 = v43;
  if (v47 && atomic_fetch_add(v47, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v47);
    WTF::fastFree(v47, v39);
  }

  v48 = v74;
  if (v74)
  {
    atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
  }

  v49 = v45[1];
  v45[1] = v48;
  if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v49, v39);
  }

  v50 = *(this + 5);
  if (v50)
  {
    v51 = *(v50 - 12) + 1;
  }

  else
  {
    v51 = 1;
  }

  *(v50 - 12) = v51;
  v52 = (*(v50 - 16) + v51);
  v53 = *(v50 - 4);
  if (v53 > 0x400)
  {
    if (v53 <= 2 * v52)
    {
LABEL_61:
      WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand(this + 5);
    }
  }

  else if (3 * v53 <= 4 * v52)
  {
    goto LABEL_61;
  }

  v43 = v69;
LABEL_63:
  v69 = 0;
  if (v43 && atomic_fetch_add(v43, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v43);
    WTF::fastFree(v43, v39);
  }

  if (!isEmptyIgnoringNullReferences)
  {
    v60 = WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences((v17 + 24));
    if (v32 == v60)
    {
      goto LABEL_76;
    }

    v61 = v60 ^ 1;
    {
      v62 = WebKit::WebProcess::singleton(void)::process;
    }

    else
    {
      v66 = WebKit::WebProcess::operator new(0x370, v11);
      v62 = WebKit::WebProcess::WebProcess(v66);
      WebKit::WebProcess::singleton(void)::process = v62;
    }

    WebKit::AuxiliaryProcess::protectedParentProcessConnection(v62, &v75);
    v69 = &v74;
    LOBYTE(v70) = v61;
    IPC::Connection::send<Messages::WebGeolocationManagerProxy::SetEnableHighAccuracy>(v75, &v69, 0, 0, 0);
    v59 = v75;
    v75 = 0;
    if (!v59)
    {
      goto LABEL_76;
    }

LABEL_75:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v59);
    goto LABEL_76;
  }

  {
    v54 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v65 = WebKit::WebProcess::operator new(0x370, v39);
    v54 = WebKit::WebProcess::WebProcess(v65);
    WebKit::WebProcess::singleton(void)::process = v54;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v54, &v73);
  v55 = v73;
  v68 = *(a2 + 229);
  v69 = &v74;
  v70 = &v68;
  v71 = v67;
  v72[0] = a4;
  v57 = IPC::Encoder::operator new(0x238, v56);
  *v57 = 2032;
  *(v57 + 68) = 0;
  *(v57 + 70) = 0;
  *(v57 + 69) = 0;
  *(v57 + 2) = 0;
  *(v57 + 3) = 0;
  *(v57 + 1) = 0;
  IPC::Encoder::encodeHeader(v57);
  v75 = v57;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v57, &v74);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v57, v68);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v57, v67);
  IPC::Encoder::operator<<<BOOL &>(v57, v72);
  IPC::Connection::sendMessageImpl(v55, &v75, 0, 0);
  v58 = v75;
  v75 = 0;
  if (v58)
  {
    IPC::Encoder::~Encoder(v58, v11);
    bmalloc::api::tzoneFree(v63, v64);
  }

  v59 = v73;
  v73 = 0;
  if (v59)
  {
    goto LABEL_75;
  }

LABEL_76:
  result = v74;
  v74 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v11);
    }
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::WebGeolocationManagerProxy::SetEnableHighAccuracy>(uint64_t *a1, char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 2031;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, *a2);
  IPC::Encoder::operator<<<BOOL &>(v10, a2 + 8);
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

WTF::StringImpl *WebKit::WebGeolocationManager::unregisterWebPage(WebKit::WebGeolocationManager *this, WebKit::WebPage *a2)
{
  result = WTF::WeakHashMap<WebKit::WebPage,WebCore::RegistrableDomain,WTF::DefaultWeakPtrImpl>::take(this + 5, a2, &v22);
  if (!v22)
  {
    return result;
  }

  if (*(v22 + 1))
  {
    v7 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(this + 4, &v22, v6);
    v8 = v7;
    v9 = *(this + 4);
    if (v9)
    {
      v9 += 40 * *(v9 - 4);
    }

    if (v9 != v7)
    {
      isEmptyIgnoringNullReferences = WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences((v7 + 24));
      WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::WebPageProxy>(v8 + 8, a2);
      WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::WebPageProxy>(v8 + 24, a2);
      v11 = WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences((v8 + 8));
      if (v11)
      {
        v13 = WebKit::WebProcess::singleton(v11, v12);
        WebKit::AuxiliaryProcess::protectedParentProcessConnection(v13, &v19);
        v21 = &v22;
        IPC::Connection::send<Messages::WebGeolocationManagerProxy::StopUpdating>(v19, &v21, 0, 0, 0);
        v14 = v19;
        v19 = 0;
        if (!v14)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v15 = WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences((v8 + 24));
        if (isEmptyIgnoringNullReferences == v15 || (v17 = !v15, v18 = WebKit::WebProcess::singleton(v15, v16), WebKit::AuxiliaryProcess::protectedParentProcessConnection(v18, &v21), v19 = &v22, v20 = v17, IPC::Connection::send<Messages::WebGeolocationManagerProxy::SetEnableHighAccuracy>(v21, &v19, 0, 0, 0), v14 = v21, v21 = 0, !v14))
        {
LABEL_16:
          if (WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences((v8 + 8)) && WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences((v8 + 24)))
          {
            WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(this + 4, v8);
          }

          goto LABEL_3;
        }
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v14);
      goto LABEL_16;
    }
  }

LABEL_3:
  result = v22;
  v22 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

uint64_t *WTF::WeakHashMap<WebKit::WebPage,WebCore::RegistrableDomain,WTF::DefaultWeakPtrImpl>::take@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = result;
  v6 = *(result + 2);
  v7 = *(result + 3);
  *(result + 2) = v6 + 1;
  if (v6 > v7)
  {
    result = WTF::WeakHashMap<WebKit::WebPage,WebCore::RegistrableDomain,WTF::DefaultWeakPtrImpl>::removeNullReferences(result, a2);
  }

  v8 = a2[3];
  if (v8 && *(v8 + 8))
  {

    return WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>(a3, v4, v8);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::WebGeolocationManagerProxy::StopUpdating>(uint64_t *a1, uint64_t **a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 2033;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, *a2);
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

uint64_t WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl **a2)
{
  if (*a1)
  {
    v4 = *a1 + 40 * *(*a1 - 4);
    if (v4 == a2)
    {
      return 0;
    }
  }

  else
  {
    if (!a2)
    {
      return 0;
    }

    v4 = 0;
  }

  if (v4 != a2)
  {
    v5 = *a2;
    *a2 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    *a2 = -1;
    v6 = a2[3];
    if (v6)
    {
      WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v6, a2);
    }

    v7 = a2[1];
    if (v7)
    {
      WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v7, a2);
    }

    v8 = *a1;
    v9 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
    *(v8 - 16) = v9;
    v10 = *(v8 - 4);
    if (6 * v9.i32[1] < v10 && v10 >= 9)
    {
      WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(a1, v10 >> 1, 0);
    }
  }

  return 1;
}

WTF::StringImpl *WebKit::WebGeolocationManager::setEnableHighAccuracyForPage(WebKit::WebGeolocationManager *this, WebKit::WebPage *a2, int a3)
{
  result = WTF::WeakHashMap<WebKit::WebPage,WebCore::RegistrableDomain,WTF::DefaultWeakPtrImpl>::get(this + 5, a2, &v21);
  if (v21)
  {
    if (*(v21 + 1))
    {
      v9 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(this + 4, &v21, v8);
      v10 = v9;
      v11 = *(this + 4);
      if (v11)
      {
        v11 += 40 * *(v11 - 4);
      }

      if (v11 != v9)
      {
        isEmptyIgnoringNullReferences = WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences((v9 + 24));
        if (a3)
        {
          WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(v10 + 24, a2, &v19);
        }

        else
        {
          WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::WebPageProxy>(v10 + 24, a2);
        }

        v13 = WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences((v10 + 24));
        if (isEmptyIgnoringNullReferences != WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences((v10 + 24)))
        {
          v14 = !v13;
          {
            v15 = WebKit::WebProcess::singleton(void)::process;
          }

          else
          {
            v17 = WebKit::WebProcess::operator new(0x370, v7);
            v15 = WebKit::WebProcess::WebProcess(v17);
            WebKit::WebProcess::singleton(void)::process = v15;
          }

          WebKit::AuxiliaryProcess::protectedParentProcessConnection(v15, &v18);
          v19 = &v21;
          v20 = v14;
          IPC::Connection::send<Messages::WebGeolocationManagerProxy::SetEnableHighAccuracy>(v18, &v19, 0, 0, 0);
          v16 = v18;
          v18 = 0;
          if (v16)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v16);
          }
        }
      }
    }

    result = v21;
    v21 = 0;
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

uint64_t *WTF::WeakHashMap<WebKit::WebPage,WebCore::RegistrableDomain,WTF::DefaultWeakPtrImpl>::get@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ++*(result + 2);
  v3 = *(a2 + 24);
  if (v3)
  {
    if (*(v3 + 8) && (v4 = *result) != 0)
    {
      v5 = *(v4 - 8);
      v6 = (~(v3 << 32) + v3) ^ ((~(v3 << 32) + v3) >> 22);
      v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
      v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
      v9 = v5 & ((v8 >> 31) ^ v8);
      for (i = 1; ; ++i)
      {
        v11 = v9;
        v12 = *(v4 + 16 * v9);
        if (v12 != -1)
        {
          if (!v12)
          {
            goto LABEL_9;
          }

          if (v12 == v3)
          {
            break;
          }
        }

        v9 = (v11 + i) & v5;
      }

      v3 = *(v4 + 16 * v11 + 8);
      if (v3)
      {
        atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
      }
    }

    else
    {
LABEL_9:
      v3 = 0;
    }
  }

  *a3 = v3;
  return result;
}

uint64_t WebKit::WebGeolocationManager::didChangePosition(WebKit::WebGeolocationManager *this, WTF **a2, const WebCore::GeolocationPositionData *a3)
{
  result = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(this + 4, a2, a3);
  v5 = *(this + 4);
  if (v5)
  {
    v5 += 40 * *(v5 - 4);
  }

  if (v5 != result)
  {
    v12 = 0;
    v13 = 0;
    WTF::Mapper<WTF::Vector<WTF::WeakPtr<WebKit::WebPage,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVector<WebKit::WebPage,WTF::DefaultWeakPtrImpl>(WTF::WeakHashSet<WebKit::WebPage,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1> const&)::{lambda(WebKit::WebPage&)#1},WTF::Vector<WTF::WeakPtr<WebKit::WebPage,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::WeakHashSet<WebKit::WebPage,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1> const&,void>::map(&v12, (result + 8));
    if (HIDWORD(v13))
    {
      v7 = v12;
      v8 = 8 * HIDWORD(v13);
      while (*v7)
      {
        v9 = *(*v7 + 8);
        if (!v9)
        {
          break;
        }

        v10 = *(v9 + 40);
        if (v10)
        {
          v11 = v10 + 2;
          ++v10[2];
          WebCore::GeolocationController::from(v10, v6);
          WebCore::GeolocationController::positionChanged();
          WTF::RefCounted<WebCore::Page>::deref(v11);
        }

        v7 += 8;
        v8 -= 8;
        if (!v8)
        {
          return WTF::Vector<WTF::WeakPtr<WebCore::VideoPresentationModelClient,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v6);
        }
      }

      result = 121;
      __break(0xC471u);
    }

    else
    {
      return WTF::Vector<WTF::WeakPtr<WebCore::VideoPresentationModelClient,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v6);
    }
  }

  return result;
}

uint64_t WebCore::GeolocationController::from(WebCore::GeolocationController *this, WebCore::Page *a2)
{
  v3 = WebCore::GeolocationController::supplementName(this);
  if (!v4 || (v5 = v3, v3 == -1))
  {
    __break(0xC471u);
    JUMPOUT(0x19E2D8214);
  }

  v6 = *(this + 2);
  if (!v6)
  {
    return 0;
  }

  v7 = v4;
  v8 = *(v6 - 8);
  v14 = -1640531527;
  v15 = 0;
  v16 = 0;
  WTF::SuperFastHash::addCharacters<char,WTF::StringHasher::DefaultConverter>(&v14, v3, v4 - 1);
  v9 = WTF::SuperFastHash::hash(&v14) & v8;
  v10 = v6 + 24 * v9;
  v11 = *(v10 + 8);
  if (!v11)
  {
    return 0;
  }

  v12 = 1;
  while (v11 != v7 || *v10 == -1 || memcmp(*v10, v5, v7))
  {
    v9 = (v9 + v12) & v8;
    v10 = v6 + 24 * v9;
    v11 = *(v10 + 8);
    ++v12;
    if (!v11)
    {
      return 0;
    }
  }

  return *(v10 + 16);
}

uint64_t WebKit::WebGeolocationManager::didFailToDeterminePosition(WebKit::WebGeolocationManager *this, WTF **a2, const WTF::String *a3)
{
  result = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(this + 4, a2, a3);
  v6 = result;
  v7 = *(this + 4);
  if (v7)
  {
    v7 += 40 * *(v7 - 4);
  }

  if (v7 != result)
  {
    v8 = WTF::fastMalloc(0x10);
    v9 = v8;
    *v8 = 0x100000001;
    v10 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    *(v8 + 1) = v10;
    v19 = 0;
    v20 = 0;
    WTF::Mapper<WTF::Vector<WTF::WeakPtr<WebKit::WebPage,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVector<WebKit::WebPage,WTF::DefaultWeakPtrImpl>(WTF::WeakHashSet<WebKit::WebPage,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1> const&)::{lambda(WebKit::WebPage&)#1},WTF::Vector<WTF::WeakPtr<WebKit::WebPage,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::WeakHashSet<WebKit::WebPage,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1> const&,void>::map(&v19, (v6 + 8));
    if (HIDWORD(v20))
    {
      v12 = v19;
      v13 = 8 * HIDWORD(v20);
      while (*v12)
      {
        v14 = *(*v12 + 8);
        if (!v14)
        {
          break;
        }

        v15 = *(v14 + 40);
        if (v15)
        {
          v16 = v15 + 2;
          ++v15[2];
          WebCore::GeolocationController::from(v15, v11);
          WebCore::GeolocationController::errorOccurred();
          WTF::RefCounted<WebCore::Page>::deref(v16);
        }

        v12 += 8;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_13;
        }
      }

LABEL_21:
      __break(0xC471u);
      JUMPOUT(0x19E2D8390);
    }

LABEL_13:
    result = WTF::Vector<WTF::WeakPtr<WebCore::VideoPresentationModelClient,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v11);
    if (*v9 == 1)
    {
      v18 = *(v9 + 1);
      *(v9 + 1) = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v17);
      }

      if (*v9 != 1)
      {
        goto LABEL_21;
      }

      return WTF::fastFree(v9, v17);
    }

    else
    {
      --*v9;
    }
  }

  return result;
}

uint64_t WebKit::WebGeolocationManager::resetPermissions(WebKit::WebGeolocationManager *this, WTF **a2, const WTF::StringImpl *a3)
{
  result = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(this + 4, a2, a3);
  v5 = *(this + 4);
  if (v5)
  {
    v5 += 40 * *(v5 - 4);
  }

  if (v5 == result)
  {
    v12 = 0;
    v13 = 0;
    WTF::Mapper<WTF::Vector<WTF::WeakPtr<WebKit::WebPage,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVector<WebKit::WebPage,WTF::DefaultWeakPtrImpl>(WTF::WeakHashSet<WebKit::WebPage,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1> const&)::{lambda(WebKit::WebPage&)#1},WTF::Vector<WTF::WeakPtr<WebKit::WebPage,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::WeakHashSet<WebKit::WebPage,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1> const&,void>::map(&v12, (result + 8));
    if (HIDWORD(v13))
    {
      v7 = v12;
      v8 = 8 * HIDWORD(v13);
      while (*v7)
      {
        v9 = *(*v7 + 8);
        if (!v9)
        {
          break;
        }

        WebKit::WebPage::localMainFrame((v9 - 16), &v11);
        if (v11)
        {
          WebCore::LocalFrame::resetAllGeolocationPermission(v11);
          v10 = v11;
          v11 = 0;
          if (v10)
          {
            if (*(v10 + 4) == 1)
            {
              (*(*v10 + 8))(v10);
            }

            else
            {
              --*(v10 + 4);
            }
          }
        }

        v7 += 8;
        v8 -= 8;
        if (!v8)
        {
          return WTF::Vector<WTF::WeakPtr<WebCore::VideoPresentationModelClient,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v6);
        }
      }

      result = 121;
      __break(0xC471u);
    }

    else
    {
      return WTF::Vector<WTF::WeakPtr<WebCore::VideoPresentationModelClient,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v6);
    }
  }

  return result;
}

void WebKit::SampleBufferDisplayLayer::hostingContext(WebKit::SampleBufferDisplayLayer *this@<X0>, uint64_t a2@<X8>)
{
  v7 = 0;
  v8 = 0;
  if (*(this + 160) != 1)
  {
    *a2 = 0;
    WTF::MachSendRight::MachSendRight();
    *(a2 + 16) = v8;
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  *a2 = *(this + 34);
  WTF::MachSendRight::MachSendRight((a2 + 8), (this + 144));
  v4 = *(this + 19);
  if (!v4)
  {
    *(a2 + 16) = 0;
    goto LABEL_7;
  }

  WTF::EmbeddedFixedVector<unsigned char,WTF::FastMalloc>::create<unsigned char const*>(v4 + 4, &v4[*v4 + 4], &v9);
  v6 = v8;
  *(a2 + 16) = v9;
  v8 = 0;
  if (v6)
  {
    WTF::fastFree(v6, v5);
  }

LABEL_8:
  WTF::MachSendRight::~MachSendRight(&v7);
}

uint64_t WebKit::SampleBufferDisplayLayer::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this + 8);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 8);
    atomic_compare_exchange_strong_explicit((this + 8), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 8));
}

uint64_t non-virtual thunk toWebKit::SampleBufferDisplayLayer::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this - 16);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this - 16);
    atomic_compare_exchange_strong_explicit((this - 16), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this - 16));
}

{
  while (1)
  {
    v1 = *(this - 32);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this - 32);
    atomic_compare_exchange_strong_explicit((this - 32), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this - 32));
}

atomic_ullong *non-virtual thunk toWebKit::SampleBufferDisplayLayer::deref(atomic_ullong *this)
{
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref(this - 2);
}

{
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref(this - 4);
}

uint64_t WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this + 8);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this + 8);
    atomic_compare_exchange_strong_explicit((this + 8), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this + 8));
}

void WebKit::WebGamepad::~WebGamepad(WebKit::WebGamepad *this, void *a2)
{
  *this = &unk_1F112AD20;
  v3 = this + 64;
  WTF::Vector<WebCore::SharedGamepadValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 80, a2);
  WTF::Vector<WebCore::SharedGamepadValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v4);

  WebCore::PlatformGamepad::~PlatformGamepad(this, v5);
}

{
  *this = &unk_1F112AD20;
  v3 = this + 64;
  WTF::Vector<WebCore::SharedGamepadValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 80, a2);
  WTF::Vector<WebCore::SharedGamepadValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v4);
  WebCore::PlatformGamepad::~PlatformGamepad(this, v5);

  bmalloc::api::tzoneFree(v6, v7);
}

uint64_t WebCore::PlatformGamepad::playEffect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  *a4 = 0;
  (*(*v4 + 16))(v4, 0);
  v5 = *(*v4 + 8);

  return v5(v4);
}

uint64_t WebCore::PlatformGamepad::stopEffects(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  (*(*v2 + 16))(v2);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void WebCore::SampleBufferDisplayLayer::hostingContext(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,(WTF::DestructionThread)0>::deref(atomic_ullong *result, void *a2)
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
        WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::~AudioMediaStreamTrackRendererInternalUnitManagerProxy((result - 1), a2);

        return bmalloc::api::tzoneFree(v4, v5);
      }

      return result;
    }
  }

  v6 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,(WTF::DestructionThread)0>(v6, a2);
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
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
    WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::~AudioMediaStreamTrackRendererInternalUnitManagerProxy(v5, a2);
    this = bmalloc::api::tzoneFree(v7, v8);
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

void WebCore::PlatformGamepad::~PlatformGamepad(WebCore::PlatformGamepad *this, void *a2)
{
  *this = &unk_1F112AFA0;
  v3 = *(this + 7);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(v6 + 8) = 0;
    v7 = *(this + 1);
    *(this + 1) = 0;
    if (v7)
    {
      if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v7);
        WTF::fastFree(v7, a2);
      }
    }
  }
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteSampleBufferDisplayLayerManager::CreateLayer,WebKit::SampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::SampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::SampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,IPC::Decoder)#1},void,WebKit::SampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,IPC::Decoder>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F112B048;
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

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteSampleBufferDisplayLayerManager::CreateLayer,WebKit::SampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::SampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::SampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,IPC::Decoder)#1},void,WebKit::SampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112B048;
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

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteSampleBufferDisplayLayerManager::CreateLayer,WebKit::SampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::SampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::SampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,IPC::Decoder)#1},void,WebKit::SampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<WebCore::HostingContext>,void>::decode<IPC::Decoder>(a3, &v11);
    if (v14 & 1) != 0 || (v8 = *a3, v9 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v10 = *(a3 + 3)) != 0) && v9 && ((*(*v10 + 16))(v10, v8), (v14))
    {
      std::apply[abi:sn200100]<WebKit::SampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,std::tuple<WebCore::HostingContext>>((a1 + 8), &v11);
      if (v14)
      {
        v6 = v13;
        v13 = 0;
        if (v6)
        {
          WTF::fastFree(v6, v5);
        }

        WTF::MachSendRight::~MachSendRight(&v12);
      }
    }

    else
    {
      IPC::Connection::cancelReply<Messages::RemoteSampleBufferDisplayLayerManager::CreateLayer,WebKit::SampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>((a1 + 8));
    }
  }

  else
  {
    v7 = (a1 + 8);

    IPC::Connection::cancelReply<Messages::RemoteSampleBufferDisplayLayerManager::CreateLayer,WebKit::SampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(v7);
  }
}

void IPC::Connection::cancelReply<Messages::RemoteSampleBufferDisplayLayerManager::CreateLayer,WebKit::SampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(void *a1)
{
  v7 = 0;
  v8 = 0;
  v4 = 0;
  WTF::MachSendRight::MachSendRight();
  v6 = 0;
  v9 = 0;
  WTF::MachSendRight::~MachSendRight(&v8);
  std::apply[abi:sn200100]<WebKit::SampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,std::tuple<WebCore::HostingContext>>(a1, &v4);
  v3 = v6;
  v6 = 0;
  if (v3)
  {
    WTF::fastFree(v3, v2);
  }

  WTF::MachSendRight::~MachSendRight(&v5);
}

void std::apply[abi:sn200100]<WebKit::SampleBufferDisplayLayer::initialize(BOOL,WebCore::IntSize,BOOL,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0,std::tuple<WebCore::HostingContext>>(void *a1, int *a2)
{
  v20 = *a2;
  WTF::MachSendRight::MachSendRight();
  v4 = *(a2 + 2);
  *(a2 + 2) = 0;
  v22 = v4;
  if (*a1 && (v5 = *(*a1 + 8)) != 0)
  {
    v6 = (v5 - 16);
    while (1)
    {
      v7 = *v6;
      if ((*v6 & 1) == 0)
      {
        break;
      }

      v8 = *v6;
      atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_9:
    v23 = v20;
    WTF::MachSendRight::MachSendRight(&v24, &v21);
    if (v22)
    {
      WTF::EmbeddedFixedVector<unsigned char,WTF::FastMalloc>::create<unsigned char const*>(v22 + 4, v22 + *v22 + 4, &v27);
      v11 = v27;
    }

    else
    {
      v11 = 0;
    }

    v25 = v11;
    v26 = 1;
    v12 = *(v5 + 136);
    *(v5 + 112) = v23;
    if (v12)
    {
      WTF::MachSendRight::operator=();
      v14 = v25;
      v25 = 0;
      v15 = *(v5 + 128);
      *(v5 + 128) = v14;
      if (v15)
      {
        WTF::fastFree(v15, v13);
      }
    }

    else
    {
      WTF::MachSendRight::MachSendRight();
      v16 = v25;
      v25 = 0;
      *(v5 + 128) = v16;
      *(v5 + 136) = 1;
    }

    if (v26 == 1)
    {
      v17 = v25;
      v25 = 0;
      if (v17)
      {
        WTF::fastFree(v17, v13);
      }

      WTF::MachSendRight::~MachSendRight(&v24);
    }

    v18 = a1[1];
    a1[1] = 0;
    (*(*v18 + 16))(v18, v20 != 0);
    (*(*v18 + 8))(v18);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref(v6);
  }

  else
  {
    v9 = a1[1];
    a1[1] = 0;
    (*(*v9 + 16))(v9, 0);
    (*(*v9 + 8))(v9);
  }

  v19 = v22;
  v22 = 0;
  if (v19)
  {
    WTF::fastFree(v19, v10);
  }

  WTF::MachSendRight::~MachSendRight(&v21);
}

IPC::Encoder *IPC::Connection::send<Messages::RemoteSampleBufferDisplayLayer::EnqueueVideoFrame>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1607;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WebKit::SharedVideoFrame,void>::encode(v6, *a2);
  IPC::Connection::sendMessageImpl(a1, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SampleBufferDisplayLayer::enqueueVideoFrame(WebCore::VideoFrame &)::$_0,void,IPC::Semaphore &>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 48);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1614;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v5;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<IPC::Semaphore,void>::encode(v6, a2);
  IPC::Connection::sendMessageImpl(v4, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::SampleBufferDisplayLayer::enqueueVideoFrame(WebCore::VideoFrame &)::$_1,void,WebCore::SharedMemoryHandle &&>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 48);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1613;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v5;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::encode(v6, a2);
  IPC::Connection::sendMessageImpl(v4, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

atomic_uint **WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::SampleBufferDisplayLayer,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::SampleBufferDisplayLayer,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakPtr<WebKit::SampleBufferDisplayLayer,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<WebKit::SampleBufferDisplayLayer,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>@<X0>(atomic_uint **result@<X0>, uint64_t *a2@<X1>, atomic_uint **a3@<X8>)
{
  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2D92B4);
  }

  v4 = *result;
  if (*result)
  {
    v5 = *(v4 - 2);
    v6 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
    v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
    v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
    v9 = v5 & ((v8 >> 31) ^ v8);
    v10 = *&v4[4 * v9];
    if (v10 == v3)
    {
LABEL_8:
      v4 = *&v4[4 * v9 + 2];
      if (v4)
      {
        atomic_fetch_add(v4, 1u);
      }
    }

    else
    {
      v11 = 1;
      while (v10)
      {
        v9 = (v9 + v11) & v5;
        v10 = *&v4[4 * v9];
        ++v11;
        if (v10 == v3)
        {
          goto LABEL_8;
        }
      }

      v4 = 0;
    }
  }

  *a3 = v4;
  return result;
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v2 = *(v1 - 4)) != 0)
  {
    v3 = v2 << (6 * *(v1 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = WTF::fastMalloc((24 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 24 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v12 = (v4 + 24 * i);
      v13 = *v12;
      if (*v12 != -1)
      {
        if (v13)
        {
          v15 = *a1;
          if (*a1)
          {
            v16 = *(v15 - 8);
          }

          else
          {
            v16 = 0;
          }

          v17 = (v13 + ~(v13 << 32)) ^ ((v13 + ~(v13 << 32)) >> 22);
          v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
          v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
          v20 = v16 & ((v19 >> 31) ^ v19);
          v21 = 1;
          do
          {
            v22 = (v15 + 24 * v20);
            v20 = (v20 + v21++) & v16;
          }

          while (*v22);
          v23 = v22[2];
          v22[2] = 0;
          if (v23)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v23, v8);
          }

          *v22 = *v12;
          v24 = v12[1];
          v12[1] = 0;
          v22[1] = v24;
          v22[2] = v12[2];
          v12[2] = 0;
        }

        else
        {
          v14 = v12[2];
          v12[2] = 0;
          if (v14)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v14, v8);
          }
        }
      }
    }
  }

  else if (!v4)
  {
    return;
  }

  WTF::fastFree((v4 - 16), v8);
}

atomic_uchar *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,WTF::NoTaggingTraits<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>@<X0>(atomic_uchar *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2D95B8);
  }

  v5 = *result;
  if (!*result)
  {
LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  v6 = *(v5 - 8);
  v7 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = *(v5 + 24 * v10);
  if (v11 != v3)
  {
    v12 = 1;
    while (v11)
    {
      v10 = (v10 + v12) & v6;
      v11 = *(v5 + 24 * v10);
      ++v12;
      if (v11 == v3)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_11;
  }

LABEL_8:
  v13 = v5 + 24 * v10;
  result = *(v13 + 16);
  *a3 = *(v13 + 8);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakRef(result);
  }

  a3[1] = result;
  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteAudioMediaStreamTrackRendererInternalUnitManager::CreateUnit,WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::createRemoteUnit(void)::$_0>(WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::createRemoteUnit(void)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F112B0C0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteAudioMediaStreamTrackRendererInternalUnitManager::CreateUnit,WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::createRemoteUnit(void)::$_0>(WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::createRemoteUnit(void)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112B0C0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteAudioMediaStreamTrackRendererInternalUnitManager::CreateUnit,WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::createRemoteUnit(void)::$_0>(WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::createRemoteUnit(void)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy *a1, uint64_t a2, uint64_t *a3)
{
  if (!a3 || (v4 = a3, (v5 = *a3) == 0))
  {
LABEL_54:
    v35 = *(a1 + 2);
    if (v35)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v35, *(a1 + 1), &v43);
      v37 = v43;
      if (v43)
      {
        v43 = 0;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,(WTF::DestructionThread)0>::deref((v37 + 8), v36);
      }
    }

    return;
  }

  v6 = &v52;
  v7 = a3[1];
  v8 = v4[2];
  if (v7 <= &v8[-v5])
  {
    *v4 = 0;
    v4[1] = 0;
    v40 = v4[3];
    if (v40)
    {
      if (v7)
      {
        (*(*v40 + 16))(v40);
        v5 = *v4;
        v7 = v4[1];
LABEL_76:
        *v4 = 0;
        v4[1] = 0;
        v41 = v4[3];
        if (v41)
        {
          if (v7)
          {
            (*(*v41 + 16))(v41, v5);
            v5 = *v4;
            v7 = v4[1];
LABEL_79:
            *v4 = 0;
            v4[1] = 0;
            v42 = v4[3];
            if (v42)
            {
              if (v7)
              {
                (*(*v42 + 16))(v42, v5);
                goto LABEL_66;
              }

              goto LABEL_50;
            }

            goto LABEL_49;
          }
        }

        else
        {
          v7 = 0;
        }

        v5 = 0;
        goto LABEL_79;
      }
    }

    else
    {
      v7 = 0;
    }

    v5 = 0;
    goto LABEL_76;
  }

  v4[2] = (v8 + 1);
  if (!v8)
  {
    goto LABEL_76;
  }

  v9 = *v8;
  if (v9 >= 2)
  {
    goto LABEL_79;
  }

  if (!v9)
  {
    LOBYTE(v52) = 0;
    v58 = 0;
    v59 = 1;
    goto LABEL_11;
  }

  IPC::ArgumentCoder<WebCore::CAAudioStreamDescription,void>::decode(v4, v60);
  if ((v62 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_8:
  v52 = MEMORY[0x1E69E2E98] + 16;
  *(v6 + 3) = *(v6 + 15);
  *(v6 + 5) = *(v6 + 17);
  *(v6 + 7) = *(v6 + 19);
  v57 = v61;
  v53 = *(v6 + 13);
  v58 = 1;
  v59 = 1;
  WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(v60);
  v7 = v4[1];
  if (v59)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v30 = *v4;
    *v4 = 0;
    v4[1] = 0;
    v31 = v4[3];
    if (!v31 || !v7 || ((*(*v31 + 16))(v31, v30), (v59 & 1) == 0))
    {
      LOBYTE(v43) = 0;
      v50 = 0;
      goto LABEL_53;
    }

    v7 = v4[1];
LABEL_11:
    v10 = ((v4[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = v10 - *v4;
    v12 = v7 >= v11;
    v13 = v7 - v11;
    if (v12 && v13 > 7)
    {
      v4[2] = (v10 + 1);
      if (v10)
      {
        v14 = *v10;
        LOBYTE(v43) = 0;
        v48 = 0;
        if (v58 == 1)
        {
          v43 = MEMORY[0x1E69E2E98] + 16;
          v15 = *(v6 + 5);
          v45 = *(v6 + 3);
          *v46 = v15;
          *&v46[16] = *(v6 + 7);
          v47 = v57;
          v44 = v53;
          v48 = 1;
        }

        v49 = v14;
        v50 = 1;
        if ((v58 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_18:
        WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(&v52);
        if (v50)
        {
          goto LABEL_19;
        }

        goto LABEL_53;
      }
    }

    else
    {
      *v4 = 0;
      v4[1] = 0;
      v38 = v4[3];
      if (v38)
      {
        if (v7)
        {
          (*(*v38 + 16))(v38);
          v7 = v4[1];
        }
      }

      else
      {
        v7 = 0;
      }
    }

    *v4 = 0;
    v4[1] = 0;
    v39 = v4[3];
    if (v39 && v7)
    {
      (*(*v39 + 16))(v39);
    }

    LOBYTE(v43) = 0;
    v50 = 0;
    if (v59 & 1) != 0 && (v58)
    {
      goto LABEL_18;
    }

LABEL_53:
    v32 = *v4;
    v33 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    v34 = v4[3];
    if (!v34)
    {
      goto LABEL_54;
    }

    if (!v33)
    {
      goto LABEL_54;
    }

    (*(*v34 + 16))(v34, v32);
    if ((v50 & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_19:
    v16 = *(a1 + 2);
    if (!v16)
    {
      goto LABEL_44;
    }

    v17 = v49;
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v16, *(a1 + 1), &v51);
    a1 = v51;
    if (!v51)
    {
      goto LABEL_44;
    }

    if (!v17 || (v48 & 1) == 0)
    {
      v51 = 0;
      goto LABEL_43;
    }

    if (*(v51 + 27))
    {
      WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::stopThread(v51);
    }

    v19 = IPC::Semaphore::operator new(8, v18);
    *v19 = 0;
    v19[1] = 0;
    semaphore_create(*MEMORY[0x1E69E9A60], v19 + 1, 0, 0);
    std::unique_ptr<IPC::Semaphore>::reset[abi:sn200100](a1 + 27, v19);
    if (*(a1 + 168) == 1)
    {
      v20 = v45;
      *(a1 + 6) = v44;
      *(a1 + 7) = v20;
      *(a1 + 16) = *v46;
      *(a1 + 136) = *&v46[8];
      *(a1 + 19) = *&v46[24];
      *(a1 + 40) = v47;
    }

    else
    {
      *(a1 + 11) = MEMORY[0x1E69E2E98] + 16;
      v21 = v45;
      v22 = *&v46[16];
      *(a1 + 8) = *v46;
      *(a1 + 9) = v22;
      *(a1 + 40) = v47;
      *(a1 + 6) = v44;
      *(a1 + 7) = v21;
      *(a1 + 168) = 1;
    }

    *(a1 + 25) = v17;
    v23 = *(a1 + 6);
    if (v23 == *(a1 + 7))
    {
      break;
    }

    v4 = &v52;
    v6 = &v43;
    while (1)
    {
      v24 = *(a1 + 18);
      if (v23 >= v24)
      {
        break;
      }

      v25 = *(a1 + 8);
      v26 = *(v25 + 8 * v23);
      *(v25 + 8 * v23) = 0;
      v60[0] = v26;
      if (v23 == v24 - 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = v23 + 1;
      }

      *(a1 + 6) = v27;
      v52 = MEMORY[0x1E69E2E98] + 16;
      v54 = v45;
      v53 = v44;
      v55 = *v46;
      v56 = *&v46[16];
      v57 = v47;
      v58 = 1;
      WTF::CompletionHandler<void ()(std::optional<WebCore::CAAudioStreamDescription>)>::operator()(v60, &v52);
      if (v58 == 1)
      {
        WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(&v52);
      }

      if (v60[0])
      {
        (*(*v60[0] + 8))(v60[0]);
      }

      v23 = *(a1 + 6);
      if (v23 == *(a1 + 7))
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_48:
    v28 = *v4;
    v7 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    v29 = v4[3];
    if (!v29)
    {
LABEL_49:
      v7 = 0;
      goto LABEL_50;
    }

    if (v7)
    {
      (*(*v29 + 16))(v29, v28);
      if ((v62 & 1) == 0)
      {
LABEL_66:
        v7 = v4[1];
        goto LABEL_50;
      }

      goto LABEL_8;
    }

LABEL_50:
    LOBYTE(v52) = 0;
    v59 = 0;
  }

LABEL_40:
  if (*(a1 + 80) == 1)
  {
    WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::start(a1, v18);
  }

  a1 = v51;
  v51 = 0;
  if (a1)
  {
LABEL_43:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,(WTF::DestructionThread)0>::deref(a1 + 1, v18);
  }

LABEL_44:
  if ((v50 & 1) != 0 && v48 == 1)
  {
    WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(&v43);
  }
}

uint64_t WTF::VectorTypeOperations<WTF::CompletionHandler<void ()(std::optional<WebCore::CAAudioStreamDescription>)>>::move(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    v4 = result;
    v5 = 8 * a2;
    do
    {
      v6 = *v4;
      *v4 = 0;
      *a3 = v6;
      result = *v4;
      *v4 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      ++a3;
      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::startThread(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F112B0E8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::startThread(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F112B0E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar *WTF::Detail::CallableWrapper<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy::startThread(void)::$_0,void>::call(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(a1 + 8), &v17);
    if (v17)
    {
      result = *(v17 + 40);
      if (result)
      {
        result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(result, *(v17 + 32), &v16);
        if (v16)
        {
          *(v17 + 192) = 0;
          do
          {
            result = MEMORY[0x19EB16340](*(*(v17 + 216) + 4));
            if (result)
            {
              break;
            }

            v4 = atomic_load((v17 + 232));
            if (v4)
            {
              break;
            }

            v5 = v16;
            v6 = *(*(v17 + 176) + 40);
            v15 = 0;
            v8 = *(v17 + 192);
            v7 = *(v17 + 200);
            v9 = mach_absolute_time();
            result = (*(*v5 + 16))(v5, v7, v6, v8, &v15, v9);
            if (v15 == 16)
            {
              if ((*(v17 + 168) & 1) == 0)
              {
                __break(1u);
                return result;
              }

              v10 = *(v17 + 200);
              v11 = WebCore::CAAudioStreamDescription::bytesPerFrame((v17 + 88));
              WebCore::AudioSampleBufferList::zeroABL(v6, (v10 * v11));
            }

            result = WebCore::CARingBuffer::store(*(v17 + 184), v6);
            v12 = v17;
            *(v17 + 192) += *(v17 + 200);
            LOBYTE(v12) = atomic_load((v12 + 232));
          }

          while ((v12 & 1) == 0);
          v13 = v16;
          v16 = 0;
          if (v13)
          {
            result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioMediaStreamTrackRendererInternalUnit::Client,(WTF::DestructionThread)0>::deref((v13 + 8), v3);
          }
        }
      }

      v14 = v17;
      v17 = 0;
      if (v14)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::AudioMediaStreamTrackRendererInternalUnitManagerProxy,(WTF::DestructionThread)0>::deref((v14 + 8), v3);
      }
    }
  }

  return result;
}

unsigned int *WTF::Vector<WTF::WeakPtr<WebCore::PlatformGamepad,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    v2 = a2;
    if (a2 >> 29)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = result[3];
      result = WTF::fastMalloc((8 * a2));
      v3[2] = v2;
      *v3 = result;
      if (v5)
      {
        v7 = result;
        v8 = 8 * v5;
        v9 = v4;
        do
        {
          v10 = *v9;
          *v9 = 0;
          *v7 = v10;
          result = *v9;
          *v9 = 0;
          if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, result);
            result = WTF::fastFree(result, v6);
          }

          v7 += 2;
          ++v9;
          v8 -= 8;
        }

        while (v8);
      }

      if (v4)
      {
        if (*v3 == v4)
        {
          *v3 = 0;
          v3[2] = 0;
        }

        return WTF::fastFree(v4, v6);
      }
    }
  }

  return result;
}

WTF *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebProcessPool::StoppedUsingGamepads,WebKit::WebGamepadProvider::stopMonitoringGamepads(WebCore::GamepadProviderClient &)::$_0>(WebKit::WebGamepadProvider::stopMonitoringGamepads(WebCore::GamepadProviderClient &)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(WTF *result, void *a2)
{
  v2 = *(result + 1);
  if (*(v2 + 56))
  {
    v3 = *(v2 + 60);
    v4 = *(v2 + 48);
    if (v3)
    {
      v5 = 8 * v3;
      do
      {
        result = *v4;
        *v4 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        v4 = (v4 + 8);
        v5 -= 8;
      }

      while (v5);
      *(v2 + 60) = 0;
      v4 = *(v2 + 48);
    }

    if (v4)
    {
      *(v2 + 48) = 0;
      *(v2 + 56) = 0;
      result = WTF::fastFree(v4, a2);
    }
  }

  if (*(v2 + 72))
  {
    v6 = *(v2 + 76);
    if (v6)
    {
      WTF::VectorDestructor<true,WTF::WeakPtr<WebKit::ListDataObserver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>::destruct(*(v2 + 64), (*(v2 + 64) + 8 * v6));
      *(v2 + 76) = 0;
    }

    result = *(v2 + 64);
    if (result)
    {
      *(v2 + 64) = 0;
      *(v2 + 72) = 0;

      return WTF::fastFree(result, a2);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebProcessPool::PlayGamepadEffect,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112B138;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebProcessPool::PlayGamepadEffect,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112B138;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebProcessPool::PlayGamepadEffect,WTF::CompletionHandler<void ()(BOOL)>>(WTF::CompletionHandler<void ()(BOOL)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    v5 = *&v4 & ((v4 & 0x100) >> 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v6 + 16))(v6, v5);
  v7 = *(*v6 + 8);

  return v7(v6);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebProcessPool::StopGamepadEffects,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F112B160;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebProcessPool::StopGamepadEffects,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F112B160;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::WebProcessPool::StopGamepadEffects,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

unsigned int **WTF::HashTable<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::expand(uint64_t *a1, unsigned int **a2)
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

  return WTF::HashTable<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

unsigned int **WTF::HashTable<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, unsigned int **a3)
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
    do
    {
      v13 = (v6 + 16 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v15 = *a1;
          if (*a1)
          {
            v16 = *(v15 - 8);
          }

          else
          {
            v16 = 0;
          }

          v17 = WTF::PtrHashBase<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,true>::hash(*(v14 + 1));
          v18 = 0;
          do
          {
            v19 = v17 & v16;
            v17 = ++v18 + v19;
          }

          while (*(v15 + 16 * v19));
          v20 = (v15 + 16 * v19);
          v21 = *v13;
          *v13 = 0;
          *v20 = v21;
          v20[1] = v13[1];
          v22 = *v13;
          *v13 = 0;
          if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v22);
            WTF::fastFree(v22, v10);
          }

          if (v13 == a3)
          {
            v12 = v20;
          }
        }

        else
        {
          *v13 = 0;
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

uint64_t WTF::PtrHashBase<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,true>::hash(uint64_t a1)
{
  if (a1)
  {
    v1 = (~(a1 << 32) + a1) ^ ((~(a1 << 32) + a1) >> 22);
    v2 = 9 * ((v1 + ~(v1 << 13)) ^ ((v1 + ~(v1 << 13)) >> 8));
    v3 = (v2 ^ (v2 >> 15)) + ~((v2 ^ (v2 >> 15)) << 27);
    return (v3 >> 31) ^ v3;
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

BOOL WTF::PtrHashBase<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,true>::equal(uint64_t a1, uint64_t a2)
{
  if (!a1 || (v2 = *(a2 + 8)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2DA6B0);
  }

  return v2 == a1;
}

uint64_t WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(uint64_t *a1, uint64_t a2)
{
  if (!*a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (*a1 + 16 * *(*a1 - 4) == a2)
  {
    return 0;
  }

LABEL_3:
  v2 = *(a2 + 8);
  WTF::HashTable<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::remove(a1, a2);
  return v2;
}

uint64_t WTF::HashTable<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>>,(WTF::ShouldValidateKey)1,WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = *a2;
  if (*a2 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2DA81CLL);
  }

  v6 = *(v2 - 8);
  v7 = WTF::PtrHashBase<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,true>::hash(*(v4 + 8));
  for (i = 0; ; v7 = i + v9)
  {
    v9 = v7 & v6;
    v10 = *(v2 + 16 * v9);
    if (v10 == -1)
    {
      goto LABEL_8;
    }

    if (!v10)
    {
      break;
    }

    if (WTF::PtrHashBase<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,true>::equal(*(v10 + 8), *a2))
    {
      return v2 + 16 * v9;
    }

LABEL_8:
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

unsigned int *WTF::HashTable<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::remove(uint64_t *a1, unsigned int **a2)
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

    return WTF::HashTable<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::rehash(a1, v7 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2DA9C0);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 == v3)
  {
    return v2 + 16 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 16 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 16 * v8;
    }
  }

  return v2 + 16 * *(v2 - 4);
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = (v3 + 16 * *(v3 - 4));
  }

  else
  {
    v4 = 0;
  }

  if (v4 == a2)
  {
    *a3 = 0;
    return a1;
  }

  v5 = a2[1];
  if (v5)
  {
    a2[1] = 0;
    v3 = *a1;
  }

  *a3 = v5;
  if (v3)
  {
    v6 = (v3 + 16 * *(v3 - 4));
    if (v6 == a2)
    {
      return a1;
    }
  }

  else
  {
    if (!a2)
    {
      return a1;
    }

    v6 = 0;
  }

  if (v6 != a2)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

_DWORD *WTF::RefCounted<WebCore::Geolocation>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x19EB032F0](result - 10);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>,WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::WeakRef<WebCore::Geolocation,WTF::DefaultWeakPtrImpl>>>,(WTF::ShouldValidateKey)1,WebCore::Geolocation const*>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *(v2 - 8);
  v4 = ~(*a2 << 32) + *a2;
  v5 = (v4 ^ (v4 >> 22)) + ~((v4 ^ (v4 >> 22)) << 13);
  v6 = (9 * (v5 ^ (v5 >> 8))) ^ ((9 * (v5 ^ (v5 >> 8))) >> 15);
  v7 = v3 & (((v6 + ~(v6 << 27)) >> 31) ^ (v6 + ~(v6 << 27)));
  for (i = 1; ; ++i)
  {
    v9 = v7;
    v10 = *(v2 + 16 * v7);
    if (v10 == -1)
    {
      goto LABEL_7;
    }

    if (!v10)
    {
      return v2 + 16 * *(v2 - 4);
    }

    v11 = *(v10 + 8);
    if (!v11)
    {
      break;
    }

    if (v11 == *a2)
    {
      return v2 + 16 * v9;
    }

LABEL_7:
    v7 = (v9 + i) & v3;
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = WTF::fastMalloc((40 * a2 + 16));
  v10 = v7;
  v11 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 40 * a2);
  }

  *a1 = v11;
  v10[2] = a2 - 1;
  v10[3] = a2;
  *v10 = 0;
  v10[1] = v6;
  if (v5)
  {
    v12 = 0;
    v13 = 0;
    v35 = v4;
    do
    {
      v14 = v4 + 40 * v12;
      if (*v14 != -1)
      {
        if (WTF::equal(*v14, 0, v9))
        {
          v15 = *(v14 + 24);
          if (v15)
          {
            WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v15, v8);
          }

          v16 = *(v14 + 8);
          if (v16)
          {
            WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v16, v8);
          }

          v17 = *v14;
          *v14 = 0;
          if (v17)
          {
            if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v8);
            }
          }
        }

        else
        {
          v18 = *a1;
          if (*a1)
          {
            v19 = *(v18 - 8);
          }

          else
          {
            v19 = 0;
          }

          v20 = WTF::ASCIICaseInsensitiveHash::hash(*v14, v8);
          v21 = 0;
          do
          {
            v22 = v20 & v19;
            v23 = v18 + 40 * (v20 & v19);
            v24 = WTF::equal(*v23, 0, v9);
            v20 = ++v21 + v22;
          }

          while (!v24);
          v25 = *(v23 + 24);
          if (v25)
          {
            WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v25, v8);
          }

          v26 = *(v23 + 8);
          v4 = v35;
          if (v26)
          {
            WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v26, v8);
          }

          v27 = *v23;
          *v23 = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v8);
          }

          v28 = *v14;
          *v14 = 0;
          *v23 = v28;
          *(v23 + 8) = 0;
          v29 = *(v14 + 8);
          *(v14 + 8) = 0;
          *(v23 + 8) = v29;
          *(v23 + 16) = *(v14 + 16);
          *(v23 + 24) = 0;
          v30 = *(v14 + 24);
          *(v14 + 24) = 0;
          *(v23 + 24) = v30;
          *(v23 + 32) = *(v14 + 32);
          v31 = *(v14 + 24);
          if (v31)
          {
            WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v31, v8);
          }

          v32 = *(v14 + 8);
          if (v32)
          {
            WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v32, v8);
          }

          v33 = *v14;
          *v14 = 0;
          if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v33, v8);
          }

          if (v14 == a3)
          {
            v13 = v18 + 40 * v22;
          }
        }
      }

      ++v12;
    }

    while (v12 != v5);
  }

  else
  {
    v13 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  WTF::fastFree((v4 - 16), v8);
  return v13;
}

uint64_t *WTF::WeakHashMap<WebKit::WebPage,WebCore::RegistrableDomain,WTF::DefaultWeakPtrImpl>::removeNullReferences(uint64_t a1, void *a2)
{
  result = _ZN3WTF9HashTableINS_3RefINS_18DefaultWeakPtrImplENS_12RawPtrTraitsIS2_EENS_21DefaultRefDerefTraitsIS2_EEEENS_12KeyValuePairIS7_N7WebCore17RegistrableDomainEEENS_24KeyValuePairKeyExtractorISB_EENS_11DefaultHashIS7_EENS_7HashMapIS7_SA_SF_NS_10HashTraitsIS7_EENSH_ISA_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsESI_SM_E8removeIfIZNS_11WeakHashMapIN6WebKit7WebPageESA_S2_E20removeNullReferencesEvEUlRT_E_EEbRKSV_(a1, a2);
  v4 = 0;
  *(a1 + 8) = 0;
  if (*a1 && (v4 = *(*a1 - 12), v4 > 0x7FFFFFFE))
  {
    v5 = -2;
  }

  else
  {
    v5 = 2 * v4;
  }

  *(a1 + 12) = v5;
  return result;
}

uint64_t *_ZN3WTF9HashTableINS_3RefINS_18DefaultWeakPtrImplENS_12RawPtrTraitsIS2_EENS_21DefaultRefDerefTraitsIS2_EEEENS_12KeyValuePairIS7_N7WebCore17RegistrableDomainEEENS_24KeyValuePairKeyExtractorISB_EENS_11DefaultHashIS7_EENS_7HashMapIS7_SA_SF_NS_10HashTraitsIS7_EENSH_ISA_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ENS_10FastMallocEE18KeyValuePairTraitsESI_SM_E8removeIfIZNS_11WeakHashMapIN6WebKit7WebPageESA_S2_E20removeNullReferencesEvEUlRT_E_EEbRKSV_(uint64_t *result, void *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    v4 = *(v2 - 4);
    if (v4)
    {
      v5 = 0;
      v6 = v2 + 16 * v4 - 16;
      do
      {
        if ((*v6 + 1) >= 2 && !*(*v6 + 8))
        {
          result = WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>>::customDeleteBucket(v6, a2);
          ++v5;
        }

        v6 -= 16;
        --v4;
      }

      while (v4);
      v2 = *v3;
      if (v5)
      {
        v7 = *(v2 - 12) - v5;
        *(v2 - 16) += v5;
        *(v2 - 12) = v7;
      }

      else if (!v2)
      {
        return result;
      }
    }

    v8 = 6 * *(v2 - 12);
    v9 = *(v2 - 4);
    if (v8 < v9 && v9 >= 9)
    {

      return WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(v3);
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(uint64_t *result)
{
  if (!*result)
  {
    LODWORD(v1) = 0;
LABEL_3:
    v2 = v1;
    v3 = 1;
    goto LABEL_4;
  }

  v1 = *(*result - 12);
  if (v1 <= 1)
  {
    goto LABEL_3;
  }

  v6 = __clz(v1 - 1);
  if (!v6)
  {
    __break(1u);
    return result;
  }

  v3 = (1 << -v6);
  if (v1 > 0x400)
  {
    if (v3 > 2 * v1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = *(*result - 12);
LABEL_4:
  if (3 * v3 <= 4 * v2)
  {
LABEL_5:
    LODWORD(v3) = 2 * v3;
  }

LABEL_6:
  if (v3 > 0x400)
  {
    v4 = 0.416666667;
  }

  else
  {
    v4 = 0.604166667;
  }

  if (v3 * v4 <= v1)
  {
    LODWORD(v3) = 2 * v3;
  }

  if (v3 <= 8)
  {
    v5 = 8;
  }

  else
  {
    v5 = v3;
  }

  return WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(result, v5);
}

WTF::StringImpl *WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>>::customDeleteBucket(uint64_t a1, void *a2)
{
  WTF::hashTraitsDeleteBucket<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>(a1, a2);
  result = *(a1 + 8);
  *(a1 + 8) = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(result, v3);
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v9 = 0;
    v10 = v5;
    while (1)
    {
      v11 = (v4 + 16 * v9);
      if (*v11 != -1)
      {
        if (*v11)
        {
          v14 = *a1;
          if (*a1)
          {
            v15 = *(v14 - 8);
          }

          else
          {
            v15 = 0;
          }

          v16 = WTF::PtrHashBase<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,true>::hash((v4 + 16 * v9));
          v17 = 0;
          do
          {
            v18 = v16 & v15;
            v16 = ++v17 + v18;
          }

          while (*(v14 + 16 * v18));
          v19 = v14 + 16 * v18;
          v20 = *(v19 + 8);
          *(v19 + 8) = 0;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v8);
          }

          v21 = *v19;
          *v19 = 0;
          if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v21);
            WTF::fastFree(v21, v8);
          }

          v22 = *v11;
          *v11 = 0;
          *v19 = v22;
          v23 = v11[1];
          v11[1] = 0;
          *(v19 + 8) = v23;
          v24 = v11[1];
          v11[1] = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v8);
          }

          v13 = *v11;
          *v11 = 0;
          if (!v13 || atomic_fetch_add(v13, 0xFFFFFFFF) != 1)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v12 = v11[1];
          v11[1] = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v8);
          }

          v13 = *v11;
          *v11 = 0;
          if (!v13 || atomic_fetch_add(v13, 0xFFFFFFFF) != 1)
          {
            goto LABEL_26;
          }
        }

        atomic_store(1u, v13);
        WTF::fastFree(v13, v8);
      }

LABEL_26:
      if (++v9 == v10)
      {
        goto LABEL_33;
      }
    }
  }

  if (v4)
  {
LABEL_33:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v3 = *(v1 - 4)) != 0)
  {
    v2 = v3 << (6 * *(v1 - 12) >= (2 * v3));
  }

  else
  {
    v2 = 8;
  }

  return WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(a1, v2);
}

uint64_t WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = result;
  v4 = *a2;
  if (*a2)
  {
    result = WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslator<WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(*a2, a3);
    v6 = *(v4 - 4);
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = (v4 + 16 * v6);
    }

    if ((v4 + 16 * v6) == v7)
    {
      v4 = 0;
    }

    else
    {
      v4 = v7[1];
      v7[1] = 0;
      result = WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(a2, v7);
    }
  }

  *v3 = v4;
  return result;
}

WTF::StringImpl *WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(WTF::StringImpl *result, void *a2)
{
  v2 = result;
  if (*result)
  {
    v3 = *result + 16 * *(*result - 4);
    if (v3 == a2)
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

    v3 = 0;
  }

  if (v3 != a2)
  {
    result = WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>>::customDeleteBucket(a2, a2);
    v4 = *v2;
    v5 = vadd_s32(*(*v2 - 16), 0xFFFFFFFF00000001);
    *(v4 - 16) = v5;
    v6 = *(v4 - 4);
    if (6 * v5.i32[1] < v6 && v6 >= 9)
    {

      return WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::rehash(v2, v6 >> 1);
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::lookup<WTF::HashMapTranslator<WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WebCore::RegistrableDomain,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>>,(WTF::ShouldValidateKey)1,WTF::DefaultWeakPtrImpl const*>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result - 8);
    v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
    v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
    v6 = v2 & ((v5 >> 31) ^ v5);
    for (i = 1; ; ++i)
    {
      v8 = v6;
      v9 = *(result + 16 * v6);
      if (v9 != -1)
      {
        if (!v9)
        {
          return 0;
        }

        if (v9 == a2)
        {
          break;
        }
      }

      v6 = (v8 + i) & v2;
    }

    result += 16 * v8;
  }

  return result;
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,WebKit::WebGeolocationManager::PageSets,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::WebGeolocationManager::PageSets>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(uint64_t *a1, WTF **a2, const WTF::StringImpl *a3)
{
  if (!*a1)
  {
    return 0;
  }

  if (WTF::equal(*a2, 0, a3) || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2DB54CLL);
  }

  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = *(v6 - 8);
  v8 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v5) & v7;
  v9 = (v6 + 40 * v8);
  if (WTF::equal(*v9, 0, v10))
  {
LABEL_10:
    if (*a1)
    {
      return *a1 + 40 * *(*a1 - 4);
    }

    return 0;
  }

  v12 = 1;
  while (*v9 == -1 || (WTF::equalIgnoringASCIICase(*v9, *a2, v11) & 1) == 0)
  {
    v8 = (v8 + v12) & v7;
    v9 = (v6 + 40 * v8);
    ++v12;
    if (WTF::equal(*v9, 0, v11))
    {
      goto LABEL_10;
    }
  }

  return v9;
}

void *WTF::Mapper<WTF::Vector<WTF::WeakPtr<WebKit::WebPage,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVector<WebKit::WebPage,WTF::DefaultWeakPtrImpl>(WTF::WeakHashSet<WebKit::WebPage,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1> const&)::{lambda(WebKit::WebPage&)#1},WTF::Vector<WTF::WeakPtr<WebKit::WebPage,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::WeakHashSet<WebKit::WebPage,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1> const&,void>::map(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*a2)
  {
    goto LABEL_13;
  }

  v5 = *(v4 - 4);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = 0;
  v7 = 8 * v5;
  v8 = v4 - 8;
  do
  {
    v9 = *(v8 + v7);
    if ((v9 + 1) >= 2 && !*(v9 + 8))
    {
      *(v8 + v7) = 0;
      if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9);
        WTF::fastFree(v9, a2);
      }

      *(v8 + v7) = -1;
      ++v6;
    }

    v7 -= 8;
  }

  while (v7);
  v4 = *a2;
  if (v6)
  {
    v10 = *(v4 - 12) - v6;
    *(v4 - 16) += v6;
    *(v4 - 12) = v10;
    goto LABEL_14;
  }

  if (!v4)
  {
LABEL_13:
    a2[1] = 0;
    goto LABEL_26;
  }

LABEL_14:
  v11 = *(v4 - 4);
  if (6 * *(v4 - 12) < v11 && v11 > 8)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::shrinkToBestSize(a2);
    v4 = *a2;
    *(a2 + 2) = 0;
    if (!v4)
    {
      *(a2 + 3) = 0;
      goto LABEL_26;
    }
  }

  else
  {
    *(a2 + 2) = 0;
  }

  v13 = *(v4 - 12);
  if (v13 >= 0x7FFFFFFF)
  {
    v14 = -2;
  }

  else
  {
    v14 = 2 * v13;
  }

  *(a2 + 3) = v14;
  v15 = *(v4 - 12);
  if (v15)
  {
    if (v15 >> 29)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2DB79CLL);
    }

    v16 = WTF::fastMalloc((8 * v15));
    *(a1 + 8) = v15;
    *a1 = v16;
  }

LABEL_26:
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(a2, &v32);
  v17 = *a2;
  if (*a2)
  {
    v18 = *(v17 - 4);
    v19 = (v17 + 8 * v18);
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v27 = a2;
  v28 = v19;
  v29 = v19;
  v30 = v19;
  v31 = v17 + 8 * v18;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v27);
  for (i = v33; i != v28; ++*(v32 + 8))
  {
    v22 = *(*i + 8);
    if (v22)
    {
      v23 = v22 - 16;
    }

    else
    {
      v23 = 0;
    }

    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v23 + 24), v23 + 16);
    v24 = *(v23 + 24);
    atomic_fetch_add(v24, 1u);
    v25 = *(a1 + 12);
    *(*a1 + 8 * v25) = v24;
    *(a1 + 12) = v25 + 1;
    v26 = v33;
    do
    {
      v33 = ++v26;
    }

    while (v26 != v34 && (*v26 + 1) <= 1);
    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v32);
    i = v33;
  }

  return result;
}

void WebKit::InjectedBundle::~InjectedBundle(WebKit::InjectedBundle *this, WTF::StringImpl *a2)
{
  *this = &unk_1F112B188;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    WTF::RefCounted<WebKit::SandboxExtension>::deref(v6);
  }

  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 2);
  *(this + 2) = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }
}

{
  WebKit::InjectedBundle::~InjectedBundle(this, a2);

  JUMPOUT(0x19EB14CF0);
}

uint64_t WebKit::InjectedBundle::setClient(API::InjectedBundle::Client *a1, void *a2)
{
  v3 = *a2;
  if (*a2)
  {
    *a2 = 0;
  }

  else
  {
    v3 = API::InjectedBundle::Client::operator new(a1, a2);
    *v3 = &unk_1F112B450;
  }

  result = *(a1 + 5);
  *(a1 + 5) = v3;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

atomic_ullong *WebKit::InjectedBundle::postMessage(WebKit::InjectedBundle *this, const WTF::String *a2, API::Object *a3)
{
  {
    v5 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v11 = WebKit::WebProcess::operator new(0x370, a2);
    v5 = WebKit::WebProcess::WebProcess(v11);
    WebKit::WebProcess::singleton(void)::process = v5;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v5, &v15);
  v6 = v15;
  v14[0] = &unk_1F1122420;
  WebKit::UserData::transform(a3, v14, &v12);
  v7 = v12;
  v12 = 0;
  v13 = v7;
  v14[0] = a2;
  v14[1] = &v13;
  IPC::Connection::send<Messages::WebProcessPool::HandleMessage>(v6, v14, 0, 0, 0);
  v8 = v13;
  v13 = 0;
  if (v8)
  {
    CFRelease(*(v8 + 1));
  }

  v9 = v12;
  v12 = 0;
  if (v9)
  {
    CFRelease(*(v9 + 1));
  }

  result = v15;
  v15 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::WebProcessPool::HandleMessage>(uint64_t *a1, uint64_t **a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 2895;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, *a2);
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(v10, a2[1]);
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

uint64_t WebKit::InjectedBundle::postSynchronousMessage(uint64_t a1, void *a2, API::Object *a3, API::Object **a4)
{
  {
    v7 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v20 = WebKit::WebProcess::operator new(0x370, a2);
    v7 = WebKit::WebProcess::WebProcess(v20);
    WebKit::WebProcess::singleton(void)::process = v7;
  }

  WebKit::AuxiliaryProcess::protectedParentProcessConnection(v7, &v24);
  v8 = v24;
  v25 = &unk_1F1122420;
  WebKit::UserData::transform(a3, &v25, &v21);
  v9 = v21;
  v21 = 0;
  v22 = v9;
  v23[0] = a2;
  v23[1] = &v22;
  IPC::Connection::sendSync<Messages::WebProcessPool::HandleSynchronousMessage>(v8, v23, 0, 0, &v25, INFINITY);
  v10 = v22;
  v22 = 0;
  if (v10)
  {
    CFRelease(*(v10 + 1));
  }

  v11 = v21;
  v21 = 0;
  if (v11)
  {
    CFRelease(*(v11 + 1));
  }

  v12 = v24;
  v24 = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v12);
  }

  if (v27)
  {
    v13 = *a4;
    *a4 = 0;
    if (v13)
    {
      v14 = *(v13 + 1);
LABEL_20:
      CFRelease(v14);
    }
  }

  else
  {
    v15 = v26;
    if (v26)
    {
      CFRetain(v26[1]);
      CFRetain(v15[1]);
    }

    v23[0] = &unk_1F11223F0;
    WebKit::UserData::transform(v15, v23, &v24);
    v16 = v24;
    v24 = 0;
    v17 = *a4;
    *a4 = v16;
    if (v17)
    {
      CFRelease(*(v17 + 1));
      v19 = v24;
      v24 = 0;
      if (v19)
      {
        CFRelease(*(v19 + 1));
      }
    }

    if (v15)
    {
      CFRelease(v15[1]);
      v14 = v15[1];
      goto LABEL_20;
    }
  }

  return mpark::detail::move_constructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::WebProcessPool::HandleSynchronousMessage>::ReplyData,IPC::Error>,(mpark::detail::Trait)1>::~move_constructor(&v25);
}

IPC::Encoder *IPC::Connection::sendSync<Messages::WebProcessPool::HandleSynchronousMessage>@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, IPC::Decoder *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  IPC::Connection::createSyncMessageEncoder(0x1078, a3, v31);
  v11 = v31[0];
  if (a4)
  {
    v12 = *(v31[0] + 2);
    if (v12)
    {
      if (!*(v31[0] + 3))
      {
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      v12 = v31[0] + 32;
    }

    *v12 |= 4u;
    *(a1 + 92) = 1;
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v11, *a2);
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(v11, a2[1]);
  v13 = IPC::Connection::sendSyncMessage(a1, v31[1], v31, a4, &v29, a6);
  if (v30)
  {
    if (v30 != 1)
    {
      mpark::throw_bad_variant_access(v13);
    }

    *a5 = v29;
    *(a5 + 16) = 1;
    goto LABEL_21;
  }

  a4 = v29;
  v29 = 0;
  if (*(a4 + 25) != 3194)
  {
    LOBYTE(v27) = 0;
    v28 = 0;
    IPC::Decoder::operator>><std::tuple<WebKit::UserData>>(a4, &v27, v15);
    if (v28 != 1)
    {
      v16 = 14;
      goto LABEL_17;
    }

    a1 = v27;
    if (!v27)
    {
      *a5 = a4;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      goto LABEL_14;
    }

LABEL_25:
    CFRetain(*(a1 + 8));
    CFRetain(*(a1 + 8));
    CFRelease(*(a1 + 8));
    v26 = v28;
    *a5 = a4;
    *(a5 + 8) = a1;
    *(a5 + 16) = 0;
    if ((v26 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_14:
    v17 = v27;
    v27 = 0;
    if (v17)
    {
      CFRelease(*(v17 + 8));
    }

    goto LABEL_18;
  }

  v16 = 11;
LABEL_17:
  *a5 = v16;
  *(a5 + 16) = 1;
  IPC::Decoder::~Decoder(a4);
  bmalloc::api::tzoneFree(v18, v19);
LABEL_18:
  if (!v30)
  {
    v20 = v29;
    v29 = 0;
    if (v20)
    {
      IPC::Decoder::~Decoder(v20);
      bmalloc::api::tzoneFree(v24, v25);
    }
  }

LABEL_21:
  result = v31[0];
  v31[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v14);
    return bmalloc::api::tzoneFree(v22, v23);
  }

  return result;
}

uint64_t WebKit::InjectedBundle::addOriginAccessAllowListEntry(WebKit::InjectedBundle *this, const WTF::String *a2, const WTF::String *a3, const WTF::String *a4, const WTF::String *a5)
{
  WebCore::SecurityOrigin::createFromString(v15, a2, a2);
  WebCore::SecurityPolicy::addOriginAccessAllowlistEntry(v15[0], a3, a4, a5);
  v10 = v15[0];
  v15[0] = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v10, v9);
  }

  {
    v11 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, v9);
    v11 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v11;
  }

  v12 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v11) + 24);
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v16 = a5;
  return IPC::Connection::send<Messages::NetworkConnectionToWebProcess::AddOriginAccessAllowListEntry>(v12, v15, 0, 0, 0);
}

uint64_t IPC::Connection::send<Messages::NetworkConnectionToWebProcess::AddOriginAccessAllowListEntry>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 429;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  Messages::NetworkConnectionToWebProcess::AddOriginAccessAllowListEntry::encode<IPC::Encoder>(a2, v10);
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

uint64_t WebKit::InjectedBundle::removeOriginAccessAllowListEntry(WebKit::InjectedBundle *this, const WTF::String *a2, const WTF::String *a3, const WTF::String *a4, const WTF::String *a5)
{
  WebCore::SecurityOrigin::createFromString(v15, a2, a2);
  WebCore::SecurityPolicy::removeOriginAccessAllowlistEntry(v15[0], a3, a4, a5);
  v10 = v15[0];
  v15[0] = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v10, v9);
  }

  {
    v11 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v14 = WebKit::WebProcess::operator new(0x370, v9);
    v11 = WebKit::WebProcess::WebProcess(v14);
    WebKit::WebProcess::singleton(void)::process = v11;
  }

  v12 = *(WebKit::WebProcess::ensureNetworkProcessConnection(v11) + 24);
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v16 = a5;
  return IPC::Connection::send<Messages::NetworkConnectionToWebProcess::RemoveOriginAccessAllowListEntry>(v12, v15, 0, 0, 0);
}

uint64_t IPC::Connection::send<Messages::NetworkConnectionToWebProcess::RemoveOriginAccessAllowListEntry>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 477;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  Messages::NetworkConnectionToWebProcess::AddOriginAccessAllowListEntry::encode<IPC::Encoder>(a2, v10);
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

uint64_t WebKit::InjectedBundle::resetOriginAccessAllowLists(WebKit::InjectedBundle *this)
{
  WebCore::SecurityPolicy::resetOriginAccessAllowlists(this);
  {
    v2 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v5 = WebKit::WebProcess::operator new(0x370, v1);
    v2 = WebKit::WebProcess::WebProcess(v5);
    WebKit::WebProcess::singleton(void)::process = v2;
  }

  v3 = WebKit::WebProcess::ensureNetworkProcessConnection(v2);
  return IPC::Connection::send<Messages::NetworkConnectionToWebProcess::ResetOriginAccessAllowLists>(*(v3 + 24), &v6, 0, 0, 0);
}

uint64_t IPC::Connection::send<Messages::NetworkConnectionToWebProcess::ResetOriginAccessAllowLists>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 481;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = a3;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v16 = v9;
  v11 = IPC::Connection::sendMessageImpl(a1, &v16, a4, a5);
  v12 = v16;
  v16 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v10);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v11;
}

uint64_t WebKit::InjectedBundle::setAsynchronousSpellCheckingEnabled(WebKit::InjectedBundle *this, char a2)
{
  v3 = WTF::fastMalloc(0x10);
  *v3 = &unk_1F112B4B8;
  *(v3 + 8) = a2;
  v6 = v3;
  WebCore::Page::forEachPage();
  result = v6;
  if (v6)
  {
    v5 = *(*v6 + 8);

    return v5();
  }

  return result;
}

uint64_t WebKit::InjectedBundle::numberOfPages(WebKit::InjectedBundle *this, WebKit::WebFrame *a2, double a3, double a4, const WebCore::FloatSize *a5)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a2 + 5);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(v5 + 8);
  if (!v6 || (*(v6 + 136) & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a3;
  ++*(v6 + 16);
  if (a3 == 0.0)
  {
    v9 = *(v6 + 216);
    if (v9)
    {
      ++*(v9 + 2);
      WebCore::Widget::frameRect(v9);
      v8 = v10;
      if (*(v9 + 2) == 1)
      {
        (*(*v9 + 8))(v9);
      }

      else
      {
        --*(v9 + 2);
      }
    }

    else
    {
      WebCore::Widget::frameRect(0);
      v8 = v17;
    }
  }

  if (a4 == 0.0)
  {
    v11 = *(v6 + 216);
    if (v11)
    {
      ++*(v11 + 2);
      WebCore::Widget::frameRect(v11);
      a4 = v12;
      if (*(v11 + 2) == 1)
      {
        (*(*v11 + 8))(v11);
      }

      else
      {
        --*(v11 + 2);
      }
    }

    else
    {
      WebCore::Widget::frameRect(0);
      a4 = v18;
    }
  }

  v13 = v8;
  v14 = a4;
  *v19 = v13;
  *&v19[1] = v14;
  v15 = WebCore::PrintContext::numberOfPages(v6, v19, a5);
  if (*(v6 + 16) == 1)
  {
    (*(*v6 + 8))(v6);
  }

  else
  {
    --*(v6 + 16);
  }

  return v15;
}

uint64_t WebKit::InjectedBundle::pageNumberForElementById(WebKit::InjectedBundle *this, WebKit::WebFrame *a2, const WTF::String *a3, double a4, double a5)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a2 + 5);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(v5 + 8);
  if (!v6 || (*(v6 + 136) & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  ++*(v6 + 16);
  v9 = *(v6 + 224);
  if (v9)
  {
    v9[7] += 2;
    WebCore::TreeScope::getElementById(&v23, (v9 + 26), a3);
    if (v9[7] == 2)
    {
      WebCore::Node::removedLastRef(v9);
    }

    else
    {
      v9[7] -= 2;
    }
  }

  else
  {
    WebCore::TreeScope::getElementById(&v23, 0x68, a3);
  }

  if (v23)
  {
    if (a4 == 0.0)
    {
      v11 = *(v6 + 216);
      if (v11)
      {
        ++*(v11 + 2);
        WebCore::Widget::frameRect(v11);
        a4 = v12;
        if (*(v11 + 2) == 1)
        {
          (*(*v11 + 8))(v11);
        }

        else
        {
          --*(v11 + 2);
        }
      }

      else
      {
        WebCore::Widget::frameRect(0);
        a4 = v20;
      }
    }

    if (a5 == 0.0)
    {
      v13 = *(v6 + 216);
      if (v13)
      {
        ++*(v13 + 2);
        WebCore::Widget::frameRect(v13);
        a5 = v14;
        if (*(v13 + 2) == 1)
        {
          (*(*v13 + 8))(v13);
        }

        else
        {
          --*(v13 + 2);
        }
      }

      else
      {
        WebCore::Widget::frameRect(0);
        a5 = v21;
      }
    }

    v15 = a4;
    v16 = a5;
    *v22 = v15;
    *&v22[1] = v16;
    v17 = WebCore::PrintContext::pageNumberForElement(v23, v22, v10);
    v18 = v23;
    v23 = 0;
    if (v18)
    {
      if (*(v18 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v18);
      }

      else
      {
        *(v18 + 7) -= 2;
      }
    }
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  if (*(v6 + 16) == 1)
  {
    (*(*v6 + 8))(v6);
  }

  else
  {
    --*(v6 + 16);
  }

  return v17;
}

void WebKit::InjectedBundle::pageSizeAndMarginsInPixels(WebKit::WebFrame *a1@<X1>, WebCore::LocalFrame *a2@<X2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, void *a8@<X8>, int a9)
{
  if (a1 && (v10 = *(a1 + 5)) != 0 && (v11 = *(v10 + 8)) != 0 && *(v11 + 136) != 1)
  {
    ++*(v11 + 16);
    WebCore::PrintContext::pageSizeAndMarginsInPixels(v11, a2, a3, a4, a5, a6, a7, a9, v13);
    if (*(v11 + 16) == 1)
    {
      v12 = *(*v11 + 8);

      v12(v11);
    }

    else
    {
      --*(v11 + 16);
    }
  }

  else
  {
    *a8 = 0;
  }
}

uint64_t WebKit::InjectedBundle::isPageBoxVisible(WebKit::InjectedBundle *this, WebKit::WebFrame *a2, WebCore::LocalFrame *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a2 + 5);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8);
  if (!v4 || (*(v4 + 136) & 1) != 0)
  {
    return 0;
  }

  ++*(v4 + 16);
  isPageBoxVisible = WebCore::PrintContext::isPageBoxVisible(v4, a3);
  if (*(v4 + 16) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  else
  {
    --*(v4 + 16);
  }

  return isPageBoxVisible;
}

uint64_t WebKit::InjectedBundle::javaScriptObjectsCount(WebKit::InjectedBundle *this)
{
  v1 = MEMORY[0x1E69E25C0];
  if (!*MEMORY[0x1E69E25C0])
  {
    WebCore::commonVMSlow(this);
  }

  MEMORY[0x19EB002D0](v5);
  v2 = *v1;
  if (!*v1)
  {
    v2 = WebCore::commonVMSlow(0);
  }

  v3 = JSC::Heap::objectCount((v2 + 192));
  MEMORY[0x19EB002E0](v5);
  return v3;
}

uint64_t WebKit::InjectedBundle::reportException(uint64_t this, const OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  if (this)
  {
    if (a2)
    {
      JSC::JSLockHolder::JSLockHolder();
      WebCore::reportExceptionIfJSDOMWindow();
      return MEMORY[0x19EB002E0](v3);
    }
  }

  return this;
}

void WebKit::InjectedBundle::didReceiveMessageToPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 40);
  CFRetain(*(a1 + 8));
  (*(*v8 + 40))(v8, a1, a2, a3, a4);
  v9 = *(a1 + 8);

  CFRelease(v9);
}

uint64_t WebKit::InjectedBundle::setUserStyleSheetLocation(WebKit::InjectedBundle *this, atomic_uint **a2)
{
  v2 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  v3 = WTF::fastMalloc(0x10);
  *v3 = &unk_1F112B4E0;
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  v3[1] = v2;
  v6 = v3;
  WebCore::Page::forEachPage();
  result = v6;
  if (v6)
  {
    result = (*(*v6 + 8))(v6);
  }

  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(v2, v4);
  }

  return result;
}

WebKit::NotificationPermissionRequestManager *WebKit::InjectedBundle::removeAllWebNotificationPermissions(WebKit::InjectedBundle *this, WebKit::WebPage *a2)
{
  v2 = WebKit::WebPage::notificationPermissionRequestManager(a2);
  if (v2)
  {
    v4 = v2;
    ++*v2;
    WebKit::NotificationPermissionRequestManager::removeAllPermissionsForTesting(v2, v3);

    return WTF::RefCounted<WebKit::NotificationPermissionRequestManager>::deref(v4);
  }

  else
  {

    return WebKit::NotificationPermissionRequestManager::removeAllPermissionsForTesting(0, v3);
  }
}

_DWORD *WebKit::InjectedBundle::webNotificationID@<X0>(const OpaqueJSContext *a1@<X1>, JSValue a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 7);
  if (a2.super.isa)
  {
    isa = a2.super.isa;
  }

  else
  {
    isa = 2;
  }

  result = WebCore::JSNotification::toWrapped(v5, isa, a2);
  if (result)
  {
    v9 = result[8];
    v8 = result + 8;
    *v8 = v9 + 1;
    v10 = *(v8 + 5);
    *a3 = *(v8 + 4);
    *(a3 + 8) = v10;
    result = WTF::RefCounted<WebCore::Notification>::deref(v8);
    v11 = 1;
  }

  else
  {
    v11 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v11;
  return result;
}

uint64_t WebKit::InjectedBundle::createWebDataFromUint8Array@<X0>(const OpaqueJSValue *a1@<X2>, API::Object **a2@<X8>)
{
  JSC::JSLockHolder::JSLockHolder();
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = 2;
  }

  if ((v6 & 0xFFFE000000000002) == 0 && *(v6 + 5) == 40)
  {
    JSC::JSGenericTypedArrayView<JSC::Uint8Adaptor>::possiblySharedTypedImpl(v6, &v13);
    v7 = v13;
    if (!v13)
    {
      goto LABEL_13;
    }

    if (JSC::ArrayBufferView::isDetached(v13) || !*(*(v7 + 4) + 32))
    {
      v7 = v13;
      goto LABEL_13;
    }

    v8 = v13;
    v13 = 0;
    if (v8)
    {
      if (*v8 != 1)
      {
        v7 = 0;
        --*v8;
        goto LABEL_13;
      }

      JSC::ArrayBufferView::operator delete();
    }
  }

  v7 = 0;
LABEL_13:
  v9 = JSC::ArrayBufferView::baseAddress(v7);
  v10 = JSC::ArrayBufferView::byteLength(v7);
  API::Data::create(v10, v9, a2);
  if (v7)
  {
    if (*v7 == 1)
    {
      JSC::ArrayBufferView::operator delete();
    }

    else
    {
      --*v7;
    }
  }

  return MEMORY[0x19EB002E0](&v12);
}

WTF::StringImpl *WebKit::InjectedBundle::liveDocumentURLs@<X0>(WebKit::InjectedBundle *this@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  result = WebCore::Document::allDocuments(&v17, this);
  v6 = v18;
  v7 = v20;
  if (v18 != v20)
  {
    v8 = v19;
    do
    {
      v9 = v6[4];
      v10 = *(v9 + 8);
      if (!v10 || (v11 = *(v10 + 464), v21[0] = *(v10 + 448), v21[1] = v11, (v12 = *(v9 + 8)) == 0))
      {
        __break(0xC471u);
        JUMPOUT(0x19E2DCEE8);
      }

      result = WTF::HashMap<WTF::UUID,WTF::String,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String const&>(v21, a3, (v12 + 800), &v16);
      do
      {
        v6 += 6;
        if (v6 == v8)
        {
          break;
        }

        v13 = v6[2];
      }

      while (!(*v6 | v6[1] | v13) || v13 == -1);
    }

    while (v6 != v7);
  }

  if (a2)
  {
    v15 = WTF::fastMalloc(0x10);
    *v15 = &unk_1F112B508;
    *(v15 + 1) = a3;
    v17 = v15;
    WebCore::Page::forEachPage();
    result = v17;
    if (v17)
    {
      return (*(*v17 + 8))(v17);
    }
  }

  return result;
}

WTF::StringImpl *WTF::HashMap<WTF::UUID,WTF::String,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String const&>@<X0>(WTF::UUIDHash *this@<X1>, uint64_t *a2@<X0>, atomic_uint **a3@<X2>, uint64_t a4@<X8>)
{
  if (!(*this ^ 1 | *(this + 1)) || *this == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2DD100);
  }

  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::String>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::String,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  result = WTF::UUIDHash::hash(this, this);
  v12 = result & v9;
  v13 = (v8 + 32 * v12);
  v15 = *v13;
  v14 = *(v13 + 1);
  if (*v13 != 0)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (v14 == *(this + 1) && v15 == *this)
      {
        v22 = *a2;
        if (*a2)
        {
          v23 = *(v22 - 4);
        }

        else
        {
          v23 = 0;
        }

        v27 = 0;
        v26 = v22 + 32 * v23;
        goto LABEL_36;
      }

      if (!(v15 ^ 1 | v14))
      {
        v16 = v13;
      }

      v12 = (v12 + v17) & v9;
      v13 = (v8 + 32 * v12);
      v15 = *v13;
      v14 = *(v13 + 1);
      ++v17;
    }

    while (*v13 != 0);
    if (v16)
    {
      *v16 = 0;
      *(v16 + 1) = 0;
      *(v16 + 2) = 0;
      --*(*a2 - 16);
      v13 = v16;
    }
  }

  *v13 = *this;
  v19 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
  }

  result = *(v13 + 2);
  *(v13 + 2) = v19;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v11);
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
  v24 = (*(v20 - 16) + v21);
  v25 = *(v20 - 4);
  if (v25 > 0x400)
  {
    if (v25 <= 2 * v24)
    {
LABEL_29:
      result = WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::String>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::String,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(a2, v13);
      v13 = result;
      v20 = *a2;
      if (*a2)
      {
        v25 = *(v20 - 4);
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else if (3 * v25 <= 4 * v24)
  {
    goto LABEL_29;
  }

  v26 = v20 + 32 * v25;
  v27 = 1;
LABEL_36:
  *a4 = v13;
  *(a4 + 8) = v26;
  *(a4 + 16) = v27;
  return result;
}

uint64_t WebKit::InjectedBundleClient::InjectedBundleClient(uint64_t result, __int128 *a2)
{
  *(result + 8) = 0u;
  *(result + 56) = 0;
  *(result + 40) = 0u;
  *(result + 24) = 0u;
  *result = &unk_1F112B1B0;
  if (a2)
  {
    v2 = *a2;
    if (*a2 == 1)
    {
      v3 = *a2;
      v4 = a2[1];
      v5 = a2[2];
      *(result + 56) = *(a2 + 6);
LABEL_4:
      *(result + 24) = v4;
      *(result + 40) = v5;
      *(result + 8) = v3;
      return result;
    }

    if (v2 <= 0)
    {
      if (v2)
      {
        __break(1u);
        return result;
      }

      v3 = *a2;
      v4 = a2[1];
      v5 = a2[2];
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t WebKit::InjectedBundleClient::didCreatePage(uint64_t this, WebKit::InjectedBundle *a2, WebKit::WebPage *a3)
{
  v3 = *(this + 24);
  if (v3)
  {
    return v3(*(a2 + 1), *(a3 + 1), *(this + 16));
  }

  return this;
}

uint64_t WebKit::InjectedBundleClient::willDestroyPage(uint64_t this, WebKit::InjectedBundle *a2, WebKit::WebPage *a3)
{
  v3 = *(this + 32);
  if (v3)
  {
    return v3(*(a2 + 1), *(a3 + 1), *(this + 16));
  }

  return this;
}

void WebKit::InjectedBundleClient::didReceiveMessage(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t a4)
{
  v4 = *(a1 + 48);
  if (!v4)
  {
    return;
  }

  v7 = *(a2 + 8);
  v8 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v14 = v8;
  API::String::create(&v14, &v15);
  v10 = v14;
  v11 = v15;
  v14 = 0;
  v15 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_8;
  }

  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_7:
  v12 = *(v11 + 1);
LABEL_8:
  if (*a4)
  {
    v13 = *(*a4 + 8);
  }

  else
  {
    v13 = 0;
  }

  v4(v7, v12, v13, *(a1 + 16));
  if (v11)
  {
    CFRelease(*(v11 + 1));
  }
}

WTF::StringImpl *WebKit::toAPI(WebKit *this, atomic_uint *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(a2, 2u, memory_order_relaxed);
  }

  v5 = a2;
  API::String::create(&v5, &v6);
  result = v5;
  *this = v6;
  v5 = 0;
  v6 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v3);
    }
  }

  return result;
}

void WebKit::InjectedBundleClient::didReceiveMessageToPage(uint64_t a1, uint64_t a2, uint64_t a3, atomic_uint **a4, uint64_t a5)
{
  v5 = *(a1 + 56);
  if (!v5)
  {
    return;
  }

  v8 = *(a2 + 8);
  v9 = *(a3 + 8);
  v10 = *a4;
  if (*a4)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v16 = v10;
  API::String::create(&v16, &v17);
  v12 = v16;
  v13 = v17;
  v16 = 0;
  v17 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
    if (v13)
    {
      goto LABEL_7;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_8;
  }

  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_7:
  v14 = *(v13 + 1);
LABEL_8:
  if (*a5)
  {
    v15 = *(*a5 + 8);
  }

  else
  {
    v15 = 0;
  }

  v5(v8, v9, v14, v15, *(a1 + 16));
  if (v13)
  {
    CFRelease(*(v13 + 1));
  }
}

uint64_t WebKit::InjectedBundleDOMWindowExtension::get(uint64_t a1)
{
  {
    if (WebKit::allExtensions(void)::map)
    {
      v1 = *(WebKit::allExtensions(void)::map - 8);
      v2 = (~(a1 << 32) + a1) ^ ((~(a1 << 32) + a1) >> 22);
      v3 = 9 * ((v2 + ~(v2 << 13)) ^ ((v2 + ~(v2 << 13)) >> 8));
      v4 = (v3 ^ (v3 >> 15)) + ~((v3 ^ (v3 >> 15)) << 27);
      v5 = v1 & ((v4 >> 31) ^ v4);
      for (i = 1; ; ++i)
      {
        v7 = v5;
        v8 = *(WebKit::allExtensions(void)::map + 16 * v5);
        if (v8 != -1)
        {
          if (!v8)
          {
            return 0;
          }

          v9 = *(v8 + 8);
          if (!v9)
          {
            result = 92;
            __break(0xC471u);
            return result;
          }

          if (v9 == a1)
          {
            break;
          }
        }

        v5 = (v7 + i) & v1;
      }

      v10 = *(WebKit::allExtensions(void)::map + 16 * v7 + 8);
      if (!v10)
      {
        return 0;
      }

      return *(v10 + 8);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    WebKit::allExtensions(void)::map = 0;
  }

  return result;
}

WebKit::InjectedBundleDOMWindowExtension *WebKit::InjectedBundleDOMWindowExtension::InjectedBundleDOMWindowExtension(WebKit::InjectedBundleDOMWindowExtension *this, WebKit::WebFrame *a2, WebKit::InjectedBundleScriptWorld *a3)
{
  v6 = API::Object::Object(this);
  *(v6 + 2) = 0;
  *v6 = &unk_1F112B1F0;
  v7 = *(a2 + 5);
  if (v7 && (v8 = *(v7 + 8)) != 0 && (*(v8 + 136) & 1) == 0)
  {
    v9 = WebCore::LocalFrame::window(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a3 + 3);
  v11 = WTF::fastMalloc(0x38);
  *(this + 3) = WebCore::DOMWindowExtension::DOMWindowExtension(v11, v9, v10);
  *(this + 4) = 0;
  {
    WebKit::allExtensions(void)::map = 0;
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v11 + 2, v11);
  v12 = *(v11 + 1);
  atomic_fetch_add(v12, 1u);
  v17 = v12;
  WTF::HashMap<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::InjectedBundleDOMWindowExtension&>(&WebKit::allExtensions(void)::map, &v17, this, &v16);
  v14 = v17;
  v17 = 0;
  if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    WTF::fastFree(v14, v13);
  }

  return this;
}

uint64_t WTF::HashMap<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::InjectedBundleDOMWindowExtension&>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2DD88CLL);
  }

  if (!*a2)
  {
LABEL_47:
    __break(0xC471u);
    JUMPOUT(0x19E2DD84CLL);
  }

  v8 = *a1;
  if (*a1 || (WTF::HashTable<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  result = WTF::PtrHashBase<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,true>::hash(*(*a2 + 8));
  v12 = 0;
  v13 = *a2;
  for (i = 1; ; ++i)
  {
    v15 = result & v9;
    v16 = (v8 + 16 * (result & v9));
    v17 = *v16;
    if (*v16 == -1)
    {
      v12 = (v8 + 16 * v15);
      goto LABEL_14;
    }

    if (!v17)
    {
      if (v12)
      {
        *v12 = 0;
        v12[1] = 0;
        --*(*a1 - 16);
        v13 = *a2;
        v16 = v12;
      }

      *a2 = 0;
      v20 = *v16;
      *v16 = v13;
      if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v20);
        WTF::fastFree(v20, v11);
      }

      if (!*(a3 + 16))
      {
        v21 = WTF::fastCompactMalloc(0x10);
        *v21 = 1;
        *(v21 + 8) = a3;
        v22 = *(a3 + 16);
        *(a3 + 16) = v21;
        if (v22)
        {
          if (atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v22);
            WTF::fastFree(v22, v11);
          }
        }
      }

      v23 = *(a3 + 16);
      atomic_fetch_add(v23, 1u);
      result = v16[1];
      v16[1] = v23;
      if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        result = WTF::fastFree(result, v11);
      }

      v24 = *a1;
      if (*a1)
      {
        v25 = *(v24 - 12) + 1;
      }

      else
      {
        v25 = 1;
      }

      *(v24 - 12) = v25;
      v28 = (*(v24 - 16) + v25);
      v29 = *(v24 - 4);
      if (v29 > 0x400)
      {
        if (v29 <= 2 * v28)
        {
LABEL_30:
          result = WTF::HashTable<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::expand(a1, v16);
          v16 = result;
          v24 = *a1;
          if (*a1)
          {
            v29 = *(v24 - 4);
          }

          else
          {
            v29 = 0;
          }
        }
      }

      else if (3 * v29 <= 4 * v28)
      {
        goto LABEL_30;
      }

      v31 = v24 + 16 * v29;
      v30 = 1;
      goto LABEL_37;
    }

    v18 = *(v17 + 1);
    if (!v18)
    {
      goto LABEL_47;
    }

    v19 = *(v13 + 8);
    if (!v19)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2DD86CLL);
    }

    if (v19 == v18)
    {
      break;
    }

LABEL_14:
    result = i + v15;
  }

  v26 = *a1;
  if (*a1)
  {
    v27 = *(v26 - 4);
  }

  else
  {
    v27 = 0;
  }

  v30 = 0;
  v31 = v26 + 16 * v27;
LABEL_37:
  *a4 = v16;
  *(a4 + 8) = v31;
  *(a4 + 16) = v30;
  return result;
}

void WebKit::InjectedBundleDOMWindowExtension::~InjectedBundleDOMWindowExtension(WebKit::InjectedBundleDOMWindowExtension *this, void *a2)
{
  *this = &unk_1F112B1F0;
  {
    v4 = (this + 24);
    v3 = *(this + 3);
    if (WebKit::allExtensions(void)::map)
    {
      v5 = *(WebKit::allExtensions(void)::map - 8);
      v6 = (~(v3 << 32) + v3) ^ ((~(v3 << 32) + v3) >> 22);
      v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
      v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
      v9 = v5 & ((v8 >> 31) ^ v8);
      for (i = 1; ; ++i)
      {
        v11 = v9;
        v12 = *(WebKit::allExtensions(void)::map + 16 * v9);
        if (v12 != -1)
        {
          if (!v12)
          {
            goto LABEL_18;
          }

          v13 = *(v12 + 8);
          if (!v13)
          {
            __break(0xC471u);
            return;
          }

          if (v13 == v3)
          {
            break;
          }
        }

        v9 = (v11 + i) & v5;
      }

      if (v11 != *(WebKit::allExtensions(void)::map - 4))
      {
        v14 = (WebKit::allExtensions(void)::map + 16 * v11);
        *v14 = 0;
        if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v12);
          WTF::fastFree(v12, a2);
        }

        v15 = v14[1];
        *v14 = -1;
        v14[1] = 0;
        if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v15);
          WTF::fastFree(v15, a2);
        }

        v16 = WebKit::allExtensions(void)::map;
        v17 = vadd_s32(*(WebKit::allExtensions(void)::map - 16), 0xFFFFFFFF00000001);
        *(WebKit::allExtensions(void)::map - 16) = v17;
        v18 = *(v16 - 4);
        if (6 * v17.i32[1] < v18 && v18 >= 9)
        {
          WTF::HashTable<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebKit::InjectedBundleDOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWindowExtension,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::rehash(&WebKit::allExtensions(void)::map, v18 >> 1, 0);
        }
      }
    }
  }

  else
  {
    WebKit::allExtensions(void)::map = 0;
    v4 = (this + 24);
  }

LABEL_18:
  v20 = *(this + 4);
  *(this + 4) = 0;
  if (v20)
  {
    CFRelease(*(v20 + 8));
  }

  v21 = *v4;
  *v4 = 0;
  if (v21)
  {
    if (*(v21 + 16) == 1)
    {
      v24 = MEMORY[0x19EB078F0]();
      WTF::fastFree(v24, v25);
    }

    else
    {
      --*(v21 + 16);
    }
  }

  v22 = *(this + 2);
  if (v22)
  {
    *(v22 + 8) = 0;
    v23 = *(this + 2);
    *(this + 2) = 0;
    if (v23)
    {
      if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v23);
        WTF::fastFree(v23, a2);
      }
    }
  }
}

{
  WebKit::InjectedBundleDOMWindowExtension::~InjectedBundleDOMWindowExtension(this, a2);

  JUMPOUT(0x19EB14CF0);
}

uint64_t WebKit::InjectedBundleDOMWindowExtension::frame@<X0>(WebCore::DOMWindowExtension **this@<X0>, void *a2@<X8>)
{
  result = WebCore::DOMWindowExtension::frame(this[3]);
  if (result)
  {

    return WebKit::WebFrame::fromCoreFrame(result, a2);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t WebKit::InjectedBundleDOMWindowExtension::world(WebKit::InjectedBundleDOMWindowExtension *this)
{
  result = *(this + 4);
  if (!result)
  {
    WebKit::InjectedBundleScriptWorld::getOrCreate(*(*(this + 3) + 32), &v6);
    v3 = v6;
    v6 = 0;
    v4 = *(this + 4);
    *(this + 4) = v3;
    if (v4)
    {
      CFRelease(*(v4 + 8));
      v5 = v6;
      v6 = 0;
      if (v5)
      {
        CFRelease(*(v5 + 1));
      }
    }

    return *(this + 4);
  }

  return result;
}

uint64_t WebKit::InjectedBundleHitTestResult::create@<X0>(WebKit::InjectedBundleHitTestResult *this@<X0>, API::Object **a2@<X8>)
{
  v5 = API::Object::newObject(0x98uLL, 139);
  v6 = API::Object::Object(v5);
  *v6 = &unk_1F112B490;
  result = MEMORY[0x19EB04BC0](v6 + 16, this);
  *a2 = v5;
  return result;
}

uint64_t WebKit::InjectedBundleHitTestResult::frame@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 96);
  if (v2)
  {
    v3 = *(*(*(v2 + 48) + 8) + 552);
    if (v3)
    {
      this = *(v3 + 8);
      if (this)
      {
        return WebKit::WebFrame::fromCoreFrame(this, a2);
      }
    }
  }

  *a2 = 0;
  return this;
}

uint64_t WebKit::InjectedBundleHitTestResult::targetFrame@<X0>(WebKit::InjectedBundleHitTestResult *this@<X0>, void *a2@<X8>)
{
  result = WebCore::HitTestResult::targetFrame((this + 16));
  if (result)
  {

    return WebKit::WebFrame::fromCoreFrame(result, a2);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

WTF::StringImpl *WebKit::InjectedBundleHitTestResult::absoluteImageURL@<X0>(WebKit::InjectedBundleHitTestResult *this@<X0>, WTF::StringImpl **a2@<X8>)
{
  result = WebCore::HitTestResult::absoluteImageURL(&v6, (this + 16));
  v5 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    result = v6;
    *a2 = v5;
    v6 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v4);
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

WTF::StringImpl *WebKit::InjectedBundleHitTestResult::absolutePDFURL@<X0>(WebKit::InjectedBundleHitTestResult *this@<X0>, WTF::StringImpl **a2@<X8>)
{
  result = WebCore::HitTestResult::absolutePDFURL(&v6, (this + 16));
  v5 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    result = v6;
    *a2 = v5;
    v6 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v4);
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

WTF::StringImpl *WebKit::InjectedBundleHitTestResult::absoluteLinkURL@<X0>(WebKit::InjectedBundleHitTestResult *this@<X0>, WTF::StringImpl **a2@<X8>)
{
  result = WebCore::HitTestResult::absoluteLinkURL(&v6, (this + 16));
  v5 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    result = v6;
    *a2 = v5;
    v6 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v4);
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

WTF::StringImpl *WebKit::InjectedBundleHitTestResult::absoluteMediaURL@<X0>(WebKit::InjectedBundleHitTestResult *this@<X0>, WTF::StringImpl **a2@<X8>)
{
  result = WebCore::HitTestResult::absoluteMediaURL(&v6, (this + 16));
  v5 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    result = v6;
    *a2 = v5;
    v6 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v4);
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t WebKit::InjectedBundleHitTestResult::mediaType(WebKit::InjectedBundleHitTestResult *this)
{
  result = *(this + 12);
  if (result)
  {
    if ((*(result + 32) & 8) != 0)
    {
      result = (*(*result + 824))(result);
      if (result)
      {
        if (WebCore::HitTestResult::mediaIsVideo((this + 16)))
        {
          return 2;
        }

        else
        {
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::InjectedBundleHitTestResult::imageRect(WebKit::InjectedBundleHitTestResult *this)
{
  v3 = WebCore::HitTestResult::imageRect((this + 16));
  v11[0] = v3;
  v11[1] = v2;
  if (v2 >= 1 && SHIDWORD(v2) >= 1)
  {
    WebKit::InjectedBundleHitTestResult::frame(this, &v10);
    v5 = v10;
    if (v10)
    {
      v6 = *(v10 + 40);
      if (v6)
      {
        v7 = *(v6 + 8);
        if (v7)
        {
          if ((*(v7 + 136) & 1) == 0)
          {
            v8 = *(v7 + 216);
            if (v8)
            {
              v3 = WebCore::ScrollView::contentsToRootView(v8, v11);
            }
          }
        }
      }

      CFRelease(*(v5 + 8));
    }
  }

  return v3;
}

void WebKit::InjectedBundleHitTestResult::image(WebKit::InjectedBundleHitTestResult *this@<X0>, WebKit::WebImage **a2@<X8>)
{
  v3 = WebCore::HitTestResult::image((this + 16));
  if (v3 && (v4 = v3, ((*(*v3 + 16))(v3) & 1) != 0))
  {
    v5 = (*(**(v4 + 64) + 176))(*(v4 + 64), 0);
    *v9 = v5;
    *(v9 + 1) = SHIDWORD(v5);
    v6 = WebCore::IntSize::IntSize(&v11, v9);
    v7 = WebCore::DestinationColorSpace::SRGB(v6);
    WebKit::WebImage::create(v7, &v11, 0, 0, &v10);
    if (WebKit::WebImage::context(v10))
    {
      WebKit::WebImage::context(v10);
      v9[0] = 0;
      v9[1] = vcvt_f32_s32(v11);
      WebCore::GraphicsContext::drawImage();
      *a2 = v10;
    }

    else
    {
      *a2 = 0;
      v8 = v10;
      v10 = 0;
      if (v8)
      {
        CFRelease(*(v8 + 1));
      }
    }
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t WebKit::InjectedBundlePageEditorClient::shouldBeginEditing(WebKit::InjectedBundlePageEditorClient *this, WebKit::WebPage *a2, WebCore::Node **a3)
{
  v3 = *(this + 3);
  v4 = 1;
  if (v3)
  {
    v6 = *(a2 + 1);
    v7 = *a3;
    *(v7 + 7) = *(*a3 + 7) + 2;
    v11 = v7;
    v8 = a3[2];
    *(v8 + 7) += 2;
    v12 = v8;
    WebKit::createHandle(&v13);
    v9 = v13;
    if (v13)
    {
      v4 = v3(v6, *(v13 + 8), *(this + 2));
      CFRelease(*(v9 + 8));
    }

    else
    {
      v4 = v3(v6, 0, *(this + 2));
    }

    if (v12)
    {
      if (*(v12 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v12);
      }

      else
      {
        *(v12 + 7) -= 2;
      }
    }

    if (v11)
    {
      if (*(v11 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v11);
      }

      else
      {
        *(v11 + 7) -= 2;
      }
    }
  }

  return v4;
}

uint64_t WebKit::InjectedBundlePageEditorClient::shouldEndEditing(WebKit::InjectedBundlePageEditorClient *this, WebKit::WebPage *a2, WebCore::Node **a3)
{
  v3 = *(this + 4);
  v4 = 1;
  if (v3)
  {
    v6 = *(a2 + 1);
    v7 = *a3;
    *(v7 + 7) = *(*a3 + 7) + 2;
    v11 = v7;
    v8 = a3[2];
    *(v8 + 7) += 2;
    v12 = v8;
    WebKit::createHandle(&v13);
    v9 = v13;
    if (v13)
    {
      v4 = v3(v6, *(v13 + 8), *(this + 2));
      CFRelease(*(v9 + 8));
    }

    else
    {
      v4 = v3(v6, 0, *(this + 2));
    }

    if (v12)
    {
      if (*(v12 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v12);
      }

      else
      {
        *(v12 + 7) -= 2;
      }
    }

    if (v11)
    {
      if (*(v11 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v11);
      }

      else
      {
        *(v11 + 7) -= 2;
      }
    }
  }

  return v4;
}

uint64_t WebKit::InjectedBundlePageEditorClient::shouldInsertNode(uint64_t a1, uint64_t a2, WebKit::InjectedBundleNodeHandle *this, uint64_t a4, int a5)
{
  if (!*(a1 + 40))
  {
    return 1;
  }

  WebKit::InjectedBundleNodeHandle::getOrCreate(this, &v17);
  v8 = v17;
  v9 = *(a1 + 40);
  v10 = *(a2 + 8);
  if (v17)
  {
    v11 = *(v17 + 1);
  }

  else
  {
    v11 = 0;
  }

  WebKit::createHandle(&v17);
  v12 = v17;
  if (v17)
  {
    v13 = *(v17 + 1);
  }

  else
  {
    v13 = 0;
  }

  if (a5 == 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = a5 == 1;
  }

  v15 = v9(v10, v11, v13, v14, *(a1 + 16));
  if (v12)
  {
    CFRelease(*(v12 + 1));
  }

  if (v8)
  {
    CFRelease(*(v8 + 1));
  }

  return v15;
}

uint64_t WebKit::InjectedBundlePageEditorClient::shouldInsertText(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t a4, int a5)
{
  v5 = *(a1 + 48);
  if (!v5)
  {
    return 1;
  }

  v8 = *(a2 + 8);
  v9 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v19 = v9;
  API::String::create(&v19, &v20);
  v11 = v19;
  v12 = v20;
  v19 = 0;
  v20 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_20:
    v13 = 0;
    goto LABEL_8;
  }

  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_7:
  v13 = *(v12 + 1);
LABEL_8:
  WebKit::createHandle(&v20);
  v14 = v20;
  if (v20)
  {
    v15 = *(v20 + 1);
  }

  else
  {
    v15 = 0;
  }

  if (a5 == 2)
  {
    v16 = 2;
  }

  else
  {
    v16 = a5 == 1;
  }

  v17 = v5(v8, v13, v15, v16, *(a1 + 16));
  if (v14)
  {
    CFRelease(*(v14 + 1));
  }

  if (v12)
  {
    CFRelease(*(v12 + 1));
  }

  return v17;
}

uint64_t WebKit::InjectedBundlePageEditorClient::shouldDeleteRange(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return 1;
  }

  v4 = *(a2 + 8);
  WebKit::createHandle(&v8);
  v5 = v8;
  if (!v8)
  {
    return v2(v4, 0, *(a1 + 16));
  }

  v6 = v2(v4, *(v8 + 8), *(a1 + 16));
  CFRelease(*(v5 + 8));
  return v6;
}

uint64_t WebKit::InjectedBundlePageEditorClient::shouldChangeSelectedRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 64);
  if (!v6)
  {
    return 1;
  }

  v10 = *(a2 + 8);
  WebKit::createHandle(&v18);
  v11 = v18;
  if (v18)
  {
    v12 = *(v18 + 8);
  }

  else
  {
    v12 = 0;
  }

  WebKit::createHandle(&v17);
  v13 = v17;
  if (v17)
  {
    v14 = *(v17 + 8);
  }

  else
  {
    v14 = 0;
  }

  v15 = v6(v10, v12, v14, a5, a6, *(a1 + 16));
  if (v13)
  {
    CFRelease(*(v13 + 8));
  }

  if (v11)
  {
    CFRelease(*(v11 + 8));
  }

  return v15;
}

uint64_t WebKit::InjectedBundlePageEditorClient::shouldApplyStyle(uint64_t a1, uint64_t a2, WebCore::StyleProperties *this)
{
  v3 = *(a1 + 72);
  if (!v3)
  {
    return 1;
  }

  v5 = *(a2 + 8);
  WebCore::StyleProperties::mutableCopy(&v16, this);
  v6 = WebCore::MutableStyleProperties::ensureCSSStyleProperties(v16);
  (**v6)();
  WebKit::InjectedBundleCSSStyleDeclarationHandle::getOrCreate(v6, &v15);
  (*(*v6 + 8))(v6);
  v7 = v16;
  v16 = 0;
  if (v7)
  {
    if (*v7 == 1)
    {
      WebCore::MutableStyleProperties::~MutableStyleProperties(v7);
      WTF::fastFree(v13, v14);
    }

    else
    {
      --*v7;
    }
  }

  if (v15)
  {
    v8 = *(v15 + 8);
  }

  else
  {
    v8 = 0;
  }

  WebKit::createHandle(&v16);
  v9 = v16;
  if (v16)
  {
    v10 = v3(v5, v8, *(v16 + 1), *(a1 + 16));
    CFRelease(*(v9 + 1));
  }

  else
  {
    v10 = v3(v5, v8, 0, *(a1 + 16));
  }

  v11 = v15;
  v15 = 0;
  if (v11)
  {
    CFRelease(*(v11 + 8));
  }

  return v10;
}

void WebKit::InjectedBundlePageEditorClient::didBeginEditing(WebKit::InjectedBundlePageEditorClient *this, WebKit::WebPage *a2, atomic_uint **a3)
{
  v3 = *(this + 10);
  if (v3)
  {
    v5 = *(a2 + 1);
    v6 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v10 = v6;
    API::String::create(&v10, &v11);
    v8 = v10;
    v9 = v11;
    v10 = 0;
    v11 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
      if (v9)
      {
        goto LABEL_7;
      }
    }

    else if (v9)
    {
LABEL_7:
      v3(v5, *(v9 + 1), *(this + 2));
      CFRelease(*(v9 + 1));
      return;
    }

    v3(v5, 0, *(this + 2));
  }
}

void WebKit::InjectedBundlePageEditorClient::didEndEditing(WebKit::InjectedBundlePageEditorClient *this, WebKit::WebPage *a2, atomic_uint **a3)
{
  v3 = *(this + 11);
  if (v3)
  {
    v5 = *(a2 + 1);
    v6 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v10 = v6;
    API::String::create(&v10, &v11);
    v8 = v10;
    v9 = v11;
    v10 = 0;
    v11 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
      if (v9)
      {
        goto LABEL_7;
      }
    }

    else if (v9)
    {
LABEL_7:
      v3(v5, *(v9 + 1), *(this + 2));
      CFRelease(*(v9 + 1));
      return;
    }

    v3(v5, 0, *(this + 2));
  }
}

void WebKit::InjectedBundlePageEditorClient::didChange(WebKit::InjectedBundlePageEditorClient *this, WebKit::WebPage *a2, atomic_uint **a3)
{
  v3 = *(this + 12);
  if (v3)
  {
    v5 = *(a2 + 1);
    v6 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v10 = v6;
    API::String::create(&v10, &v11);
    v8 = v10;
    v9 = v11;
    v10 = 0;
    v11 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
      if (v9)
      {
        goto LABEL_7;
      }
    }

    else if (v9)
    {
LABEL_7:
      v3(v5, *(v9 + 1), *(this + 2));
      CFRelease(*(v9 + 1));
      return;
    }

    v3(v5, 0, *(this + 2));
  }
}

void WebKit::InjectedBundlePageEditorClient::didChangeSelection(WebKit::InjectedBundlePageEditorClient *this, WebKit::WebPage *a2, atomic_uint **a3)
{
  v3 = *(this + 13);
  if (v3)
  {
    v5 = *(a2 + 1);
    v6 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v10 = v6;
    API::String::create(&v10, &v11);
    v8 = v10;
    v9 = v11;
    v10 = 0;
    v11 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
      if (v9)
      {
        goto LABEL_7;
      }
    }

    else if (v9)
    {
LABEL_7:
      v3(v5, *(v9 + 1), *(this + 2));
      CFRelease(*(v9 + 1));
      return;
    }

    v3(v5, 0, *(this + 2));
  }
}

void WebKit::InjectedBundlePageEditorClient::willWriteToPasteboard(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    v4 = *(a2 + 8);
    WebKit::createHandle(&v6);
    v5 = v6;
    if (v6)
    {
      v2(v4, *(v6 + 8), *(a1 + 16));
      CFRelease(*(v5 + 8));
    }

    else
    {
      v2(v4, 0, *(a1 + 16));
    }
  }
}

void WebKit::InjectedBundlePageEditorClient::getPasteboardDataForRange(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 120);
  if (!v5)
  {
    return;
  }

  v47 = 0;
  v48 = 0;
  v9 = *(a2 + 8);
  WebKit::createHandle(&v49);
  v10 = v49;
  if (v49)
  {
    v5(v9, *(v49 + 8), &v48, &v47, *(a1 + 16));
    CFRelease(*(v10 + 8));
  }

  else
  {
    v5(v9, 0, &v48, &v47, *(a1 + 16));
  }

  v11 = WebKit::toImpl<OpaqueWKArray const*,API::Array>(v48);
  v12 = WebKit::toImpl<OpaqueWKArray const*,API::Array>(v47);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a4, 0);
  if (*(a5 + 8))
  {
    v14 = *(a5 + 12);
    if (v14)
    {
      WTF::VectorDestructor<true,WebCore::SharedBufferBuilder>::destruct(*a5, (*a5 + 8 * v14));
      *(a5 + 12) = 0;
    }

    v15 = *a5;
    if (*a5)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      WTF::fastFree(v15, v13);
    }
  }

  if (!v11)
  {
LABEL_59:
    if (!v12)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  if (!v12)
  {
LABEL_62:
    CFRelease(*(v11 + 8));
    return;
  }

  API::Array::elementsOfType<API::String>(v11, &v49);
  v16 = v50;
  v17 = v52;
  if (v50 != v52)
  {
    v18 = v51;
    do
    {
      WTF::downcast<API::String,API::Object>(*v16);
      WTF::String::isolatedCopy();
      v20 = a4[3];
      if (v20 == a4[2])
      {
        v26 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a4, v20 + 1, &v46);
        v20 = a4[3];
        v21 = *a4;
        v22 = *v26;
        *v26 = 0;
      }

      else
      {
        v21 = *a4;
        v22 = v46;
        v46 = 0;
      }

      *(v21 + 8 * v20) = v22;
      a4[3] = v20 + 1;
      v23 = v46;
      v46 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v19);
      }

      v24 = v16 + 1;
      while (1)
      {
        if (v24 - 1 == v18)
        {
          v16 = v24 - 1;
          goto LABEL_25;
        }

        if (v24 == v18)
        {
          break;
        }

        ++v16;
        v25 = *v24++;
        if ((*(*v25 + 16))(v25) == 20)
        {
          goto LABEL_25;
        }
      }

      v16 = v24;
LABEL_25:
      ;
    }

    while (v16 != v17);
  }

  v27 = *(v12 + 16);
  v28 = *(v12 + 28);
  v29 = &v27[v28];
  if (v28)
  {
    v30 = 8 * v28;
    while ((*(**v27 + 16))() != 8)
    {
      ++v27;
      v30 -= 8;
      if (!v30)
      {
        v27 = v29;
        break;
      }
    }

    v31 = v27;
    v27 = *(v12 + 16);
    v32 = *(v12 + 28);
  }

  else
  {
    v32 = 0;
    v31 = *(v12 + 16);
  }

  v33 = &v27[v32];
  if (v31 == v33)
  {
LABEL_60:
    CFRelease(*(v12 + 8));
LABEL_61:
    if (!v11)
    {
      return;
    }

    goto LABEL_62;
  }

  while (1)
  {
    v34 = *v31;
    if (*v31)
    {
      if ((*(*v34 + 16))(*v31) != 8)
      {
        break;
      }
    }

    v49 = v34[1];
    WebCore::SharedBuffer::create<std::span<unsigned char const,18446744073709551615ul>>(&v46);
    v35 = *(a5 + 12);
    if (v35 == *(a5 + 8))
    {
      if (v35 + (v35 >> 1) <= v35 + 1)
      {
        v36 = v35 + 1;
      }

      else
      {
        v36 = v35 + (v35 >> 1);
      }

      if (v36 <= 0x10)
      {
        v37 = 16;
      }

      else
      {
        v37 = v36;
      }

      WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a5, v37);
      v35 = *(a5 + 12);
      v38 = *a5;
      v39 = v46;
      v46 = 0;
      *&v38[2 * v35] = v39;
    }

    else
    {
      v40 = *a5;
      v41 = v46;
      v46 = 0;
      *&v40[2 * v35] = v41;
    }

    *(a5 + 12) = v35 + 1;
    v42 = v46;
    v46 = 0;
    if (v42 && atomic_fetch_add(v42 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v42 + 2);
      (*(*v42 + 8))(v42);
    }

    v43 = v31 + 1;
    while (v43 - 1 != v29 && v43 != v29)
    {
      v45 = *v43++;
      if ((*(*v45 + 16))(v45) == 8)
      {
        v31 = v43 - 1;
        goto LABEL_58;
      }
    }

    v31 = v29;
LABEL_58:
    if (v31 == v33)
    {
      goto LABEL_59;
    }
  }

  __break(0xC471u);
}

uint64_t WebKit::InjectedBundlePageEditorClient::performTwoStepDrop(uint64_t a1, uint64_t a2, WebKit::InjectedBundleNodeHandle *this, uint64_t a4, uint64_t a5)
{
  if (!*(a1 + 136))
  {
    return 0;
  }

  WebKit::InjectedBundleNodeHandle::getOrCreate(this, &v20);
  v9 = v20;
  v10 = *(a1 + 136);
  v11 = *(a2 + 8);
  if (v20)
  {
    v12 = *(v20 + 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = *a4;
  *(v13 + 7) = *(*a4 + 28) + 2;
  v20 = v13;
  v21 = *(a4 + 8);
  v14 = *(a4 + 16);
  *(v14 + 7) += 2;
  v22 = v14;
  v23 = *(a4 + 24);
  v24 = 1;
  WebKit::createHandle(&v25);
  v15 = v25;
  if (v25)
  {
    v16 = v10(v11, v12, *(v25 + 8), a5, *(a1 + 16));
    CFRelease(*(v15 + 8));
  }

  else
  {
    v16 = v10(v11, v12, 0, a5, *(a1 + 16));
  }

  if (v24 == 1)
  {
    v17 = v22;
    v22 = 0;
    if (v17)
    {
      if (*(v17 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v17);
      }

      else
      {
        *(v17 + 7) -= 2;
      }
    }

    v18 = v20;
    v20 = 0;
    if (v18)
    {
      if (*(v18 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v18);
        if (!v9)
        {
          return v16;
        }

        goto LABEL_14;
      }

      *(v18 + 7) -= 2;
    }
  }

  if (v9)
  {
LABEL_14:
    CFRelease(*(v9 + 1));
  }

  return v16;
}

uint64_t WebKit::InjectedBundlePageEditorClient::didWriteToPasteboard(uint64_t this, WebKit::WebPage *a2)
{
  v2 = *(this + 128);
  if (v2)
  {
    return v2(*(a2 + 1), *(this + 16));
  }

  return this;
}

_OWORD *WebKit::InjectedBundlePageFormClient::InjectedBundlePageFormClient(uint64_t a1, unsigned int *a2)
{
  *(a1 + 8) = 0u;
  result = (a1 + 8);
  *(a1 + 104) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = &unk_1F112B2B0;
  if (!a2)
  {
    return a1;
  }

  v4 = *a2;
  if (v4 == 3)
  {
    v5 = *a2;
    v6 = *(a2 + 2);
    result[1] = *(a2 + 1);
    result[2] = v6;
    *result = v5;
    v7 = *(a2 + 3);
    v8 = *(a2 + 4);
    v9 = *(a2 + 5);
    *(result + 12) = *(a2 + 12);
    result[4] = v8;
    result[5] = v9;
    result[3] = v7;
    return a1;
  }

  if (v4 > 2)
  {
    return a1;
  }

  if (v4 < 4)
  {
    memcpy(result, a2, constinit_2[v4]);
    return a1;
  }

  __break(1u);
  return result;
}

void WebKit::InjectedBundlePageFormClient::didFocusTextField(WebKit::InjectedBundlePageFormClient *this, WebKit::WebPage *a2, WebCore::HTMLInputElement *a3, WebKit::WebFrame *a4)
{
  if (*(this + 10))
  {
    WebKit::InjectedBundleNodeHandle::getOrCreate(a3, &v11);
    if (a2)
    {
      v7 = *(a2 + 1);
    }

    else
    {
      v7 = 0;
    }

    v8 = v11;
    if (v11)
    {
      v9 = *(v11 + 1);
      if (a4)
      {
LABEL_6:
        v10 = *(a4 + 1);
        goto LABEL_7;
      }
    }

    else
    {
      v9 = 0;
      if (a4)
      {
        goto LABEL_6;
      }
    }

    v10 = 0;
LABEL_7:
    (*(this + 10))(v7, v9, v10, *(this + 2));
    if (v8)
    {
      CFRelease(*(v8 + 1));
    }
  }
}

void WebKit::InjectedBundlePageFormClient::textFieldDidBeginEditing(WebKit::InjectedBundlePageFormClient *this, WebKit::WebPage *a2, WebCore::HTMLInputElement *a3, WebKit::WebFrame *a4)
{
  if (!*(this + 3))
  {
    return;
  }

  WebKit::InjectedBundleNodeHandle::getOrCreate(a3, &v12);
  v7 = v12;
  if (a2)
  {
    v8 = *(a2 + 1);
  }

  else
  {
    v8 = 0;
  }

  if (v12)
  {
    v9 = *(v12 + 1);
    if (a4)
    {
LABEL_6:
      v10 = *(a4 + 1);
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_7:
  (*(this + 3))(v8, v9, v10, *(this + 2));
  if (v7)
  {
    v11 = *(v7 + 1);

    CFRelease(v11);
  }
}

void WebKit::InjectedBundlePageFormClient::textFieldDidEndEditing(WebKit::InjectedBundlePageFormClient *this, WebKit::WebPage *a2, WebCore::HTMLInputElement *a3, WebKit::WebFrame *a4)
{
  if (!*(this + 4))
  {
    return;
  }

  WebKit::InjectedBundleNodeHandle::getOrCreate(a3, &v12);
  v7 = v12;
  if (a2)
  {
    v8 = *(a2 + 1);
  }

  else
  {
    v8 = 0;
  }

  if (v12)
  {
    v9 = *(v12 + 1);
    if (a4)
    {
LABEL_6:
      v10 = *(a4 + 1);
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_7:
  (*(this + 4))(v8, v9, v10, *(this + 2));
  if (v7)
  {
    v11 = *(v7 + 1);

    CFRelease(v11);
  }
}

void WebKit::InjectedBundlePageFormClient::textDidChangeInTextField(WebKit::InjectedBundlePageFormClient *this, WebKit::WebPage *a2, WebCore::HTMLInputElement *a3, WebKit::WebFrame *a4, int a5)
{
  if (*(this + 5))
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return;
  }

  WebKit::InjectedBundleNodeHandle::getOrCreate(a3, &v14);
  v9 = v14;
  if (a2)
  {
    v10 = *(a2 + 1);
  }

  else
  {
    v10 = 0;
  }

  if (v14)
  {
    v11 = *(v14 + 1);
    if (a4)
    {
LABEL_9:
      v12 = *(a4 + 1);
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_9;
    }
  }

  v12 = 0;
LABEL_10:
  (*(this + 5))(v10, v11, v12, *(this + 2));
  if (v9)
  {
    v13 = *(v9 + 1);

    CFRelease(v13);
  }
}

void WebKit::InjectedBundlePageFormClient::textDidChangeInTextArea(WebKit::InjectedBundlePageFormClient *this, WebKit::WebPage *a2, WebCore::HTMLTextAreaElement *a3, WebKit::WebFrame *a4)
{
  if (!*(this + 6))
  {
    return;
  }

  WebKit::InjectedBundleNodeHandle::getOrCreate(a3, &v12);
  v7 = v12;
  if (a2)
  {
    v8 = *(a2 + 1);
  }

  else
  {
    v8 = 0;
  }

  if (v12)
  {
    v9 = *(v12 + 1);
    if (a4)
    {
LABEL_6:
      v10 = *(a4 + 1);
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_7:
  (*(this + 6))(v8, v9, v10, *(this + 2));
  if (v7)
  {
    v11 = *(v7 + 1);

    CFRelease(v11);
  }
}

uint64_t WebKit::InjectedBundlePageFormClient::shouldPerformActionInTextField(uint64_t a1, uint64_t a2, WebKit::InjectedBundleNodeHandle *this, unsigned int a4, uint64_t a5)
{
  if (!*(a1 + 56))
  {
    return 0;
  }

  WebKit::InjectedBundleNodeHandle::getOrCreate(this, &v16);
  v9 = v16;
  if (a2)
  {
    v10 = *(a2 + 8);
  }

  else
  {
    v10 = 0;
  }

  if (v16)
  {
    v11 = *(v16 + 1);
  }

  else
  {
    v11 = 0;
  }

  if (a4 >= 7)
  {
    v12 = 2;
  }

  else
  {
    v12 = a4;
  }

  if (a5)
  {
    v13 = *(a5 + 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = (*(a1 + 56))(v10, v11, v12, v13, *(a1 + 16));
  if (v9)
  {
    CFRelease(*(v9 + 1));
  }

  return v14;
}

void WebKit::InjectedBundlePageFormClient::willSendSubmitEvent(uint64_t a1, uint64_t a2, WebKit::InjectedBundleNodeHandle *this, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a1 + 72))
  {
    return;
  }

  if (this)
  {
    WebKit::InjectedBundleNodeHandle::getOrCreate(this, v24);
    v11 = v24[0];
  }

  else
  {
    v11 = 0;
  }

  v26 = 0;
  if (*(a6 + 12))
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = (*a6 + v12);
      API::String::create(&v25);
      WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<API::String,WTF::RawPtrTraits<API::String>,WTF::DefaultRefDerefTraits<API::String>>>(&v26, v14, &v25, v24);
      v15 = v25;
      v25 = 0;
      if (v15)
      {
        CFRelease(*(v15 + 1));
      }

      ++v13;
      v12 += 16;
    }

    while (v13 < *(a6 + 12));
  }

  v16 = API::Object::newObject(0x18uLL, 9);
  v17 = API::Object::Object(v16);
  *v17 = &unk_1F110EAE0;
  v18 = v26;
  v26 = 0;
  *(v17 + 2) = v18;
  if (a2)
  {
    v19 = *(a2 + 8);
    if (v11)
    {
LABEL_11:
      v20 = *(v11 + 1);
      goto LABEL_12;
    }
  }

  else
  {
    v19 = 0;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  v20 = 0;
LABEL_12:
  if (!a4)
  {
    v21 = 0;
    if (a5)
    {
      goto LABEL_14;
    }

LABEL_24:
    v22 = 0;
    goto LABEL_15;
  }

  v21 = *(a4 + 8);
  if (!a5)
  {
    goto LABEL_24;
  }

LABEL_14:
  v22 = *(a5 + 8);
LABEL_15:
  (*(a1 + 72))(v19, v20, v21, v22, v16[1], *(a1 + 16));
  CFRelease(v16[1]);
  if (v26)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v26, v23);
  }

  if (v11)
  {
    CFRelease(*(v11 + 1));
  }
}

void WebKit::InjectedBundlePageFormClient::willSubmitForm(uint64_t a1, uint64_t a2, WebKit::InjectedBundleNodeHandle *this, uint64_t a4, uint64_t a5, uint64_t a6, WebKit::InjectedBundleNodeHandle **a7)
{
  if (!*(a1 + 64))
  {
    return;
  }

  if (this)
  {
    WebKit::InjectedBundleNodeHandle::getOrCreate(this, v28);
    v13 = v28[0];
  }

  else
  {
    v13 = 0;
  }

  v30 = 0;
  if (*(a6 + 12))
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = (*a6 + v14);
      API::String::create(&v29);
      WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<API::String,WTF::RawPtrTraits<API::String>,WTF::DefaultRefDerefTraits<API::String>>>(&v30, v16, &v29, v28);
      v17 = v29;
      v29 = 0;
      if (v17)
      {
        CFRelease(*(v17 + 1));
      }

      ++v15;
      v14 += 16;
    }

    while (v15 < *(a6 + 12));
  }

  v18 = API::Object::newObject(0x18uLL, 9);
  v19 = API::Object::Object(v18);
  *v19 = &unk_1F110EAE0;
  v20 = v30;
  v30 = 0;
  *(v19 + 2) = v20;
  v28[0] = 0;
  if (a2)
  {
    v21 = *(a2 + 8);
    if (v13)
    {
LABEL_11:
      v22 = *(v13 + 1);
      goto LABEL_12;
    }
  }

  else
  {
    v21 = 0;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  v22 = 0;
LABEL_12:
  if (!a4)
  {
    v23 = 0;
    if (a5)
    {
      goto LABEL_14;
    }

LABEL_28:
    v24 = 0;
    goto LABEL_15;
  }

  v23 = *(a4 + 8);
  if (!a5)
  {
    goto LABEL_28;
  }

LABEL_14:
  v24 = *(a5 + 8);
LABEL_15:
  (*(a1 + 64))(v21, v22, v23, v24, v18[1], v28, *(a1 + 16));
  v25 = v28[0];
  if (v28[0])
  {
    v25 = [(WebKit::InjectedBundleNodeHandle *)v28[0] _apiObject];
  }

  v26 = *a7;
  *a7 = v25;
  if (v26)
  {
    CFRelease(*(v26 + 1));
  }

  CFRelease(v18[1]);
  if (v30)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v30, v27);
  }

  if (v13)
  {
    CFRelease(*(v13 + 1));
  }
}

uint64_t WebKit::InjectedBundlePageFormClient::didAssociateFormControls(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  if (*(result + 96) || *(result + 104))
  {
    v25 = 0;
    v26 = 0;
    v8 = *(a3 + 12);
    if (v8)
    {
      if (v8 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      v9 = WTF::fastMalloc((8 * v8));
      LODWORD(v26) = v8;
      v25 = v9;
      v10 = *(a3 + 12);
      if (v10)
      {
        v11 = v9;
        v12 = 0;
        do
        {
          v13 = *(*a3 + 8 * v12);
          if (v13)
          {
            WebKit::InjectedBundleNodeHandle::getOrCreate(v13, &v27);
            v14 = v27;
            v10 = *(a3 + 12);
          }

          else
          {
            v14 = 0;
          }

          v15 = v12 + 1;
          *(v11 + 8 * v12) = v14;
          v12 = v15;
        }

        while (v15 < v10);
        HIDWORD(v26) = v15;
      }
    }

    v16 = v7[13];
    if (!v16)
    {
      v22 = v7[12];
      if (a2)
      {
        v23 = *(a2 + 8);
      }

      else
      {
        v23 = 0;
      }

      API::Array::create(&v25, &v27);
      v24 = v27;
      if (!v27)
      {
        v22(v23, 0, v7[2]);
        return WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v20);
      }

      v22(v23, *(v27 + 1), v7[2]);
      v21 = *(v24 + 1);
      goto LABEL_24;
    }

    if (a2)
    {
      a2 = *(a2 + 8);
    }

    API::Array::create(&v25, &v27);
    v17 = v27;
    if (v27)
    {
      v18 = *(v27 + 1);
      if (a4)
      {
LABEL_17:
        v19 = *(a4 + 8);
LABEL_18:
        v16(a2, v18, v19, v7[2]);
        if (!v17)
        {
          return WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v20);
        }

        v21 = *(v17 + 1);
LABEL_24:
        CFRelease(v21);
        return WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v20);
      }
    }

    else
    {
      v18 = 0;
      if (a4)
      {
        goto LABEL_17;
      }
    }

    v19 = 0;
    goto LABEL_18;
  }

  return result;
}

uint64_t WebKit::InjectedBundlePageFormClient::shouldNotifyOnFormChanges(WebKit::InjectedBundlePageFormClient *this, WebKit::WebPage *a2)
{
  v2 = *(this + 11);
  if (!v2)
  {
    return 0;
  }

  if (a2)
  {
    v3 = *(a2 + 1);
  }

  else
  {
    v3 = 0;
  }

  return v2(v3, *(this + 2));
}

_OWORD *WebKit::InjectedBundlePageLoaderClient::InjectedBundlePageLoaderClient(uint64_t a1, unsigned int *a2)
{
  *(a1 + 8) = 0u;
  result = (a1 + 8);
  *(a1 + 328) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  result[18] = 0u;
  result[19] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  *a1 = &unk_1F112B328;
  if (!a2)
  {
    return a1;
  }

  v4 = *a2;
  if (v4 == 11)
  {
    v5 = 328;
LABEL_5:
    memcpy(result, a2, v5);
    return a1;
  }

  if (v4 > 10)
  {
    return a1;
  }

  if (v4 < 0xC)
  {
    v5 = constinit_18[v4];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void WebKit::InjectedBundlePageLoaderClient::willLoadURLRequest(WebKit::InjectedBundlePageLoaderClient *this, WebKit::WebPage *a2, const WebCore::ResourceRequest *a3, API::Object *a4)
{
  v4 = *(this + 35);
  if (v4)
  {
    v8 = *(a2 + 1);
    v9 = API::Object::newObject(0xD8uLL, 24);
    v10 = API::URLRequest::URLRequest(v9, a3) ? *(v9 + 1) : 0;
    v11 = a4 ? *(a4 + 1) : 0;
    v4(v8, v10, v11, *(this + 2));
    if (v9)
    {
      v12 = *(v9 + 1);

      CFRelease(v12);
    }
  }
}

void WebKit::InjectedBundlePageLoaderClient::willLoadDataRequest(uint64_t a1, uint64_t a2, const WebCore::ResourceRequest *a3, WebCore::FragmentedSharedBuffer **a4, atomic_uint **a5, atomic_uint **a6, atomic_uint **a7, uint64_t a8)
{
  v8 = *(a1 + 288);
  if (!v8)
  {
    return;
  }

  if (*a4)
  {
    WebCore::FragmentedSharedBuffer::makeContiguous(&v49, *a4);
    v15 = WebCore::SharedBuffer::span(v49);
    v17 = v16;
    v18 = v49;
    v49 = 0;
    v19 = WTF::fastMalloc(0x10);
    *v19 = &unk_1F112B530;
    v19[1] = v18;
    v47 = v19;
    API::Data::createWithoutCopying(v15, v17, &v47, &v48);
    v20 = v47;
    v21 = v48;
    v47 = 0;
    v48 = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v22 = v49;
    v49 = 0;
    if (v22 && atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v22 + 2);
      (*(*v22 + 8))(v22);
    }

    v8 = *(a1 + 288);
  }

  else
  {
    v21 = 0;
  }

  v45 = *(a2 + 8);
  v23 = API::Object::newObject(0xD8uLL, 24);
  v24 = API::Object::Object(v23);
  *v24 = &unk_1F110EC40;
  WebCore::ResourceRequest::ResourceRequest(v24 + 2, a3);
  if (v21)
  {
    v44 = *(v21 + 1);
  }

  else
  {
    v44 = 0;
  }

  v43 = v23[1];
  v25 = *a5;
  if (*a5)
  {
    atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
  }

  v48 = v25;
  API::String::create(&v48, &v49);
  v27 = v48;
  v28 = v49;
  v48 = 0;
  v49 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v26);
    if (v28)
    {
      goto LABEL_17;
    }
  }

  else if (v28)
  {
LABEL_17:
    v29 = *(v28 + 1);
    goto LABEL_18;
  }

  v29 = 0;
LABEL_18:
  v30 = *a6;
  if (*a6)
  {
    atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
  }

  v48 = v30;
  API::String::create(&v48, &v49);
  v32 = v48;
  v33 = v49;
  v48 = 0;
  v49 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v31);
    if (v33)
    {
      goto LABEL_23;
    }
  }

  else if (v33)
  {
LABEL_23:
    v34 = *(v33 + 1);
    goto LABEL_24;
  }

  v34 = 0;
LABEL_24:
  v35 = *a7;
  if (!*a7)
  {
    v38 = 0;
    v41 = 0;
    v40 = 1;
    v39 = a8;
    if (a8)
    {
      goto LABEL_32;
    }

LABEL_48:
    v42 = 0;
    goto LABEL_33;
  }

  atomic_fetch_add_explicit(v35, 2u, memory_order_relaxed);
  v48 = v35;
  API::URL::create(&v48, &v49);
  v37 = v48;
  v38 = v49;
  v48 = 0;
  v49 = 0;
  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v37, v36);
  }

  v39 = a8;
  if (!v38)
  {
    v41 = 0;
    v40 = 1;
    if (a8)
    {
      goto LABEL_32;
    }

    goto LABEL_48;
  }

  v40 = 0;
  v41 = *(v38 + 1);
  if (!a8)
  {
    goto LABEL_48;
  }

LABEL_32:
  v42 = *(v39 + 8);
LABEL_33:
  v8(v45, v43, v44, v29, v34, v41, v42, *(a1 + 16));
  if ((v40 & 1) == 0)
  {
    CFRelease(*(v38 + 1));
  }

  if (v33)
  {
    CFRelease(*(v33 + 1));
  }

  if (v28)
  {
    CFRelease(*(v28 + 1));
  }

  CFRelease(v23[1]);
  if (v21)
  {
    CFRelease(*(v21 + 1));
  }
}

WTF::StringImpl *WebKit::toURLRef(WTF::StringImpl *this, atomic_uint *a2)
{
  v2 = this;
  if (a2)
  {
    atomic_fetch_add_explicit(a2, 2u, memory_order_relaxed);
    v4 = a2;
    API::URL::create(&v4, &v5);
    this = v4;
    *v2 = v5;
    v4 = 0;
    v5 = 0;
    if (this)
    {
      if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(this, v3);
      }
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void WebKit::InjectedBundlePageLoaderClient::didStartProvisionalLoadForFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v8 = 0;
    v4(*(a2 + 8), *(a3 + 8), &v8, *(a1 + 16));
    v6 = v8;
    if (v8)
    {
      v6 = [v8 _apiObject];
    }

    v7 = *a4;
    *a4 = v6;
    if (v7)
    {
      CFRelease(*(v7 + 8));
    }
  }
}

void WebKit::InjectedBundlePageLoaderClient::didReceiveServerRedirectForProvisionalLoadForFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v8 = 0;
    v4(*(a2 + 8), *(a3 + 8), &v8, *(a1 + 16));
    v6 = v8;
    if (v8)
    {
      v6 = [v8 _apiObject];
    }

    v7 = *a4;
    *a4 = v6;
    if (v7)
    {
      CFRelease(*(v7 + 8));
    }
  }
}

void WebKit::InjectedBundlePageLoaderClient::didFailProvisionalLoadWithErrorForFrame(uint64_t a1, uint64_t a2, uint64_t a3, atomic_uint **this, uint64_t *a5)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    v13 = 0;
    v8 = *(a2 + 8);
    v9 = *(a3 + 8);
    API::Error::create(this, &v14);
    v10 = v14;
    if (v14)
    {
      v5(v8, v9, *(v14 + 1), &v13, *(a1 + 16));
      CFRelease(*(v10 + 1));
    }

    else
    {
      v5(v8, v9, 0, &v13, *(a1 + 16));
    }

    v11 = v13;
    if (v13)
    {
      v11 = [v13 _apiObject];
    }

    v12 = *a5;
    *a5 = v11;
    if (v12)
    {
      CFRelease(*(v12 + 8));
    }
  }
}
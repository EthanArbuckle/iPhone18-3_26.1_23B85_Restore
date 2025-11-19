WTF::RunLoop *WebKit::GPUProcessProxy::keepProcessAliveTemporarily(WTF::RunLoop *this)
{
  {
    if (WebKit::singleton(void)::singleton)
    {
      v1 = *(WebKit::singleton(void)::singleton + 8);
      if (v1)
      {
        {
          WebKit::keptAliveGPUProcessProxy(void)::keptAliveGPUProcessProxy = 0;
        }

        atomic_fetch_add((v1 + 16), 1u);
        v2 = WebKit::keptAliveGPUProcessProxy(void)::keptAliveGPUProcessProxy;
        WebKit::keptAliveGPUProcessProxy(void)::keptAliveGPUProcessProxy = v1;
        if (v2)
        {
          this = WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v2 + 16));
        }

        {
          v3 = WTF::RunLoop::mainSingleton(this);
          v4 = v3;
          while (1)
          {
            v5 = *(v3 + 8);
            if ((v5 & 1) == 0)
            {
              break;
            }

            v6 = *(v3 + 8);
            atomic_compare_exchange_strong_explicit((v3 + 8), &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v6 == v5)
            {
              goto LABEL_17;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v3 + 8));
LABEL_17:
          v9 = v4;
          v7 = WTF::fastMalloc(0x10);
          *v7 = &unk_1F111E9F8;
          v8 = WTF::RunLoop::TimerBase::TimerBase();
          *v8 = &unk_1F10E6DC8;
          v8[5] = v7;
          if (v9)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v9 + 8));
          }
        }

        return WTF::RunLoop::TimerBase::start();
      }
    }
  }

  else
  {
    WebKit::singleton(void)::singleton = 0;
  }

  return this;
}

void WebKit::GPUProcessProxy::~GPUProcessProxy(WebKit::GPUProcessProxy *this, void *a2)
{
  v3 = *(this + 59);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  v4 = *(this + 54);
  if (v4)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 52);
  *(this + 52) = 0;
  if (v5)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v5 + 8), a2);
  }

  WebKit::AuxiliaryProcessProxy::~AuxiliaryProcessProxy(this);
}

void non-virtual thunk toWebKit::GPUProcessProxy::~GPUProcessProxy(WebKit::GPUProcessProxy *this, void *a2)
{
  WebKit::GPUProcessProxy::~GPUProcessProxy((this - 24), a2);
}

{
  WebKit::GPUProcessProxy::~GPUProcessProxy((this - 32), a2);
}

{
  WebKit::GPUProcessProxy::operator delete((this - 24), a2);
}

{
  WebKit::GPUProcessProxy::operator delete((this - 32), a2);
}

double WebKit::GPUProcessProxy::operator delete(WebKit::GPUProcessProxy *a1, void *a2)
{
  WebKit::GPUProcessProxy::~GPUProcessProxy(a1, a2);
  if (atomic_load((v2 + 48)))
  {
    result = 0.0;
    *(v2 + 448) = 0u;
    *(v2 + 464) = 0u;
    *(v2 + 416) = 0u;
    *(v2 + 432) = 0u;
    *(v2 + 384) = 0u;
    *(v2 + 400) = 0u;
    *(v2 + 352) = 0u;
    *(v2 + 368) = 0u;
    *(v2 + 320) = 0u;
    *(v2 + 336) = 0u;
    *(v2 + 288) = 0u;
    *(v2 + 304) = 0u;
    *(v2 + 256) = 0u;
    *(v2 + 272) = 0u;
    *(v2 + 224) = 0u;
    *(v2 + 240) = 0u;
    *(v2 + 192) = 0u;
    *(v2 + 208) = 0u;
    *(v2 + 160) = 0u;
    *(v2 + 176) = 0u;
    *(v2 + 128) = 0u;
    *(v2 + 144) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(v2, v3);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::SetMockCaptureDevicesEnabled>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 86;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::Encoder::operator<<<BOOL &>(v8, a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::EnableMicrophoneMuteStatusAPI>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 74;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = a3;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  LOBYTE(v15) = 0;
  v16 = 0;
  v9 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, a4, &v15, 1);
  if (v16 == 1)
  {
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v8);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v9;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::SetOrientationForMediaCapture>(uint64_t a1, _DWORD **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 89;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v8, **a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

_BYTE *WebKit::GPUProcessProxy::updateSandboxAccess(_BYTE *this, void *a2, int a3)
{
  if (this[424])
  {
    return this;
  }

  v3 = a2;
  v4 = this;
  v23 = 0;
  v24 = 0;
  if (!a3)
  {
    if (!a2)
    {
      goto LABEL_36;
    }

    goto LABEL_14;
  }

  if ((this[466] & 1) == 0)
  {
    WebKit::SandboxExtension::createHandleForGenericExtension(v25);
    v5 = v26;
    if (v26)
    {
      v6 = WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v23, HIDWORD(v24) + 1, v25);
      v7 = HIDWORD(v24);
      v8 = v23;
      v9 = *v6;
      *v6 = 0;
      *(v8 + 8 * v7) = v9;
      HIDWORD(v24) = v7 + 1;
    }

    else
    {
      v10 = qword_1ED641580;
      if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "Unable to create com.apple.webkit.camera sandbox extension", buf, 2u);
      }
    }

    if (v26 != 1)
    {
      if (!v5)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v25);
    if (v5)
    {
LABEL_12:
      v4[466] = 1;
    }
  }

LABEL_13:
  if ((v3 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  if (v4[467])
  {
    goto LABEL_25;
  }

  WebKit::SandboxExtension::createHandleForGenericExtension(v25);
  v11 = v26;
  if (v26)
  {
    v12 = HIDWORD(v24);
    if (HIDWORD(v24) == v24)
    {
      v13 = WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v23, HIDWORD(v24) + 1, v25);
      v12 = HIDWORD(v24);
      v14 = v23;
      v15 = *v13;
      *v13 = 0;
    }

    else
    {
      v14 = v23;
      v15 = *v25;
      *v25 = 0;
    }

    *(v14 + 8 * v12) = v15;
    HIDWORD(v24) = v12 + 1;
  }

  else
  {
    v16 = qword_1ED641580;
    if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "Unable to create com.apple.webkit.microphone sandbox extension", buf, 2u);
    }
  }

  if (v26 != 1)
  {
    if (!v11)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v25);
  if (v11)
  {
LABEL_24:
    v4[467] = 1;
  }

LABEL_25:
  if ((v4[465] & 1) == 0)
  {
    v25[0] = 0;
    v27 = 0;
    WebKit::SandboxExtension::createHandleForMachLookup(v25, buf);
    v17 = v29;
    if (v29)
    {
      v18 = HIDWORD(v24);
      if (HIDWORD(v24) == v24)
      {
        v19 = WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v23, HIDWORD(v24) + 1, buf);
        v18 = HIDWORD(v24);
        v20 = v23;
        v21 = *v19;
        *v19 = 0;
      }

      else
      {
        v20 = v23;
        v21 = *buf;
        *buf = 0;
      }

      *(v20 + 8 * v18) = v21;
      HIDWORD(v24) = v18 + 1;
    }

    else
    {
      v22 = qword_1ED641580;
      if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
      {
        *v25 = 0;
        _os_log_error_impl(&dword_19D52D000, v22, OS_LOG_TYPE_ERROR, "Unable to create com.apple.tccd sandbox extension", v25, 2u);
      }
    }

    if (v29 == 1)
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(buf);
      if (!v17)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v17)
    {
LABEL_35:
      v4[465] = 1;
    }
  }

LABEL_36:
  if (HIDWORD(v24))
  {
    *v25 = &v23;
    WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::UpdateSandboxAccess>(v4, v25, 0, 0);
  }

  return WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v23, a2);
}

uint64_t WebKit::GPUProcessProxy::updateCaptureAccess(WebKit::GPUProcessProxy *this, void *a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v10 = a2;
  v15 = a5;
  if (a2)
  {
    *(this + 57) = a6;
  }

  WebKit::GPUProcessProxy::updateSandboxAccess(this, a2, a3);
  v13[0] = v10;
  v13[1] = a3;
  v13[2] = a4;
  v14 = &v15;
  return WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::GPUProcess::UpdateCaptureAccess,WTF::CompletionHandler<void ()(void)>>(this, v13, a7, 0, 0, 1);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::GPUProcess::UpdateCaptureAccess,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 94;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::Encoder::operator<<<BOOL &>(v12, a2);
  IPC::Encoder::operator<<<BOOL &>(v12, (a2 + 1));
  IPC::Encoder::operator<<<BOOL &>(v12, (a2 + 2));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **(a2 + 8));
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111EA48;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::UpdateCaptureOrigin>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 95;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::encode(v8, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, *a2[1]);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::AddMockMediaDevice>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 70;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebCore::MockMediaDevice,void>::encode(v8, *a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::ClearMockMediaDevices>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 72;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = a3;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  LOBYTE(v15) = 0;
  v16 = 0;
  v9 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, a4, &v15, 1);
  if (v16 == 1)
  {
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v8);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v9;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::RemoveMockMediaDevice>(uint64_t a1, uint64_t **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 80;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::SetMockMediaDeviceIsEphemeral>(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 88;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
  IPC::Encoder::operator<<<BOOL &>(v8, a2 + 8);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::ResetMockMediaDevices>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 83;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = a3;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  LOBYTE(v15) = 0;
  v16 = 0;
  v9 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, a4, &v15, 1);
  if (v16 == 1)
  {
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v8);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v9;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::SetMockCaptureDevicesInterrupted>(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 87;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::Encoder::operator<<<BOOL &>(v8, a2);
  IPC::Encoder::operator<<<BOOL &>(v8, a2 + 1);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::TriggerMockCaptureConfigurationChange>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 93;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  Messages::GPUProcess::TriggerMockCaptureConfigurationChange::encode<IPC::Encoder>(a2, v8);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

uint64_t WebKit::GPUProcessProxy::setShouldListenToVoiceActivity(WebKit::GPUProcessProxy *this, const WebKit::WebPageProxy *a2, int a3)
{
  v4 = (this + 432);
  if (a3)
  {
    result = WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(this + 432, a2, &v18);
    if (*(this + 448))
    {
      return result;
    }
  }

  else
  {
    result = WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::WebPageProxy>(this + 432, a2);
    if (*(this + 448) != 1)
    {
      return result;
    }
  }

  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(v4, &v18);
  v6 = *v4;
  if (*v4)
  {
    v7 = *(v6 - 1);
    v8 = &v6[v7];
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v13 = v4;
  v14 = v8;
  v15 = v8;
  v16 = v8;
  v17 = &v6[v7];
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v13);
  v9 = v19;
  if (v19 == v14)
  {
    v12 = 0;
  }

  else
  {
    do
    {
      v10 = *(*v9 + 8);
      if (v10)
      {
        v11 = v10 - 16;
      }

      else
      {
        v11 = 0;
      }

      v12 = *(v11 + 656);
      if (v12)
      {
        break;
      }

      result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v18);
      v9 = v19;
    }

    while (v19 != v14);
  }

  if (*(this + 448) != v12)
  {
    *(this + 448) = v12;
    LOBYTE(v18) = v12;
    return WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::SetShouldListenToVoiceActivity>(this, &v18, 0, 0);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::SetShouldListenToVoiceActivity>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 91;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::Encoder::operator<<<BOOL &>(v8, a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void WebKit::GPUProcessProxy::didDrawRemoteToPDF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WebKit::WebProcessProxy::webPage(a2, &v8);
  v6 = v8;
  if (v8)
  {
    WebKit::WebPageProxy::didDrawRemoteToPDF(v8, a3, a4);
    v7 = *(v6 + 8);

    CFRelease(v7);
  }
}

void WebKit::GPUProcessProxy::connectionWillOpen(WebKit::GPUProcessProxy *this, IPC::Connection *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = this;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - GPUProcessProxy::connectionWillOpen:", &v4, 0xCu);
  }
}

unsigned int *WebKit::GPUProcessProxy::processWillShutDown(WebKit::GPUProcessProxy *this, IPC::Connection *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = this;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - GPUProcessProxy::processWillShutDown:", &v7, 0xCu);
  }

  {
    result = WebKit::singleton(void)::singleton;
    if (WebKit::singleton(void)::singleton)
    {
      v6 = *(WebKit::singleton(void)::singleton + 8);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    result = 0;
    v6 = 0;
    WebKit::singleton(void)::singleton = 0;
  }

  if (v6 == this)
  {
    WebKit::singleton(void)::singleton = 0;
    if (result)
    {
      if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        return WTF::fastFree(result, v4);
      }
    }
  }

  return result;
}

IPC::Encoder *WebKit::GPUProcessProxy::createGPUProcessConnection(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v74 = *MEMORY[0x1E69E9840];
  *(a4 + 56) = WebKit::GPUProcessProxy::s_hasVP9HardwareDecoder;
  *(a4 + 58) = WebKit::GPUProcessProxy::s_hasAV1HardwareDecoder;
  v8 = *(a2 + 800);
  if (v8)
  {
    CFRetain(*(v8 + 8));
    v9 = *(a1 + 80);
    if ((!v9 || (*(v9 + 104) & 1) == 0) && !*(a1 + 88))
    {
      goto LABEL_43;
    }

    v10 = *(v8 + 24);
    v11 = *(a1 + 472);
    if (v11)
    {
      if (v10 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E10535CLL);
      }

      if (!v10)
      {
        __break(0xC471u);
LABEL_67:
        JUMPOUT(0x19E1052FCLL);
      }

      v60 = *(v11 - 8);
      v61 = (v10 + ~(v10 << 32)) ^ ((v10 + ~(v10 << 32)) >> 22);
      v62 = 9 * ((v61 + ~(v61 << 13)) ^ ((v61 + ~(v61 << 13)) >> 8));
      v63 = (v62 ^ (v62 >> 15)) + ~((v62 ^ (v62 >> 15)) << 27);
      v64 = v60 & ((v63 >> 31) ^ v63);
      v65 = *(v11 + 8 * v64);
      if (v65 == v10)
      {
        goto LABEL_43;
      }

      v66 = 1;
      while (v65)
      {
        v64 = (v64 + v66) & v60;
        v65 = *(v11 + 8 * v64);
        ++v66;
        if (v65 == v10)
        {
          goto LABEL_43;
        }
      }
    }

    *buf = 0u;
    *v73 = 0u;
    v12 = WebKit::WebsiteDataStore::resolvedDirectories(v8);
    v13 = *(v12 + 12);
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      v71 = 0;
      *buf = v13;
      v14 = *(v13 + 4);
      if (v14)
      {
        WebKit::SandboxExtension::createHandleWithoutResolvingPath(*(v13 + 8), (v14 | (((*(v13 + 16) >> 2) & 1) << 32)), 1, &v68);
        if (v69 == 1)
        {
          v15 = v68;
          v68 = 0;
          *&buf[8] = v15;
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v68);
        }
      }
    }

    else
    {
      v71 = 0;
      *buf = 0;
    }

    v16 = *(v12 + 13);
    if (v16)
    {
      atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      v73[0] = v16;
      v67 = 0;
      v17 = *(v16 + 4);
      if (v17)
      {
        WebKit::SandboxExtension::createHandleWithoutResolvingPath(*(v16 + 8), (v17 | (((*(v16 + 16) >> 2) & 1) << 32)), 1, &v68);
        if (v69 == 1)
        {
          v18 = v68;
          v68 = 0;
          v73[1] = v18;
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v68);
        }
      }
    }

    else
    {
      v73[0] = 0;
      v67 = 0;
    }

    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v67);
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v71);
    v20 = IPC::Encoder::operator new(0x238, v19);
    *v20 = 71;
    *(v20 + 68) = 0;
    *(v20 + 70) = 0;
    *(v20 + 69) = 0;
    *(v20 + 2) = 0;
    *(v20 + 3) = 0;
    *(v20 + 1) = 0;
    IPC::Encoder::encodeHeader(v20);
    v71 = v20;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v20, v10);
    IPC::ArgumentCoder<WebKit::GPUProcessSessionParameters,void>::encode(v20, buf);
    LOBYTE(v68) = 0;
    v70 = 0;
    WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v71, 0, &v68, 1);
    if (v70 == 1)
    {
      v22 = v68;
      v68 = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }
    }

    v23 = v71;
    v71 = 0;
    if (v23)
    {
      IPC::Encoder::~Encoder(v23, v21);
      bmalloc::api::tzoneFree(v58, v59);
    }

    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v73[1]);
    v25 = v73[0];
    v73[0] = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v24);
    }

    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&buf[8]);
    v27 = *buf;
    *buf = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v26);
    }

    v28 = *(v8 + 24);
    if (v28 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E10531CLL);
    }

    if (!v28)
    {
      __break(0xC471u);
      JUMPOUT(0x19E10533CLL);
    }

    v29 = *(a1 + 472);
    if (!v29)
    {
      WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand((a1 + 472), 0);
      v29 = *(a1 + 472);
    }

    v30 = *(v29 - 8);
    v31 = (v28 + ~(v28 << 32)) ^ ((v28 + ~(v28 << 32)) >> 22);
    v32 = 9 * ((v31 + ~(v31 << 13)) ^ ((v31 + ~(v31 << 13)) >> 8));
    v33 = (v32 ^ (v32 >> 15)) + ~((v32 ^ (v32 >> 15)) << 27);
    v34 = v30 & ((v33 >> 31) ^ v33);
    v35 = (v29 + 8 * v34);
    v36 = *v35;
    if (*v35)
    {
      v37 = 0;
      v38 = 1;
      while (v36 != v28)
      {
        if (v36 == -1)
        {
          v37 = v35;
        }

        v34 = (v34 + v38) & v30;
        v35 = (v29 + 8 * v34);
        v36 = *v35;
        ++v38;
        if (!*v35)
        {
          if (!v37)
          {
            goto LABEL_39;
          }

          *v37 = 0;
          v29 = *(a1 + 472);
          *v37 = v28;
          v39 = vadd_s32(*(v29 - 16), 0x1FFFFFFFFLL);
          *(v29 - 16) = v39;
          v40 = v39.i32[1];
          v41 = v39.i32[0];
          goto LABEL_40;
        }
      }

      goto LABEL_43;
    }

LABEL_39:
    *v35 = v28;
    v41 = *(v29 - 16);
    v40 = *(v29 - 12) + 1;
    *(v29 - 12) = v40;
    v37 = v35;
LABEL_40:
    v42 = (v40 + v41);
    v43 = *(v29 - 4);
    if (v43 > 0x400)
    {
      if (v43 > 2 * v42)
      {
        goto LABEL_43;
      }
    }

    else if (3 * v43 > 4 * v42)
    {
LABEL_43:
      CFRelease(*(v8 + 8));
      goto LABEL_44;
    }

    WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand((a1 + 472), v37);
    goto LABEL_43;
  }

LABEL_44:
  v44 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&dword_19D52D000, v44, OS_LOG_TYPE_DEFAULT, "%p - GPUProcessProxy is taking a background assertion because a web process is requesting a connection", buf, 0xCu);
  }

  WebKit::AuxiliaryProcessProxy::startResponsivenessTimer(a1, 0);
  v45 = *(a2 + 120);
  v46 = *(*(a2 + 800) + 24);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v47 = *(a1 + 8);
  atomic_fetch_add(v47, 1u);
  v49 = IPC::Encoder::operator new(0x238, v48);
  *v49 = 73;
  *(v49 + 68) = 0;
  *(v49 + 70) = 0;
  *(v49 + 69) = 0;
  *(v49 + 2) = 0;
  *(v49 + 3) = 0;
  *(v49 + 1) = 0;
  IPC::Encoder::encodeHeader(v49);
  v68 = v49;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, v45);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, v46);
  IPC::Encoder::addAttachment(v49, a3);
  IPC::ArgumentCoder<WebKit::GPUProcessConnectionParameters,void>::encode(v49, a4);
  v50 = WTF::fastMalloc(0x10);
  *v50 = &unk_1F111EA70;
  v50[1] = v47;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_67;
  }

  v51 = v50;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  *buf = v51;
  *&buf[8] = IdentifierInternal;
  LOBYTE(v73[0]) = 1;
  WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v68, 1, buf, 1);
  if (LOBYTE(v73[0]) == 1)
  {
    v54 = *buf;
    *buf = 0;
    if (v54)
    {
      (*(*v54 + 8))(v54);
    }
  }

  result = v68;
  v68 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v53);
    return bmalloc::api::tzoneFree(v56, v57);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::GPUProcess::SharedPreferencesForWebProcessDidChange,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 92;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<WebKit::SharedPreferencesForWebProcess,void>::encode(v12, a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111EA98;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

atomic_uint *WebKit::GPUProcessProxy::gpuProcessExited(uint64_t a1, unsigned int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 16);
  atomic_fetch_add((a1 + 16), 1u);
  v5 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    *&buf[4] = a1;
    *&buf[12] = 2082;
    *&buf[14] = WebKit::processTerminationReasonToString();
    _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "%p - GPUProcessProxy::gpuProcessExited: reason=%{public}s", buf, 0x16u);
  }

  WebKit::WebProcessPool::allProcessPools(&v27);
  if (v28)
  {
    v7 = WebKit::WebProcessPool::extensionCapabilityGranter(*v27, v6);
    v25 = *(a1 + 392);
    *(a1 + 392) = 0;
    v8 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,unsigned long long,long long,BOOL,double>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(&v25);
    if (v25)
    {
      v10 = *(v25 - 1);
      v11 = &v25[3 * v10];
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    *buf = &v25;
    *&buf[8] = v8;
    *&buf[16] = v9;
    v30 = v11;
    v31 = &v25[3 * v10];
    v26[0] = 0;
    v26[1] = 0;
    WTF::Mapper<WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::moveToVectorOf<WebKit::ExtensionCapabilityGrant,WTF::SizedIteratorRange<WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableValuesIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WebKit::ExtensionCapabilityGrant>> &>(WTF::SizedIteratorRange<WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableValuesIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WebKit::ExtensionCapabilityGrant>> &)::{lambda(WebKit::ExtensionCapabilityGrant&&)#1},WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::SizedIteratorRange<WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashTableValuesIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WebKit::ExtensionCapabilityGrant>> &,void>::map(v26, buf);
    WebKit::ExtensionCapabilityGranter::invalidateGrants(v7, v26);
    WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v26, v12);
    if (v25)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v25, v6);
    }
  }

  WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v27, v6);
  {
    v14 = WebKit::keptAliveGPUProcessProxy(void)::keptAliveGPUProcessProxy;
  }

  else
  {
    v14 = 0;
    WebKit::keptAliveGPUProcessProxy(void)::keptAliveGPUProcessProxy = 0;
  }

  if (v14 == a1)
  {
    WebKit::keptAliveGPUProcessProxy(void)::keptAliveGPUProcessProxy = 0;
    if (a1)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v14 + 16));
    }
  }

  {
    v15 = WebKit::singleton(void)::singleton;
    if (WebKit::singleton(void)::singleton)
    {
      v16 = *(WebKit::singleton(void)::singleton + 8);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    WebKit::singleton(void)::singleton = 0;
  }

  if (v16 == a1)
  {
    WebKit::singleton(void)::singleton = 0;
    if (v15)
    {
      if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15);
        WTF::fastFree(v15, v13);
      }
    }
  }

  WebKit::WebProcessPool::allProcessPools(buf);
  if (*&buf[12])
  {
    v18 = *buf;
    v19 = 8 * *&buf[12];
    do
    {
      v20 = *(a1 + 80);
      if (v20)
      {
        v21 = *(v20 + 108);
      }

      else
      {
        v21 = 0;
      }

      v22 = *v18++;
      WebKit::WebProcessPool::gpuProcessExited(v22, v21, a2);
      v19 -= 8;
    }

    while (v19);
    WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v23);
  }

  else
  {
    result = WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v17);
    if (!a1)
    {
      return result;
    }
  }

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v4);
}

atomic_uint *WebKit::GPUProcessProxy::processIsReadyToExit(WebKit::GPUProcessProxy *this)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = this;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - GPUProcessProxy::processIsReadyToExit:", &v4, 0xCu);
  }

  WebKit::AuxiliaryProcessProxy::terminate(this);
  return WebKit::GPUProcessProxy::gpuProcessExited(this, 3u);
}

atomic_uint *WebKit::GPUProcessProxy::childConnectionDidBecomeUnresponsive(WebKit::GPUProcessProxy *this)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
  {
    v4 = 134217984;
    v5 = this;
    _os_log_error_impl(&dword_19D52D000, v2, OS_LOG_TYPE_ERROR, "%p - GPUProcessProxy::childConnectionDidBecomeUnresponsive:", &v4, 0xCu);
  }

  return WebKit::GPUProcessProxy::didBecomeUnresponsive(this);
}

atomic_uint *WebKit::GPUProcessProxy::didBecomeUnresponsive(WebKit::GPUProcessProxy *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
  {
    v4 = *(this + 10);
    if (v4)
    {
      LODWORD(v4) = *(v4 + 108);
    }

    v5 = 134218240;
    v6 = this;
    v7 = 1024;
    v8 = v4;
    _os_log_error_impl(&dword_19D52D000, v2, OS_LOG_TYPE_ERROR, "%p - GPUProcessProxy::didBecomeUnresponsive: GPUProcess with PID %d became unresponsive, terminating it", &v5, 0x12u);
  }

  WebKit::AuxiliaryProcessProxy::terminate(this);
  return WebKit::GPUProcessProxy::gpuProcessExited(this, 4u);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::GPUProcess::WebProcessConnectionCountForTesting,WTF::CompletionHandler<void ()(unsigned long long)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 99;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = a4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v25 = v11;
  v12 = *a3;
  *a3 = 0;
  v13 = WTF::fastMalloc(0x10);
  *v13 = &unk_1F111EAC0;
  v13[1] = v12;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v14 = v13;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v23[0] = v14;
    v23[1] = IdentifierInternal;
    v24 = 1;
    v17 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v25, a5, v23, a6);
    if (v24 == 1)
    {
      v18 = v23[0];
      v23[0] = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    v19 = v25;
    v25 = 0;
    if (v19)
    {
      IPC::Encoder::~Encoder(v19, v16);
      bmalloc::api::tzoneFree(v21, v22);
    }

    if (v17)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

atomic_uint *WebKit::GPUProcessProxy::didClose(WebKit::GPUProcessProxy *this, IPC::Connection *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
  {
    v5 = 134217984;
    v6 = this;
    _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, "%p - GPUProcessProxy::didClose:", &v5, 0xCu);
  }

  return WebKit::GPUProcessProxy::gpuProcessExited(this, 5u);
}

atomic_uint *WebKit::GPUProcessProxy::didReceiveInvalidMessage(WebKit::AuxiliaryProcessProxy *a1, uint64_t a2, WTF::StringImpl *a3)
{
  WebKit::AuxiliaryProcessProxy::logInvalidMessage(a1, a2, a3);
  WebKit::WebProcessPool::didReceiveInvalidMessage(a3);
  WebKit::AuxiliaryProcessProxy::terminate(a1);

  return WebKit::GPUProcessProxy::didClose(a1, v5);
}

void WebKit::GPUProcessProxy::didFinishLaunching(WebKit::AuxiliaryProcessProxy *a1, uint64_t a2, _DWORD *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 134217984;
    *&v15[4] = a1;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - GPUProcessProxy::didFinishLaunching:", v15, 0xCu);
  }

  v7 = *a3 - 1;
  WebKit::AuxiliaryProcessProxy::didFinishLaunching(a1, a2, a3);
  if (v7 >= 0xFFFFFFFE)
  {
    WebKit::GPUProcessProxy::gpuProcessExited(a1, 5u);
  }

  else
  {
    {
      v9 = WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess;
      if (WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess)
      {
        atomic_fetch_add(WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess, 1u);
        v10 = *(v9 + 8);
        if (v10)
        {
          WebKit::NetworkProcessProxy::sendXPCEndpointToProcess(v10, a1);
        }

        if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v9);
          WTF::fastFree(v9, v8);
        }
      }
    }

    else
    {
      WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess = 0;
    }

    WebKit::AuxiliaryProcessProxy::beginResponsivenessChecks(a1);
    WebKit::WebProcessPool::allProcessPools(v15);
    if (v16)
    {
      v12 = *v15;
      v13 = 8 * v16;
      do
      {
        v14 = *v12++;
        WebKit::WebProcessPool::gpuProcessDidFinishLaunching(v14);
        v13 -= 8;
      }

      while (v13);
    }

    WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v15, v11);
    WebKit::GPUProcessProxy::sendBookmarkDataForCacheDirectory(a1);
  }
}

void *WebKit::GPUProcessProxy::removeSession(void *result, uint64_t a2)
{
  v2 = result;
  v6 = a2;
  v3 = result[10];
  if (v3 && (*(v3 + 104) & 1) != 0 || result[11])
  {
    v4 = WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashTraits<PAL::SessionID>,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(result + 59, &v6);
    result = WTF::HashSet<PAL::SessionID,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove((v2 + 472), v4);
    if (result)
    {
      v5 = &v6;
      return WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::RemoveSession>(v2, &v5, 0, 0);
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::RemoveSession>(uint64_t a1, void **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 81;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, **a2);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

uint64_t WebKit::GPUProcessProxy::sendPrepareToSuspend(uint64_t a1, char a2, uint64_t *a3, double a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED641030;
  v9 = os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - GPUProcessProxy::sendPrepareToSuspend:", &buf, 0xCu);
  }

  WTF::MonotonicTime::now(v9);
  v22 = v10 + a4;
  v23[0] = a2;
  v24 = &v22;
  v12 = IPC::Encoder::operator new(0x238, v11);
  *v12 = 77;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = 0;
  IPC::Encoder::encodeHeader(v12);
  v25 = v12;
  IPC::Encoder::operator<<<BOOL &>(v12, v23);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v12, *v24);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111EAE8;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    *&buf = v15;
    *(&buf + 1) = IdentifierInternal;
    v27 = 1;
    WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v25, 0, &buf, 0);
    if (v27 == 1)
    {
      v18 = buf;
      *&buf = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    result = v25;
    v25 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v17);
      return bmalloc::api::tzoneFree(v20, v21);
    }
  }

  return result;
}

void WebKit::GPUProcessProxy::sendProcessDidResume(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - GPUProcessProxy::sendProcessDidResume:", buf, 0xCu);
  }

  v4 = *(a1 + 80);
  if (v4 && (*(v4 + 104) & 1) != 0 || *(a1 + 88))
  {
    v5 = IPC::Encoder::operator new(0x238, v3);
    *v5 = 78;
    *(v5 + 68) = 0;
    *(v5 + 70) = 0;
    *(v5 + 69) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    *(v5 + 1) = 0;
    IPC::Encoder::encodeHeader(v5);
    v11 = v5;
    buf[0] = 0;
    v13 = 0;
    WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v11, 0, buf, 1);
    if (v13 == 1)
    {
      v7 = *buf;
      *buf = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }

    v8 = v11;
    v11 = 0;
    if (v8)
    {
      IPC::Encoder::~Encoder(v8, v6);
      bmalloc::api::tzoneFree(v9, v10);
    }
  }
}

atomic_uint *WebKit::GPUProcessProxy::terminateWebProcess(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_ERROR))
  {
    *v6 = 134217984;
    *&v6[4] = a2;
    _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, "GPUProcessProxy::terminateWebProcess: webProcessIdentifier=%llu", v6, 0xCu);
  }

  *v6 = a2;
  {
    WebKit::WebProcessProxy::allProcessMap(void)::map = 0;
  }

  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CheckedRef<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&WebKit::WebProcessProxy::allProcessMap(void)::map, v6);
  if (result)
  {
    v5 = result + 4;
    atomic_fetch_add(result + 4, 1u);
    WebKit::WebProcessProxy::requestTermination(result, 9);
    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5);
  }

  return result;
}

void WebKit::GPUProcessProxy::didCreateContextForVisibilityPropagation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v15 = a1;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = a3;
    v20 = 1024;
    v21 = a4;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - GPUProcessProxy::didCreateContextForVisibilityPropagation: webPageProxyID: %llu, pagePID: %llu, contextID: %u", buf, 0x26u);
  }

  WebKit::WebProcessProxy::webPage(a2, &v13);
  v9 = v13;
  if (v13)
  {
    if (*(v13 + 6) == a3)
    {
      WebKit::WebPageProxy::didCreateContextInGPUProcessForVisibilityPropagation(v13, a4);
    }

    else
    {
      v11 = *(v13 + 157);
      if (v11 && *(v11 + 5) == a3)
      {
        WebKit::ProvisionalPageProxy::didCreateContextInGPUProcessForVisibilityPropagation(v11, a4);
      }

      else
      {
        v12 = qword_1ED6416A0;
        if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v15 = a1;
          _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%p - GPUProcessProxy::didCreateContextForVisibilityPropagation() There was a WebPageProxy for this identifier, but it had the wrong WebPage identifier.", buf, 0xCu);
        }
      }
    }

    CFRelease(*(v9 + 1));
  }

  else
  {
    v10 = qword_1ED6416A0;
    if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = a1;
      _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "%p - GPUProcessProxy::didCreateContextForVisibilityPropagation() No WebPageProxy with this identifier", buf, 0xCu);
    }
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::GPUProcess::RequestBitmapImageForCurrentTime,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 82;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v26 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, *a2[1]);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F111EB10;
  v14[1] = v13;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *WebKit::GPUProcessProxy::voiceActivityDetected(WebKit::GPUProcessProxy *this)
{
  v2 = this + 432;
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 54, &v14);
  v3 = *(this + 54);
  if (v3)
  {
    v4 = *(v3 - 4);
    v5 = v3 + 8 * v4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v9 = v2;
  v10 = v5;
  v11 = v5;
  v12 = v5;
  v13 = v3 + 8 * v4;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v9);
  while (v15 != v10)
  {
    v7 = *(*v15 + 8);
    if (v7)
    {
      v8 = v7 - 16;
    }

    else
    {
      v8 = 0;
    }

    CFRetain(*(v8 + 8));
    WebKit::WebPageProxy::send<Messages::WebPage::VoiceActivityDetected>(v8, &v16);
    if (v7)
    {
      CFRelease(*(v7 - 8));
    }

    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v14);
  }

  return result;
}

void WebKit::GPUProcessProxy::startMonitoringCaptureDeviceRotation(uint64_t a1, uint64_t a2, const WTF::String *a3)
{
  WebKit::WebProcessProxy::webPage(a2, &v7);
  v5 = v7;
  if (v7)
  {
    WebKit::WebPageProxy::startMonitoringCaptureDeviceRotation(v7, a3, v4);
    v6 = *(v5 + 1);

    CFRelease(v6);
  }
}

void WebKit::GPUProcessProxy::stopMonitoringCaptureDeviceRotation(uint64_t a1, uint64_t a2, const WTF::String *a3)
{
  WebKit::WebProcessProxy::webPage(a2, &v7);
  v5 = v7;
  if (v7)
  {
    WebKit::WebPageProxy::stopMonitoringCaptureDeviceRotation(v7, a3, v4);
    v6 = *(v5 + 1);

    CFRelease(v6);
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::GPUProcess::RotationAngleForCaptureDeviceChanged>(uint64_t a1, __int16 *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 85;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v8, *a2);
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v8, a2[4]);
  LOBYTE(v16) = 0;
  v17 = 0;
  v10 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v18, a4, &v16, 1);
  if (v17 == 1)
  {
    v11 = v16;
    v16 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v9);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v10;
}

void WebKit::GPUProcessProxy::microphoneMuteStatusChanged(WebKit::GPUProcessProxy *this, int a2)
{
  v2 = *(this + 57);
  if (v2)
  {
    WebKit::WebProcessProxy::webPage(v2, &v5);
    v4 = v5;
    if (v5)
    {
      WebKit::WebPageProxy::microphoneMuteStatusChanged(v5, a2);
      CFRelease(*(v4 + 1));
    }
  }
}

uint64_t WebKit::GPUProcessProxy::statusBarWasTapped(uint64_t a1, uint64_t *a2)
{
  WebKit::WebProcessProxy::audioCapturingWebPage(&v7);
  v3 = v7;
  if (v7)
  {
    WebKit::WebPageProxy::statusBarWasTapped(v7);
    CFRelease(*(v3 + 1));
  }

  v4 = *a2;
  *a2 = 0;
  (*(*v4 + 16))(v4);
  v5 = *(*v4 + 8);

  return v5(v4);
}

void WebKit::UIGamepad::updateFromPlatformGamepad(WebKit::UIGamepad *this, WebCore::PlatformGamepad *a2)
{
  v4 = (*(*a2 + 24))(a2);
  WTF::Vector<WebCore::SharedGamepadValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(this + 24, v4);
  v5 = (*(*a2 + 32))(a2);
  WTF::Vector<WebCore::SharedGamepadValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(this + 40, v5);
  *(this + 7) = (*(*a2 + 16))(a2);
}

uint64_t WTF::Vector<WebCore::SharedGamepadValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t result, unsigned int *a2)
{
  v2 = result;
  if (a2 == result)
  {
    return v2;
  }

  v4 = *(result + 12);
  v5 = a2[3];
  if (v4 > v5)
  {
    WTF::VectorDestructor<true,WTF::CString>::destruct((*result + 8 * v5), (*result + 8 * v4));
    *(v2 + 12) = v5;
    LODWORD(v4) = v5;
LABEL_25:
    v16 = *a2;
    if (v4)
    {
      v17 = *v2;
      v18 = 8 * v4;
      do
      {
        v19 = *v16;
        *v19 = **v16 + 1;
        v20 = *v17;
        *v17 = v19;
        if (v20)
        {
          if (*v20 == 1)
          {
            WTF::fastFree(v20, a2);
          }

          else
          {
            --*v20;
          }
        }

        ++v16;
        ++v17;
        v18 -= 8;
      }

      while (v18);
      v16 = *a2;
      v21 = *(v2 + 12);
    }

    else
    {
      v21 = 0;
    }

    v22 = a2[3];
    if (v21 != v22)
    {
      v23 = (*v2 + 8 * v21);
      v24 = &v16[v21];
      v25 = 8 * v22 - 8 * v21;
      do
      {
        v26 = *v24++;
        ++*v26;
        *v23++ = v26;
        v25 -= 8;
      }

      while (v25);
    }

    *(v2 + 12) = v22;
    return v2;
  }

  v6 = *(result + 8);
  if (v5 <= v6)
  {
    goto LABEL_25;
  }

  if (v6)
  {
    if (v4)
    {
      WTF::VectorDestructor<true,WTF::CString>::destruct(*result, (*result + 8 * v4));
      *(v2 + 12) = 0;
    }

    result = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      result = WTF::fastFree(result, a2);
    }
  }

  v7 = a2[3];
  if (*(v2 + 8) >= v7)
  {
LABEL_24:
    LODWORD(v4) = *(v2 + 12);
    goto LABEL_25;
  }

  if (!(v7 >> 29))
  {
    v8 = *v2;
    v9 = *(v2 + 12);
    v10 = WTF::fastMalloc((8 * v7));
    *(v2 + 8) = v7;
    *v2 = v10;
    if (v9)
    {
      v11 = v10;
      v12 = 8 * v9;
      v13 = v8;
      do
      {
        v14 = *v13;
        *v13 = 0;
        *v11 = v14;
        v15 = *v13;
        *v13 = 0;
        if (v15)
        {
          if (*v15 == 1)
          {
            WTF::fastFree(v15, a2);
          }

          else
          {
            --*v15;
          }
        }

        ++v11;
        ++v13;
        v12 -= 8;
      }

      while (v12);
    }

    if (v8)
    {
      if (*v2 == v8)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
      }

      WTF::fastFree(v8, a2);
    }

    goto LABEL_24;
  }

  __break(0xC471u);
  return result;
}

WebKit::UIGamepadProvider *WebKit::UIGamepadProvider::UIGamepadProvider(WebKit::UIGamepadProvider *this)
{
  *this = &unk_1F111E538;
  *(this + 1) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v2 = WTF::RunLoop::mainSingleton(this);
  v3 = v2;
  while (1)
  {
    v4 = *(v2 + 8);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(v2 + 8);
    atomic_compare_exchange_strong_explicit((v2 + 8), &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v2 + 8));
LABEL_6:
  v8 = v3;
  v6 = WTF::fastMalloc(0x20);
  *v6 = &unk_1F111EB38;
  v6[1] = this;
  v6[2] = WebKit::UIGamepadProvider::gamepadSyncTimerFired;
  v6[3] = 0;
  WTF::RunLoop::TimerBase::TimerBase();
  *(this + 6) = &unk_1F10E6DC8;
  *(this + 11) = v6;
  if (v8)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v8 + 8));
  }

  *(this + 48) = 0;
  WebKit::UIGamepadProvider::platformSetDefaultGamepadProvider(this);
  return this;
}

void WebKit::UIGamepadProvider::gamepadSyncTimerFired(WebKit::UIGamepadProvider *this)
{
  v2 = WebKit::UIGamepadProvider::platformWebPageProxyForGamepadInput(this);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    v4 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get(*(v3 + 64) + 16);
    if (WTF::WeakHashSet<WebKit::WebProcessPool,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::contains<WebKit::WebProcessPool>(this + 2, v4))
    {
      WebKit::UIGamepadProvider::snapshotGamepads(this, v7);
      v5 = *(this + 97);
      v8 = v7;
      v9 = v5;
      WebKit::WebPageProxy::send<Messages::WebPage::GamepadActivity>(v3, &v8);
      WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v6);
      *(this + 97) = 0;
    }

    CFRelease(*(v3 + 8));
  }
}

void WebKit::UIGamepadProvider::~UIGamepadProvider(WebKit::UIGamepadProvider *this)
{
  isEmptyIgnoringNullReferences = WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences(this + 2);
  if (!isEmptyIgnoringNullReferences)
  {
    v3 = WebCore::GamepadProvider::singleton(isEmptyIgnoringNullReferences);
    (*(*v3 + 24))(v3, this);
  }

  *(this + 6) = &unk_1F10E6DC8;
  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 48));
  v6 = *(this + 11);
  if (v6)
  {
    v7 = *(this + 4);
    v8 = 8 * v6;
    do
    {
      std::unique_ptr<WebKit::UIGamepad>::reset[abi:sn200100](v7++, 0);
      v8 -= 8;
    }

    while (v8);
  }

  v9 = *(this + 4);
  if (v9)
  {
    *(this + 4) = 0;
    *(this + 10) = 0;
    WTF::fastFree(v9, v5);
  }

  v10 = *(this + 2);
  if (v10)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v10, v5);
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
        WTF::fastFree(v12, v5);
      }
    }
  }
}

{
  WebKit::UIGamepadProvider::~UIGamepadProvider(this);

  JUMPOUT(0x19EB14CF0);
}

uint64_t WebKit::UIGamepadProvider::snapshotGamepads@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(this + 44);
  if (v3)
  {
    if (v3 >= 0x3333334)
    {
      __break(0xC471u);
    }

    else
    {
      v4 = this;
      v5 = 80 * v3;
      this = WTF::fastMalloc((80 * v3));
      *(a2 + 8) = v5 / 0x50;
      *a2 = this;
      if (*(v4 + 44))
      {
        v6 = 0;
        v7 = (this + 72);
        do
        {
          v8 = *(*(v4 + 32) + 8 * v6);
          if (v8)
          {
            this = WebKit::GamepadData::GamepadData(&v16, *v8, (v8 + 8), (v8 + 16), (v8 + 24), (v8 + 40), (v8 + 64), *(v8 + 56));
            v9 = v18;
            v10 = v20;
            v11 = v22;
            v12 = v23;
            v13 = v19;
            v14 = v21;
            v15 = v17;
            *(v7 - 18) = v16;
            *(v7 - 4) = v15;
            *(v7 - 6) = v9;
            *(v7 - 5) = v13;
            *(v7 - 4) = v10;
            *(v7 - 3) = v14;
            *(v7 - 2) = v11;
            *(v7 - 1) = v12;
            *v7 = 1;
          }

          else
          {
            *(v7 - 72) = 0;
            *v7 = 0;
          }

          ++v6;
          v7 += 80;
        }

        while (v6 < *(v4 + 44));
        *(a2 + 12) = v6;
      }
    }
  }

  return this;
}

uint64_t WebKit::UIGamepadProvider::scheduleGamepadStateSync(uint64_t this)
{
  if (*(this + 96) == 1)
  {
    v1 = this;
    this = WTF::RunLoop::TimerBase::isActive((this + 48));
    if ((this & 1) == 0)
    {
      if (*(v1 + 44) && !WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences((v1 + 16)))
      {

        return WTF::RunLoop::TimerBase::start();
      }

      else
      {

        return WTF::RunLoop::TimerBase::stop((v1 + 48));
      }
    }
  }

  return this;
}

void *WebKit::UIGamepadProvider::platformGamepadConnected(uint64_t a1, unsigned int *a2, int a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if ((WTF::isMainRunLoop(a1) & 1) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E10764CLL);
  }

  v6 = qword_1ED640B08;
  if (os_log_type_enabled(qword_1ED640B08, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a2[8];
    v9 = *(a1 + 44);
    *buf = 67109632;
    *&buf[4] = v8;
    LOWORD(v40) = 1024;
    *(&v40 + 2) = a3;
    HIWORD(v40) = 1024;
    v41 = v9;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "UIGamepadProvider::platformGamepadConnected - Gamepad index %i attached (visibility: %i, currently m_gamepads.size: %i)\n", buf, 0x14u);
  }

  v10 = *(a1 + 44);
  v11 = a2[8];
  if (v10 <= v11)
  {
    v12 = v11 + 1;
    v13 = *(a1 + 40);
    if (v13 < v12)
    {
      if (v13 + (v13 >> 1) <= v13 + 1)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = v13 + (v13 >> 1);
      }

      if (v14 <= v12)
      {
        v14 = v12;
      }

      if (v14 >> 29)
      {
        __break(0xC471u);
LABEL_46:
        JUMPOUT(0x19E10762CLL);
      }

      v15 = *(a1 + 32);
      if (v14 <= 0x10)
      {
        v16 = 16;
      }

      else
      {
        v16 = v14;
      }

      v17 = WTF::fastMalloc((8 * v16));
      *(a1 + 40) = v16;
      *(a1 + 32) = v17;
      memcpy(v17, v15, 8 * v10);
      if (v15)
      {
        if (*(a1 + 32) == v15)
        {
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
        }

        WTF::fastFree(v15, v7);
      }
    }

    v18 = *(a1 + 32);
    if (v18)
    {
      bzero((v18 + 8 * *(a1 + 44)), 8 * (v12 - *(a1 + 44)));
    }

    *(a1 + 44) = v12;
  }

  if (WebKit::UIGamepad::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::UIGamepad::s_heapRef, v7);
  }

  else
  {
    NonCompact = WebKit::UIGamepad::operatorNewSlow(0);
  }

  v20 = NonCompact;
  *NonCompact = a2[8];
  v21 = *(a2 + 2);
  if (v21)
  {
    atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
  }

  *(NonCompact + 8) = v21;
  v22 = *(a2 + 3);
  if (v22)
  {
    atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
  }

  *(NonCompact + 16) = v22;
  v23 = (*(*a2 + 24))(a2);
  WTF::Vector<WebCore::SharedGamepadValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v20 + 24, *(v23 + 12));
  v24 = (*(*a2 + 32))(a2);
  WTF::Vector<WebCore::SharedGamepadValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v20 + 40, *(v24 + 12));
  *(v20 + 56) = (*(*a2 + 16))(a2);
  WTF::HashTable<WebCore::GamepadHapticEffectType,WebCore::GamepadHapticEffectType,WTF::IdentityExtractor,WTF::IntHash<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::FastMalloc>::HashTable((v20 + 64), a2 + 7);
  WebKit::UIGamepad::updateFromPlatformGamepad(v20, a2);
  v25 = a2[8];
  if (*(a1 + 44) <= v25)
  {
    __break(0xC471u);
    JUMPOUT(0x19E107654);
  }

  v26 = (*(a1 + 32) + 8 * v25);
  *buf = 0;
  std::unique_ptr<WebKit::UIGamepad>::reset[abi:sn200100](v26, v20);
  std::unique_ptr<WebKit::UIGamepad>::reset[abi:sn200100](buf, 0);
  WebKit::UIGamepadProvider::scheduleGamepadStateSync(a1);
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin((a1 + 16), buf);
  v27 = 0;
  v28 = 0;
  v29 = *(a1 + 16);
  if (v29)
  {
    v28 = *(v29 - 4);
    v27 = v29 + 8 * v28;
  }

  v34 = a1 + 16;
  v35 = v27;
  v36 = v27;
  v37 = v27;
  v38 = v29 + 8 * v28;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v34);
  while (v40 != v35)
  {
    v31 = *(*v40 + 8);
    if (v31)
    {
      v32 = v31 - 16;
    }

    else
    {
      v32 = 0;
    }

    CFRetain(*(v32 + 8));
    v33 = a2[8];
    if (*(a1 + 44) <= v33)
    {
      __break(0xC471u);
      goto LABEL_46;
    }

    WebKit::WebProcessPool::gamepadConnected(v32, *(*(a1 + 32) + 8 * v33), a3);
    if (v31)
    {
      CFRelease(*(v31 - 8));
    }

    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(buf);
  }

  return result;
}

void WebKit::UIGamepadProvider::platformGamepadDisconnected(WebKit::UIGamepadProvider *this, WebCore::PlatformGamepad *a2)
{
  v48[4] = *MEMORY[0x1E69E9840];
  if ((WTF::isMainRunLoop(this) & 1) == 0)
  {
    __break(0xC471u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v4 = qword_1ED640B08;
  if (os_log_type_enabled(qword_1ED640B08, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 8);
    v6 = *(this + 11);
    *buf = 67109376;
    *&buf[4] = v5;
    LOWORD(v48[0]) = 1024;
    *(v48 + 2) = v6;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "UIGamepadProvider::platformGamepadConnected - Detaching gamepad index %i (Current m_gamepads size: %i)\n", buf, 0xEu);
  }

  v7 = *(a2 + 8);
  v8 = *(this + 11);
  if (v8 > v7)
  {
    v9 = *(this + 4);
    v10 = *(v9 + 8 * v7);
    *(v9 + 8 * v7) = 0;
    v46 = v10;
    WebKit::UIGamepadProvider::scheduleGamepadStateSync(this);
    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 2, buf);
    v11 = 0;
    v12 = 0;
    v13 = *(this + 2);
    if (v13)
    {
      v12 = *(v13 - 4);
      v11 = v13 + 8 * v12;
    }

    v41 = (this + 16);
    v42 = v11;
    v43 = v11;
    v44 = v11;
    v45 = v13 + 8 * v12;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v41);
    while (v48[0] != v42)
    {
      v14 = *(*v48[0] + 8);
      if (v14)
      {
        v15 = (v14 - 16);
      }

      else
      {
        v15 = 0;
      }

      CFRetain(v15[1]);
      WebKit::WebProcessPool::gamepadDisconnected(v15, v10);
      if (v14)
      {
        CFRelease(*(v14 - 8));
      }

      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(buf);
    }

    std::unique_ptr<WebKit::UIGamepad>::reset[abi:sn200100](&v46, 0);
    return;
  }

  v16 = 0;
  v17 = v7;
  do
  {
    ++v16;
    v18 = v17 > 9;
    v17 /= 0xAu;
  }

  while (v18);
  v19 = 64;
  v20 = v8;
  do
  {
    ++v19;
    v18 = v20 > 9;
    v20 /= 0xAuLL;
  }

  while (v18);
  if (v19 - 64 < 0 || __OFADD__(v19 - 64, 15) || ((v21 = v19 - 43, !__OFADD__(v19 - 49, 6)) ? (v22 = 0) : (v22 = 1), v16 < 0 || (v22 & 1) != 0 || (v23 = __OFADD__(v16, v21), v24 = v16 + v21, v23) || (v25 = (v24 + 43), __OFADD__(v24, 43))))
  {
LABEL_58:
    __break(0xC471u);
    return;
  }

  if (v24 != -43)
  {
    if ((v25 & 0x80000000) != 0)
    {
      goto LABEL_58;
    }

    WTF::tryFastCompactMalloc((v25 + 20));
    v26 = *buf;
    if (!*buf)
    {
      goto LABEL_58;
    }

    *(*buf + 20) = *"Unknown platform gamepad disconnect: Index ";
    *v26 = 2;
    *(v26 + 4) = v25;
    *(v26 + 8) = v26 + 20;
    *(v26 + 16) = 4;
    qmemcpy((v26 + 36), " gamepad disconnect: Index ", 27);
    if (v25 > 0x2A)
    {
      v27 = 0;
      v28 = v25 - 43;
      v29 = v7;
      while (v27 != -13)
      {
        *(v48 + v27-- + 4) = (v29 % 0xA) | 0x30;
        v18 = v29 > 9;
        v29 /= 0xAu;
        if (!v18)
        {
          v30 = 0;
          while ((v16 + v19) - 43 != v30)
          {
            *(v26 + v30 + 63) = *(v48 + v30 + v27 + 5);
            if (-v27 == ++v30)
            {
              LODWORD(v31) = 0;
              do
              {
                v31 = (v31 + 1);
                v18 = v7 > 9;
                v7 /= 0xAu;
              }

              while (v18);
              if (v28 >= v31)
              {
                v32 = v28 - v31;
                v33 = v26 + 63 + v31;
                *(v33 + 4) = 8296;
                *v33 = 1953068832;
                if (v32 > 5)
                {
                  v34 = v32 - 6;
                  v35 = v33 + 6;
                  *buf = v8;
                  WTF::StringTypeAdapter<unsigned long long,void>::writeTo<unsigned char>(buf, (v33 + 6), v32 - 6);
                  LODWORD(v36) = 0;
                  v37 = *buf;
                  do
                  {
                    v36 = (v36 + 1);
                    v18 = v37 > 9;
                    v37 /= 0xAuLL;
                  }

                  while (v18);
                  if (v34 >= v36)
                  {
                    qmemcpy((v35 + v36), " known gamepads", 15);
                    goto LABEL_48;
                  }
                }
              }

              goto LABEL_57;
            }
          }

          goto LABEL_57;
        }
      }
    }

    goto LABEL_57;
  }

  v26 = MEMORY[0x1E696EB88];
  atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
LABEL_48:
  *buf = v26;
  WTF::String::utf8();
  os_fault_with_payload();
  v39 = v41;
  v41 = 0;
  if (v39)
  {
    if (*v39 == 1)
    {
      WTF::fastFree(v39, v38);
    }

    else
    {
      --*v39;
    }
  }

  v40 = *buf;
  *buf = 0;
  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v40, v38);
  }
}

uint64_t WebKit::UIGamepadProvider::platformGamepadInputActivity(uint64_t a1, char a2)
{
  v4 = WebCore::GamepadProvider::singleton(a1);
  v5 = (*(*v4 + 32))(v4);
  v6 = *(v5 + 12);
  v21 = 0;
  v22 = 0;
  v23 = v6;
  if (v6)
  {
    if (v6 >> 29)
    {
      goto LABEL_26;
    }

    v7 = v5;
    v8 = WTF::fastMalloc((8 * v6));
    v22 = v6;
    v21 = v8;
    v9 = *(v7 + 12);
    if (v9)
    {
      v10 = *v7;
      v11 = 8 * v9;
      do
      {
        v12 = *v10;
        if (*v10)
        {
          atomic_fetch_add(v12, 1u);
        }

        *v8++ = v12;
        ++v10;
        v11 -= 8;
      }

      while (v11);
      LODWORD(v6) = v23;
    }
  }

  v13 = *(a1 + 44);
  if (v6 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v6;
  }

  if (v14)
  {
    v15 = 0;
    while (v15 < *(a1 + 44))
    {
      v16 = *(*(a1 + 32) + 8 * v15);
      if (v16)
      {
        if (v15 >= v6)
        {
          __break(0xC471u);
          JUMPOUT(0x19E107C18);
        }

        v17 = v21[v15];
        if (v17)
        {
          v18 = *(v17 + 1);
          if (v18)
          {
            WebKit::UIGamepad::updateFromPlatformGamepad(v16, v18);
          }
        }
      }

      if (v14 == ++v15)
      {
        goto LABEL_21;
      }
    }

LABEL_26:
    __break(0xC471u);
    JUMPOUT(0x19E107C10);
  }

LABEL_21:
  if (a2)
  {
    *(a1 + 97) = 1;
  }

  WebKit::UIGamepadProvider::scheduleGamepadStateSync(a1);
  return WTF::Vector<WTF::WeakPtr<WebKit::ListDataObserver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v19);
}

uint64_t WebKit::UIGamepadProvider::processPoolStartedUsingGamepads(WebKit::UIGamepadProvider *this, WebKit::WebProcessPool *a2)
{
  if (WTF::isMainRunLoop(this))
  {
    result = WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(this + 16, a2, v5);
    if ((*(this + 96) & 1) == 0)
    {
      result = WebKit::UIGamepadProvider::platformWebPageProxyForGamepadInput(this);
      if (result)
      {
        return WebKit::UIGamepadProvider::startMonitoringGamepads(this);
      }
    }
  }

  else
  {
    result = 168;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::UIGamepadProvider::startMonitoringGamepads(WebKit::UIGamepadProvider *this)
{
  result = WTF::isMainRunLoop(this);
  if (result)
  {
    if ((*(this + 96) & 1) == 0)
    {
      v3 = qword_1ED640B08;
      v4 = os_log_type_enabled(qword_1ED640B08, OS_LOG_TYPE_DEFAULT);
      if (v4)
      {
        *v6 = 0;
        _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "UIGamepadProvider::startMonitoringGamepads - Starting gamepad monitoring", v6, 2u);
      }

      *(this + 96) = 1;
      v5 = WebCore::GamepadProvider::singleton(v4);
      return (*(*v5 + 16))(v5, this);
    }
  }

  else
  {
    result = 215;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::UIGamepadProvider::processPoolStoppedUsingGamepads(WebKit::UIGamepadProvider *this, WebKit::WebProcessPool *a2)
{
  if (WTF::isMainRunLoop(this))
  {
    result = WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::WebPageProxy>(this + 16, a2);
    if (*(this + 96) == 1)
    {

      return WebKit::UIGamepadProvider::platformWebPageProxyForGamepadInput(this);
    }
  }

  else
  {
    result = 178;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::UIGamepadProvider::viewBecameActive(WebKit::UIGamepadProvider *this, WebKit::WebPageProxy *a2)
{
  v3 = API::PageConfiguration::Data::LazyInitializedRef<WebKit::WebProcessPool,&API::PageConfiguration::Data::createWebProcessPool>::get((*(a2 + 8) + 16));
  result = WTF::WeakHashSet<WebKit::WebProcessPool,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::contains<WebKit::WebProcessPool>(this + 2, v3);
  if (result)
  {
    if ((*(this + 96) & 1) == 0)
    {
      WebKit::UIGamepadProvider::startMonitoringGamepads(this);
    }

    return WebKit::UIGamepadProvider::platformWebPageProxyForGamepadInput(this);
  }

  return result;
}

void WebKit::UIGamepadProvider::viewBecameInactive(WebKit::UIGamepadProvider *this, WebKit::WebPageProxy *a2)
{
  v2 = WebKit::UIGamepadProvider::platformWebPageProxyForGamepadInput(this);
  if (v2)
  {
    v3 = v2;
    CFRetain(*(v2 + 8));
    v4 = *(v3 + 8);

    CFRelease(v4);
  }
}

void WebKit::InspectorTargetProxy::create(uint64_t a1@<X0>, atomic_uint **a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 32);
  if (v5 && (v6 = *(v5 + 8)) != 0)
  {
    CFRetain(*(v6 - 8));
    v11 = WebKit::InspectorTargetProxy::operator new(0x40, v10);
    *a4 = WebKit::InspectorTargetProxy::InspectorTargetProxy(v11, v6 - 16, a2, a3);
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
    v13 = *(a1 + 8);
    atomic_fetch_add(v13, 1u);
    v14 = *(*a4 + 56);
    *(*a4 + 56) = v13;
    if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14);
      WTF::fastFree(v14, v12);
    }

    v15 = *(v6 - 8);

    CFRelease(v15);
  }

  else
  {
    *a4 = 0;
  }
}

void WebKit::InspectorTargetProxy::connect(void *a1, char a2)
{
  v4 = a1[7];
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    v7 = *(v5 + 24);
    v6 = (v5 + 24);
    *v6 = v7 + 1;
    v8 = v6 - 2;
    v9 = a1[5];
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    }

    v33 = v9;
    v10 = (*(*v8 + 56))(v6 - 2);
    v12 = IPC::Encoder::operator new(0x238, v11);
    *v12 = 2474;
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 1) = v10;
    *(v12 + 68) = 0;
    *(v12 + 70) = 0;
    *(v12 + 69) = 0;
    IPC::Encoder::encodeHeader(v12);
    v31[0] = v12;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, &v33);
    LOBYTE(v30) = a2;
    IPC::Encoder::operator<<<BOOL>(v12, &v30);
    (*(*v8 + 32))(v6 - 2, v31, 0);
    v14 = v31[0];
    v31[0] = 0;
    if (v14)
    {
      IPC::Encoder::~Encoder(v14, v13);
      bmalloc::api::tzoneFree(v26, v27);
    }

    v15 = v33;
    v33 = 0;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v13);
      }
    }

    WTF::RefCounted<WebKit::ProvisionalPageProxy>::deref(v6);
  }

  else
  {
    v16 = *(a1[4] + 8);
    if (v16)
    {
      CFRetain(*(v16 - 8));
      if ((*(v16 + 849) & 1) == 0 && *(v16 + 848) == 1)
      {
        v18 = *(v16 + 336);
        atomic_fetch_add((v18 + 16), 1u);
        v19 = a1[5];
        if (v19)
        {
          atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
        }

        v30 = v19;
        v20 = *(v16 + 32);
        v21 = IPC::Encoder::operator new(0x238, v17);
        *v21 = 2474;
        *(v21 + 2) = 0;
        *(v21 + 3) = 0;
        *(v21 + 1) = v20;
        *(v21 + 68) = 0;
        *(v21 + 70) = 0;
        *(v21 + 69) = 0;
        IPC::Encoder::encodeHeader(v21);
        v33 = v21;
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v21, &v30);
        LOBYTE(v31[0]) = a2;
        IPC::Encoder::operator<<<BOOL>(v21, v31);
        LOBYTE(v31[0]) = 0;
        v32 = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v18, &v33, 0, v31, 1);
        if (v32 == 1)
        {
          v23 = v31[0];
          v31[0] = 0;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }
        }

        v24 = v33;
        v33 = 0;
        if (v24)
        {
          IPC::Encoder::~Encoder(v24, v22);
          bmalloc::api::tzoneFree(v28, v29);
        }

        v25 = v30;
        v30 = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v22);
        }

        if (v18)
        {
          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v18 + 16));
        }
      }

      CFRelease(*(v16 - 8));
    }

    else
    {
      __break(0xC471u);
    }
  }
}

void WebKit::InspectorTargetProxy::disconnect(atomic_uint **this)
{
  if (*(this + 24) == 1)
  {
    Inspector::InspectorTarget::resume(this);
  }

  v2 = this[7];
  if (v2 && (v3 = *(v2 + 1)) != 0)
  {
    v5 = *(v3 + 24);
    v4 = (v3 + 24);
    *v4 = v5 + 1;
    v6 = v4 - 2;
    v7 = this[5];
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    v31 = v7;
    v8 = (*(*v6 + 56))(v4 - 2);
    v10 = IPC::Encoder::operator new(0x238, v9);
    *v10 = 2526;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = v8;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    IPC::Encoder::encodeHeader(v10);
    v29[0] = v10;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, &v31);
    (*(*v6 + 32))(v4 - 2, v29, 0);
    v12 = v29[0];
    v29[0] = 0;
    if (v12)
    {
      IPC::Encoder::~Encoder(v12, v11);
      bmalloc::api::tzoneFree(v24, v25);
    }

    v13 = v31;
    v31 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v11);
      }
    }

    WTF::RefCounted<WebKit::ProvisionalPageProxy>::deref(v4);
  }

  else
  {
    v14 = *(this[4] + 1);
    if (v14)
    {
      CFRetain(*(v14 - 8));
      if ((*(v14 + 849) & 1) == 0 && *(v14 + 848) == 1)
      {
        v16 = *(v14 + 336);
        atomic_fetch_add((v16 + 16), 1u);
        v17 = this[5];
        if (v17)
        {
          atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
        }

        v28 = v17;
        v18 = *(v14 + 32);
        v19 = IPC::Encoder::operator new(0x238, v15);
        *v19 = 2526;
        *(v19 + 2) = 0;
        *(v19 + 3) = 0;
        *(v19 + 1) = v18;
        *(v19 + 68) = 0;
        *(v19 + 70) = 0;
        *(v19 + 69) = 0;
        IPC::Encoder::encodeHeader(v19);
        v31 = v19;
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v19, &v28);
        LOBYTE(v29[0]) = 0;
        v30 = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v16, &v31, 0, v29, 1);
        if (v30 == 1)
        {
          v21 = v29[0];
          v29[0] = 0;
          if (v21)
          {
            (*(*v21 + 8))(v21);
          }
        }

        v22 = v31;
        v31 = 0;
        if (v22)
        {
          IPC::Encoder::~Encoder(v22, v20);
          bmalloc::api::tzoneFree(v26, v27);
        }

        v23 = v28;
        v28 = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v20);
        }

        if (v16)
        {
          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v16 + 16));
        }
      }

      CFRelease(*(v14 - 8));
    }

    else
    {
      __break(0xC471u);
    }
  }
}

void WebKit::InspectorTargetProxy::sendMessageToTargetBackend(WebKit::InspectorTargetProxy *this, const WTF::String *a2)
{
  v4 = *(this + 7);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    v7 = *(v5 + 24);
    v6 = (v5 + 24);
    *v6 = v7 + 1;
    v8 = v6 - 2;
    v9 = *(this + 5);
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    }

    v33 = v9;
    v10 = (*(*v8 + 56))(v6 - 2);
    v12 = IPC::Encoder::operator new(0x238, v11);
    *v12 = 2709;
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 1) = v10;
    *(v12 + 68) = 0;
    *(v12 + 70) = 0;
    *(v12 + 69) = 0;
    IPC::Encoder::encodeHeader(v12);
    v31[0] = v12;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, &v33);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2);
    (*(*v8 + 32))(v6 - 2, v31, 0);
    v14 = v31[0];
    v31[0] = 0;
    if (v14)
    {
      IPC::Encoder::~Encoder(v14, v13);
      bmalloc::api::tzoneFree(v26, v27);
    }

    v15 = v33;
    v33 = 0;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v13);
      }
    }

    WTF::RefCounted<WebKit::ProvisionalPageProxy>::deref(v6);
  }

  else
  {
    v16 = *(*(this + 4) + 8);
    if (v16)
    {
      CFRetain(*(v16 - 8));
      if ((*(v16 + 849) & 1) == 0 && *(v16 + 848) == 1)
      {
        v18 = *(v16 + 336);
        atomic_fetch_add((v18 + 16), 1u);
        v19 = *(this + 5);
        if (v19)
        {
          atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
        }

        v30 = v19;
        v20 = *(v16 + 32);
        v21 = IPC::Encoder::operator new(0x238, v17);
        *v21 = 2709;
        *(v21 + 2) = 0;
        *(v21 + 3) = 0;
        *(v21 + 1) = v20;
        *(v21 + 68) = 0;
        *(v21 + 70) = 0;
        *(v21 + 69) = 0;
        IPC::Encoder::encodeHeader(v21);
        v33 = v21;
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v21, &v30);
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v21, a2);
        LOBYTE(v31[0]) = 0;
        v32 = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v18, &v33, 0, v31, 1);
        if (v32 == 1)
        {
          v23 = v31[0];
          v31[0] = 0;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }
        }

        v24 = v33;
        v33 = 0;
        if (v24)
        {
          IPC::Encoder::~Encoder(v24, v22);
          bmalloc::api::tzoneFree(v28, v29);
        }

        v25 = v30;
        v30 = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v22);
        }

        if (v18)
        {
          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v18 + 16));
        }
      }

      CFRelease(*(v16 - 8));
    }

    else
    {
      __break(0xC471u);
    }
  }
}

unsigned int *WebKit::InspectorTargetProxy::didCommitProvisionalTarget(WebKit::InspectorTargetProxy *this, void *a2)
{
  result = *(this + 7);
  *(this + 7) = 0;
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

void WebKit::WebExtensionStorageSQLiteStore::~WebExtensionStorageSQLiteStore(WTF::StringImpl **this, void *a2)
{
  WebKit::WebExtensionSQLiteStore::~WebExtensionSQLiteStore(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void WebKit::WebExtensionMatchPattern::~WebExtensionMatchPattern(WebKit::WebExtensionMatchPattern *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E2C8;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }
}

{
  *this = &unk_1F111E2C8;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
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

  JUMPOUT(0x19EB14CF0);
}

bmalloc::api **std::unique_ptr<WebKit::UIGamepad>::reset[abi:sn200100](bmalloc::api **result, bmalloc::api *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      WTF::fastFree((v3 - 16), a2);
    }

    WTF::Vector<WebCore::SharedGamepadValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 40, a2);
    WTF::Vector<WebCore::SharedGamepadValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 24, v4);
    v6 = *(v2 + 2);
    *(v2 + 2) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }

    v7 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }

    return bmalloc::api::tzoneFree(v2, v5);
  }

  return result;
}

uint64_t WTF::Vector<WebCore::SharedGamepadValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::CString>::destruct(*a1, (*a1 + 8 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void WebKit::WebExtensionSQLiteStore::~WebExtensionSQLiteStore(WTF::StringImpl **this, void *a2)
{
  *this = &unk_1F1110038;
  WebKit::WebExtensionSQLiteStore::close(this, a2);
  v4 = this[9];
  this[9] = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = this[8];
  this[8] = 0;
  if (v5)
  {
    WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v5, v3);
  }

  v6 = this[3];
  this[3] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v3);
  }

  v7 = this[2];
  this[2] = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v3);
    }
  }
}

uint64_t *WTF::HashSet<WebKit::WebExtensionEventListenerType,WTF::DefaultHash<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = 0;
  if (a3)
  {
    v4 = a3;
    WTF::HashTable<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionEventListenerType,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::FastMalloc>::reserveInitialCapacity(a1, a3);
    do
    {
      WTF::HashTable<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionEventListenerType,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a1, a2++, v7);
      --v4;
    }

    while (v4);
  }

  return a1;
}

uint64_t WTF::HashTable<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionEventListenerType,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::FastMalloc>::reserveInitialCapacity(uint64_t *a1, uint64_t a2)
{
  v3 = WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::computeBestTableSize(a2);
  result = WTF::fastMalloc((v3 + 16));
  v5 = result;
  v6 = result + 16;
  if (v3)
  {
    result = memset((result + 16), 255, v3);
  }

  *a1 = v6;
  *(v5 + 8) = v3 - 1;
  *(v5 + 12) = v3;
  *v5 = 0;
  return result;
}

uint64_t *WTF::HashTable<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionEventListenerType,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (v3 == 254 || v3 == 255)
  {
    __break(0xC471u);
    JUMPOUT(0x19E108E30);
  }

  v5 = result;
  v7 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionEventListenerType,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::FastMalloc>::expand(result, 0);
    v7 = *v5;
    v3 = *a2;
  }

  v8 = *(v7 - 8);
  v9 = 9 * ((~(v3 << 15) + v3) ^ ((~(v3 << 15) + v3) >> 10));
  v10 = (((v9 ^ (v9 >> 6)) + ~((v9 ^ (v9 >> 6)) << 11)) ^ (((v9 ^ (v9 >> 6)) + ~((v9 ^ (v9 >> 6)) << 11)) >> 16)) & v8;
  v11 = (v7 + v10);
  v12 = *(v7 + v10);
  if (v12 == 255)
  {
LABEL_6:
    v13 = *(v7 - 16);
    v14 = v11;
  }

  else
  {
    v14 = 0;
    v15 = 1;
    do
    {
      if (v12 == v3)
      {
        v19 = 0;
        v20 = v7 + *(v7 - 4);
        goto LABEL_21;
      }

      if (v12 == 254)
      {
        v14 = v11;
      }

      v10 = (v10 + v15) & v8;
      v11 = (v7 + v10);
      v12 = *(v7 + v10);
      ++v15;
    }

    while (v12 != 255);
    if (!v14)
    {
      goto LABEL_6;
    }

    *v14 = -1;
    v13 = *(v7 - 16) - 1;
    *(v7 - 16) = v13;
    LOBYTE(v3) = *a2;
  }

  *v14 = v3;
  v16 = *(v7 - 12) + 1;
  *(v7 - 12) = v16;
  v17 = (v16 + v13);
  v18 = *(v7 - 4);
  if (v18 > 0x400)
  {
    if (v18 <= 2 * v17)
    {
LABEL_16:
      result = WTF::HashTable<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionEventListenerType,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::FastMalloc>::expand(v5, v14);
      v14 = result;
      v7 = *v5;
      if (*v5)
      {
        v18 = *(v7 - 4);
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else if (3 * v18 <= 4 * v17)
  {
    goto LABEL_16;
  }

  v20 = v7 + v18;
  v19 = 1;
  v11 = v14;
LABEL_21:
  *a3 = v11;
  *(a3 + 8) = v20;
  *(a3 + 16) = v19;
  return result;
}

uint64_t WTF::HashTable<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionEventListenerType,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionEventListenerType,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionEventListenerType,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v9 = WTF::fastMalloc((a2 + 16));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    memset((v9 + 16), 255, a2);
  }

  *a1 = v12;
  LODWORD(v13) = a2 - 1;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  if (!v7)
  {
    v15 = 0;
    if (!v6)
    {
      return v15;
    }

    goto LABEL_17;
  }

  v14 = 0;
  v15 = 0;
  if (v12)
  {
    v13 = v13;
  }

  else
  {
    v13 = 0;
  }

  do
  {
    v16 = *(v6 + v14);
    if (v16 <= 0xFD)
    {
      v17 = 0;
      v18 = 9 * ((~(v16 << 15) + v16) ^ ((~(v16 << 15) + v16) >> 10));
      v19 = ((v18 ^ (v18 >> 6)) + ~((v18 ^ (v18 >> 6)) << 11)) ^ (((v18 ^ (v18 >> 6)) + ~((v18 ^ (v18 >> 6)) << 11)) >> 16);
      do
      {
        v20 = v19 & v13;
        v21 = *(v12 + (v19 & v13));
        v19 = ++v17 + (v19 & v13);
      }

      while (v21 != 255);
      *(v12 + v20) = v16;
      if (v6 + v14 == a3)
      {
        v15 = v12 + v20;
      }
    }

    ++v14;
  }

  while (v14 != v7);
  if (v6)
  {
LABEL_17:
    WTF::fastFree((v6 - 16), v10);
  }

  return v15;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t a1)
{
  v2 = qword_1ED642B68;
  if (qword_1ED642B68)
  {
    v3 = *(qword_1ED642B68 - 4);
    v4 = *(qword_1ED642B68 - 12);
    if (v3)
    {
      v5 = v3 << (6 * v4 >= (2 * v3));
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = 8;
LABEL_6:
  v6 = WTF::fastZeroedMalloc((16 * v5 + 16));
  qword_1ED642B68 = (v6 + 4);
  v6[2] = v5 - 1;
  v6[3] = v5;
  *v6 = 0;
  v6[1] = v4;
  if (v3)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v2 + 16 * v8;
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v13 = qword_1ED642B68;
          if (qword_1ED642B68)
          {
            v14 = *(qword_1ED642B68 - 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = *(v11 + 4);
          if (v15 < 0x100)
          {
            v16 = WTF::StringImpl::hashSlowCase(v11);
          }

          else
          {
            v16 = v15 >> 8;
          }

          v17 = 0;
          do
          {
            v18 = v16 & v14;
            v16 = ++v17 + v18;
          }

          while (*(v13 + 16 * v18));
          v19 = v13 + 16 * v18;
          v20 = *(v19 + 8);
          *(v19 + 8) = 0;
          if (v20)
          {
            CFRelease(*(v20 + 8));
            v21 = *v19;
            *v19 = 0;
            if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v21, v7);
            }
          }

          else
          {
            *v19 = 0;
          }

          v22 = *v10;
          *v10 = 0;
          *v19 = v22;
          v23 = *(v10 + 8);
          *(v10 + 8) = 0;
          *(v19 + 8) = v23;
          v24 = *(v10 + 8);
          *(v10 + 8) = 0;
          if (v24)
          {
            CFRelease(*(v24 + 8));
          }

          v25 = *v10;
          *v10 = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v7);
          }

          if (v10 == a1)
          {
            v9 = v19;
          }
        }

        else
        {
          v12 = *(v10 + 8);
          *(v10 + 8) = 0;
          if (v12)
          {
            CFRelease(*(v12 + 8));
            v11 = *v10;
          }

          *v10 = 0;
          if (v11)
          {
            if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v11, v7);
            }
          }
        }
      }

      ++v8;
    }

    while (v8 != v3);
  }

  else
  {
    v9 = 0;
    result = 0;
    if (!v2)
    {
      return result;
    }
  }

  WTF::fastFree((v2 - 16), v7);
  return v9;
}

uint64_t WTF::tryMakeString<WTF::String,WTF::ASCIILiteral,WTF::String,WTF::String>(uint64_t result, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  if (a4)
  {
    v6 = a4 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 >> 31)
  {
    result = 161;
    __break(0xC471u);
    return result;
  }

  v10 = a2;
  v11 = result;
  if (!a2)
  {
    goto LABEL_58;
  }

  v12 = *(a2 + 4);
  if (!a5)
  {
    goto LABEL_59;
  }

LABEL_7:
  v13 = *(a5 + 4);
  if (a6)
  {
LABEL_8:
    v14 = a6[1];
    goto LABEL_9;
  }

  while (1)
  {
    v14 = 0;
LABEL_9:
    if ((v14 | v13) < 0 || (v15 = __OFADD__(v13, v14), v16 = v13 + v14, v15))
    {
LABEL_28:
      v17 = 0;
      goto LABEL_56;
    }

    v17 = 0;
    v15 = __OFADD__(v6, v16);
    v18 = v6 + v16;
    v19 = v15;
    if (v12 < 0 || (v19 & 1) != 0)
    {
      goto LABEL_56;
    }

    v20 = v12 + v18;
    if (__OFADD__(v12, v18))
    {
      goto LABEL_28;
    }

    if (v10 && (v10[16] & 4) == 0)
    {
      if (!v20)
      {
        goto LABEL_26;
      }

      v21 = v20;
      goto LABEL_27;
    }

    if (!a5)
    {
      if (a6)
      {
LABEL_24:
        v21 = v20;
        v23 = v20 == 0;
        if ((a6[4] & 4) != 0)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }

      if (!v20)
      {
LABEL_26:
        v17 = MEMORY[0x1E696EB88];
        atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
        goto LABEL_56;
      }

      v21 = v20;
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_28;
      }

LABEL_32:
      result = WTF::tryFastCompactMalloc((v21 + 20));
      v17 = v43;
      if (!v43)
      {
        goto LABEL_56;
      }

      *v43 = 2;
      v17[1] = v20;
      *(v17 + 1) = v17 + 5;
      v17[4] = 4;
      v41 = v10;
      result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v41, v17 + 20);
      v24 = v41;
      if (!v41 || (v24 = *(v41 + 1), v24 <= v20))
      {
        v10 = (v21 - v24);
        v25 = v17 + v24 + 20;
        if (v6)
        {
          if (v6 == 1)
          {
            *v25 = *a3;
          }

          else
          {
            result = memcpy(v17 + v24 + 20, a3, v6);
          }
        }

        a3 = &v10[-v6];
        if (v10 >= v6)
        {
          v6 += v25;
          v42 = a5;
          result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v42, v6);
          v26 = v42;
          if (!v42 || (v26 = *(v42 + 4), a3 >= v26))
          {
            v43 = a6;
            result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v43, (v26 + v6));
            goto LABEL_56;
          }
        }
      }

      goto LABEL_57;
    }

    v22 = *(a5 + 16);
    if (a6 && (v22 & 4) != 0)
    {
      goto LABEL_24;
    }

    v21 = v20;
    v23 = v20 == 0;
    if ((v22 & 4) != 0)
    {
LABEL_30:
      if (v23)
      {
        goto LABEL_26;
      }

      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }

LABEL_25:
    if (v23)
    {
      goto LABEL_26;
    }

LABEL_27:
    if (v20 > 0x7FFFFFEF)
    {
      goto LABEL_28;
    }

    result = WTF::tryFastCompactMalloc((2 * v21 + 20));
    v17 = v43;
    if (!v43)
    {
      goto LABEL_56;
    }

    *v43 = 2;
    v17[1] = v20;
    *(v17 + 1) = v17 + 5;
    v17[4] = 0;
    v41 = v10;
    result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v41, v17 + 20);
    if (!v41)
    {
      break;
    }

    v27 = *(v41 + 1);
    if (v27 <= v20)
    {
      goto LABEL_45;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    v12 = 0;
    if (a5)
    {
      goto LABEL_7;
    }

LABEL_59:
    v13 = 0;
    if (a6)
    {
      goto LABEL_8;
    }
  }

  v27 = 0;
LABEL_45:
  v28 = v17 + 2 * v27 + 20;
  v10 = &v28[2 * v6];
  if (v6 >= 0x40)
  {
    v29 = v17 + 2 * v27 + 20;
    v28 += 2 * (v6 & 0x7FFFFFC0);
    v30 = 0uLL;
    do
    {
      v44.val[0] = *a3;
      v31 = *(a3 + 1);
      v45.val[0] = *(a3 + 2);
      v32 = *(a3 + 3);
      a3 += 64;
      v33 = v32;
      v45.val[1] = 0uLL;
      v46.val[0] = v31;
      v44.val[1] = 0uLL;
      v34 = v29;
      vst2q_s8(v34, v44);
      v34 += 32;
      v46.val[1] = 0uLL;
      vst2q_s8(v34, v46);
      v35 = (v29 + 64);
      vst2q_s8(v35, v45);
      v36 = (v29 + 96);
      vst2q_s8(v36, *(&v30 - 1));
      v29 += 128;
    }

    while (v29 != v28);
  }

  v37 = v21 - v27;
  while (v28 != v10)
  {
    v38 = *a3++;
    *v28 = v38;
    v28 += 2;
  }

  v39 = v37 >= v6;
  v6 = v37 - v6;
  if (!v39)
  {
    goto LABEL_57;
  }

  v42 = a5;
  result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v42, v10);
  v40 = v42;
  if (v42)
  {
    v40 = *(v42 + 4);
    if (v6 < v40)
    {
      goto LABEL_57;
    }
  }

  v43 = a6;
  result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v43, &v10[2 * v40]);
LABEL_56:
  *v11 = v17;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getAllKeys(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E5C0;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getAllKeys(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E5C0;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getAllKeys(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)> &&)::$_0,void>::call(uint64_t *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = a1[2];
  if (v2 && (WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v27, v2, a1[1]), (v3 = v27) != 0))
  {
    v26 = 0;
    AllKeysWithErrorMessage = WebKit::WebExtensionStorageSQLiteStore::getAllKeysWithErrorMessage(v25, v27, &v26);
    v5 = WTF::WorkQueue::mainSingleton(AllKeysWithErrorMessage);
    buf = 0uLL;
    _ZN3WTF6MapperIZNS_21CrossThreadCopierBaseILb0ELb0ENS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEE4copyERKS6_EUlRT_E_S6_S9_vE3mapERS6_S9_RKSC_(&buf, v25);
    WTF::String::isolatedCopy();
    v6 = a1[4];
    a1[4] = 0;
    v29[1] = v6;
    v7 = WTF::fastMalloc(0x28);
    *v7 = &unk_1F111E5E8;
    *(v7 + 8) = buf;
    v8 = *(&buf + 1);
    buf = 0uLL;
    *(v7 + 16) = v8;
    *(v7 + 24) = *v29;
    v29[0] = 0;
    v29[1] = 0;
    v24 = v7;
    (*(*v5 + 48))(v5, &v24);
    v10 = v24;
    v24 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v29[1];
    v29[1] = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v29[0];
    v29[0] = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf, v9);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25, v13);
    v15 = v26;
    v26 = 0;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v14);
      }
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref(v3 + 1, v14);
  }

  else
  {
    v17 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      WTF::String::utf8();
      v21 = v25[0] ? v25[0] + 16 : 0;
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v21;
      _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "Failed to retrieve all keys for extension %s.", &buf, 0xCu);
      v23 = v25[0];
      v25[0] = 0;
      if (v23)
      {
        if (*v23 == 1)
        {
          WTF::fastFree(v23, v22);
        }

        else
        {
          --*v23;
        }
      }
    }

    buf = 0uLL;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)>::operator()(a1 + 4, &buf, v18);
    v20 = v25[0];
    v25[0] = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v19);
    }

    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf, v19);
  }
}

uint64_t WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)>::operator()(uint64_t *a1, uint64_t *a2, __n128 a3)
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

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getAllKeys(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E5E8;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getAllKeys(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E5E8;
  v3 = *(a1 + 4);
  *(a1 + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 8, a2);

  return WTF::fastFree(a1, v5);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getAllKeys(WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v5, a1 + 8);
  WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)>::operator()((a1 + 32), v5, v2);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getValuesForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F111E610;
  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 4), a2);
  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getValuesForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)> &&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F111E610;
  v3 = *(a1 + 6);
  *(a1 + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 32, a2);
  v5 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, v4);
  }

  return WTF::fastFree(a1, v4);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getValuesForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)> &&)::$_0,void>::call(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 && (WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v35, v2, *(a1 + 8)), (v3 = v35) != 0))
  {
    v32 = 0;
    if (*(a1 + 44))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v33, a1 + 32);
      WebKit::WebExtensionStorageSQLiteStore::getValuesForKeysWithErrorMessage(&v37, v3, &v33, &v32);
      v5 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v4);
    }

    else
    {
      v5 = WebKit::WebExtensionSQLiteStore::openDatabaseIfNecessary(v35, &v32, 0);
      if ((v5 & 1) == 0)
      {
        goto LABEL_19;
      }

      v10 = *(v3 + 8);
      *v10 += 2;
      v33 = v10;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WebKit::SQLiteDatabaseFetch<>(&v33, &v37, buf);
      v12 = v37;
      v13 = *buf;
      v37 = 0;
      *buf = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v11);
      }

      v14 = v33;
      v33 = 0;
      if (v14)
      {
        WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v14, v11);
      }

      v5 = WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v10, v11);
      if (v13)
      {
        ++*v13;
        v36 = v13;
        WebKit::WebExtensionStorageSQLiteStore::getKeysAndValuesFromRowIterator(&v37, &v36);
        WTF::RefCounted<WebKit::WebExtensionSQLiteRowEnumerator>::deref(v13, v15);
        v5 = WTF::RefCounted<WebKit::WebExtensionSQLiteRowEnumerator>::deref(v13, v16);
      }

      else
      {
LABEL_19:
        v37 = 0;
      }
    }

    v17 = WTF::WorkQueue::mainSingleton(v5);
    WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy(&v37, buf);
    WTF::String::isolatedCopy();
    v18 = *(a1 + 48);
    *(a1 + 48) = 0;
    *&buf[16] = v18;
    v19 = WTF::fastMalloc(0x20);
    *v19 = &unk_1F111E638;
    *(v19 + 8) = *buf;
    v20 = *&buf[8];
    memset(buf, 0, sizeof(buf));
    *(v19 + 16) = v20;
    v36 = v19;
    (*(*v17 + 48))(v17, &v36);
    v22 = v36;
    v36 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = *&buf[16];
    *&buf[16] = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = *&buf[8];
    *&buf[8] = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v21);
    }

    if (*buf)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v21);
    }

    if (v37)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v37, v21);
    }

    v25 = v32;
    v32 = 0;
    if (v25)
    {
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v21);
      }
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref(v3 + 1, v21);
  }

  else
  {
    v6 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v33, a1 + 32);
      WebKit::rowFilterStringFromRowKeys(&v36, v33, v34);
      WTF::String::utf8();
      if (v37)
      {
        v26 = v37 + 16;
      }

      else
      {
        v26 = 0;
      }

      WTF::String::utf8();
      if (v32)
      {
        v27 = v32 + 16;
      }

      else
      {
        v27 = 0;
      }

      *buf = 136315394;
      *&buf[4] = v26;
      *&buf[12] = 2080;
      *&buf[14] = v27;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Failed to retrieve values for keys: %s for extension %s.", buf, 0x16u);
      v29 = v32;
      v32 = 0;
      if (v29)
      {
        if (*v29 == 1)
        {
          WTF::fastFree(v29, v28);
        }

        else
        {
          --*v29;
        }
      }

      v30 = v37;
      v37 = 0;
      if (v30)
      {
        if (*v30 == 1)
        {
          WTF::fastFree(v30, v28);
        }

        else
        {
          --*v30;
        }
      }

      v31 = v36;
      v36 = 0;
      if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v28);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v28);
    }

    *buf = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::CompletionHandler<void ()(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)>::operator()((a1 + 48), buf);
    v8 = v37;
    v37 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }

    result = *buf;
    if (*buf)
    {
      return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*buf, v7);
    }
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)>::operator()(uint64_t *a1, WTF::StringImpl ***a2)
{
  v2 = *a1;
  *a1 = 0;
  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  (*(*v2 + 16))(v2, &v6);
  if (v6)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v4);
  }

  return (*(*v2 + 8))(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getValuesForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E638;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[1];
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getValuesForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E638;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl **WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getValuesForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v4, (a1 + 8));
  WTF::CompletionHandler<void ()(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)>::operator()((a1 + 24), &v4);
  result = v4;
  if (v4)
  {
    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, v2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,WTF::String const&)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F111E660;
  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 3), a2);
  v5 = a1[2];
  a1[2] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref((v6 + 8), v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,WTF::String const&)> &&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F111E660;
  v3 = *(a1 + 5);
  *(a1 + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, a2);
  v5 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *(a1 + 1);
  *(a1 + 1) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref((v6 + 8), v4);
  }

  return WTF::fastFree(a1, v4);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,WTF::String const&)> &&)::$_0,void>::call(uint64_t a1)
{
  v41 = 0;
  if (*(a1 + 36))
  {
    v2 = *(a1 + 8);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v39, a1 + 24);
    WebKit::WebExtensionStorageSQLiteStore::getValuesForKeysWithErrorMessage(&v40, v2, v39, &v41);
    v4 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v3);
    v5 = WTF::WorkQueue::mainSingleton(v4);
    WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy(&v40, v37);
    WTF::String::isolatedCopy();
    v6 = *(a1 + 40);
    *(a1 + 40) = 0;
    v37[2] = v6;
    v7 = WTF::fastMalloc(0x20);
    *v7 = &unk_1F111E688;
    *(v7 + 8) = v37[0];
    v8 = *&v37[1];
    memset(v37, 0, sizeof(v37));
    v38 = v7;
    *(v7 + 16) = v8;
    (*(*v5 + 48))(v5, &v38);
    v10 = v38;
    v38 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v37[2];
    v37[2] = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v37[1];
    v37[1] = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }

    if (v37[0])
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v37[0], v9);
    }

    if (v40)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v40, v9);
    }

    goto LABEL_38;
  }

  v13 = WebKit::WebExtensionSQLiteStore::openDatabaseIfNecessary(*(a1 + 8), &v41, 0);
  if (v13)
  {
    v39[0] = 0;
    v14 = *(*(a1 + 8) + 64);
    *v14 += 2;
    v40 = v14;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WebKit::WebExtensionSQLiteStatement::create<WTF::Ref<WebKit::WebExtensionSQLiteDatabase,WTF::RawPtrTraits<WebKit::WebExtensionSQLiteDatabase>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionSQLiteDatabase>> &,WTF::String const&,WTF::RefPtr<API::Error,WTF::RawPtrTraits<API::Error>,WTF::DefaultRefDerefTraits<API::Error>> &>(&v40, &v38, v39, v37);
    v16 = v37[0];
    if (v39[0])
    {
      v17 = 0;
      v18 = 0;
      if (!v37[0])
      {
LABEL_27:
        v27 = v38;
        v38 = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v15);
        }

        v28 = v40;
        v40 = 0;
        if (v28)
        {
          WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v28, v15);
        }

        v29 = WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v14, v15);
        v30 = WTF::WorkQueue::mainSingleton(v29);
        v31 = v39[0];
        if (v39[0])
        {
          CFRetain(*(v39[0] + 8));
        }

        v32 = *(a1 + 40);
        *(a1 + 40) = 0;
        v33 = WTF::fastMalloc(0x20);
        *v33 = &unk_1F111E6D8;
        *(v33 + 1) = v18;
        *(v33 + 2) = v31;
        *(v33 + 3) = v32;
        v37[0] = v33;
        (*(*v30 + 48))(v30, v37);
        v34 = v37[0];
        v37[0] = 0;
        if (v34)
        {
          (*(*v34 + 8))(v34);
        }

        v35 = v39[0];
        v39[0] = 0;
        if (v35)
        {
          CFRelease(*(v35 + 8));
        }

        goto LABEL_38;
      }

LABEL_26:
      WTF::RefCounted<WebKit::WebExtensionSQLiteStatement>::deref(v16, v15);
      v18 = v17;
      goto LABEL_27;
    }

    v23 = v40;
    ++*v40;
    v24 = *(v16 + 1);
    v25 = sqlite3_step(v24);
    if (v25 == 100)
    {
      v17 = sqlite3_column_int64(v24, 0);
      v26 = sqlite3_step(v24);
      if (v26 == 101)
      {
        goto LABEL_25;
      }
    }

    else
    {
      LODWORD(v26) = v25;
      v17 = 0;
    }

    WebKit::WebExtensionSQLiteDatabase::reportErrorWithCode(v23, v26, v24, v39);
LABEL_25:
    WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v23, v26);
    WebKit::WebExtensionSQLiteStatement::invalidate(v16);
    goto LABEL_26;
  }

  v19 = WTF::WorkQueue::mainSingleton(v13);
  WTF::String::isolatedCopy();
  v20 = *(a1 + 40);
  *(a1 + 40) = 0;
  v37[1] = v20;
  v21 = WTF::fastMalloc(0x18);
  *v21 = &unk_1F111E6B0;
  *(v21 + 8) = *v37;
  v37[0] = 0;
  v37[1] = 0;
  v39[0] = v21;
  (*(*v19 + 48))(v19, v39);
  v22 = v39[0];
  v39[0] = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v37[1] = 0;
  v37[0] = 0;
LABEL_38:
  result = v41;
  v41 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v9);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E688;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[1];
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E688;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl **WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v6, (a1 + 8));
  v2 = WebKit::storageSizeOf(&v6);
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  (*(*v3 + 16))(v3, v2, a1 + 16);
  (*(*v3 + 8))(v3);
  result = v6;
  if (v6)
  {
    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v4);
  }

  return result;
}

uint64_t WebKit::storageSizeOf(uint64_t **a1)
{
  v2 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(a1);
  v4 = *a1;
  if (*a1)
  {
    v4 += 2 * *(v4 - 1);
  }

  if (v4 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *v2;
      if (*v2)
      {
        v6 = (*(v6 + 4) << ((*(v6 + 16) & 4) == 0));
      }

      do
      {
        v2 += 2;
      }

      while (v2 != v3 && (*v2 + 1) <= 1);
      v5 += v6;
    }

    while (v2 != v4);
  }

  v7 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(a1);
  v9 = *a1;
  if (*a1)
  {
    v9 += 2 * *(v9 - 1);
  }

  for (; v7 != v9; v5 += v10)
  {
    v10 = v7[1];
    if (v10)
    {
      v10 = (*(v10 + 4) << ((*(v10 + 16) & 4) == 0));
    }

    do
    {
      v7 += 2;
    }

    while (v7 != v8 && (*v7 + 1) <= 1);
  }

  return v5;
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#2},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E6B0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#2},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E6B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#2},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1, 0, a1 + 8);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#3},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F111E6D8;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#3},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F111E6D8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#3},void>::call(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1[2];
  if (v2)
  {
    v3 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      MEMORY[0x19EB12BA0](v2 + 16);
      WTF::String::utf8();
      if (v11)
      {
        v9 = v11 + 16;
      }

      else
      {
        v9 = 0;
      }

      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, "Failed to calculate storage size for keys: %s", buf, 0xCu);
      if (v11)
      {
        if (*v11 == 1)
        {
          WTF::fastFree(v11, v10);
        }

        else
        {
          --*v11;
        }
      }

      v2 = a1[2];
    }

    MEMORY[0x19EB12BA0](v2 + 16);
    v4 = a1[3];
    a1[3] = 0;
    (*(*v4 + 16))(v4, 0, v2 + 64);
    return (*(*v4 + 8))(v4);
  }

  else
  {
    v6 = a1[1];
    *buf = 0;
    v7 = a1[3];
    a1[3] = 0;
    (*(*v7 + 16))(v7, v6, buf);
    (*(*v7 + 8))(v7);
    result = *buf;
    *buf = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForAllKeys(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,int,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)> &&)::$_0,void,unsigned long,WTF::String const&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E700;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref((v5 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForAllKeys(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,int,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)> &&)::$_0,void,unsigned long,WTF::String const&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E700;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref((v5 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl **WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForAllKeys(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,int,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)> &&)::$_0,void,unsigned long,WTF::String const&>::call(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (*a3 && *(*a3 + 4))
  {
    v21 = 0;
    WTF::CompletionHandler<void ()(unsigned long,int,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)>::operator()((a1 + 32), 0, 0, &v21);
    result = v21;
    if (v21)
    {

      return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(result, v6);
    }
  }

  else
  {
    v8 = v5[9];
    v21 = *(a1 + 8);
    v9 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(v5 + 1);
    v22[0] = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v9);
    v10 = v5[2];
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    v20 = v10;
    WTF::String::isolatedCopy();
    v23 = a2;
    WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy((a1 + 24), &v24);
    v11 = *(a1 + 32);
    *(a1 + 32) = 0;
    *(&v24 + 1) = v11;
    v12 = WTF::fastMalloc(0x38);
    *v12 = &unk_1F111E728;
    v13 = v21;
    v21 = 0;
    *(v12 + 8) = v13;
    *(v12 + 16) = v22[0];
    v14 = v22[1];
    *v22 = 0u;
    *(v12 + 24) = v14;
    *(v12 + 32) = v23;
    *(v12 + 40) = v24;
    v24 = 0u;
    v25 = v12;
    (*(*v8 + 48))(v8, &v25);
    v16 = v25;
    v25 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = *(&v24 + 1);
    *(&v24 + 1) = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    if (v24)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v24, v15);
    }

    v18 = v22[1];
    v22[1] = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v15);
    }

    v19 = v22[0];
    v22[0] = 0;
    if (v19)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v19, v15);
    }

    result = v20;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v20, v15);
    }
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(unsigned long,int,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)>::operator()(uint64_t *a1, uint64_t a2, uint64_t a3, WTF::StringImpl ***a4)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *a4;
  *a4 = 0;
  v8 = v5;
  (*(*v4 + 16))(v4, a2, a3, &v8);
  if (v8)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, v6);
  }

  return (*(*v4 + 8))(v4);
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForAllKeys(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,int,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)> &&)::$_0::operator()(unsigned long,WTF::String const&)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E728;
  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForAllKeys(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,int,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)> &&)::$_0::operator()(unsigned long,WTF::String const&)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E728;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v6, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForAllKeys(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,int,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)> &&)::$_0::operator()(unsigned long,WTF::String const&)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 && (WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v54, v2, *(a1 + 8)), (v3 = v54) != 0))
  {
    v53 = 0;
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v50, (a1 + 40));
    WebKit::toVector(v51, &v50);
    WebKit::WebExtensionStorageSQLiteStore::getValuesForKeysWithErrorMessage(&v52, v3, v51, &v53);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v51, v4);
    if (v50)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v50, v5);
    }

    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v49, &v52);
    v7 = WebKit::storageSizeOf(&v49);
    if (v49)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v49, v6);
    }

    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v48, (a1 + 40));
    v9 = WebKit::storageSizeOf(&v48);
    if (v48)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v48, v8);
    }

    v10 = *(a1 + 32);
    WebKit::WebExtensionStorageSQLiteStore::getAllKeysWithErrorMessage(&v45, v3, &v53);
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v44, (a1 + 40));
    WebKit::toVector(&buf, &v44);
    v12 = HIDWORD(buf);
    v13 = HIDWORD(buf) + v47;
    if (v13 > v46)
    {
      if (v46 + (v46 >> 1) <= v46 + 1)
      {
        v14 = v46 + 1;
      }

      else
      {
        v14 = v46 + (v46 >> 1);
      }

      if (v14 > v13)
      {
        v13 = v14;
      }

      if (v13 <= 0x10)
      {
        v15 = 16;
      }

      else
      {
        v15 = v13;
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v45, v15);
      v12 = HIDWORD(buf);
    }

    if (v12)
    {
      v16 = buf;
      v17 = v47;
      v18 = 8 * v12;
      do
      {
        v19 = v45;
        v20 = *v16;
        *v16++ = 0;
        *(v19 + v17++) = v20;
        v18 -= 8;
      }

      while (v18);
      v47 = v17;
    }

    v21 = v9 - v7 + v10;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf, v11);
    v23 = v44;
    if (v44)
    {
      v23 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v44, v22);
    }

    v24 = WTF::WorkQueue::mainSingleton(v23);
    v56 = 0;
    buf = v21;
    _ZN3WTF6MapperIZNS_21CrossThreadCopierBaseILb0ELb0ENS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEE4copyERKS6_EUlRT_E_S6_S9_vE3mapERS6_S9_RKSC_(&buf + 8, &v45);
    WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy(&v52, &v57);
    WTF::String::isolatedCopy();
    v25 = *(a1 + 48);
    *(a1 + 48) = 0;
    v58[1] = v25;
    v26 = WTF::fastMalloc(0x38);
    *v26 = &unk_1F111E750;
    *(v26 + 8) = buf;
    v27 = v56;
    *(&buf + 1) = 0;
    v56 = 0;
    *(v26 + 24) = v27;
    *(v26 + 32) = v57;
    v28 = *v58;
    v57 = 0;
    v58[0] = 0;
    v58[1] = 0;
    *(v26 + 40) = v28;
    v43 = v26;
    (*(*v24 + 48))(v24, &v43);
    v30 = v43;
    v43 = 0;
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    v31 = v58[1];
    v58[1] = 0;
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    v32 = v58[0];
    v58[0] = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v29);
    }

    if (v57)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v57, v29);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf + 8, v29);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, v33);
    if (v52)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v52, v34);
    }

    v35 = v53;
    v53 = 0;
    if (v35)
    {
      if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v34);
      }
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref((v3 + 8), v34);
  }

  else
  {
    v37 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      WTF::String::utf8();
      v40 = v51[0] ? v51[0] + 16 : 0;
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v40;
      _os_log_error_impl(&dword_19D52D000, v37, OS_LOG_TYPE_ERROR, "Failed to calculate storage size for extension %s.", &buf, 0xCu);
      v42 = v51[0];
      v51[0] = 0;
      if (v42)
      {
        if (*v42 == 1)
        {
          WTF::fastFree(v42, v41);
        }

        else
        {
          --*v42;
        }
      }
    }

    v51[0] = 0;
    *&buf = "Failed to calculate storage size";
    *(&buf + 1) = 33;
    result = WTF::tryMakeString<WTF::ASCIILiteral>(&buf, &v45);
    if (v45)
    {
      WTF::CompletionHandler<void ()(unsigned long,int,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)>::operator()((a1 + 48), 0, 0, v51);
      v39 = v45;
      v45 = 0;
      if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v38);
      }

      result = v51[0];
      if (v51[0])
      {
        return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v51[0], v38);
      }
    }

    else
    {
      __break(0xC471u);
    }
  }

  return result;
}

uint64_t WebKit::toVector(uint64_t a1, void **a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(a2);
  v5 = result;
  v7 = v6;
  v8 = 0;
  if (*a2)
  {
    v8 = &(*a2)[2 * *(*a2 - 1)];
  }

  if (v8 != result)
  {
    do
    {
      v9 = *(a1 + 12);
      if (v9 == *(a1 + 8))
      {
        result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(a1, v5);
      }

      else
      {
        v10 = *a1;
        v11 = *v5;
        if (*v5)
        {
          atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
        }

        v12 = *(a1 + 12);
        *(v10 + 8 * v9) = v11;
        *(a1 + 12) = v12 + 1;
      }

      do
      {
        v5 += 2;
      }

      while (v5 != v7 && *v5 + 1 <= 1);
    }

    while (v5 != v8);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForAllKeys(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,int,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)> &&)::$_0::operator()(unsigned long,WTF::String const&)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E750;
  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[4];
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 2), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForAllKeys(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,int,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)> &&)::$_0::operator()(unsigned long,WTF::String const&)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E750;
  v3 = *(a1 + 6);
  *(a1 + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 5);
  *(a1 + 5) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(a1 + 4);
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 16, a2);

  return WTF::fastFree(a1, v6);
}

WTF::StringImpl **WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::getStorageSizeForAllKeys(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::CompletionHandler<void ()(unsigned long,int,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)> &&)::$_0::operator()(unsigned long,WTF::String const&)::{lambda(void)#1}::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 28);
  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v6, (a1 + 32));
  WTF::CompletionHandler<void ()(unsigned long,int,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)>::operator()((a1 + 48), v2, v3, &v6);
  result = v6;
  if (v6)
  {
    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v4);
  }

  return result;
}

const WTF::StringImpl *WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>@<X0>(uint64_t *a1@<X0>, const WTF::StringImpl **a2@<X1>, const WTF::StringImpl *a3@<X2>, atomic_uint **a4@<X8>)
{
  result = *a2;
  if (*a2 == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19E10BF08);
  }

  v7 = *a1;
  if (*a1)
  {
    v9 = *(v7 - 8);
    v10 = *(result + 4);
    if (v10 < 0x100)
    {
      v11 = WTF::StringImpl::hashSlowCase(result);
    }

    else
    {
      v11 = v10 >> 8;
    }

    for (i = 0; ; v11 = i + v13)
    {
      v13 = v11 & v9;
      result = *(v7 + 16 * v13);
      if (result != -1)
      {
        if (!result)
        {
          goto LABEL_11;
        }

        result = WTF::equal(result, *a2, a3);
        if (result)
        {
          break;
        }
      }

      ++i;
    }

    v14 = *(v7 + 16 * v13 + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    }
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  *a4 = v14;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::setKeyedData(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E778;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::setKeyedData(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)> &&)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E778;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::setKeyedData(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)> &&)::$_0,void>::call(uint64_t a1)
{
  v92 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 && (WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v87, v2, *(a1 + 8)), (v3 = v87) != 0))
  {
    v82 = 0;
    v4 = WebKit::WebExtensionSQLiteStore::openDatabaseIfNecessary(v87, &v82, 1);
    if (v4)
    {
      v85 = 0;
      v86 = 0;
      v5 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin((a1 + 24));
      v7 = v5;
      v9 = v8;
      v10 = 0;
      v11 = *(a1 + 24);
      if (v11)
      {
        v10 = (v11 + 16 * *(v11 - 4));
      }

      if (v10 != v5)
      {
        while (1)
        {
          v12 = *v7;
          if (*v7)
          {
            atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
          }

          v81 = v12;
          WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,WTF::String>((a1 + 24), &v81, v6, &v80);
          v13 = *(v3 + 8);
          *v13 += 3;
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          ++*v13;
          v89 = 0;
          v90 = v13;
          *buf = 0;
          WebKit::WebExtensionSQLiteStatement::create<WTF::Ref<WebKit::WebExtensionSQLiteDatabase,WTF::RawPtrTraits<WebKit::WebExtensionSQLiteDatabase>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionSQLiteDatabase>> &,WTF::String const&,WTF::RefPtr<API::Error,WTF::RawPtrTraits<API::Error>,WTF::DefaultRefDerefTraits<API::Error>> &>(&v90, &v88, buf, &v83);
          v14 = v83;
          if (v83)
          {
            *v83 += 3;
            WebKit::WebExtensionSQLiteStatement::bind(v14, &v81, 1);
            WTF::RefCounted<WebKit::WebExtensionSQLiteStatement>::deref(v14, v15);
            *v14 += 2;
            WebKit::WebExtensionSQLiteStatement::bind(v14, &v80, 2);
            WTF::RefCounted<WebKit::WebExtensionSQLiteStatement>::deref(v14, v16);
            ++*v14;
            WTF::RefCounted<WebKit::WebExtensionSQLiteStatement>::deref(v14, v17);
            WTF::RefCounted<WebKit::WebExtensionSQLiteStatement>::deref(v14, v18);
            WTF::RefCounted<WebKit::WebExtensionSQLiteStatement>::deref(v14, v19);
            WTF::RefCounted<WebKit::WebExtensionSQLiteStatement>::deref(v14, v20);
            v21 = *(v14 + 2);
            ++*v21;
            WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v21, v22);
            v23 = sqlite3_step(*(v14 + 1));
            WebKit::WebExtensionSQLiteStatement::invalidate(v14);
            if ((v23 - 100) >= 2 && v23)
            {
              WebKit::WebExtensionSQLiteDatabase::reportErrorWithCode(v90, v23, *(v14 + 1), &v89);
            }

            WTF::RefCounted<WebKit::WebExtensionSQLiteStatement>::deref(v14, v24);
          }

          else
          {
            v26 = *buf;
            MEMORY[0x19EB12BA0](*buf + 16);
            v23 = *(v26 + 72);
          }

          v27 = *buf;
          *buf = 0;
          if (v27)
          {
            CFRelease(*(v27 + 8));
          }

          if (v89)
          {
            CFRelease(*(v89 + 1));
          }

          v28 = v90;
          v90 = 0;
          if (v28)
          {
            WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v28, v25);
          }

          v29 = v88;
          v88 = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v25);
          }

          WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v13, v25);
          if (v23 == 101)
          {
            v31 = *MEMORY[0x1E696EBA0];
            if (*MEMORY[0x1E696EBA0])
            {
              atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
            }

            v90 = v31;
          }

          else
          {
            v32 = qword_1ED640AB8;
            if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
            {
              WTF::String::utf8();
              if (v83)
              {
                v47 = v83 + 16;
              }

              else
              {
                v47 = 0;
              }

              v79 = v47;
              WTF::String::utf8();
              if (v90)
              {
                v48 = v90 + 16;
              }

              else
              {
                v48 = 0;
              }

              v49 = *(v3 + 2);
              if (v49)
              {
                atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
              }

              v88 = v49;
              WTF::String::utf8();
              if (v89)
              {
                v50 = v89 + 16;
              }

              else
              {
                v50 = 0;
              }

              *buf = 136315650;
              *&buf[4] = v79;
              *&buf[12] = 2080;
              *&buf[14] = v48;
              *&buf[22] = 2080;
              *&buf[24] = v50;
              _os_log_error_impl(&dword_19D52D000, v32, OS_LOG_TYPE_ERROR, "Failed to insert value %s for key %s for extension %s.", buf, 0x20u);
              v52 = v89;
              v89 = 0;
              if (v52)
              {
                if (*v52 == 1)
                {
                  WTF::fastFree(v52, v51);
                }

                else
                {
                  --*v52;
                }
              }

              v53 = v88;
              v88 = 0;
              if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v53, v51);
              }

              v54 = v90;
              v90 = 0;
              if (v54)
              {
                if (*v54 == 1)
                {
                  WTF::fastFree(v54, v51);
                }

                else
                {
                  --*v54;
                }
              }

              v55 = v83;
              v83 = 0;
              if (v55)
              {
                if (*v55 == 1)
                {
                  WTF::fastFree(v55, v51);
                }

                else
                {
                  --*v55;
                }
              }
            }

            v33 = v80;
            if (v80)
            {
              atomic_fetch_add_explicit(v80, 2u, memory_order_relaxed);
            }

            *buf = v33;
            v34 = v81;
            if (v81)
            {
              atomic_fetch_add_explicit(v81, 2u, memory_order_relaxed);
            }

            v83 = v34;
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Failed to insert value ", 24, buf, " for key ", 10, &v83, &v90);
            v35 = v83;
            v83 = 0;
            if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v35, v30);
            }

            v36 = *buf;
            *buf = 0;
            if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v36, v30);
            }
          }

          v37 = v90;
          v90 = 0;
          v38 = v82;
          v82 = v37;
          if (v38)
          {
            if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v38, v30);
            }

            v39 = v90;
            v90 = 0;
            if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v39, v30);
            }
          }

          WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v13, v30);
          WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v13, v40);
          v42 = v80;
          v80 = 0;
          if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v42, v41);
          }

          if (v82 && *(v82 + 1))
          {
            break;
          }

          v43 = HIDWORD(v86);
          if (HIDWORD(v86) == v86)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String&>(&v85, &v81);
          }

          else
          {
            v44 = v85;
            v45 = v81;
            if (v81)
            {
              atomic_fetch_add_explicit(v81, 2u, memory_order_relaxed);
            }

            v46 = HIDWORD(v86);
            *(v44 + 8 * v43) = v45;
            HIDWORD(v86) = v46 + 1;
          }

          v5 = v81;
          v81 = 0;
          if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            v5 = WTF::StringImpl::destroy(v5, v41);
          }

          do
          {
            v7 += 2;
          }

          while (v7 != v9 && *v7 + 1 <= 1);
          if (v7 == v10)
          {
            goto LABEL_108;
          }
        }

        v5 = v81;
        v81 = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v5 = WTF::StringImpl::destroy(v5, v41);
        }
      }

LABEL_108:
      v69 = WTF::WorkQueue::mainSingleton(v5);
      *buf = 0;
      *&buf[8] = 0;
      _ZN3WTF6MapperIZNS_21CrossThreadCopierBaseILb0ELb0ENS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEE4copyERKS6_EUlRT_E_S6_S9_vE3mapERS6_S9_RKSC_(buf, &v85);
      WTF::String::isolatedCopy();
      v70 = *(a1 + 32);
      *(a1 + 32) = 0;
      *&buf[24] = v70;
      v71 = WTF::fastMalloc(0x28);
      *v71 = &unk_1F111E7C8;
      *(v71 + 8) = *buf;
      v72 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;
      *(v71 + 16) = v72;
      *(v71 + 24) = *&buf[16];
      *&buf[16] = 0;
      *&buf[24] = 0;
      v83 = v71;
      (*(*v69 + 48))(v69, &v83);
      v74 = v83;
      v83 = 0;
      if (v74)
      {
        (*(*v74 + 8))(v74);
      }

      v75 = *&buf[24];
      *&buf[24] = 0;
      if (v75)
      {
        (*(*v75 + 8))(v75);
      }

      v76 = *&buf[16];
      *&buf[16] = 0;
      if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v76, v73);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v73);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v85, v77);
    }

    else
    {
      v62 = WTF::WorkQueue::mainSingleton(v4);
      WTF::String::isolatedCopy();
      v63 = *(a1 + 32);
      *(a1 + 32) = 0;
      *&buf[8] = v63;
      v64 = WTF::fastMalloc(0x18);
      *v64 = &unk_1F111E7A0;
      *(v64 + 8) = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v85 = v64;
      (*(*v62 + 48))(v62, &v85);
      v66 = v85;
      v85 = 0;
      if (v66)
      {
        (*(*v66 + 8))(v66);
      }

      v67 = *&buf[8];
      *&buf[8] = 0;
      if (v67)
      {
        (*(*v67 + 8))(v67);
      }

      v68 = *buf;
      *buf = 0;
      if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v68, v65);
      }
    }

    v78 = v82;
    v82 = 0;
    if (v78)
    {
      if (atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v78, v65);
      }
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref(v3 + 1, v65);
  }

  else
  {
    v85 = 0;
    v86 = 0;
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v88, (a1 + 24));
    WebKit::toVector(&v83, &v88);
    WebKit::rowFilterStringFromRowKeys(&v89, v83, v84);
    *buf = "Failed to set keys: ";
    *&buf[8] = 21;
    result = WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(buf, &v89, &v90);
    if (v90)
    {
      WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)>::operator()((a1 + 32), &v85, v57);
      v59 = v90;
      v90 = 0;
      if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v59, v58);
      }

      v60 = v89;
      v89 = 0;
      if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v60, v58);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v83, v58);
      if (v88)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v88, v61);
      }

      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v85, v61);
    }

    else
    {
      __break(0xC471u);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::setKeyedData(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E7A0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::setKeyedData(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E7A0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::setKeyedData(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1, __n128 a2)
{
  v4[0] = 0;
  v4[1] = 0;
  WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)>::operator()((a1 + 16), v4, a2);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, v2);
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::setKeyedData(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#2},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E7C8;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::setKeyedData(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#2},void>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E7C8;
  v3 = *(a1 + 4);
  *(a1 + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 8, a2);

  return WTF::fastFree(a1, v5);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::setKeyedData(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#2},void>::call(uint64_t a1)
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v5, a1 + 8);
  WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&)>::operator()((a1 + 32), v5, v2);
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::deleteValuesForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F111E7F0;
  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 3), a2);
  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v5, v4);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::deleteValuesForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F111E7F0;
  v3 = *(a1 + 5);
  *(a1 + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 24, a2);
  v5 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v5, v4);
  }

  return WTF::fastFree(a1, v4);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::deleteValuesForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0,void>::call(uint64_t *a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = a1[2];
  if (v2)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v60, v2, a1[1]);
    v3 = v60;
    if (v60)
    {
      v57 = 0;
      v4 = WebKit::WebExtensionSQLiteStore::openDatabaseIfNecessary(v60, &v57, 0);
      if (!v4)
      {
        v34 = WTF::WorkQueue::mainSingleton(v4);
        WTF::String::isolatedCopy();
        v35 = a1[5];
        a1[5] = 0;
        *&buf[8] = v35;
        v36 = WTF::fastMalloc(0x18);
        *v36 = &unk_1F111E818;
        *(v36 + 8) = *buf;
        *buf = 0;
        *&buf[8] = 0;
        v58 = v36;
        (*(*v34 + 48))(v34, &v58);
        v37 = v58;
        v58 = 0;
        if (v37)
        {
          (*(*v37 + 1))(v37);
        }

        v38 = *&buf[8];
        *&buf[8] = 0;
        if (v38)
        {
          (*(*v38 + 8))(v38);
        }

        v28 = *buf;
        *buf = 0;
        if (!v28)
        {
          goto LABEL_52;
        }

LABEL_50:
        if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, v23);
        }

LABEL_52:
        v39 = v57;
        v57 = 0;
        if (v39)
        {
          if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v39, v23);
          }
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref(v3 + 1, v23);
      }

      v5 = *(v3 + 8);
      *v5 += 2;
      v56 = v5;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v58, (a1 + 3));
      WebKit::rowFilterStringFromRowKeys(&v55, v58, v59);
      WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("DELETE FROM extension_storage WHERE key in (", 45, &v55, ")", 2, buf);
      v7 = WebKit::SQLiteDatabaseExecute<>(&v56, buf);
      v8 = *buf;
      *buf = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v6);
      }

      v9 = v55;
      v55 = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v6);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v58, v6);
      v11 = v56;
      v56 = 0;
      if (v11)
      {
        WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v11, v10);
      }

      WTF::RefCounted<WebKit::WebExtensionSQLiteDatabase>::deref(v5, v10);
      if (v7 == 101)
      {
LABEL_25:
        v18 = WebKit::WebExtensionSQLiteStore::deleteDatabaseIfEmpty(v3, &v54);
        v19 = WTF::WorkQueue::mainSingleton(v18);
        WTF::String::isolatedCopy();
        WTF::String::isolatedCopy();
        v20 = a1[5];
        a1[5] = 0;
        *&buf[16] = v20;
        v21 = WTF::fastMalloc(0x20);
        *v21 = &unk_1F111E840;
        *(v21 + 8) = *buf;
        v22 = *&buf[8];
        memset(buf, 0, sizeof(buf));
        *(v21 + 16) = v22;
        v50 = v21;
        (*(*v19 + 48))(v19, &v50);
        v24 = v50;
        v50 = 0;
        if (v24)
        {
          (*(*v24 + 8))(v24);
        }

        v25 = *&buf[16];
        *&buf[16] = 0;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }

        v26 = *&buf[8];
        *&buf[8] = 0;
        if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v26, v23);
        }

        v27 = *buf;
        *buf = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v23);
        }

        v28 = v54;
        v54 = 0;
        if (!v28)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v12 = qword_1ED640AB8;
      if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v52, (a1 + 3));
        WebKit::rowFilterStringFromRowKeys(&v54, v52, v53);
        WTF::String::utf8();
        if (v48)
        {
          v40 = v48 + 16;
        }

        else
        {
          v40 = 0;
        }

        v41 = *(v3 + 2);
        if (v41)
        {
          atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
        }

        v50 = v41;
        WTF::String::utf8();
        if (v51)
        {
          v42 = v51 + 16;
        }

        else
        {
          v42 = 0;
        }

        *buf = 136315394;
        *&buf[4] = v40;
        *&buf[12] = 2080;
        *&buf[14] = v42;
        _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "Failed to delete keys %s for extension %s.", buf, 0x16u);
        v44 = v51;
        v51 = 0;
        if (v44)
        {
          if (*v44 == 1)
          {
            WTF::fastFree(v44, v43);
          }

          else
          {
            --*v44;
          }
        }

        v45 = v50;
        v50 = 0;
        if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v45, v43);
        }

        v46 = v48;
        v48 = 0;
        if (v46)
        {
          if (*v46 == 1)
          {
            WTF::fastFree(v46, v43);
          }

          else
          {
            --*v46;
          }
        }

        v47 = v54;
        v54 = 0;
        if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v47, v43);
        }

        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v52, v43);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v48, (a1 + 3));
      WebKit::rowFilterStringFromRowKeys(&v51, v48, v49);
      *buf = "Failed to delete keys ";
      *&buf[8] = 23;
      WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(buf, &v51, &v54);
      v14 = v54;
      if (v54)
      {
        v54 = 0;
        v15 = v57;
        v57 = v14;
        if (v15)
        {
          if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v13);
          }

          v16 = v54;
          v54 = 0;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v13);
          }
        }

        v17 = v51;
        v51 = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v13);
        }

        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v48, v13);
        goto LABEL_25;
      }

LABEL_79:
      __break(0xC471u);
      JUMPOUT(0x19E10D454);
    }
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v58, (a1 + 3));
  WebKit::rowFilterStringFromRowKeys(&v48, v58, v59);
  *buf = "Failed to delete keys: ";
  *&buf[8] = 24;
  WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(buf, &v48, &v52);
  if (!v52)
  {
    goto LABEL_79;
  }

  v29 = a1[5];
  a1[5] = 0;
  (*(*v29 + 16))(v29, &v52);
  (*(*v29 + 8))(v29);
  v31 = v52;
  v52 = 0;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v30);
  }

  v32 = v48;
  v48 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v30);
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v58, v30);
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::deleteValuesForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E818;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::deleteValuesForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E818;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::deleteValuesForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1, a1 + 8);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::deleteValuesForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#2},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E840;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::deleteValuesForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#2},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E840;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionStorageSQLiteStore::deleteValuesForKeys(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::String const&)> &&)::$_0::operator()(void)::{lambda(void)#2},void>::call(uint64_t a1)
{
  v1 = a1 + 16;
  v2 = *(a1 + 16);
  if (!v2 || !*(v2 + 4))
  {
    v1 = a1 + 8;
  }

  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  (*(*v3 + 16))(v3, v1);
  v4 = *(*v3 + 8);

  return v4(v3);
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageGet(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::String,WTF::String> &&)> &&)::$_0,void,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E868;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageGet(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::String,WTF::String> &&)> &&)::$_0,void,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E868;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl **WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageGet(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::String,WTF::String> &&)> &&)::$_0,void,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&>::call(uint64_t *a1, WTF::StringImpl ***a2, atomic_uint **a3)
{
  v4 = *a2;
  *a2 = 0;
  v31 = v4;
  if (*a3 && (*a3)[1])
  {
    WebKit::toWebExtensionError<>(a1 + 1, MEMORY[0x1E696EBA0], a3, &v32);
    v5 = v32;
    v32 = 0;
    v36 = v5;
    v37 = 1;
    v6 = a1[2];
    a1[2] = 0;
    (*(*v6 + 16))(v6, &v36);
    (*(*v6 + 8))(v6);
    std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(&v36, v7);
    v9 = v32;
    v32 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }
  }

  else
  {
    WTF::JSONImpl::Object::create(&v34, a1);
    v10 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(&v31);
    v12 = v10;
    v13 = v11;
    if (v31)
    {
      v14 = &v31[2 * *(v31 - 1)];
    }

    else
    {
      v14 = 0;
    }

    if (v14 != v10)
    {
      do
      {
        v15 = *v12;
        if (*v12)
        {
          atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
        }

        v32 = v15;
        v16 = v12[1];
        if (v16)
        {
          atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
        }

        v33 = v16;
        v17 = v34;
        WTF::JSONImpl::Value::create(&v35, &v33, v11);
        WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(v17 + 2, &v32, &v35, &v36);
        if (v38 == 1)
        {
          v18 = *(v17 + 9);
          if (v18 == *(v17 + 8))
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v17 + 24, &v32);
          }

          else
          {
            v19 = *(v17 + 3);
            v20 = v32;
            if (v32)
            {
              atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
            }

            v21 = *(v17 + 9);
            *(v19 + 8 * v18) = v20;
            *(v17 + 9) = v21 + 1;
          }
        }

        v22 = v35;
        v35 = 0;
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

        v23 = v33;
        v33 = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v11);
        }

        v24 = v32;
        v32 = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v11);
        }

        do
        {
          v12 += 2;
        }

        while (v12 != v13 && *v12 + 1 <= 1);
      }

      while (v12 != v14);
    }

    WTF::JSONImpl::Value::toJSONString(&v32, v34);
    v25 = v32;
    v32 = 0;
    v36 = v25;
    v37 = 0;
    v26 = a1[2];
    a1[2] = 0;
    (*(*v26 + 16))(v26, &v36);
    (*(*v26 + 8))(v26);
    std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>::~expected(&v36, v27);
    v28 = v32;
    v32 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v8);
    }

    v29 = v34;
    v34 = 0;
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

  result = v31;
  if (v31)
  {
    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v31, v8);
  }

  return result;
}

uint64_t WebKit::toWebExtensionError<>@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X1>, atomic_uint **a3@<X2>, void *a4@<X8>)
{
  v5 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  WebKit::toErrorString(a1, a2, &v9, v5);
  result = v8;
  *a4 = v9;
  v9 = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v8, v6);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageGetKeys(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String> &&)> &&)::$_0,void,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E890;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageGetKeys(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String> &&)> &&)::$_0,void,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E890;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageGetKeys(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String> &&)> &&)::$_0,void,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String const&>::call(uint64_t a1, void *a2, atomic_uint **a3)
{
  v13[0] = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v13[1] = v4;
  if (*a3 && (*a3)[1])
  {
    WebKit::toWebExtensionError<>((a1 + 8), MEMORY[0x1E696EBA0], a3, &v14);
    v5 = v14;
    v14 = 0;
    v15[0] = v5;
    v16 = 1;
    v6 = *(a1 + 16);
    *(a1 + 16) = 0;
    (*(*v6 + 16))(v6, v15);
    (*(*v6 + 8))(v6);
    std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>::~expected(v15, v7);
    v9 = v14;
    v14 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }
  }

  else
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v15, v13);
    v16 = 0;
    v10 = *(a1 + 16);
    *(a1 + 16) = 0;
    (*(*v10 + 16))(v10, v15);
    (*(*v10 + 8))(v10);
    std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>::~expected(v15, v11);
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v8);
}

uint64_t std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>::~expected(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 16) != 255)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
      *a1 = 0;
      if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }

    else
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1, a2);
    }
  }

  *(a1 + 16) = -1;
  return a1;
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageGetBytesInUse(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<unsigned long long,WTF::String> &&)> &&)::$_0,void,unsigned long,WTF::String const&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E8B8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageGetBytesInUse(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<unsigned long long,WTF::String> &&)> &&)::$_0,void,unsigned long,WTF::String const&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E8B8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageGetBytesInUse(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<unsigned long long,WTF::String> &&)> &&)::$_0,void,unsigned long,WTF::String const&>::call(uint64_t a1, WTF::StringImpl *a2, atomic_uint **a3)
{
  if (*a3 && (*a3)[1])
  {
    WebKit::toWebExtensionError<>((a1 + 8), MEMORY[0x1E696EBA0], a3, &v11);
    v4 = v11;
    v11 = 0;
    v12 = v4;
    v13 = 1;
    v5 = *(a1 + 16);
    *(a1 + 16) = 0;
    (*(*v5 + 16))(v5, &v12);
    (*(*v5 + 8))(v5);
    mpark::detail::move_constructor<mpark::detail::traits<BOOL,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&v12, v6);
    result = v11;
    v11 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = 0;
    v9 = *(a1 + 16);
    *(a1 + 16) = 0;
    (*(*v9 + 16))(v9, &v12);
    (*(*v9 + 8))(v9);
    return mpark::detail::move_constructor<mpark::detail::traits<BOOL,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&v12, v10);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageSet(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::String const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String> &&)> &&)::$_0,void,unsigned long,int,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E8E0;
  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageSet(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::String const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String> &&)> &&)::$_0,void,unsigned long,int,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E8E0;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  return WTF::fastFree(this, a2);
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageSet(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::String const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String> &&)> &&)::$_0,void,unsigned long,int,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&>::call(uint64_t a1, unint64_t a2, unsigned int a3, WTF::StringImpl ***a4, atomic_uint **a5)
{
  v7 = *a4;
  *a4 = 0;
  v8 = *(a1 + 8);
  if (*a5 && (*a5)[1])
  {
    WebKit::toWebExtensionError<>((a1 + 24), MEMORY[0x1E696EBA0], a5, v44);
    v9 = v44[0];
    v44[0] = 0;
    v37 = v9;
    LOBYTE(v38[0]) = 1;
    v10 = *(a1 + 48);
    *(a1 + 48) = 0;
    (*(*v10 + 16))(v10, &v37);
    (*(*v10 + 8))(v10);
    if (LOBYTE(v38[0]) == 1)
    {
      v12 = v37;
      v37 = 0;
      if (v12)
      {
        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v11);
        }
      }
    }

    result = v44[0];
    v44[0] = 0;
    if (result)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (!v7)
    {
      return result;
    }

    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v7, v11);
  }

  if (WebKit::WebExtensionContext::quotaForStorageType(*(a1 + 8), *(a1 + 32)) >= a2)
  {
    v14 = *(a1 + 32);
    if (a3 < 0x201 || v14 != 4)
    {
      WebKit::WebExtensionContext::storageForType(v8, v14, &v43);
      v19 = v43;
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v42, (a1 + 40));
      v37 = v8;
      CFRetain(*(v8 + 8));
      v38[0] = v8;
      v20 = *(a1 + 24);
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v38[1] = v20;
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v39, (a1 + 40));
      v40 = *(a1 + 32);
      v21 = *(a1 + 48);
      *(a1 + 48) = 0;
      *&v41 = v7;
      *(&v41 + 1) = v21;
      v22 = WTF::fastMalloc(0x40);
      *v22 = &unk_1F111E908;
      *(v22 + 8) = v37;
      *(v22 + 16) = v38[0];
      v23 = v38[1];
      *v38 = 0u;
      *(v22 + 24) = v23;
      v24 = v39;
      v39 = 0;
      *(v22 + 32) = v24;
      *(v22 + 40) = v40;
      *(v22 + 48) = v41;
      v41 = 0u;
      v25 = v19[9];
      v44[0] = v19;
      v26 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(v19 + 1);
      v44[1] = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v26);
      WTF::CrossThreadCopierBase<false,false,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::copy(&v42, &v44[2]);
      v44[3] = v22;
      v27 = WTF::fastMalloc(0x28);
      *v27 = &unk_1F111E778;
      v28 = v44[0];
      v44[0] = 0;
      *(v27 + 8) = v28;
      *(v27 + 16) = v44[1];
      v29 = *&v44[2];
      memset(&v44[1], 0, 24);
      *(v27 + 24) = v29;
      v45 = v27;
      (*(*v25 + 48))(v25, &v45);
      v31 = v45;
      v45 = 0;
      if (v31)
      {
        (*(*v31 + 8))(v31);
      }

      v32 = v44[3];
      v44[3] = 0;
      if (v32)
      {
        (*(*v32 + 8))(v32);
      }

      if (v44[2])
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v44[2], v30);
      }

      v33 = v44[1];
      v44[1] = 0;
      if (v33)
      {
        WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v33, v30);
      }

      v34 = *(&v41 + 1);
      *(&v41 + 1) = 0;
      if (v34)
      {
        (*(*v34 + 8))(v34);
      }

      if (v41)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v41, v30);
      }

      if (v39)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v39, v30);
      }

      v35 = v38[1];
      v38[1] = 0;
      if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v30);
      }

      v36 = v38[0];
      v38[0] = 0;
      if (v36)
      {
        CFRelease(*(v36 + 1));
      }

      if (v42)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v42, v30);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref(v19 + 1, v30);
    }
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WebKit::toWebExtensionError<>((a1 + 24), MEMORY[0x1E696EBA0], &v45, v44);
  v15 = v44[0];
  v44[0] = 0;
  v37 = v15;
  LOBYTE(v38[0]) = 1;
  v16 = *(a1 + 48);
  *(a1 + 48) = 0;
  (*(*v16 + 16))(v16, &v37);
  (*(*v16 + 8))(v16);
  if (LOBYTE(v38[0]) == 1)
  {
    v17 = v37;
    v37 = 0;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v11);
      }
    }
  }

  v18 = v44[0];
  v44[0] = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v11);
  }

  result = v45;
  v45 = 0;
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_20:
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    goto LABEL_21;
  }

  result = WTF::StringImpl::destroy(result, v11);
  if (v7)
  {
    return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v7, v11);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageSet(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::String const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String> &&)> &&)::$_0::operator()(unsigned long,int,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)::{lambda(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::HashTableTraits>,WTF::String const&)#1},void,WTF::Vector,WTF::String const&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E908;
  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = a1[4];
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = a1[3];
  a1[3] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = a1[2];
  a1[2] = 0;
  if (v7)
  {
    CFRelease(*(v7 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageSet(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::String const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String> &&)> &&)::$_0::operator()(unsigned long,int,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)::{lambda(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::HashTableTraits>,WTF::String const&)#1},void,WTF::Vector,WTF::String const&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E908;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 4);
  if (v5)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    CFRelease(*(v7 + 8));
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageSet(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::String const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String> &&)> &&)::$_0::operator()(unsigned long,int,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)::{lambda(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::HashTableTraits>,WTF::String const&)#1},void,WTF::Vector,WTF::String const&>::call(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  v34 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 12);
  *a2 = 0;
  *(a2 + 8) = 0;
  v35 = v4;
  v36 = v5;
  v6 = *(a1 + 8);
  if (!*a3 || !(*a3)[1])
  {
    LOBYTE(v38) = 0;
    v39 = 0;
    v12 = *(a1 + 56);
    *(a1 + 56) = 0;
    (*(*v12 + 16))(v12, &v38);
    (*(*v12 + 8))(v12);
    if (v39 == 1)
    {
      v11 = v38;
      v38 = 0;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    if (!v5)
    {
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v9);
    }

    goto LABEL_13;
  }

  WebKit::toWebExtensionError<>((a1 + 24), MEMORY[0x1E696EBA0], a3, &v37);
  v7 = v37;
  v37 = 0;
  v38 = v7;
  v39 = 1;
  v8 = *(a1 + 56);
  *(a1 + 56) = 0;
  (*(*v8 + 16))(v8, &v38);
  (*(*v8 + 8))(v8);
  if (v39 == 1)
  {
    v10 = v38;
    v38 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }
    }
  }

  v11 = v37;
  v37 = 0;
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_11:
  if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    goto LABEL_12;
  }

  WTF::StringImpl::destroy(v11, v9);
  if (!v5)
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v9);
  }

LABEL_13:
  v14 = (a1 + 32);
  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = *(v13 - 12);
  }

  if (v13 != v5)
  {
    v15 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin((a1 + 32));
    v17 = v15;
    v19 = v18;
    v20 = *v14 ? *v14 + 16 * *(*v14 - 4) : 0;
    if (v20 != v15)
    {
      do
      {
        v21 = v36;
        if (v36)
        {
          v22 = v34;
          while ((WTF::equal(*v22, *v17, v16) & 1) == 0)
          {
            ++v22;
            if (!--v21)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_40;
        }

LABEL_23:
        v23 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((a1 + 32), v17);
        v25 = v23;
        if (*v14)
        {
          v26 = *v14 + 16 * *(*v14 - 4);
          if (v26 != v23)
          {
            goto LABEL_26;
          }
        }

        else if (v23)
        {
          v26 = 0;
LABEL_26:
          if (v26 != v23)
          {
            v27 = *v23;
            *v25 = -1;
            if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v27, v24);
            }

            v28 = *(v25 + 1);
            *(v25 + 1) = 0;
            if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, v24);
            }

            v29 = *v14;
            v30 = vadd_s32(*(*v14 - 16), 0xFFFFFFFF00000001);
            *(v29 - 16) = v30;
            v31 = *(v29 - 4);
            if (6 * v30.i32[1] < v31 && v31 >= 9)
            {
              WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash((a1 + 32), v31 >> 1, 0);
            }
          }

          goto LABEL_40;
        }

        do
        {
LABEL_40:
          v17 += 2;
        }

        while (v17 != v19 && *v17 + 1 <= 1);
      }

      while (v17 != v20);
    }
  }

  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v38, (a1 + 48));
  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v37, (a1 + 32));
  WebKit::WebExtensionContext::fireStorageChangedEventIfNeeded(v6, &v38, &v37, *(a1 + 40));
  if (v37)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v37, v9);
  }

  if (v38)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v38, v9);
  }

  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v9);
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageRemove(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String> &&)> &&)::$_0,void,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F111E930;
  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 4), a2);
  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageRemove(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String> &&)> &&)::$_0,void,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F111E930;
  v3 = *(a1 + 7);
  *(a1 + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 32, a2);
  v5 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  return WTF::fastFree(a1, v4);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageRemove(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String> &&)> &&)::$_0,void,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&>::call(uint64_t a1, WTF::StringImpl ***a2, atomic_uint **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *(a1 + 8);
  if (*a3 && (*a3)[1])
  {
    WebKit::toWebExtensionError<>((a1 + 24), MEMORY[0x1E696EBA0], a3, &v35);
    v6 = v35;
    v35 = 0;
    v30 = v6;
    LOBYTE(v31) = 1;
    v7 = *(a1 + 56);
    *(a1 + 56) = 0;
    (*(*v7 + 16))(v7, &v30);
    (*(*v7 + 8))(v7);
    if (v31 == 1)
    {
      v9 = v30;
      v30 = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v8);
        }
      }
    }

    result = v35;
    v35 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v8);
      if (v4)
      {
        return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, v8);
      }
    }

    else if (v4)
    {
      return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, v8);
    }
  }

  else
  {
    WebKit::WebExtensionContext::storageForType(*(a1 + 8), *(a1 + 48), &v29);
    v11 = v29;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v28, a1 + 32);
    CFRetain(*(v5 + 8));
    v12 = *(a1 + 24);
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    }

    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    *(a1 + 56) = 0;
    v15 = WTF::fastMalloc(0x38);
    *v15 = &unk_1F111E958;
    *(v15 + 8) = v5;
    *(v15 + 16) = v5;
    *(v15 + 24) = v12;
    *(v15 + 32) = v13;
    *(v15 + 40) = v4;
    *(v15 + 48) = v14;
    v16 = v11[9];
    v30 = v11;
    v17 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(v11 + 1);
    v18 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v17);
    v32 = 0;
    v33 = 0;
    v31 = v18;
    _ZN3WTF6MapperIZNS_21CrossThreadCopierBaseILb0ELb0ENS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEE4copyERKS6_EUlRT_E_S6_S9_vE3mapERS6_S9_RKSC_(&v32, v28);
    v34 = v15;
    v19 = WTF::fastMalloc(0x30);
    *v19 = &unk_1F111E7F0;
    *(v19 + 1) = v30;
    *(v19 + 2) = v31;
    v30 = 0;
    v31 = 0;
    *(v19 + 3) = v32;
    v20 = v33;
    v32 = 0;
    v33 = 0;
    *(v19 + 4) = v20;
    v21 = v34;
    v34 = 0;
    v35 = v19;
    *(v19 + 5) = v21;
    (*(*v16 + 48))(v16, &v35);
    v23 = v35;
    v35 = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = v34;
    v34 = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v22);
    v26 = v31;
    v31 = 0;
    if (v26)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v26, v25);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, v25);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref(v11 + 1, v27);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageRemove(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String> &&)> &&)::$_0::operator()(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)::{lambda(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>)#1},void,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E958;
  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageRemove(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String> &&)> &&)::$_0::operator()(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)::{lambda(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>)#1},void,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E958;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageRemove(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String> &&)> &&)::$_0::operator()(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)::{lambda(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>)#1},void,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::call(uint64_t a1, atomic_uint **a2)
{
  v3 = *(a1 + 8);
  if (*a2 && (*a2)[1])
  {
    WebKit::toWebExtensionError<>((a1 + 24), MEMORY[0x1E696EBA0], a2, &v12);
    v4 = v12;
    v12 = 0;
    v13 = v4;
    v14 = 1;
    v5 = *(a1 + 48);
    *(a1 + 48) = 0;
    (*(*v5 + 16))(v5, &v13);
    (*(*v5 + 8))(v5);
    if (v14 == 1)
    {
      v7 = v13;
      v13 = 0;
      if (v7)
      {
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v6);
        }
      }
    }

    result = v12;
    v12 = 0;
    if (result)
    {
LABEL_15:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  else
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v12, (a1 + 40));
    v11 = 0;
    WebKit::WebExtensionContext::fireStorageChangedEventIfNeeded(v3, &v12, &v11, *(a1 + 32));
    if (v11)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v11, v9);
    }

    if (v12)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v12, v9);
    }

    LOBYTE(v13) = 0;
    v14 = 0;
    v10 = *(a1 + 48);
    *(a1 + 48) = 0;
    (*(*v10 + 16))(v10, &v13);
    result = (*(*v10 + 8))(v10);
    if (v14 == 1)
    {
      result = v13;
      v13 = 0;
      if (result)
      {
        goto LABEL_15;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageClear(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String> &&)> &&)::$_0,void,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E980;
  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageClear(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String> &&)> &&)::$_0,void,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E980;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageClear(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String> &&)> &&)::$_0,void,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&>::call(uint64_t a1, WTF::StringImpl ***a2, atomic_uint **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *(a1 + 8);
  if (*a3 && (*a3)[1])
  {
    WebKit::toWebExtensionError<>((a1 + 24), MEMORY[0x1E696EBA0], a3, &v17);
    v6 = v17;
    v17 = 0;
    v18 = v6;
    v19 = 1;
    v7 = *(a1 + 40);
    *(a1 + 40) = 0;
    (*(*v7 + 16))(v7, &v18);
    (*(*v7 + 8))(v7);
    if (v19 == 1)
    {
      v9 = v18;
      v18 = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v8);
        }
      }
    }

    result = v17;
    v17 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v8);
      if (v4)
      {
        return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, v8);
      }
    }

    else if (v4)
    {
      return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, v8);
    }
  }

  else
  {
    WebKit::WebExtensionContext::storageForType(*(a1 + 8), *(a1 + 32), &v18);
    v11 = v18;
    CFRetain(*(v5 + 8));
    v12 = *(a1 + 24);
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    }

    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    *(a1 + 40) = 0;
    v15 = WTF::fastMalloc(0x38);
    *v15 = &unk_1F111E9A8;
    *(v15 + 8) = v5;
    *(v15 + 16) = v5;
    *(v15 + 24) = v12;
    *(v15 + 32) = v4;
    *(v15 + 40) = v13;
    *(v15 + 48) = v14;
    v17 = v15;
    WebKit::WebExtensionSQLiteStore::deleteDatabase(v11, &v17);
    result = v17;
    if (v17)
    {
      result = (*(*v17 + 8))(v17);
    }

    if (v11)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref(v11 + 1, v16);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageClear(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String> &&)> &&)::$_0::operator()(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)::{lambda(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>)#1},void,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E9A8;
  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageClear(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String> &&)> &&)::$_0::operator()(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)::{lambda(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>)#1},void,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E9A8;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::storageClear(WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionDataType,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<void,WTF::String> &&)> &&)::$_0::operator()(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::String const&)::{lambda(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>)#1},void,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::DefaultHash<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::call(uint64_t a1, atomic_uint **a2)
{
  v3 = *(a1 + 8);
  if (*a2 && (*a2)[1])
  {
    WebKit::toWebExtensionError<>((a1 + 24), MEMORY[0x1E696EBA0], a2, &v12);
    v4 = v12;
    v12 = 0;
    v13 = v4;
    v14 = 1;
    v5 = *(a1 + 48);
    *(a1 + 48) = 0;
    (*(*v5 + 16))(v5, &v13);
    (*(*v5 + 8))(v5);
    if (v14 == 1)
    {
      v7 = v13;
      v13 = 0;
      if (v7)
      {
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v6);
        }
      }
    }

    result = v12;
    v12 = 0;
    if (result)
    {
LABEL_15:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  else
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v12, (a1 + 32));
    v11 = 0;
    WebKit::WebExtensionContext::fireStorageChangedEventIfNeeded(v3, &v12, &v11, *(a1 + 40));
    if (v11)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v11, v9);
    }

    if (v12)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v12, v9);
    }

    LOBYTE(v13) = 0;
    v14 = 0;
    v10 = *(a1 + 48);
    *(a1 + 48) = 0;
    (*(*v10 + 16))(v10, &v13);
    result = (*(*v10 + 8))(v10);
    if (v14 == 1)
    {
      result = v13;
      v13 = 0;
      if (result)
      {
        goto LABEL_15;
      }
    }
  }

  return result;
}

uint64_t *WebKit::WebExtensionContext::sendToProcesses<Messages::WebExtensionContextProxy::DispatchStorageChangedEvent>(uint64_t *result, void **a2, uint64_t a3)
{
  v19 = result;
  v3 = result[10];
  if (v3 && *(v3 + 8))
  {
    result = WTF::HashTable<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::FastMalloc>::begin(a2);
    v7 = result;
    v8 = v6;
    v9 = *a2 ? &(*a2)[*(*a2 - 1)] : 0;
    if (v9 != result)
    {
      do
      {
        v10 = *v7;
        v11 = *a3;
        v12 = *(a3 + 8);
        v13 = *(a3 + 16);
        v14 = v19[4];
        v15 = IPC::Encoder::operator new(0x238, v6);
        *v15 = 1879;
        *(v15 + 2) = 0;
        *(v15 + 3) = 0;
        *(v15 + 1) = v14;
        *(v15 + 68) = 0;
        *(v15 + 70) = 0;
        *(v15 + 69) = 0;
        IPC::Encoder::encodeHeader(v15);
        v22 = v15;
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v15, v11);
        v20[0] = *v12;
        IPC::Encoder::operator<<<unsigned char>(v15, v20);
        v20[0] = *v13;
        IPC::Encoder::operator<<<unsigned char>(v15, v20);
        v20[0] = 0;
        v21 = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v10, &v22, 0, v20, 1);
        if (v21 == 1)
        {
          v16 = *v20;
          *v20 = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }
        }

        result = v22;
        v22 = 0;
        if (result)
        {
          IPC::Encoder::~Encoder(result, v6);
          result = bmalloc::api::tzoneFree(v17, v18);
        }

        do
        {
          ++v7;
        }

        while (v7 != v8 && (*v7 + 1) <= 1);
      }

      while (v7 != v9);
    }
  }

  return result;
}

uint64_t WebKit::WebExtensionContext::processes@<X0>(unint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v9 = a2;
  WTF::HashSet<WebKit::WebExtensionEventListenerType,WTF::DefaultHash<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v10, &v9, 1);
  result = WebKit::WebExtensionContext::processes(a1, &v10, a3, a4);
  if (v10)
  {
    return WTF::fastFree((v10 - 16), v8);
  }

  return result;
}

uint64_t WebKit::WebExtensionContext::processes@<X0>(unint64_t a1@<X0>, unsigned __int8 **a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v10 = a3;
  WTF::HashSet<WebKit::WebExtensionContentWorldType,WTF::DefaultHash<WebKit::WebExtensionContentWorldType>,WTF::HashTraits<WebKit::WebExtensionContentWorldType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(&v11, &v10, 1);
  v9 = 0;
  WebKit::WebExtensionContext::processes(a1, a2, &v11, &v9, a4);
  result = v9;
  v9 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v11)
  {
    return WTF::fastFree((v11 - 16), v7);
  }

  return result;
}

uint64_t *WTF::HashSet<WebKit::WebExtensionContentWorldType,WTF::DefaultHash<WebKit::WebExtensionContentWorldType>,WTF::HashTraits<WebKit::WebExtensionContentWorldType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = 0;
  if (a3)
  {
    v4 = a3;
    WTF::HashTable<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionEventListenerType,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::FastMalloc>::reserveInitialCapacity(a1, a3);
    do
    {
      WTF::HashTable<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::WebExtensionContentWorldType>,WTF::HashTraits<WebKit::WebExtensionContentWorldType>,WTF::HashTraits<WebKit::WebExtensionContentWorldType>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(a1, a2++, v7);
      --v4;
    }

    while (v4);
  }

  return a1;
}

uint64_t *WTF::HashTable<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::WebExtensionContentWorldType>,WTF::HashTraits<WebKit::WebExtensionContentWorldType>,WTF::HashTraits<WebKit::WebExtensionContentWorldType>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (v3 == 254 || v3 == 255)
  {
    __break(0xC471u);
    JUMPOUT(0x19E110118);
  }

  v5 = result;
  v7 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionEventListenerType,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::FastMalloc>::expand(result, 0);
    v7 = *v5;
    v3 = *a2;
  }

  v8 = *(v7 - 8);
  v9 = 9 * ((~(v3 << 15) + v3) ^ ((~(v3 << 15) + v3) >> 10));
  v10 = (((v9 ^ (v9 >> 6)) + ~((v9 ^ (v9 >> 6)) << 11)) ^ (((v9 ^ (v9 >> 6)) + ~((v9 ^ (v9 >> 6)) << 11)) >> 16)) & v8;
  v11 = (v7 + v10);
  v12 = *(v7 + v10);
  if (v12 == 255)
  {
LABEL_6:
    v13 = *(v7 - 16);
    v14 = v11;
  }

  else
  {
    v14 = 0;
    v15 = 1;
    do
    {
      if (v12 == v3)
      {
        v19 = 0;
        v20 = v7 + *(v7 - 4);
        goto LABEL_21;
      }

      if (v12 == 254)
      {
        v14 = v11;
      }

      v10 = (v10 + v15) & v8;
      v11 = (v7 + v10);
      v12 = *(v7 + v10);
      ++v15;
    }

    while (v12 != 255);
    if (!v14)
    {
      goto LABEL_6;
    }

    *v14 = -1;
    v13 = *(v7 - 16) - 1;
    *(v7 - 16) = v13;
    LOBYTE(v3) = *a2;
  }

  *v14 = v3;
  v16 = *(v7 - 12) + 1;
  *(v7 - 12) = v16;
  v17 = (v16 + v13);
  v18 = *(v7 - 4);
  if (v18 > 0x400)
  {
    if (v18 <= 2 * v17)
    {
LABEL_16:
      result = WTF::HashTable<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionEventListenerType,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::HashTraits<WebKit::WebExtensionEventListenerType>,WTF::FastMalloc>::expand(v5, v14);
      v14 = result;
      v7 = *v5;
      if (*v5)
      {
        v18 = *(v7 - 4);
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else if (3 * v18 <= 4 * v17)
  {
    goto LABEL_16;
  }

  v20 = v7 + v18;
  v19 = 1;
  v11 = v14;
LABEL_21:
  *a3 = v11;
  *(a3 + 8) = v20;
  *(a3 + 16) = v19;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::fireStorageChangedEventIfNeeded(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WebKit::WebExtensionDataType)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F111E9D0;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::fireStorageChangedEventIfNeeded(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WebKit::WebExtensionDataType)::$_0,void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111E9D0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WebKit::WebExtensionContext::fireStorageChangedEventIfNeeded(WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WebKit::WebExtensionDataType)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = 0;
  v5[0] = a1 + 24;
  v5[1] = a1 + 32;
  v5[2] = &v4;
  WebKit::WebExtensionContext::processes(v1, 31, 0, &v6);
  WebKit::WebExtensionContext::sendToProcesses<Messages::WebExtensionContextProxy::DispatchStorageChangedEvent>(v1, &v6, v5);
  result = v6;
  if (v6)
  {
    return WTF::HashTable<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::FastMalloc>::deallocateTable(v6, v2);
  }

  return result;
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::GPUProcessProxy::keepProcessAliveTemporarily(void)::$_0,void>::call()
{
  {
    v0 = WebKit::keptAliveGPUProcessProxy(void)::keptAliveGPUProcessProxy;
    WebKit::keptAliveGPUProcessProxy(void)::keptAliveGPUProcessProxy = 0;
    if (v0)
    {
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v0 + 16));
    }
  }

  else
  {
    WebKit::keptAliveGPUProcessProxy(void)::keptAliveGPUProcessProxy = 0;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::InitializeGPUProcess,WebKit::GPUProcessProxy::GPUProcessProxy(void)::$_0>(WebKit::GPUProcessProxy::GPUProcessProxy(void)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F111EA20;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::LaunchGrant,(WTF::DestructionThread)0>::deref(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v4 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::InitializeGPUProcess,WebKit::GPUProcessProxy::GPUProcessProxy(void)::$_0>(WebKit::GPUProcessProxy::GPUProcessProxy(void)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F111EA20;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::LaunchGrant,(WTF::DestructionThread)0>::deref(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v4 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::UpdateCaptureAccess,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111EA48;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::UpdateCaptureAccess,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111EA48;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::UpdateCaptureAccess,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t Messages::GPUProcess::TriggerMockCaptureConfigurationChange::encode<IPC::Encoder>(char *a1, IPC::Encoder *a2)
{
  IPC::Encoder::operator<<<BOOL &>(a2, a1);
  IPC::Encoder::operator<<<BOOL &>(a2, a1 + 1);

  return IPC::Encoder::operator<<<BOOL &>(a2, a1 + 2);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::CreateGPUConnectionToWebProcess,WebKit::GPUProcessProxy::createGPUProcessConnection(WebKit::WebProcessProxy &,IPC::ConnectionHandle &&,WebKit::GPUProcessConnectionParameters &&)::$_0>(WebKit::GPUProcessProxy::createGPUProcessConnection(WebKit::WebProcessProxy &,IPC::ConnectionHandle &&,WebKit::GPUProcessConnectionParameters &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::GPUProcessProxy::createGPUProcessConnection(WebKit::WebProcessProxy &,IPC::ConnectionHandle &&,WebKit::GPUProcessConnectionParameters &&)::$_0,IPC::Connection*)#1},void,WebKit::GPUProcessProxy::createGPUProcessConnection(WebKit::WebProcessProxy &,IPC::ConnectionHandle &&,WebKit::GPUProcessConnectionParameters &&)::$_0,IPC::Connection*>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F111EA70;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::CreateGPUConnectionToWebProcess,WebKit::GPUProcessProxy::createGPUProcessConnection(WebKit::WebProcessProxy &,IPC::ConnectionHandle &&,WebKit::GPUProcessConnectionParameters &&)::$_0>(WebKit::GPUProcessProxy::createGPUProcessConnection(WebKit::WebProcessProxy &,IPC::ConnectionHandle &&,WebKit::GPUProcessConnectionParameters &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::GPUProcessProxy::createGPUProcessConnection(WebKit::WebProcessProxy &,IPC::ConnectionHandle &&,WebKit::GPUProcessConnectionParameters &&)::$_0,IPC::Connection*)#1},void,WebKit::GPUProcessProxy::createGPUProcessConnection(WebKit::WebProcessProxy &,IPC::ConnectionHandle &&,WebKit::GPUProcessConnectionParameters &&)::$_0,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111EA70;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uint *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::CreateGPUConnectionToWebProcess,WebKit::GPUProcessProxy::createGPUProcessConnection(WebKit::WebProcessProxy &,IPC::ConnectionHandle &&,WebKit::GPUProcessConnectionParameters &&)::$_0>(WebKit::GPUProcessProxy::createGPUProcessConnection(WebKit::WebProcessProxy &,IPC::ConnectionHandle &&,WebKit::GPUProcessConnectionParameters &&)::$_0 &&,WTF::ThreadLikeAssertion)::{lambda(WebKit::GPUProcessProxy::createGPUProcessConnection(WebKit::WebProcessProxy &,IPC::ConnectionHandle &&,WebKit::GPUProcessConnectionParameters &&)::$_0,IPC::Connection*)#1},void,WebKit::GPUProcessProxy::createGPUProcessConnection(WebKit::WebProcessProxy &,IPC::ConnectionHandle &&,WebKit::GPUProcessConnectionParameters &&)::$_0,IPC::Connection*>::call(atomic_uint *result)
{
  v1 = *(result + 1);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = (v2 + 16);
      atomic_fetch_add((v2 + 16), 1u);
      v4 = *(v2 + 56);
      ++*v4;
      WebKit::ResponsivenessTimer::stop(v4);
      WTF::RefCounted<WebKit::ResponsivenessTimer>::deref(v4);

      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v3);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::SharedPreferencesForWebProcessDidChange,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111EA98;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::SharedPreferencesForWebProcessDidChange,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111EA98;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::SharedPreferencesForWebProcessDidChange,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::WebProcessConnectionCountForTesting,WTF::CompletionHandler<void ()(unsigned long long)>>(WTF::CompletionHandler<void ()(unsigned long long)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111EAC0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::WebProcessConnectionCountForTesting,WTF::CompletionHandler<void ()(unsigned long long)>>(WTF::CompletionHandler<void ()(unsigned long long)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111EAC0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::WebProcessConnectionCountForTesting,WTF::CompletionHandler<void ()(unsigned long long)>>(WTF::CompletionHandler<void ()(unsigned long long)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    v4 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v7 + 16))(v7, v6);
  v8 = *(*v7 + 8);

  return v8(v7);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::PrepareToSuspend,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111EAE8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::PrepareToSuspend,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111EAE8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::PrepareToSuspend,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::RequestBitmapImageForCurrentTime,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F111EB10;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::RequestBitmapImageForCurrentTime,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F111EB10;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::GPUProcess::RequestBitmapImageForCurrentTime,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>>(WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<std::optional<WebCore::ShareableBitmapHandle>>,void>::decode<IPC::Decoder>(a3, v11);
    if (v15 & 1) != 0 || (v8 = *a3, v9 = a3[1], *a3 = 0, a3[1] = 0, (v10 = a3[3]) != 0) && v9 && ((*(*v10 + 16))(v10, v8), (v15))
    {
      v5 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v5 + 16))(v5, v11);
      (*(*v5 + 8))(v5);
      if ((v15 & 1) != 0 && v14 == 1)
      {
        if (v13 == 1)
        {
          v6 = cf;
          cf = 0;
          if (v6)
          {
            CFRelease(v6);
          }
        }

        WTF::MachSendRight::~MachSendRight(v11);
      }
    }

    else
    {
      IPC::Connection::cancelReply<Messages::WebPage::DrawToImage,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>>((a1 + 8));
    }
  }

  else
  {
    v7 = (a1 + 8);

    IPC::Connection::cancelReply<Messages::WebPage::DrawToImage,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)>>(v7);
  }
}

uint64_t WTF::Vector<WebCore::SharedGamepadValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = a2;
  if (!a2)
  {
    return v3;
  }

  if (!(a2 >> 29))
  {
    v4 = WTF::fastMalloc((8 * a2));
    *(v3 + 8) = v2;
    *v3 = v4;
    v5 = *(v3 + 12);
    if (v5)
    {
      v6 = v4;
      v7 = 8 * v5;
      do
      {
        v8 = WTF::fastMalloc(0x10);
        *v8 = 1;
        *(v8 + 8) = 0;
        *v6++ = v8;
        v7 -= 8;
      }

      while (v7);
    }

    return v3;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::UIGamepadProvider>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::UIGamepadProvider *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

void non-virtual thunk toWebKit::WebInspectorUIProxy::~WebInspectorUIProxy(WebKit::WebInspectorUIProxy *this, void *a2)
{
  WebKit::WebInspectorUIProxy::~WebInspectorUIProxy((this - 16), a2);
}

{
  WebKit::WebInspectorUIProxy::~WebInspectorUIProxy((this - 32), a2);
}

{
  WebKit::WebInspectorUIProxy::~WebInspectorUIProxy((this - 16), a2);

  JUMPOUT(0x19EB14CF0);
}

{
  WebKit::WebInspectorUIProxy::~WebInspectorUIProxy((this - 32), a2);

  JUMPOUT(0x19EB14CF0);
}

uint64_t WebKit::WebInspectorUIProxy::inspectionLevel(WebKit::WebInspectorUIProxy *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return 1;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 1;
  }

  CFRetain(*(v2 - 8));
  v4 = WebKit::inspectorLevelForPage((v2 - 16), v3);
  CFRelease(*(v2 - 8));
  return v4;
}

uint64_t WebKit::inspectorLevelForPage(WebKit *this, WebKit::WebPageProxy *a2)
{
  v5 = this;
  if (!this)
  {
    return 1;
  }

  {
    WebKit::pageLevelMap(void)::map = 0;
  }

  v2 = WTF::HashTable<WebKit::WebPageProxy *,WTF::KeyValuePair<WebKit::WebPageProxy *,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::WebPageProxy *,unsigned int>>,WTF::DefaultHash<WebKit::WebPageProxy *>,WTF::HashMap<WebKit::WebPageProxy *,unsigned int,WTF::DefaultHash<WebKit::WebPageProxy *>,WTF::HashTraits<WebKit::WebPageProxy *>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::WebPageProxy *>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::WebPageProxy *,unsigned int,WTF::DefaultHash<WebKit::WebPageProxy *>,WTF::HashTraits<WebKit::WebPageProxy *>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::WebPageProxy *>>,(WTF::ShouldValidateKey)1,WebKit::WebPageProxy *>(&WebKit::pageLevelMap(void)::map, &v5);
  {
    v3 = WebKit::pageLevelMap(void)::map;
    if (WebKit::pageLevelMap(void)::map)
    {
      v3 = WebKit::pageLevelMap(void)::map + 16 * *(WebKit::pageLevelMap(void)::map - 4);
    }
  }

  else
  {
    v3 = 0;
    WebKit::pageLevelMap(void)::map = 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  else
  {
    return (*(v2 + 8) + 1);
  }
}

CFTypeRef WebKit::WebInspectorUIProxy::protectedInspectorPagePreferences@<X0>(WebKit::WebInspectorUIProxy *this@<X0>, void *a2@<X8>)
{
  v3 = *(*(this + 6) + 8);
  CFRetain(*(v3 - 8));
  v4 = *(*(v3 + 344) + 40);
  CFRelease(*(v3 - 8));
  result = CFRetain(*(v4 + 8));
  *a2 = v4;
  return result;
}

void WebKit::WebInspectorUIProxy::closeFrontendPageAndWindow(WebKit::WebInspectorUIProxy *this)
{
  v1 = *(this + 6);
  if (!v1)
  {
    return;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return;
  }

  v4 = *(this + 83);
  if (v4)
  {
    return;
  }

  *(this + 83) = 1;
  v5 = *(this + 5);
  if (!v5 || (v6 = *(v5 + 8)) == 0)
  {
    *(this + 73) = 0;
    *(this + 38) = 0;
    *(this + 78) = 0;
LABEL_8:
    v9 = v2 - 16;
    CFRetain(*(v2 - 8));
    v10 = 0;
    goto LABEL_10;
  }

  CFRetain(*(v6 - 8));
  (*(**(v6 + 104) + 592))(*(v6 + 104), v6 - 16, this);
  CFRelease(*(v6 - 8));
  v8 = *(this + 6);
  *(this + 73) = 0;
  *(this + 38) = 0;
  *(this + 78) = 0;
  if (v8)
  {
    v2 = *(v8 + 8);
    if (v2)
    {
      goto LABEL_8;
    }
  }

  v9 = 0;
  v10 = 1;
LABEL_10:
  WebKit::untrackInspectorPage(v9, v7);
  v11 = *(v9 + 352);
  atomic_fetch_add((v11 + 16), 1u);
  v16 = *(this + 73);
  WebKit::AuxiliaryProcessProxy::send<Messages::WebInspectorUI::SetIsVisible>(v11, &v16, *(v9 + 48), 0);
  IPC::MessageReceiverMap::removeMessageReceiver(v11 + 96, 0xB5u, *(this + 8));
  v13 = *(this + 5);
  if (v13)
  {
    v14 = *(v13 + 8);
    if (v14)
    {
      CFRetain(*(v14 - 8));
      if (*(this + 81) == 1)
      {
        WebKit::WebPageInspectorController::disconnectFrontend(*(v14 + 1192));
      }

      CFRelease(*(v14 - 8));
    }
  }

  *(this + 81) = 0;
  v15 = *(this + 6);
  *(this + 6) = 0;
  if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v15);
    WTF::fastFree(v15, v12);
  }

  *(this + 37) = 0;
  WebKit::WebInspectorUIProxy::dispatchDidChangeLocalInspectorAttachment(this);
  if (v11)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v11 + 16));
  }

  if ((v10 & 1) == 0)
  {
    CFRelease(*(v9 + 8));
  }

  *(this + 83) = v4;
}
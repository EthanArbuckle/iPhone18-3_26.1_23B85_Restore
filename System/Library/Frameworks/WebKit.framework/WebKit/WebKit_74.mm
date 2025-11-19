uint64_t WebKit::RemoteXRSubImage::didReceiveStreamMessage(WebKit::RemoteXRSubImage *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 8) + 8);
  if (v3)
  {
    if ((*(v3 + 56) & 0x2000) != 0)
    {
      atomic_fetch_add(this + 2, 1u);
      v10 = *(a3 + 25);
      switch(v10)
      {
        case 0x6B0u:
          result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
          if (v11)
          {
            result = WebKit::RemoteXRSubImage::getDepthTexture(this, result);
          }

          break;
        case 0x6AFu:
          result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
          if (v11)
          {
            result = WebKit::RemoteXRSubImage::getColorTexture(this, result);
          }

          break;
        case 0x6AEu:
          result = WebKit::RemoteXRBinding::destruct(this);
          break;
        default:
          v13 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            if (v10 >= 0x107F)
            {
              v16 = 4223;
            }

            else
            {
              v16 = v10;
            }

            v17 = (&IPC::Detail::messageDescriptions)[3 * v16];
            v18 = *(a3 + 7);
            v19 = 136315394;
            v20 = v17;
            v21 = 2048;
            v22 = v18;
            _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", &v19, 0x16u);
          }

          v11 = *a3;
          v12 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          result = *(a3 + 3);
          if (result && v12)
          {
            result = (*(*result + 16))(result, v11);
          }

          break;
      }

      if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this + 2);
        return (*(*this + 8))(this, v11, v12);
      }
    }

    else
    {
      v5 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a3 + 25);
        if (v14 >= 0x107F)
        {
          v14 = 4223;
        }

        v15 = (&IPC::Detail::messageDescriptions)[3 * v14];
        v19 = 136315138;
        v20 = v15;
        _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteXRSubImage", &v19, 0xCu);
      }

      v6 = *a3;
      v7 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = *(a3 + 3);
      if (result)
      {
        if (v7)
        {
          return (*(*result + 16))(result, v6);
        }
      }
    }
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

atomic_ullong *WebKit::ServiceWorkerDownloadTask::didReceiveMessage(WebKit::ServiceWorkerDownloadTask *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = (this + 8);
  while (1)
  {
    v6 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v7 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_6:
  v8 = *(a3 + 25);
  if (v8 > 0x6B5)
  {
    if (v8 == 1718)
    {
      IPC::ArgumentCoder<std::tuple<IPC::SharedBufferReference>,void>::decode<IPC::Decoder>(a3, v31);
      if (v32 & 1) != 0 || (v28 = *a3, v29 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v30 = *(a3 + 3)) != 0) && v29 && ((*(*v30 + 16))(v30, v28), (v32))
      {
        WebKit::ServiceWorkerDownloadTask::didReceiveData(this, v31);
        if (v32)
        {
          v19 = *&v31[16];
          *&v31[16] = 0;
          if (v19)
          {
            WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v19);
          }

          v20 = *&v31[8];
          *&v31[8] = 0;
          if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v20 + 2);
            (*(*v20 + 8))(v20);
          }
        }
      }
    }

    else
    {
      if (v8 != 1719)
      {
LABEL_16:
        v10 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v8 >= 0x107F)
          {
            v22 = 4223;
          }

          else
          {
            v22 = v8;
          }

          v23 = (&IPC::Detail::messageDescriptions)[3 * v22];
          v24 = *(a3 + 7);
          *v31 = 136315394;
          *&v31[4] = v23;
          *&v31[12] = 2048;
          *&v31[14] = v24;
          _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", v31, 0x16u);
        }

        v11 = *a3;
        v12 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v13 = *(a3 + 3);
        if (v13 && v12)
        {
          (*(*v13 + 16))(v13, v11);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v5);
      }

      IPC::ArgumentCoder<std::tuple<IPC::FormDataReference>,void>::decode<IPC::Decoder>(a3, v31);
      if (v31[8] & 1) != 0 || (v25 = *a3, v26 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v27 = *(a3 + 3)) != 0) && v26 && ((*(*v27 + 16))(v27, v25), (v31[8]))
      {
        WebKit::ServiceWorkerDownloadTask::didReceiveFormData(this);
        if (v31[8])
        {
          v9 = *v31;
          *v31 = 0;
          if (v9)
          {
            WTF::RefCounted<WebCore::FormData>::deref(v9);
          }
        }
      }
    }
  }

  else
  {
    if (v8 != 1716)
    {
      if (v8 == 1717)
      {
        WebKit::ServiceWorkerDownloadTask::didFinish(this);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v5);
      }

      goto LABEL_16;
    }

    IPC::Decoder::decode<std::tuple<WebCore::ResourceError>>(a3, v31);
    if (v35 == 1)
    {
      WebKit::ServiceWorkerDownloadTask::didFail(this, v31);
      if (v35)
      {
        v15 = cf;
        cf = 0;
        if (v15)
        {
          CFRelease(v15);
        }

        v16 = v33;
        v33 = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v14);
        }

        v17 = *&v31[8];
        *&v31[8] = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v14);
        }

        v18 = *v31;
        *v31 = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v14);
        }
      }
    }
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::deref(v5);
}

WTF::StringImpl *WebKit::WebBroadcastChannelRegistry::didReceiveMessage(WebKit::WebBroadcastChannelRegistry *this, atomic_ullong *a2, WTF::StringImpl **a3)
{
  v32 = *MEMORY[0x1E69E9840];
  ++*(this + 2);
  v5 = *(a3 + 25);
  if (v5 == 1844)
  {
    IPC::ArgumentCoder<std::tuple<WebCore::ClientOrigin,WTF::String,WebCore::MessageWithMessagePorts>,void>::decode<IPC::Decoder>(a3, buf);
    if (v31 & 1) != 0 || (v8 = *a3, v9 = a3[1], *a3 = 0, a3[1] = 0, (result = a3[3]) != 0) && v9 && (result = (*(*result + 16))(result, v8), (v31))
    {
      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v8)
      {
        v10 = result;
        while (1)
        {
          v11 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v12 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v12 == v11)
          {
            goto LABEL_13;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_13:
        v14 = WTF::fastMalloc(0x18);
        *v14 = &unk_1F10EE328;
        *(v14 + 1) = v10;
        *(v14 + 2) = a2;
        v21 = v14;
        if ((v31 & 1) == 0)
        {
          __break(1u);
LABEL_49:
          v29 = 0;
          v30 = 0;
          WTF::fastFree(v14, v8);
LABEL_18:
          v15 = v28;
          v28 = 0;
          if (v15)
          {
            WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v15);
          }

          result = v27;
          v27 = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v8);
          }

          if (!v26)
          {
            v16 = v25;
            v25 = 0;
            if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v16, v8);
            }

            result = v24;
            v24 = 0;
            if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v8);
            }
          }

          v26 = -1;
          if (!v23)
          {
            v17 = *&buf[8];
            *&buf[8] = 0;
            if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v8);
            }

            result = *buf;
            *buf = 0;
            if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v8);
            }
          }

          goto LABEL_37;
        }

        WebKit::WebBroadcastChannelRegistry::postMessageToRemote(this, buf, &v27, &v28, &v21);
        result = v21;
        v21 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }
    }

    if (v31 != 1)
    {
      goto LABEL_37;
    }

    v14 = v29;
    if (!v29)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

  v13 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    if (v5 >= 0x107F)
    {
      v18 = 4223;
    }

    else
    {
      v18 = v5;
    }

    v19 = (&IPC::Detail::messageDescriptions)[3 * v18];
    v20 = a3[7];
    *buf = 136315394;
    *&buf[4] = v19;
    *&buf[12] = 2048;
    *&buf[14] = v20;
    _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
  }

  v8 = *a3;
  v9 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  result = a3[3];
  if (result && v9)
  {
    result = (*(*result + 16))(result, v8);
  }

LABEL_37:
  if (*(this + 2) == 1)
  {
    return (*(*this + 8))(this, v8, v9);
  }

  --*(this + 2);
  return result;
}

void WebKit::WebFrame::didReceiveMessage(CFTypeRef *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  CFRetain(this[1]);
  v6 = *(a3 + 25);
  if (v6 <= 0x7DF)
  {
    if (v6 == 2014)
    {
      IPC::ArgumentCoder<WebKit::ProvisionalFrameCreationParameters,void>::decode(a3, buf);
      if (v44)
      {
LABEL_22:
        v38[0] = *buf;
        v38[1] = *&buf[16];
        v38[2] = v42;
        v39 = v43;
        v40 = 1;
        WebKit::WebFrame::createProvisionalFrame(this, v38);
        goto LABEL_51;
      }

LABEL_58:
      v35 = *a3;
      v36 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v37 = *(a3 + 3);
      if (!v37 || !v36)
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        goto LABEL_51;
      }

      (*(*v37 + 16))(v37, v35);
      if ((v44 & 1) == 0)
      {
        v19 = *a3;
        v20 = *(a3 + 1);
        v21 = *(a3 + 3);
        *a3 = 0;
        *(a3 + 1) = 0;
        if (!v21)
        {
          goto LABEL_51;
        }

LABEL_25:
        if (v20)
        {
          (*(*v21 + 16))(v21, v19);
        }

        goto LABEL_51;
      }

      goto LABEL_22;
    }

    if (v6 == 2015)
    {
      WebKit::WebFrame::destroyProvisionalFrame(this);
      goto LABEL_51;
    }

LABEL_23:
    v18 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v6 >= 0x107F)
      {
        v32 = 4223;
      }

      else
      {
        v32 = v6;
      }

      v33 = (&IPC::Detail::messageDescriptions)[3 * v32];
      v34 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v33;
      *&buf[12] = 2048;
      *&buf[14] = v34;
      _os_log_error_impl(&dword_19D52D000, v18, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    v19 = *a3;
    v20 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v21 = *(a3 + 3);
    if (!v21)
    {
      goto LABEL_51;
    }

    goto LABEL_25;
  }

  if (v6 != 2016)
  {
    if (v6 == 2018)
    {
      v16 = IPC::Decoder::decode<std::tuple<WebCore::IntSize>>(a3);
      if (v17)
      {
        WebKit::WebFrame::updateFrameSize(this, v16);
      }

      goto LABEL_51;
    }

    if (v6 == 2017)
    {
      v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v8)
      {
        v9 = v7;
        while (1)
        {
          v10 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v11 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v11 == v10)
          {
            goto LABEL_28;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_28:
        v22 = WTF::fastMalloc(0x18);
        *v22 = &unk_1F10EE350;
        v22[1] = v9;
        v22[2] = a2;
        a3 = WTF::fastMalloc(0x1A8);
        *a3 = _ZZN3IPC27callMemberFunctionCoroutineIN6WebKit8WebFrameES2_FN3WTF9AwaitableINSt3__18optionalINS1_13FrameInfoDataEEEEEvENS5_5tupleIJEEEFvOS8_EEEvPT_MT0_T1_OT2_ONS3_17CompletionHandlerIT3_EEENKUlSF_E_clINSM_ISE_EEEENS3_4TaskESF__resume;
        *(a3 + 1) = _ZZN3IPC27callMemberFunctionCoroutineIN6WebKit8WebFrameES2_FN3WTF9AwaitableINSt3__18optionalINS1_13FrameInfoDataEEEEEvENS5_5tupleIJEEEFvOS8_EEEvPT_MT0_T1_OT2_ONS3_17CompletionHandlerIT3_EEENKUlSF_E_clINSM_ISE_EEEENS3_4TaskESF__destroy;
        *(a3 + 51) = v22;
        *(a3 + 52) = this;
        CFRetain(this[1]);
        WebKit::WebFrame::getFrameInfo(this, a3 + 50);
        v23 = *(a3 + 50);
        *(a3 + 3) = v23;
        if (v23)
        {
          if (*v23)
          {
            *(a3 + 17) = 0;
            v23[2] = a3;
            (**(a3 + 3))();
          }

          else
          {
            v28 = *(a3 + 51);
            WTF::Awaitable<std::optional<WebKit::FrameInfoData>>::Promise<std::optional<WebKit::FrameInfoData>>::result(a3 + 32, (v23 + 2));
            (*(*v28 + 16))(v28, a3 + 32);
            (*(*v28 + 8))(v28);
            if (*(a3 + 384) == 1)
            {
              WebKit::FrameInfoData::~FrameInfoData((a3 + 32));
            }

            v30 = *(a3 + 50);
            if (v30)
            {
              (*(v30 + 8))();
            }

            v31 = *(a3 + 52);
            if (v31)
            {
              CFRelease(*(v31 + 8));
            }

            WTF::fastFree(a3, v29);
          }

          goto LABEL_51;
        }

        goto LABEL_57;
      }

LABEL_51:
      CFRelease(this[1]);
      return;
    }

    goto LABEL_23;
  }

  IPC::Decoder::decode<std::tuple<WebCore::FocusDirection,WebCore::FocusEventData>>(a3, buf);
  if (v42 == 1)
  {
    v13 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v12)
    {
      a3 = v13;
      while (1)
      {
        v14 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v15 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v15 == v14)
        {
          goto LABEL_32;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_32:
      v24 = WTF::fastMalloc(0x18);
      *v24 = &unk_1F10EE378;
      v24[1] = a3;
      v24[2] = a2;
      *&v38[0] = v24;
      if ((v42 & 1) == 0)
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      WebKit::WebFrame::findFocusableElementDescendingIntoRemoteFrame(this, buf[0], &buf[8], v38);
      v25 = *&v38[0];
      *&v38[0] = 0;
      if (v25)
      {
        (*(*v25 + 8))(v25);
      }
    }
  }

  if (v42 == 1)
  {
    v26 = *&buf[16];
    *&buf[16] = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v12);
    }

    v27 = *&buf[8];
    *&buf[8] = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v12);
    }
  }

  if (this)
  {
    goto LABEL_51;
  }
}

void WebKit::WebFrame::sendCancelReply(WebKit::WebFrame *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 25);
  if (v5 == 2016)
  {
    IPC::Decoder::decode<std::tuple<WebCore::FocusDirection,WebCore::FocusEventData>>(a2, v13);
    if (v16 == 1)
    {
      v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
      if (v8)
      {
        v12 = 0;
        IPC::Connection::sendAsyncReply<Messages::WebFrame::FindFocusableElementDescendingIntoRemoteFrame,WebCore::FoundElementInRemoteFrame>(this, v9, &v12);
      }
    }

    if (v16 == 1)
    {
      v10 = v15;
      v15 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v8);
      }

      v11 = v14;
      v14 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v8);
      }
    }
  }

  else if (v5 == 2017)
  {
    v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v13[0] = 0;
      v17 = 0;
      IPC::Connection::sendAsyncReply<Messages::WebFrame::GetFrameInfo,std::optional<WebKit::FrameInfoData>>(this, v6, v13);
      if (v17 == 1)
      {
        WebKit::FrameInfoData::~FrameInfoData(v13);
      }
    }
  }
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebFrame::GetFrameInfo,std::optional<WebKit::FrameInfoData>>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3681;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a2;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  IPC::ArgumentCoder<std::optional<WebKit::FrameInfoData>,void>::encode<IPC::Encoder,std::optional<WebKit::FrameInfoData>>(v6, a3);
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

uint64_t IPC::Decoder::decode<std::tuple<WebCore::FocusDirection,WebCore::FocusEventData>>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::FocusDirection,WebCore::FocusEventData>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[32] & 1) == 0)
  {
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebFrame::FindFocusableElementDescendingIntoRemoteFrame,WebCore::FoundElementInRemoteFrame>(uint64_t *a1, void *a2, char *a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3680;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a2;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  v12 = *a3;
  IPC::Encoder::operator<<<BOOL>(v6, &v12);
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

uint64_t IPC::Decoder::decode<std::tuple<WebCore::ResourceError>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::ResourceError>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[80] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::ResourceError>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WebCore::ResourceError>(a1, v5);
  if (v6)
  {
    _ZNSt3__127__optional_copy_assign_baseINS_5tupleIJN7WebCore13ResourceErrorEEEELb0EECI2NS_24__optional_destruct_baseIS4_Lb0EEEIJS3_EEENS_10in_place_tEDpOT_(a2, v5);
  }

  else
  {
    *a2 = 0;
    a2[80] = 0;
  }

  return std::optional<WebCore::ResourceError>::~optional(v5, v3);
}

uint64_t _ZNSt3__127__optional_copy_assign_baseINS_5tupleIJN7WebCore13ResourceErrorEEEELb0EECI2NS_24__optional_destruct_baseIS4_Lb0EEEIJS3_EEENS_10in_place_tEDpOT_(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  WTF::URL::URL(a1 + 8, a2 + 1);
  v5 = a2[6];
  a2[6] = 0;
  *(a1 + 48) = v5;
  LODWORD(v5) = *(a2 + 14);
  *(a1 + 60) = *(a2 + 30);
  *(a1 + 56) = v5;
  v6 = a2[8];
  a2[8] = 0;
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = 1;
  return a1;
}

void IPC::ArgumentCoder<std::tuple<IPC::SharedBufferReference>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<IPC::SharedBufferReference,void>::decode(a1, &v9);
  if (v11)
  {
    *a2 = v9;
    *(a2 + 8) = v10;
    v4 = 1;
  }

  else
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v7 = *(a1 + 3);
    if (v7)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      (*(*v7 + 16))(v7, v5);
    }

    v4 = 0;
    *a2 = 0;
  }

  *(a2 + 24) = v4;
}

WTF::RefCountedBase *IPC::ArgumentCoder<std::tuple<IPC::FormDataReference>,void>::decode<IPC::Decoder>@<X0>(WTF *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<IPC::FormDataReference,void>::decode(a1, &v9);
  if (v10)
  {
    *a2 = v9;
    v5 = 1;
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      result = (*(*result + 16))(result, v6);
    }

    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 8) = v5;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages27WebBroadcastChannelRegistry19PostMessageToRemoteENS2_10ConnectionEN6WebKit27WebBroadcastChannelRegistryES9_FvRKN7WebCore12ClientOriginERKNS_6StringEONSA_23MessageWithMessagePortsEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EE328;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages27WebBroadcastChannelRegistry19PostMessageToRemoteENS2_10ConnectionEN6WebKit27WebBroadcastChannelRegistryES9_FvRKN7WebCore12ClientOriginERKNS_6StringEONSA_23MessageWithMessagePortsEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EE328;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages27WebBroadcastChannelRegistry19PostMessageToRemoteENS2_10ConnectionEN6WebKit27WebBroadcastChannelRegistryES9_FvRKN7WebCore12ClientOriginERKNS_6StringEONSA_23MessageWithMessagePortsEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3577;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages8WebFrame12GetFrameInfoENS2_10ConnectionEN6WebKit8WebFrameES9_FNS_9AwaitableINSt3__18optionalINS8_13FrameInfoDataEEEEEvEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJOSE_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EE350;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages8WebFrame12GetFrameInfoENS2_10ConnectionEN6WebKit8WebFrameES9_FNS_9AwaitableINSt3__18optionalINS8_13FrameInfoDataEEEEEvEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJOSE_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EE350;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Awaitable<std::optional<WebKit::FrameInfoData>>::Promise<std::optional<WebKit::FrameInfoData>>::result(_BYTE *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v4 = 0;
  *a1 = 0;
  a1[352] = 0;
  if (*(a2 + 368) == 1)
  {
    std::__optional_storage_base<WebKit::FrameInfoData,false>::__construct[abi:sn200100]<WebKit::FrameInfoData>(a1, a2 + 16);
  }

  std::__optional_storage_base<WebKit::FrameInfoData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::FrameInfoData,false>>((a2 + 16), v3);
  if (v4 == 1)
  {
    WebKit::FrameInfoData::~FrameInfoData(v3);
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages8WebFrame45FindFocusableElementDescendingIntoRemoteFrameENS2_10ConnectionEN6WebKit8WebFrameES9_FvN7WebCore14FocusDirectionERKNSA_14FocusEventDataEONS_17CompletionHandlerIFvNSA_25FoundElementInRemoteFrameEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EE378;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages8WebFrame45FindFocusableElementDescendingIntoRemoteFrameENS2_10ConnectionEN6WebKit8WebFrameES9_FvN7WebCore14FocusDirectionERKNSA_14FocusEventDataEONS_17CompletionHandlerIFvNSA_25FoundElementInRemoteFrameEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EE378;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::FocusDirection,WebCore::FocusEventData>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<WebCore::FocusDirection>(a1);
  v5 = result;
  if ((result & 0x100) != 0)
  {
    return IPC::ArgumentCoder<std::tuple<WebCore::FocusDirection,WebCore::FocusEventData>,void>::decode<IPC::Decoder,WebCore::FocusDirection>(a1, &v5, a2);
  }

  *a2 = 0;
  a2[32] = 0;
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::FocusDirection>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::FocusDirection,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = result;
      (*(*v5 + 16))(v5, v3);
      return v7;
    }
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WebCore::FocusDirection,WebCore::FocusEventData>,void>::decode<IPC::Decoder,WebCore::FocusDirection>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::FocusEventData,void>::decode(a1, &v11);
  if (v13)
  {
    while ((a2[1] & 1) == 0)
    {
      __break(1u);
LABEL_12:
      result = (*(*result + 16))(result, v7);
      if ((v13 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    *a3 = *a2;
    *(a3 + 8) = v11;
    *(a3 + 24) = v12;
    v8 = 1;
  }

  else
  {
    v7 = *a1;
    v9 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      goto LABEL_12;
    }

LABEL_10:
    v8 = 0;
    *a3 = 0;
  }

  *(a3 + 32) = v8;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::FocusDirection,void>::decode<IPC::Decoder>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v9 = a1;
    v6 = a1[3];
    if (v6)
    {
      if (v1)
      {
        (*(*v6 + 16))(v6);
        v3 = *v9;
        v1 = v9[1];
        goto LABEL_8;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_8:
    *v9 = 0;
    v9[1] = 0;
    v7 = v9[3];
    if (v7 && v1)
    {
      (*(*v7 + 16))(v7, v3);
    }

    goto LABEL_9;
  }

  a1[2] = (v2 + 1);
  if (!v2)
  {
    v9 = a1;
    goto LABEL_8;
  }

  v4 = *v2;
  if (v4 >= 7)
  {
LABEL_9:
    v4 = 0;
    v5 = 0;
    return v4 | (v5 << 8);
  }

  v5 = 1;
  return v4 | (v5 << 8);
}

uint64_t _ZZN3IPC27callMemberFunctionCoroutineIN6WebKit8WebFrameES2_FN3WTF9AwaitableINSt3__18optionalINS1_13FrameInfoDataEEEEEvENS5_5tupleIJEEEFvOS8_EEEvPT_MT0_T1_OT2_ONS3_17CompletionHandlerIT3_EEENKUlSF_E_clINSM_ISE_EEEENS3_4TaskESF__resume(uint64_t a1)
{
  v2 = *(a1 + 408);
  WTF::Awaitable<std::optional<WebKit::FrameInfoData>>::Promise<std::optional<WebKit::FrameInfoData>>::result((a1 + 32), *(a1 + 24) + 16);
  (*(*v2 + 16))(v2, a1 + 32);
  (*(*v2 + 8))(v2);
  if (*(a1 + 384) == 1)
  {
    WebKit::FrameInfoData::~FrameInfoData((a1 + 32));
  }

  v4 = *(a1 + 400);
  if (v4)
  {
    (*(v4 + 8))();
  }

  v5 = *(a1 + 416);
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t _ZZN3IPC27callMemberFunctionCoroutineIN6WebKit8WebFrameES2_FN3WTF9AwaitableINSt3__18optionalINS1_13FrameInfoDataEEEEEvENS5_5tupleIJEEEFvOS8_EEEvPT_MT0_T1_OT2_ONS3_17CompletionHandlerIT3_EEENKUlSF_E_clINSM_ISE_EEEENS3_4TaskESF__destroy(WTF *this, void *a2)
{
  v3 = *(this + 50);
  if (v3)
  {
    (*(v3 + 8))();
  }

  v4 = *(this + 52);
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  v5 = *(this + 51);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::MediaCapability::create@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = WTF::fastMalloc(0x50);
  result = WebKit::MediaCapability::MediaCapability(v4, a1);
  *a2 = v4;
  return result;
}

uint64_t WebKit::MediaCapability::MediaCapability(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *a1 = &unk_1F10EE3A0;
  *(a1 + 28) = 0;
  WTF::URL::URL(a1 + 32, a2);
  WTF::URL::protocolHostAndPort(&v15, (a1 + 32));
  MEMORY[0x19EB01DD0](v16, &v15, 0);
  WTF::URL::createCFURL(&v17, v16);
  v5 = v16[0];
  v16[0] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = v15;
  v15 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  if (v17)
  {
    v7 = objc_alloc(MEMORY[0x1E695AA60]);
    v8 = [v7 initWithWebPageURL:v17];
    *(a1 + 72) = v8;
    v9 = v17;
    v17 = 0;
    if (v9)
    {

      v8 = *(a1 + 72);
    }

    v10 = [MEMORY[0x1E695AA70] mediaPlaybackAndCaptureWithEnvironment:v8];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    v13 = *v3;
    *v3 = v11;
    if (v13)
    {
    }

    return a1;
  }

  else
  {
    result = 42;
    __break(0xC471u);
  }

  return result;
}

void sub_19D96B304(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  v15 = *(v11 + 32);
  *(v11 + 32) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  if (*(v11 + 24) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(v13, a2);
    v16 = *(v11 + 8);
    *v11 = v12;
    *(v11 + 8) = 0;
    if (v16)
    {
    }

    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void sub_19D96B3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    JUMPOUT(0x19D96B374);
  }

  JUMPOUT(0x19D96B378);
}

uint64_t WebKit::MediaCapability::isActivatingOrActive(WebKit::MediaCapability *this)
{
  v1 = *(this + 28);
  if (v1 < 4)
  {
    return (6u >> (v1 & 0xF)) & 1;
  }

  result = 69;
  __break(0xC471u);
  return result;
}

char *WebKit::MediaCapability::environmentIdentifier@<X0>(id *this@<X0>, atomic_uint **a2@<X8>)
{
  result = [this[9] createXPCRepresentation];
  if (result)
  {
    result = xpc_dictionary_get_string(result, "identifier");
    if (result)
    {
      strlen(result);

      return WTF::String::fromUTF8();
    }

    else
    {
      *a2 = 0;
    }
  }

  else
  {
    v4 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    *a2 = v4;
  }

  return result;
}

uint64_t WebKit::MediaPlaybackTargetContextSerialized::MediaPlaybackTargetContextSerialized(uint64_t a1, atomic_uint **a2)
{
  *(a1 + 8) = 2;
  *a1 = &unk_1F10E8450;
  (*(*a2 + 2))(a2);
  *(a1 + 24) = (*(*a2 + 3))(a2);
  *(a1 + 25) = (*(*a2 + 4))(a2);
  v5 = *(a2 + 8);
  if (v5 == 2)
  {
    LOBYTE(v5) = *(a2 + 26);
  }

  *(a1 + 32) = 0;
  v6 = (a1 + 32);
  *(a1 + 26) = v5;
  *(a1 + 27) = 0;
  *(a1 + 40) = 0;
  v7 = *(a2 + 8);
  if (v7 == 2)
  {
    *(a1 + 27) = *(a2 + 27);
    v16 = a2[4];
    if (v16)
    {
      atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      v17 = *v6;
      *v6 = v16;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v4);
      }
    }

    else
    {
      *v6 = 0;
    }

    v18 = a2[5];
    if (v18)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    }

    v19 = *(a1 + 40);
    *(a1 + 40) = v18;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v4);
    }
  }

  else if (v7 == 1)
  {
    *(a1 + 27) = *(a2 + 24);
  }

  else if (!*(a2 + 8))
  {
    WebCore::MediaPlaybackTargetContextCocoa::outputContext(&v21, a2);
    WebKit::CoreIPCAVOutputContext::CoreIPCAVOutputContext(&v22, v21);
    v9 = v22;
    v22 = 0;
    v10 = *v6;
    *v6 = v9;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    v11 = v23;
    v23 = 0;
    v12 = *(a1 + 40);
    *(a1 + 40) = v11;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v8);
      }

      v13 = v23;
      v23 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }
    }

    v14 = v22;
    v22 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v8);
    }

    v15 = v21;
    v21 = 0;
    if (v15)
    {
    }
  }

  return a1;
}

void sub_19D96B71C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  v13 = *(v10 + 40);
  *(v10 + 40) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, a2);
  }

  v14 = *v11;
  *v11 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  v15 = *(v10 + 16);
  *(v10 + 16) = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebKit::MediaPlaybackTargetContextSerialized::platformContext(WebKit::MediaPlaybackTargetContextSerialized *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 26) == 1)
  {
    v3 = *(this + 27);
    v14 = 1;
    v13 = &unk_1F10EE580;
    v4 = *(this + 2);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      v5 = v14;
    }

    else
    {
      v5 = 1;
    }

    *(a2 + 8) = v5;
    *a2 = &unk_1F10EE580;
    *(a2 + 16) = v4;
    *(a2 + 24) = v3;
    *(a2 + 32) = 1;
  }

  else
  {
    WebKit::CoreIPCAVOutputContext::toID(this + 4, &v11);
    if (v11 && ((*MEMORY[0x1E69E22B0])(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = v11;
      v11 = 0;
    }

    else
    {
      v6 = 0;
    }

    v12 = v6;
    WebCore::MediaPlaybackTargetContextCocoa::MediaPlaybackTargetContextCocoa();
    *(a2 + 8) = v14;
    *a2 = MEMORY[0x1E69E2EB0] + 16;
    v7 = v15;
    *(a2 + 16) = v15;
    if (v7)
    {
      v8 = v7;
    }

    *(a2 + 32) = 0;
    WebCore::MediaPlaybackTargetContextCocoa::~MediaPlaybackTargetContextCocoa(&v13);
    v9 = v12;
    v12 = 0;
    if (v9)
    {
    }

    v10 = v11;
    v11 = 0;
    if (v10)
    {
    }
  }
}

void sub_19D96B904(_Unwind_Exception *a1, void *a2, void *a3, ...)
{
  va_start(va, a3);
  WebCore::MediaPlaybackTargetContextCocoa::~MediaPlaybackTargetContextCocoa(va);
  if (a3)
  {
  }

  if (a2)
  {
  }

  _Unwind_Resume(a1);
}

void WebCore::MediaPlaybackTargetContextMock::~MediaPlaybackTargetContextMock(WebCore::MediaPlaybackTargetContextMock *this, WTF::StringImpl *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  bmalloc::api::tzoneFree(this, a2);
}

void WebKit::PaymentAuthorizationPresenter::completeMerchantValidation(uint64_t a1, id *a2)
{
  v3 = (*(*a1 + 32))(a1);
  v5 = *a2;
  if (*a2)
  {
    v4 = v5;
  }

  [v3 completeMerchantValidation:? error:?];
  if (v5)
  {
  }
}

void sub_19D96BA34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PaymentAuthorizationPresenter::completePaymentMethodSelection(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 656))
  {
    v4 = *(a2 + 92);
    if (v4 && ((v5 = *(a2 + 80) + 80 * v4, v6 = *(v5 - 7), v7 = *(v5 - 8), v6 == 1) ? (v8 = v7 == 0) : (v8 = 0), v8))
    {
      v13 = objc_alloc((*MEMORY[0x1E69E2430])());
      if ((*(a2 + 656) & 1) == 0)
      {
        goto LABEL_46;
      }

      v10 = v13;
      v11 = WebCore::platformDisbursementSummaryItems();
    }

    else
    {
      v9 = objc_alloc((*MEMORY[0x1E69E2430])());
      if ((*(a2 + 656) & 1) == 0)
      {
        goto LABEL_46;
      }

      v10 = v9;
      v11 = WebCore::platformSummaryItems();
    }

    v14 = [v10 initWithPaymentSummaryItems:v11];
    if (*(a2 + 656))
    {
      WebKit::toNSErrors(&v27, a2 + 616);
      v15 = v27;
      [v14 setErrors:v27];
      if (v15)
      {
      }

      if (*(a2 + 656))
      {
        WebKit::toPKShippingMethods(a2 + 632, &v27);
        [v14 setAvailableShippingMethods:v27];
        v17 = v27;
        v27 = 0;
        if (v17)
        {
        }

        if (*(a2 + 656))
        {
          if (*(a2 + 296) != 1)
          {
            goto LABEL_25;
          }

          WebKit::platformRecurringPaymentRequest((a2 + 96), v16, &v27);
          [v14 setRecurringPaymentRequest:v27];
          v18 = v27;
          v27 = 0;
          if (v18)
          {
          }

          if (*(a2 + 656))
          {
LABEL_25:
            if (*(a2 + 416) != 1)
            {
              goto LABEL_49;
            }

            WebKit::platformAutomaticReloadPaymentRequest((a2 + 304), v16, &v27);
            [v14 setAutomaticReloadPaymentRequest:v27];
            v19 = v27;
            v27 = 0;
            if (v19)
            {
            }

            if (*(a2 + 656))
            {
LABEL_49:
              if ((*(a2 + 440) & 1) == 0)
              {
                goto LABEL_50;
              }

              WebKit::platformPaymentTokenContexts(a2 + 424, &v27);
              [v14 setMultiTokenContexts:v27];
              v20 = v27;
              v27 = 0;
              if (v20)
              {
              }

              if (*(a2 + 656))
              {
LABEL_50:
                v21 = *(a2 + 648);
                if (v21)
                {
                  atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
                  MEMORY[0x19EB00B70](&v27, v21);
                  if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v21, v22);
                  }
                }

                else
                {
                  v27 = &stru_1F1147748;
                  v23 = &stru_1F1147748;
                }

                [v14 setInstallmentGroupIdentifier:v27];
                v24 = v27;
                v27 = 0;
                if (v24)
                {
                }

                [(*(*a1 + 32))(a1) completePaymentMethodSelection:v14];
                if (*(a2 + 656))
                {
                  if (*(a2 + 576) == 1)
                  {
                    WebKit::platformDeferredPaymentRequest((a2 + 448), v25, &v27);
                    [v14 setDeferredPaymentRequest:v27];
                    v26 = v27;
                    v27 = 0;
                    if (v26)
                    {
                    }
                  }

                  if (v14)
                  {
                  }

                  return;
                }
              }
            }
          }
        }
      }
    }

LABEL_46:
    __break(1u);
    return;
  }

  v12 = (*(*a1 + 32))(a1);

  [v12 completePaymentMethodSelection:0];
}

void sub_19D96BD54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::toNSErrors(void *a1, uint64_t a2)
{
  v54 = a1;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 12)];
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    v8 = *MEMORY[0x1E696A578];
    while (1)
    {
      v9 = *v6;
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = *(v9 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
        atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v55, v11);
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v12);
        }
      }

      else
      {
        v55 = &stru_1F1147748;
        v13 = &stru_1F1147748;
      }

      PassKitCore_PKContactFieldPhoneNumber = [v10 setObject:v55 forKey:{v8, v54}];
      v16 = v55;
      v55 = 0;
      if (v16)
      {
      }

      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        PassKitCore_PKContactFieldPhoneNumber = WTF::StringImpl::destroy(v11, v15);
      }

      v17 = *(v9 + 24);
      if ((v17 & 0x100) == 0 || v17)
      {
        break;
      }

      v18 = *(v9 + 12);
      if (v18 != 6)
      {
        if (v18 == 7)
        {
          if ((*(v9 + 13) & 0x100) != 0)
          {
            v19 = (*MEMORY[0x1E69E2368])(PassKitCore_PKContactFieldPhoneNumber);
            v20 = *(v9 + 13);
            if ((v20 & 0x100) == 0)
            {
              v53 = std::__throw_bad_optional_access[abi:sn200100]();
              if (v10)
              {
              }

              if (v4)
              {
              }

              _Unwind_Resume(v53);
            }

            v21 = v19;
            if (v20 <= 2u)
            {
              if (v20)
              {
                if (v20 == 1)
                {
                  PassKitCore_PKContactFieldEmailAddress = PAL::get_PassKitCore_PKContactFieldEmailAddress(v19);
                }

                else
                {
                  PassKitCore_PKContactFieldEmailAddress = PAL::get_PassKitCore_PKContactFieldName(v19);
                }
              }

              else
              {
                PassKitCore_PKContactFieldEmailAddress = PAL::get_PassKitCore_PKContactFieldPhoneNumber(v19);
              }

LABEL_21:
              v2 = PassKitCore_PKContactFieldEmailAddress;
            }

            else
            {
              if (v20 - 4 < 9)
              {
                PassKitCore_PKContactFieldEmailAddress = PAL::get_PassKitCore_PKContactFieldPostalAddress(v19);
                goto LABEL_21;
              }

              if (v20 == 3)
              {
                PassKitCore_PKContactFieldEmailAddress = PAL::get_PassKitCore_PKContactFieldPhoneticName(v19);
                goto LABEL_21;
              }
            }

            v23 = *(v9 + 16);
            if (v23)
            {
              atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
              atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
              MEMORY[0x19EB00B70](&v55, v23);
              if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v23, v24);
              }
            }

            else
            {
              v55 = &stru_1F1147748;
              v31 = &stru_1F1147748;
            }

            v33 = [(PAL *)v21 disbursementContactInvalidErrorWithContactField:v2 localizedDescription:v55];
            v34 = v55;
            v55 = 0;
            if (v34)
            {
            }

            if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v23, v32);
            }

            goto LABEL_87;
          }

LABEL_74:
          v28 = MEMORY[0x1E696ABC0];
          PassKitCore_PKPaymentErrorDomain = PAL::get_PassKitCore_PKPaymentErrorDomain(PassKitCore_PKContactFieldPhoneNumber);
          v46 = *(v9 + 12);
          v30 = -1;
          if (v46 <= 2)
          {
            if (v46 == 1)
            {
              v30 = 1;
            }

            else if (v46 == 2)
            {
              v30 = 2;
            }
          }

          else
          {
            switch(v46)
            {
              case 3u:
                v30 = 3;
                break;
              case 4u:
                v30 = 4;
                break;
              case 5u:
                v30 = 5;
                break;
            }
          }
        }

        else
        {
          v28 = MEMORY[0x1E696ABC0];
          PassKitCore_PKPaymentErrorDomain = PAL::get_PassKitCore_PKDisbursementErrorDomain(PassKitCore_PKContactFieldPhoneNumber);
          v30 = -1;
        }

        v27 = [v28 errorWithDomain:PassKitCore_PKPaymentErrorDomain code:v30 userInfo:v10];
        goto LABEL_86;
      }

      v27 = [(*MEMORY[0x1E69E2368])(PassKitCore_PKContactFieldPhoneNumber) disbursementCardUnsupportedError];
LABEL_86:
      v33 = v27;
LABEL_87:
      if (v10)
      {
      }

      if (v33)
      {
        [v4 addObject:v33];
      }

      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_109;
      }
    }

    v25 = *(v9 + 13);
    if ((v25 & 0x100) != 0)
    {
      switch(v25)
      {
        case 0:
          v2 = 0;
          PassKitCore_PKContactFieldPhoneNumber = PAL::get_PassKitCore_PKContactFieldPhoneNumber(PassKitCore_PKContactFieldPhoneNumber);
          v26 = PassKitCore_PKContactFieldPhoneNumber;
          if (!PassKitCore_PKContactFieldPhoneNumber)
          {
            goto LABEL_69;
          }

          goto LABEL_63;
        case 1:
          v2 = 0;
          PassKitCore_PKContactFieldPhoneNumber = PAL::get_PassKitCore_PKContactFieldEmailAddress(PassKitCore_PKContactFieldPhoneNumber);
          v26 = PassKitCore_PKContactFieldPhoneNumber;
          if (PassKitCore_PKContactFieldPhoneNumber)
          {
            goto LABEL_63;
          }

          goto LABEL_69;
        case 2:
          v2 = 0;
          PassKitCore_PKContactFieldPhoneNumber = PAL::get_PassKitCore_PKContactFieldName(PassKitCore_PKContactFieldPhoneNumber);
          v26 = PassKitCore_PKContactFieldPhoneNumber;
          if (PassKitCore_PKContactFieldPhoneNumber)
          {
            goto LABEL_63;
          }

          goto LABEL_69;
        case 3:
          v2 = 0;
          PassKitCore_PKContactFieldPhoneNumber = PAL::get_PassKitCore_PKContactFieldPhoneticName(PassKitCore_PKContactFieldPhoneNumber);
          v26 = PassKitCore_PKContactFieldPhoneNumber;
          if (PassKitCore_PKContactFieldPhoneNumber)
          {
            goto LABEL_63;
          }

          goto LABEL_69;
        case 4:
          v2 = 0;
          PassKitCore_PKContactFieldPhoneNumber = PAL::get_PassKitCore_PKContactFieldPostalAddress(PassKitCore_PKContactFieldPhoneNumber);
          v26 = PassKitCore_PKContactFieldPhoneNumber;
          if (!PassKitCore_PKContactFieldPhoneNumber)
          {
            goto LABEL_69;
          }

LABEL_63:
          v2 = 0;
          PassKitCore_PKContactFieldPhoneNumber = PassKitCore_PKContactFieldPhoneNumber;
          v37 = 0;
          break;
        case 5:
          PassKitCore_PKContactFieldPostalAddress = PAL::get_PassKitCore_PKContactFieldPostalAddress(PassKitCore_PKContactFieldPhoneNumber);
          v26 = PassKitCore_PKContactFieldPostalAddress;
          if (PassKitCore_PKContactFieldPostalAddress)
          {
            v45 = PassKitCore_PKContactFieldPostalAddress;
          }

          v2 = v26;
          PassKitCore_PKContactFieldPhoneNumber = _MergedGlobals_32();
          v37 = PassKitCore_PKContactFieldPhoneNumber;
          if (PassKitCore_PKContactFieldPhoneNumber)
          {
            goto LABEL_104;
          }

          break;
        case 6:
          v47 = PAL::get_PassKitCore_PKContactFieldPostalAddress(PassKitCore_PKContactFieldPhoneNumber);
          v26 = v47;
          if (v47)
          {
            v48 = v47;
          }

          v2 = v26;
          PassKitCore_PKContactFieldPhoneNumber = off_1ED63B5E0();
          v37 = PassKitCore_PKContactFieldPhoneNumber;
          if (PassKitCore_PKContactFieldPhoneNumber)
          {
            goto LABEL_104;
          }

          break;
        case 7:
          v42 = PAL::get_PassKitCore_PKContactFieldPostalAddress(PassKitCore_PKContactFieldPhoneNumber);
          v26 = v42;
          if (v42)
          {
            v43 = v42;
          }

          v2 = v26;
          PassKitCore_PKContactFieldPhoneNumber = off_1ED63B5E8();
          v37 = PassKitCore_PKContactFieldPhoneNumber;
          if (PassKitCore_PKContactFieldPhoneNumber)
          {
            goto LABEL_104;
          }

          break;
        case 8:
          v51 = PAL::get_PassKitCore_PKContactFieldPostalAddress(PassKitCore_PKContactFieldPhoneNumber);
          v26 = v51;
          if (v51)
          {
            v52 = v51;
          }

          v2 = v26;
          PassKitCore_PKContactFieldPhoneNumber = off_1ED63B5F0();
          v37 = PassKitCore_PKContactFieldPhoneNumber;
          if (PassKitCore_PKContactFieldPhoneNumber)
          {
            goto LABEL_104;
          }

          break;
        case 9:
          v40 = PAL::get_PassKitCore_PKContactFieldPostalAddress(PassKitCore_PKContactFieldPhoneNumber);
          v26 = v40;
          if (v40)
          {
            v41 = v40;
          }

          v2 = v26;
          PassKitCore_PKContactFieldPhoneNumber = off_1ED63B5F8();
          v37 = PassKitCore_PKContactFieldPhoneNumber;
          if (PassKitCore_PKContactFieldPhoneNumber)
          {
            goto LABEL_104;
          }

          break;
        case 10:
          v49 = PAL::get_PassKitCore_PKContactFieldPostalAddress(PassKitCore_PKContactFieldPhoneNumber);
          v26 = v49;
          if (v49)
          {
            v50 = v49;
          }

          v2 = v26;
          PassKitCore_PKContactFieldPhoneNumber = off_1ED63B600();
          v37 = PassKitCore_PKContactFieldPhoneNumber;
          if (PassKitCore_PKContactFieldPhoneNumber)
          {
            goto LABEL_104;
          }

          break;
        case 11:
          v35 = PAL::get_PassKitCore_PKContactFieldPostalAddress(PassKitCore_PKContactFieldPhoneNumber);
          v26 = v35;
          if (v35)
          {
            v36 = v35;
          }

          v2 = v26;
          PassKitCore_PKContactFieldPhoneNumber = off_1ED63B608();
          v37 = PassKitCore_PKContactFieldPhoneNumber;
          if (PassKitCore_PKContactFieldPhoneNumber)
          {
            goto LABEL_104;
          }

          break;
        case 12:
          v38 = PAL::get_PassKitCore_PKContactFieldPostalAddress(PassKitCore_PKContactFieldPhoneNumber);
          v26 = v38;
          if (v38)
          {
            v39 = v38;
          }

          v2 = v26;
          PassKitCore_PKContactFieldPhoneNumber = off_1ED63B610();
          v37 = PassKitCore_PKContactFieldPhoneNumber;
          if (PassKitCore_PKContactFieldPhoneNumber)
          {
LABEL_104:
            v2 = v26;
            PassKitCore_PKContactFieldPhoneNumber = PassKitCore_PKContactFieldPhoneNumber;
          }

          break;
        default:
          v26 = 0;
LABEL_69:
          v37 = 0;
          break;
      }

      PassKitCore_PKContactFieldPhoneNumber = [v10 setObject:v26 forKey:PAL::get_PassKitCore_PKPaymentErrorContactFieldUserInfoKey(PassKitCore_PKContactFieldPhoneNumber)];
      if (v37)
      {
        [v10 setObject:v37 forKey:PAL::get_PassKitCore_PKPaymentErrorPostalAddressUserInfoKey(PassKitCore_PKContactFieldPhoneNumber)];
      }

      if (v26)
      {
      }
    }

    goto LABEL_74;
  }

LABEL_109:
  *v54 = v4;
}

void WebKit::PaymentAuthorizationPresenter::completePaymentSession(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *a2;
  if (v4 > 7)
  {
    v5 = 1;
  }

  else
  {
    v5 = qword_19E703358[v4];
  }

  WebKit::toNSErrors(&v36, (a2 + 4));
  if (*(a2 + 56) != 1)
  {
    v12 = (*(*a1 + 32))(a1);
    v13 = v36;
    [v12 completePaymentSession:v5 errors:v36];
    goto LABEL_46;
  }

  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  *(a2 + 12) = 0u;
  v8 = *(a2 + 5);
  v9 = *(a2 + 6);
  *(a2 + 20) = 0u;
  v10 = objc_alloc((*MEMORY[0x1E69E2370])());
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v35, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v11);
    }
  }

  else
  {
    v35 = &stru_1F1147748;
    v14 = &stru_1F1147748;
  }

  v15 = v35;
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v34, v7);
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v16);
    }
  }

  else
  {
    v34 = &stru_1F1147748;
    v17 = &stru_1F1147748;
  }

  v18 = v34;
  v19 = objc_alloc(MEMORY[0x1E695DFF8]);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v33, v8);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v20);
    }
  }

  else
  {
    v33 = &stru_1F1147748;
    v21 = &stru_1F1147748;
  }

  v22 = [v19 initWithString:v33];
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v32, v9);
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v23);
    }
  }

  else
  {
    v32 = &stru_1F1147748;
    v24 = &stru_1F1147748;
  }

  v25 = [v10 initWithOrderTypeIdentifier:v15 orderIdentifier:v18 webServiceURL:v22 authenticationToken:v32];
  v26 = v32;
  v32 = 0;
  if (v26)
  {
  }

  if (v22)
  {
  }

  v27 = v33;
  v33 = 0;
  if (v27)
  {
  }

  v28 = v34;
  v34 = 0;
  if (v28)
  {
  }

  v29 = v35;
  v35 = 0;
  if (v29)
  {
  }

  v30 = (*(*a1 + 32))(a1);
  v13 = v36;
  [v30 completePaymentSession:v5 errors:v36 orderDetails:v25];
  if (v25)
  {
  }

  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v31);
    if (!v8)
    {
      goto LABEL_40;
    }
  }

  else if (!v8)
  {
    goto LABEL_40;
  }

  if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v31);
  }

LABEL_40:
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v31);
    if (!v6)
    {
      goto LABEL_46;
    }
  }

  else if (!v6)
  {
    goto LABEL_46;
  }

  if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v31);
  }

LABEL_46:
  if (v13)
  {
  }
}

void sub_19D96C854(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14)
{
  if (v18)
  {
  }

  if (a11)
  {
  }

  if (a12)
  {
  }

  if (a13)
  {
  }

  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, a2);
  }

  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  if (a14)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PaymentAuthorizationPresenter::completeShippingContactSelection(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 648))
  {
    v4 = *(a2 + 608);
    v5 = objc_alloc((*MEMORY[0x1E69E2450])());
    if (v4 == 1)
    {
      if ((*(a2 + 648) & 1) == 0)
      {
        goto LABEL_35;
      }

      v6 = WebCore::platformDisbursementSummaryItems();
    }

    else
    {
      if ((*(a2 + 648) & 1) == 0)
      {
        goto LABEL_35;
      }

      v6 = WebCore::platformSummaryItems();
    }

    v8 = [v5 initWithPaymentSummaryItems:v6];
    if (*(a2 + 648))
    {
      v9 = v8;
      WebKit::toNSErrors(&v17, a2 + 616);
      v10 = v17;
      [v9 setErrors:v17];
      if (v10)
      {
      }

      if (*(a2 + 648))
      {
        WebKit::toPKShippingMethods(a2 + 632, &v17);
        [v9 setAvailableShippingMethods:v17];
        v12 = v17;
        v17 = 0;
        if (v12)
        {
        }

        if (*(a2 + 648))
        {
          if (*(a2 + 296) != 1)
          {
            goto LABEL_21;
          }

          WebKit::platformRecurringPaymentRequest((a2 + 96), v11, &v17);
          [v9 setRecurringPaymentRequest:v17];
          v13 = v17;
          v17 = 0;
          if (v13)
          {
          }

          if (*(a2 + 648))
          {
LABEL_21:
            if (*(a2 + 416) != 1)
            {
              goto LABEL_28;
            }

            WebKit::platformAutomaticReloadPaymentRequest((a2 + 304), v11, &v17);
            [v9 setAutomaticReloadPaymentRequest:v17];
            v14 = v17;
            v17 = 0;
            if (v14)
            {
            }

            if (*(a2 + 648))
            {
LABEL_28:
              if (*(a2 + 440) != 1)
              {
                goto LABEL_38;
              }

              WebKit::platformPaymentTokenContexts(a2 + 424, &v17);
              [v9 setMultiTokenContexts:v17];
              v15 = v17;
              v17 = 0;
              if (v15)
              {
              }

              if (*(a2 + 648))
              {
LABEL_38:
                if (*(a2 + 576) == 1)
                {
                  WebKit::platformDeferredPaymentRequest((a2 + 448), v11, &v17);
                  [v9 setDeferredPaymentRequest:v17];
                  v16 = v17;
                  v17 = 0;
                  if (v16)
                  {
                  }
                }

                [(*(*a1 + 32))(a1) completeShippingContactSelection:v9];
                if (v9)
                {
                }

                return;
              }
            }
          }
        }
      }
    }

LABEL_35:
    __break(1u);
    return;
  }

  v7 = (*(*a1 + 32))(a1);

  [v7 completeShippingContactSelection:0];
}

void sub_19D96CC58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PaymentAuthorizationPresenter::completeShippingMethodSelection(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 632))
  {
    v4 = objc_alloc((*MEMORY[0x1E69E2448])());
    if ((*(a2 + 632) & 1) == 0)
    {
      goto LABEL_28;
    }

    v5 = [v4 initWithPaymentSummaryItems:WebCore::platformSummaryItems()];
    if ((*(a2 + 632) & 1) == 0)
    {
      goto LABEL_28;
    }

    v6 = v5;
    WebKit::toPKShippingMethods(a2 + 616, &v14);
    [v6 setAvailableShippingMethods:v14];
    v8 = v14;
    v14 = 0;
    if (v8)
    {
    }

    if ((*(a2 + 632) & 1) == 0)
    {
      goto LABEL_28;
    }

    if (*(a2 + 296) == 1)
    {
      WebKit::platformRecurringPaymentRequest((a2 + 96), v7, &v14);
      [v6 setRecurringPaymentRequest:v14];
      v9 = v14;
      v14 = 0;
      if (v9)
      {
      }

      if ((*(a2 + 632) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    if (*(a2 + 416) == 1)
    {
      WebKit::platformAutomaticReloadPaymentRequest((a2 + 304), v7, &v14);
      [v6 setAutomaticReloadPaymentRequest:v14];
      v10 = v14;
      v14 = 0;
      if (v10)
      {
      }

      if ((*(a2 + 632) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    if (*(a2 + 440) != 1)
    {
      goto LABEL_19;
    }

    WebKit::platformPaymentTokenContexts(a2 + 424, &v14);
    [v6 setMultiTokenContexts:v14];
    v11 = v14;
    v14 = 0;
    if (v11)
    {
    }

    if (*(a2 + 632))
    {
LABEL_19:
      if (*(a2 + 576) == 1)
      {
        WebKit::platformDeferredPaymentRequest((a2 + 448), v7, &v14);
        [v6 setDeferredPaymentRequest:v14];
        v12 = v14;
        v14 = 0;
        if (v12)
        {
        }
      }

      [(*(*a1 + 32))(a1) completeShippingMethodSelection:v6];
      if (v6)
      {
      }
    }

    else
    {
LABEL_28:
      __break(1u);
    }
  }

  else
  {
    v13 = (*(*a1 + 32))(a1);

    [v13 completeShippingMethodSelection:0];
  }
}

void sub_19D96CEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PaymentAuthorizationPresenter::completeCouponCodeChange(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 648))
  {
    v4 = objc_alloc((*MEMORY[0x1E69E2418])());
    if ((*(a2 + 648) & 1) == 0)
    {
      goto LABEL_31;
    }

    v5 = [v4 initWithPaymentSummaryItems:WebCore::platformSummaryItems()];
    if ((*(a2 + 648) & 1) == 0)
    {
      goto LABEL_31;
    }

    v6 = v5;
    WebKit::toNSErrors(&v15, a2 + 616);
    v7 = v15;
    [v6 setErrors:v15];
    if (v7)
    {
    }

    if ((*(a2 + 648) & 1) == 0)
    {
      goto LABEL_31;
    }

    WebKit::toPKShippingMethods(a2 + 632, &v15);
    [v6 setAvailableShippingMethods:v15];
    v9 = v15;
    v15 = 0;
    if (v9)
    {
    }

    if ((*(a2 + 648) & 1) == 0)
    {
      goto LABEL_31;
    }

    if (*(a2 + 296) == 1)
    {
      WebKit::platformRecurringPaymentRequest((a2 + 96), v8, &v15);
      [v6 setRecurringPaymentRequest:v15];
      v10 = v15;
      v15 = 0;
      if (v10)
      {
      }

      if ((*(a2 + 648) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (*(a2 + 416) == 1)
    {
      WebKit::platformAutomaticReloadPaymentRequest((a2 + 304), v8, &v15);
      [v6 setAutomaticReloadPaymentRequest:v15];
      v11 = v15;
      v15 = 0;
      if (v11)
      {
      }

      if ((*(a2 + 648) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (*(a2 + 440) != 1)
    {
      goto LABEL_22;
    }

    WebKit::platformPaymentTokenContexts(a2 + 424, &v15);
    [v6 setMultiTokenContexts:v15];
    v12 = v15;
    v15 = 0;
    if (v12)
    {
    }

    if (*(a2 + 648))
    {
LABEL_22:
      if (*(a2 + 576) == 1)
      {
        WebKit::platformDeferredPaymentRequest((a2 + 448), v8, &v15);
        [v6 setDeferredPaymentRequest:v15];
        v13 = v15;
        v15 = 0;
        if (v13)
        {
        }
      }

      [(*(*a1 + 32))(a1) completeCouponCodeChange:v6];
      if (v6)
      {
      }
    }

    else
    {
LABEL_31:
      __break(1u);
    }
  }

  else
  {
    v14 = (*(*a1 + 32))(a1);

    [v14 completeCouponCodeChange:0];
  }
}

void sub_19D96D180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::PaymentAuthorizationPresenter::~PaymentAuthorizationPresenter(WebKit::PaymentAuthorizationPresenter *this, void *a2)
{
  *this = &unk_1F10EE5B8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
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

void sub_19D96D534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D96D64C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  _Block_release(v10);
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19D96D75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  _Block_release(v10);
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19D96D8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D96DA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D96DB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D96DFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11[4] == 1)
  {
    (*(*v11 + 8))(v11);
  }

  else
  {
    --v11[4];
  }

  _Unwind_Resume(exception_object);
}

void sub_19D96E1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  if (a10)
  {
  }

  if (a9)
  {
  }

  (*(*v11 + 8))(v11);
  if (v10[4] == 1)
  {
    (*(*v10 + 8))(v10);
  }

  else
  {
    --v10[4];
  }

  _Unwind_Resume(a1);
}

void sub_19D96E3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D96E5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11[4] == 1)
  {
    (*(*v11 + 8))(v11);
  }

  else
  {
    --v11[4];
  }

  _Unwind_Resume(exception_object);
}

void sub_19D96E840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11[4] == 1)
  {
    (*(*v11 + 8))(v11);
  }

  else
  {
    --v11[4];
  }

  _Unwind_Resume(exception_object);
}

void sub_19D96EC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, uint64_t a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16)
{
  if (v16[4] == 1)
  {
    (*(*v16 + 8))(v16);
  }

  else
  {
    --v16[4];
  }

  _Unwind_Resume(exception_object);
}

void sub_19D96EFE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (v10[4] == 1)
  {
    (*(*v10 + 8))(v10);
  }

  else
  {
    --v10[4];
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN6WebKit22ListDataControllerBase14observeUpdatesEON3WTF8FunctionIFvvEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v1 + 2, v1);
  v2 = *(v1 + 1);
  atomic_fetch_add(v2, 1u);
  v3 = WTF::fastMalloc(0x10);
  *v3 = &unk_1F10EE7B8;
  v3[1] = v2;
  v5 = v3;
  (*(*v1 + 32))(v1, &v5);
  result = v5;
  v5 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19D96F3C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::LinkDecorationFilteringController::updateList(uint64_t a1, uint64_t *a2)
{
  if (PAL::WebPrivacyLibrary(1))
  {
    {
      v4 = HIDWORD(qword_1ED643310);
      if (HIDWORD(qword_1ED643310) == qword_1ED643310)
      {
        a2 = WTF::Vector<WTF::CompletionHandler<void ()(void)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&WebKit::LinkDecorationFilteringController::updateList(WTF::CompletionHandler<void ()(void)> &&)::lookupCompletionHandlers, HIDWORD(qword_1ED643310) + 1, a2);
        v5 = HIDWORD(qword_1ED643310);
        v6 = (WebKit::LinkDecorationFilteringController::updateList(WTF::CompletionHandler<void ()(void)> &&)::lookupCompletionHandlers + 8 * HIDWORD(qword_1ED643310));
        goto LABEL_10;
      }

      v7 = WebKit::LinkDecorationFilteringController::updateList(WTF::CompletionHandler<void ()(void)> &&)::lookupCompletionHandlers;
      v5 = HIDWORD(qword_1ED643310);
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v7 = &qword_1ED643318;
      WebKit::LinkDecorationFilteringController::updateList(WTF::CompletionHandler<void ()(void)> &&)::lookupCompletionHandlers = &qword_1ED643318;
      qword_1ED643310 = 1;
    }

    v6 = &v7[v4];
LABEL_10:
    v8 = *a2;
    *a2 = 0;
    *v6 = v8;
    HIDWORD(qword_1ED643310) = v5 + 1;
    if ((v5 + 1) <= 1)
    {
      v9 = [objc_alloc((*MEMORY[0x1E69E23B8])()) init];
      v10 = [v9 setAfterUpdates:0];
      v11 = [(*MEMORY[0x1E69E2268])(v10) sharedInstance];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = ___ZN6WebKit33LinkDecorationFilteringController10updateListEON3WTF17CompletionHandlerIFvvEEE_block_invoke;
      v12[3] = &__block_descriptor_40_e41_v24__0__WPLinkFilteringData_8__NSError_16l;
      v12[4] = a1;
      [v11 requestLinkFilteringData:v9 completionHandler:v12];
      if (v9)
      {
      }
    }

    return;
  }

  WTF::CompletionHandler<void ()(void)>::operator()(a2);
}

void sub_19D96F5D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN6WebKit33LinkDecorationFilteringController10updateListEON3WTF17CompletionHandlerIFvvEEE_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v57 = 0;
  v58 = 0;
  if (a3)
  {
    v4 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "Failed to request query parameters from WebPrivacy.", buf, 2u);
    }
  }

  else
  {
    v5 = [a2 rules];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v7)
    {
      v8 = *v54;
      do
      {
        v9 = 0;
        do
        {
          if (*v54 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v53 + 1) + 8 * v9);
          MEMORY[0x19EB02040](&v47, [v10 domain]);
          v44 = "http://";
          v45 = 8;
          result = WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(&v44, &v47, &v48);
          if (!v48)
          {
            __break(0xC471u);
            return result;
          }

          MEMORY[0x19EB01DD0](buf, &v48, 0);
          WebCore::RegistrableDomain::RegistrableDomain(&v52, buf);
          v13 = *buf;
          *buf = 0;
          if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v12);
          }

          v14 = v48;
          v48 = 0;
          if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v12);
          }

          v15 = v47;
          v47 = 0;
          if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v12);
          }

          v16 = objc_opt_respondsToSelector();
          v17 = &stru_1F1147748;
          if (v16)
          {
            v17 = [v10 path];
          }

          MEMORY[0x19EB02040](&v44, v17);
          MEMORY[0x19EB02040](&v48, [v10 queryParameter]);
          v19 = v52;
          v52 = 0;
          v20 = v44;
          v44 = 0;
          *buf = v19;
          v50 = v20;
          v21 = v48;
          v48 = 0;
          v51 = v21;
          if (HIDWORD(v58) == v58)
          {
            WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::LinkDecorationFilteringData>(&v57, buf);
          }

          else
          {
            v22 = HIDWORD(v58) + 1;
            v23 = (v57 + 24 * HIDWORD(v58));
            *buf = 0;
            *v23 = v19;
            v24 = v50;
            v50 = 0;
            v23[1] = v24;
            v25 = v51;
            v51 = 0;
            v23[2] = v25;
            HIDWORD(v58) = v22;
          }

          v26 = v51;
          v51 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v18);
          }

          v27 = v50;
          v50 = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v18);
          }

          v28 = *buf;
          *buf = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v18);
          }

          v29 = v48;
          v48 = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v18);
          }

          v30 = v44;
          v44 = 0;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v18);
          }

          v31 = v52;
          v52 = 0;
          if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v31, v18);
          }

          ++v9;
        }

        while (v7 != v9);
        v32 = [v5 countByEnumeratingWithState:&v53 objects:v59 count:16];
        v7 = v32;
      }

      while (v32);
    }

    v33 = *(v3 + 68);
    if (v33)
    {
      WTF::VectorTypeOperations<WebCore::LinkDecorationFilteringData>::destruct(*(v3 + 56), (*(v3 + 56) + 24 * v33));
    }

    v34 = *(v3 + 56);
    if (v34)
    {
      *(v3 + 56) = 0;
      *(v3 + 64) = 0;
      WTF::fastFree(v34, v6);
    }

    *(v3 + 56) = v57;
    v35 = v58;
    v57 = 0;
    v58 = 0;
    *(v3 + 64) = v35;
    (*(*v3 + 24))(v3);
  }

  v44 = &v46;
  v45 = 1;
  *buf = &v51;
  v50 = 1;
  WTF::VectorBuffer<WTF::CompletionHandler<void ()(void)>,1ul,WTF::FastMalloc>::adopt(buf, &WebKit::LinkDecorationFilteringController::updateList(WTF::CompletionHandler<void ()(void)> &&)::lookupCompletionHandlers);
  if (HIDWORD(qword_1ED643310))
  {
    v36 = WebKit::LinkDecorationFilteringController::updateList(WTF::CompletionHandler<void ()(void)> &&)::lookupCompletionHandlers;
    v37 = 8 * HIDWORD(qword_1ED643310);
    do
    {
      v38 = *v36;
      *v36 = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }

      ++v36;
      v37 -= 8;
    }

    while (v37);
  }

  WTF::VectorBuffer<WTF::CompletionHandler<void ()(void)>,1ul,WTF::FastMalloc>::adopt(&WebKit::LinkDecorationFilteringController::updateList(WTF::CompletionHandler<void ()(void)> &&)::lookupCompletionHandlers, &v44);
  if (HIDWORD(v50))
  {
    v40 = *buf;
    v41 = 8 * HIDWORD(v50);
    do
    {
      WTF::CompletionHandler<void ()(void)>::operator()(v40++);
      v41 -= 8;
    }

    while (v41);
  }

  WTF::Vector<WTF::CompletionHandler<void ()(void)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v39);
  WTF::Vector<WTF::CompletionHandler<void ()(void)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v42);
  return WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v57, v43);
}

void sub_19D96FAA4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16, WTF::StringImpl *a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a20)
  {
    if (atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a20, a2);
    }
  }

  WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a29, a2);
  _Unwind_Resume(a1);
}

void WebKit::requestLinkDecorationFilteringData(uint64_t *a1)
{
  if (!PAL::WebPrivacyLibrary(1))
  {
    goto LABEL_16;
  }

  if (byte_1ED641C69 == 1)
  {
    if (_MergedGlobals_13)
    {
      goto LABEL_4;
    }

LABEL_16:
    v10[0] = 0;
    v10[1] = 0;
    WTF::CompletionHandler<void ()(WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(a1);
    WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v8);
    return;
  }

  _MergedGlobals_13 = [(*MEMORY[0x1E69E2268])() instancesRespondToSelector:sel_requestAllowedLinkFilteringData_completionHandler_];
  byte_1ED641C69 = 1;
  if ((_MergedGlobals_13 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((byte_1ED641C6A & 1) == 0)
  {
    v2 = 0;
    v3 = 0;
    v5 = &qword_1ED641D20;
    qword_1ED641D10 = &qword_1ED641D20;
    *&dword_1ED641D18 = 1;
    byte_1ED641C6A = 1;
    goto LABEL_9;
  }

  v2 = dword_1ED641D1C;
  if (dword_1ED641D1C != dword_1ED641D18)
  {
    v5 = qword_1ED641D10;
    v3 = dword_1ED641D1C;
LABEL_9:
    v4 = &v5[v2];
    goto LABEL_10;
  }

  a1 = WTF::Vector<WTF::CompletionHandler<void ()(WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(dword_1ED641D1C + 1, a1);
  v3 = dword_1ED641D1C;
  v4 = (qword_1ED641D10 + 8 * dword_1ED641D1C);
LABEL_10:
  v6 = *a1;
  *a1 = 0;
  *v4 = v6;
  dword_1ED641D1C = v3 + 1;
  if ((v3 + 1) <= 1)
  {
    v9 = [objc_alloc((*MEMORY[0x1E69E23B8])()) init];
    v7 = [v9 setAfterUpdates:0];
    [objc_msgSend((*MEMORY[0x1E69E2268])(v7) "sharedInstance")];
    if (v9)
    {
    }
  }
}

uint64_t WTF::CompletionHandler<void ()(WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t ___ZN6WebKit34requestLinkDecorationFilteringDataEON3WTF17CompletionHandlerIFvONS0_6VectorIN7WebCore27LinkDecorationFilteringDataELm0ENS0_15CrashOnOverflowELm16ENS0_10FastMallocEEEEEE_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v52 = 0;
  v53 = 0;
  if (a3)
  {
    v3 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, "Failed to request allowed query parameters from WebPrivacy.", buf, 2u);
    }
  }

  else
  {
    v4 = [a2 rules];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v5)
    {
      v6 = *v49;
      do
      {
        v7 = 0;
        do
        {
          if (*v49 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v48 + 1) + 8 * v7);
          MEMORY[0x19EB02040](&v42, [v8 domain]);
          v39 = "http://";
          v40 = 8;
          WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(&v39, &v42, &v43);
          if (!v43)
          {
            __break(0xC471u);
            JUMPOUT(0x19D97035CLL);
          }

          MEMORY[0x19EB01DD0](buf, &v43, 0);
          WebCore::RegistrableDomain::RegistrableDomain(&v47, buf);
          v10 = *buf;
          *buf = 0;
          if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v10, v9);
          }

          v11 = v43;
          v43 = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v9);
          }

          v12 = v42;
          v42 = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v9);
          }

          MEMORY[0x19EB02040](&v39, [v8 queryParameter]);
          v14 = v47;
          v47 = 0;
          *buf = v14;
          v45 = 0;
          v15 = v39;
          v39 = 0;
          v46 = v15;
          if (HIDWORD(v53) == v53)
          {
            WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::LinkDecorationFilteringData>(&v52, buf);
          }

          else
          {
            v16 = HIDWORD(v53) + 1;
            v17 = &v52[3 * HIDWORD(v53)];
            *buf = 0;
            *v17 = v14;
            v18 = v45;
            v45 = 0;
            v17[1] = v18;
            v19 = v46;
            v46 = 0;
            v17[2] = v19;
            HIDWORD(v53) = v16;
          }

          v20 = v46;
          v46 = 0;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v13);
          }

          v21 = v45;
          v45 = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v13);
          }

          v22 = *buf;
          *buf = 0;
          if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v13);
          }

          v23 = v39;
          v39 = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v13);
          }

          v24 = v47;
          v47 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v13);
          }

          ++v7;
        }

        while (v5 != v7);
        v25 = [v4 countByEnumeratingWithState:&v48 objects:v54 count:16];
        v5 = v25;
      }

      while (v25);
    }
  }

  v39 = &v41;
  v40 = 1;
  *buf = &v46;
  v45 = 1;
  WTF::VectorBuffer<WTF::CompletionHandler<void ()(WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,1ul,WTF::FastMalloc>::adopt(buf, &qword_1ED641D10);
  if (dword_1ED641D1C)
  {
    v26 = qword_1ED641D10;
    v27 = 8 * dword_1ED641D1C;
    do
    {
      v28 = *v26;
      *v26 = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }

      ++v26;
      v27 -= 8;
    }

    while (v27);
  }

  WTF::VectorBuffer<WTF::CompletionHandler<void ()(WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,1ul,WTF::FastMalloc>::adopt(&qword_1ED641D10, &v39);
  WTF::Vector<WTF::CompletionHandler<void ()(WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v29);
  v31 = (HIDWORD(v45) - 1);
  if (HIDWORD(v45) - 1 >= 0)
  {
    v32 = (HIDWORD(v45) - 1);
    while (1)
    {
      v33 = *buf;
      if (!(v32 * 8))
      {
        break;
      }

      v39 = 0;
      LODWORD(v40) = 0;
      HIDWORD(v40) = HIDWORD(v53);
      if (HIDWORD(v53))
      {
        if (HIDWORD(v53) >= 0xAAAAAAB)
        {
          goto LABEL_56;
        }

        v34 = 24 * HIDWORD(v53);
        v35 = WTF::fastMalloc((24 * HIDWORD(v53)));
        LODWORD(v40) = v34 / 0x18;
        v39 = v35;
        WTF::VectorCopier<false,WebCore::LinkDecorationFilteringData>::uninitializedCopy<WebCore::LinkDecorationFilteringData>(v52, &v52[3 * HIDWORD(v53)], v35);
      }

      WTF::CompletionHandler<void ()(WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(&v33[v32]);
      WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v36);
      --v31;
      --v32;
      if (v31 >= HIDWORD(v45))
      {
LABEL_56:
        __break(0xC471u);
        JUMPOUT(0x19D9702FCLL);
      }
    }

    WTF::CompletionHandler<void ()(WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>::operator()(*buf);
  }

  WTF::Vector<WTF::CompletionHandler<void ()(WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v30);
  return WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v52, v37);
}

void sub_19D970368(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, int a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16, WTF::StringImpl *a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a20)
  {
    if (atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a20, a2);
    }
  }

  WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a30, a2);
  _Unwind_Resume(a1);
}

WebKit::RestrictedOpenerDomainsController *WebKit::RestrictedOpenerDomainsController::RestrictedOpenerDomainsController(WebKit::RestrictedOpenerDomainsController *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  WTF::ContinuousApproximateTime::now(this);
  WebKit::RestrictedOpenerDomainsController::scheduleNextUpdate(this, v2);
  WebKit::RestrictedOpenerDomainsController::update(this);
  v3 = [WKWebPrivacyNotificationListener alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN6WebKit33RestrictedOpenerDomainsControllerC2Ev_block_invoke;
  v7[3] = &__block_descriptor_40_e5_v8__0l;
  v7[4] = this;
  v4 = [(WKWebPrivacyNotificationListener *)v3 initWithType:8 callback:v7];
  v5 = *this;
  *this = v4;
  if (v5)
  {
  }

  return this;
}

void sub_19D9705E0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *v2;
  *v2 = 0;
  if (v5)
  {
  }

  _Unwind_Resume(exception_object);
}

double WebKit::RestrictedOpenerDomainsController::scheduleNextUpdate(uint64_t a1, double a2)
{
  v2 = &qword_1ED643000;
  v3 = &qword_1ED643000;
  {
    v4 = WebKit::RestrictedOpenerDomainsController::scheduleNextUpdate(WTF::ContinuousApproximateTime)::random;
    v5 = WebKit::RestrictedOpenerDomainsController::scheduleNextUpdate(WTF::ContinuousApproximateTime)::random ^ (WebKit::RestrictedOpenerDomainsController::scheduleNextUpdate(WTF::ContinuousApproximateTime)::random << 23);
    v6 = v5 >> 17;
  }

  else
  {
    v13 = a1;
    v12 = a2;
    v9 = WTF::cryptographicallyRandomNumber<unsigned int>();
    v2 = &qword_1ED643000;
    a2 = v12;
    v10 = v9;
    a1 = v13;
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v3 = &qword_1ED643000;
    v5 = v11 ^ (v11 << 23);
    v6 = v5 >> 17;
    v4 = ((v11 >> 26) | (v11 << 23)) ^ (v5 >> 17);
  }

  v2[105] = v4;
  v7 = v5 ^ v6 ^ (v4 >> 26) ^ v4;
  v3[106] = v7;
  result = a2 + 86400.0 + vcvtd_n_f64_u64((v7 + v4) & 0x1FFFFFFFFFFFFFLL, 0x35uLL) * 7200.0;
  *(a1 + 16) = result;
  return result;
}

void WebKit::RestrictedOpenerDomainsController::update(WebKit::RestrictedOpenerDomainsController *this)
{
  if (PAL::WebPrivacyLibrary(1))
  {
    v2 = MEMORY[0x1E69E2268];
    if ([(*MEMORY[0x1E69E2268])() instancesRespondToSelector:sel_requestRestrictedOpenerDomains_completionHandler_])
    {
      v3 = [objc_alloc((*MEMORY[0x1E69E23B8])()) init];
      v4 = [(*v2)(objc_msgSend(v3 setAfterUpdates:{0)), "sharedInstance"}];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = ___ZN6WebKit33RestrictedOpenerDomainsController6updateEv_block_invoke;
      v5[3] = &__block_descriptor_40_e29_v24__0__NSArray_8__NSError_16l;
      v5[4] = this;
      [v4 requestRestrictedOpenerDomains:v3 completionHandler:v5];
      if (v3)
      {
      }
    }
  }
}

void sub_19D9707CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void ___ZN6WebKit33RestrictedOpenerDomainsController6updateEv_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, "Failed to request restricted opener domains from WebPrivacy", buf, 2u);
    }

    return;
  }

  v5 = *(a1 + 32);
  v53 = 0;
  v6 = [a2 count];
  if (v6 <= 1)
  {
    v7 = v6 & 1;
    v8 = 1;
    goto LABEL_9;
  }

  v9 = __clz(v6 - 1);
  if (!v9)
  {
    __break(1u);
  }

  v8 = (1 << -v9);
  v7 = v6;
  if (v6 <= 0x400)
  {
LABEL_9:
    if (3 * v8 > 4 * v7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v8 <= 2 * v6)
  {
LABEL_10:
    LODWORD(v8) = 2 * v8;
  }

LABEL_11:
  if (v8 > 0x400)
  {
    v10 = 0.416666667;
  }

  else
  {
    v10 = 0.604166667;
  }

  if (v8 * v10 <= v6)
  {
    LODWORD(v8) = 2 * v8;
  }

  if (v8 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v8;
  }

  v12 = WTF::fastMalloc((16 * v11 + 16));
  v13 = (v12 + 24);
  v14 = v11;
  do
  {
    *(v13 - 1) = 0;
    *v13 = 0;
    v13 += 16;
    --v14;
  }

  while (v14);
  v44 = v5;
  v53 = (v12 + 16);
  *(v12 + 8) = v11 - 1;
  *(v12 + 12) = v11;
  *v12 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v16 = [a2 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v16)
  {
    v47 = *v50;
    obj = a2;
    do
    {
      v17 = 0;
      v46 = v16;
      do
      {
        if (*v50 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v49 + 1) + 8 * v17);
        MEMORY[0x19EB02040](&v48, [v18 domain]);
        v20 = v48;
        if (!v48 || !*(v48 + 1))
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v20 = *buf;
          v37 = v48;
          v48 = 0;
          if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v37, v19);
            if (!v20)
            {
              goto LABEL_61;
            }
          }

          else if (!v20)
          {
            goto LABEL_61;
          }
        }

        if (*(v20 + 1) && (MEMORY[0x19EB01EF0](v20, "nullOrigin", 10) & 1) == 0)
        {
          v21 = [v18 openerType];
          if (v21 == 1)
          {
            v23 = 1;
          }

          else
          {
            v23 = 2 * (v21 == 2);
          }

          if (WTF::equal(v20, 0, v22) || v20 == -1)
          {
            __break(0xC471u);
            JUMPOUT(0x19D970C6CLL);
          }

          v25 = v53;
          if (v53 || (WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::RestrictedOpenerType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(&v53, 0), (v25 = v53) != 0))
          {
            v26 = *(v25 - 2);
          }

          else
          {
            v26 = 0;
          }

          v27 = WTF::ASCIICaseInsensitiveHash::hash(v20, v24) & v26;
          v28 = &v25[2 * v27];
          if ((WTF::equal(*v28, 0, v29) & 1) == 0)
          {
            v31 = 0;
            v32 = 1;
            while (1)
            {
              v33 = v28;
              if (*v28 != -1)
              {
                v33 = v31;
                if (WTF::equalIgnoringASCIICase(*v28, v20, v30))
                {
                  goto LABEL_58;
                }
              }

              v27 = (v27 + v32) & v26;
              v28 = &v25[2 * v27];
              ++v32;
              v31 = v33;
              if (WTF::equal(*v28, 0, v30))
              {
                if (v33)
                {
                  *v33 = 0;
                  *(v33 + 8) = 0;
                  --*(v53 - 4);
                  v28 = v33;
                }

                break;
              }
            }
          }

          atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
          v34 = *v28;
          *v28 = v20;
          if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v34, v19);
          }

          *(v28 + 8) = v23;
          v35 = v53;
          if (v53)
          {
            v36 = *(v53 - 3) + 1;
          }

          else
          {
            v36 = 1;
          }

          *(v53 - 3) = v36;
          v38 = (*(v35 - 4) + v36);
          v39 = *(v35 - 1);
          if (v39 <= 0x400)
          {
            if (3 * v39 > 4 * v38)
            {
              goto LABEL_58;
            }

LABEL_57:
            WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::RestrictedOpenerType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(&v53, v28);
            goto LABEL_58;
          }

          if (v39 <= 2 * v38)
          {
            goto LABEL_57;
          }
        }

LABEL_58:
        v16 = v46;
        if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v19);
        }

LABEL_61:
        ++v17;
      }

      while (v17 != v16);
      v40 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
      v16 = v40;
    }

    while (v40);
  }

  v41 = v53;
  v53 = 0;
  v42 = *(v44 + 8);
  *(v44 + 8) = v41;
  if (v42)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v42, v15);
    if (v53)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v53, v43);
    }
  }
}

void sub_19D970C90(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, WTF::StringImpl **a24)
{
  if (a24)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a24, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RestrictedOpenerDomainsController::lookup(WebKit::RestrictedOpenerDomainsController *this, WTF **a2)
{
  WTF::ContinuousApproximateTime::now(this);
  if (v5 > *(this + 2))
  {
    WebKit::RestrictedOpenerDomainsController::scheduleNextUpdate(this, v5);
    WebKit::RestrictedOpenerDomainsController::update(this);
  }

  v6 = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::RestrictedOpenerType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::RestrictedOpenerType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(this + 1, a2, v4);
  v7 = *(this + 1);
  if (v7)
  {
    v7 += 16 * *(v7 - 4);
  }

  if (v7 == v6)
  {
    return 0;
  }

  else
  {
    return *(v6 + 8);
  }
}

unint64_t WebKit::ResourceMonitorURLsController::prepare(uint64_t a1, uint64_t *a2)
{
  if (PAL::WebPrivacyLibrary(1))
  {
    v3 = MEMORY[0x1E69E2268];
    result = [(*MEMORY[0x1E69E2268])() instancesRespondToSelector:sel_prepareResourceMonitorRulesForStore_completionHandler_];
    if (result)
    {
      if (byte_1ED641C6D)
      {
        v5 = dword_1ED641D64;
        if (dword_1ED641D64 == dword_1ED641D60)
        {
          result = WTF::Vector<WTF::CompletionHandler<void ()(WKContentRuleList *,BOOL)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(dword_1ED641D64 + 1, a2);
          a2 = result;
          v6 = dword_1ED641D64;
          v7 = (qword_1ED641D58 + 8 * dword_1ED641D64);
          goto LABEL_11;
        }

        v8 = qword_1ED641D58;
        v6 = dword_1ED641D64;
      }

      else
      {
        v5 = 0;
        v6 = 0;
        v8 = &qword_1ED641D68;
        qword_1ED641D58 = &qword_1ED641D68;
        dword_1ED641D60 = 1;
        byte_1ED641C6D = 1;
      }

      v7 = &v8[v5];
LABEL_11:
      v9 = *a2;
      *a2 = 0;
      *v7 = v9;
      dword_1ED641D64 = v6 + 1;
      if ((v6 + 1) <= 1)
      {
        v10 = +[WKContentRuleListStore defaultStore];
        v11 = [(*v3)() sharedInstance];

        return [v11 prepareResourceMonitorRulesForStore:v10 completionHandler:&__block_literal_global_187];
      }

      return result;
    }
  }

  return WTF::CompletionHandler<void ()(WKContentRuleList *,BOOL)>::operator()(a2);
}

uint64_t WTF::CompletionHandler<void ()(WKContentRuleList *,BOOL)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t ___ZN6WebKit29ResourceMonitorURLsController7prepareEON3WTF17CompletionHandlerIFvP17WKContentRuleListbEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = qword_1ED641170;
    if (os_log_type_enabled(qword_1ED641170, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a4;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Failed to request resource monitor urls from WebPrivacy: %@", &buf, 0xCu);
    }
  }

  v14[0] = &v15;
  v14[1] = 1;
  *&buf = v17;
  *(&buf + 1) = 1;
  WTF::VectorBuffer<WTF::CompletionHandler<void ()(WKContentRuleList *,BOOL)>,1ul,WTF::FastMalloc>::adopt(&buf, &qword_1ED641D58);
  if (dword_1ED641D64)
  {
    v6 = qword_1ED641D58;
    v7 = 8 * dword_1ED641D64;
    do
    {
      v8 = *v6;
      *v6 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  WTF::VectorBuffer<WTF::CompletionHandler<void ()(WKContentRuleList *,BOOL)>,1ul,WTF::FastMalloc>::adopt(&qword_1ED641D58, v14);
  if (HIDWORD(buf))
  {
    v10 = buf;
    v11 = 8 * HIDWORD(buf);
    do
    {
      WTF::CompletionHandler<void ()(WKContentRuleList *,BOOL)>::operator()(v10++);
      v11 -= 8;
    }

    while (v11);
  }

  WTF::Vector<WTF::CompletionHandler<void ()(WKContentRuleList *,BOOL)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf, v9);
  return WTF::Vector<WTF::CompletionHandler<void ()(WKContentRuleList *,BOOL)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v12);
}

void sub_19D971118(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, WTF *a13, int a14)
{
  WTF::Vector<WTF::CompletionHandler<void ()(WKContentRuleList *,BOOL)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, a2);
  WTF::Vector<WTF::CompletionHandler<void ()(WKContentRuleList *,BOOL)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, v15);
  _Unwind_Resume(a1);
}

uint64_t WebKit::ResourceMonitorURLsController::getSource(uint64_t a1, uint64_t *a2)
{
  if (!PAL::WebPrivacyLibrary(1) || (v3 = MEMORY[0x1E69E2268], result = [(*MEMORY[0x1E69E2268])() instancesRespondToSelector:sel_requestResourceMonitorRulesSource_completionHandler_], (result & 1) == 0))
  {
    WTF::CompletionHandler<void ()(WTF::String &&)>::operator()(a2);
    return 0;
  }

  if (byte_1ED641C6E)
  {
    v5 = HIDWORD(qword_1ED641D78);
    v6 = qword_1ED641D70;
    if (HIDWORD(qword_1ED641D78) == qword_1ED641D78)
    {
      v7 = HIDWORD(qword_1ED641D78) + (HIDWORD(qword_1ED641D78) >> 1);
      if (v7 <= HIDWORD(qword_1ED641D78) + 1)
      {
        v7 = HIDWORD(qword_1ED641D78) + 1;
      }

      if (v7 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      if (v7 <= 0x10)
      {
        v8 = 16;
      }

      else
      {
        v8 = v7;
      }

      v10 = WTF::fastMalloc((8 * v8));
      LODWORD(qword_1ED641D78) = v8;
      qword_1ED641D70 = v10;
      if (v5)
      {
        v11 = 8 * v5;
        v12 = v6;
        do
        {
          v13 = *v12;
          *v12 = 0;
          *v10 = v13;
          v14 = *v12;
          *v12 = 0;
          if (v14)
          {
            (*(*v14 + 8))(v14);
          }

          v10 = (v10 + 8);
          v12 = (v12 + 8);
          v11 -= 8;
        }

        while (v11);
        v10 = qword_1ED641D70;
      }

      if (v6 != &unk_1ED641D80 && v6)
      {
        if (v10 == v6)
        {
          qword_1ED641D70 = 0;
          LODWORD(qword_1ED641D78) = 0;
        }

        WTF::fastFree(v6, v9);
        v10 = qword_1ED641D70;
      }

      LODWORD(v5) = HIDWORD(qword_1ED641D78);
      v6 = v10;
    }
  }

  else
  {
    LODWORD(v5) = 0;
    byte_1ED641C6E = 1;
    v6 = &unk_1ED641D80;
    qword_1ED641D70 = &unk_1ED641D80;
    qword_1ED641D78 = 1;
  }

  result = WTF::fastMalloc(0x10);
  v15 = *a2;
  *a2 = 0;
  *result = &unk_1F10EE858;
  *(result + 8) = v15;
  *(v6 + v5) = result;
  if (++HIDWORD(qword_1ED641D78) <= 1u)
  {
    v16 = [(*v3)() sharedInstance];

    return [v16 requestResourceMonitorRulesSource:0 completionHandler:&__block_literal_global_192];
  }

  return result;
}

void sub_19D9713B8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WTF::CompletionHandler<void ()(WTF::String &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t ___ZN6WebKit29ResourceMonitorURLsController9getSourceEON3WTF17CompletionHandlerIFvONS1_6StringEEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = qword_1ED641170;
    if (os_log_type_enabled(qword_1ED641170, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, "Failed to request resource monitor urls source from WebPrivacy", buf, 2u);
    }
  }

  v12[0] = &v13;
  v12[1] = 1;
  *buf = &v16;
  v15 = 1;
  WTF::VectorBuffer<WTF::CompletionHandler<void ()(NSString *)>,1ul,WTF::FastMalloc>::adopt(buf, &qword_1ED641D70);
  if (HIDWORD(qword_1ED641D78))
  {
    v4 = qword_1ED641D70;
    v5 = 8 * HIDWORD(qword_1ED641D78);
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  WTF::VectorBuffer<WTF::CompletionHandler<void ()(NSString *)>,1ul,WTF::FastMalloc>::adopt(&qword_1ED641D70, v12);
  if (HIDWORD(v15))
  {
    v8 = *buf;
    v9 = 8 * HIDWORD(v15);
    do
    {
      WTF::CompletionHandler<void ()(NSString *)>::operator()(v8++);
      v9 -= 8;
    }

    while (v9);
  }

  WTF::Vector<WTF::CompletionHandler<void ()(NSString *)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v7);
  return WTF::Vector<WTF::CompletionHandler<void ()(NSString *)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v12, v10);
}

void sub_19D9715E4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, WTF *a13, int a14)
{
  WTF::Vector<WTF::CompletionHandler<void ()(NSString *)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, a2);
  WTF::Vector<WTF::CompletionHandler<void ()(NSString *)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, v15);
  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(NSString *)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebKit::configureForAdvancedPrivacyProtections(WebKit *this, NSURLSession *a2)
{
  if (byte_1ED641C70 == 1)
  {
    if ((byte_1ED641C6F & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695AC78] instancesRespondToSelector:sel__networkContext];
    byte_1ED641C6F = v7;
    byte_1ED641C70 = 1;
    if (!v7)
    {
      return;
    }
  }

  v3 = [(WebKit *)this _networkContext];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  WebKit::TrackerAddressLookupInfo::populateIfNeeded(v3);
  WebKit::TrackerDomainLookupInfo::populateIfNeeded(v5);
  if (byte_1ED641C76 == 1)
  {
    v6 = off_1ED641CE0;
    if (!off_1ED641CE0)
    {
      return;
    }

    goto LABEL_6;
  }

  if (byte_1ED641C77 == 1)
  {
    v8 = qword_1ED641CE8;
  }

  else
  {
    v8 = dlopen("/usr/lib/libnetwork.dylib", 2);
    qword_1ED641CE8 = v8;
    byte_1ED641C77 = 1;
  }

  v6 = dlsym(v8, "nw_context_set_tracker_lookup_callback");
  off_1ED641CE0 = v6;
  byte_1ED641C76 = 1;
  if (v6)
  {
LABEL_6:

    (v6)(v4, &__block_literal_global_195);
  }
}

void WebKit::TrackerAddressLookupInfo::populateIfNeeded(WebKit::TrackerAddressLookupInfo *this)
{
  if (atomic_load_explicit(&WebKit::TrackerAddressLookupInfo::populateIfNeeded(void)::onceFlag, memory_order_acquire) != -1)
  {
    v5[1] = v1;
    v5[2] = v2;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&WebKit::TrackerAddressLookupInfo::populateIfNeeded(void)::onceFlag, &v4, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::TrackerAddressLookupInfo::populateIfNeeded(void)::{lambda(void)#1} &&>>);
  }
}

void WebKit::TrackerDomainLookupInfo::populateIfNeeded(WebKit::TrackerDomainLookupInfo *this)
{
  if (atomic_load_explicit(&WebKit::TrackerDomainLookupInfo::populateIfNeeded(void)::onceFlag, memory_order_acquire) != -1)
  {
    v5[1] = v1;
    v5[2] = v2;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&WebKit::TrackerDomainLookupInfo::populateIfNeeded(void)::onceFlag, &v4, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::TrackerDomainLookupInfo::populateIfNeeded(void)::{lambda(void)#1} &&>>);
  }
}

uint64_t ___ZN6WebKit38configureForAdvancedPrivacyProtectionsEP12NSURLSession_block_invoke(int a1, nw_endpoint_t endpoint, const char **a3, void *a4, _BYTE *a5)
{
  if (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address)
  {
    address = nw_endpoint_get_address(endpoint);
    sa_family = address->sa_family;
    if (address && sa_family == 2)
    {
      LODWORD(v32[0]) = *&address->sa_data[2];
      v13 = 1;
    }

    else
    {
      if (!address || sa_family != 30)
      {
        goto LABEL_16;
      }

      v11 = *&address->sa_data[6];
      *v32 = v11;
      v13 = 2;
    }

    v33 = v13;
    v34 = 1;
    v14 = WebKit::TrackerAddressLookupInfo::find(v32, v10, v11);
    if (v14)
    {
      v15 = *(v14 + 24);
      if (v15)
      {
        v16 = v15 + 16;
      }

      else
      {
        v16 = 0;
      }

      *a4 = v16;
      v17 = *(v14 + 32);
      if (v17)
      {
        v18 = (v17 + 16);
      }

      else
      {
        v18 = 0;
      }

      *a3 = v18;
      *a5 = *(v14 + 40);
    }
  }

LABEL_16:
  result = nw_endpoint_get_type(endpoint);
  if (result == 2)
  {
    hostname = nw_endpoint_get_hostname(endpoint);
    WTF::String::String(&v30, hostname);
    v36[0] = "http://";
    v36[1] = 8;
    result = WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(v36, &v30, &v31);
    if (v31)
    {
      MEMORY[0x19EB01DD0](v32, &v31, 0);
      WebCore::RegistrableDomain::RegistrableDomain(&v35, v32);
      v23 = v32[0];
      v32[0] = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v21);
      }

      v24 = v31;
      v31 = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v21);
      }

      v25 = v30;
      v30 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v21);
      }

      v26 = v35;
      if (v35)
      {
        atomic_fetch_add_explicit(v35, 2u, memory_order_relaxed);
      }

      v29 = v26;
      WebKit::TrackerDomainLookupInfo::find(v32, &v29, v22);
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v27);
      }

      v28 = v32[0];
      if (v32[0])
      {
        if (*(v32[0] + 1))
        {
          *a4 = v32[0] + 16;
          *a3 = hostname;
          *a5 = v32[1];
        }

        if (*v28 == 1)
        {
          WTF::fastFree(v28, v27);
        }

        else
        {
          --*v28;
        }
      }

      result = v35;
      v35 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v27);
        }
      }
    }

    else
    {
      __break(0xC471u);
    }
  }

  return result;
}

void sub_19D971B1C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF::StringImpl *a18)
{
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, a2);
  }

  if (a18)
  {
    if (atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a18, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t WebKit::TrackerAddressLookupInfo::find(WebKit::TrackerAddressLookupInfo *this, const WebCore::IPAddress *a2, __n128 a3)
{
  if (*(this + 16) == 1)
  {
    WebKit::TrackerAddressLookupInfo::version4List(this, a2, a3);
    v4 = &xmmword_1ED641CF0;
  }

  else
  {
    WebKit::TrackerAddressLookupInfo::version6List(this, a2, a3);
    v4 = &qword_1ED641D00;
  }

  v5 = *(v4 + 3);
  if (!v5)
  {
    return 0;
  }

  v6 = *v4;
  if (WebCore::operator<=>(this, *v4) == 0xFF)
  {
    v7 = 0;
    goto LABEL_20;
  }

  v7 = v5 - 1;
  if (WebCore::operator<=>(this, (v6 + 48 * (v5 - 1))) == 1)
  {
    v8 = v5 - 1;
LABEL_21:
    if (v7 >= v5)
    {
      __break(0xC471u);
      JUMPOUT(0x19D971DA8);
    }

    if (WebCore::IPAddress::matchingNetMaskLength((v6 + 48 * v7), this) < *(v6 + 48 * v7 + 20))
    {
      if (v7 == v8)
      {
        return 0;
      }

      if (v8 < *(v4 + 3))
      {
        v13 = (*v4 + 48 * v8);
        if (WebCore::IPAddress::matchingNetMaskLength(v13, this) < *(v13 + 5))
        {
          return 0;
        }

        v7 = v8;
        if (v8 < *(v4 + 3))
        {
          return *v4 + 48 * v7;
        }
      }

      __break(0xC471u);
      JUMPOUT(0x19D971D54);
    }

    if (v7 >= *(v4 + 3))
    {
      __break(0xC471u);
      JUMPOUT(0x19D971DB0);
    }

    return *v4 + 48 * v7;
  }

  if (v7 < 2)
  {
LABEL_20:
    v8 = 0;
    goto LABEL_21;
  }

  v9 = 0;
  v10 = v5 - 1;
  while (1)
  {
    v11 = v10 & 1;
    if (v7 >= v9)
    {
      v11 = 0;
    }

    v8 = v9 + (v10 >> 1) + ((v7 < v9) << 63) + v11;
    if (v8 >= v5)
    {
      __break(0xC471u);
      JUMPOUT(0x19D971DA0);
    }

    v12 = WebCore::operator<=>(this, (v6 + 48 * v8));
    if (v12 == 1)
    {
      v9 = v8;
      goto LABEL_18;
    }

    if (v12 != 255)
    {
      break;
    }

    v7 = v8;
    v8 = v9;
LABEL_18:
    v10 = v7 - v8;
    if (v7 - v8 <= 1)
    {
      goto LABEL_21;
    }
  }

  if (!v12)
  {
    v7 = v8;
    return *v4 + 48 * v7;
  }

  return 0;
}

const WTF::StringImpl *WebKit::TrackerDomainLookupInfo::find(uint64_t a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v5 = byte_1ED641CD8;
  if ((byte_1ED641CD8 & 1) == 0)
  {
    qword_1ED641DA0 = 0;
    *&dword_1ED641DA8 = 0;
    qword_1ED641DB0 = 0;
    v5 = 1;
    byte_1ED641CD8 = 1;
  }

  result = *a2;
  if (*a2 + 1 > 1)
  {
    if (v5)
    {
      v7 = &unk_1ED641000;
      v8 = qword_1ED641DA0;
      if (qword_1ED641DA0)
      {
        v9 = dword_1ED641DA8;
        v10 = dword_1ED641DA8 - 1;
        v11 = qword_1ED641DB0;
        v12 = *(result + 4);
        if (v12 < 0x100)
        {
          v19 = WTF::StringImpl::hashSlowCase(result);
          v7 = &unk_1ED641000;
          v13 = v19;
          v8 = qword_1ED641DA0;
        }

        else
        {
          v13 = v12 >> 8;
        }

        v14 = (v13 ^ v11) & v10;
        v15 = v8 + 24 * v14;
        result = *v15;
        if (*v15)
        {
          v16 = -1;
          do
          {
            v17 = *(result + 4);
            if (v17 < 0x100)
            {
              result = WTF::StringImpl::hashSlowCase(result);
              v7 = &unk_1ED641000;
            }

            else
            {
              result = (v17 >> 8);
            }

            if (++v16 > ((v14 + v9 - ((result ^ v11) & v10)) & v10))
            {
              break;
            }

            if (result == v13)
            {
              result = WTF::equal(*v15, *a2, a3);
              v7 = &unk_1ED641000;
              if (result)
              {
                v18 = *(v15 + 8);
                if (v18)
                {
                  ++*v18;
                }

                *a1 = v18;
                *(a1 + 8) = *(v15 + 16);
                return result;
              }
            }

            v14 = (v14 + 1) & v10;
            v15 = v7[436] + 24 * v14;
            result = *v15;
          }

          while (*v15);
        }
      }
    }

    else
    {
      qword_1ED641DA0 = 0;
      *&dword_1ED641DA8 = 0;
      qword_1ED641DB0 = 0;
      byte_1ED641CD8 = 1;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t WebKit::isKnownTrackerAddressOrDomain(WebKit::TrackerAddressLookupInfo *a1, uint64_t a2)
{
  WebKit::TrackerAddressLookupInfo::populateIfNeeded(a1);
  WebKit::TrackerDomainLookupInfo::populateIfNeeded(v4);
  if (!WTF::URL::hostIsIPAddress())
  {
    goto LABEL_12;
  }

  v5 = a2;
  if ((a2 & 0x100000000) == 0)
  {
    if (a2)
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      goto LABEL_5;
    }

LABEL_35:
    v6 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_35;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
LABEL_5:
  v6 = v23;
LABEL_6:
  v22 = v6;
  WebCore::IPAddress::fromString(v20, &v22, v5);
  v9 = v22;
  v22 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  if ((v21 & 1) != 0 && WebKit::TrackerAddressLookupInfo::find(v20, v7, v8))
  {
    return 1;
  }

LABEL_12:
  WTF::makeString<WTF::ASCIILiteral,WTF::StringView>("http://", 8, a1, a2, &v22);
  MEMORY[0x19EB01DD0](v20, &v22, 0);
  WebCore::RegistrableDomain::RegistrableDomain(&v23, v20);
  v13 = v20[0];
  v20[0] = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v11);
  }

  v14 = v22;
  v22 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v11);
  }

  v15 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
  }

  v19 = v15;
  WebKit::TrackerDomainLookupInfo::find(v20, &v19, v12);
  if (v20[0])
  {
    v10 = *(v20[0] + 1) != 0;
    if (*v20[0] == 1)
    {
      WTF::fastFree(v20[0], v16);
      if (v15)
      {
LABEL_25:
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v16);
        }
      }
    }

    else
    {
      --*v20[0];
      if (v15)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v10 = 0;
    if (v15)
    {
      goto LABEL_25;
    }
  }

  v17 = v23;
  v23 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  return v10;
}

void sub_19D972144(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  v12 = *(v10 - 32);
  *(v10 - 32) = 0;
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::makeString<WTF::ASCIILiteral,WTF::StringView>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8[0] = a1;
  v8[1] = a2;
  *&v7 = a3;
  *(&v7 + 1) = a4;
  result = WTF::tryMakeString<WTF::ASCIILiteral,WTF::StringView>(v8, &v7, a5);
  if (!*a5)
  {
    __break(0xC471u);
  }

  return result;
}

void WebKit::ScriptTrackingPrivacyController::updateList(uint64_t a1, uint64_t *a2)
{
  v4 = PAL::WebPrivacyLibrary(1);
  if (v4)
  {
    v5 = MEMORY[0x1E69E2268];
    v4 = [(*MEMORY[0x1E69E2268])() instancesRespondToSelector:sel_requestFingerprintingScripts_completionHandler_];
    if (v4)
    {
      if (byte_1ED641C71)
      {
        v6 = HIDWORD(qword_1ED641D90);
        if (HIDWORD(qword_1ED641D90) == qword_1ED641D90)
        {
          a2 = WTF::Vector<WTF::CompletionHandler<void ()(void)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&qword_1ED641D88, HIDWORD(qword_1ED641D90) + 1, a2);
          v7 = HIDWORD(qword_1ED641D90);
          v8 = (qword_1ED641D88 + 8 * HIDWORD(qword_1ED641D90));
          goto LABEL_11;
        }

        v10 = qword_1ED641D88;
        v7 = HIDWORD(qword_1ED641D90);
      }

      else
      {
        v6 = 0;
        v7 = 0;
        byte_1ED641C71 = 1;
        v10 = &qword_1ED641D98;
        qword_1ED641D88 = &qword_1ED641D98;
        qword_1ED641D90 = 1;
      }

      v8 = &v10[v6];
LABEL_11:
      v11 = *a2;
      *a2 = 0;
      *v8 = v11;
      HIDWORD(qword_1ED641D90) = v7 + 1;
      if ((v7 + 1) <= 1)
      {
        v12 = [objc_alloc((*MEMORY[0x1E69E23B8])()) init];
        v13 = [(*v5)(objc_msgSend(v12 setAfterUpdates:{0)), "sharedInstance"}];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = ___ZN6WebKit31ScriptTrackingPrivacyController10updateListEON3WTF17CompletionHandlerIFvvEEE_block_invoke;
        v14[3] = &__block_descriptor_40_e29_v24__0__NSArray_8__NSError_16l;
        v14[4] = a1;
        [v13 requestFingerprintingScripts:v12 completionHandler:v14];
        if (v12)
        {
        }
      }

      return;
    }
  }

  WTF::RunLoop::mainSingleton(v4);
  std::make_unique[abi:sn200100]<WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(void)>,void>,WTF::CompletionHandler<void ()(void)>,0>(a2, &v15);
  WTF::RunLoop::dispatch();
  v9 = v15;
  v15 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }
}

void sub_19D972408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN6WebKit31ScriptTrackingPrivacyController10updateListEON3WTF17CompletionHandlerIFvvEEE_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v65[1] = 1;
  if (a3)
  {
    v5 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = a3;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Failed to request known fingerprinting scripts from WebPrivacy: %@", buf, 0xCu);
    }

    return _ZN3WTF9ScopeExitIZZN6WebKit31ScriptTrackingPrivacyController10updateListEONS_17CompletionHandlerIFvvEEEEUb1_E3__5ED1Ev(v65);
  }

  v58 = v3;
  v69 = 0u;
  v70 = 0u;
  *buf = 0u;
  v68 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v8 = [a2 countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (!v8)
  {
    goto LABEL_39;
  }

  v9 = *v62;
  do
  {
    v10 = 0;
    do
    {
      if (*v62 != v9)
      {
        objc_enumerationMutation(a2);
      }

      v11 = *(*(&v61 + 1) + 8 * v10);
      if (byte_1ED641C73 == 1)
      {
        if (byte_1ED641C72)
        {
          goto LABEL_11;
        }
      }

      else
      {
        byte_1ED641C72 = objc_opt_respondsToSelector() & 1;
        byte_1ED641C73 = 1;
        if (byte_1ED641C72)
        {
LABEL_11:
          v12 = [v11 allowedCategories];
          goto LABEL_14;
        }
      }

      v12 = 0;
LABEL_14:
      v13 = v12 & 0x7FF;
      if ([v11 isFirstParty])
      {
        if ([v11 isTopDomain])
        {
          MEMORY[0x19EB02040](&v59, [v11 host]);
          v60 = v13;
          v15 = HIDWORD(v70);
          if (HIDWORD(v70) == DWORD2(v70))
          {
            v28 = WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v70, HIDWORD(v70) + 1, &v59);
            v15 = HIDWORD(v70);
            v29 = v70 + 16 * HIDWORD(v70);
            v30 = *v28;
            *v28 = 0;
            *v29 = v30;
            *(v29 + 8) = *(v28 + 8);
          }

          else
          {
            v16 = v59;
            v17 = v70 + 16 * HIDWORD(v70);
            v59 = 0;
            *v17 = v16;
            *(v17 + 8) = v13;
          }

          HIDWORD(v70) = v15 + 1;
        }

        else
        {
          MEMORY[0x19EB02040](&v59, [v11 host]);
          v60 = v13;
          v21 = HIDWORD(v69);
          if (HIDWORD(v69) == DWORD2(v69))
          {
            v34 = WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v69, HIDWORD(v69) + 1, &v59);
            v21 = HIDWORD(v69);
            v35 = v69 + 16 * HIDWORD(v69);
            v36 = *v34;
            *v34 = 0;
            *v35 = v36;
            *(v35 + 8) = *(v34 + 8);
          }

          else
          {
            v22 = v59;
            v23 = v69 + 16 * HIDWORD(v69);
            v59 = 0;
            *v23 = v22;
            *(v23 + 8) = v13;
          }

          HIDWORD(v69) = v21 + 1;
        }
      }

      else if ([v11 isTopDomain])
      {
        MEMORY[0x19EB02040](&v59, [v11 host]);
        v60 = v13;
        v18 = HIDWORD(v68);
        if (HIDWORD(v68) == DWORD2(v68))
        {
          v31 = WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v68, HIDWORD(v68) + 1, &v59);
          v18 = HIDWORD(v68);
          v32 = v68 + 16 * HIDWORD(v68);
          v33 = *v31;
          *v31 = 0;
          *v32 = v33;
          *(v32 + 8) = *(v31 + 8);
        }

        else
        {
          v19 = v59;
          v20 = v68 + 16 * HIDWORD(v68);
          v59 = 0;
          *v20 = v19;
          *(v20 + 8) = v13;
        }

        HIDWORD(v68) = v18 + 1;
      }

      else
      {
        MEMORY[0x19EB02040](&v59, [v11 host]);
        v60 = v13;
        v24 = *&buf[12];
        if (*&buf[12] == *&buf[8])
        {
          v37 = WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(buf, *&buf[12] + 1, &v59);
          v24 = *&buf[12];
          v38 = *buf + 16 * *&buf[12];
          v39 = *v37;
          *v37 = 0;
          *v38 = v39;
          *(v38 + 8) = *(v37 + 8);
        }

        else
        {
          v25 = v59;
          v26 = *buf + 16 * *&buf[12];
          v59 = 0;
          *v26 = v25;
          *(v26 + 8) = v13;
        }

        *&buf[12] = v24 + 1;
      }

      v27 = v59;
      v59 = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v14);
      }

      ++v10;
    }

    while (v8 != v10);
    v40 = [a2 countByEnumeratingWithState:&v61 objects:v66 count:16];
    v8 = v40;
  }

  while (v40);
LABEL_39:
  v41 = *(v58 + 68);
  if (v41)
  {
    WTF::VectorDestructor<true,WebKit::ScriptTrackingPrivacyHost>::destruct(*(v58 + 56), (*(v58 + 56) + 16 * v41));
  }

  v42 = *(v58 + 56);
  if (v42)
  {
    *(v58 + 56) = 0;
    *(v58 + 64) = 0;
    WTF::fastFree(v42, v7);
  }

  *(v58 + 56) = *buf;
  v43 = *&buf[8];
  memset(buf, 0, sizeof(buf));
  *(v58 + 64) = v43;
  v44 = *(v58 + 84);
  if (v44)
  {
    WTF::VectorDestructor<true,WebKit::ScriptTrackingPrivacyHost>::destruct(*(v58 + 72), (*(v58 + 72) + 16 * v44));
  }

  v45 = *(v58 + 72);
  if (v45)
  {
    *(v58 + 72) = 0;
    *(v58 + 80) = 0;
    WTF::fastFree(v45, v7);
  }

  *(v58 + 72) = v68;
  v46 = *(&v68 + 1);
  v68 = 0uLL;
  *(v58 + 80) = v46;
  v47 = *(v58 + 100);
  if (v47)
  {
    WTF::VectorDestructor<true,WebKit::ScriptTrackingPrivacyHost>::destruct(*(v58 + 88), (*(v58 + 88) + 16 * v47));
  }

  v48 = *(v58 + 88);
  if (v48)
  {
    *(v58 + 88) = 0;
    *(v58 + 96) = 0;
    WTF::fastFree(v48, v7);
  }

  *(v58 + 88) = v69;
  v49 = *(&v69 + 1);
  v69 = 0uLL;
  *(v58 + 96) = v49;
  v50 = *(v58 + 116);
  if (v50)
  {
    WTF::VectorDestructor<true,WebKit::ScriptTrackingPrivacyHost>::destruct(*(v58 + 104), (*(v58 + 104) + 16 * v50));
  }

  v51 = *(v58 + 104);
  if (v51)
  {
    *(v58 + 104) = 0;
    *(v58 + 112) = 0;
    WTF::fastFree(v51, v7);
  }

  *(v58 + 104) = v70;
  v52 = *(&v70 + 1);
  v70 = 0uLL;
  *(v58 + 112) = v52;
  (*(*v58 + 24))(v58);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, v53);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69, v54);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v68, v55);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v56);
  return _ZN3WTF9ScopeExitIZZN6WebKit31ScriptTrackingPrivacyController10updateListEONS_17CompletionHandlerIFvvEEEEUb1_E3__5ED1Ev(v65);
}

void sub_19D9729BC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24 - 112, a2);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24 - 128, v26);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24 - 144, v27);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24 - 160, v28);
  _ZN3WTF9ScopeExitIZZN6WebKit31ScriptTrackingPrivacyController10updateListEONS_17CompletionHandlerIFvvEEEEUb1_E3__5ED1Ev(&a24);
  _Unwind_Resume(a1);
}

uint64_t _ZN3WTF9ScopeExitIZZN6WebKit31ScriptTrackingPrivacyController10updateListEONS_17CompletionHandlerIFvvEEEEUb1_E3__5ED1Ev(uint64_t a1)
{
  if (*(a1 + 1) == 1)
  {
    v10[0] = &v11;
    v10[1] = 1;
    v12 = &v14;
    v13 = 1;
    WTF::VectorBuffer<WTF::CompletionHandler<void ()(void)>,1ul,WTF::FastMalloc>::adopt(&v12, &qword_1ED641D88);
    if (HIDWORD(qword_1ED641D90))
    {
      v2 = qword_1ED641D88;
      v3 = 8 * HIDWORD(qword_1ED641D90);
      do
      {
        v4 = *v2;
        *v2 = 0;
        if (v4)
        {
          (*(*v4 + 8))(v4);
        }

        ++v2;
        v3 -= 8;
      }

      while (v3);
    }

    WTF::VectorBuffer<WTF::CompletionHandler<void ()(void)>,1ul,WTF::FastMalloc>::adopt(&qword_1ED641D88, v10);
    if (HIDWORD(v13))
    {
      v6 = v12;
      v7 = 8 * HIDWORD(v13);
      do
      {
        WTF::CompletionHandler<void ()(void)>::operator()(v6++);
        v7 -= 8;
      }

      while (v7);
    }

    WTF::Vector<WTF::CompletionHandler<void ()(void)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v5);
    WTF::Vector<WTF::CompletionHandler<void ()(void)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v8);
  }

  return a1;
}

void sub_19D972B60(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12, int a13)
{
  WTF::Vector<WTF::CompletionHandler<void ()(void)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a12, a2);
  WTF::Vector<WTF::CompletionHandler<void ()(void)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, v14);
  _Unwind_Resume(a1);
}

uint64_t WebKit::ScriptTrackingPrivacyController::didUpdateCachedListData(WebKit::ScriptTrackingPrivacyController *this)
{
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(this + 104, *(this + 29));
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(this + 88, *(this + 25));
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(this + 72, *(this + 21));
  v2 = *(this + 17);

  return WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(this + 56, v2);
}

uint64_t WebKit::PaymentAuthorizationController::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = WebKit::PaymentAuthorizationPresenter::operatorNewSlow(0x30);
  result = WebKit::PaymentAuthorizationController::PaymentAuthorizationController(v6, a1, a2);
  *a3 = v6;
  return result;
}

uint64_t WebKit::PaymentAuthorizationController::PaymentAuthorizationController(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *a1 = &unk_1F10EE5B8;
  if (!*(a2 + 8))
  {
    v7 = WTF::fastCompactMalloc(0x10);
    *v7 = 1;
    *(v7 + 8) = a2;
    v8 = *(a2 + 8);
    *(a2 + 8) = v7;
    if (v8)
    {
      if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v8);
        WTF::fastFree(v8, v6);
      }
    }
  }

  v9 = *(a2 + 8);
  atomic_fetch_add(v9, 1u);
  *(a1 + 24) = v9;
  *a1 = &unk_1F10EE448;
  *(a1 + 32) = [objc_alloc((*MEMORY[0x1E69E2410])()) initWithPaymentRequest:a3];
  v10 = [[WKPaymentAuthorizationControllerDelegate alloc] initWithRequest:a3 presenter:a1];
  *(a1 + 40) = v10;
  [*(a1 + 32) setDelegate:v10];
  [*(a1 + 32) setPrivateDelegate:*(a1 + 40)];
  return a1;
}

void WebKit::PaymentAuthorizationController::dismiss(id *this)
{
  [this[4] dismissWithCompletion:0];
  [this[4] setDelegate:0];
  [this[4] setPrivateDelegate:0];
  v2 = this[4];
  this[4] = 0;
  if (v2)
  {
  }

  [this[5] invalidate];
  v3 = this[5];
  this[5] = 0;
  if (v3)
  {
  }
}

void WebKit::PaymentAuthorizationController::present(uint64_t a1, uint64_t a2, WTF::RefCountedBase *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *a3;
    *a3 = 0;
    v5 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
    *v5 = MEMORY[0x1E69E9818];
    v5[1] = 50331650;
    v5[2] = WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::PaymentAuthorizationController::present(UIViewController *,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::PaymentAuthorizationController::present(UIViewController *,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void *,BOOL)#1}::__invoke;
    v5[3] = &WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::PaymentAuthorizationController::present(UIViewController *,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::PaymentAuthorizationController::present(UIViewController *,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::descriptor;
    v5[4] = v4;
    [v3 presentWithCompletion:v5];

    _Block_release(v5);
  }

  else
  {

    WTF::CompletionHandler<void ()(BOOL)>::operator()(a3, 0);
  }
}

void WebKit::MediaCapability::~MediaCapability(WebKit::MediaCapability *this, WTF::StringImpl *a2)
{
  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  if (*(this + 6) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, a2);
    v5 = *(this + 1);
    *this = &unk_1F10E6398;
    *(this + 1) = 0;
    if (v5)
    {
    }
  }

  else
  {
    __break(0xC471u);
  }
}

{
  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  if (*(this + 6) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, a2);
    v6 = *(this + 1);
    *this = &unk_1F10E6398;
    *(this + 1) = 0;
    if (v6)
    {
    }

    WTF::fastFree(this, v5);
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::LinkDecorationFilteringController::~LinkDecorationFilteringController(WebKit::LinkDecorationFilteringController *this, void *a2)
{
  *this = &unk_1F10EE650;
  WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 56, a2);

  WebKit::ListDataControllerBase::~ListDataControllerBase(this, v3);
}

{
  *this = &unk_1F10EE650;
  WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 56, a2);
  WebKit::ListDataControllerBase::~ListDataControllerBase(this, v3);

  WTF::fastFree(v4, v5);
}

void WebKit::StorageAccessPromptQuirkController::~StorageAccessPromptQuirkController(WebKit::StorageAccessPromptQuirkController *this, void *a2)
{
  *this = &unk_1F10EE6D0;
  WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 56, a2);

  WebKit::ListDataControllerBase::~ListDataControllerBase(this, v3);
}

{
  *this = &unk_1F10EE6D0;
  WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 56, a2);
  WebKit::ListDataControllerBase::~ListDataControllerBase(this, v3);

  WTF::fastFree(v4, v5);
}

void WebKit::StorageAccessUserAgentStringQuirkController::~StorageAccessUserAgentStringQuirkController(WebKit::StorageAccessUserAgentStringQuirkController *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10EE710;
  v3 = *(this + 7);
  if (v3)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  WebKit::ListDataControllerBase::~ListDataControllerBase(this, a2);
}

{
  *this = &unk_1F10EE710;
  v3 = *(this + 7);
  if (v3)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::String>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::String,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  WebKit::ListDataControllerBase::~ListDataControllerBase(this, a2);

  WTF::fastFree(v4, v5);
}

void WebKit::ScriptTrackingPrivacyController::~ScriptTrackingPrivacyController(WebKit::ScriptTrackingPrivacyController *this, void *a2)
{
  *this = &unk_1F10EE750;
  v3 = this + 72;
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 104, a2);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 88, v4);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v5);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 56, v6);

  WebKit::ListDataControllerBase::~ListDataControllerBase(this, v7);
}

{
  *this = &unk_1F10EE750;
  v3 = this + 72;
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 104, a2);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 88, v4);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v5);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 56, v6);
  WebKit::ListDataControllerBase::~ListDataControllerBase(this, v7);

  WTF::fastFree(v8, v9);
}

void WebKit::PaymentAuthorizationController::~PaymentAuthorizationController(WebKit::PaymentAuthorizationController *this, void *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
  }

  WebKit::PaymentAuthorizationPresenter::~PaymentAuthorizationPresenter(this, a2);
}

{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
  }

  WebKit::PaymentAuthorizationPresenter::~PaymentAuthorizationPresenter(this, a2);

  bmalloc::api::tzoneFree(v5, v6);
}

uint64_t WebCore::MediaPlaybackTargetContextMock::deviceName@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 16);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t initCNPostalAddressStreetKey(void)
{
  if (byte_1ED641C74 == 1)
  {
    v0 = qword_1ED641C80;
  }

  else
  {
    v0 = dlopen("/System/Library/Frameworks/Contacts.framework/Contacts", 2);
    if (!v0)
    {
      goto LABEL_7;
    }

    qword_1ED641C80 = v0;
    byte_1ED641C74 = 1;
  }

  v1 = dlsym(v0, "CNPostalAddressStreetKey");
  if (!v1)
  {
LABEL_7:
    __break(0xC471u);
    JUMPOUT(0x19D9738B0);
  }

  result = *v1;
  qword_1ED641C78 = result;
  _MergedGlobals_32 = CNPostalAddressStreetKeyFunction;
  return result;
}

uint64_t initCNPostalAddressSubLocalityKey(void)
{
  if (byte_1ED641C74 == 1)
  {
    v0 = qword_1ED641C80;
  }

  else
  {
    v0 = dlopen("/System/Library/Frameworks/Contacts.framework/Contacts", 2);
    if (!v0)
    {
      goto LABEL_7;
    }

    qword_1ED641C80 = v0;
    byte_1ED641C74 = 1;
  }

  v1 = dlsym(v0, "CNPostalAddressSubLocalityKey");
  if (!v1)
  {
LABEL_7:
    __break(0xC471u);
    JUMPOUT(0x19D973984);
  }

  result = *v1;
  qword_1ED641C88 = result;
  off_1ED63B5E0 = CNPostalAddressSubLocalityKeyFunction;
  return result;
}

uint64_t initCNPostalAddressCityKey(void)
{
  if (byte_1ED641C74 == 1)
  {
    v0 = qword_1ED641C80;
  }

  else
  {
    v0 = dlopen("/System/Library/Frameworks/Contacts.framework/Contacts", 2);
    if (!v0)
    {
      goto LABEL_7;
    }

    qword_1ED641C80 = v0;
    byte_1ED641C74 = 1;
  }

  v1 = dlsym(v0, "CNPostalAddressCityKey");
  if (!v1)
  {
LABEL_7:
    __break(0xC471u);
    JUMPOUT(0x19D973A58);
  }

  result = *v1;
  qword_1ED641C90 = result;
  off_1ED63B5E8 = CNPostalAddressCityKeyFunction;
  return result;
}

uint64_t initCNPostalAddressPostalCodeKey(void)
{
  if (byte_1ED641C74 == 1)
  {
    v0 = qword_1ED641C80;
  }

  else
  {
    v0 = dlopen("/System/Library/Frameworks/Contacts.framework/Contacts", 2);
    if (!v0)
    {
      goto LABEL_7;
    }

    qword_1ED641C80 = v0;
    byte_1ED641C74 = 1;
  }

  v1 = dlsym(v0, "CNPostalAddressPostalCodeKey");
  if (!v1)
  {
LABEL_7:
    __break(0xC471u);
    JUMPOUT(0x19D973B2CLL);
  }

  result = *v1;
  qword_1ED641C98 = result;
  off_1ED63B5F0 = CNPostalAddressPostalCodeKeyFunction;
  return result;
}

uint64_t initCNPostalAddressSubAdministrativeAreaKey(void)
{
  if (byte_1ED641C74 == 1)
  {
    v0 = qword_1ED641C80;
  }

  else
  {
    v0 = dlopen("/System/Library/Frameworks/Contacts.framework/Contacts", 2);
    if (!v0)
    {
      goto LABEL_7;
    }

    qword_1ED641C80 = v0;
    byte_1ED641C74 = 1;
  }

  v1 = dlsym(v0, "CNPostalAddressSubAdministrativeAreaKey");
  if (!v1)
  {
LABEL_7:
    __break(0xC471u);
    JUMPOUT(0x19D973C00);
  }

  result = *v1;
  qword_1ED641CA0 = result;
  off_1ED63B5F8 = CNPostalAddressSubAdministrativeAreaKeyFunction;
  return result;
}

uint64_t initCNPostalAddressStateKey(void)
{
  if (byte_1ED641C74 == 1)
  {
    v0 = qword_1ED641C80;
  }

  else
  {
    v0 = dlopen("/System/Library/Frameworks/Contacts.framework/Contacts", 2);
    if (!v0)
    {
      goto LABEL_7;
    }

    qword_1ED641C80 = v0;
    byte_1ED641C74 = 1;
  }

  v1 = dlsym(v0, "CNPostalAddressStateKey");
  if (!v1)
  {
LABEL_7:
    __break(0xC471u);
    JUMPOUT(0x19D973CD4);
  }

  result = *v1;
  qword_1ED641CA8 = result;
  off_1ED63B600 = CNPostalAddressStateKeyFunction;
  return result;
}

uint64_t initCNPostalAddressCountryKey(void)
{
  if (byte_1ED641C74 == 1)
  {
    v0 = qword_1ED641C80;
  }

  else
  {
    v0 = dlopen("/System/Library/Frameworks/Contacts.framework/Contacts", 2);
    if (!v0)
    {
      goto LABEL_7;
    }

    qword_1ED641C80 = v0;
    byte_1ED641C74 = 1;
  }

  v1 = dlsym(v0, "CNPostalAddressCountryKey");
  if (!v1)
  {
LABEL_7:
    __break(0xC471u);
    JUMPOUT(0x19D973DA8);
  }

  result = *v1;
  qword_1ED641CB0 = result;
  off_1ED63B608 = CNPostalAddressCountryKeyFunction;
  return result;
}

uint64_t initCNPostalAddressISOCountryCodeKey(void)
{
  if (byte_1ED641C74 == 1)
  {
    v0 = qword_1ED641C80;
  }

  else
  {
    v0 = dlopen("/System/Library/Frameworks/Contacts.framework/Contacts", 2);
    if (!v0)
    {
      goto LABEL_7;
    }

    qword_1ED641C80 = v0;
    byte_1ED641C74 = 1;
  }

  v1 = dlsym(v0, "CNPostalAddressISOCountryCodeKey");
  if (!v1)
  {
LABEL_7:
    __break(0xC471u);
    JUMPOUT(0x19D973E7CLL);
  }

  result = *v1;
  qword_1ED641CB8 = result;
  off_1ED63B610 = CNPostalAddressISOCountryCodeKeyFunction;
  return result;
}

WTF *WTF::VectorBuffer<WTF::CompletionHandler<void ()(WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,1ul,WTF::FastMalloc>::adopt(uint64_t a1, WTF **a2)
{
  v5 = (a1 + 16);
  result = *a1;
  if (result != v5)
  {
    if (result)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      result = WTF::fastFree(result, a2);
    }

    *a1 = v5;
  }

  v7 = a2 + 2;
  v6 = *a2;
  if (*a2 == (a2 + 2))
  {
    v9 = *(a2 + 3);
    if (v9)
    {
      v10 = 8 * v9;
      do
      {
        v11 = *v7;
        *v7 = 0;
        *v5 = v11;
        result = *v7;
        *v7 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        v5 = (v5 + 8);
        ++v7;
        v10 -= 8;
      }

      while (v10);
    }

    v8 = *(a2 + 2);
  }

  else
  {
    *a2 = v7;
    *a1 = v6;
    v8 = *(a2 + 2);
    *(a2 + 2) = 1;
  }

  *(a1 + 8) = v8;
  v12 = *(a2 + 3);
  *(a2 + 3) = 0;
  *(a1 + 12) = v12;
  return result;
}

WTF *WTF::VectorBuffer<WTF::CompletionHandler<void ()(WKContentRuleList *,BOOL)>,1ul,WTF::FastMalloc>::adopt(uint64_t a1, WTF **a2)
{
  v5 = (a1 + 16);
  result = *a1;
  if (result != v5)
  {
    if (result)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      result = WTF::fastFree(result, a2);
    }

    *a1 = v5;
  }

  v7 = a2 + 2;
  v6 = *a2;
  if (*a2 == (a2 + 2))
  {
    v9 = *(a2 + 3);
    if (v9)
    {
      v10 = 8 * v9;
      do
      {
        v11 = *v7;
        *v7 = 0;
        *v5 = v11;
        result = *v7;
        *v7 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        v5 = (v5 + 8);
        ++v7;
        v10 -= 8;
      }

      while (v10);
    }

    v8 = *(a2 + 2);
  }

  else
  {
    *a2 = v7;
    *a1 = v6;
    v8 = *(a2 + 2);
    *(a2 + 2) = 1;
  }

  *(a1 + 8) = v8;
  v12 = *(a2 + 3);
  *(a2 + 3) = 0;
  *(a1 + 12) = v12;
  return result;
}

WTF *WTF::VectorBuffer<WTF::CompletionHandler<void ()(NSString *)>,1ul,WTF::FastMalloc>::adopt(uint64_t a1, WTF **a2)
{
  v5 = (a1 + 16);
  result = *a1;
  if (result != v5)
  {
    if (result)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      result = WTF::fastFree(result, a2);
    }

    *a1 = v5;
  }

  v7 = a2 + 2;
  v6 = *a2;
  if (*a2 == (a2 + 2))
  {
    v9 = *(a2 + 3);
    if (v9)
    {
      v10 = 8 * v9;
      do
      {
        v11 = *v7;
        *v7 = 0;
        *v5 = v11;
        result = *v7;
        *v7 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        v5 = (v5 + 8);
        ++v7;
        v10 -= 8;
      }

      while (v10);
    }

    v8 = *(a2 + 2);
  }

  else
  {
    *a2 = v7;
    *a1 = v6;
    v8 = *(a2 + 2);
    *(a2 + 2) = 1;
  }

  *(a1 + 8) = v8;
  v12 = *(a2 + 3);
  *(a2 + 3) = 0;
  *(a1 + 12) = v12;
  return result;
}

void std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::TrackerAddressLookupInfo::populateIfNeeded(void)::{lambda(void)#1} &&>>()
{
  if (PAL::WebPrivacyLibrary(1))
  {
    v1 = [objc_alloc((*MEMORY[0x1E69E23B8])()) init];
    v0 = [v1 setAfterUpdates:1];
    [objc_msgSend((*MEMORY[0x1E69E2268])(v0) "sharedInstance")];
    if (v1)
    {
    }
  }
}

void sub_19D974218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void ___ZZN6WebKit24TrackerAddressLookupInfo16populateIfNeededEvENKUlvE_clEv_block_invoke(WebKit::TrackerAddressLookupInfo *a1, void *a2, uint64_t a3, __n128 a4)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    WebKit::TrackerAddressLookupInfo::version4List(a1, a2, a4);
    v6 = WTF::Vector<WebKit::TrackerAddressLookupInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&xmmword_1ED641CF0, 0);
    WebKit::TrackerAddressLookupInfo::version6List(v6, v7, v8);
    WTF::Vector<WebKit::TrackerAddressLookupInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&qword_1ED641D00, 0);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = [a2 countByEnumeratingWithState:&v37 objects:v46 count:16];
    v12 = v9;
    if (!v9)
    {
      goto LABEL_30;
    }

    v13 = *v38;
    v11.n128_u64[0] = 138412290;
    v36 = v11;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(a2);
        }

        v15 = *(*(&v37 + 1) + 8 * v14);
        v16 = [v15 version];
        if (v16 == 6)
        {
          WebKit::TrackerAddressLookupInfo::version6List(6, v17, v18);
          WebKit::TrackerAddressLookupInfo::TrackerAddressLookupInfo(buf, v15);
          v21 = dword_1ED641D0C;
          if (dword_1ED641D0C == dword_1ED641D08)
          {
            WTF::Vector<WebKit::TrackerAddressLookupInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::TrackerAddressLookupInfo>(&qword_1ED641D00, buf);
          }

          else
          {
            v27 = qword_1ED641D00 + 48 * dword_1ED641D0C;
            v28 = *buf;
            *(v27 + 16) = v42;
            *v27 = v28;
            v29 = v43;
            v43 = 0;
            *(v27 + 24) = v29;
            v30 = v44;
            v44 = 0;
            *(v27 + 32) = v30;
            *(v27 + 40) = v45;
            dword_1ED641D0C = v21 + 1;
          }

          goto LABEL_19;
        }

        if (v16 == 4)
        {
          WebKit::TrackerAddressLookupInfo::version4List(4, v17, v18);
          WebKit::TrackerAddressLookupInfo::TrackerAddressLookupInfo(buf, v15);
          v20 = HIDWORD(xmmword_1ED641CF0);
          if (HIDWORD(xmmword_1ED641CF0) == DWORD2(xmmword_1ED641CF0))
          {
            WTF::Vector<WebKit::TrackerAddressLookupInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::TrackerAddressLookupInfo>(&xmmword_1ED641CF0, buf);
          }

          else
          {
            v23 = xmmword_1ED641CF0 + 48 * HIDWORD(xmmword_1ED641CF0);
            v24 = *buf;
            *(v23 + 16) = v42;
            *v23 = v24;
            v25 = v43;
            v43 = 0;
            *(v23 + 24) = v25;
            v26 = v44;
            v44 = 0;
            *(v23 + 32) = v26;
            *(v23 + 40) = v45;
            HIDWORD(xmmword_1ED641CF0) = v20 + 1;
          }

LABEL_19:
          v31 = v44;
          v44 = 0;
          if (v31)
          {
            if (*v31 == 1)
            {
              WTF::fastFree(v31, v19);
            }

            else
            {
              --*v31;
            }
          }

          v32 = v43;
          v43 = 0;
          if (v32)
          {
            if (*v32 == 1)
            {
              WTF::fastFree(v32, v19);
            }

            else
            {
              --*v32;
            }
          }

          goto LABEL_25;
        }

        v22 = qword_1ED641148;
        if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
        {
          *buf = v36.n128_u32[0];
          *&buf[4] = v15;
          _os_log_error_impl(&dword_19D52D000, v22, OS_LOG_TYPE_ERROR, "Skipped invalid tracking IP address: %@", buf, 0xCu);
        }

LABEL_25:
        v14 = (v14 + 1);
      }

      while (v12 != v14);
      v9 = [a2 countByEnumeratingWithState:&v37 objects:v46 count:16];
      v12 = v9;
      if (!v9)
      {
LABEL_30:
        WebKit::TrackerAddressLookupInfo::version4List(v9, v10, v11);
        v33 = WTF::Vector<WebKit::TrackerAddressLookupInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&xmmword_1ED641CF0, HIDWORD(xmmword_1ED641CF0));
        WebKit::TrackerAddressLookupInfo::version6List(v33, v34, v35);
        WTF::Vector<WebKit::TrackerAddressLookupInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&qword_1ED641D00, dword_1ED641D0C);
        return;
      }
    }
  }

  v4 = qword_1ED641148;
  if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "Failed to request tracking IP addresses from WebPrivacy", buf, 2u);
  }
}

void sub_19D97456C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, WTF *a22, WTF *a23)
{
  if (a23)
  {
    if (*a23 == 1)
    {
      WTF::fastFree(a23, a2);
    }

    else
    {
      --*a23;
    }
  }

  if (a22)
  {
    if (*a22 == 1)
    {
      WTF::fastFree(a22, a2);
    }

    else
    {
      --*a22;
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::TrackerAddressLookupInfo::version4List(WebKit::TrackerAddressLookupInfo *this, void *a2, __n128 a3)
{
  if ((byte_1ED641CC0 & 1) == 0)
  {
    v7 = v3;
    v8 = v4;
    a3.n128_u64[0] = 0;
    v6 = a3;
    xmmword_1ED641CF0 = a3;
    result = WTF::Vector<WebKit::TrackerAddressLookupInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v6, a2);
    byte_1ED641CC0 = 1;
  }

  return result;
}

uint64_t WebKit::TrackerAddressLookupInfo::version6List(WebKit::TrackerAddressLookupInfo *this, void *a2, __n128 a3)
{
  if ((byte_1ED641CC8 & 1) == 0)
  {
    v7 = v3;
    v8 = v4;
    a3.n128_u64[0] = 0;
    v6 = a3;
    *&qword_1ED641D00 = a3;
    result = WTF::Vector<WebKit::TrackerAddressLookupInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v6, a2);
    byte_1ED641CC8 = 1;
  }

  return result;
}

uint64_t WTF::Vector<WebKit::TrackerAddressLookupInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebKit::TrackerAddressLookupInfo>::destruct(*a1, (*a1 + 48 * v3));
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

WTF *WTF::VectorTypeOperations<WebKit::TrackerAddressLookupInfo>::destruct(WTF *result, WTF *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = v3[4];
      v3[4] = 0;
      if (v4)
      {
        if (*v4 == 1)
        {
          WTF::fastFree(v4, a2);
        }

        else
        {
          --*v4;
        }
      }

      result = v3[3];
      v3[3] = 0;
      if (result)
      {
        if (*result == 1)
        {
          result = WTF::fastFree(result, a2);
        }

        else
        {
          --*result;
        }
      }

      v3 += 6;
    }

    while (v3 != a2);
  }

  return result;
}

unsigned int *WTF::Vector<WebKit::TrackerAddressLookupInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > this)
    {
      result = WTF::VectorTypeOperations<WebKit::TrackerAddressLookupInfo>::destruct((*result + 48 * this), (*result + 48 * v4));
      *(v3 + 12) = this;
      LODWORD(v4) = this;
    }

    v5 = *v3;
    if (this)
    {
      if (this >= 0x5555556)
      {
        __break(0xC471u);
        JUMPOUT(0x19D974864);
      }

      v6 = (48 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x30;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebKit::TrackerAddressLookupInfo>::move(v5, (v5 + 48 * v4), result);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, this);
    }
  }

  return result;
}

WTF *WTF::VectorMover<false,WebKit::TrackerAddressLookupInfo>::move(WTF *result, WTF *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 2);
      *a3 = v6;
      v7 = *(v5 + 3);
      *(v5 + 3) = 0;
      *(a3 + 24) = v7;
      v8 = *(v5 + 4);
      *(v5 + 4) = 0;
      *(a3 + 32) = v8;
      *(a3 + 40) = *(v5 + 40);
      v9 = *(v5 + 4);
      *(v5 + 4) = 0;
      if (v9)
      {
        if (*v9 == 1)
        {
          WTF::fastFree(v9, a2);
        }

        else
        {
          --*v9;
        }
      }

      result = *(v5 + 3);
      *(v5 + 3) = 0;
      if (result)
      {
        if (*result == 1)
        {
          result = WTF::fastFree(result, a2);
        }

        else
        {
          --*result;
        }
      }

      a3 += 48;
      v5 = (v5 + 48);
    }

    while (v5 != a2);
  }

  return result;
}

__n128 WTF::Vector<WebKit::TrackerAddressLookupInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::TrackerAddressLookupInfo>(unsigned int *a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::TrackerAddressLookupInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = *a1 + 48 * a1[3];
  v5 = v3[1].n128_u64[0];
  result = *v3;
  *v4 = *v3;
  *(v4 + 16) = v5;
  v7 = v3[1].n128_u64[1];
  v3[1].n128_u64[1] = 0;
  *(v4 + 24) = v7;
  v8 = v3[2].n128_u64[0];
  v3[2].n128_u64[0] = 0;
  *(v4 + 32) = v8;
  *(v4 + 40) = v3[2].n128_u8[8];
  ++a1[3];
  return result;
}

unint64_t WTF::Vector<WebKit::TrackerAddressLookupInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 48 * a1[3] <= a3)
  {
    v10 = a1[2];
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<WebKit::TrackerAddressLookupInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = a1[2];
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<WebKit::TrackerAddressLookupInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF *WTF::Vector<WebKit::TrackerAddressLookupInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x5555556)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = (*result + 48 * *(result + 3));
      v5 = 48 * a2;
      v6 = WTF::fastMalloc((48 * a2));
      *(v2 + 2) = v5 / 0x30;
      *v2 = v6;
      result = WTF::VectorMover<false,WebKit::TrackerAddressLookupInfo>::move(v3, v4, v6);
      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          *(v2 + 2) = 0;
        }

        return WTF::fastFree(v3, v7);
      }
    }
  }

  return result;
}

uint64_t WebKit::TrackerAddressLookupInfo::TrackerAddressLookupInfo(uint64_t a1, void *a2)
{
  v4 = [a2 address];
  v5 = *(v4 + 1);
  if (v4 && v5 == 2)
  {
    v6 = *(v4 + 4);
    v7 = 1;
  }

  else
  {
    if (!v4 || v5 != 30)
    {
      v10 = std::__throw_bad_optional_access[abi:sn200100]();
      v11 = *(a1 + 24);
      *(a1 + 24) = 0;
      if (v11)
      {
        if (*v11 == 1)
        {
          WTF::fastFree(v11, v9);
        }

        else
        {
          --*v11;
        }
      }

      _Unwind_Resume(v10);
    }

    v6 = *(v4 + 8);
    v12 = *(v4 + 12);
    v13 = *(v4 + 20);
    v7 = 2;
  }

  *a1 = v6;
  *(a1 + 4) = v12;
  *(a1 + 12) = v13;
  *(a1 + 16) = v7;
  *(a1 + 20) = [a2 netMaskLength];
  WTF::CString::CString((a1 + 24), [objc_msgSend(a2 "owner")]);
  WTF::CString::CString((a1 + 32), [objc_msgSend(a2 "host")]);
  *(a1 + 40) = 1;
  return a1;
}

void std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::TrackerDomainLookupInfo::populateIfNeeded(void)::{lambda(void)#1} &&>>()
{
  if (PAL::WebPrivacyLibrary(1))
  {
    if (byte_1ED641CD0)
    {
      if ((byte_1ED641C75 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      v1 = [(*MEMORY[0x1E69E2268])() instancesRespondToSelector:sel_requestTrackerDomainNamesData_completionHandler_];
      byte_1ED641C75 = v1;
      byte_1ED641CD0 = 1;
      if (!v1)
      {
        return;
      }
    }

    v2 = [objc_alloc((*MEMORY[0x1E69E23B8])()) init];
    v0 = [v2 setAfterUpdates:1];
    [objc_msgSend((*MEMORY[0x1E69E2268])(v0) "sharedInstance")];
    if (v2)
    {
    }
  }
}

void sub_19D974D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void ___ZZN6WebKit23TrackerDomainLookupInfo16populateIfNeededEvENKUlvE_clEv_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v94 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = qword_1ED641148;
    if (os_log_type_enabled(qword_1ED641148, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, "Failed to request tracking domains from WebPrivacy", buf, 2u);
    }

    return;
  }

  v4 = a2;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v76 = [a2 countByEnumeratingWithState:&v85 objects:v93 count:16];
  if (!v76)
  {
    return;
  }

  v74 = v4;
  v75 = *v86;
  do
  {
    v5 = 0;
    do
    {
      if (*v86 != v75)
      {
        objc_enumerationMutation(v4);
      }

      v6 = *(*(&v85 + 1) + 8 * v5);
      if ((byte_1ED641CD8 & 1) == 0)
      {
        qword_1ED641DA0 = 0;
        *&dword_1ED641DA8 = 0;
        qword_1ED641DB0 = 0;
        byte_1ED641CD8 = 1;
      }

      WTF::String::String(&v84, [objc_msgSend(v6 host]);
      WTF::CString::CString(&v82, [objc_msgSend(v6 "owner")]);
      v83 = [v6 canBlock];
      v89 = &v82;
      v8 = dword_1ED641DA8;
      v77 = v5;
      if (10 * dword_1ED641DAC >= 9 * dword_1ED641DA8 || dword_1ED641DA8 <= (2 * dword_1ED641DAC) && (qword_1ED641DB0 & 0x100000000) != 0)
      {
        if (dword_1ED641DA8)
        {
          v9 = 2 * dword_1ED641DA8;
        }

        else
        {
          v9 = 8;
        }

        v80 = qword_1ED641DA0;
        v10 = WTF::fastMalloc((24 * v9));
        v12 = v10;
        if (v9)
        {
          bzero(v10, 24 * v9);
        }

        qword_1ED641DA0 = v12;
        dword_1ED641DA8 = v9;
        v13 = (~(v12 << 32) + v12) ^ ((~(v12 << 32) + v12) >> 22);
        v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
        v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
        LODWORD(qword_1ED641DB0) = (v15 >> 31) ^ v15;
        BYTE4(qword_1ED641DB0) = 0;
        if (v8)
        {
          v16 = 0;
          v78 = v8;
          do
          {
            v17 = v80 + 24 * v16;
            v18 = *v17;
            if (*v17)
            {
              v19 = dword_1ED641DA8;
              v20 = qword_1ED641DB0;
              v21 = *(v18 + 4);
              v81 = v16;
              if (v21 < 0x100)
              {
                v22 = WTF::StringImpl::hashSlowCase(v18);
              }

              else
              {
                v22 = v21 >> 8;
              }

              v23 = v19 - 1;
              v24 = (v22 ^ v20) & (v19 - 1);
              v25 = qword_1ED641DA0 + 24 * v24;
              v26 = *v25;
              if (*v25)
              {
                v27 = 0;
                do
                {
                  v28 = *(v26 + 4);
                  if (v28 < 0x100)
                  {
                    v29 = WTF::StringImpl::hashSlowCase(v26);
                  }

                  else
                  {
                    v29 = v28 >> 8;
                  }

                  v30 = (v24 + v19 - ((v29 ^ v20) & v23)) & v23;
                  if (v27 > v30)
                  {
                    v31 = v20;
                    v32 = v19;
                    v33 = *v17;
                    v34 = *(v17 + 1);
                    *v17 = 0;
                    *(v17 + 1) = 0;
                    v35 = v17[16];
                    v36 = *v25;
                    *v25 = 0;
                    v37 = *v17;
                    *v17 = v36;
                    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v37, v11);
                    }

                    v38 = *(v25 + 8);
                    *(v25 + 8) = 0;
                    v39 = *(v17 + 1);
                    *(v17 + 1) = v38;
                    if (v39)
                    {
                      if (*v39 == 1)
                      {
                        WTF::fastFree(v39, v11);
                      }

                      else
                      {
                        --*v39;
                      }
                    }

                    v17[16] = *(v25 + 16);
                    v40 = *v25;
                    *v25 = v33;
                    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v40, v11);
                    }

                    v41 = *(v25 + 8);
                    *(v25 + 8) = v34;
                    v19 = v32;
                    v20 = v31;
                    if (v41)
                    {
                      if (*v41 == 1)
                      {
                        WTF::fastFree(v41, v11);
                      }

                      else
                      {
                        --*v41;
                      }
                    }

                    *(v25 + 16) = v35;
                    v27 = v30;
                  }

                  v24 = (v24 + 1) & v23;
                  ++v27;
                  v25 = qword_1ED641DA0 + 24 * v24;
                  v26 = *v25;
                }

                while (*v25);
              }

              WTF::GenericHashTraits<WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>>::assignToEmpty<WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>,WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>>(v25, v17);
              v8 = v78;
              v16 = v81;
            }

            v42 = *(v17 + 1);
            *(v17 + 1) = 0;
            if (v42)
            {
              if (*v42 == 1)
              {
                WTF::fastFree(v42, v11);
              }

              else
              {
                --*v42;
              }
            }

            v43 = *v17;
            *v17 = 0;
            if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v43, v11);
            }

            ++v16;
          }

          while (v16 != v8);
LABEL_59:
          WTF::fastFree(v80, v11);
          LODWORD(v8) = dword_1ED641DA8;
          goto LABEL_60;
        }

        if (v80)
        {
          goto LABEL_59;
        }

        LODWORD(v8) = 8;
      }

LABEL_60:
      v44 = qword_1ED641DB0;
      v45 = *(v84 + 4);
      if (v45 < 0x100)
      {
        v46 = WTF::StringImpl::hashSlowCase(v84);
      }

      else
      {
        v46 = v45 >> 8;
      }

      v47 = v8 - 1;
      v48 = (v46 ^ v44) & (v8 - 1);
      v49 = qword_1ED641DA0 + 24 * v48;
      v50 = *v49;
      if (*v49)
      {
        v51 = 0;
        while (1)
        {
          v52 = *(v50 + 4);
          v53 = v52 < 0x100 ? WTF::StringImpl::hashSlowCase(v50) : v52 >> 8;
          v54 = (v48 + v8 - ((v53 ^ v44) & v47)) & v47;
          if (v51 > v54)
          {
            break;
          }

          if (v53 == v46 && (WTF::equal(*v49, v84, v7) & 1) != 0)
          {
            v71 = v82;
            v82 = 0;
            v72 = *(v49 + 8);
            *(v49 + 8) = v71;
            if (v72)
            {
              if (*v72 == 1)
              {
                WTF::fastFree(v72, v55);
              }

              else
              {
                --*v72;
              }
            }

            *(v49 + 16) = v83;
            v4 = v74;
            v67 = v77;
            goto LABEL_92;
          }

          v48 = (v48 + 1) & v47;
          ++v51;
          v49 = qword_1ED641DA0 + 24 * v48;
          v50 = *v49;
          if (!*v49)
          {
            if (v51 >= 0x80)
            {
              BYTE4(qword_1ED641DB0) = 1;
            }

            goto LABEL_84;
          }
        }

        v79 = v8;
        if (v51 >= 0x80)
        {
          BYTE4(qword_1ED641DB0) = 1;
        }

        v56 = *(v49 + 8);
        v57 = *v49;
        *buf = *v49;
        *v49 = 0;
        *(v49 + 8) = 0;
        v91 = v56;
        v58 = *(v49 + 16);
        v92 = v58;
        *(v49 + 16) = 0;
        WTF::HashMapTranslator<WTF::HashMap<WTF::String,WebKit::TrackerDomainLookupInfo,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::TrackerDomainLookupInfo>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::TrackerDomainLookupInfo,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::TrackerDomainLookupInfo>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::TrackerDomainLookupInfo,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::TrackerDomainLookupInfo>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WebKit::TrackerDomainLookupInfo,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::TrackerDomainLookupInfo>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String,WebKit::TrackerDomainLookupInfo>(WTF::String &&,WebKit::TrackerDomainLookupInfo &&)::{lambda(void)#1}>(v49, &v84, &v89);
        v59 = (v48 + 1) & v47;
        v60 = qword_1ED641DA0 + 24 * v59;
        v61 = *v60;
        if (*v60)
        {
          do
          {
            v62 = *(v61 + 4);
            if (v62 < 0x100)
            {
              v63 = WTF::StringImpl::hashSlowCase(v61);
            }

            else
            {
              v63 = v62 >> 8;
            }

            if (++v54 > ((v59 + v79 - ((v63 ^ v44) & v47)) & v47))
            {
              v64 = *v60;
              v65 = *(v60 + 8);
              v66 = *(v60 + 16);
              *v60 = v57;
              *(v60 + 8) = v56;
              *(v60 + 16) = v58;
              v58 = v66;
              v56 = v65;
              v57 = v64;
              v54 = (v59 + v79 - ((v63 ^ v44) & v47)) & v47;
            }

            v59 = (v59 + 1) & v47;
            v60 = qword_1ED641DA0 + 24 * v59;
            v61 = *v60;
          }

          while (*v60);
          *buf = v57;
          v91 = v56;
          v92 = v58;
        }

        WTF::GenericHashTraits<WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>>::assignToEmpty<WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>,WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>>(v60, buf);
        v4 = v74;
        v67 = v77;
        if (v91)
        {
          if (*v91 == 1)
          {
            WTF::fastFree(v91, v55);
          }

          else
          {
            --*v91;
          }
        }

        v68 = *buf;
        if (*buf && atomic_fetch_add_explicit(*buf, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v68, v55);
        }
      }

      else
      {
LABEL_84:
        WTF::HashMapTranslator<WTF::HashMap<WTF::String,WebKit::TrackerDomainLookupInfo,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::TrackerDomainLookupInfo>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::TrackerDomainLookupInfo,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::TrackerDomainLookupInfo>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::TrackerDomainLookupInfo,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::TrackerDomainLookupInfo>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WebKit::TrackerDomainLookupInfo,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::TrackerDomainLookupInfo>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String,WebKit::TrackerDomainLookupInfo>(WTF::String &&,WebKit::TrackerDomainLookupInfo &&)::{lambda(void)#1}>(v49, &v84, &v89);
        v4 = v74;
        v67 = v77;
      }

      ++dword_1ED641DAC;
LABEL_92:
      v69 = v82;
      v82 = 0;
      if (v69)
      {
        if (*v69 == 1)
        {
          WTF::fastFree(v69, v55);
        }

        else
        {
          --*v69;
        }
      }

      v70 = v84;
      v84 = 0;
      if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v70, v55);
      }

      v5 = v67 + 1;
    }

    while (v5 != v76);
    v73 = [v4 countByEnumeratingWithState:&v85 objects:v93 count:16];
    v76 = v73;
  }

  while (v73);
}

void sub_19D9754C0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, uint64_t a17, WTF::StringImpl *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (v32)
  {
    if (*v32 == 1)
    {
      WTF::fastFree(v32, a2);
    }

    else
    {
      --*v32;
    }
  }

  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, a2);
  }

  if (a16)
  {
    if (*a16 == 1)
    {
      WTF::fastFree(a16, a2);
    }

    else
    {
      --*a16;
    }
  }

  if (a18)
  {
    if (atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a18, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *WTF::HashMapTranslator<WTF::HashMap<WTF::String,WebKit::TrackerDomainLookupInfo,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::TrackerDomainLookupInfo>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::TrackerDomainLookupInfo,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::TrackerDomainLookupInfo>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::TrackerDomainLookupInfo,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::TrackerDomainLookupInfo>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WebKit::TrackerDomainLookupInfo,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::TrackerDomainLookupInfo>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String,WebKit::TrackerDomainLookupInfo>(WTF::String &&,WebKit::TrackerDomainLookupInfo &&)::{lambda(void)#1}>(uint64_t a1, WTF::StringImpl *a2, uint64_t **a3)
{
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *a3;
  v8 = **a3;
  *v7 = 0;
  v9 = *(v7 + 8);
  result = *(a1 + 8);
  *(a1 + 8) = v8;
  if (result)
  {
    if (*result == 1)
    {
      result = WTF::fastFree(result, a2);
    }

    else
    {
      --*result;
    }
  }

  *(a1 + 16) = v9;
  return result;
}

WTF *WTF::GenericHashTraits<WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>>::assignToEmpty<WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>,WTF::KeyValuePair<WTF::String,WebKit::TrackerDomainLookupInfo>>(uint64_t a1, WTF::StringImpl *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a2 + 1);
  *(a2 + 1) = 0;
  result = *(a1 + 8);
  *(a1 + 8) = v6;
  if (result)
  {
    if (*result == 1)
    {
      result = WTF::fastFree(result, a2);
    }

    else
    {
      --*result;
    }
  }

  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t WebCore::operator<=>(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = a1[16];
  if (v2 == 2)
  {
    if (a2[16] == 2)
    {
      v3 = 16;
      goto LABEL_7;
    }

    return 129;
  }

  if (v2 != 1 || a2[16] != 1)
  {
    return 129;
  }

  v3 = 4;
LABEL_7:
  v4 = memcmp(a1, a2, v3);
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t WTF::BlockPtr<void ()(BOOL)>::fromCallable<WebKit::PaymentAuthorizationController::present(UIViewController *,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0>(WebKit::PaymentAuthorizationController::present(UIViewController *,WTF::CompletionHandler<void ()(BOOL)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void WebKit::ListDataControllerBase::~ListDataControllerBase(WebKit::ListDataControllerBase *this, void *a2)
{
  *this = &unk_1F10EE690;
  v3 = *(this + 4);
  if (v3)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
  }

  if (*(this + 4) == 1)
  {
    v5 = *(this + 1);
    if (v5)
    {
      *(v5 + 8) = 0;
      v6 = *(this + 1);
      *(this + 1) = 0;
      if (v6)
      {
        if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v6);
          WTF::fastFree(v6, a2);
        }
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(unsigned int **a1, void *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        *v4 = 0;
        if (v5)
        {
          if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v5);
            WTF::fastFree(v5, a2);
          }
        }
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

void *_ZN3WTF6Detail15CallableWrapperIZZ72__WKPaymentAuthorizationDelegate_Protected___didRequestMerchantSession__EUb_E3__0vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EE790;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZ72__WKPaymentAuthorizationDelegate_Protected___didRequestMerchantSession__EUb_E3__0vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EE790;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZ72__WKPaymentAuthorizationDelegate_Protected___didRequestMerchantSession__EUb_E3__0vJEE4callEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 16);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    ++*(v3 + 16);
    v4 = *(v3 + 24);
    if (v4 && (v5 = *(v4 + 8)) != 0)
    {
      (**v5)(v5);
      MEMORY[0x19EB01DE0](v11, *(a1 + 24));
      (*(*v5 + 80))(v5, v3, v11);
      v8 = v11[0];
      v11[0] = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

      result = (*(*v5 + 8))(v5);
    }

    else
    {
      result = (*(*(v1 + 56) + 16))();
    }

    if (*(v3 + 16) == 1)
    {
      return (*(*v3 + 8))(v3);
    }

    else
    {
      --*(v3 + 16);
    }
  }

  else
  {
    v10 = *(*(v1 + 56) + 16);

    return v10();
  }

  return result;
}

void sub_19D975B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (v10[4] == 1)
  {
    (*(*v10 + 8))(v10);
  }

  else
  {
    --v10[4];
  }

  _Unwind_Resume(exception_object);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit22ListDataControllerBase14observeUpdatesEONS_8FunctionIFvvEEEEUb0_E3__1vJEED1Ev(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10EE7B8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit22ListDataControllerBase14observeUpdatesEONS_8FunctionIFvvEEEEUb0_E3__1vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EE7B8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit22ListDataControllerBase14observeUpdatesEONS_8FunctionIFvvEEEEUb0_E3__1vJEE4callEv(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      ++*(v2 + 16);
      v3 = WTF::fastMalloc(0x10);
      *v3 = &unk_1F10EE7E0;
      v5 = v3;
      WTF::WeakHashSet<WebKit::ListDataObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach((v2 + 32), &v5);
      result = v5;
      if (v5)
      {
        result = (*(*v5 + 8))(v5);
      }

      if (*(v2 + 16) == 1)
      {
        v4 = *(*v2 + 8);

        return v4(v2);
      }

      else
      {
        --*(v2 + 16);
      }
    }
  }

  return result;
}

void sub_19D975D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (v10[4] == 1)
  {
    (*(*v10 + 8))(v10);
  }

  else
  {
    --v10[4];
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::ListDataControllerBase::initializeIfNeeded(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10EE808;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

unint64_t WTF::Vector<WTF::CompletionHandler<void ()(void)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 8 * a1[3] <= a3)
  {
    v10 = a1[2];
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<WTF::CompletionHandler<void ()(void)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = a1[2];
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<WTF::CompletionHandler<void ()(void)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

unsigned int *WTF::Vector<WTF::CompletionHandler<void ()(void)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
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
          if (result)
          {
            result = (*(*result + 8))(result);
          }

          v7 += 2;
          ++v9;
          v8 -= 8;
        }

        while (v8);
      }

      if (v3 + 4 != v4 && v4)
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

_BYTE *WTF::StringView::getCharacters<unsigned char>(_BYTE *result, char *__dst)
{
  v2 = *result;
  v3 = *(result + 2);
  if (result[12] == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        *__dst = *v2;
      }

      else
      {
        return memcpy(__dst, v2, v3);
      }
    }
  }

  else
  {
    v4 = &__dst[v3];
    if (v3 >= 0x10)
    {
      v5 = &__dst[v3 & 0xFFFFFFF0];
      do
      {
        v6 = vld2q_s8(v2);
        v2 += 32;
        *__dst = v6;
        __dst += 16;
      }

      while (__dst != v5);
    }

    while (__dst != v4)
    {
      v7 = *v2;
      v2 += 2;
      *__dst++ = v7;
    }
  }

  return result;
}

unint64_t WTF::Vector<WTF::CompletionHandler<void ()(WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (qword_1ED641D10 <= a2 && qword_1ED641D10 + 8 * dword_1ED641D1C > a2)
  {
    v6 = a2 - qword_1ED641D10;
    if (dword_1ED641D18 + (dword_1ED641D18 >> 1) <= dword_1ED641D18 + 1)
    {
      v7 = dword_1ED641D18 + 1;
    }

    else
    {
      v7 = dword_1ED641D18 + (dword_1ED641D18 >> 1);
    }

    if (v7 <= a1)
    {
      v7 = a1;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<WTF::CompletionHandler<void ()(WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v8);
    return qword_1ED641D10 + v6;
  }

  else
  {
    if (dword_1ED641D18 + (dword_1ED641D18 >> 1) <= dword_1ED641D18 + 1)
    {
      v4 = dword_1ED641D18 + 1;
    }

    else
    {
      v4 = dword_1ED641D18 + (dword_1ED641D18 >> 1);
    }

    if (v4 <= a1)
    {
      v4 = a1;
    }

    if (v4 <= 0x10)
    {
      v5 = 16;
    }

    else
    {
      v5 = v4;
    }

    WTF::Vector<WTF::CompletionHandler<void ()(WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v5);
  }

  return v2;
}

unint64_t WTF::Vector<WTF::CompletionHandler<void ()(WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unint64_t result)
{
  if (dword_1ED641D18 < result)
  {
    v1 = result;
    if (result >> 29)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = qword_1ED641D10;
      v3 = dword_1ED641D1C;
      result = WTF::fastMalloc((8 * result));
      dword_1ED641D18 = v1;
      qword_1ED641D10 = result;
      if (v3)
      {
        v5 = result;
        v6 = 8 * v3;
        v7 = v2;
        do
        {
          v8 = *v7;
          *v7 = 0;
          *v5 = v8;
          result = *v7;
          *v7 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }

          ++v5;
          ++v7;
          v6 -= 8;
        }

        while (v6);
      }

      if (v2 != &qword_1ED641D20 && v2)
      {
        if (qword_1ED641D10 == v2)
        {
          qword_1ED641D10 = 0;
          dword_1ED641D18 = 0;
        }

        return WTF::fastFree(v2, v4);
      }
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::CompletionHandler<void ()(WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *a1;
  }

  if ((a1 + 16) != v4 && v4 != 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::RestrictedOpenerType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::RestrictedOpenerType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::RestrictedOpenerType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 4);
    v7 = *(v5 - 12);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = WTF::fastMalloc((16 * a2 + 16));
  if (a2)
  {
    v11 = a2;
    v12 = v8 + 6;
    do
    {
      *(v12 - 1) = 0;
      *v12 = 0;
      v12 += 16;
      --v11;
    }

    while (v11);
  }

  *a1 = (v8 + 4);
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v5 + 16 * v13;
      if (*v15 != -1)
      {
        if (WTF::equal(*v15, 0, v10))
        {
          v16 = *v15;
          *v15 = 0;
          if (v16)
          {
            if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v16, v9);
            }
          }
        }

        else
        {
          v17 = *a1;
          if (*a1)
          {
            v18 = *(v17 - 8);
          }

          else
          {
            v18 = 0;
          }

          v19 = WTF::ASCIICaseInsensitiveHash::hash(*v15, v9);
          v20 = 0;
          do
          {
            v21 = v19 & v18;
            v22 = WTF::equal(*(v17 + 16 * v21), 0, v10);
            v19 = ++v20 + v21;
          }

          while (!v22);
          v23 = v17 + 16 * v21;
          v24 = *v23;
          *v23 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v9);
          }

          v25 = *v15;
          *v15 = 0;
          *v23 = v25;
          *(v23 + 8) = *(v15 + 8);
          v26 = *v15;
          *v15 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v9);
          }

          if (v15 == a3)
          {
            v14 = v23;
          }
        }
      }

      ++v13;
    }

    while (v13 != v6);
  }

  else
  {
    v14 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v14;
}

uint64_t WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::RestrictedOpenerType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::RegistrableDomain,WebKit::RestrictedOpenerType,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebKit::RestrictedOpenerType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::RegistrableDomain>>,(WTF::ShouldValidateKey)1,WebCore::RegistrableDomain>(uint64_t *a1, WTF **a2, const WTF::StringImpl *a3)
{
  if (!*a1)
  {
    return 0;
  }

  if (WTF::equal(*a2, 0, a3) || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D976670);
  }

  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = *(v6 - 8);
  v8 = WTF::ASCIICaseInsensitiveHash::hash(*a2, v5) & v7;
  v9 = (v6 + 16 * v8);
  if (WTF::equal(*v9, 0, v10))
  {
LABEL_10:
    if (*a1)
    {
      return *a1 + 16 * *(*a1 - 4);
    }

    return 0;
  }

  v12 = 1;
  while (*v9 == -1 || (WTF::equalIgnoringASCIICase(*v9, *a2, v11) & 1) == 0)
  {
    v8 = (v8 + v12) & v7;
    v9 = (v6 + 16 * v8);
    ++v12;
    if (WTF::equal(*v9, 0, v11))
    {
      goto LABEL_10;
    }
  }

  return v9;
}

unint64_t WTF::Vector<WTF::CompletionHandler<void ()(WKContentRuleList *,BOOL)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (qword_1ED641D58 <= a2 && qword_1ED641D58 + 8 * dword_1ED641D64 > a2)
  {
    v6 = a2 - qword_1ED641D58;
    if (dword_1ED641D60 + (dword_1ED641D60 >> 1) <= dword_1ED641D60 + 1)
    {
      v7 = dword_1ED641D60 + 1;
    }

    else
    {
      v7 = dword_1ED641D60 + (dword_1ED641D60 >> 1);
    }

    if (v7 <= a1)
    {
      v7 = a1;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<WTF::CompletionHandler<void ()(WKContentRuleList *,BOOL)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v8);
    return qword_1ED641D58 + v6;
  }

  else
  {
    if (dword_1ED641D60 + (dword_1ED641D60 >> 1) <= dword_1ED641D60 + 1)
    {
      v4 = dword_1ED641D60 + 1;
    }

    else
    {
      v4 = dword_1ED641D60 + (dword_1ED641D60 >> 1);
    }

    if (v4 <= a1)
    {
      v4 = a1;
    }

    if (v4 <= 0x10)
    {
      v5 = 16;
    }

    else
    {
      v5 = v4;
    }

    WTF::Vector<WTF::CompletionHandler<void ()(WKContentRuleList *,BOOL)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v5);
  }

  return v2;
}

unint64_t WTF::Vector<WTF::CompletionHandler<void ()(WKContentRuleList *,BOOL)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unint64_t result)
{
  if (dword_1ED641D60 < result)
  {
    v1 = result;
    if (result >> 29)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = qword_1ED641D58;
      v3 = dword_1ED641D64;
      result = WTF::fastMalloc((8 * result));
      dword_1ED641D60 = v1;
      qword_1ED641D58 = result;
      if (v3)
      {
        v5 = result;
        v6 = 8 * v3;
        v7 = v2;
        do
        {
          v8 = *v7;
          *v7 = 0;
          *v5 = v8;
          result = *v7;
          *v7 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }

          ++v5;
          ++v7;
          v6 -= 8;
        }

        while (v6);
      }

      if (v2 != &qword_1ED641D68 && v2)
      {
        if (qword_1ED641D58 == v2)
        {
          qword_1ED641D58 = 0;
          dword_1ED641D60 = 0;
        }

        return WTF::fastFree(v2, v4);
      }
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::CompletionHandler<void ()(WKContentRuleList *,BOOL)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *a1;
  }

  if ((a1 + 16) != v4 && v4 != 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WTF::String &&)>,void,NSString *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10EE858;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WTF::String &&)>,void,NSString *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EE858;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(WTF::String &&)>,void,NSString *>::call(uint64_t a1)
{
  MEMORY[0x19EB02040](&v4);
  WTF::CompletionHandler<void ()(WTF::String &&)>::operator()((a1 + 8));
  result = v4;
  v4 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

void sub_19D976A44(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WTF::Vector<WTF::CompletionHandler<void ()(NSString *)>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *a1;
  }

  if ((a1 + 16) != v4 && v4 != 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::tryMakeString<WTF::ASCIILiteral,WTF::StringView>@<X0>(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = v3 != 0;
  v5 = v3 - 1;
  if (!v4)
  {
    v5 = 0;
  }

  v8[0] = *a1;
  v8[1] = v5;
  if (v5 >> 31)
  {
    result = 161;
    __break(0xC471u);
  }

  else
  {
    v7 = *a2;
    return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::StringView,void>>(v8, &v7, a3);
  }

  return result;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::StringView,void>>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(a2 + 8);
  if (((v4 | v3) & 0x80000000) == 0)
  {
    v5 = __OFADD__(v3, v4);
    v6 = (v3 + v4);
    if (!v5)
    {
      return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::StringView,void>>(v6, *(a2 + 12), *result, v3, *a2, *(a2 + 8), a3);
    }
  }

  *a3 = 0;
  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::StringView,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, _OWORD *a3@<X2>, size_t a4@<X3>, int8x16_t *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v12 = result;
  v14 = result;
  if (a2)
  {
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        result = WTF::tryFastCompactMalloc((result + 20));
        v15 = v37[0];
        if (v37[0])
        {
          v7 = (v37[0] + 20);
          *v37[0] = 2;
          *(v15 + 4) = v12;
          *(v15 + 8) = v15 + 20;
          *(v15 + 16) = 4;
          if (a4)
          {
            if (a4 == 1)
            {
              goto LABEL_37;
            }

            memcpy((v15 + 20), a3, a4);
          }

          while (v14 < a4)
          {
LABEL_36:
            __break(1u);
LABEL_37:
            *v7 = *a3;
          }

          v37[0] = a5;
          v37[1] = a6;
          result = WTF::StringView::getCharacters<unsigned char>(v37, &v7[a4]);
        }

        goto LABEL_35;
      }

LABEL_12:
      v15 = 0;
      goto LABEL_35;
    }

LABEL_13:
    v15 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_35;
  }

  if (!result)
  {
    goto LABEL_13;
  }

  if (result > 0x7FFFFFEF)
  {
    goto LABEL_12;
  }

  result = WTF::tryFastCompactMalloc((2 * result + 20));
  v15 = v37[0];
  if (v37[0])
  {
    v16 = v37[0] + 20;
    *v37[0] = 2;
    *(v15 + 4) = v12;
    *(v15 + 8) = v15 + 20;
    *(v15 + 16) = 0;
    if (a4 < 0x40)
    {
      v17 = (v15 + 20);
    }

    else
    {
      v17 = (v16 + 2 * (a4 & 0x7FFFFFFFFFFFFFC0));
      v18 = 0uLL;
      v19 = (v15 + 20);
      do
      {
        v38.val[0] = *a3;
        v20 = *(a3 + 1);
        v40.val[0] = a3[2];
        v21 = a3[3];
        a3 += 4;
        v22 = v21;
        v40.val[1] = 0uLL;
        v42.val[0] = v20;
        v38.val[1] = 0uLL;
        v23 = v19;
        vst2q_s8(v23, v38);
        v23 += 32;
        v42.val[1] = 0uLL;
        vst2q_s8(v23, v42);
        v24 = v19 + 64;
        vst2q_s8(v24, v40);
        v25 = v19 + 96;
        vst2q_s8(v25, *(&v18 - 1));
        v19 += 128;
      }

      while (v19 != v17);
    }

    while (v17 != (v15 + 20 + 2 * a4))
    {
      v26 = *a3;
      a3 = (a3 + 1);
      *v17 = v26;
      v17 += 2;
    }

    if (a4 > v14)
    {
      goto LABEL_36;
    }

    result = v16 + 2 * a4;
    if ((a6 & 0x100000000) != 0)
    {
      v27 = result + 2 * a6;
      if (a6 >= 0x40)
      {
        v28 = result + 2 * (a6 & 0xFFFFFFC0);
        v29 = 0uLL;
        do
        {
          v39.val[0] = *a5;
          v30 = a5[1];
          v41.val[0] = a5[2];
          v31 = a5[3];
          a5 += 4;
          v32 = v31;
          v41.val[1] = 0uLL;
          v43.val[0] = v30;
          v39.val[1] = 0uLL;
          v33 = result;
          vst2q_s8(v33, v39);
          v33 += 32;
          v43.val[1] = 0uLL;
          vst2q_s8(v33, v43);
          v34 = (result + 64);
          vst2q_s8(v34, v41);
          v35 = (result + 96);
          vst2q_s8(v35, *(&v29 - 1));
          result += 128;
        }

        while (result != v28);
        result = v28;
      }

      while (result != v27)
      {
        v36 = a5->u8[0];
        a5 = (a5 + 1);
        *result = v36;
        result += 2;
      }
    }

    else if (a6)
    {
      if (a6 == 1)
      {
        *result = a5->i16[0];
      }

      else
      {
        result = memcpy(result, a5, 2 * a6);
      }
    }
  }

LABEL_35:
  *a7 = v15;
  return result;
}

void sub_19D976E18(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebFrameProxy::didReceiveMessage(WebKit::WebFrameProxy *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = *(*(*(this + 5) + 16) + 1104);
  CFRetain(*(this + 1));
  v7 = *(a3 + 25);
  if (v7 != 2011)
  {
    if (v7 == 2012)
    {
      if ((v6 & 0x4000) != 0)
      {
        IPC::ArgumentCoder<std::tuple<WebCore::SecurityOriginData,std::optional<unsigned long long>>,void>::decode<IPC::Decoder>(a3, buf);
        if (v41 & 1) != 0 || (v33 = *a3, v34 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v35 = *(a3 + 3)) != 0) && v34 && ((*(*v35 + 16))(v35, v33), (v41))
        {
          WebKit::WebFrameProxy::setAppBadge(this, buf, v39, v40);
          if ((v41 & 1) != 0 && !v38)
          {
            v17 = *&buf[8];
            *&buf[8] = 0;
            if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v16);
            }

            v18 = *buf;
            *buf = 0;
            if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, v16);
            }
          }
        }

        goto LABEL_16;
      }

      v8 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 136315138;
      *&buf[4] = "WebFrameProxy_SetAppBadge";
      v9 = "Message %s received by a disabled message endpoint";
    }

    else
    {
      if (v7 != 2013)
      {
        v12 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        if (v7 >= 0x107F)
        {
          v30 = 4223;
        }

        else
        {
          v30 = v7;
        }

        v31 = (&IPC::Detail::messageDescriptions)[3 * v30];
        v32 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v31;
        *&buf[12] = 2048;
        *&buf[14] = v32;
        v9 = "Unhandled message %s to %llu";
        v10 = v12;
        v11 = 22;
        goto LABEL_53;
      }

      if ((v6 & 0x4000000000000000) != 0)
      {
        v24 = IPC::Decoder::decode<std::tuple<WebCore::IntSize>>(a3);
        if (v25)
        {
          *buf = v24;
          if ((*(this + 524) & 1) == 0)
          {
            *(this + 524) = 1;
          }

          *(this + 516) = v24;
          v36 = buf;
          WebKit::WebFrameProxy::send<Messages::WebFrame::UpdateFrameSize>(this, &v36);
        }

        goto LABEL_16;
      }

      v8 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
LABEL_15:
        v13 = *a3;
        v14 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v15 = *(a3 + 3);
        if (v15)
        {
          if (v14)
          {
            (*(*v15 + 16))(v15, v13);
          }
        }

LABEL_16:
        CFRelease(*(this + 1));
        return;
      }

      *buf = 136315138;
      *&buf[4] = "WebFrameProxy_UpdateRemoteFrameSize";
      v9 = "Message %s received by a disabled message endpoint";
    }

LABEL_13:
    v10 = v8;
    v11 = 12;
LABEL_53:
    _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
    goto LABEL_15;
  }

  if ((v6 & 0x4000000000000000) == 0)
  {
    v8 = qword_1ED6416C8;
    if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136315138;
    *&buf[4] = "WebFrameProxy_FindFocusableElementDescendingIntoRemoteFrame";
    v9 = "Message %s received by a disabled message endpoint";
    goto LABEL_13;
  }

  IPC::Decoder::decode<std::tuple<WebCore::FocusDirection,WebCore::FocusEventData>>(a3, buf);
  if (v39 == 1)
  {
    v20 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v19)
    {
      v21 = v20;
      while (1)
      {
        v22 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v23 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v23 == v22)
        {
          goto LABEL_37;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_37:
      v26 = WTF::fastMalloc(0x18);
      *v26 = &unk_1F10EE880;
      *(v26 + 8) = v21;
      *(v26 + 16) = a2;
      v36 = v26;
      if ((v39 & 1) == 0)
      {
        __break(1u);
      }

      WebKit::WebFrameProxy::findFocusableElementDescendingIntoRemoteFrame(this, buf[0], &buf[8], &v36);
      v27 = v36;
      v36 = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }
  }

  if (v39 == 1)
  {
    v28 = *&buf[16];
    *&buf[16] = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v19);
    }

    v29 = *&buf[8];
    *&buf[8] = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v19);
    }
  }

  if (this)
  {
    goto LABEL_16;
  }
}

uint64_t *WebKit::WebFrameProxy::sendCancelReply(uint64_t *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  if (*(a2 + 25) == 2011)
  {
    v14 = v3;
    v15 = v4;
    v6 = this;
    this = IPC::Decoder::decode<std::tuple<WebCore::FocusDirection,WebCore::FocusEventData>>(a2, v10);
    if (v13 == 1)
    {
      this = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
      if (v7)
      {
        v9 = 0;
        this = IPC::Connection::sendAsyncReply<Messages::WebFrameProxy::FindFocusableElementDescendingIntoRemoteFrame,WebCore::FoundElementInRemoteFrame>(v6, this, &v9);
      }
    }

    if (v13 == 1)
    {
      v8 = v12;
      v12 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }

      this = v11;
      v11 = 0;
      if (this)
      {
        if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(this, v7);
        }
      }
    }
  }

  return this;
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::WebFrameProxy::FindFocusableElementDescendingIntoRemoteFrame,WebCore::FoundElementInRemoteFrame>(uint64_t *a1, void *a2, char *a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3679;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a2;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v11 = v6;
  v12 = *a3;
  IPC::Encoder::operator<<<BOOL>(v6, &v12);
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

atomic_uint *WebKit::WebLockRegistryProxy::didReceiveMessage(WebKit::WebLockRegistryProxy *this, atomic_ullong *a2, atomic_uint **a3)
{
  v111 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_172;
  }

  if ((*(v3 + 1112) & 0x100) != 0)
  {
    atomic_fetch_add((v3 + 16), 1u);
    v11 = *(a3 + 25);
    if (v11 > 0x857)
    {
      if (v11 != 2136)
      {
        if (v11 == 2138)
        {
          IPC::ArgumentCoder<std::tuple<WebCore::ClientOrigin>,void>::decode<IPC::Decoder>(a3, buf);
          if (v94 & 1) != 0 || (v23 = *a3, v62 = a3[1], *a3 = 0, a3[1] = 0, (v63 = a3[3]) != 0) && v62 && ((*(*v63 + 16))(v63, v23), (v94))
          {
            v24 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if (v23)
            {
              v25 = v24;
              while (1)
              {
                v26 = *a2;
                if ((*a2 & 1) == 0)
                {
                  break;
                }

                v27 = *a2;
                atomic_compare_exchange_strong_explicit(a2, &v27, v26 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v27 == v26)
                {
                  goto LABEL_64;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_64:
              v36 = WTF::fastMalloc(0x18);
              *v36 = &unk_1F10EE8D0;
              v36[1] = v25;
              v36[2] = a2;
              *&v102 = v36;
              if ((v94 & 1) == 0)
              {
                goto LABEL_172;
              }

              WebKit::WebLockRegistryProxy::snapshot(this, buf, &v102);
              v37 = v102;
              *&v102 = 0;
              if (v37)
              {
                (*(*v37 + 8))(v37);
              }
            }
          }

          if (v94 != 1)
          {
            goto LABEL_160;
          }

          goto LABEL_146;
        }

        if (v11 == 2137)
        {
          IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a3, &v102);
          if ((v107 & 1) == 0)
          {
            v54 = *a3;
            v55 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v56 = a3[3];
            if (!v56)
            {
              goto LABEL_60;
            }

            if (!v55)
            {
              goto LABEL_60;
            }

            (*(*v56 + 16))(v56, v54);
            if ((v107 & 1) == 0)
            {
              goto LABEL_60;
            }
          }

          IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, &v85);
          if ((v86 & 1) == 0)
          {
            goto LABEL_124;
          }

          IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a3, &v108);
          if ((v110 & 1) == 0)
          {
            v12 = *a3;
            v64 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v65 = a3[3];
            if (v65 && v64)
            {
              (*(*v65 + 16))(v65, v12);
            }

            goto LABEL_124;
          }

          IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v87);
          if ((v88 & 1) == 0)
          {
            v12 = *a3;
            v76 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v77 = a3[3];
            if (!v77 || !v76 || ((*(*v77 + 16))(v77, v12), (v88 & 1) == 0))
            {
LABEL_124:
              v14 = 0;
              buf[0] = 0;
              v101 = 0;
LABEL_125:
              if (v107)
              {
                if (!v106)
                {
                  v66 = *(&v104 + 1);
                  *(&v104 + 1) = 0;
                  if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v66, v12);
                  }

                  v67 = v104;
                  *&v104 = 0;
                  if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v67, v12);
                  }
                }

                v106 = -1;
                if (!BYTE8(v103))
                {
                  v68 = *(&v102 + 1);
                  *(&v102 + 1) = 0;
                  if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v68, v12);
                  }

                  v69 = v102;
                  *&v102 = 0;
                  if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v69, v12);
                  }
                }
              }

              if ((v14 & 1) == 0)
              {
                goto LABEL_60;
              }

              v102 = v95;
              v103 = v96;
              WebKit::WebLockRegistryProxy::requestLock(this, buf, v94, *(&v94 + 1), &v102, &v97);
              goto LABEL_142;
            }
          }

          v13 = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(a3);
          if ((v13 & 0x100) == 0)
          {
            goto LABEL_16;
          }

          v42 = a3[1];
          v43 = a3[2];
          v12 = *a3;
          if (v42 <= v43 - *a3)
          {
            *a3 = 0;
            a3[1] = 0;
            v78 = a3[3];
            if (v78)
            {
              if (v42)
              {
                (*(*v78 + 16))(v78);
                v42 = a3[1];
              }
            }

            else
            {
              v42 = 0;
            }
          }

          else
          {
            v44 = v43 + 1;
            a3[2] = (v43 + 1);
            if (v43)
            {
              v45 = *v43;
              if (v45 >= 2)
              {
                goto LABEL_184;
              }

              if (v42 <= v44 - v12)
              {
                v80 = 0;
                v81 = 0;
                *a3 = 0;
                a3[1] = 0;
                v82 = a3[3];
                if (v82)
                {
                  (*(*v82 + 16))(v82);
                  v81 = *a3;
                  v80 = a3[1];
                }
              }

              else
              {
                a3[2] = (v43 + 2);
                if (v43 != -1)
                {
                  v46 = *v44;
                  if (v46 < 2)
                  {
                    if (v107 & 1) != 0 && (v86 & 1) != 0 && (v88)
                    {
                      buf[0] = 0;
                      v90 = -1;
                      if (BYTE8(v103))
                      {
                        if (BYTE8(v103) == 255)
                        {
LABEL_87:
                          LOBYTE(v91[0]) = 0;
                          v93 = -1;
                          if (v106)
                          {
                            if (v106 == 255)
                            {
                              goto LABEL_90;
                            }

                            *v91 = v104;
                          }

                          else
                          {
                            v48 = v104;
                            v104 = 0uLL;
                            *v91 = v48;
                            v92 = v105;
                          }

                          v93 = v106;
LABEL_90:
                          v94 = v85;
                          v95 = v108;
                          v96 = v109;
                          v49 = v87;
                          v87 = 0;
                          v97 = v49;
                          v98 = v13;
                          v99 = v45;
                          v14 = 1;
                          v100 = v46;
                          goto LABEL_91;
                        }

                        *buf = v102;
                      }

                      else
                      {
                        v47 = v102;
                        v102 = 0uLL;
                        *buf = v47;
                        *&buf[16] = v103;
                      }

                      v90 = BYTE8(v103);
                      goto LABEL_87;
                    }

LABEL_172:
                    __break(1u);
                    goto LABEL_173;
                  }

LABEL_184:
                  *a3 = 0;
                  a3[1] = 0;
                  v84 = a3[3];
                  if (v84 && v42)
                  {
                    (*(*v84 + 16))(v84, v12);
                  }

LABEL_16:
                  v14 = 0;
                  buf[0] = 0;
LABEL_91:
                  v101 = v14;
                  if (v88)
                  {
                    v50 = v87;
                    v87 = 0;
                    if (v50)
                    {
                      if (atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v50, v12);
                      }
                    }
                  }

                  goto LABEL_125;
                }

                v80 = v42;
                v81 = v12;
              }

              *a3 = 0;
              a3[1] = 0;
              v83 = a3[3];
              if (v83 && v80)
              {
                (*(*v83 + 16))(v83, v81, v80);
                goto LABEL_190;
              }

              goto LABEL_182;
            }
          }

          *a3 = 0;
          a3[1] = 0;
          v79 = a3[3];
          if (v79)
          {
            if (v42)
            {
              (*(*v79 + 16))(v79);
LABEL_190:
              v12 = *a3;
              v42 = a3[1];
              goto LABEL_184;
            }

LABEL_183:
            v12 = 0;
            goto LABEL_184;
          }

LABEL_182:
          v42 = 0;
          goto LABEL_183;
        }

LABEL_59:
        v32 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v11 >= 0x107F)
          {
            v51 = 4223;
          }

          else
          {
            v51 = v11;
          }

          v52 = (&IPC::Detail::messageDescriptions)[3 * v51];
          v53 = a3[7];
          *buf = 136315394;
          *&buf[4] = v52;
          *&buf[12] = 2048;
          *&buf[14] = v53;
          _os_log_error_impl(&dword_19D52D000, v32, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
        }

        goto LABEL_60;
      }

      IPC::Decoder::decode<std::tuple<WebCore::ClientOrigin,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::UUID>,WTF::String>>(buf, a3);
      if (v101 != 1)
      {
        goto LABEL_160;
      }

      v102 = v95;
      v103 = v96;
      WebKit::WebLockRegistryProxy::releaseLock(this, buf, v94, *(&v94 + 1), &v102);
LABEL_142:
      if ((v101 & 1) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_143;
    }

    if (v11 == 2134)
    {
      IPC::Decoder::decode<std::tuple<WebCore::ClientOrigin,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::UUID>,WTF::String>>(buf, a3);
      if (v101 != 1)
      {
        goto LABEL_160;
      }

      v28 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v23 & 1) == 0)
      {
LABEL_143:
        v70 = v97;
        v97 = 0;
        if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v70, v23);
        }

        goto LABEL_146;
      }

      v29 = v28;
      while (1)
      {
        v30 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v31 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v31, v30 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v31 == v30)
        {
          goto LABEL_70;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_70:
      v38 = WTF::fastMalloc(0x18);
      *v38 = &unk_1F10EE8A8;
      v38[1] = v29;
      v38[2] = a2;
      *&v108 = v38;
      v102 = v95;
      v103 = v96;
      WebKit::WebLockRegistryProxy::abortLockRequest(this, buf, v94, *(&v94 + 1), &v102, &v97, &v108);
      v39 = v108;
      *&v108 = 0;
      if (v39)
      {
        (*(*v39 + 8))(v39);
      }

      goto LABEL_142;
    }

    if (v11 != 2135)
    {
      goto LABEL_59;
    }

    IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a3, &v102);
    if ((v107 & 1) == 0)
    {
      v57 = *a3;
      v58 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v59 = a3[3];
      if (!v59 || !v58 || ((*(*v59 + 16))(v59, v57), (v107 & 1) == 0))
      {
LABEL_60:
        v33 = *a3;
        v34 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v35 = a3[3];
        if (v35 && v34)
        {
          (*(*v35 + 16))(v35, v33);
        }

        goto LABEL_160;
      }
    }

    IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a3, &v108);
    v16 = v110;
    if ((v110 & 1) == 0)
    {
      v15 = *a3;
      v60 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v61 = a3[3];
      if (v61 && v60)
      {
        (*(*v61 + 16))(v61, v15);
      }

      buf[0] = 0;
      LOBYTE(v96) = 0;
      if ((v107 & 1) == 0)
      {
        goto LABEL_60;
      }

      if (v106)
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }

    if ((v107 & 1) == 0)
    {
      goto LABEL_172;
    }

    buf[0] = 0;
    v90 = -1;
    if (BYTE8(v103))
    {
      if (BYTE8(v103) == 255)
      {
LABEL_25:
        LOBYTE(v91[0]) = 0;
        v93 = -1;
        if (v106)
        {
          if (v106 == 255)
          {
LABEL_28:
            v94 = v108;
            v95 = v109;
            LOBYTE(v96) = 1;
            if (v106)
            {
LABEL_35:
              v106 = -1;
              if (!BYTE8(v103))
              {
                v21 = *(&v102 + 1);
                *(&v102 + 1) = 0;
                if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v21, v15);
                }

                v22 = v102;
                *&v102 = 0;
                if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v22, v15);
                }
              }

              if ((v16 & 1) == 0)
              {
                goto LABEL_60;
              }

              v102 = v94;
              v103 = v95;
              WebKit::WebLockRegistryProxy::clientIsGoingAway(this, buf, &v102);
              if ((v96 & 1) == 0)
              {
                goto LABEL_160;
              }

LABEL_146:
              if (!v93)
              {
                v71 = v91[1];
                v91[1] = 0;
                if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v71, v23);
                }

                v72 = v91[0];
                v91[0] = 0;
                if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v72, v23);
                }
              }

              v93 = -1;
              if (!v90)
              {
                v73 = *&buf[8];
                *&buf[8] = 0;
                if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v73, v23);
                }

                v74 = *buf;
                *buf = 0;
                if (v74 && atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v74, v23);
                }
              }

LABEL_160:
              v75 = *(this + 2);
              if (v75)
              {
                return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v75 + 16));
              }

LABEL_173:
              __break(0xC471u);
              JUMPOUT(0x19D977F10);
            }

LABEL_29:
            v19 = *(&v104 + 1);
            *(&v104 + 1) = 0;
            if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v15);
            }

            v20 = v104;
            *&v104 = 0;
            if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v20, v15);
            }

            goto LABEL_35;
          }

          *v91 = v104;
        }

        else
        {
          v18 = v104;
          v104 = 0uLL;
          *v91 = v18;
          v92 = v105;
        }

        v93 = v106;
        goto LABEL_28;
      }

      *buf = v102;
    }

    else
    {
      v17 = v102;
      v102 = 0uLL;
      *buf = v17;
      *&buf[16] = v103;
    }

    v90 = BYTE8(v103);
    goto LABEL_25;
  }

  v5 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v40 = *(a3 + 25);
    if (v40 >= 0x107F)
    {
      v40 = 4223;
    }

    v41 = (&IPC::Detail::messageDescriptions)[3 * v40];
    *buf = 136315138;
    *&buf[4] = v41;
    _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver WebLockRegistryProxy", buf, 0xCu);
  }

  v6 = *a3;
  v7 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  result = a3[3];
  if (result)
  {
    if (v7)
    {
      return (*(*result + 16))(result, v6);
    }
  }

  return result;
}
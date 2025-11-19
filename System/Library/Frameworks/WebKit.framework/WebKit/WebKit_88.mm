BOOL WebKit::RemoteMediaSourceProxy::didReceiveSyncMessage(atomic_uchar *a1, atomic_ullong *a2, IPC::Decoder *a3, uint64_t *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  WebKit::RemoteMediaSourceProxy::sharedPreferencesForWebProcess(a1, v42);
  if (v42[24] == 1 && (v42[13] & 0x44) != 0)
  {
    v8 = (a1 + 8);
    while (1)
    {
      v9 = *v8;
      if ((*v8 & 1) == 0)
      {
        break;
      }

      v10 = *v8;
      atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_11;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_11:
    v16 = *(a3 + 25);
    v15 = v16 == 4122;
    if (v16 == 4122)
    {
      IPC::ArgumentCoder<WebCore::ContentType,void>::decode(a3, &v43);
      if (v45 & 1) != 0 || (v35 = *a3, v36 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v37 = *(a3 + 3)) != 0) && v36 && ((*(*v37 + 16))(v37, v35), (v45))
      {
        v17 = IPC::ArgumentCoder<WebCore::MediaSourceConfiguration,void>::decode(a3);
        if ((v17 & 0x100) != 0)
        {
          if ((v45 & 1) == 0)
          {
            __break(1u);
          }

          *buf = v43;
          buf[8] = v44;
          BYTE2(v48) = v17;
          v49 = 1;
          v18 = *a4;
          *a4 = 0;
          while (1)
          {
            v19 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v20 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v20 == v19)
            {
              goto LABEL_25;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_25:
          v26 = WTF::fastMalloc(0x18);
          *v26 = &unk_1F10F2948;
          *(v26 + 1) = v18;
          *(v26 + 2) = a2;
          v43 = v26;
          WebKit::RemoteMediaSourceProxy::addSourceBuffer(a1, buf, &v48 + 2, &v43);
          v27 = v43;
          v43 = 0;
          if (v27)
          {
            (*(*v27 + 8))(v27);
          }

          if (v49)
          {
            v28 = *buf;
            *buf = 0;
            if (v28)
            {
              if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v28, v23);
              }
            }
          }

          goto LABEL_31;
        }

        v38 = *a3;
        v39 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v40 = *(a3 + 3);
        if (v40 && v39)
        {
          (*(*v40 + 16))(v40, v38);
        }

        if (v45)
        {
          v41 = v43;
          v43 = 0;
          if (v41)
          {
            if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v41, v38);
            }
          }
        }
      }
    }

    else
    {
      v21 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v16 >= 0x107F)
        {
          v32 = 4223;
        }

        else
        {
          v32 = v16;
        }

        v33 = (&IPC::Detail::messageDescriptions)[3 * v32];
        v34 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v33;
        v47 = 2048;
        v48 = v34;
        _os_log_error_impl(&dword_19D52D000, v21, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
      }
    }

    v23 = *a3;
    v24 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v25 = *(a3 + 3);
    if (v25 && v24)
    {
      (*(*v25 + 16))(v25, v23);
    }

LABEL_31:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref(v8, v23);
    return v15;
  }

  v11 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v30 = *(a3 + 25);
    if (v30 >= 0x107F)
    {
      v30 = 4223;
    }

    v31 = (&IPC::Detail::messageDescriptions)[3 * v30];
    *buf = 136315138;
    *&buf[4] = v31;
    _os_log_error_impl(&dword_19D52D000, v11, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteMediaSourceProxy", buf, 0xCu);
  }

  v12 = *a3;
  v13 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v14 = *(a3 + 3);
  if (v14 && v13)
  {
    (*(*v14 + 16))(v14, v12);
  }

  return 0;
}

uint64_t WebKit::RemoteObjectRegistry::didReceiveMessage(WebKit::RemoteObjectRegistry *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  (**this)(this);
  v7 = *(a3 + 25);
  switch(v7)
  {
    case 0x5E0u:
      IPC::handleMessage<Messages::RemoteObjectRegistry::InvokeMethod,IPC::Connection,WebKit::RemoteObjectRegistry,WebKit::RemoteObjectRegistry,void ()(WebKit::RemoteObjectInvocation const&)>(a3, this);
      break;
    case 0x5DFu:
      IPC::handleMessage<Messages::RemoteObjectRegistry::CallReplyBlock,IPC::Connection,WebKit::RemoteObjectRegistry,WebKit::RemoteObjectRegistry,void ()(IPC::Connection&,unsigned long long,WebKit::UserData const&)>(a2, a3, this, v6);
      break;
    case 0x5E1u:
      v9 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v10)
      {
        WebKit::RemoteObjectRegistry::releaseUnusedReplyBlock(this, v9);
      }

      break;
    default:
      v11 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v7 >= 0x107F)
        {
          v12 = 4223;
        }

        else
        {
          v12 = v7;
        }

        v13 = (&IPC::Detail::messageDescriptions)[3 * v12];
        v14 = *(a3 + 7);
        v15 = 136315394;
        v16 = v13;
        v17 = 2048;
        v18 = v14;
        _os_log_error_impl(&dword_19D52D000, v11, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &v15, 0x16u);
      }

      IPC::Decoder::markInvalid(a3);
      break;
  }

  return (*(*this + 8))(this);
}

uint64_t IPC::handleMessage<Messages::RemoteObjectRegistry::InvokeMethod,IPC::Connection,WebKit::RemoteObjectRegistry,WebKit::RemoteObjectRegistry,void ()(WebKit::RemoteObjectInvocation const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<std::tuple<WebKit::RemoteObjectInvocation>>(v4, a1);
  if (v4[24] == 1)
  {
    WebKit::RemoteObjectRegistry::invokeMethod(a2, v4);
  }

  return std::optional<WebKit::RemoteObjectInvocation>::~optional(v4);
}

void IPC::handleMessage<Messages::RemoteObjectRegistry::CallReplyBlock,IPC::Connection,WebKit::RemoteObjectRegistry,WebKit::RemoteObjectRegistry,void ()(IPC::Connection&,unsigned long long,WebKit::UserData const&)>(uint64_t a1, IPC::Decoder *a2, uint64_t a3, __n128 a4)
{
  v6 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a2;
  v8 = *(a2 + 1);
  if (v8 < v6 - v7 || v8 - (v6 - v7) <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v14 = *(a2 + 3);
    if (!v14)
    {
      v8 = 0;
LABEL_17:
      v7 = 0;
      goto LABEL_21;
    }

    if (!v8)
    {
      goto LABEL_17;
    }

    (*(*v14 + 16))(v14);
LABEL_20:
    v7 = *a2;
    v8 = *(a2 + 1);
LABEL_21:
    *a2 = 0;
    *(a2 + 1) = 0;
    v15 = *(a2 + 3);
    if (v15 && v8)
    {
      (*(*v15 + 16))(v15, v7);
    }

    v16 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v17 = *(a2 + 3);
    if (v17 && v16)
    {
      v18 = *(*v17 + 16);

      v18();
    }

    return;
  }

  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_21;
  }

  v11 = *v6;
  IPC::ArgumentCoder<WebKit::UserData,void>::decode(a2, &v21, a4);
  if ((v22 & 1) == 0)
  {
    goto LABEL_20;
  }

  v12 = v21;
  if (v21)
  {
    CFRetain(*(v21 + 8));
    v19 = v12;
    v20 = 1;
    CFRelease(*(v12 + 8));
  }

  else
  {
    v19 = 0;
    v20 = 1;
  }

  WebKit::RemoteObjectRegistry::callReplyBlock(a3, a1, v11, &v19);
  if (v20)
  {
    v13 = v19;
    v19 = 0;
    if (v13)
    {
      CFRelease(*(v13 + 8));
    }
  }
}

atomic_ullong *WebKit::RemoteRemoteCommandListener::didReceiveMessage(WebKit::RemoteRemoteCommandListener *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = (this + 80);
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
  if (v8 == 1525)
  {
    IPC::ArgumentCoder<std::tuple<WebCore::PlatformMediaSessionRemoteControlCommandType,WebCore::PlatformMediaSessionRemoteCommandArgument>,void>::decode<IPC::Decoder>(a3, &v19);
    if (v23 & 1) != 0 || (v9 = *a3, v17 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v18 = *(a3 + 3)) != 0) && v17 && ((*(*v18 + 16))(v18, v9), (v23))
    {
      WebKit::RemoteRemoteCommandListener::didReceiveRemoteControlCommand(this);
    }
  }

  else
  {
    v10 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v8 >= 0x107F)
      {
        v14 = 4223;
      }

      else
      {
        v14 = v8;
      }

      v15 = (&IPC::Detail::messageDescriptions)[3 * v14];
      v16 = *(a3 + 7);
      v19 = 136315394;
      v20 = v15;
      v21 = 2048;
      v22 = v16;
      _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &v19, 0x16u);
    }

    v9 = *a3;
    v11 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v12 = *(a3 + 3);
    if (v12 && v11)
    {
      (*(*v12 + 16))(v12, v9);
    }
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteRemoteCommandListener,(WTF::DestructionThread)0>::deref(v5, v9);
}

WTF *WebKit::RemoteRemoteCommandListenerProxy::didReceiveMessage(WebKit::RemoteRemoteCommandListenerProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  WebKit::RemoteAudioDestinationManager::sharedPreferencesForWebProcess(this, v46);
  if (v46[24] == 1 && (v46[12] & 2) != 0)
  {
    ++*(this + 4);
    v9 = *(a3 + 25);
    if (v9 != 1524)
    {
      v23 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v9 >= 0x107F)
        {
          v24 = 4223;
        }

        else
        {
          v24 = v9;
        }

        v25 = (&IPC::Detail::messageDescriptions)[3 * v24];
        v26 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v25;
        *&buf[12] = 2048;
        *&buf[14] = v26;
        _os_log_error_impl(&dword_19D52D000, v23, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_51;
    }

    v10 = *(a3 + 1);
    v11 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11 - *a3;
    v13 = v10 >= v12;
    v14 = v10 - v12;
    if (!v13 || v14 <= 7)
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v41 = *(a3 + 3);
      if (v41)
      {
        if (v10)
        {
          (*(*v41 + 16))(v41);
          v10 = *(a3 + 1);
        }
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_64;
    }

    *(a3 + 2) = v11 + 1;
    if (!v11)
    {
LABEL_64:
      *a3 = 0;
      *(a3 + 1) = 0;
      v42 = *(a3 + 3);
      if (v42 && v10)
      {
        (*(*v42 + 16))(v42);
      }

      goto LABEL_50;
    }

    v16 = *v11;
    *buf = 0;
    *&buf[8] = 0;
    if (v16 >= 0x100000)
    {
      v17 = 0;
      LODWORD(v35) = 0;
      while (1)
      {
        v36 = IPC::Decoder::decode<WebCore::PlatformMediaSessionRemoteControlCommandType>(a3);
        v47 = v36;
        if ((v36 & 0x100) == 0)
        {
          break;
        }

        if (v35 == *&buf[8])
        {
          v37 = WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(buf, v35 + 1, &v47);
          LODWORD(v35) = *&buf[12];
          v17 = *buf;
          *(*buf + *&buf[12]) = *v37;
        }

        else
        {
          *(v17 + v35) = v36;
        }

        v35 = (v35 + 1);
        *&buf[12] = v35;
        v16 = (v16 - 1);
        if (!v16)
        {
          if (*&buf[8] > v35)
          {
            if (v35)
            {
              *&buf[8] = v35;
              v17 = WTF::fastRealloc(v17, v35);
            }

            else
            {
              *buf = 0;
              *&buf[8] = 0;
              WTF::fastFree(v17, v20);
              v17 = *buf;
            }
          }

          v22 = *&buf[8];
          v18 = *&buf[12];
          goto LABEL_29;
        }
      }

      if (!v17)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    if (v16)
    {
      v17 = WTF::fastMalloc(v16);
      v18 = 0;
      *&buf[8] = v16;
      *buf = v17;
      while (1)
      {
        v19 = IPC::Decoder::decode<WebCore::PlatformMediaSessionRemoteControlCommandType>(a3);
        v47 = v19;
        if ((v19 & 0x100) == 0)
        {
          break;
        }

        if (v18 == *&buf[8])
        {
          v21 = WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(buf, v18 + 1, &v47);
          v18 = *&buf[12];
          v17 = *buf;
          *(*buf + *&buf[12]) = *v21;
        }

        else
        {
          *(v17 + v18) = v19;
        }

        *&buf[12] = ++v18;
        v16 = (v16 - 1);
        if (!v16)
        {
          v22 = *&buf[8];
          goto LABEL_29;
        }
      }

LABEL_49:
      *buf = 0;
      *&buf[8] = 0;
      WTF::fastFree(v17, v20);
LABEL_50:
      v38 = *a3;
      v39 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v40 = *(a3 + 3);
      if (v40 && v39)
      {
        (*(*v40 + 16))(v40, v38);
      }

LABEL_51:
      v31 = *a3;
      v32 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = *(a3 + 3);
      if (result && v32)
      {
        result = (*(*result + 16))(result, v31);
      }

LABEL_52:
      if (*(this + 4) == 1)
      {
        return (*(*this + 24))(this, v31, v32);
      }

      --*(this + 4);
      return result;
    }

    v18 = 0;
    v22 = 0;
    v17 = 0;
LABEL_29:
    v27 = *(a3 + 1);
    v28 = *(a3 + 2);
    v29 = *a3;
    if (v27 <= &v28[-*a3])
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v43 = *(a3 + 3);
      if (v43)
      {
        if (v27)
        {
          (*(*v43 + 16))(v43);
          v27 = *(a3 + 1);
        }
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      *(a3 + 2) = v28 + 1;
      if (v28)
      {
        v30 = *v28;
        if (v30 < 2)
        {
          *buf = v17;
          *&buf[8] = v22;
          *&buf[12] = v18;
          buf[16] = v30;
          v49 = 1;
          goto LABEL_33;
        }

LABEL_72:
        *a3 = 0;
        *(a3 + 1) = 0;
        v45 = *(a3 + 3);
        if (v45 && v27)
        {
          (*(*v45 + 16))(v45, v29);
        }

        buf[0] = 0;
        v49 = 0;
        if (!v17)
        {
          goto LABEL_51;
        }

        WTF::fastFree(v17, v29);
        if ((v49 & 1) == 0)
        {
          goto LABEL_51;
        }

        LOBYTE(v30) = buf[16];
LABEL_33:
        result = WebKit::RemoteRemoteCommandListenerProxy::updateSupportedCommands(this, buf, v30 & 1);
        if (v49)
        {
          result = *buf;
          if (*buf)
          {
            *buf = 0;
            *&buf[8] = 0;
            result = WTF::fastFree(result, v31);
          }
        }

        goto LABEL_52;
      }
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v44 = *(a3 + 3);
    if (v44)
    {
      if (v27)
      {
        (*(*v44 + 16))(v44);
        v29 = *a3;
        v27 = *(a3 + 1);
        goto LABEL_72;
      }
    }

    else
    {
      v27 = 0;
    }

    v29 = 0;
    goto LABEL_72;
  }

  v5 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v33 = *(a3 + 25);
    if (v33 >= 0x107F)
    {
      v33 = 4223;
    }

    v34 = (&IPC::Detail::messageDescriptions)[3 * v33];
    *buf = 136315138;
    *&buf[4] = v34;
    _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteRemoteCommandListenerProxy", buf, 0xCu);
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

  return result;
}

void WebKit::RemoteRenderingBackend::didReceiveStreamMessage(WebKit::RemoteRenderingBackend *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v147 = *MEMORY[0x1E69E9840];
  v9 = *(*(this + 6) + 344);
  atomic_fetch_add(this + 4, 1u);
  v10 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0x623:
      IPC::ArgumentCoder<IPC::ArrayReferenceTuple<unsigned short,WebCore::FloatSize>,void>::decode<IPC::Decoder>(a3, buf);
      if ((v139 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((v139 & 1) == 0)
        {
          goto LABEL_202;
        }
      }

      v11 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_201;
      }

      v13 = v11;
      v14 = IPC::Decoder::decode<WebCore::FontSmoothingMode>(a3);
      if ((v14 & 0x100) == 0)
      {
        goto LABEL_202;
      }

      v15 = *(a3 + 1);
      v16 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v17 = *a3;
      v18 = v16 - *a3;
      v19 = v15 >= v18;
      v20 = v15 - v18;
      if (!v19 || v20 <= 7)
      {
        IPC::Decoder::markInvalid(a3);
        goto LABEL_177;
      }

      *(a3 + 2) = v16 + 1;
      if (!v16)
      {
LABEL_177:
        IPC::Decoder::markInvalid(a3);
        if (!*a3)
        {
          goto LABEL_201;
        }

        goto LABEL_178;
      }

      if (!v17 || (*v16 - 1) >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_201;
      }

      if ((v139 & 1) == 0)
      {
        goto LABEL_178;
      }

      *&v122[1] = *&buf[1];
      *&v122[16] = *&buf[16];
      v122[0] = buf[0];
      WebKit::RemoteRenderingBackend::cacheDecomposedGlyphs(this, v122, v14, *&v13, *(&v13 + 1));
      goto LABEL_17;
    case 0x624:
      IPC::handleMessage<Messages::RemoteRenderingBackend::CacheFilter,IPC::StreamServerConnection,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>> &&)>(a3, this);
      goto LABEL_17;
    case 0x625:
      IPC::ArgumentCoder<WebCore::FontInternalAttributes,void>::decode(a3, &v133);
      if ((v135 & 1) == 0)
      {
        goto LABEL_201;
      }

      IPC::ArgumentCoder<WebCore::FontPlatformDataAttributes,void>::decode(a3, v122);
      if ((v126 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((v126 & 1) == 0)
        {
          goto LABEL_202;
        }
      }

      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a3, &v136);
      if (v137 & 1) != 0 || (IPC::Decoder::markInvalid(a3), (v137))
      {
        if ((v126 & 1) == 0)
        {
          goto LABEL_178;
        }

        *buf = v133;
        *&buf[16] = v134;
        v139 = *v122;
        LOBYTE(v140) = v122[8];
        v4 = *&v122[16];
        v141 = *&v122[16];
        LODWORD(v5) = v123;
        v142 = v123;
        v10 = cf;
        v3 = v125;
        v144 = cf;
        *v145 = v125;
        *&v145[8] = v136;
        v48 = 1;
        v146 = 1;
        cf = 0;
        v125 = 0;
        *&v122[16] = 0;
      }

      else
      {
        buf[0] = 0;
        v146 = 0;
        if ((v126 & 1) == 0)
        {
          goto LABEL_202;
        }

        v108 = v125;
        v125 = 0;
        if (v108)
        {
          CFRelease(v108);
        }

        v48 = 0;
      }

      v49 = cf;
      cf = 0;
      if (v49)
      {
        CFRelease(v49);
      }

      v50 = *&v122[16];
      *&v122[16] = 0;
      if (v50)
      {
        CFRelease(v50);
      }

      if ((v48 & 1) == 0)
      {
        goto LABEL_202;
      }

      *v122 = v139;
      v122[8] = v140;
      *&v122[16] = v4;
      LODWORD(v123) = v5;
      v144 = 0;
      *v145 = 0;
      v141 = 0;
      cf = v10;
      v125 = v3;
      WebKit::RemoteRenderingBackend::cacheFont(this, buf, v122, *&v145[8], v145[16]);
      v51 = v125;
      v125 = 0;
      if (v51)
      {
        CFRelease(v51);
      }

      v52 = cf;
      cf = 0;
      if (v52)
      {
        CFRelease(v52);
      }

      v53 = *&v122[16];
      *&v122[16] = 0;
      if (v53)
      {
        CFRelease(v53);
      }

      if (v146)
      {
        v54 = *v145;
        *v145 = 0;
        if (v54)
        {
          CFRelease(v54);
        }

        v55 = v144;
        v144 = 0;
        if (v55)
        {
          CFRelease(v55);
        }

        v56 = v141;
        v141 = 0;
        if (v56)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_17;
    case 0x626:
      IPC::handleMessage<Messages::RemoteRenderingBackend::CacheFontCustomPlatformData,IPC::StreamServerConnection,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WebCore::FontCustomPlatformSerializedData &&)>(a3, this);
      goto LABEL_17;
    case 0x627:
      IPC::ArgumentCoder<WebCore::Gradient,void>::decode(a3, v122);
      if ((v122[8] & 1) == 0)
      {
        goto LABEL_201;
      }

      v25 = *(a3 + 1);
      v26 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v27 = *a3;
      v28 = v26 - *a3;
      v19 = v25 >= v28;
      v29 = v25 - v28;
      if (!v19 || v29 <= 7)
      {
        IPC::Decoder::markInvalid(a3);
        goto LABEL_181;
      }

      *(a3 + 2) = v26 + 1;
      if (!v26)
      {
LABEL_181:
        IPC::Decoder::markInvalid(a3);
        if (*a3)
        {
          goto LABEL_178;
        }

        goto LABEL_182;
      }

      if (!v27 || (v31 = *v26, (*v26 - 1) >= 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_182:
        IPC::Decoder::markInvalid(a3);
        WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(v122, v115);
        goto LABEL_202;
      }

      v32 = *v122;
      *v122 = 0;
      *buf = v32;
      *&buf[8] = v31;
      buf[16] = 1;
      WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(v122, v24);
      WebKit::RemoteRenderingBackend::cacheGradient(this, buf, v31);
      if (buf[16])
      {
        WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(buf, v33);
      }

      goto LABEL_17;
    case 0x628:
      IPC::ArgumentCoder<WebCore::ShareableBitmapHandle,void>::decode(a3, v122);
      if ((v132 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((v132 & 1) == 0)
        {
          buf[0] = 0;
          v146 = 0;
          goto LABEL_138;
        }
      }

      v59 = *(a3 + 1);
      v60 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v61 = *a3;
      v62 = v60 - *a3;
      v19 = v59 >= v62;
      v63 = v59 - v62;
      if (!v19 || v63 <= 7)
      {
        IPC::Decoder::markInvalid(a3);
        goto LABEL_195;
      }

      *(a3 + 2) = v60 + 1;
      if (!v60)
      {
LABEL_195:
        IPC::Decoder::markInvalid(a3);
        if (*a3)
        {
          goto LABEL_178;
        }

        goto LABEL_196;
      }

      if (!v61 || (v65 = *v60, (*v60 - 1) >= 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_196:
        IPC::Decoder::markInvalid(a3);
        v67 = 0;
        buf[0] = 0;
        goto LABEL_79;
      }

      WTF::MachSendRight::MachSendRight();
      *&buf[8] = *&v122[8];
      LOBYTE(v139) = 0;
      LOBYTE(v140) = 0;
      if (cf == 1)
      {
        v66 = v123;
        v123 = 0;
        v139 = v66;
        LOBYTE(v140) = 1;
      }

      LODWORD(v141) = v125;
      BYTE4(v141) = BYTE4(v125);
      LOBYTE(v142) = v126 != 0;
      v143 = v127;
      LOBYTE(v144) = v128 != 0;
      HIDWORD(v144) = v129;
      v145[0] = v130 != 0;
      *&v145[4] = v131;
      *&v145[16] = v65;
      v67 = 1;
LABEL_79:
      v146 = v67;
      if (v132)
      {
        if (cf == 1)
        {
          v68 = v123;
          v123 = 0;
          if (v68)
          {
            CFRelease(v68);
          }
        }

        WTF::MachSendRight::~MachSendRight(v122);
        v67 = v146;
      }

      if (v67)
      {
        goto LABEL_85;
      }

LABEL_138:
      IPC::Decoder::markInvalid(a3);
      if ((v146 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_85:
      WebKit::RemoteRenderingBackend::cacheNativeImage(this);
      if (v146)
      {
        if (v140 == 1)
        {
          v69 = v139;
          v139 = 0;
          if (v69)
          {
            CFRelease(v69);
          }
        }

        WTF::MachSendRight::~MachSendRight(buf);
      }

      goto LABEL_17;
    case 0x629:
      v72 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
      if ((v73 & 1) == 0)
      {
        goto LABEL_201;
      }

      v74 = v72;
      v75 = IPC::Decoder::decode<WebCore::RenderingMode>(a3);
      if ((v75 & 0x100) == 0)
      {
        goto LABEL_202;
      }

      v76 = v75;
      v77 = IPC::Decoder::decode<WebCore::RenderingPurpose>(a3);
      if ((v77 & 0x100) == 0)
      {
        goto LABEL_202;
      }

      v78 = *(a3 + 1);
      v79 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v80 = v79 - *a3;
      v19 = v78 >= v80;
      v81 = v78 - v80;
      if (!v19 || v81 <= 3)
      {
        IPC::Decoder::markInvalid(a3);
LABEL_201:
        IPC::Decoder::markInvalid(a3);
        goto LABEL_202;
      }

      *(a3 + 2) = v79 + 1;
      if (!v79)
      {
        goto LABEL_201;
      }

      v83 = v77;
      v84 = *v79;
      IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a3, v122);
      if ((v122[8] & 1) == 0)
      {
        goto LABEL_201;
      }

      v85 = IPC::Decoder::decode<WebCore::ImageBufferFormat>(a3);
      v86 = v85;
      if ((v85 & 0x10000) == 0)
      {
        goto LABEL_200;
      }

      v87 = *(a3 + 1);
      v88 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v89 = *a3;
      v90 = v88 - *a3;
      v19 = v87 >= v90;
      v91 = v87 - v90;
      if (!v19 || v91 <= 7)
      {
        IPC::Decoder::markInvalid(a3);
LABEL_198:
        IPC::Decoder::markInvalid(a3);
        if (*a3)
        {
LABEL_178:
          __break(1u);
LABEL_179:
          v113 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
          if (v114)
          {
            WebKit::RemoteRenderingBackend::createRemoteTextDetector(this, v113);
          }

          goto LABEL_17;
        }

        goto LABEL_199;
      }

      *(a3 + 2) = v88 + 1;
      if (!v88)
      {
        goto LABEL_198;
      }

      if (!v89 || (v5 = *v88, (*v88 - 1) >= 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_199:
        IPC::Decoder::markInvalid(a3);
        goto LABEL_200;
      }

      v92 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v93)
      {
        v6 = v92;
        *buf = v74;
        buf[8] = v76;
        buf[9] = v83;
        *&buf[12] = v84;
        v94 = *v122;
        *v122 = 0;
        *&buf[16] = v94;
        LOWORD(v139) = v86;
        v140 = v5;
        v141 = v92;
        v95 = 1;
        goto LABEL_111;
      }

LABEL_200:
      v95 = 0;
      buf[0] = 0;
LABEL_111:
      LOBYTE(v142) = v95;
      if (*v122)
      {
        CFRelease(*v122);
        if ((v95 & 1) == 0)
        {
          goto LABEL_202;
        }
      }

      else if ((v95 & 1) == 0)
      {
        goto LABEL_202;
      }

      WebKit::RemoteRenderingBackend::createImageBuffer(this, buf, v76, v83, &buf[16], v86, v5, v6, v84);
      if (v142)
      {
        v56 = *&buf[16];
        *&buf[16] = 0;
        if (v56)
        {
LABEL_115:
          CFRelease(v56);
        }
      }

LABEL_17:
      if (atomic_fetch_add(this + 4, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this + 4);
        (*(*(this + 1) + 8))(this + 8);
      }

      return;
    case 0x62A:
      v41 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v42 & 1) == 0)
      {
        goto LABEL_202;
      }

      v43 = v41;
      v44 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v45 & 1) == 0)
      {
        goto LABEL_202;
      }

      WebKit::RemoteRenderingBackend::createImageBufferSet(this, v43, v44);
      goto LABEL_17;
    case 0x62B:
      if ((v9 & 0x1000000000000000) != 0)
      {
        IPC::handleMessage<Messages::RemoteRenderingBackend::CreateRemoteBarcodeDetector,IPC::StreamServerConnection,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ShapeDetection::BarcodeDetectorOptions const&)>(a3, this);
        goto LABEL_17;
      }

      v104 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_202;
      }

      *buf = 136315138;
      *&buf[4] = "RemoteRenderingBackend_CreateRemoteBarcodeDetector";
      v105 = "Message %s received by a disabled message endpoint";
      goto LABEL_148;
    case 0x62C:
      if ((v9 & 0x1000000000000000) != 0)
      {
        IPC::handleMessage<Messages::RemoteRenderingBackend::CreateRemoteFaceDetector,IPC::StreamServerConnection,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ShapeDetection::FaceDetectorOptions const&)>(a3, this);
        goto LABEL_17;
      }

      v104 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_202;
      }

      *buf = 136315138;
      *&buf[4] = "RemoteRenderingBackend_CreateRemoteFaceDetector";
      v105 = "Message %s received by a disabled message endpoint";
      goto LABEL_148;
    case 0x62D:
      if ((v9 & 0x1000000000000000) != 0)
      {
        goto LABEL_179;
      }

      v104 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_202;
      }

      *buf = 136315138;
      *&buf[4] = "RemoteRenderingBackend_CreateRemoteTextDetector";
      v105 = "Message %s received by a disabled message endpoint";
      goto LABEL_148;
    case 0x62E:
      WebKit::RemoteRenderingBackend::destroyGetPixelBufferSharedMemory(this);
      goto LABEL_17;
    case 0x62F:
      IPC::handleMessage<Messages::RemoteRenderingBackend::DidDrawRemoteToPDF,IPC::StreamServerConnection,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::SnapshotIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)>(a3, this);
      goto LABEL_17;
    case 0x630:
      updated = IPC::Decoder::decode<std::tuple<WebKit::MonotonicObjectIdentifier<WebKit::RenderingUpdateIDType>>>(a3);
      if (v37)
      {
        WebKit::RemoteRenderingBackend::finalizeRenderingUpdate(this, updated);
      }

      goto LABEL_17;
    case 0x631:
      IPC::handleMessageAsync<Messages::RemoteRenderingBackend::GetImageBufferResourceLimitsForTesting,IPC::StreamServerConnection,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WTF::CompletionHandler<void ()(WebCore::ImageBufferResourceLimits)> &&)>(a2, a3, this);
      goto LABEL_17;
    case 0x632:
      if ((v9 & 0x1000000000000000) != 0)
      {
        IPC::handleMessageAsync<Messages::RemoteRenderingBackend::GetRemoteBarcodeDetectorSupportedFormats,IPC::StreamServerConnection,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(a2, a3, this);
        goto LABEL_17;
      }

      v104 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_202;
      }

      *buf = 136315138;
      *&buf[4] = "RemoteRenderingBackend_GetRemoteBarcodeDetectorSupportedFormats";
      v105 = "Message %s received by a disabled message endpoint";
      goto LABEL_148;
    case 0x633:
      IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,BOOL>,void>::decode<IPC::Decoder>(buf, a3);
      if ((v140 & 1) == 0)
      {
        goto LABEL_202;
      }

      WebKit::RemoteRenderingBackend::markSurfacesVolatile(this, *buf, &buf[8], v139);
      if (v140)
      {
        v97 = *&buf[8];
        if (*&buf[8])
        {
          *&buf[8] = 0;
          *&buf[16] = 0;
          WTF::fastFree(v97, v96);
        }
      }

      goto LABEL_17;
    case 0x634:
      IPC::handleMessage<Messages::RemoteRenderingBackend::MoveToImageBuffer,IPC::StreamServerConnection,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)>(a3, this);
      goto LABEL_17;
    case 0x635:
      IPC::handleMessage<Messages::RemoteRenderingBackend::MoveToSerializedBuffer,IPC::StreamServerConnection,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)>(a3, this);
      goto LABEL_17;
    case 0x636:
      IPC::ArgumentCoder<std::tuple<WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(buf, a3);
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_202;
      }

      *v122 = *buf;
      v38 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;
      *&v122[8] = v38;
      WebKit::RemoteRenderingBackend::prepareImageBufferSetsForDisplay(this, v122);
      WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v122, v39);
      WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v40);
      goto LABEL_17;
    case 0x637:
      v22 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v23)
      {
        WebKit::RemoteRenderingBackend::releaseDecomposedGlyphs(this, v22);
      }

      goto LABEL_17;
    case 0x638:
      v100 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v101)
      {
        WebKit::RemoteRenderingBackend::releaseFilter(this, v100);
      }

      goto LABEL_17;
    case 0x639:
      v57 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v58)
      {
        WebKit::RemoteRenderingBackend::releaseFont(this, v57);
      }

      goto LABEL_17;
    case 0x63A:
      v102 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v103)
      {
        WebKit::RemoteRenderingBackend::releaseFontCustomPlatformData(this, v102);
      }

      goto LABEL_17;
    case 0x63B:
      v34 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v35)
      {
        WebKit::RemoteRenderingBackend::releaseGradient(this, v34);
      }

      goto LABEL_17;
    case 0x63C:
      v98 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v99)
      {
        WebKit::RemoteRenderingBackend::releaseImageBuffer(this, v98);
      }

      goto LABEL_17;
    case 0x63D:
      v46 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v47 & 1) == 0)
      {
        goto LABEL_202;
      }

      WebKit::RemoteRenderingBackend::releaseImageBufferSet(this, v46);
      goto LABEL_17;
    case 0x63E:
      WebKit::RemoteRenderingBackend::releaseMemory(this, a2);
      goto LABEL_17;
    case 0x63F:
      v70 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v71)
      {
        WebKit::RemoteRenderingBackend::releaseNativeImage(this, v70);
      }

      goto LABEL_17;
    case 0x640:
      WebKit::RemoteRenderingBackend::releaseNativeImages(this, a2);
      goto LABEL_17;
    case 0x641:
      if ((v9 & 0x1000000000000000) != 0)
      {
        v109 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v110)
        {
          WebKit::RemoteRenderingBackend::releaseRemoteBarcodeDetector(this, v109);
        }

        goto LABEL_17;
      }

      v104 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_202;
      }

      *buf = 136315138;
      *&buf[4] = "RemoteRenderingBackend_ReleaseRemoteBarcodeDetector";
      v105 = "Message %s received by a disabled message endpoint";
      goto LABEL_148;
    case 0x642:
      if ((v9 & 0x1000000000000000) != 0)
      {
        v111 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v112)
        {
          WebKit::RemoteRenderingBackend::releaseRemoteFaceDetector(this, v111);
        }

        goto LABEL_17;
      }

      v104 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_202;
      }

      *buf = 136315138;
      *&buf[4] = "RemoteRenderingBackend_ReleaseRemoteFaceDetector";
      v105 = "Message %s received by a disabled message endpoint";
      goto LABEL_148;
    case 0x643:
      if ((v9 & 0x1000000000000000) != 0)
      {
        v116 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v117)
        {
          WebKit::RemoteRenderingBackend::releaseRemoteTextDetector(this, v116);
        }

        goto LABEL_17;
      }

      v104 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_202;
      }

      *buf = 136315138;
      *&buf[4] = "RemoteRenderingBackend_ReleaseRemoteTextDetector";
      v105 = "Message %s received by a disabled message endpoint";
LABEL_148:
      v106 = v104;
      v107 = 12;
      goto LABEL_149;
    default:
      if (v10 == 4123)
      {
        IPC::handleMessageSynchronous<Messages::RemoteRenderingBackend::PrepareImageBufferSetsForDisplaySync,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::SwapBuffersDisplayRequirement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(a2, a3, this);
      }

      else
      {
        v118 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v10 >= 0x107F)
          {
            v119 = 4223;
          }

          else
          {
            v119 = v10;
          }

          v120 = (&IPC::Detail::messageDescriptions)[3 * v119];
          v121 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v120;
          *&buf[12] = 2048;
          *&buf[14] = v121;
          v105 = "Unhandled stream message %s to %llu";
          v106 = v118;
          v107 = 22;
LABEL_149:
          _os_log_error_impl(&dword_19D52D000, v106, OS_LOG_TYPE_ERROR, v105, buf, v107);
        }

LABEL_202:
        IPC::Decoder::markInvalid(a3);
      }

      goto LABEL_17;
  }
}

uint64_t IPC::handleMessageAsync<Messages::RemoteRenderingBackend::GetImageBufferResourceLimitsForTesting,IPC::StreamServerConnection,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WTF::CompletionHandler<void ()(WebCore::ImageBufferResourceLimits)> &&)>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v6)
  {
    v7 = result;
    atomic_fetch_add((a1 + 8), 1u);
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F10F2970;
    v8[1] = v7;
    v8[2] = a1;
    v9 = v8;
    WebKit::RemoteRenderingBackend::getImageBufferResourceLimitsForTesting(a3, &v9);
    result = v9;
    v9 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void IPC::handleMessage<Messages::RemoteRenderingBackend::CacheFontCustomPlatformData,IPC::StreamServerConnection,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WebCore::FontCustomPlatformSerializedData &&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FontCustomPlatformSerializedData,void>::decode(a1, &v10);
  if (v11)
  {
    goto LABEL_2;
  }

  v5 = *a1;
  v6 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v7 = *(a1 + 3);
  if (!v7)
  {
    v6 = 0;
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  (*(*v7 + 16))(v7, v5);
  if (v11)
  {
LABEL_2:
    *v9 = v10;
    WebKit::RemoteRenderingBackend::cacheFontCustomPlatformData(a2);
    if (v9[1] && atomic_fetch_add_explicit(v9[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9[1], v4);
    }

    if (v9[0])
    {
      if (atomic_fetch_add(v9[0] + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9[0] + 2);
        (*(*v9[0] + 8))(v9[0]);
      }
    }

    return;
  }

  v8 = *a1;
  v6 = *(a1 + 1);
  v7 = *(a1 + 3);
LABEL_12:
  *a1 = 0;
  *(a1 + 1) = 0;
  if (v7 && v6)
  {
    (*(*v7 + 16))(v7, v8);
  }
}

atomic_uchar ***IPC::handleMessage<Messages::RemoteRenderingBackend::CacheFilter,IPC::StreamServerConnection,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>> &&)>(IPC::Decoder *a1, unint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>>(a1, &v5);
  if (v6 == 1)
  {
    result = WebKit::RemoteRenderingBackend::cacheFilter(a2, &v5);
    if (v6)
    {
      return WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v5, v4);
    }
  }

  return result;
}

void IPC::handleMessage<Messages::RemoteRenderingBackend::MoveToSerializedBuffer,IPC::StreamServerConnection,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)>(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = v5 - *a1;
  v12 = v4 >= v7;
  v8 = v4 - v7;
  if (!v12 || v8 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v15 = a1[3];
    if (v15)
    {
      goto LABEL_32;
    }

    v4 = 0;
    while (1)
    {
LABEL_17:
      *a1 = 0;
      a1[1] = 0;
      v16 = a1[3];
      if (!v16)
      {
        v4 = 0;
LABEL_19:
        v6 = 0;
        goto LABEL_20;
      }

      if (!v4)
      {
        goto LABEL_19;
      }

      v15 = (*(*v16 + 16))(v16);
      v6 = *a1;
      if (!*a1)
      {
        break;
      }

      __break(1u);
LABEL_32:
      if (v4)
      {
        (*(*v15 + 16))(v15);
        v4 = a1[1];
      }
    }

    v4 = a1[1];
    goto LABEL_20;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
    goto LABEL_17;
  }

  v10 = *v5;
  v11 = *v5 - 1;
  if (v6)
  {
    v12 = v11 >= 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
LABEL_20:
    *a1 = 0;
    a1[1] = 0;
    v17 = a1[3];
    if (v17 && v4)
    {
      (*(*v17 + 16))(v17, v6);
    }

    goto LABEL_21;
  }

  v13 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v14 & 1) == 0)
  {
LABEL_21:
    v18 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v19 = a1[3];
    if (v19 && v18)
    {
      v20 = *(*v19 + 16);

      v20();
    }

    return;
  }

  WebKit::RemoteRenderingBackend::moveToSerializedBuffer(a2, v10, v13);
}

void IPC::handleMessage<Messages::RemoteRenderingBackend::MoveToImageBuffer,IPC::StreamServerConnection,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

  v6 = a1[1];
  v7 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *a1;
  v9 = v7 - *a1;
  v10 = v6 >= v9;
  v11 = v6 - v9;
  if (!v10 || v11 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v17 = a1[3];
    if (v17)
    {
      goto LABEL_34;
    }

    v6 = 0;
    while (1)
    {
LABEL_16:
      *a1 = 0;
      a1[1] = 0;
      v18 = a1[3];
      if (!v18)
      {
        v6 = 0;
LABEL_18:
        v8 = 0;
        goto LABEL_19;
      }

      if (!v6)
      {
        goto LABEL_18;
      }

      v17 = (*(*v18 + 16))(v18);
      if (!*a1)
      {
        break;
      }

      __break(1u);
LABEL_34:
      if (v6)
      {
        (*(*v17 + 16))(v17);
        v6 = a1[1];
      }
    }

    v8 = 0;
    v6 = a1[1];
    goto LABEL_19;
  }

  a1[2] = (v7 + 1);
  if (!v7)
  {
    goto LABEL_16;
  }

  if (!v8 || (v13 = *v7, (*v7 - 1) >= 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_19:
    *a1 = 0;
    a1[1] = 0;
    v19 = a1[3];
    if (v19 && v6)
    {
      (*(*v19 + 16))(v19, v8);
    }

    goto LABEL_20;
  }

  v14 = v4;
  v15 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v16 & 1) == 0)
  {
LABEL_20:
    v20 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v21 = a1[3];
    if (v21)
    {
      v22 = v20 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = *(*v21 + 16);

      v23();
    }

    return;
  }

  WebKit::RemoteRenderingBackend::moveToImageBuffer(a2, v14, v13, v15);
}

unsigned int *IPC::handleMessage<Messages::RemoteRenderingBackend::DidDrawRemoteToPDF,IPC::StreamServerConnection,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::SnapshotIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

  v6 = *(a1 + 1);
  v7 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *a1;
  v9 = v7 - *a1;
  v10 = v6 >= v9;
  v11 = v6 - v9;
  if (!v10 || v11 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v18 = *(a1 + 3);
    if (v18)
    {
      goto LABEL_34;
    }

    v6 = 0;
    while (1)
    {
LABEL_16:
      *a1 = 0;
      *(a1 + 1) = 0;
      v19 = *(a1 + 3);
      if (!v19)
      {
        v6 = 0;
LABEL_18:
        v8 = 0;
        goto LABEL_19;
      }

      if (!v6)
      {
        goto LABEL_18;
      }

      v18 = (*(*v19 + 16))(v19);
      if (!*a1)
      {
        break;
      }

      __break(1u);
LABEL_34:
      if (v6)
      {
        (*(*v18 + 16))(v18);
        v6 = *(a1 + 1);
      }
    }

    v8 = 0;
    v6 = *(a1 + 1);
    goto LABEL_19;
  }

  *(a1 + 2) = v7 + 1;
  if (!v7)
  {
    goto LABEL_16;
  }

  if (!v8 || (v13 = *v7, (*v7 - 1) >= 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_19:
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = *(a1 + 3);
    if (v20 && v6)
    {
      (*(*v20 + 16))(v20, v8);
    }

    goto LABEL_20;
  }

  v14 = v4;
  v15 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v16 & 1) == 0)
  {
LABEL_20:
    v21 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v22 = v21 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = *(*result + 16);

      return v23();
    }

    return result;
  }

  return WebKit::RemoteRenderingBackend::didDrawRemoteToPDF(a2, v14, v13, v15);
}

WTF *IPC::handleMessage<Messages::RemoteRenderingBackend::CreateRemoteBarcodeDetector,IPC::StreamServerConnection,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ShapeDetection::BarcodeDetectorOptions const&)>(uint64_t *a1, void *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5)
  {
    v6 = v4;
    IPC::ArgumentCoder<WebCore::ShapeDetection::BarcodeDetectorOptions,void>::decode(a1, v18);
    if (v19)
    {
      v15 = v18[0];
      v16 = v18[1];
      v17 = 1;
      result = WebKit::RemoteRenderingBackend::createRemoteBarcodeDetector(a2, v6, &v15);
      if (v17)
      {
        result = v15;
        if (v15)
        {
          v15 = 0;
          LODWORD(v16) = 0;
          return WTF::fastFree(result, v8);
        }
      }

      return result;
    }

    v9 = *a1;
    v10 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v11 = a1[3];
    if (v11 && v10)
    {
      (*(*v11 + 16))(v11, v9);
    }
  }

  v12 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (result)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::RemoteRenderingBackend::GetRemoteBarcodeDetectorSupportedFormats,IPC::StreamServerConnection,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v6)
  {
    v7 = result;
    atomic_fetch_add((a1 + 8), 1u);
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F10F2998;
    v8[1] = v7;
    v8[2] = a1;
    v9 = v8;
    WebKit::RemoteRenderingBackend::getRemoteBarcodeDetectorSupportedFormats(a3, &v9);
    result = v9;
    v9 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::RemoteRenderingBackend::CreateRemoteFaceDetector,IPC::StreamServerConnection,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ShapeDetection::FaceDetectorOptions const&)>(uint64_t *a1, void *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5)
  {
    v6 = v4;
    if ((IPC::ArgumentCoder<WebCore::ShapeDetection::FaceDetectorOptions,void>::decode(a1) & 0x100000000) != 0)
    {
      return WebKit::RemoteRenderingBackend::createRemoteFaceDetector(a2, v6);
    }

    v8 = *a1;
    v9 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v10 = a1[3];
    if (v10 && v9)
    {
      (*(*v10 + 16))(v10, v8);
    }
  }

  v11 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (result)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = *(*result + 16);

    return v13();
  }

  return result;
}

uint64_t IPC::handleMessageSynchronous<Messages::RemoteRenderingBackend::PrepareImageBufferSetsForDisplaySync,WebKit::RemoteRenderingBackend,WebKit::RemoteRenderingBackend,void ()(WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::SwapBuffersDisplayRequirement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = *(a2 + 8);
    if (v7)
    {
      atomic_fetch_add((a1 + 8), 1u);
      v8 = WTF::fastMalloc(0x18);
      *v8 = &unk_1F10F29C0;
      v8[1] = v7;
      v8[2] = a1;
      v9 = v14;
      v13 = v8;
      v14 = 0;
      v17[0] = v9;
      v10 = v15;
      v15 = 0;
      v17[1] = v10;
      WebKit::RemoteRenderingBackend::prepareImageBufferSetsForDisplaySync(a3, v17, &v13);
      WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17, v11);
      result = v13;
      v13 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      if (v16)
      {
        return WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v14, v12);
      }
    }

    else
    {
      result = 157;
      __break(0xC471u);
    }
  }

  return result;
}

unint64_t WebKit::RemoteRenderingBackendProxy::didReceiveMessage(WebKit::RemoteRenderingBackendProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  ++*(this + 5);
  v5 = *(a3 + 25);
  if (v5 == 1568)
  {
    result = IPC::Decoder::decode<std::tuple<WebKit::MonotonicObjectIdentifier<WebKit::RenderingUpdateIDType>>>(a3);
    if (v7)
    {
      v8 = *(this + 36);
      if (v8 >= result)
      {
        v8 = result;
      }

      *(this + 37) = v8;
    }

    goto LABEL_6;
  }

  if (v5 != 1570)
  {
    if (v5 == 1569)
    {
      result = IPC::handleMessage<Messages::RemoteRenderingBackendProxy::DidInitialize,IPC::Connection,WebKit::RemoteRenderingBackendProxy,WebKit::RemoteRenderingBackendProxy,void ()(IPC::Semaphore &&,IPC::Semaphore &)>(a3, this);
      goto LABEL_6;
    }

    result = WebKit::RemoteRenderingBackendProxy::dispatchMessage(this, a2, a3);
    if (result)
    {
      goto LABEL_6;
    }

    v9 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a3 + 25);
      if (v10 >= 0x107F)
      {
        v10 = 4223;
      }

      v11 = (&IPC::Detail::messageDescriptions)[3 * v10];
      v12 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = v12;
      _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    goto LABEL_20;
  }

  IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,BOOL>,void>::decode<IPC::Decoder>(buf, a3);
  if ((v17 & 1) == 0)
  {
LABEL_20:
    result = IPC::Decoder::markInvalid(a3);
    goto LABEL_6;
  }

  v14 = *&buf[8];
  WebKit::RemoteRenderingBackendProxy::didMarkLayersAsVolatile(this, *buf, &v14, v16);
  result = v14;
  if (v14)
  {
    *&v14 = 0;
    DWORD2(v14) = 0;
    result = WTF::fastFree(result, v13);
  }

LABEL_6:
  if (*(this + 5) == 1)
  {
    return (*(*this + 24))(this);
  }

  --*(this + 5);
  return result;
}

_BYTE *IPC::handleMessage<Messages::RemoteRenderingBackendProxy::DidInitialize,IPC::Connection,WebKit::RemoteRenderingBackendProxy,WebKit::RemoteRenderingBackendProxy,void ()(IPC::Semaphore &&,IPC::Semaphore &)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<std::tuple<IPC::Semaphore,IPC::Semaphore>>(a1, v4);
  if (v5[8] == 1)
  {
    WebKit::RemoteRenderingBackendProxy::didInitialize(a2, v4, v5);
  }

  return std::optional<std::tuple<IPC::Semaphore,IPC::Semaphore>>::~optional(v4);
}

uint64_t WebKit::RemoteRenderingBackendProxy::didReceiveSyncMessage(_DWORD *a1, uint64_t a2, uint64_t *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  ++a1[5];
  v5 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a3 + 25);
    if (v10 >= 0x107F)
    {
      v10 = 4223;
    }

    v11 = (&IPC::Detail::messageDescriptions)[3 * v10];
    v12 = a3[7];
    v13 = 136315394;
    v14 = v11;
    v15 = 2048;
    v16 = v12;
    _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", &v13, 0x16u);
  }

  v6 = *a3;
  v7 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v8 = a3[3];
  if (v8 && v7)
  {
    (*(*v8 + 16))(v8, v6);
  }

  if (a1[5] == 1)
  {
    (*(*a1 + 24))(a1, v6, v7);
  }

  else
  {
    --a1[5];
  }

  return 0;
}

atomic_uchar **WebKit::RemoteSampleBufferDisplayLayerManager::didReceiveMessage(WebKit::RemoteSampleBufferDisplayLayerManager *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  if ((*(this + 52) & 2) != 0)
  {
    v10 = (this + 8);
    while (1)
    {
      v11 = *v10;
      if ((*v10 & 1) == 0)
      {
        break;
      }

      v12 = *v10;
      atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v12 == v11)
      {
        goto LABEL_11;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_11:
    v13 = *(a3 + 25);
    if (v13 == 1605)
    {
      v33 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v34 & 1) == 0)
      {
        goto LABEL_33;
      }

      WebKit::RemoteSampleBufferDisplayLayerManager::releaseLayer(this, v33);
    }

    else
    {
      if (v13 == 1604)
      {
        v14 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v15)
        {
          v16 = *(a3 + 1);
          v17 = *(a3 + 2);
          v18 = *a3;
          if (v16 <= &v17[-*a3])
          {
            goto LABEL_47;
          }

          *(a3 + 2) = v17 + 1;
          if (!v17)
          {
            goto LABEL_49;
          }

          v19 = *v17;
          if (v19 >= 2)
          {
            goto LABEL_57;
          }

          v20 = v14;
          v21 = IPC::Decoder::decode<WebCore::IntSize>(a3);
          if (v22)
          {
            v16 = *(a3 + 1);
            v23 = *(a3 + 2);
            v18 = *a3;
            if (v16 > &v23[-*a3])
            {
              v24 = v23 + 1;
              *(a3 + 2) = v23 + 1;
              if (v23)
              {
                v25 = *v23;
                if (v25 < 2)
                {
                  if (v16 <= &v24[-v18])
                  {
                    v47 = 0;
                    v48 = 0;
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v49 = *(a3 + 3);
                    if (v49)
                    {
                      (*(*v49 + 16))(v49);
                      v48 = *a3;
                      v47 = *(a3 + 1);
                    }
                  }

                  else
                  {
                    *(a3 + 2) = v23 + 2;
                    if (v23 != -1)
                    {
                      v26 = *v24;
                      if (v26 < 2)
                      {
                        v27 = v21;
                        v28 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
                        if (v29)
                        {
                          v30 = v28;
                          while (1)
                          {
                            v31 = *a2;
                            if ((*a2 & 1) == 0)
                            {
                              break;
                            }

                            v32 = *a2;
                            atomic_compare_exchange_strong_explicit(a2, &v32, v31 + 2, memory_order_relaxed, memory_order_relaxed);
                            if (v32 == v31)
                            {
                              goto LABEL_37;
                            }
                          }

                          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_37:
                          v38 = WTF::fastMalloc(0x18);
                          *v38 = &unk_1F10F29E8;
                          v38[1] = v30;
                          v38[2] = a2;
                          *v52 = v38;
                          WebKit::RemoteSampleBufferDisplayLayerManager::createLayer(this, v20, v19 & 1, v27, v25 & 1, v26 & 1, v52);
                          v39 = *v52;
                          *v52 = 0;
                          if (v39)
                          {
                            (*(*v39 + 8))(v39);
                          }
                        }

                        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v10, v29);
                      }

                      goto LABEL_57;
                    }

                    v47 = v16;
                    v48 = v18;
                  }

                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v50 = *(a3 + 3);
                  if (v50 && v47)
                  {
                    (*(*v50 + 16))(v50, v48, v47);
                    goto LABEL_65;
                  }

                  goto LABEL_55;
                }

LABEL_57:
                *a3 = 0;
                *(a3 + 1) = 0;
                v51 = *(a3 + 3);
                if (v51 && v16)
                {
                  (*(*v51 + 16))(v51, v18);
                }

                goto LABEL_33;
              }

LABEL_49:
              *a3 = 0;
              *(a3 + 1) = 0;
              v46 = *(a3 + 3);
              if (v46)
              {
                if (v16)
                {
                  (*(*v46 + 16))(v46);
LABEL_65:
                  v18 = *a3;
                  v16 = *(a3 + 1);
                  goto LABEL_57;
                }

                goto LABEL_56;
              }

LABEL_55:
              v16 = 0;
LABEL_56:
              v18 = 0;
              goto LABEL_57;
            }

LABEL_47:
            *a3 = 0;
            *(a3 + 1) = 0;
            v45 = *(a3 + 3);
            if (v45)
            {
              if (v16)
              {
                (*(*v45 + 16))(v45);
                v16 = *(a3 + 1);
              }
            }

            else
            {
              v16 = 0;
            }

            goto LABEL_49;
          }
        }

LABEL_33:
        v29 = *a3;
        v36 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v37 = *(a3 + 3);
        if (v37 && v36)
        {
          (*(*v37 + 16))(v37, v29);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v10, v29);
      }

      if (!WebKit::RemoteSampleBufferDisplayLayerManager::dispatchMessage(this, a2, a3))
      {
        v35 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          v42 = *(a3 + 25);
          if (v42 >= 0x107F)
          {
            v42 = 4223;
          }

          v43 = (&IPC::Detail::messageDescriptions)[3 * v42];
          v44 = *(a3 + 7);
          *v52 = 136315394;
          *&v52[4] = v43;
          v53 = 2048;
          v54 = v44;
          _os_log_error_impl(&dword_19D52D000, v35, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", v52, 0x16u);
        }

        goto LABEL_33;
      }
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v10, v29);
  }

  v4 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v40 = *(a3 + 25);
    if (v40 >= 0x107F)
    {
      v40 = 4223;
    }

    v41 = (&IPC::Detail::messageDescriptions)[3 * v40];
    *v52 = 136315138;
    *&v52[4] = v41;
    _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteSampleBufferDisplayLayerManager", v52, 0xCu);
  }

  v5 = *a3;
  v6 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = *(a3 + 3);
  if (result)
  {
    if (v6)
    {
      return (*(*result + 2))(result, v5);
    }
  }

  return result;
}

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 1))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this);
  }

  v4 = *(this + 1) - 1;
  *(this + 1) = v4;
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = *(this + 3);
    ++*(this + 2);
    *(this + 3) = 0;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(this, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v10 = v4;
    v11 = result;
    WTF::Lock::unlockSlow(this);
    result = v11;
    if (v10)
    {
      return result;
    }
  }

  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v7 = 0;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(this, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    result = MEMORY[0x19EB01E30](this);
    v8 = 1;
  }

  v9 = *(this + 2) - 1;
  *(this + 2) = v9;
  atomic_compare_exchange_strong_explicit(this, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 == 1)
  {
    if (v9)
    {
      return result;
    }
  }

  else
  {
    v12 = v9;
    result = WTF::Lock::unlockSlow(this);
    if (v12)
    {
      return result;
    }
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaSourceProxy15AddSourceBufferEN6WebKit22RemoteMediaSourceProxyES8_FvRKN7WebCore11ContentTypeERKNS9_24MediaSourceConfigurationEONS_17CompletionHandlerIFvNS9_27MediaSourcePrivateAddStatusENSt3__18optionalINS_23ObjectIdentifierGenericINS7_32RemoteSourceBufferIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_SP_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2948;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaSourceProxy15AddSourceBufferEN6WebKit22RemoteMediaSourceProxyES8_FvRKN7WebCore11ContentTypeERKNS9_24MediaSourceConfigurationEONS_17CompletionHandlerIFvNS9_27MediaSourcePrivateAddStatusENSt3__18optionalINS_23ObjectIdentifierGenericINS7_32RemoteSourceBufferIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_SP_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2948;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteMediaSourceProxy15AddSourceBufferEN6WebKit22RemoteMediaSourceProxyES8_FvRKN7WebCore11ContentTypeERKNS9_24MediaSourceConfigurationEONS_17CompletionHandlerIFvNS9_27MediaSourcePrivateAddStatusENSt3__18optionalINS_23ObjectIdentifierGenericINS7_32RemoteSourceBufferIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_SP_EE4callESH_SP_(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v7 = (a1 + 8);
  v8 = *(a1 + 8);
  v10 = a2;
  IPC::Encoder::operator<<<unsigned char>(v8, &v10);
  if (a4)
  {
    v11 = 1;
    IPC::Encoder::operator<<<BOOL>(v8, &v11);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a3);
  }

  else
  {
    v12 = 0;
    IPC::Encoder::operator<<<BOOL>(v8, &v12);
  }

  return IPC::Connection::sendMessageImpl(*(a1 + 16), v7, 0, 0);
}

uint64_t IPC::Decoder::decode<std::tuple<WebKit::RemoteObjectInvocation>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WebKit::RemoteObjectInvocation>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 24) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebKit::RemoteObjectInvocation>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebKit::RemoteObjectInvocation>(&v7, a2);
  if (v9)
  {
    v3 = v7;
    v7 = 0uLL;
    *a1 = v3;
    v4 = v8;
    v8 = 0;
    *(a1 + 16) = v4;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a1 = 0;
  }

  *(a1 + 24) = v5;
  return std::optional<WebKit::RemoteObjectInvocation>::~optional(&v7);
}

void IPC::Decoder::decode<WebKit::RemoteObjectInvocation>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebKit::RemoteObjectInvocation,void>::decode(a2, a1);
  if ((*(a1 + 24) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

uint64_t std::optional<WebKit::RemoteObjectInvocation>::~optional(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    std::unique_ptr<WebKit::RemoteObjectInvocation::ReplyInfo>::reset[abi:sn200100]((a1 + 16), 0);
    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v3)
    {
      CFRelease(*(v3 + 8));
    }

    v4 = *a1;
    *a1 = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v2);
    }
  }

  return a1;
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteRemoteCommandListener,(WTF::DestructionThread)0>::deref(atomic_ullong *result, void *a2)
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
        WebKit::RemoteRemoteCommandListener::~RemoteRemoteCommandListener((result - 10), a2);

        return WTF::fastFree(v4, v5);
      }

      return result;
    }
  }

  v6 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::RemoteRemoteCommandListener,(WTF::DestructionThread)0>(v6, a2);
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::RemoteRemoteCommandListener,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
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
    WebKit::RemoteRemoteCommandListener::~RemoteRemoteCommandListener(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteRenderingBackend38GetImageBufferResourceLimitsForTestingENS2_22StreamServerConnectionEN6WebKit22RemoteRenderingBackendES9_FvONS_17CompletionHandlerIFvN7WebCore25ImageBufferResourceLimitsEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F2970;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteRenderingBackend38GetImageBufferResourceLimitsForTestingENS2_22StreamServerConnectionEN6WebKit22RemoteRenderingBackendES9_FvONS_17CompletionHandlerIFvN7WebCore25ImageBufferResourceLimitsEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2970;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteRenderingBackend38GetImageBufferResourceLimitsForTestingENS2_22StreamServerConnectionEN6WebKit22RemoteRenderingBackendES9_FvONS_17CompletionHandlerIFvN7WebCore25ImageBufferResourceLimitsEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EE4callESC_(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(*(a1 + 16) + 40);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3528;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v3;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebCore::ImageBufferResourceLimits,void>::encode(v5, a2);
  IPC::Connection::sendMessageImpl(v4, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

unsigned int *IPC::Decoder::decode<std::tuple<WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a1 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

unsigned int *IPC::ArgumentCoder<std::tuple<WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *this)
{
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 - *this;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 7)
  {
    IPC::Decoder::markInvalid(this);
LABEL_36:
    IPC::Decoder::markInvalid(this);
    goto LABEL_31;
  }

  *(this + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_36;
  }

  v10 = *v5;
  v31[0] = 0;
  v31[1] = 0;
  if (v10 >= 0x6666)
  {
    while (1)
    {
      IPC::Decoder::decode<WebKit::ImageBufferSetPrepareBufferForDisplayInputData>(&v25, this);
      v20 = v30;
      if (v30 == 1)
      {
        v21 = HIDWORD(v31[1]);
        if (HIDWORD(v31[1]) == LODWORD(v31[1]))
        {
          WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::ImageBufferSetPrepareBufferForDisplayInputData>(v31, &v25);
        }

        else
        {
          v22 = v31[0] + 40 * HIDWORD(v31[1]);
          *v22 = v25;
          WebCore::Region::Region();
          v23 = v28;
          v22[34] = v29;
          *(v22 + 16) = v23;
          HIDWORD(v31[1]) = v21 + 1;
        }
      }

      if (v30 == 1)
      {
        WebCore::Region::~Region(&v26);
      }

      if ((v20 & 1) == 0)
      {
        goto LABEL_30;
      }

      if (!--v10)
      {
        WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v31, HIDWORD(v31[1]));
        v25 = v31[0];
        v24 = v31[1];
        v31[0] = 0;
        v31[1] = 0;
        goto LABEL_20;
      }
    }
  }

  if (v10)
  {
    LODWORD(v31[1]) = 40 * v10 / 0x28u;
    v31[0] = WTF::fastMalloc((40 * v10));
    while (1)
    {
      IPC::ArgumentCoder<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,void>::decode(this, &v25);
      if (v30 & 1) != 0 || (IPC::Decoder::markInvalid(this), (v30))
      {
        v11 = HIDWORD(v31[1]);
        if (HIDWORD(v31[1]) == LODWORD(v31[1]))
        {
          WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::ImageBufferSetPrepareBufferForDisplayInputData>(v31, &v25);
        }

        else
        {
          v12 = v31[0] + 40 * HIDWORD(v31[1]);
          *v12 = v25;
          WebCore::Region::Region();
          v14 = v28;
          v12[34] = v29;
          *(v12 + 16) = v14;
          HIDWORD(v31[1]) = v11 + 1;
        }

        v15 = 1;
      }

      else
      {
        v15 = 0;
      }

      if (v30 == 1)
      {
        WebCore::Region::~Region(&v26);
      }

      if ((v15 & 1) == 0)
      {
        break;
      }

      if (!--v10)
      {
        v16 = v31[0];
        *&v13 = v31[1];
        goto LABEL_19;
      }
    }

LABEL_30:
    WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v31, this);
LABEL_31:
    result = IPC::Decoder::markInvalid(this);
    *a1 = 0;
    *(a1 + 16) = 0;
    return result;
  }

  v16 = 0;
  v13 = 0uLL;
LABEL_19:
  v24 = v13;
  *&v13 = 0;
  *v31 = v13;
  v25 = v16;
LABEL_20:
  v27 = 1;
  WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v31, this);
  v17 = v25;
  v25 = 0;
  v26 = 0;
  *a1 = v17;
  *(a1 + 8) = v24;
  *(a1 + 16) = 1;
  return WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v18);
}

void IPC::Decoder::decode<WebKit::ImageBufferSetPrepareBufferForDisplayInputData>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,void>::decode(a2, a1);
  if ((*(a1 + 40) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

uint64_t WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::ImageBufferSetPrepareBufferForDisplayInputData>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 40 * *(a1 + 12);
  *v4 = *v3;
  result = WebCore::Region::Region();
  v6 = *(v3 + 32);
  *(v4 + 34) = *(v3 + 34);
  *(v4 + 32) = v6;
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 40 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
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

    WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
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

    WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA2279CLL);
    }

    v3 = *a1;
    v4 = *a1 + 40 * *(a1 + 12);
    v5 = 40 * a2;
    v6 = WTF::fastMalloc((40 * a2));
    *(a1 + 8) = v5 / 0x28;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::ImageBufferSetPrepareBufferForDisplayInputData>::move(v3, v4, v6);
    if (v3)
    {
      if (*a1 == v3)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }
  }
}

void WTF::VectorMover<false,WebKit::ImageBufferSetPrepareBufferForDisplayInputData>::move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a3 + 8;
    v5 = a1 + 8;
    do
    {
      *(v4 - 8) = *(v5 - 8);
      WebCore::Region::Region();
      v6 = *(v5 + 24);
      *(v4 + 26) = *(v5 + 26);
      *(v4 + 24) = v6;
      WebCore::Region::~Region(v5);
      v4 += 40;
      v7 = v5 + 32;
      v5 += 40;
    }

    while (v7 != a2);
  }
}

void WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t a1, unint64_t this)
{
  if (*(a1 + 8) > this)
  {
    v4 = *(a1 + 12);
    v5 = 5 * this;
    if (v4 > this)
    {
      v6 = 40 * v4 - 40 * this;
      v7 = (*a1 + 40 * this + 8);
      do
      {
        WebCore::Region::~Region(v7);
        v7 = (v8 + 40);
        v6 -= 40;
      }

      while (v6);
      *(a1 + 12) = this;
      LODWORD(v4) = this;
    }

    v9 = *a1;
    if (this)
    {
      if (this >= 0x6666667)
      {
        __break(0xC471u);
        return;
      }

      v10 = WTF::fastMalloc((8 * v5));
      *(a1 + 8) = 8 * v5 / 0x28u;
      *a1 = v10;
      if (v10 != v9)
      {
        WTF::VectorMover<false,WebKit::ImageBufferSetPrepareBufferForDisplayInputData>::move(v9, v9 + 40 * v4, v10);
      }
    }

    if (v9)
    {
      if (*a1 == v9)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v9, this);
    }
  }
}

unsigned int *WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(unsigned int *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v6 = 40 * v3;
    v7 = (*a1 + 8);
    do
    {
      WebCore::Region::~Region(v7);
      v7 = (v8 + 40);
      v6 -= 40;
    }

    while (v6);
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    a1[2] = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

_OWORD *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,BOOL>,void>::decode<IPC::Decoder>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<PAL::SessionID,void>::decode(a2);
  if ((v5 & 1) == 0)
  {
    goto LABEL_32;
  }

  v6 = *(a2 + 1);
  v7 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = v7 - *a2;
  v9 = v6 >= v8;
  v10 = v6 - v8;
  if (!v9 || v10 <= 7)
  {
    IPC::Decoder::markInvalid(a2);
LABEL_35:
    IPC::Decoder::markInvalid(a2);
LABEL_32:
    result = IPC::Decoder::markInvalid(a2);
    *a1 = 0;
    *(a1 + 32) = 0;
    return result;
  }

  *(a2 + 2) = v7 + 1;
  if (!v7)
  {
    goto LABEL_35;
  }

  v12 = result;
  v13 = *v7;
  v30 = 0;
  v31 = 0;
  if (v13 >= 0x10000)
  {
    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>>(&v28, a2);
      if (v29 != 1)
      {
        goto LABEL_30;
      }

      if (HIDWORD(v31) == v31)
      {
        WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>>(&v30, &v28);
      }

      else
      {
        *(v30 + HIDWORD(v31)) = v28;
        ++HIDWORD(v31);
      }

      if (!--v13)
      {
        result = WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v30, HIDWORD(v31));
        v18 = v30;
        v19 = v31;
        v17 = HIDWORD(v31);
        goto LABEL_18;
      }
    }
  }

  if (v13)
  {
    LODWORD(v31) = v13;
    v30 = WTF::fastMalloc((16 * v13));
    while (1)
    {
      result = IPC::ArgumentCoder<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,void>::decode<IPC::Decoder>(&v28, a2);
      if ((v29 & 1) == 0)
      {
        result = IPC::Decoder::markInvalid(a2);
        if ((v29 & 1) == 0)
        {
          break;
        }
      }

      v14 = HIDWORD(v31);
      if (HIDWORD(v31) == v31)
      {
        result = WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v30, HIDWORD(v31) + 1, &v28);
        v14 = HIDWORD(v31);
        v15 = v30;
        v16 = *result;
      }

      else
      {
        v15 = v30;
        v16 = v28;
      }

      *(v15 + v14) = v16;
      v17 = ++HIDWORD(v31);
      if (!--v13)
      {
        v18 = v30;
        v19 = v31;
        goto LABEL_18;
      }
    }

LABEL_30:
    v23 = v30;
    if (v30)
    {
      v30 = 0;
      LODWORD(v31) = 0;
      WTF::fastFree(v23, v22);
    }

    goto LABEL_32;
  }

  v17 = 0;
  v19 = 0;
  v18 = 0;
LABEL_18:
  v20 = *(a2 + 2);
  if (*(a2 + 1) <= &v20[-*a2])
  {
    v24 = v18;
    IPC::Decoder::markInvalid(a2);
    v18 = v24;
    goto LABEL_37;
  }

  *(a2 + 2) = v20 + 1;
  if (!v20)
  {
LABEL_37:
    v25 = v18;
    IPC::Decoder::markInvalid(a2);
    v18 = v25;
    goto LABEL_38;
  }

  v21 = *v20;
  if (v21 <= 1)
  {
    *a1 = v12;
    *(a1 + 8) = v18;
    *(a1 + 16) = v19;
    *(a1 + 20) = v17;
    *(a1 + 24) = v21;
    *(a1 + 32) = 1;
    return result;
  }

LABEL_38:
  v26 = v18;
  result = IPC::Decoder::markInvalid(a2);
  *a1 = 0;
  *(a1 + 32) = 0;
  if (v26)
  {
    return WTF::fastFree(v26, v27);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[16] & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = *(a2 + 2);
  if (*(a2 + 1) <= &v6[-*a2])
  {
    IPC::Decoder::markInvalid(a2);
    goto LABEL_8;
  }

  *(a2 + 2) = v6 + 1;
  if (!v6)
  {
LABEL_8:
    IPC::Decoder::markInvalid(a2);
    goto LABEL_9;
  }

  v7 = *v6;
  if (v7 >= 8)
  {
LABEL_9:
    result = IPC::Decoder::markInvalid(a2);
LABEL_10:
    v8 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = result;
  a1[8] = v7;
  v8 = 1;
LABEL_6:
  a1[16] = v8;
  return result;
}

__n128 WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  result = *v3;
  *(*a1 + 16 * (*(a1 + 12))++) = *v3;
  return result;
}

unint64_t WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 <= a3 && v5 + 16 * *(a1 + 12) > a3)
  {
    v10 = a3 - v5;
    v11 = *(a1 + 8);
    if (v11 + (v11 >> 1) <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11 + (v11 >> 1);
    }

    if (v12 <= a2)
    {
      v12 = a2;
    }

    if (v12 <= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v12;
    }

    WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
    return *a1 + v10;
  }

  else
  {
    v6 = *(a1 + 8);
    if (v6 + (v6 >> 1) <= v6 + 1)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 + (v6 >> 1);
    }

    if (v7 <= a2)
    {
      v7 = a2;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  }

  return v3;
}

uint64_t WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 28))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = WTF::fastMalloc((16 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    if (v5)
    {
      v8 = 16 * v5;
      v9 = v4;
      do
      {
        v10 = *v9;
        v9 = (v9 + 16);
        *v6++ = v10;
        v8 -= 16;
      }

      while (v8);
    }

    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

uint64_t WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebKit::BufferInSetType>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    v2 = a2;
    v3 = result;
    v4 = *(result + 12);
    if (v4 > a2)
    {
      *(result + 12) = a2;
      LODWORD(v4) = a2;
    }

    v5 = *result;
    if (a2)
    {
      if (a2 >> 28)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc((16 * a2));
      *(v3 + 8) = v2;
      *v3 = result;
      if (v4 && result != v5)
      {
        v6 = 16 * v4;
        v7 = v5;
        do
        {
          v8 = *v7;
          v7 = (v7 + 16);
          *result = v8;
          result += 16;
          v6 -= 16;
        }

        while (v6);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteRenderingBackend40GetRemoteBarcodeDetectorSupportedFormatsENS2_22StreamServerConnectionEN6WebKit22RemoteRenderingBackendES9_FvONS_17CompletionHandlerIFvONS_6VectorIN7WebCore14ShapeDetection13BarcodeFormatELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F2998;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteRenderingBackend40GetRemoteBarcodeDetectorSupportedFormatsENS2_22StreamServerConnectionEN6WebKit22RemoteRenderingBackendES9_FvONS_17CompletionHandlerIFvONS_6VectorIN7WebCore14ShapeDetection13BarcodeFormatELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2998;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteRenderingBackend40GetRemoteBarcodeDetectorSupportedFormatsENS2_22StreamServerConnectionEN6WebKit22RemoteRenderingBackendES9_FvONS_17CompletionHandlerIFvONS_6VectorIN7WebCore14ShapeDetection13BarcodeFormatELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 8);
  v4 = *(*(a1 + 16) + 40);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3529;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v3;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v13 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[3]);
  v6 = a2[3];
  if (v6)
  {
    v7 = *a2;
    do
    {
      v8 = *v7++;
      v14 = v8;
      IPC::Encoder::operator<<<unsigned char>(v5, &v14);
      --v6;
    }

    while (v6);
  }

  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteRenderingBackend36PrepareImageBufferSetsForDisplaySyncEN6WebKit22RemoteRenderingBackendES8_FvNS_6VectorINS7_46ImageBufferSetPrepareBufferForDisplayInputDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONS9_INS7_29SwapBuffersDisplayRequirementELm0ESB_Lm16ESC_EEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSH_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F29C0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteRenderingBackend36PrepareImageBufferSetsForDisplaySyncEN6WebKit22RemoteRenderingBackendES8_FvNS_6VectorINS7_46ImageBufferSetPrepareBufferForDisplayInputDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONS9_INS7_29SwapBuffersDisplayRequirementELm0ESB_Lm16ESC_EEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSH_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F29C0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteRenderingBackend36PrepareImageBufferSetsForDisplaySyncEN6WebKit22RemoteRenderingBackendES8_FvNS_6VectorINS7_46ImageBufferSetPrepareBufferForDisplayInputDataELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONS9_INS7_29SwapBuffersDisplayRequirementELm0ESB_Lm16ESC_EEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSH_EE4callESH_(uint64_t result, unsigned int *a2)
{
  v4 = *(result + 8);
  v3 = *(result + 16);
  if (*(v3 + 120) != 1)
  {
    goto LABEL_19;
  }

  v6 = *(v3 + 56);
  v5 = *(v3 + 64);
  v7 = *(v5 + 8);
  if (v6 == 1)
  {
    if (v7 <= 0xFF)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_32:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  v8 = v7 >= 0x100;
  v9 = v7 - 256;
  if (!v8)
  {
    goto LABEL_30;
  }

  v5 = *(v5 + 16);
  if (v6)
  {
    v8 = v9 >= v6 - 1;
    v9 = v6 - 1;
    if (!v8)
    {
      goto LABEL_30;
    }
  }

  if (v9 <= 1)
  {
    goto LABEL_32;
  }

  *(v5 + 256) = 3199;
  v10 = v9 - 2;
  v11 = v5 + 258;
  v12 = -(v5 + 258);
  v13 = v12 & 7 | 8;
  v8 = v10 >= v13;
  v14 = v10 - v13;
  if (v8)
  {
    *(v11 + (v12 & 7)) = a2[3];
    v15 = (v11 + v13);
    goto LABEL_10;
  }

LABEL_31:
  v15 = 0;
  v14 = 0;
LABEL_10:
  v16 = a2[3];
  if (v16)
  {
    v17 = *a2;
    do
    {
      if (v14)
      {
        *v15++ = *v17;
        --v14;
      }

      else
      {
        v15 = 0;
      }

      ++v17;
      --v16;
    }

    while (v16);
  }

  if (!v15)
  {
    *(v5 + 256) = 3197;
LABEL_19:
    v18 = IPC::Encoder::operator new(0x238, a2);
    *v18 = 3199;
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 1) = v4;
    *(v18 + 68) = 0;
    *(v18 + 70) = 0;
    *(v18 + 69) = 0;
    IPC::Encoder::encodeHeader(v18);
    v25 = v18;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v18, a2[3]);
    v19 = a2[3];
    if (v19)
    {
      v20 = *a2;
      do
      {
        v21 = *v20++;
        v26 = v21;
        IPC::Encoder::operator<<<unsigned char>(v18, &v26);
        --v19;
      }

      while (v19);
    }

    if (*(v3 + 120) == 1)
    {
      return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v18);
    }

    else
    {
      IPC::Connection::sendMessageImpl(*(v3 + 40), &v25, 0, 0);
      result = v25;
      v25 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v22);
        return bmalloc::api::tzoneFree(v23, v24);
      }
    }
  }

  return result;
}

void IPC::Decoder::decode<std::tuple<IPC::Semaphore,IPC::Semaphore>>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<std::tuple<IPC::Semaphore,IPC::Semaphore>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a1);
  }
}

_BYTE *std::optional<std::tuple<IPC::Semaphore,IPC::Semaphore>>::~optional(_BYTE *a1)
{
  if (a1[16] == 1)
  {
    IPC::Semaphore::destroy((a1 + 8));
    WTF::MachSendRight::~MachSendRight((a1 + 8));
    IPC::Semaphore::destroy(a1);
    WTF::MachSendRight::~MachSendRight(a1);
  }

  return a1;
}

void IPC::ArgumentCoder<std::tuple<IPC::Semaphore,IPC::Semaphore>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<IPC::Semaphore,void>::decode(a1, v4);
  if (v5 & 1) != 0 || (IPC::Decoder::markInvalid(a1), (v5))
  {
    IPC::ArgumentCoder<std::tuple<IPC::Semaphore,IPC::Semaphore>,void>::decode<IPC::Decoder,IPC::Semaphore>(a1, v4, a2);
    if (v5)
    {
      IPC::Semaphore::destroy(v4);
      WTF::MachSendRight::~MachSendRight(v4);
    }
  }

  else
  {
    *a2 = 0;
    a2[16] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<IPC::Semaphore,IPC::Semaphore>,void>::decode<IPC::Decoder,IPC::Semaphore>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  IPC::ArgumentCoder<IPC::Semaphore,void>::decode(a1, v8);
  if (v10 & 1) != 0 || (IPC::Decoder::markInvalid(a1), (v10))
  {
    if (*(a2 + 8))
    {
      WTF::MachSendRight::MachSendRight();
      v6 = *(a2 + 4);
      *(a2 + 4) = 0;
      *(a3 + 4) = v6;
      WTF::MachSendRight::MachSendRight();
      v7 = v9;
      v9 = 0;
      *(a3 + 12) = v7;
      *(a3 + 16) = 1;
      if (v10)
      {
        IPC::Semaphore::destroy(v8);
        WTF::MachSendRight::~MachSendRight(v8);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages37RemoteSampleBufferDisplayLayerManager11CreateLayerENS2_10ConnectionEN6WebKit37RemoteSampleBufferDisplayLayerManagerES9_FvNS_23ObjectIdentifierGenericINS8_38SampleBufferDisplayLayerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEbN7WebCore7IntSizeEbbONS_17CompletionHandlerIFvNSF_14HostingContextEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F29E8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages37RemoteSampleBufferDisplayLayerManager11CreateLayerENS2_10ConnectionEN6WebKit37RemoteSampleBufferDisplayLayerManagerES9_FvNS_23ObjectIdentifierGenericINS8_38SampleBufferDisplayLayerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEbN7WebCore7IntSizeEbbONS_17CompletionHandlerIFvNSF_14HostingContextEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F29E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages37RemoteSampleBufferDisplayLayerManager11CreateLayerENS2_10ConnectionEN6WebKit37RemoteSampleBufferDisplayLayerManagerES9_FvNS_23ObjectIdentifierGenericINS8_38SampleBufferDisplayLayerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEbN7WebCore7IntSizeEbbONS_17CompletionHandlerIFvNSF_14HostingContextEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3530;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v5, *a2);
  IPC::ArgumentCoder<WTF::MachSendRightAnnotated,void>::encode(v5, a2 + 2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

unint64_t WebKit::RemoteLayerWithInProcessRenderingBackingStore::frontBufferMayBeVolatile(WebKit::RemoteLayerWithInProcessRenderingBackingStore *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = (v1 + 8);
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_5:
    v1 = WebCore::ImageBuffer::volatilityState(v1) == 1;
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v2, v5);
  }

  return v1;
}

double WebKit::RemoteLayerWithInProcessRenderingBackingStore::clearBackingStore(atomic_uchar **this, void *a2)
{
  WebKit::ImageBufferSet::clearBuffers(this + 45, a2);

  return WebKit::RemoteLayerBackingStore::clearBackingStore(this);
}

atomic_uchar **WebKit::RemoteLayerWithInProcessRenderingBackingStore::frontBufferHandle@<X0>(atomic_uchar **this@<X0>, _BYTE *a2@<X8>)
{
  v3 = this[45];
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_5:
    v7 = (*(*v3 + 136))(v3);
    v9 = v7;
    if (v7 && (*(*v7 + 16))(v7))
    {
      (*(*v9 + 32))(v9, 0);
    }

    else
    {
      *a2 = 0;
      a2[88] = 0;
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v4, v8);
  }

  else
  {
    *a2 = 0;
    a2[88] = 0;
  }

  return this;
}

atomic_uchar **WebKit::RemoteLayerWithInProcessRenderingBackingStore::createContextAndPaintContents(atomic_uchar **this)
{
  v1 = this[45];
  if (v1)
  {
    v2 = this;
    v3 = (v1 + 1);
    while (1)
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        break;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_5:
    v6 = (*(*v1 + 2))(v1);
    (*(*v6 + 104))(v6, 1);
    v7 = *(v2 + 36);
    v11[0] = 0;
    v11[1] = v7;
    v8 = WebKit::RemoteLayerBackingStore::drawingRequiresClearedPixels(v2);
    WebKit::ImageBufferSet::prepareBufferForDisplay((v2 + 360), v11, (v2 + 72), (v2 + 248), v8);
    v9 = (*(*v1 + 2))(v1);
    WebKit::RemoteLayerBackingStore::drawInContext(v2, v9);
    (*(*v6 + 112))(v6, 1);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v1 + 1, v10);
  }

  return this;
}

atomic_uchar **WebKit::RemoteLayerWithInProcessRenderingBackingStore::createFlusher@<X0>(atomic_uchar **result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    v4 = result[45];
    if (v4)
    {
      while (1)
      {
        v5 = v4[1];
        if ((v5 & 1) == 0)
        {
          break;
        }

        v6 = v4[1];
        atomic_compare_exchange_strong_explicit(v4 + 1, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v6 == v5)
        {
          goto LABEL_5;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(v4[1]);
    }

LABEL_5:
    (*(*v4 + 32))(v4);
    (*(*v4 + 120))(&v11, v4);
    if (WebKit::ImageBufferBackingStoreFlusher::operator new(unsigned long)::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::ImageBufferBackingStoreFlusher::operator new(unsigned long)::s_heapRef, v7);
    }

    else
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
    }

    v10 = v11;
    *NonCompact = &unk_1F10F2B00;
    NonCompact[1] = v10;
    *a3 = NonCompact;
    v11 = 0;
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v4 + 1, v9);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_19DA23C3C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v10 + 8), a2);
  _Unwind_Resume(a1);
}

uint64_t WebKit::RemoteLayerWithInProcessRenderingBackingStore::setBufferVolatile(uint64_t a1, WebCore::ImageBuffer **a2, int a3)
{
  if (!*a2 || WebCore::ImageBuffer::volatilityState(*a2) == 1)
  {
    return 1;
  }

  v5 = *a2;
  if (a3)
  {
    WebCore::ImageBuffer::setVolatileAndPurgeForTesting(v5);
    return 1;
  }

  (*(*v5 + 112))(v5);
  v7 = *a2;

  return WebCore::ImageBuffer::setVolatile(v7);
}

WebKit::RemoteLayerBackingStoreCollection *WebKit::RemoteLayerWithInProcessRenderingBackingStore::prepareToDisplay(WebKit::RemoteLayerWithInProcessRenderingBackingStore *this)
{
  result = WebKit::RemoteLayerBackingStore::backingStoreCollection(this);
  if (!result)
  {
    return result;
  }

  v3 = result;
  WebKit::RemoteLayerBackingStoreCollection::ref(result);
  if (*(this + 208) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor((this + 120));
    *(this + 208) = 0;
  }

  v4 = *(this + 20) < 1 || *(this + 21) < 1 || *(this + 9) <= 0.0 || *(this + 10) <= 0.0;
  v5 = WebKit::RemoteLayerBackingStore::supportsPartialRepaint(this);
  v6 = WebKit::ImageBufferSet::swapBuffersForDisplay(this + 45, v4, v5);
  if (!v6)
  {
    WebKit::RemoteLayerBackingStore::setNeedsDisplay(this);
    goto LABEL_13;
  }

  if (v6 != 2)
  {
LABEL_13:
    v7 = WebKit::RemoteLayerBackingStore::dirtyRepaintCounterIfNecessary(this);
    if (!*(this + 45))
    {
      v25 = 0;
      v8 = WebCore::IOSurfacePool::sharedPoolSingleton(v7);
      atomic_fetch_add(v8, 1u);
      v24 = v8;
      v9 = *(this + 32);
      v23 = *(this + 36);
      v10 = *(this + 15);
      v11 = *(this + 6);
      cf = v11;
      if (v11)
      {
        CFRetain(v11);
      }

      v12 = *(this + 56);
      if (v12 == 2)
      {
        if (*(this + 64))
        {
          v13 = 2;
        }

        else
        {
          v13 = 3;
        }
      }

      else if (v12 == 1)
      {
        v13 = *(this + 64) ^ 1;
      }

      else
      {
        v13 = 4;
      }

      if (v9)
      {
        WebCore::ImageBuffer::create<WebKit::ImageBufferShareableBitmapBackend,WebCore::ImageBuffer>(&v23, &cf, v13, 3, &v24, &v21, v10);
      }

      else
      {
        WebCore::ImageBuffer::create<WebKit::ImageBufferShareableMappedIOSurfaceBackend,WebCore::ImageBuffer>(&v23, &cf, v13, 3, &v24, &v21, v10);
      }

      v14 = cf;
      cf = 0;
      if (v14)
      {
        CFRelease(v14);
      }

      WTF::MachSendRight::~MachSendRight((&v25 + 4));
      v16 = v24;
      v24 = 0;
      if (v16)
      {
        WTF::ThreadSafeRefCounted<WebCore::IOSurfacePool,(WTF::DestructionThread)0>::deref(v16);
      }

      v17 = v21;
      v21 = 0;
      v18 = *(this + 45);
      *(this + 45) = v17;
      if (v18)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v18 + 8), v15);
        v20 = v21;
        v21 = 0;
        if (v20)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v20 + 8), v19);
        }
      }

      *(this + 404) = 1;
    }
  }

  return WebKit::RemoteLayerBackingStoreCollection::deref(v3);
}

void sub_19DA23F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf, uint64_t a12, atomic_uint *a13, int a14, int a15)
{
  if (cf)
  {
    CFRelease(cf);
  }

  WTF::MachSendRight::~MachSendRight(&a15);
  if (a13)
  {
    WTF::ThreadSafeRefCounted<WebCore::IOSurfacePool,(WTF::DestructionThread)0>::deref(a13);
  }

  WebKit::RemoteLayerBackingStoreCollection::deref(v15);
  _Unwind_Resume(a1);
}

uint64_t WebKit::RemoteLayerWithInProcessRenderingBackingStore::encodeBufferAndBackendInfos(WebKit::RemoteLayerWithInProcessRenderingBackingStore *this, IPC::Encoder *a2)
{
  v4 = *(this + 45);
  if (v4)
  {
    v12 = *(v4 + 15);
    v13 = WebCore::ImageBuffer::backendGeneration(v4);
    v14 = 1;
  }

  else
  {
    LOBYTE(v12) = 0;
    v14 = 0;
  }

  IPC::ArgumentCoder<std::optional<WebKit::BufferAndBackendInfo>,void>::encode<IPC::Encoder,std::optional<WebKit::BufferAndBackendInfo>>(a2, &v12);
  v5 = *(this + 46);
  if (v5)
  {
    v6 = *(v5 + 15);
    v7 = WebCore::ImageBuffer::backendGeneration(v5);
    v12 = v6;
    v13 = v7;
    v14 = 1;
  }

  else
  {
    LOBYTE(v12) = 0;
    v14 = 0;
  }

  IPC::ArgumentCoder<std::optional<WebKit::BufferAndBackendInfo>,void>::encode<IPC::Encoder,std::optional<WebKit::BufferAndBackendInfo>>(a2, &v12);
  v8 = *(this + 47);
  if (v8)
  {
    v9 = *(v8 + 15);
    v10 = WebCore::ImageBuffer::backendGeneration(v8);
    v12 = v9;
    v13 = v10;
    v14 = 1;
  }

  else
  {
    LOBYTE(v12) = 0;
    v14 = 0;
  }

  return IPC::ArgumentCoder<std::optional<WebKit::BufferAndBackendInfo>,void>::encode<IPC::Encoder,std::optional<WebKit::BufferAndBackendInfo>>(a2, &v12);
}

uint64_t WebKit::RemoteLayerWithInProcessRenderingBackingStore::dump(WebKit::RemoteLayerWithInProcessRenderingBackingStore *this, WTF::TextStream *a2)
{
  WTF::TextStream::dumpProperty<WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>(a2, "front buffer", 13, this + 45);
  WTF::TextStream::dumpProperty<WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>(a2, "back buffer", 12, this + 46);
  WTF::TextStream::dumpProperty<WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>(a2, "secondaryBack buffer", 21, this + 47);
  return WTF::TextStream::dumpProperty<BOOL>(a2);
}

uint64_t WTF::TextStream::dumpProperty<WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>(WTF::TextStream *a1, uint64_t a2, uint64_t a3, void *a4)
{
  WTF::TextStream::startGroup(a1);
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();
  if (*a4)
  {
    WebCore::operator<<();
  }

  else
  {
    WTF::TextStream::operator<<();
  }

  return WTF::TextStream::endGroup(a1);
}

WebKit::RemoteLayerWithRemoteRenderingBackingStore *WebKit::RemoteLayerWithRemoteRenderingBackingStore::RemoteLayerWithRemoteRenderingBackingStore(WebKit::RemoteLayerWithRemoteRenderingBackingStore *this, WebKit::PlatformCALayerRemote *a2)
{
  v3 = WebKit::RemoteLayerBackingStore::RemoteLayerBackingStore(this, a2);
  *v3 = &unk_1F10F2A10;
  *(v3 + 360) = 0;
  *(v3 + 368) = 0;
  *(v3 + 376) = 0;
  *(v3 + 384) = 0;
  *(v3 + 392) = 0;
  *(v3 + 400) = 0;
  *(v3 + 408) = 0;
  *(v3 + 416) = 0;
  *(v3 + 504) = 0;
  *(v3 + 512) = 1;
  v4 = WebKit::RemoteLayerBackingStore::backingStoreCollection(v3);
  v5 = v4;
  if (v4)
  {
    WebKit::RemoteLayerBackingStoreCollection::ref(v4);
    WebKit::RemoteLayerBackingStoreCollection::protectedLayerTreeContext(v5, &v12);
    v6 = WebKit::RemoteLayerTreeContext::ensureRemoteRenderingBackendProxy(v12);
    ++*(v6 + 5);
    WebKit::RemoteRenderingBackendProxy::createImageBufferSet(v6, &v13);
    v7 = v13;
    v13 = 0;
    v8 = *(this + 45);
    *(this + 45) = v7;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      v9 = v13;
      v13 = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }

    if (*(v6 + 5) == 1)
    {
      (*(*v6 + 24))(v6);
    }

    else
    {
      --*(v6 + 5);
    }

    v10 = v12;
    v12 = 0;
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

    WebKit::RemoteLayerBackingStoreCollection::deref(v5);
  }

  return this;
}

void sub_19DA24344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _DWORD *a9)
{
  if (a9)
  {
    if (a9[4] == 1)
    {
      (*(*a9 + 8))(a9);
    }

    else
    {
      --a9[4];
    }
  }

  WebKit::RemoteLayerBackingStoreCollection::deref(v10);
  if (*(v9 + 504) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor((v9 + 416));
  }

  v12 = *(v9 + 360);
  *(v9 + 360) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  WebKit::RemoteLayerBackingStore::~RemoteLayerBackingStore(v9);
  _Unwind_Resume(a1);
}

void WebKit::RemoteLayerWithRemoteRenderingBackingStore::~RemoteLayerWithRemoteRenderingBackingStore(WebKit::RemoteLayerWithRemoteRenderingBackingStore *this)
{
  v2 = *(this + 45);
  if (v2)
  {
    WebKit::RemoteImageBufferSetProxy::close(v2);
  }

  if (*(this + 504) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor((this + 416));
  }

  v3 = *(this + 45);
  *(this + 45) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebKit::RemoteLayerBackingStore::~RemoteLayerBackingStore(this);
}

{
  WebKit::RemoteLayerWithRemoteRenderingBackingStore::~RemoteLayerWithRemoteRenderingBackingStore(this);
  if (v1[4])
  {

    bzero(v1, 0x208uLL);
  }

  else
  {

    bmalloc::api::tzoneFree(v1, v2);
  }
}

uint64_t WebKit::RemoteLayerWithRemoteRenderingBackingStore::hasFrontBuffer(WebKit::RemoteLayerWithRemoteRenderingBackingStore *this)
{
  if (*(this + 208))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(this + 512) ^ 1;
  }

  return v1 & 1;
}

uint64_t WebKit::RemoteLayerWithRemoteRenderingBackingStore::frontBufferMayBeVolatile(WebKit::RemoteLayerWithRemoteRenderingBackingStore *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    return *(v1 + 3640) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::RemoteLayerWithRemoteRenderingBackingStore::prepareToDisplay(WebKit::RemoteLayerWithRemoteRenderingBackingStore *this)
{
  if (*(this + 208) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor((this + 120));
    *(this + 208) = 0;
  }

  if (*(this + 512))
  {
    goto LABEL_14;
  }

  v2 = WebCore::ImageBuffer::calculateBackendSize();
  v3 = HIDWORD(v2);
  if (v2 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = -v2;
  }

  if (v2 < 0)
  {
    LODWORD(v3) = -HIDWORD(v2);
  }

  v5 = v4 * v3;
  if ((v5 & 0xFFFFFFFF00000000) == 0 && v5 <= 0x1000)
  {
LABEL_14:
    WebKit::RemoteLayerBackingStore::setNeedsDisplay(this);
  }

  return WebKit::RemoteLayerBackingStore::dirtyRepaintCounterIfNecessary(this);
}

void WebKit::RemoteLayerWithRemoteRenderingBackingStore::createFlusher(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 360);
  if (v3)
  {
    WebKit::RemoteImageBufferSetProxy::flushFrontBufferAsync(v3, a2, a3);
  }

  else
  {
    *a3 = 0;
  }
}

WebKit::RemoteLayerBackingStore *WebKit::RemoteLayerWithRemoteRenderingBackingStore::createContextAndPaintContents(WebKit::RemoteLayerBackingStore *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    v2 = this;
    (**v1)(*(this + 45));
    if (v1[3632] == 1)
    {
      WebKit::RemoteLayerBackingStore::drawInContext(v2, (v1 + 40));
      *(v2 + 512) = 0;
    }

    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return this;
}

void WebKit::RemoteLayerWithRemoteRenderingBackingStore::ensureBackingStore(uint64_t a1, unsigned __int8 *a2)
{
  v4 = a1 + 32;
  if (*(a1 + 32) != *a2 || (*(a1 + 36) == *(a2 + 1) ? (v5 = *(a1 + 40) == *(a2 + 2)) : (v5 = 0), !v5 || !WebCore::operator==() || *(a1 + 56) != a2[24] || *(a1 + 60) != *(a2 + 7) || *(a1 + 64) != a2[32]))
  {
    v6 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v6;
    v7 = *(a2 + 2);
    if (v7)
    {
      CFRetain(*(a2 + 2));
    }

    v8 = *(a1 + 48);
    *(a1 + 48) = v7;
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = a2[32];
    *(a1 + 56) = *(a2 + 3);
    *(a1 + 64) = v9;
    *(a1 + 512) = 1;
    v10 = *(*(a1 + 24) + 8);
    if (v10)
    {
      v11 = *(v10 + 896);
      if (v11 && (v12 = *(v11 + 8)) != 0)
      {
        ++*(v12 + 4);
        v13 = WebKit::RemoteLayerTreeContext::useIOSurfaceLosslessCompression(v12);
        if (*(v12 + 4) == 1)
        {
          (*(*v12 + 8))(v12);
        }

        else
        {
          --*(v12 + 4);
        }
      }

      else
      {
        v13 = 0;
      }

      if (*(a1 + 360))
      {
        v14 = *(a1 + 36);
        v15 = *(a1 + 60);
        v16 = *(a1 + 48);
        if (v16)
        {
          CFRetain(*(a1 + 48));
        }

        v17 = *(a1 + 56);
        if (v17 == 2)
        {
          if (*(a1 + 64))
          {
            v18 = 2;
          }

          else
          {
            v18 = 3;
          }
        }

        else if (v17 == 1)
        {
          v18 = (*(a1 + 64) & 1) == 0;
        }

        else
        {
          v18 = 4;
        }

        v19 = (*(a1 + 32) & 1) == 0;
        v20 = *(a1 + 360);
        *(v20 + 3648) = v14;
        *(v20 + 3656) = v15;
        v21 = *(v20 + 3664);
        *(v20 + 3664) = v16;
        if (v21)
        {
          CFRelease(v21);
        }

        *(v20 + 3672) = v17;
        *(v20 + 3673) = v18;
        *(v20 + 3674) = v13;
        *(v20 + 3675) = v19;
        *(v20 + 3676) = 3;
        *(v20 + 3684) = 1;
      }
    }

    else
    {
      __break(0xC471u);
    }
  }
}

void sub_19DA248D4(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RemoteLayerWithRemoteRenderingBackingStore::encodeBufferAndBackendInfos(WebKit::RemoteLayerWithRemoteRenderingBackingStore *this, IPC::Encoder *a2)
{
  if (*(this + 376) == 1)
  {
    v5 = *(*(this + 45) + 3680);
    v8 = *(this + 46);
    v9 = v5;
    v10 = 1;
  }

  else
  {
    LOBYTE(v8) = 0;
    v10 = 0;
  }

  IPC::ArgumentCoder<std::optional<WebKit::BufferAndBackendInfo>,void>::encode<IPC::Encoder,std::optional<WebKit::BufferAndBackendInfo>>(a2, &v8);
  if (*(this + 392) == 1)
  {
    v6 = *(*(this + 45) + 3680);
    v8 = *(this + 48);
    v9 = v6;
    v10 = 1;
  }

  else
  {
    LOBYTE(v8) = 0;
    v10 = 0;
  }

  IPC::ArgumentCoder<std::optional<WebKit::BufferAndBackendInfo>,void>::encode<IPC::Encoder,std::optional<WebKit::BufferAndBackendInfo>>(a2, &v8);
  if (*(this + 408) == 1)
  {
    v7 = *(*(this + 45) + 3680);
    v8 = *(this + 50);
    v9 = v7;
    v10 = 1;
  }

  else
  {
    LOBYTE(v8) = 0;
    v10 = 0;
  }

  return IPC::ArgumentCoder<std::optional<WebKit::BufferAndBackendInfo>,void>::encode<IPC::Encoder,std::optional<WebKit::BufferAndBackendInfo>>(a2, &v8);
}

uint64_t WebKit::RemoteLayerWithRemoteRenderingBackingStore::bufferSetIdentifier(WebKit::RemoteLayerWithRemoteRenderingBackingStore *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::RemoteLayerWithRemoteRenderingBackingStore::dump(WebKit::RemoteLayerWithRemoteRenderingBackingStore *this, WTF::TextStream *a2)
{
  WTF::TextStream::startGroup(a2);
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();
  if (*(this + 45))
  {
    WTF::operator<<();
  }

  else
  {
    WTF::TextStream::operator<<();
  }

  WTF::TextStream::endGroup(a2);
  WTF::TextStream::startGroup(a2);
  WTF::TextStream::operator<<();
  v4 = WTF::TextStream::operator<<();
  WebKit::operator<<(v4, this + 368);
  WTF::TextStream::endGroup(a2);
  WTF::TextStream::dumpProperty<BOOL>(a2);
  WTF::TextStream::dumpProperty<float>(a2);
  return WTF::TextStream::dumpProperty<float>(a2);
}

void WebKit::cookieStorageFromIdentifyingData(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = CFDataCreate(*MEMORY[0x1E695E480], *a1, *(a1 + 12));
  *a2 = CFHTTPCookieStorageCreateFromIdentifyingData();
  v4 = [MEMORY[0x1E695AC40] resourceLoaderRunLoop];
  v5 = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  CFHTTPCookieStorageScheduleWithRunLoop();
  if (v5)
  {
    CFRelease(v5);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_19DA24BF0(_Unwind_Exception *exception_object)
{
  v5 = v4;
  if (v5)
  {
    CFRelease(v5);
  }

  *v2 = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **WTF::RetainPtr<void const*>::operator=(const void **a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *a1;
  *a1 = cf;
  if (v4)
  {
    CFRelease(v4);
  }

  return a1;
}

WebCore::TextIndicator *WebKit::InteractionInformationAtPosition::mergeCompatibleOptionalInformation(WebCore::TextIndicator *this, InteractionInformationAtPosition *a2)
{
  if (a2->request.point.m_x == *this && a2->request.point.m_y == *(this + 1))
  {
    v4 = this;
    if (a2->request.includeSnapshot && (*(this + 8) & 1) == 0)
    {
      m_ptr = a2->image.m_ptr;
      if (m_ptr)
      {
        atomic_fetch_add(m_ptr, 1u);
      }

      this = *(this + 24);
      *(v4 + 24) = m_ptr;
      if (this)
      {
        this = WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(this, a2);
      }
    }

    if (a2->request.includeLinkIndicator && (*(v4 + 9) & 1) == 0)
    {
      v6 = a2->textIndicator.m_ptr;
      if (v6)
      {
        ++*v6;
      }

      this = *(v4 + 35);
      *(v4 + 35) = v6;
      if (this)
      {

        return WTF::RefCounted<WebCore::TextIndicator>::deref(this);
      }
    }
  }

  return this;
}

uint64_t WebKit::NativeWebKeyboardEvent::NativeWebKeyboardEvent(uint64_t a1, WebKit::WebIOSEventFactory *this, WebEvent *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  WebKit::WebIOSEventFactory::createWebKeyboardEvent(this, a3, v13);
  *(a1 + 8) = 0;
  *(a1 + 12) = *&v13[12];
  *(a1 + 28) = v14;
  *(a1 + 44) = v15;
  *a1 = &unk_1F110E540;
  v6 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  }

  *(a1 + 48) = v6;
  v7 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
  }

  *(a1 + 56) = v7;
  v8 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  *(a1 + 64) = v8;
  v9 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
  }

  *(a1 + 72) = v9;
  v10 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
  }

  *(a1 + 80) = v10;
  *(a1 + 88) = v21;
  WebKit::WebKeyboardEvent::~WebKeyboardEvent(v13, v5);
  *a1 = off_1F10F2AA0;
  *(a1 + 104) = this;
  if (this)
  {
    v11 = this;
  }

  return a1;
}

void *WebKit::NativeWebMouseEvent::NativeWebMouseEvent(void *a1, char a2, char a3, __int16 a4, void *a5, void *a6, int a7, char a8, float a9, float a10, float a11, double a12, double a13, char a14, atomic_uint **a15)
{
  v31 = 0;
  v30 = &unk_1F10E83B8;
  v32 = a2;
  v33 = a8;
  v34 = a12;
  WTF::UUID::UUID(&v37);
  v35 = v37;
  v36 = v38;
  v28[1] = 0;
  v29 = 0;
  v37 = 0;
  v38 = 0;
  v28[0] = 0;
  WebKit::WebMouseEvent::WebMouseEvent(a1, &v30, a3, a4, a5, a6, a7, 0, a9, a10, a11, a13, 1, a15, a14, &v29, &v37, v28);
  WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, v25);
  WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v26);
  *a1 = &unk_1F10F2AC0;
  a1[20] = 0;
  return a1;
}

WebKit::NativeWebTouchEvent *WebKit::NativeWebTouchEvent::NativeWebTouchEvent(WebKit::NativeWebTouchEvent *this, const WKTouchEvent *a2, uint64_t a3)
{
  v4 = this;
  v81[6] = *MEMORY[0x1E69E9840];
  *this = &unk_1F10F2AE0;
  type = a2->type;
  if (type >= 4)
  {
    v6 = 11;
  }

  else
  {
    v6 = type + 11;
  }

  timestamp = a2->timestamp;
  v67 = 0;
  v66 = &unk_1F10E83B8;
  v68 = v6;
  v69 = (a3 >> 12) & 0x10 | (a3 >> 17) & 0xF;
  v70 = timestamp;
  WTF::UUID::UUID(&var0);
  v71 = var0;
  v64 = 0;
  v65 = 0;
  m_size = a2->touchPoints.m_size;
  if (m_size)
  {
    if (m_size >= 0x3333334)
    {
      __break(0xC471u);
      goto LABEL_39;
    }

    v9 = 80 * m_size;
    v10 = WTF::fastMalloc((80 * m_size));
    LODWORD(v65) = v9 / 0x50;
    v64 = v10;
    if (a2->touchPoints.m_size)
    {
      v58 = v4;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = v10;
        m_buffer = a2->touchPoints.m_buffer;
        var2 = m_buffer[v11].var2;
        var0 = m_buffer[v11].var0;
        WebCore::IntPoint::IntPoint(v72, &var0);
        v17 = v72[0];
        var0 = m_buffer[v11].var1;
        WebCore::IntPoint::IntPoint(v72, &var0);
        v18 = v72[0];
        v19 = &m_buffer[v11];
        var3 = m_buffer[v11].var3;
        if (var3 >= 5)
        {
          v21 = 3;
        }

        else
        {
          v21 = 0x400030201uLL >> (8 * var3);
        }

        var4 = v19->var4;
        var7 = v19->var7;
        v24 = v19->var8 == 1;
        v10 = v14;
        v25 = v14 + v12;
        *v25 = var2;
        v25[20] = v21;
        v26 = *&v19->var5;
        *(v25 + 4) = v17;
        *(v25 + 12) = v18;
        *(v25 + 3) = var4;
        *(v25 + 4) = var4;
        *(v25 + 5) = 0;
        *(v25 + 3) = v26;
        *(v25 + 8) = var7;
        v25[72] = v24;
        ++v13;
        v12 += 80;
        ++v11;
      }

      while (v13 < a2->touchPoints.m_size);
      HIDWORD(v65) = v13;
      v4 = v58;
    }
  }

  v62 = 0;
  v63 = 0;
  v27 = a2->coalescedEvents.m_size;
  if (v27)
  {
    if (v27 >> 25)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA254E8);
    }

    v28 = WTF::fastMalloc((v27 << 7));
    LODWORD(v63) = v27;
    v62 = v28;
    if (a2->coalescedEvents.m_size)
    {
      v29 = 0;
      v30 = 0;
      do
      {
        WebKit::NativeWebTouchEvent::NativeWebTouchEvent(&var0, &a2->coalescedEvents.m_buffer[v29], a3);
        WebKit::WebTouchEvent::WebTouchEvent(v72, &var0);
        *&var0.x = &unk_1F10E7D80;
        WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v81, v31);
        WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v80, v32);
        v34 = v78;
        if (v78)
        {
          v78 = 0;
          v79 = 0;
          WTF::fastFree(v34, v33);
        }

        WebKit::WebTouchEvent::WebTouchEvent(v28, v72);
        v72[0] = &unk_1F10E7D80;
        WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v76, v35);
        WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v75, v36);
        v38 = v73;
        if (v73)
        {
          v73 = 0;
          v74 = 0;
          WTF::fastFree(v38, v37);
        }

        ++v30;
        v28 += 128;
        ++v29;
      }

      while (v30 < a2->coalescedEvents.m_size);
      HIDWORD(v63) = v30;
    }
  }

  v60 = 0;
  v61 = 0;
  v39 = a2->predictedEvents.m_size;
  if (v39)
  {
    if (!(v39 >> 25))
    {
      v40 = WTF::fastMalloc((v39 << 7));
      LODWORD(v61) = v39;
      v60 = v40;
      if (a2->predictedEvents.m_size)
      {
        v41 = 0;
        v42 = 0;
        do
        {
          WebKit::NativeWebTouchEvent::NativeWebTouchEvent(&var0, &a2->predictedEvents.m_buffer[v41], a3);
          WebKit::WebTouchEvent::WebTouchEvent(v72, &var0);
          *&var0.x = &unk_1F10E7D80;
          WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v81, v43);
          WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v80, v44);
          v46 = v78;
          if (v78)
          {
            v78 = 0;
            v79 = 0;
            WTF::fastFree(v46, v45);
          }

          WebKit::WebTouchEvent::WebTouchEvent(v40, v72);
          v72[0] = &unk_1F10E7D80;
          WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v76, v47);
          WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v75, v48);
          v50 = v73;
          if (v73)
          {
            v73 = 0;
            v74 = 0;
            WTF::fastFree(v50, v49);
          }

          ++v42;
          v40 += 128;
          ++v41;
        }

        while (v42 < a2->predictedEvents.m_size);
        HIDWORD(v61) = v42;
      }

      goto LABEL_33;
    }

    __break(0xC471u);
LABEL_39:
    JUMPOUT(0x19DA254E0);
  }

LABEL_33:
  var0 = a2->locationInRootViewCoordinates;
  WebCore::IntPoint::IntPoint(v72, &var0);
  scale = a2->scale;
  rotation = a2->rotation;
  WebKit::WebTouchEvent::WebTouchEvent(v4, &v66, &v64, &v62, &v60, v72[0], a2->isPotentialTap, a2->inJavaScriptGesture, scale, rotation, 1);
  WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v60, v53);
  WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v62, v54);
  v56 = v64;
  if (v64)
  {
    v64 = 0;
    LODWORD(v65) = 0;
    WTF::fastFree(v56, v55);
  }

  *v4 = &unk_1F10F2AE0;
  return v4;
}

void sub_19DA254F4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, int a15, int a16, char a17, int a18, int a19, int a20, WTF *a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, WTF *a35, int a36)
{
  WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, a2);
  WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a17, v37);
  v39 = a21;
  if (a21)
  {
    a21 = 0;
    a22 = 0;
    WTF::fastFree(v39, v38);
  }

  _Unwind_Resume(a1);
}

void WebKit::RemoteLayerWithInProcessRenderingBackingStore::~RemoteLayerWithInProcessRenderingBackingStore(WebKit::RemoteLayerWithInProcessRenderingBackingStore *this, void *a2)
{
  v3 = *(this + 47);
  *(this + 47) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  v4 = *(this + 46);
  *(this + 46) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  v5 = *(this + 45);
  *(this + 45) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v5 + 8), a2);
  }

  WebKit::RemoteLayerBackingStore::~RemoteLayerBackingStore(this);
}

{
  v3 = *(this + 47);
  *(this + 47) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  v4 = *(this + 46);
  *(this + 46) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  v5 = *(this + 45);
  *(this + 45) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v5 + 8), a2);
  }

  WebKit::RemoteLayerBackingStore::~RemoteLayerBackingStore(this);
  if (*(this + 4))
  {
    *(this + 50) = 0;
    *(this + 23) = 0u;
    *(this + 24) = 0u;
    *(this + 21) = 0u;
    *(this + 22) = 0u;
    *(this + 19) = 0u;
    *(this + 20) = 0u;
    *(this + 17) = 0u;
    *(this + 18) = 0u;
    *(this + 15) = 0u;
    *(this + 16) = 0u;
    *(this + 13) = 0u;
    *(this + 14) = 0u;
    *(this + 11) = 0u;
    *(this + 12) = 0u;
    *(this + 9) = 0u;
    *(this + 10) = 0u;
    *(this + 7) = 0u;
    *(this + 8) = 0u;
    *(this + 5) = 0u;
    *(this + 6) = 0u;
    *(this + 3) = 0u;
    *(this + 4) = 0u;
    *(this + 1) = 0u;
    *(this + 2) = 0u;
    *this = 0u;
  }

  else
  {

    bmalloc::api::tzoneFree(this, v6);
  }
}

void *WebKit::RemoteLayerWithRemoteRenderingBackingStore::frontBufferHandle@<X0>(WebKit::RemoteLayerWithRemoteRenderingBackingStore *this@<X0>, _BYTE *a2@<X8>)
{
  result = std::__optional_move_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__optional_move_base[abi:sn200100](a2, this + 416);
  if (*(this + 504) == 1)
  {
    result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor((this + 416));
    *(this + 504) = 0;
  }

  return result;
}

void WebKit::NativeWebKeyboardEvent::~NativeWebKeyboardEvent(WebKit::NativeWebKeyboardEvent *this, WTF::StringImpl *a2)
{
  *this = off_1F10F2AA0;
  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
  }

  WebKit::WebKeyboardEvent::~WebKeyboardEvent(this, a2);
}

void WebKit::NativeWebKeyboardEvent::~NativeWebKeyboardEvent(WebKit::NativeWebKeyboardEvent *this, void *a2)
{
  if (atomic_load(this + 2))
  {
    *(this + 1) = 0u;
    *(this + 2) = 0u;
    *this = 0u;
  }

  else
  {
    bmalloc::api::tzoneFree(this, a2);
  }
}

void WebKit::NativeWebMouseEvent::~NativeWebMouseEvent(WebKit::NativeWebMouseEvent *this, void *a2)
{
  *this = &unk_1F10F2AC0;
  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
  }

  *this = &unk_1F10E8378;
  WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 144, a2);
  WTF::Vector<WebKit::WebMouseEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 128, v4);
  v6 = *(this + 14);
  *(this + 14) = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }
  }
}

{
  if (atomic_load(this + 2))
  {
    *(this + 1) = 0u;
    *(this + 2) = 0u;
    *this = 0u;
  }

  else
  {
    bmalloc::api::tzoneFree(this, a2);
  }
}

void WebKit::NativeWebTouchEvent::~NativeWebTouchEvent(WebKit::NativeWebTouchEvent *this, void *a2)
{
  *this = &unk_1F10E7D80;
  WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 80, a2);
  WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 64, v3);
  v5 = *(this + 6);
  if (v5)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v5, v4);
  }
}

{
  if (atomic_load(this + 2))
  {
    *(this + 1) = 0u;
    *(this + 2) = 0u;
    *this = 0u;
  }

  else
  {
    bmalloc::api::tzoneFree(this, a2);
  }
}

void WebKit::ImageBufferBackingStoreFlusher::~ImageBufferBackingStoreFlusher(WebKit::ImageBufferBackingStoreFlusher *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void WebKit::ImageBufferBackingStoreFlusher::~ImageBufferBackingStoreFlusher(WebKit::ImageBufferBackingStoreFlusher *this, void *a2)
{
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  bmalloc::api::tzoneFree(this, a2);
}

atomic_uint *WTF::ThreadSafeRefCounted<WebCore::IOSurfacePool,(WTF::DestructionThread)0>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v5 = v1;
    atomic_store(add, result);
    v3 = MEMORY[0x19EB04C50](result);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  return result;
}

void WebCore::ImageBuffer::create<WebKit::ImageBufferShareableMappedIOSurfaceBackend,WebCore::ImageBuffer>(uint64_t *a1@<X0>, CFTypeRef *a2@<X1>, __int16 a3@<W2>, char a4@<W3>, atomic_uint **a5@<X4>, uint64_t *a6@<X8>, float a7@<S0>)
{
  v29 = *a1;
  v30 = a7;
  v31 = *a2;
  if (v31)
  {
    CFRetain(v31);
  }

  v32 = a3;
  v33 = a4;
  WebCore::ImageBuffer::backendParameters();
  WebKit::ImageBufferShareableMappedIOSurfaceBackend::create(v27, a5, &v26);
  if (v26)
  {
    v24[0] = 1;
    WebCore::ImageBufferBackend::calculateBaseTransform();
    v25 = WebCore::ImageBufferIOSurfaceBackend::calculateMemoryCost();
    v19 = v29;
    v20 = v30;
    cf = v31;
    if (v31)
    {
      CFRetain(v31);
    }

    v22 = v32;
    v23 = v33;
    v11 = v26;
    v26 = 0;
    v18 = v11;
    WebCore::ImageBuffer::create<WebCore::ImageBuffer>(&v19, v24, a6);
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v12 = cf;
    cf = 0;
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = v26;
    v26 = 0;
    if (v13)
    {
      WebCore::ImageBufferIOSurfaceBackend::~ImageBufferIOSurfaceBackend(v13);
      bmalloc::api::tzoneFree(v16, v17);
    }
  }

  else
  {
    *a6 = 0;
  }

  v14 = v28;
  v28 = 0;
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = v31;
  v31 = 0;
  if (v15)
  {
    CFRelease(v15);
  }
}

void sub_19DA25CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, WebCore::ImageBufferIOSurfaceBackend *a22, uint64_t a23, uint64_t a24, CFTypeRef a25)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a22)
  {
    WebCore::ImageBufferIOSurfaceBackend::~ImageBufferIOSurfaceBackend(a22);
    bmalloc::api::tzoneFree(v28, v29);
  }

  if (a25)
  {
    CFRelease(a25);
  }

  v27 = *(v25 - 64);
  *(v25 - 64) = 0;
  if (v27)
  {
    CFRelease(v27);
  }

  _Unwind_Resume(exception_object);
}

void WebCore::ImageBuffer::create<WebKit::ImageBufferShareableBitmapBackend,WebCore::ImageBuffer>(uint64_t *a1@<X0>, CFTypeRef *a2@<X1>, __int16 a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, float a7@<S0>)
{
  v32 = *a1;
  v33 = a7;
  v34 = *a2;
  if (v34)
  {
    CFRetain(v34);
  }

  v35 = a3;
  v36 = a4;
  WebCore::ImageBuffer::backendParameters();
  WebKit::ImageBufferShareableBitmapBackend::create(v30, a5, v11, &v29);
  if (v29)
  {
    v27[0] = 0;
    WebCore::ImageBufferBackend::calculateBaseTransform();
    v28 = WebKit::ImageBufferShareableBitmapBackend::calculateMemoryCost(v30, v12, v13);
    v22 = v32;
    v23 = v33;
    cf = v34;
    if (v34)
    {
      CFRetain(v34);
    }

    v25 = v35;
    v26 = v36;
    v14 = v29;
    v29 = 0;
    v21 = v14;
    WebCore::ImageBuffer::create<WebCore::ImageBuffer>(&v22, v27, a6);
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v15 = cf;
    cf = 0;
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = v29;
    v29 = 0;
    if (v16)
    {
      WebKit::ImageBufferShareableBitmapBackend::~ImageBufferShareableBitmapBackend(v16);
      bmalloc::api::tzoneFree(v19, v20);
    }
  }

  else
  {
    *a6 = 0;
  }

  v17 = v31;
  v31 = 0;
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = v34;
  v34 = 0;
  if (v18)
  {
    CFRelease(v18);
  }
}

void sub_19DA25EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, WebKit::ImageBufferShareableBitmapBackend *a22, uint64_t a23, uint64_t a24, CFTypeRef a25)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a22)
  {
    WebKit::ImageBufferShareableBitmapBackend::~ImageBufferShareableBitmapBackend(a22);
    bmalloc::api::tzoneFree(v28, v29);
  }

  if (a25)
  {
    CFRelease(a25);
  }

  v27 = *(v25 - 64);
  *(v25 - 64) = 0;
  if (v27)
  {
    CFRelease(v27);
  }

  _Unwind_Resume(exception_object);
}

void WebCore::ImageBuffer::create<WebCore::ImageBuffer>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WebCore::ImageBuffer::operator new(0x88, a2);
  v6 = *(a1 + 16);
  cf = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  if (WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
  }

  else
  {
    WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    WebCore::ImageBuffer::ImageBuffer();
    *a3 = v5;
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t WebCore::ImageBuffer::operator new(WebCore::ImageBuffer *this, void *a2)
{
  if (this == 136 && *MEMORY[0x1E69E24D0])
  {
    return bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E24D0], a2);
  }

  else
  {
    return MEMORY[0x1EEE54440]();
  }
}

WTF::TextStream *WebKit::operator<<(WTF::TextStream *a1, _BYTE *a2)
{
  WTF::TextStream::startGroup(a1);
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();
  if (a2[8] == 1)
  {
    WTF::operator<<();
  }

  else
  {
    WTF::TextStream::operator<<();
  }

  WTF::TextStream::endGroup(a1);
  WTF::TextStream::startGroup(a1);
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();
  if (a2[24] == 1)
  {
    WTF::operator<<();
  }

  else
  {
    WTF::TextStream::operator<<();
  }

  WTF::TextStream::endGroup(a1);
  WTF::TextStream::startGroup(a1);
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();
  if (a2[40] == 1)
  {
    WTF::operator<<();
  }

  else
  {
    WTF::TextStream::operator<<();
  }

  WTF::TextStream::endGroup(a1);
  return a1;
}

void WebKit::RemoteSampleBufferDisplayLayer::didReceiveMessage(WebKit::RemoteSampleBufferDisplayLayer *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  WebKit::RemoteSampleBufferDisplayLayer::sharedPreferencesForWebProcess(this, v27);
  if (v27[24] == 1 && (v27[12] & 2) != 0)
  {
    atomic_fetch_add(this + 4, 1u);
    v9 = *(a3 + 25);
    if (v9 <= 0x64A)
    {
      if (*(a3 + 25) > 0x647u)
      {
        switch(v9)
        {
          case 0x648u:
            WebKit::RemoteSampleBufferDisplayLayer::flush(this);
            goto LABEL_48;
          case 0x649u:
            WebKit::RemoteSampleBufferDisplayLayer::flushAndRemoveImage(this);
            goto LABEL_48;
          case 0x64Au:
            *(*(this + 10) + 152) = 1;
            goto LABEL_49;
        }

        goto LABEL_46;
      }

      if (v9 == 1606)
      {
        WebKit::RemoteSampleBufferDisplayLayer::clearVideoFrames(this);
        goto LABEL_48;
      }

      if (v9 != 1607)
      {
LABEL_46:
        v14 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v9 >= 0x107F)
          {
            v18 = 4223;
          }

          else
          {
            v18 = v9;
          }

          v19 = (&IPC::Detail::messageDescriptions)[3 * v18];
          v20 = *(a3 + 7);
          *buf = 136315394;
          v29 = v19;
          v30 = 2048;
          v31 = v20;
          _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
        }

        v15 = *a3;
        v16 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v17 = *(a3 + 3);
        if (v17 && v16)
        {
          (*(*v17 + 16))(v17, v15);
        }

        goto LABEL_48;
      }

      IPC::ArgumentCoder<std::tuple<WebKit::SharedVideoFrame>,void>::decode<IPC::Decoder>(a3, buf);
      if (v33 & 1) != 0 || (v21 = *a3, v22 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v23 = *(a3 + 3)) != 0) && v22 && ((*(*v23 + 16))(v23, v21), (v33))
      {
        WebKit::RemoteSampleBufferDisplayLayer::enqueueVideoFrame(this, buf);
        if ((v33 & 1) != 0 && v32[16] == 2)
        {
          v10 = v32;
LABEL_45:
          WTF::MachSendRight::~MachSendRight(v10);
        }
      }
    }

    else
    {
      if (*(a3 + 25) <= 0x64Du)
      {
        switch(v9)
        {
          case 0x64Bu:
            *(*(this + 10) + 152) = 0;
            goto LABEL_49;
          case 0x64Cu:
            IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
            if (v13)
            {
              WebCore::LocalSampleBufferDisplayLayer::setLogIdentifier(*(this + 10));
              goto LABEL_49;
            }

            goto LABEL_48;
          case 0x64Du:
            IPC::Decoder::decode<std::tuple<WebCore::SharedMemoryHandle>>(a3, buf);
            if (BYTE2(v31) != 1)
            {
              goto LABEL_48;
            }

            WebKit::RemoteSampleBufferDisplayLayer::setSharedVideoFrameMemory(this);
            if ((v31 & 0x10000) == 0)
            {
              goto LABEL_48;
            }

            goto LABEL_44;
        }

        goto LABEL_46;
      }

      switch(v9)
      {
        case 0x64Eu:
          IPC::ArgumentCoder<std::tuple<IPC::Semaphore>,void>::decode<IPC::Decoder>(a3, buf);
          if (BYTE4(v29) & 1) != 0 || (v24 = *a3, v25 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v26 = *(a3 + 3)) != 0) && v25 && ((*(*v26 + 16))(v26, v24), (BYTE4(v29)))
          {
            WebKit::RemoteSampleBufferDisplayLayer::setSharedVideoFrameSemaphore(this, buf);
            if (BYTE4(v29))
            {
              IPC::Semaphore::destroy(buf);
LABEL_44:
              v10 = buf;
              goto LABEL_45;
            }
          }

          break;
        case 0x64Fu:
          if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
          {
            WebKit::RemoteSampleBufferDisplayLayer::setShouldMaintainAspectRatio(this);
          }

          break;
        case 0x650u:
          if ((IPC::Decoder::decode<std::tuple<BOOL,BOOL>>(a3) & 0x10000) != 0)
          {
            WebKit::RemoteSampleBufferDisplayLayer::updateDisplayMode(this);
          }

          break;
        default:
          goto LABEL_46;
      }
    }

LABEL_48:
    if (!this)
    {
      return;
    }

LABEL_49:
    WTF::ThreadSafeRefCounted<WebKit::RemoteSampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref(this + 4);
    return;
  }

  v5 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a3 + 25);
    if (v11 >= 0x107F)
    {
      v11 = 4223;
    }

    v12 = (&IPC::Detail::messageDescriptions)[3 * v11];
    *buf = 136315138;
    v29 = v12;
    _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteSampleBufferDisplayLayer", buf, 0xCu);
  }

  v6 = *a3;
  v7 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v8 = *(a3 + 3);
  if (v8)
  {
    if (v7)
    {
      (*(*v8 + 16))(v8, v6);
    }
  }
}

atomic_uchar **WebKit::RemoteScrollingCoordinator::didReceiveMessage(WebKit::RemoteScrollingCoordinator *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = (this + 8);
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_6:
  v9 = *(a3 + 25);
  if (v9 <= 0x656)
  {
    if (*(a3 + 25) > 0x654u)
    {
      if (v9 == 1621)
      {
        if (IPC::Decoder::decode<WebCore::PlatformWheelEventPhase>(a3) >= 0x100u && IPC::Decoder::decode<WebCore::PlatformWheelEventPhase>(a3) > 0xFFu)
        {
          WebKit::RemoteScrollingCoordinator::receivedWheelEventWithPhases(this);
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingCoordinator,(WTF::DestructionThread)0>::deref(v6, v10);
        }

        goto LABEL_68;
      }

      if (v9 != 1622)
      {
        goto LABEL_67;
      }

      IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, v49);
      if (v49[16] != 1)
      {
        goto LABEL_68;
      }

      v13 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
      if ((v14 & 1) == 0)
      {
        goto LABEL_94;
      }

      v15 = v13;
      v16 = IPC::Decoder::decode<std::optional<WebCore::FloatPoint>>(a3);
      if ((v17 & 0x100000000) == 0)
      {
        goto LABEL_68;
      }

      v18 = v17;
      v19 = *(a3 + 1);
      v20 = *(a3 + 2);
      if (v19 <= &v20[-*a3])
      {
LABEL_85:
        *a3 = 0;
        *(a3 + 1) = 0;
        v46 = *(a3 + 3);
        if (v46)
        {
          if (v19)
          {
            (*(*v46 + 16))(v46);
            v19 = *(a3 + 1);
          }
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_87;
      }

      *(a3 + 2) = v20 + 1;
      if (!v20)
      {
LABEL_87:
        *a3 = 0;
        *(a3 + 1) = 0;
        v47 = *(a3 + 3);
        if (!v47)
        {
          v19 = 0;
          goto LABEL_89;
        }

        if (!v19)
        {
          goto LABEL_89;
        }

        (*(*v47 + 16))(v47);
LABEL_94:
        v19 = *(a3 + 1);
        goto LABEL_89;
      }

      v21 = *v20;
      if (v21 >= 2)
      {
        goto LABEL_89;
      }

      if (v49[16])
      {
        v22 = v16;
        *buf = *v49;
        *&buf[16] = v15;
        v53 = v16;
        v54 = v17;
        LOBYTE(v55) = v21;
        v56 = 1;
        v23 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v10)
        {
          v24 = v23;
          while (1)
          {
            v25 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v26 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v26, v25 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v26 == v25)
            {
              goto LABEL_71;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_71:
          v39 = WTF::fastMalloc(0x18);
          *v39 = &unk_1F10F2BB8;
          v39[1] = v24;
          v39[2] = a2;
          *v49 = v39;
          WebKit::RemoteScrollingCoordinator::scrollPositionChangedForNode(this, *buf, *&buf[8], &buf[16], v22, v18, v21 & 1, v49);
          v40 = *v49;
          *v49 = 0;
          if (v40)
          {
            (*(*v40 + 8))(v40);
          }
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingCoordinator,(WTF::DestructionThread)0>::deref(v6, v10);
      }
    }

    else
    {
      if (v9 == 1619)
      {
        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, buf);
        if (buf[16])
        {
          LOBYTE(v54) = 0;
          *&buf[16] = 0;
          LOBYTE(v53) = 0;
          v55 = 514;
          WebCore::AsyncScrollingCoordinator::applyScrollUpdate();
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingCoordinator,(WTF::DestructionThread)0>::deref(v6, v10);
        }

        goto LABEL_68;
      }

      if (v9 != 1620)
      {
        goto LABEL_67;
      }

      IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, buf);
      if (buf[16] != 1)
      {
        goto LABEL_68;
      }

      IPC::Decoder::decode<std::optional<unsigned int>>(a3);
      if ((v11 & 1) == 0)
      {
        goto LABEL_68;
      }

      IPC::Decoder::decode<std::optional<unsigned int>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_68;
      }

      if (buf[16])
      {
        WebKit::RemoteScrollingCoordinator::currentSnapPointIndicesChangedForNode();
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingCoordinator,(WTF::DestructionThread)0>::deref(v6, v10);
      }
    }

LABEL_79:
    __break(1u);
  }

  if (*(a3 + 25) <= 0x658u)
  {
    if (v9 == 1623)
    {
      IPC::ArgumentCoder<WebKit::RemoteScrollingUIState,void>::decode(a3, buf);
      if ((v54 & 1) == 0)
      {
        v10 = *a3;
        v44 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v45 = *(a3 + 3);
        if (!v45 || !v44)
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingCoordinator,(WTF::DestructionThread)0>::deref(v6, v10);
        }

        (*(*v45 + 16))(v45, v10);
        if ((v54 & 1) == 0)
        {
          v10 = *a3;
          v36 = *(a3 + 1);
          v37 = *(a3 + 3);
          *a3 = 0;
          *(a3 + 1) = 0;
          if (!v37)
          {
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingCoordinator,(WTF::DestructionThread)0>::deref(v6, v10);
          }

LABEL_83:
          if (v36)
          {
            (*(*v37 + 16))(v37, v10);
          }

          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingCoordinator,(WTF::DestructionThread)0>::deref(v6, v10);
        }
      }

      v49[0] = buf[0];
      *&v49[8] = *&buf[8];
      v50 = v53;
      v51 = 1;
      WebKit::RemoteScrollingCoordinator::scrollingStateInUIProcessChanged(this, v49);
      if (v51)
      {
        if (v50)
        {
          WTF::fastFree((v50 - 16), v10);
        }

        if (*&v49[16])
        {
          WTF::fastFree((*&v49[16] - 16), v10);
        }

        if (*&v49[8])
        {
          WTF::fastFree((*&v49[8] - 16), v10);
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingCoordinator,(WTF::DestructionThread)0>::deref(v6, v10);
    }

    if (v9 != 1624)
    {
LABEL_67:
      v35 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v9 >= 0x107F)
        {
          v41 = 4223;
        }

        else
        {
          v41 = v9;
        }

        v42 = (&IPC::Detail::messageDescriptions)[3 * v41];
        v43 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v42;
        *&buf[12] = 2048;
        *&buf[14] = v43;
        _os_log_error_impl(&dword_19D52D000, v35, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_68;
    }

    IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, buf);
    if (buf[16] != 1)
    {
      goto LABEL_68;
    }

    v27 = IPC::Decoder::decode<WebCore::ScrollbarOrientation>(a3);
    if (v27 < 0x100u)
    {
      goto LABEL_68;
    }

    v19 = *(a3 + 1);
    v28 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v29 = v28 - *a3;
    v30 = v19 >= v29;
    v31 = v19 - v29;
    if (!v30 || v31 <= 3)
    {
      goto LABEL_87;
    }

    *(a3 + 2) = v28 + 1;
    if (!v28)
    {
      goto LABEL_89;
    }

    if (buf[16])
    {
      WebKit::RemoteScrollingCoordinator::scrollingTreeNodeScrollbarMinimumThumbLengthDidChange(this, *buf, *&buf[8], v27, *v28);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingCoordinator,(WTF::DestructionThread)0>::deref(v6, v10);
    }

    goto LABEL_79;
  }

  if (v9 == 1625)
  {
    IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, buf);
    if (buf[16] != 1)
    {
      goto LABEL_68;
    }

    v32 = IPC::Decoder::decode<WebCore::ScrollbarOrientation>(a3);
    if (v32 < 0x100u)
    {
      goto LABEL_68;
    }

    v19 = *(a3 + 1);
    v33 = *(a3 + 2);
    if (v19 > &v33[-*a3])
    {
      *(a3 + 2) = v33 + 1;
      if (v33)
      {
        v34 = *v33;
        if (v34 < 2)
        {
          if (buf[16])
          {
            WebKit::RemoteScrollingCoordinator::scrollingTreeNodeScrollbarVisibilityDidChange(this, *buf, *&buf[8], v32, v34 & 1);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingCoordinator,(WTF::DestructionThread)0>::deref(v6, v10);
          }

          goto LABEL_79;
        }

LABEL_89:
        *a3 = 0;
        *(a3 + 1) = 0;
        v48 = *(a3 + 3);
        if (v48 && v19)
        {
          (*(*v48 + 16))(v48);
        }

LABEL_68:
        v10 = *a3;
        v36 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v37 = *(a3 + 3);
        if (!v37)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingCoordinator,(WTF::DestructionThread)0>::deref(v6, v10);
        }

        goto LABEL_83;
      }

      goto LABEL_87;
    }

    goto LABEL_85;
  }

  if (v9 != 1626)
  {
    if (v9 == 1627)
    {
      IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebCore::WheelEventTestMonitorDeferReason>>>(buf, a3);
      if (v53 == 1)
      {
        WebKit::RemoteScrollingCoordinator::stopDeferringScrollingTestCompletionForNode(this);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingCoordinator,(WTF::DestructionThread)0>::deref(v6, v10);
    }

    goto LABEL_67;
  }

  IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebCore::WheelEventTestMonitorDeferReason>>>(buf, a3);
  if (v53 == 1)
  {
    WebKit::RemoteScrollingCoordinator::startDeferringScrollingTestCompletionForNode(this);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingCoordinator,(WTF::DestructionThread)0>::deref(v6, v10);
}

atomic_uchar **WebKit::RemoteSharedResourceCache::didReceiveMessage(atomic_uint *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = this + 4;
  atomic_fetch_add(this + 4, 1u);
  v6 = *(a3 + 25);
  if (v6 == 1631)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v8)
    {
      result = WebKit::RemoteSharedResourceCache::releaseSerializedImageBuffer(this, v7);
      goto LABEL_6;
    }
  }

  else
  {
    v10 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v6 >= 0x107F)
      {
        v13 = 4223;
      }

      else
      {
        v13 = v6;
      }

      v14 = (&IPC::Detail::messageDescriptions)[3 * v13];
      v15 = *(a3 + 7);
      v16 = 136315394;
      v17 = v14;
      v18 = 2048;
      v19 = v15;
      _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &v16, 0x16u);
    }
  }

  v11 = *a3;
  v12 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = *(a3 + 3);
  if (result && v12)
  {
    result = (*(*result + 2))(result, v11);
  }

LABEL_6:
  if (this)
  {
    return WTF::ThreadSafeRefCounted<WebKit::RemoteSharedResourceCache,(WTF::DestructionThread)0>::deref(v5);
  }

  return result;
}

atomic_uchar **WebKit::RemoteSourceBufferProxy::didReceiveMessage(WebKit::RemoteSourceBufferProxy *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v104 = *MEMORY[0x1E69E9840];
  WebKit::RemoteCDMFactoryProxy::sharedPreferencesForWebProcess(this, v94);
  if (v94[24] == 1 && (v94[13] & 0x44) != 0)
  {
    v6 = (this + 8);
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
        goto LABEL_12;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_12:
    v13 = *(a3 + 25);
    switch(*(a3 + 25))
    {
      case 0x660:
        WebKit::RemoteSourceBufferProxy::abort(this);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x661:
        v42 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
        if (v14)
        {
          WebKit::RemoteSourceBufferProxy::addTrackBuffer(this, v42);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x662:
        IPC::ArgumentCoder<std::tuple<IPC::SharedBufferReference>,void>::decode<IPC::Decoder>(a3, buf);
        if ((buf[24] & 1) == 0)
        {
          goto LABEL_150;
        }

        goto LABEL_51;
      case 0x663:
        IPC::Decoder::decode<std::tuple<unsigned long long,WTF::MediaTime>>(buf, a3);
        if (buf[24] == 1)
        {
          WebKit::RemoteSourceBufferProxy::asyncEvictCodedFrames(this, *buf, &buf[8]);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x664:
        WebKit::RemoteSourceBufferProxy::attach(this);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x665:
        v56 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
        if ((v14 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
        }

        v57 = v56;
        v58 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v14 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
        }

        v59 = v58;
        while (1)
        {
          v60 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v61 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v61, v60 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v61 == v60)
          {
            goto LABEL_135;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_135:
        v76 = WTF::fastMalloc(0x18);
        *v76 = &unk_1F10F2C80;
        v76[1] = v59;
        v76[2] = a2;
        *buf = v76;
        WebKit::RemoteSourceBufferProxy::bufferedSamplesForTrackId(this, v57, buf);
        goto LABEL_136;
      case 0x666:
        WebKit::RemoteSourceBufferProxy::clearTrackBuffers(this);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x667:
        IPC::ArgumentCoder<std::tuple<WebCore::SeekTarget>,void>::decode<IPC::Decoder>(a3, buf);
        if ((v103 & 1) == 0)
        {
          v14 = *a3;
          v84 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v85 = *(a3 + 3);
          if (!v85)
          {
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
          }

          if (!v84)
          {
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
          }

          (*(*v85 + 16))(v85, v14);
          if ((v103 & 1) == 0)
          {
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
          }
        }

        v39 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v14 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
        }

        a3 = v39;
        while (1)
        {
          v40 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v41 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v41, v40 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v41 == v40)
          {
            goto LABEL_126;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_126:
        v72 = WTF::fastMalloc(0x18);
        *v72 = &unk_1F10F2C58;
        *(v72 + 1) = a3;
        *(v72 + 2) = a2;
        v99[0] = v72;
        if ((v103 & 1) == 0)
        {
LABEL_149:
          while (1)
          {
            __break(1u);
LABEL_150:
            v14 = *a3;
            v82 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v83 = *(a3 + 3);
            if (!v83)
            {
              break;
            }

            if (!v82)
            {
              break;
            }

            (*(*v83 + 16))(v83, v14);
            if ((buf[24] & 1) == 0)
            {
              break;
            }

LABEL_51:
            v36 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if ((v14 & 1) == 0)
            {
              break;
            }

            a3 = v36;
            while (1)
            {
              v37 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v38 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v38, v37 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v38 == v37)
              {
                goto LABEL_116;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_116:
            v68 = WTF::fastMalloc(0x18);
            *v68 = &unk_1F10F2BE0;
            *(v68 + 1) = a3;
            *(v68 + 2) = a2;
            v99[0] = v68;
            if (buf[24])
            {
              WebKit::RemoteSourceBufferProxy::append(this, buf, v99);
              v69 = v99[0];
              v99[0] = 0;
              if (v69)
              {
                (*(*v69 + 8))(v69);
              }

              break;
            }
          }

          if (buf[24] == 1)
          {
            v70 = *&buf[16];
            *&buf[16] = 0;
            if (v70)
            {
              WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v70);
            }

            v71 = *&buf[8];
            *&buf[8] = 0;
            if (v71 && atomic_fetch_add(v71 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v71 + 2);
              (*(*v71 + 8))(v71);
            }
          }

          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
        }

        WebKit::RemoteSourceBufferProxy::computeSeekTime(this, buf, v99);
        v73 = v99[0];
        v99[0] = 0;
        if (!v73)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
        }

        goto LABEL_128;
      case 0x668:
        WebKit::RemoteSourceBufferProxy::detach(this);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x669:
        v24 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
        if ((v14 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
        }

        v25 = v24;
        v26 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v14 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
        }

        v27 = v26;
        while (1)
        {
          v28 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v29 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v29, v28 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v29 == v28)
          {
            goto LABEL_130;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_130:
        v74 = WTF::fastMalloc(0x18);
        *v74 = &unk_1F10F2CA8;
        v74[1] = v27;
        v74[2] = a2;
        *buf = v74;
        WebKit::RemoteSourceBufferProxy::enqueuedSamplesForTrackID(this, v25, buf);
LABEL_136:
        v73 = *buf;
        *buf = 0;
        if (v73)
        {
          goto LABEL_128;
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x66A:
        IPC::Decoder::decode<std::tuple<WTF::MediaTime>>(a3, buf);
        if (buf[16] == 1)
        {
          WebKit::RemoteSourceBufferProxy::memoryPressure(this, buf);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x66B:
        IPC::Decoder::decode<std::tuple<WTF::MediaTime>>(a3, buf);
        if (buf[16] == 1)
        {
          WebKit::RemoteSourceBufferProxy::reenqueueMediaIfNeeded(this, buf);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x66C:
        IPC::Decoder::decode<WTF::MediaTime>(a3, &v95);
        if ((v96 & 1) == 0)
        {
          goto LABEL_103;
        }

        IPC::Decoder::decode<WTF::MediaTime>(a3, &v97);
        if ((v98 & 1) == 0)
        {
          goto LABEL_103;
        }

        IPC::Decoder::decode<WTF::MediaTime>(a3, v99);
        if (v100 != 1)
        {
          goto LABEL_103;
        }

        if ((v96 & 1) == 0 || (v98 & 1) == 0)
        {
          goto LABEL_149;
        }

        *buf = v95;
        *&buf[16] = v97;
        v102 = *v99;
        v103 = 1;
        v20 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v14 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
        }

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
            goto LABEL_139;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_139:
        v77 = WTF::fastMalloc(0x18);
        *v77 = &unk_1F10F2C08;
        *(v77 + 1) = v21;
        *(v77 + 2) = a2;
        v99[0] = v77;
        WebKit::RemoteSourceBufferProxy::removeCodedFrames(this, buf, &buf[16], &v102, v99);
        v73 = v99[0];
        v99[0] = 0;
        if (v73)
        {
          goto LABEL_128;
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x66D:
        WebKit::RemoteSourceBufferProxy::removedFromMediaSource(this);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x66E:
        WebKit::RemoteSourceBufferProxy::resetParserState(this);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x66F:
        WebKit::RemoteSourceBufferProxy::resetTimestampOffsetInTrackBuffers(this);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x670:
        WebKit::RemoteSourceBufferProxy::resetTrackBuffers(this);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x671:
        IPC::Decoder::decode<std::tuple<WTF::MediaTime>>(a3, buf);
        if (buf[16] == 1)
        {
          WebKit::RemoteSourceBufferProxy::seekToTime(this, buf);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x672:
        v62 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((v62 & 0x100) != 0)
        {
          WebKit::RemoteSourceBufferProxy::setActive(this, v62 & 1);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x673:
        WebKit::RemoteSourceBufferProxy::setAllTrackBuffersNeedRandomAccess(this);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x674:
        IPC::Decoder::decode<std::tuple<WTF::MediaTime>>(a3, buf);
        if (buf[16] == 1)
        {
          WebKit::RemoteSourceBufferProxy::setAppendWindowEnd(this, buf);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x675:
        IPC::Decoder::decode<std::tuple<WTF::MediaTime>>(a3, buf);
        if (buf[16] == 1)
        {
          WebKit::RemoteSourceBufferProxy::setAppendWindowStart(this, buf);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x676:
        IPC::Decoder::decode<std::tuple<WTF::MediaTime>>(a3, buf);
        if (buf[16] == 1)
        {
          WebKit::RemoteSourceBufferProxy::setGroupStartTimestamp(this, buf);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x677:
        WebKit::RemoteSourceBufferProxy::setGroupStartTimestampToEndTimestamp(this);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x678:
        v30 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
        if ((v14 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
        }

        v31 = v30;
        v32 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v14 & 1) == 0)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
        }

        v33 = v32;
        while (1)
        {
          v34 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v35 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v35, v34 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v35 == v34)
          {
            goto LABEL_132;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_132:
        v75 = WTF::fastMalloc(0x18);
        *v75 = &unk_1F10F2C30;
        v75[1] = v33;
        v75[2] = a2;
        *buf = v75;
        WebKit::RemoteSourceBufferProxy::setMaximumBufferSize(this, v31, buf);
        v73 = *buf;
        *buf = 0;
        if (v73)
        {
LABEL_128:
          (*(*v73 + 8))(v73);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x679:
        IPC::Decoder::decode<std::tuple<unsigned long long,unsigned long long>>(a3, buf);
        if (buf[16] == 1)
        {
          WebKit::RemoteSourceBufferProxy::setMaximumQueueDepthForTrackID(this, *buf, *&buf[8]);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x67A:
        v67 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((v67 & 0x100) != 0)
        {
          WebKit::RemoteSourceBufferProxy::setMediaSourceEnded(this, v67 & 1);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x67B:
        v17 = *(a3 + 1);
        v18 = *(a3 + 2);
        v14 = *a3;
        if (v17 <= &v18[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v93 = *(a3 + 3);
          if (v93)
          {
            if (v17)
            {
              (*(*v93 + 16))(v93);
              v17 = *(a3 + 1);
            }
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v18 + 1;
          if (v18)
          {
            v19 = *v18;
            if (v19 >= 2)
            {
              goto LABEL_170;
            }

            WebKit::RemoteSourceBufferProxy::setMode(this, v19);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v92 = *(a3 + 3);
        if (v92)
        {
          if (v17)
          {
LABEL_183:
            (*(*v92 + 16))(v92);
LABEL_169:
            v14 = *a3;
            v17 = *(a3 + 1);
LABEL_170:
            *a3 = 0;
            *(a3 + 1) = 0;
            v90 = *(a3 + 3);
            if (v90)
            {
              if (v17)
              {
                (*(*v90 + 16))(v90, v14);
                v14 = *a3;
                v64 = *(a3 + 1);
                v65 = *(a3 + 3);
                *a3 = 0;
                *(a3 + 1) = 0;
                if (v65)
                {
LABEL_175:
                  if (v64)
                  {
                    (*(*v65 + 16))(v65, v14);
                  }
                }
              }
            }

            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
          }
        }

        else
        {
          v17 = 0;
        }

        v14 = 0;
        goto LABEL_170;
      case 0x67C:
        v66 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((v66 & 0x100) != 0)
        {
          WebKit::RemoteSourceBufferProxy::setShouldGenerateTimestamps(this, v66 & 1);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x67D:
        IPC::Decoder::decode<std::tuple<WTF::MediaTime>>(a3, buf);
        if (buf[16] == 1)
        {
          WebKit::RemoteSourceBufferProxy::setTimestampOffset(this, buf);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x67E:
        WebKit::RemoteSourceBufferProxy::startChangingType(this);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
      case 0x67F:
        v43 = *(a3 + 1);
        v44 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
        v45 = v44 - *a3;
        v46 = v43 >= v45;
        v47 = v43 - v45;
        if (v46 && v47 > 7)
        {
          *(a3 + 2) = v44 + 1;
          if (v44)
          {
            v49 = *v44;
            v99[0] = 0;
            v99[1] = 0;
            if (v49 >= 0x10000)
            {
              v86 = 0;
              LODWORD(v87) = 0;
              do
              {
                IPC::Decoder::decode<std::pair<unsigned long long,unsigned long long>>(buf, a3);
                if (buf[16] != 1)
                {
                  v50 = v99[0];
                  if (!v99[0])
                  {
                    goto LABEL_169;
                  }

LABEL_168:
                  v99[0] = 0;
                  LODWORD(v99[1]) = 0;
                  WTF::fastFree(v50, v52);
                  goto LABEL_169;
                }

                if (v87 == LODWORD(v99[1]))
                {
                  v88 = WTF::Vector<std::pair<unsigned long long,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v99, v87 + 1, buf);
                  v89 = HIDWORD(v99[1]);
                  v86 = v99[0];
                  *(v99[0] + HIDWORD(v99[1])) = *v88;
                }

                else
                {
                  *(v86 + v87) = *buf;
                  v89 = HIDWORD(v99[1]);
                }

                v87 = (v89 + 1);
                HIDWORD(v99[1]) = v89 + 1;
                --v49;
              }

              while (v49);
              if (LODWORD(v99[1]) > v87)
              {
                if (v89 == -1)
                {
                  v99[0] = 0;
                  LODWORD(v99[1]) = 0;
                  WTF::fastFree(v86, v52);
                }

                else
                {
                  LODWORD(v99[1]) = v89 + 1;
                  v99[0] = WTF::fastRealloc(v86, (16 * v87));
                }
              }

              v50 = v99[0];
              v55 = v99[1];
              v51 = HIDWORD(v99[1]);
            }

            else if (v49)
            {
              v50 = WTF::fastMalloc((16 * v49));
              v51 = 0;
              LODWORD(v99[1]) = v49;
              v99[0] = v50;
              do
              {
                IPC::Decoder::decode<std::pair<unsigned long long,unsigned long long>>(buf, a3);
                if (buf[16] != 1)
                {
                  goto LABEL_168;
                }

                if (v51 == LODWORD(v99[1]))
                {
                  v53 = WTF::Vector<std::pair<unsigned long long,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v99, v51 + 1, buf);
                  v54 = HIDWORD(v99[1]);
                  v50 = v99[0];
                  *(v99[0] + HIDWORD(v99[1])) = *v53;
                }

                else
                {
                  *(v50 + v51) = *buf;
                  v54 = HIDWORD(v99[1]);
                }

                v51 = v54 + 1;
                HIDWORD(v99[1]) = v54 + 1;
                --v49;
              }

              while (v49);
              v55 = v99[1];
            }

            else
            {
              v51 = 0;
              v55 = 0;
              v50 = 0;
            }

            *buf = v50;
            *&buf[8] = v55;
            *&buf[12] = v51;
            buf[16] = 1;
            WebKit::RemoteSourceBufferProxy::updateTrackIds(this, buf);
            if (buf[16])
            {
              v78 = *buf;
              if (*buf)
              {
                *buf = 0;
                *&buf[8] = 0;
                WTF::fastFree(v78, v14);
              }
            }

            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
          }
        }

        else
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v91 = *(a3 + 3);
          if (v91)
          {
            if (v43)
            {
              (*(*v91 + 16))(v91);
              v43 = *(a3 + 1);
            }
          }

          else
          {
            v43 = 0;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v92 = *(a3 + 3);
        if (!v92 || !v43)
        {
          goto LABEL_169;
        }

        goto LABEL_183;
      default:
        v63 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v13 >= 0x107F)
          {
            v79 = 4223;
          }

          else
          {
            v79 = v13;
          }

          v80 = (&IPC::Detail::messageDescriptions)[3 * v79];
          v81 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v80;
          *&buf[12] = 2048;
          *&buf[14] = v81;
          _os_log_error_impl(&dword_19D52D000, v63, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
        }

LABEL_103:
        v14 = *a3;
        v64 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v65 = *(a3 + 3);
        if (v65)
        {
          goto LABEL_175;
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v6, v14);
    }
  }

  v9 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a3 + 25);
    if (v15 >= 0x107F)
    {
      v15 = 4223;
    }

    v16 = (&IPC::Detail::messageDescriptions)[3 * v15];
    *buf = 136315138;
    *&buf[4] = v16;
    _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteSourceBufferProxy", buf, 0xCu);
  }

  v10 = *a3;
  v11 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = *(a3 + 3);
  if (result && v11)
  {
    return (*(*result + 2))(result, v10);
  }

  return result;
}

uint64_t WebKit::RemoteSourceBufferProxy::didReceiveSyncMessage(WebKit::RemoteCDMFactoryProxy *a1, atomic_ullong *a2, uint64_t a3, uint64_t *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  WebKit::RemoteCDMFactoryProxy::sharedPreferencesForWebProcess(a1, v48);
  if (v48[24] == 1 && (v48[13] & 0x44) != 0)
  {
    v8 = (a1 + 8);
    while (1)
    {
      v9 = *v8;
      if ((*v8 & 1) == 0)
      {
        break;
      }

      v10 = *v8;
      atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_11;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_11:
    v16 = *(a3 + 50);
    switch(v16)
    {
      case 0x101Eu:
        v24 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
        if ((v20 & 1) == 0)
        {
          goto LABEL_45;
        }

        v25 = v24;
        v26 = *a4;
        *a4 = 0;
        while (1)
        {
          v27 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v28 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v28, v27 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v28 == v27)
          {
            goto LABEL_43;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_43:
        v37 = WTF::fastMalloc(0x18);
        *v37 = &unk_1F10F2D20;
        v37[1] = v26;
        v37[2] = a2;
        *buf = v37;
        WebKit::RemoteSourceBufferProxy::minimumUpcomingPresentationTimeForTrackID(a1, v25, buf);
        v36 = *buf;
        *buf = 0;
        if (!v36)
        {
          goto LABEL_45;
        }

        break;
      case 0x101Du:
        IPC::Decoder::decode<std::tuple<unsigned long long,WTF::MediaTime>>(buf, a3);
        if (v55 != 1)
        {
          goto LABEL_45;
        }

        v21 = *a4;
        *a4 = 0;
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
            goto LABEL_40;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_40:
        v35 = WTF::fastMalloc(0x18);
        *v35 = &unk_1F10F2CF8;
        *(v35 + 1) = v21;
        *(v35 + 2) = a2;
        v49 = v35;
        WebKit::RemoteSourceBufferProxy::evictCodedFrames(a1, *buf, &buf[8], &v49);
        v36 = v49;
        v49 = 0;
        if (!v36)
        {
          goto LABEL_45;
        }

        break;
      case 0x101Cu:
        IPC::ArgumentCoder<WebCore::ContentType,void>::decode(a3, buf);
        if ((v54 & 0x10000) != 0)
        {
          goto LABEL_15;
        }

        v20 = *a3;
        v44 = *(a3 + 8);
        *a3 = 0;
        *(a3 + 8) = 0;
        v45 = *(a3 + 24);
        if (v45 && v44)
        {
          (*(*v45 + 16))(v45, v20);
          if ((v54 & 0x10000) != 0)
          {
LABEL_15:
            v49 = *buf;
            v50 = buf[8];
            v51 = 1;
            v17 = *a4;
            *a4 = 0;
            while (1)
            {
              v18 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v19 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v19 == v18)
              {
                goto LABEL_33;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_33:
            v32 = WTF::fastMalloc(0x18);
            *v32 = &unk_1F10F2CD0;
            v32[1] = v17;
            v32[2] = a2;
            *buf = v32;
            WebKit::RemoteSourceBufferProxy::canSwitchToType(a1, &v49, buf);
            v33 = *buf;
            *buf = 0;
            if (v33)
            {
              (*(*v33 + 8))(v33);
            }

            if (v51)
            {
              v34 = v49;
              v49 = 0;
              if (v34)
              {
                if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v34, v20);
                }
              }
            }

            goto LABEL_45;
          }

          v20 = *a3;
          v46 = *(a3 + 8);
          v47 = *(a3 + 24);
          *a3 = 0;
          *(a3 + 8) = 0;
          if (v47 && v46)
          {
            (*(*v47 + 16))(v47, v20);
          }
        }

        else
        {
          *a3 = 0;
          *(a3 + 8) = 0;
        }

LABEL_45:
        v15 = 1;
LABEL_46:
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(v8, v20);
        return v15;
      default:
        v29 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v16 >= 0x107F)
          {
            v41 = 4223;
          }

          else
          {
            v41 = v16;
          }

          v42 = (&IPC::Detail::messageDescriptions)[3 * v41];
          v43 = *(a3 + 56);
          *buf = 136315394;
          *&buf[4] = v42;
          v53 = 2048;
          v54 = v43;
          _os_log_error_impl(&dword_19D52D000, v29, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
        }

        v20 = *a3;
        v30 = *(a3 + 8);
        *a3 = 0;
        *(a3 + 8) = 0;
        v31 = *(a3 + 24);
        if (v31 && v30)
        {
          (*(*v31 + 16))(v31, v20);
        }

        v15 = 0;
        goto LABEL_46;
    }

    (*(*v36 + 8))(v36);
    goto LABEL_45;
  }

  v11 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v39 = *(a3 + 50);
    if (v39 >= 0x107F)
    {
      v39 = 4223;
    }

    v40 = (&IPC::Detail::messageDescriptions)[3 * v39];
    *buf = 136315138;
    *&buf[4] = v40;
    _os_log_error_impl(&dword_19D52D000, v11, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteSourceBufferProxy", buf, 0xCu);
  }

  v12 = *a3;
  v13 = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  v14 = *(a3 + 24);
  if (v14 && v13)
  {
    (*(*v14 + 16))(v14, v12);
  }

  return 0;
}

_DWORD *WebKit::RemoteWebInspectorUI::didReceiveMessage(WebKit::RemoteWebInspectorUI *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = (this + 16);
  ++*(this + 4);
  v6 = *(a3 + 25);
  if (v6 > 0x6A2)
  {
    if (v6 == 1699)
    {
      WebKit::RemoteWebInspectorUI::showConsole(this);
      return WTF::RefCounted<WebKit::RemoteWebInspectorUI>::deref(v5, v8);
    }

    if (v6 == 1700)
    {
      WebKit::RemoteWebInspectorUI::showResources(this);
      return WTF::RefCounted<WebKit::RemoteWebInspectorUI>::deref(v5, v8);
    }

    if (v6 != 1701)
    {
LABEL_36:
      v18 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v6 >= 0x107F)
        {
          v22 = 4223;
        }

        else
        {
          v22 = v6;
        }

        v23 = (&IPC::Detail::messageDescriptions)[3 * v22];
        v24 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v23;
        *&buf[12] = 2048;
        *&buf[14] = v24;
        _os_log_error_impl(&dword_19D52D000, v18, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_37;
    }

    IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
    if ((buf[8] & 1) == 0)
    {
      v8 = *a3;
      v25 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v26 = *(a3 + 3);
      if (!v26)
      {
        return WTF::RefCounted<WebKit::RemoteWebInspectorUI>::deref(v5, v8);
      }

      if (!v25)
      {
        return WTF::RefCounted<WebKit::RemoteWebInspectorUI>::deref(v5, v8);
      }

      (*(*v26 + 16))(v26, v8);
      if ((buf[8] & 1) == 0)
      {
        return WTF::RefCounted<WebKit::RemoteWebInspectorUI>::deref(v5, v8);
      }
    }

    WebKit::RemoteWebInspectorUI::updateFindString(this, buf);
    goto LABEL_42;
  }

  if (v6 != 1696)
  {
    if (v6 != 1697)
    {
      if (v6 == 1698)
      {
        v7 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((v7 & 0x100) != 0)
        {
          WebKit::RemoteWebInspectorUI::setDiagnosticLoggingAvailable(this, v7 & 1);
        }

        return WTF::RefCounted<WebKit::RemoteWebInspectorUI>::deref(v5, v8);
      }

      goto LABEL_36;
    }

    IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
    if ((buf[8] & 1) == 0)
    {
      v8 = *a3;
      v27 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v28 = *(a3 + 3);
      if (!v28)
      {
        return WTF::RefCounted<WebKit::RemoteWebInspectorUI>::deref(v5, v8);
      }

      if (!v27)
      {
        return WTF::RefCounted<WebKit::RemoteWebInspectorUI>::deref(v5, v8);
      }

      (*(*v28 + 16))(v28, v8);
      if ((buf[8] & 1) == 0)
      {
        return WTF::RefCounted<WebKit::RemoteWebInspectorUI>::deref(v5, v8);
      }
    }

    WebKit::RemoteWebInspectorUI::sendMessageToFrontend(this, buf);
LABEL_42:
    if ((buf[8] & 1) == 0)
    {
      return WTF::RefCounted<WebKit::RemoteWebInspectorUI>::deref(v5, v8);
    }

    v17 = *buf;
    *buf = 0;
    if (!v17)
    {
      return WTF::RefCounted<WebKit::RemoteWebInspectorUI>::deref(v5, v8);
    }

LABEL_44:
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v8);
    }

    return WTF::RefCounted<WebKit::RemoteWebInspectorUI>::deref(v5, v8);
  }

  IPC::ArgumentCoder<WebKit::DebuggableInfoData,void>::decode(a3, v35);
  if ((v39 & 1) == 0)
  {
    v29 = *a3;
    v30 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v31 = *(a3 + 3);
    if (!v31 || !v30 || ((*(*v31 + 16))(v31, v29), (v39 & 1) == 0))
    {
LABEL_37:
      v8 = *a3;
      v19 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v20 = *(a3 + 3);
      if (v20 && v19)
      {
        (*(*v20 + 16))(v20, v8);
      }

      return WTF::RefCounted<WebKit::RemoteWebInspectorUI>::deref(v5, v8);
    }
  }

  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v40);
  if (v41 & 1) != 0 || (v9 = *a3, v32 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v33 = *(a3 + 3)) != 0) && v32 && ((*(*v33 + 16))(v33, v9), (v41))
  {
    if ((v39 & 1) == 0)
    {
      __break(1u);
    }

    buf[0] = v35[0];
    v10 = *v36;
    v36[0] = 0;
    v36[1] = 0;
    *&buf[8] = v10;
    v43 = v37;
    v44 = v38;
    v45 = v40;
    v11 = 1;
    v46 = 1;
    v37 = 0;
  }

  else
  {
    buf[0] = 0;
    v46 = 0;
    if ((v39 & 1) == 0)
    {
      goto LABEL_37;
    }

    v34 = v37;
    v37 = 0;
    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v9);
    }

    v11 = 0;
  }

  v12 = v36[1];
  v36[1] = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  v13 = v36[0];
  v36[0] = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v9);
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_37;
  }

  WebKit::RemoteWebInspectorUI::initialize(this, buf, &v45);
  if (v46)
  {
    v14 = v45;
    v45 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v8);
    }

    v15 = v43;
    v43 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v8);
    }

    v16 = *&buf[16];
    *&buf[16] = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v8);
    }

    v17 = *&buf[8];
    *&buf[8] = 0;
    if (v17)
    {
      goto LABEL_44;
    }
  }

  return WTF::RefCounted<WebKit::RemoteWebInspectorUI>::deref(v5, v8);
}

atomic_ullong *WebKit::SampleBufferDisplayLayer::didReceiveMessage(WebKit::SampleBufferDisplayLayer *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v22 = *MEMORY[0x1E69E9840];
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
  if (v8 == 1714)
  {
    v9 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    if ((v9 & 0x100) != 0)
    {
      WebKit::SampleBufferDisplayLayer::setDidFail(this, v9 & 1);
    }
  }

  else
  {
    v10 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v8 >= 0x107F)
      {
        v15 = 4223;
      }

      else
      {
        v15 = v8;
      }

      v16 = (&IPC::Detail::messageDescriptions)[3 * v15];
      v17 = *(a3 + 7);
      v18 = 136315394;
      v19 = v16;
      v20 = 2048;
      v21 = v17;
      _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &v18, 0x16u);
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
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref(v5);
}

void WebKit::SecItemShimProxy::didReceiveMessage(WebKit::SecItemShimProxy *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 25);
  if (v4 == 1715)
  {
    IPC::Decoder::decode<std::tuple<WebKit::SecItemRequestData>>(buf, a3);
    if (v26 == 1)
    {
      v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v8 & 1) == 0)
      {
        goto LABEL_16;
      }

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
          goto LABEL_13;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_13:
      v16 = WTF::fastMalloc(0x18);
      *v16 = &unk_1F10F2D48;
      v16[1] = v9;
      v16[2] = a2;
      v23 = v16;
      WebKit::SecItemShimProxy::secItemRequest(this, a2, buf, &v23);
      v17 = v23;
      v23 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      if (v26)
      {
LABEL_16:
        v18 = *&v25[12];
        *&v25[12] = 0;
        if (v18)
        {
          CFRelease(v18);
        }

        v19 = *&v25[4];
        *&v25[4] = 0;
        if (v19)
        {
          CFRelease(v19);
        }
      }
    }
  }

  else
  {
    v12 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v4 >= 0x107F)
      {
        v20 = 4223;
      }

      else
      {
        v20 = v4;
      }

      v21 = (&IPC::Detail::messageDescriptions)[3 * v20];
      v22 = *(a3 + 7);
      *buf = 136315394;
      *v25 = v21;
      *&v25[8] = 2048;
      *&v25[10] = v22;
      _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    v13 = *a3;
    v14 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v15 = *(a3 + 3);
    if (v15 && v14)
    {
      (*(*v15 + 16))(v15, v13);
    }
  }
}

BOOL WebKit::SecItemShimProxy::didReceiveSyncMessage(uint64_t a1, atomic_ullong *a2, uint64_t a3, uint64_t *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 50);
  if (v5 == 4129)
  {
    IPC::Decoder::decode<std::tuple<WebKit::SecItemRequestData>>(buf, a3);
    if (v27 == 1)
    {
      v9 = *a4;
      *a4 = 0;
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
          goto LABEL_12;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_12:
      v16 = WTF::fastMalloc(0x18);
      *v16 = &unk_1F10F2D70;
      v16[1] = v9;
      v16[2] = a2;
      v24 = v16;
      WebKit::SecItemShimProxy::secItemRequestSync(a1, a2, buf, &v24);
      v17 = v24;
      v24 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      if (v27)
      {
        v18 = *&v26[12];
        *&v26[12] = 0;
        if (v18)
        {
          CFRelease(v18);
        }

        v19 = *&v26[4];
        *&v26[4] = 0;
        if (v19)
        {
          CFRelease(v19);
        }
      }
    }
  }

  else
  {
    v12 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v5 >= 0x107F)
      {
        v21 = 4223;
      }

      else
      {
        v21 = v5;
      }

      v22 = (&IPC::Detail::messageDescriptions)[3 * v21];
      v23 = *(a3 + 56);
      *buf = 136315394;
      *v26 = v22;
      *&v26[8] = 2048;
      *&v26[10] = v23;
      _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
    }

    v13 = *a3;
    v14 = *(a3 + 8);
    *a3 = 0;
    *(a3 + 8) = 0;
    v15 = *(a3 + 24);
    if (v15 && v14)
    {
      (*(*v15 + 16))(v15, v13);
    }
  }

  return v5 == 4129;
}

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingCoordinator,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ScrollingCoordinator,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 1))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ScrollingCoordinator,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this);
  }

  v4 = *(this + 1) - 1;
  *(this + 1) = v4;
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = *(this + 3);
    ++*(this + 2);
    *(this + 3) = 0;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(this, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v10 = v4;
    v11 = result;
    WTF::Lock::unlockSlow(this);
    result = v11;
    if (v10)
    {
      return result;
    }
  }

  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v7 = 0;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(this, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    result = MEMORY[0x19EB01E30](this);
    v8 = 1;
  }

  v9 = *(this + 2) - 1;
  *(this + 2) = v9;
  atomic_compare_exchange_strong_explicit(this, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 == 1)
  {
    if (v9)
    {
      return result;
    }
  }

  else
  {
    v12 = v9;
    result = WTF::Lock::unlockSlow(this);
    if (v12)
    {
      return result;
    }
  }

  return WTF::fastFree(this, a2);
}

unint64_t IPC::Decoder::decode<std::optional<WebCore::FloatPoint>>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<std::optional<WebCore::FloatPoint>,void>::decode<IPC::Decoder>(a1);
  if ((v3 & 0x100000000) == 0)
  {
    v5 = *a1;
    v4 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
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

unint64_t IPC::ArgumentCoder<std::optional<WebCore::FloatPoint>,void>::decode<IPC::Decoder>(IPC::Decoder *a1)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *a1;
  if (v2 <= &v3[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v11 = *(a1 + 3);
    if (v11)
    {
      if (v2)
      {
        (*(*v11 + 16))(v11);
        v2 = *(a1 + 1);
      }
    }

    else
    {
      v2 = 0;
    }

LABEL_11:
    *a1 = 0;
    *(a1 + 1) = 0;
    v12 = *(a1 + 3);
    if (v12)
    {
      if (v2)
      {
        (*(*v12 + 16))(v12);
        v4 = *a1;
        v2 = *(a1 + 1);
        goto LABEL_14;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
    goto LABEL_14;
  }

  *(a1 + 2) = v3 + 1;
  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = *v3;
  if (v5 < 2)
  {
    if (v5)
    {
      v6 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
      if (v7)
      {
        v8 = v6 & 0xFFFFFFFFFFFFFF00;
        v9 = v6;
      }

      else
      {
        v14 = *a1;
        v15 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v16 = *(a1 + 3);
        if (v16 && v15)
        {
          (*(*v16 + 16))(v16, v14);
        }

        v9 = 0;
        v8 = 0;
      }
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    return v8 | v9;
  }

LABEL_14:
  *a1 = 0;
  *(a1 + 1) = 0;
  v13 = *(a1 + 3);
  if (v13 && v2)
  {
    (*(*v13 + 16))(v13, v4);
  }

  v9 = 0;
  v8 = 0;
  return v8 | v9;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26RemoteScrollingCoordinator28ScrollPositionChangedForNodeENS2_10ConnectionEN6WebKit26RemoteScrollingCoordinatorES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_19ScrollingNodeIDTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEERKNSA_10FloatPointENSt3__18optionalISI_EEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F2BB8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26RemoteScrollingCoordinator28ScrollPositionChangedForNodeENS2_10ConnectionEN6WebKit26RemoteScrollingCoordinatorES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_19ScrollingNodeIDTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEERKNSA_10FloatPointENSt3__18optionalISI_EEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2BB8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages26RemoteScrollingCoordinator28ScrollPositionChangedForNodeENS2_10ConnectionEN6WebKit26RemoteScrollingCoordinatorES9_FvN7WebCore16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_19ScrollingNodeIDTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEERKNSA_10FloatPointENSt3__18optionalISI_EEbONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3531;
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

uint64_t IPC::Decoder::decode<WebCore::PlatformWheelEventPhase>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v13 = a1;
    v8 = a1[3];
    if (v8)
    {
      if (v1)
      {
        (*(*v8 + 16))(v8);
        v3 = *v13;
        v1 = v13[1];
        goto LABEL_12;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_12:
    a1 = v13;
    *v13 = 0;
    v13[1] = 0;
    v9 = v13[3];
    if (v9 && v1)
    {
      (*(*v9 + 16))(v9, v3);
      a1 = v13;
    }

    goto LABEL_13;
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v13 = a1;
    goto LABEL_12;
  }

  v4 = *v2;
  if (v4 <= 0x20 && ((1 << v4) & 0x100010117) != 0)
  {
    v6 = 1;
    return v4 | (v6 << 8);
  }

LABEL_13:
  v10 = *a1;
  v11 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v12 = a1[3];
  if (v12 && v11)
  {
    (*(*v12 + 16))(v12, v10);
  }

  v6 = 0;
  v4 = 0;
  return v4 | (v6 << 8);
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebCore::WheelEventTestMonitorDeferReason>>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v19);
  if (v20 == 1)
  {
    v5 = a2[1];
    v6 = ((a2[2] + 1) & 0xFFFFFFFFFFFFFFFELL);
    v7 = *a2;
    v8 = v6 - *a2;
    v9 = v5 >= v8;
    v10 = v5 - v8;
    if (v9 && v10 > 1)
    {
      a2[2] = (v6 + 1);
      if (v6)
      {
        v12 = *v6;
        if (v12 < 0x800)
        {
          *a1 = v19;
          *(a1 + 16) = v12;
          *(a1 + 24) = 1;
          return result;
        }

        goto LABEL_15;
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      v13 = a2[3];
      if (v13)
      {
        if (v5)
        {
          (*(*v13 + 16))(v13);
          v5 = a2[1];
        }
      }

      else
      {
        v5 = 0;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    v14 = a2[3];
    if (v14)
    {
      if (v5)
      {
        (*(*v14 + 16))(v14);
        v7 = *a2;
        v5 = a2[1];
        goto LABEL_15;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
LABEL_15:
    *a2 = 0;
    a2[1] = 0;
    v15 = a2[3];
    if (v15 && v5)
    {
      (*(*v15 + 16))(v15, v7);
    }
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  v16 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v18 = *(*result + 16);

    return v18();
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::ScrollbarOrientation>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v12 = a1;
    v6 = a1[3];
    if (v6)
    {
      if (v1)
      {
        (*(*v6 + 16))(v6);
        v3 = *v12;
        v1 = v12[1];
        goto LABEL_8;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_8:
    a1 = v12;
    *v12 = 0;
    v12[1] = 0;
    v7 = v12[3];
    if (v7 && v1)
    {
      (*(*v7 + 16))(v7, v3);
      a1 = v12;
    }

    goto LABEL_9;
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v12 = a1;
    goto LABEL_8;
  }

  v4 = *v2;
  if (v4 < 2)
  {
    v5 = 1;
    return v4 | (v5 << 8);
  }

LABEL_9:
  v8 = *a1;
  v9 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v10 = a1[3];
  if (v10 && v9)
  {
    (*(*v10 + 16))(v10, v8);
  }

  v5 = 0;
  v4 = 0;
  return v4 | (v5 << 8);
}

atomic_uint *WTF::ThreadSafeRefCounted<WebKit::RemoteSharedResourceCache,(WTF::DestructionThread)0>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v5 = v1;
    atomic_store(add, result);
    WebKit::RemoteSharedResourceCache::~RemoteSharedResourceCache((result - 4));

    return bmalloc::api::tzoneFree(v3, v4);
  }

  return result;
}

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 1))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this);
  }

  v4 = *(this + 1) - 1;
  *(this + 1) = v4;
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = *(this + 3);
    ++*(this + 2);
    *(this + 3) = 0;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(this, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v10 = v4;
    v11 = result;
    WTF::Lock::unlockSlow(this);
    result = v11;
    if (v10)
    {
      return result;
    }
  }

  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v7 = 0;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(this, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    result = MEMORY[0x19EB01E30](this);
    v8 = 1;
  }

  v9 = *(this + 2) - 1;
  *(this + 2) = v9;
  atomic_compare_exchange_strong_explicit(this, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 == 1)
  {
    if (v9)
    {
      return result;
    }
  }

  else
  {
    v12 = v9;
    result = WTF::Lock::unlockSlow(this);
    if (v12)
    {
      return result;
    }
  }

  return WTF::fastFree(this, a2);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23RemoteSourceBufferProxy6AppendENS2_10ConnectionEN6WebKit23RemoteSourceBufferProxyES9_FvONS2_21SharedBufferReferenceEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIvN7WebCore18PlatformMediaErrorEEERKNS_9MediaTimeEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_SL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F2BE0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23RemoteSourceBufferProxy6AppendENS2_10ConnectionEN6WebKit23RemoteSourceBufferProxyES9_FvONS2_21SharedBufferReferenceEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIvN7WebCore18PlatformMediaErrorEEERKNS_9MediaTimeEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_SL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2BE0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23RemoteSourceBufferProxy6AppendENS2_10ConnectionEN6WebKit23RemoteSourceBufferProxyES9_FvONS2_21SharedBufferReferenceEONS_17CompletionHandlerIFvNSt12experimental15fundamentals_v38expectedIvN7WebCore18PlatformMediaErrorEEERKNS_9MediaTimeEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_SL_EE4callESI_SL_(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3533;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,void>::encode<IPC::Encoder>(v7, a2);
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v7, a3);
  IPC::Connection::sendMessageImpl(v5, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23RemoteSourceBufferProxy17RemoveCodedFramesENS2_10ConnectionEN6WebKit23RemoteSourceBufferProxyES9_FvRKNS_9MediaTimeESC_SC_ONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F2C08;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23RemoteSourceBufferProxy17RemoveCodedFramesENS2_10ConnectionEN6WebKit23RemoteSourceBufferProxyES9_FvRKNS_9MediaTimeESC_SC_ONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2C08;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23RemoteSourceBufferProxy17RemoveCodedFramesENS2_10ConnectionEN6WebKit23RemoteSourceBufferProxyES9_FvRKNS_9MediaTimeESC_SC_ONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3537;
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

uint64_t IPC::Decoder::decode<std::tuple<unsigned long long,WTF::MediaTime>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11)
    {
      if (v6)
      {
        (*(*v11 + 16))(v11);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_12:
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *(a2 + 3);
    if (v12 && v6)
    {
      (*(*v12 + 16))(v12, v5);
    }

    goto LABEL_13;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_12;
  }

  v8 = *v4;
  result = IPC::Decoder::decode<WTF::MediaTime>(a2, &v15);
  v10 = v16;
  if (v16 == 1)
  {
    *a1 = v8;
    *(a1 + 8) = v15;
    *(a1 + 24) = v10;
    return result;
  }

LABEL_13:
  *a1 = 0;
  *(a1 + 24) = 0;
  v13 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23RemoteSourceBufferProxy20SetMaximumBufferSizeENS2_10ConnectionEN6WebKit23RemoteSourceBufferProxyES9_FvyONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F2C30;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23RemoteSourceBufferProxy20SetMaximumBufferSizeENS2_10ConnectionEN6WebKit23RemoteSourceBufferProxyES9_FvyONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2C30;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23RemoteSourceBufferProxy20SetMaximumBufferSizeENS2_10ConnectionEN6WebKit23RemoteSourceBufferProxyES9_FvyONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3538;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23RemoteSourceBufferProxy15ComputeSeekTimeENS2_10ConnectionEN6WebKit23RemoteSourceBufferProxyES9_FvRKN7WebCore10SeekTargetEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_9MediaTimeENSA_18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F2C58;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23RemoteSourceBufferProxy15ComputeSeekTimeENS2_10ConnectionEN6WebKit23RemoteSourceBufferProxyES9_FvRKN7WebCore10SeekTargetEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_9MediaTimeENSA_18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2C58;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23RemoteSourceBufferProxy15ComputeSeekTimeENS2_10ConnectionEN6WebKit23RemoteSourceBufferProxyES9_FvRKN7WebCore10SeekTargetEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_9MediaTimeENSA_18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3535;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::MediaTime,WebCore::PlatformMediaError>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::pair<unsigned long long,unsigned long long>>(uint64_t result, uint64_t *a2)
{
  v3 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *a2;
  v5 = a2[1];
  if (v5 >= v3 - v4 && v5 - (v3 - v4) > 7)
  {
    a2[2] = (v3 + 1);
    if (v3)
    {
      v7 = *v3;
      v8 = ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v5 < v8 - v4 || v5 - (v8 - v4) <= 7)
      {
        goto LABEL_15;
      }

      a2[2] = (v8 + 1);
      if (v8)
      {
        v10 = *v8;
        *result = v7;
        *(result + 8) = v10;
        *(result + 16) = 1;
        return result;
      }
    }

    v15 = result;
    v16 = a2;
    goto LABEL_18;
  }

LABEL_15:
  v15 = result;
  v16 = a2;
  *a2 = 0;
  a2[1] = 0;
  v11 = a2[3];
  if (!v11)
  {
    v5 = 0;
LABEL_17:
    v4 = 0;
    goto LABEL_18;
  }

  if (!v5)
  {
    goto LABEL_17;
  }

  (*(*v11 + 16))(v11);
  v4 = *v16;
  v5 = v16[1];
LABEL_18:
  *v16 = 0;
  v16[1] = 0;
  v12 = v16[3];
  if (v12 && v5)
  {
    (*(*v12 + 16))(v12, v4);
  }

  *v15 = 0;
  v15[16] = 0;
  v13 = v16[1];
  *v16 = 0;
  v16[1] = 0;
  result = v16[3];
  if (result && v13)
  {
    v14 = *(*result + 16);

    return v14();
  }

  return result;
}

unint64_t WTF::Vector<std::pair<unsigned long long,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 16 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
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

    WTF::Vector<std::pair<unsigned long long,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
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

    WTF::Vector<std::pair<unsigned long long,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void **WTF::Vector<std::pair<unsigned long long,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(void **result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      v5 = *(result + 3);
      v6 = WTF::fastMalloc((16 * a2));
      *(v3 + 2) = v2;
      *v3 = v6;
      result = memcpy(v6, v4, 16 * v5);
      if (v4)
      {
        if (*v3 == v4)
        {
          *v3 = 0;
          *(v3 + 2) = 0;
        }

        return WTF::fastFree(v4, v7);
      }
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23RemoteSourceBufferProxy25BufferedSamplesForTrackIdENS2_10ConnectionEN6WebKit23RemoteSourceBufferProxyES9_FvyONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEN7WebCore18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F2C80;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23RemoteSourceBufferProxy25BufferedSamplesForTrackIdENS2_10ConnectionEN6WebKit23RemoteSourceBufferProxyES9_FvyONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEN7WebCore18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2C80;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23RemoteSourceBufferProxy25BufferedSamplesForTrackIdENS2_10ConnectionEN6WebKit23RemoteSourceBufferProxyES9_FvyONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEN7WebCore18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3534;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23RemoteSourceBufferProxy25EnqueuedSamplesForTrackIDENS2_10ConnectionEN6WebKit23RemoteSourceBufferProxyES9_FvyONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEN7WebCore18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F2CA8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23RemoteSourceBufferProxy25EnqueuedSamplesForTrackIDENS2_10ConnectionEN6WebKit23RemoteSourceBufferProxyES9_FvyONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEN7WebCore18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2CA8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages23RemoteSourceBufferProxy25EnqueuedSamplesForTrackIDENS2_10ConnectionEN6WebKit23RemoteSourceBufferProxyES9_FvyONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEN7WebCore18PlatformMediaErrorEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3536;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteSourceBufferProxy15CanSwitchToTypeEN6WebKit23RemoteSourceBufferProxyES8_FvRKN7WebCore11ContentTypeEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2CD0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteSourceBufferProxy15CanSwitchToTypeEN6WebKit23RemoteSourceBufferProxyES8_FvRKN7WebCore11ContentTypeEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2CD0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteSourceBufferProxy15CanSwitchToTypeEN6WebKit23RemoteSourceBufferProxyES8_FvRKN7WebCore11ContentTypeEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteSourceBufferProxy16EvictCodedFramesEN6WebKit23RemoteSourceBufferProxyES8_FvyRKNS_9MediaTimeEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore18PlatformTimeRangesELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONSE_24SourceBufferEvictionDataEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSJ_SL_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2CF8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteSourceBufferProxy16EvictCodedFramesEN6WebKit23RemoteSourceBufferProxyES8_FvyRKNS_9MediaTimeEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore18PlatformTimeRangesELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONSE_24SourceBufferEvictionDataEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSJ_SL_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2CF8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteSourceBufferProxy16EvictCodedFramesEN6WebKit23RemoteSourceBufferProxyES8_FvyRKNS_9MediaTimeEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore18PlatformTimeRangesELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONSE_24SourceBufferEvictionDataEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSJ_SL_EE4callESJ_SL_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *(a2 + 12));
  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = *a2;
    v10 = 16 * v8;
    do
    {
      IPC::VectorArgumentCoder<false,WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v7, v9);
      v9 += 16;
      v10 -= 16;
    }

    while (v10);
  }

  IPC::ArgumentCoder<WebCore::SourceBufferEvictionData,void>::encode(v7, a3);
  v11 = *(a1 + 16);

  return IPC::Connection::sendMessageImpl(v11, v6, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteSourceBufferProxy41MinimumUpcomingPresentationTimeForTrackIDEN6WebKit23RemoteSourceBufferProxyES8_FvyONS_17CompletionHandlerIFvNS_9MediaTimeEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSA_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2D20;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}
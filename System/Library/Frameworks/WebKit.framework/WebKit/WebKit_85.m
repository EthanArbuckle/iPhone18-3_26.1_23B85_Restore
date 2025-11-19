uint64_t WebKit::RemoteAudioSourceProviderManager::didReceiveMessage(WebKit::RemoteAudioSourceProviderManager *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  (**this)(this, a2);
  v5 = *(a3 + 25);
  if (v5 == 952)
  {
    v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v10 & 1) == 0)
    {
      goto LABEL_29;
    }

    v11 = *(a3 + 1);
    v12 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v13 = *a3;
    v14 = v12 - *a3;
    v15 = v11 >= v14;
    v16 = v11 - v14;
    if (!v15 || v16 <= 7)
    {
      goto LABEL_54;
    }

    *(a3 + 2) = v12 + 1;
    if (v12)
    {
      v18 = *v12;
      v19 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v11 < v19 - v13 || v11 - (v19 - v13) <= 7)
      {
LABEL_54:
        *a3 = 0;
        *(a3 + 1) = 0;
        v37 = *(a3 + 3);
        if (v37)
        {
          if (v11)
          {
            (*(*v37 + 16))(v37);
            v11 = *(a3 + 1);
          }
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_56;
      }

      v21 = (v19 + 1);
      *(a3 + 2) = v19 + 1;
      if (v19)
      {
        if (v11 <= &v21[-v13])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v36 = *(a3 + 3);
          if (v36)
          {
            if (v11)
            {
              (*(*v36 + 16))(v36);
              v11 = *(a3 + 1);
            }
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v22 = *v19;
          *(a3 + 2) = v19 + 9;
          if (v19 != -8)
          {
            v23 = *v21;
            if (v23 < 2)
            {
              WebKit::RemoteAudioSourceProviderManager::audioSamplesAvailable(this, v9, v18, v22, v23 & 1);
              return (*(*this + 8))(this, v24, v25);
            }

            goto LABEL_56;
          }
        }

        goto LABEL_54;
      }
    }

LABEL_56:
    *a3 = 0;
    *(a3 + 1) = 0;
    v38 = *(a3 + 3);
    if (v38 && v11)
    {
      (*(*v38 + 16))(v38);
    }

    goto LABEL_29;
  }

  if (v5 == 953)
  {
    v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v7)
    {
      v8 = v6;
      IPC::Decoder::decode<WebKit::ConsumerSharedCARingBufferHandle>(v39, a3);
      if (v41 == 1)
      {
        IPC::ArgumentCoder<WebCore::CAAudioStreamDescription,void>::decode(a3, v42);
        if (v48 & 1) != 0 || (v33 = *a3, v34 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v35 = *(a3 + 3)) != 0) && v34 && ((*(*v35 + 16))(v35, v33), (v48))
        {
          if ((v41 & 1) == 0)
          {
            __break(1u);
          }

          *buf = v8;
          WTF::MachSendRight::MachSendRight();
          *&v51[2] = v40;
          v52 = MEMORY[0x1E69E2E98] + 16;
          v54 = v44;
          v55 = v45;
          v56 = v46;
          v57 = v47;
          v53 = v43;
          v58 = 1;
          if (v48)
          {
            WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(v42);
          }
        }

        else
        {
          buf[0] = 0;
          v58 = 0;
        }

        if (v41)
        {
          WTF::MachSendRight::~MachSendRight(v39);
        }
      }

      else
      {
        buf[0] = 0;
        v58 = 0;
      }

      if (v58)
      {
LABEL_34:
        WebKit::RemoteAudioSourceProviderManager::audioStorageChanged(this, *buf, &buf[8], &v52);
        if (v58)
        {
          WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(&v52);
          WTF::MachSendRight::~MachSendRight(&buf[8]);
        }

        return (*(*this + 8))(this, v24, v25);
      }
    }

    else
    {
      buf[0] = 0;
      v58 = 0;
    }

    v24 = *a3;
    v25 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v32 = *(a3 + 3);
    if (!v32)
    {
      return (*(*this + 8))(this, v24, v25);
    }

    if (!v25)
    {
      return (*(*this + 8))(this, v24, v25);
    }

    (*(*v32 + 16))(v32, v24);
    if ((v58 & 1) == 0)
    {
      return (*(*this + 8))(this, v24, v25);
    }

    goto LABEL_34;
  }

  v26 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    if (v5 >= 0x107F)
    {
      v29 = 4223;
    }

    else
    {
      v29 = v5;
    }

    v30 = (&IPC::Detail::messageDescriptions)[3 * v29];
    v31 = *(a3 + 7);
    *buf = 136315394;
    *&buf[4] = v30;
    v50 = 2048;
    *v51 = v31;
    _os_log_error_impl(&dword_19D52D000, v26, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
  }

LABEL_29:
  v24 = *a3;
  v25 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v27 = *(a3 + 3);
  if (v27 && v25)
  {
    (*(*v27 + 16))(v27, v24);
  }

  return (*(*this + 8))(this, v24, v25);
}

_DWORD *WebKit::RemoteCDMFactoryProxy::didReceiveMessage(WebKit::RemoteCDMFactoryProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  WebKit::RemoteCDMFactoryProxy::sharedPreferencesForWebProcess(this, v22);
  if (v22[24] == 1 && (v22[9] & 0x10) != 0)
  {
    v9 = (this + 16);
    ++*(this + 4);
    v10 = *(a3 + 25);
    if (v10 == 967)
    {
      v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v13)
      {
        *buf = v12;
        buf[8] = v13 & 1;
        WebKit::RemoteCDMFactoryProxy::removeSession(this, buf);
        return WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(v9, v11);
      }
    }

    else
    {
      if (v10 == 966)
      {
        *buf = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        buf[8] = v11;
        if (v11)
        {
          WebKit::RemoteCDMFactoryProxy::removeInstance(this, buf);
        }

        return WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(v9, v11);
      }

      v14 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v10 >= 0x107F)
        {
          v19 = 4223;
        }

        else
        {
          v19 = v10;
        }

        v20 = (&IPC::Detail::messageDescriptions)[3 * v19];
        v21 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v20;
        v24 = 2048;
        v25 = v21;
        _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }
    }

    v11 = *a3;
    v15 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v16 = *(a3 + 3);
    if (v16 && v15)
    {
      (*(*v16 + 16))(v16, v11);
    }

    return WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(v9, v11);
  }

  v5 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a3 + 25);
    if (v17 >= 0x107F)
    {
      v17 = 4223;
    }

    v18 = (&IPC::Detail::messageDescriptions)[3 * v17];
    *buf = 136315138;
    *&buf[4] = v18;
    _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteCDMFactoryProxy", buf, 0xCu);
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

uint64_t WebKit::RemoteCDMFactoryProxy::didReceiveSyncMessage(_DWORD *a1, atomic_ullong *a2, IPC::Decoder *a3, IPC::Decoder **a4)
{
  v42 = *MEMORY[0x1E69E9840];
  WebKit::RemoteCDMFactoryProxy::sharedPreferencesForWebProcess(a1, v39);
  if (v39[24] == 1 && (v39[9] & 0x10) != 0)
  {
    v13 = a1 + 4;
    ++a1[4];
    v14 = *(a3 + 25);
    if (v14 == 4021)
    {
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[8] & 1) == 0)
      {
        v20 = *a3;
        v35 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v36 = *(a3 + 3);
        if (!v36)
        {
          goto LABEL_37;
        }

        if (!v35)
        {
          goto LABEL_37;
        }

        (*(*v36 + 16))(v36, v20);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      a3 = *a4;
      *a4 = 0;
      while (1)
      {
        v17 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v18 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v18 == v17)
        {
          goto LABEL_30;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_30:
      v26 = WTF::fastMalloc(0x18);
      *v26 = &unk_1F10F1AF0;
      v26[1] = a3;
      v26[2] = a2;
      v40 = v26;
      if ((buf[8] & 1) == 0)
      {
        goto LABEL_55;
      }

      WebKit::RemoteCDMFactoryProxy::supportsKeySystem(a1, buf, &v40);
      v27 = v40;
      v40 = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }

      if ((buf[8] & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v14 != 4020)
      {
        v19 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v14 >= 0x107F)
          {
            v32 = 4223;
          }

          else
          {
            v32 = v14;
          }

          v33 = (&IPC::Detail::messageDescriptions)[3 * v32];
          v34 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v33;
          *&buf[12] = 2048;
          *&buf[14] = v34;
          _os_log_error_impl(&dword_19D52D000, v19, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
        }

        v20 = *a3;
        v21 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v22 = *(a3 + 3);
        if (v22 && v21)
        {
          (*(*v22 + 16))(v22, v20);
        }

        v12 = 0;
        goto LABEL_38;
      }

      IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_56;
      }

      while (1)
      {
        a3 = *a4;
        *a4 = 0;
        while (1)
        {
          v15 = *a2;
          if ((*a2 & 1) == 0)
          {
            break;
          }

          v16 = *a2;
          atomic_compare_exchange_strong_explicit(a2, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v16 == v15)
          {
            goto LABEL_22;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_22:
        v23 = WTF::fastMalloc(0x18);
        *v23 = &unk_1F10F1AC8;
        v23[1] = a3;
        v23[2] = a2;
        v40 = v23;
        if (buf[16])
        {
          break;
        }

LABEL_55:
        __break(1u);
LABEL_56:
        v20 = *a3;
        v37 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v38 = *(a3 + 3);
        if (v38)
        {
          if (v37)
          {
            (*(*v38 + 16))(v38, v20);
            if (buf[16])
            {
              continue;
            }
          }
        }

        goto LABEL_37;
      }

      WebKit::RemoteCDMFactoryProxy::createCDM(a1, buf, &buf[8], &v40);
      v24 = v40;
      v40 = 0;
      if (v24)
      {
        (*(*v24 + 8))(v24);
      }

      if ((buf[16] & 1) == 0)
      {
LABEL_37:
        v12 = 1;
LABEL_38:
        WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(v13, v20);
        return v12;
      }

      v25 = *&buf[8];
      *&buf[8] = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v20);
      }
    }

    v28 = *buf;
    *buf = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v20);
    }

    goto LABEL_37;
  }

  v8 = qword_1ED6416C8;
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
    _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteCDMFactoryProxy", buf, 0xCu);
  }

  v9 = *a3;
  v10 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v11 = *(a3 + 3);
  if (v11 && v10)
  {
    (*(*v11 + 16))(v11, v9);
  }

  return 0;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,double>>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5 & 1) != 0 && (v6 = v4, result = IPC::Decoder::decode<unsigned long long>(a2), (v8))
  {
    *a1 = v6;
    *(a1 + 8) = result;
    *(a1 + 16) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
    v9 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
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
      v11 = *(*result + 16);

      return v11();
    }
  }

  return result;
}

unint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,float>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5)
  {
    v6 = a2[1];
    v7 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v8 = v7 - *a2;
    v9 = v6 >= v8;
    v10 = v6 - v8;
    if (v9 && v10 > 3)
    {
      a2[2] = (v7 + 1);
      if (v7)
      {
        v12 = *v7;
        *a1 = result;
        *(a1 + 8) = v12;
        *(a1 + 16) = 1;
        return result;
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      v13 = a2[3];
      if (v13)
      {
        if (v6)
        {
          (*(*v13 + 16))(v13);
          v6 = a2[1];
        }
      }

      else
      {
        v6 = 0;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    v14 = a2[3];
    if (v14 && v6)
    {
      (*(*v14 + 16))(v14);
    }
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  v15 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = *(*result + 16);

    return v17();
  }

  return result;
}

unint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5)
  {
    v6 = a2[1];
    v7 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    v8 = v7 - *a2;
    v9 = v6 >= v8;
    v10 = v6 - v8;
    if (v9 && v10 > 7)
    {
      a2[2] = (v7 + 1);
      if (v7)
      {
        v12 = *v7;
        *a1 = result;
        *(a1 + 8) = v12;
        *(a1 + 16) = 1;
        return result;
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      v13 = a2[3];
      if (v13)
      {
        if (v6)
        {
          (*(*v13 + 16))(v13);
          v6 = a2[1];
        }
      }

      else
      {
        v6 = 0;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    v14 = a2[3];
    if (v14 && v6)
    {
      (*(*v14 + 16))(v14);
    }
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  v15 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = *(*result + 16);

    return v17();
  }

  return result;
}

uint64_t *IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
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

uint64_t *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = result;
  v7 = v5;
  if (v5)
  {
    return IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, &v6, a2);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL>,void>::decode<IPC::Decoder,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = result[1];
  v5 = result[2];
  v6 = *result;
  if (v4 > &v5[-*result])
  {
    result[2] = (v5 + 1);
    if (!v5)
    {
      v11 = a3;
      v12 = result;
      goto LABEL_11;
    }

    v7 = *v5;
    if (v7 >= 2)
    {
      v11 = a3;
      v12 = result;
      goto LABEL_15;
    }

    if (*(a2 + 8))
    {
      *a3 = *a2;
      a3[8] = v7;
      v8 = 1;
      goto LABEL_6;
    }

    __break(1u);
  }

  v11 = a3;
  v12 = result;
  *result = 0;
  result[1] = 0;
  v9 = result[3];
  if (v9)
  {
    if (v4)
    {
      (*(*v9 + 16))(v9);
      v6 = *v12;
      v4 = v12[1];
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
LABEL_11:
  *v12 = 0;
  v12[1] = 0;
  v10 = v12[3];
  if (!v10)
  {
    v4 = 0;
LABEL_13:
    v6 = 0;
    goto LABEL_15;
  }

  if (!v4)
  {
    goto LABEL_13;
  }

  (*(*v10 + 16))(v10, v6);
  v6 = *v12;
  v4 = v12[1];
LABEL_15:
  *v12 = 0;
  v12[1] = 0;
  result = v12[3];
  if (result && v4)
  {
    result = (*(*result + 16))(result, v6);
  }

  v8 = 0;
  a3 = v11;
  *v11 = 0;
LABEL_6:
  a3[16] = v8;
  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,double>>(uint64_t a1, uint64_t *a2)
{
  IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v9);
  if (v10 == 1 && (result = IPC::Decoder::decode<unsigned long long>(a2), (v5 & 1) != 0))
  {
    if (v10)
    {
      *a1 = v9;
      *(a1 + 16) = result;
      *(a1 + 24) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    v6 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = *(*result + 16);

      return v8();
    }
  }

  return result;
}

uint64_t *IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[24] & 1) == 0)
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

uint64_t *IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a1, v5);
  if (v5[16])
  {
    return IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>,void>::decode<IPC::Decoder,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, v5, a2);
  }

  *a2 = 0;
  a2[24] = 0;
  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,BOOL>,void>::decode<IPC::Decoder,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = result[1];
  v5 = result[2];
  v6 = *result;
  if (v4 > &v5[-*result])
  {
    result[2] = (v5 + 1);
    if (!v5)
    {
      v11 = a3;
      v12 = result;
      goto LABEL_11;
    }

    v7 = *v5;
    if (v7 >= 2)
    {
      v11 = a3;
      v12 = result;
      goto LABEL_15;
    }

    if (*(a2 + 16))
    {
      *a3 = *a2;
      a3[16] = v7;
      v8 = 1;
      goto LABEL_6;
    }

    __break(1u);
  }

  v11 = a3;
  v12 = result;
  *result = 0;
  result[1] = 0;
  v9 = result[3];
  if (v9)
  {
    if (v4)
    {
      (*(*v9 + 16))(v9);
      v6 = *v12;
      v4 = v12[1];
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
LABEL_11:
  *v12 = 0;
  v12[1] = 0;
  v10 = v12[3];
  if (!v10)
  {
    v4 = 0;
LABEL_13:
    v6 = 0;
    goto LABEL_15;
  }

  if (!v4)
  {
    goto LABEL_13;
  }

  (*(*v10 + 16))(v10, v6);
  v6 = *v12;
  v4 = v12[1];
LABEL_15:
  *v12 = 0;
  v12[1] = 0;
  result = v12[3];
  if (result && v4)
  {
    result = (*(*result + 16))(result, v6);
  }

  v8 = 0;
  a3 = v11;
  *v11 = 0;
LABEL_6:
  a3[24] = v8;
  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WebCore::MediaSelectionOption,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,unsigned long long>>(uint64_t a1, uint64_t *a2)
{
  IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v41);
  if ((v42 & 1) == 0)
  {
    goto LABEL_46;
  }

  v5 = a2[1];
  v6 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a2;
  v8 = v6 - *a2;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (!v9 || v10 <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v37 = a2[3];
    if (v37)
    {
      if (v5)
      {
        (*(*v37 + 16))(v37);
        v5 = a2[1];
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_58;
  }

  a2[2] = (v6 + 1);
  if (!v6)
  {
LABEL_58:
    *a2 = 0;
    a2[1] = 0;
    v38 = a2[3];
    if (v38 && v5)
    {
      (*(*v38 + 16))(v38);
    }

LABEL_41:
    v21 = *a2;
    v32 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v20 = a2[3];
    if (v20)
    {
      v33 = v32 == 0;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      goto LABEL_46;
    }

    goto LABEL_55;
  }

  v12 = *v6;
  v50 = 0uLL;
  if (v12 >= 0xAAAA)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::MediaSelectionOption>(v46, a2);
      if (v49 != 1)
      {
LABEL_40:
        WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v7);
        goto LABEL_41;
      }

      if (HIDWORD(v50) != DWORD2(v50))
      {
        break;
      }

      WTF::Vector<WebCore::MediaSelectionOption,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::MediaSelectionOption>(&v50, v46);
      if (v49)
      {
        goto LABEL_35;
      }

LABEL_38:
      if (!--v12)
      {
        WTF::Vector<WebCore::MediaSelectionOption,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v50, HIDWORD(v50));
        v18 = v50;
        v43 = v50;
        LODWORD(v12) = DWORD2(v50);
        v19 = HIDWORD(v50);
        v50 = 0uLL;
        goto LABEL_23;
      }
    }

    v28 = HIDWORD(v50) + 1;
    v29 = v50 + 24 * HIDWORD(v50);
    *v29 = v46[0];
    v30 = v47;
    v47 = 0;
    *(v29 + 8) = v30;
    *(v29 + 16) = v48;
    HIDWORD(v50) = v28;
LABEL_35:
    v31 = v47;
    v47 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v7);
    }

    goto LABEL_38;
  }

  if (v12)
  {
    v13 = WTF::fastMalloc((24 * v12));
    DWORD2(v50) = 24 * v12 / 0x18u;
    *&v50 = v13;
    while (1)
    {
      IPC::Decoder::decode<WebCore::MediaSelectionOption>(v46, a2);
      if (v49 != 1)
      {
        goto LABEL_40;
      }

      if (HIDWORD(v50) != DWORD2(v50))
      {
        break;
      }

      WTF::Vector<WebCore::MediaSelectionOption,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::MediaSelectionOption>(&v50, v46);
      if (v49)
      {
        goto LABEL_16;
      }

LABEL_19:
      if (!--v12)
      {
        v18 = v50;
        LODWORD(v12) = DWORD2(v50);
        v19 = HIDWORD(v50);
        goto LABEL_22;
      }
    }

    v14 = HIDWORD(v50) + 1;
    v15 = v50 + 24 * HIDWORD(v50);
    *v15 = v46[0];
    v16 = v47;
    v47 = 0;
    *(v15 + 8) = v16;
    *(v15 + 16) = v48;
    HIDWORD(v50) = v14;
LABEL_16:
    v17 = v47;
    v47 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v7);
    }

    goto LABEL_19;
  }

  v19 = 0;
  v18 = 0;
LABEL_22:
  *&v4 = 0;
  v50 = v4;
  v43 = v18;
LABEL_23:
  v44 = __PAIR64__(v19, v12);
  v45 = 1;
  v20 = WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v50, v7);
  v21 = *a2;
  v22 = a2[1];
  v23 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v24 = v23 - *a2;
  v9 = v22 >= v24;
  v25 = v22 - v24;
  if (!v9 || v25 <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v39 = a2[3];
    if (v39)
    {
      if (v22)
      {
        (*(*v39 + 16))(v39);
        v21 = *a2;
        v22 = a2[1];
LABEL_64:
        *a2 = 0;
        a2[1] = 0;
        v40 = a2[3];
        if (v40 && v22)
        {
          (*(*v40 + 16))(v40);
        }

        *a1 = 0;
        *(a1 + 40) = 0;
        WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v21);
        goto LABEL_47;
      }
    }

    else
    {
      v22 = 0;
    }

    v21 = 0;
    goto LABEL_64;
  }

  a2[2] = (v23 + 1);
  if (!v23)
  {
    goto LABEL_64;
  }

  if (v42)
  {
    v26 = *v23;
    *a1 = v41;
    v43 = 0;
    v44 = 0;
    *(a1 + 16) = v18;
    *(a1 + 24) = v12;
    *(a1 + 28) = v19;
    *(a1 + 32) = v26;
    *(a1 + 40) = 1;
    return WTF::Vector<WebCore::TextList,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v43, v21);
  }

  __break(1u);
LABEL_55:
  (*(*v20 + 16))(v20, v21);
LABEL_46:
  *a1 = 0;
  *(a1 + 40) = 0;
LABEL_47:
  v34 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    v35 = v34 == 0;
  }

  else
  {
    v35 = 1;
  }

  if (!v35)
  {
    v36 = *(*result + 16);

    return v36();
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::MediaSelectionOption>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<WebCore::MediaSelectionOption,void>::decode(a2, a1);
  if ((*(a1 + 24) & 1) == 0)
  {
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

unint64_t WTF::Vector<WebCore::MediaSelectionOption,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::MediaSelectionOption>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<WebCore::MediaSelectionOption,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = v4 + 1;
  v6 = *a1 + 24 * v4;
  *v6 = *result;
  v7 = *(result + 8);
  *(result + 8) = 0;
  *(v6 + 8) = v7;
  *(v6 + 16) = *(result + 16);
  *(a1 + 12) = v5;
  return result;
}

unint64_t WTF::Vector<WebCore::MediaSelectionOption,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 24 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::MediaSelectionOption,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::MediaSelectionOption,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::MediaSelectionOption,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19D9F9714);
    }

    v3 = *a1;
    v4 = (*a1 + 24 * *(a1 + 12));
    v5 = 24 * a2;
    v6 = WTF::fastMalloc((24 * a2));
    *(a1 + 8) = v5 / 0x18;
    *a1 = v6;
    WTF::VectorMover<false,WebCore::MediaSelectionOption>::move(v3, v4, v6);
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

  return 1;
}

WTF::StringImpl *WTF::VectorMover<false,WebCore::MediaSelectionOption>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 1);
      *(v5 + 1) = 0;
      *(a3 + 8) = v6;
      *(a3 + 16) = *(v5 + 16);
      result = *(v5 + 1);
      *(v5 + 1) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 24;
      v5 = (v5 + 24);
    }

    while (v5 != a2);
  }

  return result;
}

unsigned int *WTF::Vector<WebCore::MediaSelectionOption,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > this)
    {
      result = WTF::VectorDestructor<true,WebCore::TextList>::destruct((*result + 24 * this), (*result + 24 * v4));
      *(v3 + 12) = this;
      LODWORD(v4) = this;
    }

    v5 = *v3;
    if (this)
    {
      if (this >= 0xAAAAAAB)
      {
        __break(0xC471u);
        return result;
      }

      v6 = (24 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x18;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebCore::MediaSelectionOption>::move(v5, (v5 + 24 * v4), result);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteAudioDestinationManager22CreateAudioDestinationENS2_10ConnectionEN6WebKit29RemoteAudioDestinationManagerES9_FvNS_23ObjectIdentifierGenericINS8_36RemoteAudioDestinationIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6StringEjjffONS2_9SemaphoreEON7WebCore18SharedMemoryHandleEONS_17CompletionHandlerIFvyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJyEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1A28;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteAudioDestinationManager22CreateAudioDestinationENS2_10ConnectionEN6WebKit29RemoteAudioDestinationManagerES9_FvNS_23ObjectIdentifierGenericINS8_36RemoteAudioDestinationIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6StringEjjffONS2_9SemaphoreEON7WebCore18SharedMemoryHandleEONS_17CompletionHandlerIFvyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJyEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1A28;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteAudioDestinationManager22CreateAudioDestinationENS2_10ConnectionEN6WebKit29RemoteAudioDestinationManagerES9_FvNS_23ObjectIdentifierGenericINS8_36RemoteAudioDestinationIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS_6StringEjjffONS2_9SemaphoreEON7WebCore18SharedMemoryHandleEONS_17CompletionHandlerIFvyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJyEE4callEy(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3484;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteAudioDestinationManager21StartAudioDestinationENS2_10ConnectionEN6WebKit29RemoteAudioDestinationManagerES9_FvNS_23ObjectIdentifierGenericINS8_36RemoteAudioDestinationIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbyEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1A50;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteAudioDestinationManager21StartAudioDestinationENS2_10ConnectionEN6WebKit29RemoteAudioDestinationManagerES9_FvNS_23ObjectIdentifierGenericINS8_36RemoteAudioDestinationIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbyEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1A50;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteAudioDestinationManager21StartAudioDestinationENS2_10ConnectionEN6WebKit29RemoteAudioDestinationManagerES9_FvNS_23ObjectIdentifierGenericINS8_36RemoteAudioDestinationIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbyEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbyEE4callEby(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3485;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v5;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  v7 = IPC::Encoder::operator<<<BOOL>(v6, &v12);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, a3);
  IPC::Connection::sendMessageImpl(v4, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteAudioDestinationManager20StopAudioDestinationENS2_10ConnectionEN6WebKit29RemoteAudioDestinationManagerES9_FvNS_23ObjectIdentifierGenericINS8_36RemoteAudioDestinationIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1A78;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteAudioDestinationManager20StopAudioDestinationENS2_10ConnectionEN6WebKit29RemoteAudioDestinationManagerES9_FvNS_23ObjectIdentifierGenericINS8_36RemoteAudioDestinationIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1A78;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteAudioDestinationManager20StopAudioDestinationENS2_10ConnectionEN6WebKit29RemoteAudioDestinationManagerES9_FvNS_23ObjectIdentifierGenericINS8_36RemoteAudioDestinationIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3486;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void IPC::Decoder::decode<WebKit::ConsumerSharedCARingBufferHandle>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebKit::ConsumerSharedCARingBufferHandle,void>::decode(a2, a1);
  if ((*(a1 + 24) & 1) == 0)
  {
    v4 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v5 = *(a2 + 3);
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteAudioHardwareListener,(WTF::DestructionThread)0>::deref(atomic_ullong *result, void *a2)
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
        WebKit::RemoteAudioHardwareListener::~RemoteAudioHardwareListener((result - 9), a2);

        return bmalloc::api::tzoneFree(v4, v5);
      }

      return result;
    }
  }

  v6 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::RemoteAudioHardwareListener,(WTF::DestructionThread)0>(v6, a2);
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::RemoteAudioHardwareListener,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
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
    WebKit::RemoteAudioHardwareListener::~RemoteAudioHardwareListener(v5, a2);
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

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioSession,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::AudioSession,(WTF::DestructionThread)0>(*result, a2);
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

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::AudioSession,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
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

uint64_t IPC::ArgumentCoder<std::tuple<WebKit::RemoteAudioSessionConfiguration>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::RemoteAudioSessionConfiguration,void>::decode(a1, &v11);
  if (v18 & 1) != 0 || ((v8 = *a1, v9 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v10 = v9 == 0) : (v10 = 1), !v10 && (result = (*(*result + 16))(result, v8), (v18)))
  {
    *a2 = v11;
    v5 = v13;
    *(a2 + 8) = v12;
    *(a2 + 24) = v5;
    v6 = v14;
    *(a2 + 56) = v15;
    *(a2 + 64) = v16;
    *(a2 + 72) = v17;
    v7 = 1;
    *(a2 + 40) = v6;
  }

  else
  {
    v7 = 0;
    *a2 = 0;
  }

  *(a2 + 80) = v7;
  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::AudioSessionMayResume>>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v16 = a1;
    v7 = a1[3];
    if (v7)
    {
      if (v1)
      {
        (*(*v7 + 16))(v7);
        v3 = *v16;
        v1 = v16[1];
        goto LABEL_9;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
  }

  else
  {
    a1[2] = (v2 + 1);
    if (v2)
    {
      v4 = *v2;
      if (v4 < 2)
      {
        v5 = 256;
        return v4 | v5;
      }

      v16 = a1;
      goto LABEL_13;
    }

    v16 = a1;
  }

LABEL_9:
  *v16 = 0;
  v16[1] = 0;
  v8 = v16[3];
  if (v8)
  {
    if (v1)
    {
      (*(*v8 + 16))(v8, v3);
      v3 = *v16;
      v1 = v16[1];
      goto LABEL_13;
    }
  }

  else
  {
    v1 = 0;
  }

  v3 = 0;
LABEL_13:
  *v16 = 0;
  v16[1] = 0;
  v9 = v16[3];
  if (v9 && v1 && ((*(*v9 + 16))(v9, v3), v10 = v16[3], v11 = *v16, v12 = v16[1], *v16 = 0, v16[1] = 0, v10) && v12)
  {
    (*(*v10 + 16))(v10, v11);
    v5 = 0;
    v13 = *v16;
    v14 = v16[1];
    v15 = v16[3];
    *v16 = 0;
    v16[1] = 0;
    v4 = 0;
    if (v15 && v14)
    {
      (*(*v15 + 16))(v15, v13);
      v5 = 0;
      v4 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
    *v16 = 0;
    v16[1] = 0;
  }

  return v4 | v5;
}

uint64_t IPC::Decoder::decode<std::tuple<std::optional<BOOL>>>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v3 = v2 & 0x10000;
  if ((v2 & 0x10000) == 0)
  {
    v6 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v8 = *(a1 + 3);
    if (v8 && v7 != 0)
    {
      v11 = v2;
      v10 = v2 & 0x10000;
      (*(*v8 + 16))(v8, v6);
      v3 = v10;
      LOWORD(v2) = v11;
    }
  }

  v4 = v2;
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteAudioSessionProxy14TryToSetActiveEN6WebKit23RemoteAudioSessionProxyES8_FvbONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1AA0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteAudioSessionProxy14TryToSetActiveEN6WebKit23RemoteAudioSessionProxyES8_FvbONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1AA0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages23RemoteAudioSessionProxy14TryToSetActiveEN6WebKit23RemoteAudioSessionProxyES8_FvbONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

_DWORD *WTF::RefCounted<WebKit::RemoteCDMFactoryProxy>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::RemoteCDMFactoryProxy::~RemoteCDMFactoryProxy((result - 4), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String>,void>::decode<IPC::Decoder,WTF::String>(a1, &v9, a2);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[16] = 0;
  }

  return result;
}

IPC::Decoder *IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String>,void>::decode<IPC::Decoder,WTF::String>@<X0>(IPC::Decoder *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v13);
  if ((v14 & 1) == 0)
  {
    goto LABEL_6;
  }

  do
  {
    if (a2[1])
    {
      v7 = *a2;
      *a2 = 0;
      v8 = v13;
      *a3 = v7;
      *(a3 + 8) = v8;
      v9 = 1;
      goto LABEL_4;
    }

    __break(1u);
LABEL_6:
    v10 = *a1;
    v11 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      break;
    }

    result = (*(*result + 16))(result, v10);
  }

  while ((v14 & 1) != 0);
  v9 = 0;
  *a3 = 0;
LABEL_4:
  *(a3 + 16) = v9;
  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages21RemoteCDMFactoryProxy9CreateCDMEN6WebKit21RemoteCDMFactoryProxyES8_FvRKNS_6StringESB_ONS_17CompletionHandlerIFvONSt3__18optionalINS_23ObjectIdentifierGenericINS7_23RemoteCDMIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS7_22RemoteCDMConfigurationEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSL_SN_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1AC8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages21RemoteCDMFactoryProxy9CreateCDMEN6WebKit21RemoteCDMFactoryProxyES8_FvRKNS_6StringESB_ONS_17CompletionHandlerIFvONSt3__18optionalINS_23ObjectIdentifierGenericINS7_23RemoteCDMIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS7_22RemoteCDMConfigurationEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSL_SN_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1AC8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages21RemoteCDMFactoryProxy9CreateCDMEN6WebKit21RemoteCDMFactoryProxyES8_FvRKNS_6StringESB_ONS_17CompletionHandlerIFvONSt3__18optionalINS_23ObjectIdentifierGenericINS7_23RemoteCDMIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS7_22RemoteCDMConfigurationEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSL_SN_EE4callESL_SN_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (*(a2 + 8))
  {
    v11 = 1;
    IPC::Encoder::operator<<<BOOL>(v6, &v11);
    if ((*(a2 + 8) & 1) == 0)
    {
      v10 = std::__throw_bad_optional_access[abi:sn200100]();
      return _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages21RemoteCDMFactoryProxy17SupportsKeySystemEN6WebKit21RemoteCDMFactoryProxyES8_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(v10);
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  }

  else
  {
    v12 = 0;
    IPC::Encoder::operator<<<BOOL>(v6, &v12);
  }

  IPC::ArgumentCoder<WebKit::RemoteCDMConfiguration,void>::encode(v6, a3);
  v8 = *(a1 + 16);

  return IPC::Connection::sendMessageImpl(v8, v5, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages21RemoteCDMFactoryProxy17SupportsKeySystemEN6WebKit21RemoteCDMFactoryProxyES8_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1AF0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages21RemoteCDMFactoryProxy17SupportsKeySystemEN6WebKit21RemoteCDMFactoryProxyES8_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1AF0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages21RemoteCDMFactoryProxy17SupportsKeySystemEN6WebKit21RemoteCDMFactoryProxyES8_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t WebKit::PDFKitLibrary(WebKit *this)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN6WebKit13PDFKitLibraryEb_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v3 = 0;
  if (qword_1ED641E20 != -1)
  {
    dispatch_once(&qword_1ED641E20, block);
  }

  return _MergedGlobals_60;
}

uint64_t ___ZN6WebKit13PDFKitLibraryEb_block_invoke(uint64_t a1)
{
  result = dlopen("/System/Library/Frameworks/PDFKit.framework/PDFKit", 2);
  _MergedGlobals_60 = result;
  if ((*(a1 + 32) & 1) == 0 && !result)
  {
    result = 33;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::initPDFDocument(WebKit *this)
{
  if (qword_1ED641EE8 != -1)
  {
    dispatch_once(&qword_1ED641EE8, &__block_literal_global_119);
  }

  return qword_1ED641EF0;
}

uint64_t WebKit::initPDFSelection(WebKit *this)
{
  if (qword_1ED641EF8 != -1)
  {
    dispatch_once(&qword_1ED641EF8, &__block_literal_global_123);
  }

  return qword_1ED641F00;
}

double WebKit::get_PDFKit_kPDFDestinationUnspecifiedValue(WebKit *this)
{
  if (qword_1ED641E30 != -1)
  {
    dispatch_once(&qword_1ED641E30, &__block_literal_global_12);
  }

  return *&qword_1ED641E28;
}

uint64_t ___ZN6WebKit42get_PDFKit_kPDFDestinationUnspecifiedValueEv_block_invoke(WebKit *a1)
{
  v1 = WebKit::PDFKitLibrary(a1);
  result = dlsym(v1, "kPDFDestinationUnspecifiedValue");
  if (result)
  {
    qword_1ED641E28 = *result;
  }

  else
  {
    result = 44;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::get_PDFKit_PDFViewCopyPermissionNotification(WebKit *this)
{
  if (qword_1ED641E40 != -1)
  {
    dispatch_once(&qword_1ED641E40, &__block_literal_global_4_1);
  }

  return qword_1ED641E38;
}

uint64_t ___ZN6WebKit44get_PDFKit_PDFViewCopyPermissionNotificationEv_block_invoke(WebKit *a1)
{
  v1 = WebKit::PDFKitLibrary(a1);
  result = dlsym(v1, "PDFViewCopyPermissionNotification");
  if (result)
  {
    qword_1ED641E38 = *result;
  }

  else
  {
    result = 45;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::get_PDFKit_PDFAnnotationKeySubtype(WebKit *this)
{
  if (qword_1ED641E50 != -1)
  {
    dispatch_once(&qword_1ED641E50, &__block_literal_global_8_3);
  }

  return qword_1ED641E48;
}

uint64_t ___ZN6WebKit34get_PDFKit_PDFAnnotationKeySubtypeEv_block_invoke(WebKit *a1)
{
  v1 = WebKit::PDFKitLibrary(a1);
  result = dlsym(v1, "PDFAnnotationKeySubtype");
  if (result)
  {
    qword_1ED641E48 = *result;
  }

  else
  {
    result = 47;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::get_PDFKit_PDFAnnotationKeyWidgetFieldType(WebKit *this)
{
  if (qword_1ED641E60 != -1)
  {
    dispatch_once(&qword_1ED641E60, &__block_literal_global_10_2);
  }

  return qword_1ED641E58;
}

uint64_t ___ZN6WebKit42get_PDFKit_PDFAnnotationKeyWidgetFieldTypeEv_block_invoke(WebKit *a1)
{
  v1 = WebKit::PDFKitLibrary(a1);
  result = dlsym(v1, "PDFAnnotationKeyWidgetFieldType");
  if (result)
  {
    qword_1ED641E58 = *result;
  }

  else
  {
    result = 48;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::get_PDFKit_PDFAnnotationSubtypeLink(WebKit *this)
{
  if (qword_1ED641E70 != -1)
  {
    dispatch_once(&qword_1ED641E70, &__block_literal_global_12_1);
  }

  return qword_1ED641E68;
}

uint64_t ___ZN6WebKit35get_PDFKit_PDFAnnotationSubtypeLinkEv_block_invoke(WebKit *a1)
{
  v1 = WebKit::PDFKitLibrary(a1);
  result = dlsym(v1, "PDFAnnotationSubtypeLink");
  if (result)
  {
    qword_1ED641E68 = *result;
  }

  else
  {
    result = 49;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::get_PDFKit_PDFAnnotationSubtypePopup(WebKit *this)
{
  if (qword_1ED641E80 != -1)
  {
    dispatch_once(&qword_1ED641E80, &__block_literal_global_14_2);
  }

  return qword_1ED641E78;
}

uint64_t ___ZN6WebKit36get_PDFKit_PDFAnnotationSubtypePopupEv_block_invoke(WebKit *a1)
{
  v1 = WebKit::PDFKitLibrary(a1);
  result = dlsym(v1, "PDFAnnotationSubtypePopup");
  if (result)
  {
    qword_1ED641E78 = *result;
  }

  else
  {
    result = 50;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::get_PDFKit_PDFAnnotationSubtypeText(WebKit *this)
{
  if (qword_1ED641E90 != -1)
  {
    dispatch_once(&qword_1ED641E90, &__block_literal_global_16_0);
  }

  return qword_1ED641E88;
}

uint64_t ___ZN6WebKit35get_PDFKit_PDFAnnotationSubtypeTextEv_block_invoke(WebKit *a1)
{
  v1 = WebKit::PDFKitLibrary(a1);
  result = dlsym(v1, "PDFAnnotationSubtypeText");
  if (result)
  {
    qword_1ED641E88 = *result;
  }

  else
  {
    result = 51;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::get_PDFKit_PDFAnnotationSubtypeWidget(WebKit *this)
{
  if (qword_1ED641EA0 != -1)
  {
    dispatch_once(&qword_1ED641EA0, &__block_literal_global_18_3);
  }

  return qword_1ED641E98;
}

uint64_t ___ZN6WebKit37get_PDFKit_PDFAnnotationSubtypeWidgetEv_block_invoke(WebKit *a1)
{
  v1 = WebKit::PDFKitLibrary(a1);
  result = dlsym(v1, "PDFAnnotationSubtypeWidget");
  if (result)
  {
    qword_1ED641E98 = *result;
  }

  else
  {
    result = 52;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::get_PDFKit_PDFAnnotationWidgetSubtypeButton(WebKit *this)
{
  if (qword_1ED641EB0 != -1)
  {
    dispatch_once(&qword_1ED641EB0, &__block_literal_global_20_1);
  }

  return qword_1ED641EA8;
}

uint64_t ___ZN6WebKit43get_PDFKit_PDFAnnotationWidgetSubtypeButtonEv_block_invoke(WebKit *a1)
{
  v1 = WebKit::PDFKitLibrary(a1);
  result = dlsym(v1, "PDFAnnotationWidgetSubtypeButton");
  if (result)
  {
    qword_1ED641EA8 = *result;
  }

  else
  {
    result = 53;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::get_PDFKit_PDFAnnotationWidgetSubtypeChoice(WebKit *this)
{
  if (qword_1ED641EC0 != -1)
  {
    dispatch_once(&qword_1ED641EC0, &__block_literal_global_22_1);
  }

  return qword_1ED641EB8;
}

uint64_t ___ZN6WebKit43get_PDFKit_PDFAnnotationWidgetSubtypeChoiceEv_block_invoke(WebKit *a1)
{
  v1 = WebKit::PDFKitLibrary(a1);
  result = dlsym(v1, "PDFAnnotationWidgetSubtypeChoice");
  if (result)
  {
    qword_1ED641EB8 = *result;
  }

  else
  {
    result = 54;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::get_PDFKit_PDFAnnotationWidgetSubtypeSignature(WebKit *this)
{
  if (qword_1ED641ED0 != -1)
  {
    dispatch_once(&qword_1ED641ED0, &__block_literal_global_24_1);
  }

  return qword_1ED641EC8;
}

uint64_t ___ZN6WebKit46get_PDFKit_PDFAnnotationWidgetSubtypeSignatureEv_block_invoke(WebKit *a1)
{
  v1 = WebKit::PDFKitLibrary(a1);
  result = dlsym(v1, "PDFAnnotationWidgetSubtypeSignature");
  if (result)
  {
    qword_1ED641EC8 = *result;
  }

  else
  {
    result = 55;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::get_PDFKit_PDFAnnotationWidgetSubtypeText(WebKit *this)
{
  if (qword_1ED641EE0 != -1)
  {
    dispatch_once(&qword_1ED641EE0, &__block_literal_global_26_1);
  }

  return qword_1ED641ED8;
}

uint64_t ___ZN6WebKit41get_PDFKit_PDFAnnotationWidgetSubtypeTextEv_block_invoke(WebKit *a1)
{
  v1 = WebKit::PDFKitLibrary(a1);
  result = dlsym(v1, "PDFAnnotationWidgetSubtypeText");
  if (result)
  {
    qword_1ED641ED8 = *result;
  }

  else
  {
    result = 56;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RevealItem::item(WebKit::RevealItem *this)
{
  result = *(this + 3);
  if (!result)
  {
    v3 = objc_alloc((*MEMORY[0x1E69E2228])());
    v4 = *this;
    if (*this)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v10, v4);
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v5);
      }
    }

    else
    {
      v10 = &stru_1F1147748;
      v6 = &stru_1F1147748;
    }

    v7 = [v3 initWithText:v10 selectedRange:{*(this + 1), *(this + 2)}];
    v8 = *(this + 3);
    *(this + 3) = v7;
    if (v8)
    {
    }

    v9 = v10;
    v10 = 0;
    if (v9)
    {
    }

    return *(this + 3);
  }

  return result;
}

void sub_19D9FB284(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

WebKit::SandboxExtensionImpl **WebKit::SandboxExtensionHandle::operator=(WebKit::SandboxExtensionImpl **a1, WebKit::SandboxExtensionImpl **a2)
{
  v3 = *a2;
  *a2 = 0;
  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a1, v3);
  return a1;
}

void WebKit::SandboxExtension::createHandle(void *a1@<X2>, uint64_t a2@<X8>)
{
  WebKit::resolvePathForSandboxExtension(&v8);
  v4 = v8;
  if (v8)
  {
    v5 = v8[1];
    v6 = *(v8 + 1) | (((*(v8 + 4) >> 2) & 1) << 32);
  }

  else
  {
    v5 = 0;
    v6 = 0x100000000;
  }

  WebKit::SandboxExtension::createHandleWithoutResolvingPath(v5, v6, a1, a2);
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    WTF::StringImpl::destroy(v4, v7);
  }
}

void sub_19D9FB3A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::SandboxExtension::createReadOnlyHandlesForFiles@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  v4 = *(a2 + 3);
  if (!v4)
  {
    goto LABEL_2;
  }

  if (!(v4 >> 29))
  {
    v7 = WTF::fastMalloc((8 * v4));
    *(a3 + 8) = v4;
    *a3 = v7;
    v8 = *(a2 + 3);
    if (v8)
    {
      v9 = *a2;
      v10 = 8 * v8;
      do
      {
        WebKit::SandboxExtension::createHandle(0, &v22);
        if (v23)
        {
          v11 = v22;
          v22 = 0;
          v20 = v11;
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v22);
          v21 = 1;
          v12 = v20;
          v20 = 0;
          v22 = v12;
          v13 = *(a3 + 12);
          if (v13 == *(a3 + 8))
          {
            v14 = WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a3, v13 + 1, &v22);
            v13 = *(a3 + 12);
            v15 = *a3;
            v16 = *v14;
            *v14 = 0;
            *(v15 + 8 * v13) = v16;
          }

          else
          {
            v19 = *a3;
            v22 = 0;
            *(v19 + 8 * v13) = v12;
          }

          *(a3 + 12) = v13 + 1;
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v22);
          if (v21)
          {
            WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v20);
          }
        }

        else
        {
          WTF::String::utf8();
          WTFLogAlways();
          v18 = v24;
          v24 = 0;
          if (v18)
          {
            if (*v18 == 1)
            {
              WTF::fastFree(v18, v17);
            }

            else
            {
              --*v18;
            }
          }
        }

        v9 += 8;
        v10 -= 8;
      }

      while (v10);
      v5 = *(a3 + 12);
      return WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a3, v5);
    }

LABEL_2:
    v5 = 0;
    return WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a3, v5);
  }

  __break(0xC471u);
  return result;
}

void sub_19D9FB58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WebKit::SandboxExtensionImpl *a12, __int16 a13, char a14, char a15, int a16, WebKit::SandboxExtensionImpl *a17, uint64_t a18, WTF *a19)
{
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a17);
  if (a13 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a12);
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19, v21);
  _Unwind_Resume(a1);
}

void WebKit::SandboxExtension::createHandleForGenericExtension(uint64_t a1@<X8>)
{
  v5 = 0;
  v3[0] = 0;
  v3[32] = 0;
  WebKit::SandboxExtensionImpl::create(4, v3, &v4);
  v5 = v4;
  if (v4)
  {
    v5 = 0;
    *a1 = v4;
    v2 = 1;
  }

  else
  {
    WTFLogAlways();
    v2 = 0;
    *a1 = 0;
  }

  *(a1 + 8) = v2;
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v5);
}

void WebKit::SandboxExtension::createHandleForMachBootstrapExtension(WebKit::SandboxExtensionImpl **a1@<X8>)
{
  WebKit::SandboxExtension::createHandleForGenericExtension(&v4);
  if (v5 == 1)
  {
    v3 = v4;
    v4 = 0;
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v4);
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
}

void WebKit::SandboxExtension::createHandleForMachLookup(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v8 = 0;
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  WebKit::SandboxExtensionImpl::create(2, v5, &v7);
  v8 = v7;
  if (v7)
  {
    v8 = 0;
    *a2 = v7;
    v4 = 1;
  }

  else
  {
    WTFLogAlways();
    v4 = 0;
    *a2 = 0;
  }

  *(a2 + 8) = v4;
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v8);
}

void WebKit::SandboxExtension::createHandlesForMachLookup(uint64_t a1@<X0>, unint64_t a2@<X1>, __int128 *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v8 = 0;
  LOBYTE(v25) = *(a3 + 32);
  v23 = *a3;
  v24 = a3[1];
  *a5 = 0;
  *(a5 + 8) = 0;
  if (a2)
  {
    if (a2 >> 29)
    {
      __break(0xC471u);
      return;
    }

    v14 = WTF::fastMalloc((8 * a2));
    *(a5 + 8) = a2;
    *a5 = v14;
    v15 = a1 + 16 * a2;
    do
    {
      v30[0] = v23;
      v30[1] = v24;
      v31 = v25;
      WebKit::SandboxExtension::createHandleForMachLookup(v30, &v28);
      if (v29)
      {
        v16 = v28;
        v28 = 0;
        v26 = v16;
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v28);
        v27 = 1;
        v17 = v26;
        v26 = 0;
        *&v30[0] = v17;
        v18 = *(a5 + 12);
        if (v18 == *(a5 + 8))
        {
          v19 = WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a5, v18 + 1, v30);
          v18 = *(a5 + 12);
          v20 = *a5;
          v21 = *v19;
          *v19 = 0;
          *(v20 + 8 * v18) = v21;
        }

        else
        {
          v22 = *a5;
          *&v30[0] = 0;
          *(v22 + 8 * v18) = v17;
        }

        *(a5 + 12) = v18 + 1;
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v30);
        if (v27)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v26);
        }
      }

      a1 += 16;
    }

    while (a1 != v15);
    v8 = *(a5 + 12);
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a5, v8);
  if (a4 == 1)
  {
    WebKit::SandboxExtension::createHandleForMachBootstrapExtension(v30);
    v9 = *(a5 + 12);
    if (v9 == *(a5 + 8))
    {
      v10 = WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a5, v9 + 1, v30);
      v9 = *(a5 + 12);
      v11 = *a5;
      v12 = *v10;
      *v10 = 0;
    }

    else
    {
      v11 = *a5;
      v12 = *&v30[0];
      *&v30[0] = 0;
    }

    *(v11 + 8 * v9) = v12;
    *(a5 + 12) = v9 + 1;
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v30);
  }
}

void sub_19D9FB96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, WebKit::SandboxExtensionImpl *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(va1);
  if (v12 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(va);
  }

  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v7, v9);
  _Unwind_Resume(a1);
}

void WebKit::SandboxExtension::createHandleForReadByAuditToken(WebKit::SandboxExtensionImpl *a1@<X0>, WebKit::SandboxExtensionImpl *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v22[1] = a1;
  v22[2] = a2;
  v22[0] = 0;
  WTF::StringView::utf8();
  v6 = a3[1];
  *buf = *a3;
  v24 = v6;
  v25 = 1;
  WebKit::SandboxExtensionImpl::create(5, buf, &v21);
  v8 = v22[0];
  v22[0] = v21;
  if (v8)
  {
    WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v8);
    bmalloc::api::tzoneFree(v15, v16);
  }

  if (v20)
  {
    if (*v20 == 1)
    {
      WTF::fastFree(v20, v7);
    }

    else
    {
      --*v20;
    }
  }

  v9 = v22[0];
  v10 = qword_1ED641198;
  if (v22[0])
  {
    if (os_log_type_enabled(qword_1ED641198, OS_LOG_TYPE_DEFAULT))
    {
      WTF::StringView::utf8();
      if (v21)
      {
        v11 = v21 + 16;
      }

      else
      {
        v11 = 0;
      }

      *buf = 136380675;
      *&buf[4] = v11;
      _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "Successfully created sandbox extension for '%{private}s'", buf, 0xCu);
      v13 = v21;
      v21 = 0;
      if (v13)
      {
        if (*v13 == 1)
        {
          WTF::fastFree(v13, v12);
        }

        else
        {
          --*v13;
        }
      }

      v9 = v22[0];
    }

    v22[0] = 0;
    *a4 = v9;
    v14 = 1;
  }

  else
  {
    if (os_log_type_enabled(qword_1ED641198, OS_LOG_TYPE_ERROR))
    {
      WTF::StringView::utf8();
      v17 = v21 ? v21 + 16 : 0;
      *buf = 136380675;
      *&buf[4] = v17;
      _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "Could not create a sandbox extension for '%{private}s'", buf, 0xCu);
      v19 = v21;
      v21 = 0;
      if (v19)
      {
        if (*v19 == 1)
        {
          WTF::fastFree(v19, v18);
        }

        else
        {
          --*v19;
        }
      }
    }

    v14 = 0;
    *a4 = 0;
  }

  *(a4 + 8) = v14;
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v22);
}

BOOL WebKit::SandboxExtension::revoke(WebKit::SandboxExtension *this)
{
  v1 = *(this + 2) - 1;
  *(this + 2) = v1;
  if (v1)
  {
    return 1;
  }

  *(*(this + 1) + 8) = 0;
  return sandbox_extension_release() == 0;
}

BOOL WebKit::SandboxExtension::consume(WebKit::SandboxExtension *this)
{
  v1 = *(this + 2);
  *(this + 2) = v1 + 1;
  return v1 || WebKit::SandboxExtensionImpl::consume(*(this + 1));
}

void sub_19D9FBD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19D9FC0C4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19D9FC1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
  }

  CFRelease(*(v10 + 8));
  if (a9)
  {
    CFRelease(*(a9 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN6WebKitL15initPDFDocumentEv_block_invoke(WebKit *a1)
{
  WebKit::PDFKitLibrary(a1);
  result = objc_getClass("PDFDocument");
  qword_1ED641EF0 = result;
  if (result)
  {
    WebKit::getPDFDocumentClass[0] = WebKit::PDFDocumentFunction;
  }

  else
  {
    result = 41;
    __break(0xC471u);
  }

  return result;
}

uint64_t ___ZN6WebKitL16initPDFSelectionEv_block_invoke(WebKit *a1)
{
  WebKit::PDFKitLibrary(a1);
  result = objc_getClass("PDFSelection");
  qword_1ED641F00 = result;
  if (result)
  {
    WebKit::getPDFSelectionClass = WebKit::PDFSelectionFunction;
  }

  else
  {
    result = 43;
    __break(0xC471u);
  }

  return result;
}

WTF *WTF::VectorDestructor<true,WTF::CString>::destruct(WTF *result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      *v3 = 0;
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

      ++v3;
    }

    while (v3 != a2);
  }

  return result;
}

WTF::StringImpl *WebKit::RemoteCDMInstance::didReceiveMessage(WebKit::RemoteCDMInstance *this, IPC::Connection *a2, WTF::StringImpl **a3)
{
  v24 = *MEMORY[0x1E69E9840];
  ++*(this + 2);
  v5 = *(a3 + 25);
  if (v5 == 981)
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v19);
    if ((v20 & 1) == 0)
    {
      goto LABEL_28;
    }

    while (1)
    {
      IPC::Decoder::decode<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a3, &v21);
      if (v22 != 1)
      {
        break;
      }

      if (v20)
      {
        *buf = v19;
        *&buf[8] = v21;
        buf[16] = 1;
        result = WebKit::RemoteCDMInstance::unrequestedInitializationDataReceived(this, buf, &buf[8]);
        if (buf[16])
        {
          v10 = *&buf[8];
          *&buf[8] = 0;
          if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v10 + 2);
            (*(*v10 + 8))(v10);
          }

          result = *buf;
          *buf = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v8);
          }
        }

        goto LABEL_22;
      }

      __break(1u);
LABEL_28:
      v16 = *a3;
      v17 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v18 = a3[3];
      if (v18)
      {
        if (v17)
        {
          (*(*v18 + 16))(v18, v16);
          if (v20)
          {
            continue;
          }
        }
      }

      goto LABEL_21;
    }

    if (v20)
    {
      v15 = v19;
      v19 = 0;
      if (v15)
      {
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v6);
        }
      }
    }
  }

  else
  {
    v11 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v5 >= 0x107F)
      {
        v12 = 4223;
      }

      else
      {
        v12 = v5;
      }

      v13 = (&IPC::Detail::messageDescriptions)[3 * v12];
      v14 = a3[7];
      *buf = 136315394;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = v14;
      _os_log_error_impl(&dword_19D52D000, v11, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }
  }

LABEL_21:
  v8 = *a3;
  v9 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  result = a3[3];
  if (result && v9)
  {
    result = (*(*result + 16))(result, v8);
  }

LABEL_22:
  if (*(this + 2) == 1)
  {
    return (*(*this + 8))(this, v8, v9);
  }

  --*(this + 2);
  return result;
}

WTF::StringImpl *WebKit::RemoteCDMInstanceProxy::didReceiveMessage(WebKit::RemoteCDMInstanceProxy *this, atomic_ullong *a2, WTF::StringImpl **a3)
{
  v70 = *MEMORY[0x1E69E9840];
  WebKit::RemoteCDMInstanceProxy::sharedPreferencesForWebProcess(this, v52);
  if (v52[24] == 1 && (v52[9] & 0x10) != 0)
  {
    ++*(this + 8);
    v10 = *(a3 + 25);
    switch(v10)
    {
      case 0x3CAu:
        IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
        if (buf[8] & 1) != 0 || (v24 = *a3, v25 = a3[1], *a3 = 0, a3[1] = 0, (result = a3[3]) != 0) && v25 && (result = (*(*result + 16))(result, v24), (buf[8]))
        {
          result = WebKit::RemoteCDMInstanceProxy::setStorageDirectory(this, buf);
          if (buf[8])
          {
LABEL_55:
            result = *buf;
            *buf = 0;
            if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v24);
            }
          }
        }

        break;
      case 0x3C9u:
        IPC::Decoder::decode<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a3, buf);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_34;
        }

        v23 = *buf;
        v53 = *buf;
        v54[0] = 1;
        result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v24)
        {
          v26 = result;
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
              goto LABEL_59;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_59:
          v39 = WTF::fastMalloc(0x18);
          *v39 = &unk_1F10F1D00;
          v39[1] = v26;
          v39[2] = a2;
          *buf = v39;
          WebKit::RemoteCDMInstanceProxy::setServerCertificate(this);
          result = *buf;
          *buf = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }

          if ((v54[0] & 1) == 0)
          {
            break;
          }

          v23 = v53;
        }

        v53 = 0;
        if (v23 && atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v23 + 2);
          result = (*(*v23 + 8))(v23);
        }

        break;
      case 0x3C8u:
        IPC::Decoder::decode<WebCore::CDMKeySystemConfiguration>(&v53, a3);
        if (v59 != 1)
        {
          buf[0] = 0;
          v69 = 0;
LABEL_41:
          if (v69 & 1) != 0 || (v24 = *a3, v25 = a3[1], *a3 = 0, a3[1] = 0, (result = a3[3]) != 0) && v25 && (result = (*(*result + 16))(result, v24), (v69))
          {
            result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if (v24)
            {
              v32 = result;
              while (1)
              {
                v33 = *a2;
                if ((*a2 & 1) == 0)
                {
                  break;
                }

                v34 = *a2;
                atomic_compare_exchange_strong_explicit(a2, &v34, v33 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v34 == v33)
                {
                  goto LABEL_48;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_48:
              v35 = WTF::fastMalloc(0x18);
              *v35 = &unk_1F10F1CD8;
              *(v35 + 1) = v32;
              *(v35 + 2) = a2;
              v53 = v35;
              if ((v69 & 1) == 0)
              {
                __break(1u);
              }

              WebKit::RemoteCDMInstanceProxy::initializeWithConfiguration(this);
              result = v53;
              v53 = 0;
              if (result)
              {
                result = (*(*result + 8))(result);
              }
            }
          }

          if (v69 != 1)
          {
            break;
          }

          v36 = v65;
          if (v65)
          {
            v65 = 0;
            v66 = 0;
            WTF::fastFree(v36, v24);
          }

          WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v64, v24);
          WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v63, v37);
          WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf[8], v38);
          goto LABEL_55;
        }

        v11 = a3[1];
        v12 = a3[2];
        v13 = *a3;
        if (v11 <= v12 - *a3)
        {
          *a3 = 0;
          a3[1] = 0;
          v43 = a3[3];
          if (v43)
          {
            if (v11)
            {
              (*(*v43 + 16))(v43);
              v11 = a3[1];
            }
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v14 = v12 + 1;
          a3[2] = (v12 + 1);
          if (v12)
          {
            v15 = *v12;
            if (v15 >= 2)
            {
              goto LABEL_93;
            }

            if (v11 <= v14 - v13)
            {
              v45 = 0;
              v46 = 0;
              *a3 = 0;
              a3[1] = 0;
              v47 = a3[3];
              if (v47)
              {
                (*(*v47 + 16))(v47);
                v46 = *a3;
                v45 = a3[1];
              }
            }

            else
            {
              a3[2] = (v12 + 2);
              if (v12 != -1)
              {
                v16 = *v14;
                if (v16 < 2)
                {
                  std::__tuple_leaf<0ul,WebCore::CDMKeySystemConfiguration,false>::__tuple_leaf[abi:sn200100]<WebCore::CDMKeySystemConfiguration,0>(buf, &v53);
                  v67 = v15;
                  v68 = v16;
                  v17 = 1;
LABEL_18:
                  v69 = v17;
                  if (v59)
                  {
                    v18 = v57;
                    if (v57)
                    {
                      v57 = 0;
                      v58 = 0;
                      WTF::fastFree(v18, v13);
                    }

                    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v56, v13);
                    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v55, v19);
                    WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v54, v20);
                    v22 = v53;
                    v53 = 0;
                    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v22, v21);
                    }
                  }

                  goto LABEL_41;
                }

LABEL_93:
                *a3 = 0;
                a3[1] = 0;
                v49 = a3[3];
                if (v49)
                {
                  if (v11)
                  {
                    (*(*v49 + 16))(v49, v13);
                    v50 = a3[3];
                    v13 = *a3;
                    v51 = a3[1];
                    *a3 = 0;
                    a3[1] = 0;
                    if (v50)
                    {
                      if (v51)
                      {
                        (*(*v50 + 16))(v50, v13);
                      }
                    }
                  }
                }

                v17 = 0;
                buf[0] = 0;
                goto LABEL_18;
              }

              v45 = v11;
              v46 = v13;
            }

            *a3 = 0;
            a3[1] = 0;
            v48 = a3[3];
            if (v48 && v45)
            {
              (*(*v48 + 16))(v48, v46, v45);
              goto LABEL_102;
            }

            goto LABEL_91;
          }
        }

        *a3 = 0;
        a3[1] = 0;
        v44 = a3[3];
        if (v44)
        {
          if (v11)
          {
            (*(*v44 + 16))(v44);
LABEL_102:
            v13 = *a3;
            v11 = a3[1];
            goto LABEL_93;
          }

LABEL_92:
          v13 = 0;
          goto LABEL_93;
        }

LABEL_91:
        v11 = 0;
        goto LABEL_92;
      default:
        v29 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v10 >= 0x107F)
          {
            v40 = 4223;
          }

          else
          {
            v40 = v10;
          }

          v41 = (&IPC::Detail::messageDescriptions)[3 * v40];
          v42 = a3[7];
          *buf = 136315394;
          *&buf[4] = v41;
          v61 = 2048;
          v62 = v42;
          _os_log_error_impl(&dword_19D52D000, v29, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
        }

LABEL_34:
        v24 = *a3;
        v25 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        result = a3[3];
        if (result && v25)
        {
          result = (*(*result + 16))(result, v24);
        }

        break;
    }

    if (*(this + 8) == 1)
    {
      return (*(*this + 24))(this, v24, v25);
    }

    --*(this + 8);
    return result;
  }

  v6 = qword_1ED6416C8;
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
    _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteCDMInstanceProxy", buf, 0xCu);
  }

  v7 = *a3;
  v8 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  result = a3[3];
  if (result)
  {
    if (v8)
    {
      return (*(*result + 16))(result, v7);
    }
  }

  return result;
}

BOOL WebKit::RemoteCDMInstanceProxy::didReceiveSyncMessage(_DWORD *a1, atomic_ullong *a2, uint64_t a3, uint64_t *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  WebKit::RemoteCDMInstanceProxy::sharedPreferencesForWebProcess(a1, v32);
  if (v32[24] == 1 && (v32[9] & 0x10) != 0)
  {
    ++a1[8];
    v13 = *(a3 + 50);
    v12 = v13 == 4022;
    if (v13 == 4022)
    {
      v14 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
      if (v15)
      {
        v17 = v14;
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
            goto LABEL_18;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_18:
        v24 = WTF::fastMalloc(0x18);
        *v24 = &unk_1F10F1D28;
        v24[1] = v18;
        v24[2] = a2;
        *buf = v24;
        WebKit::RemoteCDMInstanceProxy::createSession(a1, v17, buf);
        v25 = *buf;
        *buf = 0;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }
      }
    }

    else
    {
      v21 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v13 >= 0x107F)
        {
          v29 = 4223;
        }

        else
        {
          v29 = v13;
        }

        v30 = (&IPC::Detail::messageDescriptions)[3 * v29];
        v31 = *(a3 + 56);
        *buf = 136315394;
        *&buf[4] = v30;
        v34 = 2048;
        v35 = v31;
        _os_log_error_impl(&dword_19D52D000, v21, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
      }

      v15 = *a3;
      v16 = *(a3 + 8);
      *a3 = 0;
      *(a3 + 8) = 0;
      v23 = *(a3 + 24);
      if (v23 && v16)
      {
        (*(*v23 + 16))(v23, v15);
      }
    }

    if (a1[8] == 1)
    {
      (*(*a1 + 24))(a1, v15, v16);
    }

    else
    {
      --a1[8];
    }
  }

  else
  {
    v8 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a3 + 50);
      if (v27 >= 0x107F)
      {
        v27 = 4223;
      }

      v28 = (&IPC::Detail::messageDescriptions)[3 * v27];
      *buf = 136315138;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteCDMInstanceProxy", buf, 0xCu);
    }

    v9 = *a3;
    v10 = *(a3 + 8);
    *a3 = 0;
    *(a3 + 8) = 0;
    v11 = *(a3 + 24);
    if (v11 && v10)
    {
      (*(*v11 + 16))(v11, v9);
    }

    return 0;
  }

  return v12;
}

unsigned int *WebKit::RemoteCDMInstanceSession::didReceiveMessage(WebKit::RemoteCDMInstanceSession *this, IPC::Connection *a2, IPC::Decoder *a3, double a4, __n128 a5)
{
  v24 = *MEMORY[0x1E69E9840];
  ++*(this + 6);
  v7 = *(a3 + 25);
  if (v7 == 978)
  {
    v14 = IPC::Decoder::decode<WebKit::AuthenticationChallengeDisposition>(a3);
    if ((v14 & 0x100) != 0)
    {
      v15 = v14;
      IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a3, &v20);
      if (v21)
      {
        buf[0] = v15;
        *&buf[8] = v20;
        buf[16] = 1;
        result = WebKit::RemoteCDMInstanceSession::sendMessage(this, v15, &buf[8]);
        if (buf[16])
        {
          result = *&buf[8];
          *&buf[8] = 0;
          if (result)
          {
            if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, result + 2);
              result = (*(*result + 8))(result);
            }
          }
        }

        goto LABEL_20;
      }
    }

LABEL_19:
    v12 = *a3;
    v13 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (!result)
    {
      goto LABEL_20;
    }

LABEL_37:
    if (v13)
    {
      result = (*(*result + 16))(result, v12);
    }

    goto LABEL_20;
  }

  if (v7 == 979)
  {
    IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
    if (buf[8] & 1) != 0 || (v12 = *a3, v13 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v13 && (result = (*(*result + 16))(result, v12), (buf[8]))
    {
      result = WebKit::RemoteCDMInstanceSession::sessionIdChanged(this, buf);
      if (buf[8])
      {
        result = *buf;
        *buf = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v12);
          }
        }
      }
    }

    goto LABEL_20;
  }

  if (v7 != 980)
  {
    v16 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v7 >= 0x107F)
      {
        v17 = 4223;
      }

      else
      {
        v17 = v7;
      }

      v18 = (&IPC::Detail::messageDescriptions)[3 * v17];
      v19 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v18;
      *&buf[12] = 2048;
      *&buf[14] = v19;
      _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    goto LABEL_19;
  }

  IPC::VectorArgumentCoder<false,std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, buf, a5);
  if (buf[16])
  {
    goto LABEL_5;
  }

  v12 = *a3;
  v13 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = *(a3 + 3);
  if (!result || !v13)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    goto LABEL_20;
  }

  (*(*result + 16))(result, v12);
  if (buf[16])
  {
LABEL_5:
    v20 = *buf;
    v9 = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    v21 = v9;
    v22 = 1;
    WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v8);
    WebKit::RemoteCDMInstanceSession::updateKeyStatuses(this);
    result = WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v10);
    goto LABEL_20;
  }

  result = *(a3 + 3);
  v12 = *a3;
  v13 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  if (result)
  {
    goto LABEL_37;
  }

LABEL_20:
  if (*(this + 6) == 1)
  {
    return (*(*(this + 2) + 8))(this + 16, v12, v13);
  }

  --*(this + 6);
  return result;
}

_DWORD *WebKit::RemoteCDMInstanceSessionProxy::didReceiveMessage(WebKit::RemoteCDMInstanceSessionProxy *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v107 = *MEMORY[0x1E69E9840];
  WebKit::RemoteCDMInstanceProxy::sharedPreferencesForWebProcess(this, v100);
  if (v100[24] == 1 && (v100[9] & 0x10) != 0)
  {
    v11 = (this + 32);
    ++*(this + 8);
    v12 = *(a3 + 25);
    if (v12 > 0x3CD)
    {
      if (*(a3 + 25) <= 0x3CFu)
      {
        if (v12 != 974)
        {
          if (v12 == 975)
          {
            IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
            if (v13)
            {
              WebKit::RemoteCDMInstanceSessionProxy::setLogIdentifier(this);
            }

            return WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref(v11, v13);
          }

          goto LABEL_35;
        }

        v30 = IPC::Decoder::decode<WebCore::WritingDirection>(a3);
        if ((v30 & 0x100) == 0)
        {
          goto LABEL_81;
        }

        v31 = *(a3 + 1);
        v32 = *(a3 + 2);
        v33 = *a3;
        if (v31 <= &v32[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v97 = *(a3 + 3);
          if (v97)
          {
            if (v31)
            {
              (*(*v97 + 16))(v97);
              v31 = *(a3 + 1);
            }
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v32 + 1;
          if (v32)
          {
            v34 = *v32;
            if (v34 < 2)
            {
              v35 = v30;
              IPC::ArgumentCoder<WTF::AtomString,void>::decode(a3, &v101);
              if (v102)
              {
                IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a3, &v103);
                if (v104)
                {
                  buf[0] = v35;
                  buf[1] = v34;
                  v36 = v101;
                  v37 = v103;
                  *&buf[8] = v101;
                  *&buf[16] = v103;
                  v106 = 1;
                  v38 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
                  if (v13)
                  {
                    v39 = v38;
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
                        goto LABEL_103;
                      }
                    }

                    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_103:
                    v67 = WTF::fastMalloc(0x18);
                    *v67 = &unk_1F10F1D50;
                    *(v67 + 1) = v39;
                    *(v67 + 2) = a2;
                    v101 = v67;
                    *&buf[8] = 0;
                    v103 = v36;
                    WebKit::RemoteCDMInstanceSessionProxy::requestLicense(this, v35, v34 & 1, &v103, &buf[16], &v101);
                    v68 = v103;
                    v103 = 0;
                    if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v68, v13);
                    }

                    v69 = v101;
                    v101 = 0;
                    if (v69)
                    {
                      (*(*v69 + 8))(v69);
                    }

                    if ((v106 & 1) == 0)
                    {
                      return WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref(v11, v13);
                    }

                    v37 = *&buf[16];
                  }

                  *&buf[16] = 0;
                  if (v37 && atomic_fetch_add(v37 + 2, 0xFFFFFFFF) == 1)
                  {
                    atomic_store(1u, v37 + 2);
                    (*(*v37 + 8))(v37);
                  }

                  v62 = *&buf[8];
                  *&buf[8] = 0;
                  if (!v62)
                  {
                    return WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref(v11, v13);
                  }

                  goto LABEL_139;
                }

                v16 = v101;
                if (v101)
                {
LABEL_79:
                  if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v16, v15);
                  }
                }

LABEL_81:
                v13 = *a3;
                v58 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v59 = *(a3 + 3);
                if (v59 && v58)
                {
                  (*(*v59 + 16))(v59, v13);
                }

                return WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref(v11, v13);
              }

              goto LABEL_152;
            }

            goto LABEL_179;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v98 = *(a3 + 3);
        if (v98)
        {
          if (v31)
          {
            (*(*v98 + 16))(v98);
            v33 = *a3;
            v31 = *(a3 + 1);
            goto LABEL_179;
          }
        }

        else
        {
          v31 = 0;
        }

        v33 = 0;
LABEL_179:
        *a3 = 0;
        *(a3 + 1) = 0;
        v99 = *(a3 + 3);
        if (!v99)
        {
          goto LABEL_81;
        }

        if (!v31)
        {
          goto LABEL_81;
        }

        (*(*v99 + 16))(v99, v33);
        v85 = *(a3 + 3);
        v83 = *a3;
        v84 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        if (!v85)
        {
          goto LABEL_81;
        }

LABEL_153:
        if (v84)
        {
          (*(*v85 + 16))(v85, v83);
        }

        goto LABEL_81;
      }

      if (v12 != 976)
      {
        if (v12 == 977)
        {
          IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v101);
          if ((v102 & 1) == 0)
          {
            v86 = *a3;
            v87 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v88 = *(a3 + 3);
            if (!v88)
            {
              goto LABEL_81;
            }

            if (!v87)
            {
              goto LABEL_81;
            }

            (*(*v88 + 16))(v88, v86);
            if ((v102 & 1) == 0)
            {
              goto LABEL_81;
            }
          }

          v17 = IPC::Decoder::decode<WebCore::WritingDirection>(a3);
          v19 = v17;
          if ((v17 & 0x100) == 0)
          {
            v20 = 0;
            buf[0] = 0;
            v106 = 0;
            goto LABEL_117;
          }

          IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a3, &v103);
          if (v104 != 1)
          {
            v20 = 0;
            buf[0] = 0;
            goto LABEL_116;
          }

          if (v102)
          {
            v52 = v101;
            v101 = 0;
            *buf = v52;
            buf[8] = v19;
            v3 = v103;
            *&buf[16] = v103;
            v20 = 1;
LABEL_116:
            v106 = v20;
LABEL_117:
            if (v102)
            {
              v70 = v101;
              v101 = 0;
              if (v70)
              {
                if (atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v70, v18);
                }
              }
            }

            if ((v20 & 1) == 0)
            {
              goto LABEL_81;
            }

            v71 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if (v13)
            {
              v72 = v71;
              while (1)
              {
                v73 = *a2;
                if ((*a2 & 1) == 0)
                {
                  break;
                }

                v74 = *a2;
                atomic_compare_exchange_strong_explicit(a2, &v74, v73 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v74 == v73)
                {
                  goto LABEL_128;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_128:
              v75 = WTF::fastMalloc(0x18);
              *v75 = &unk_1F10F1D78;
              *(v75 + 1) = v72;
              *(v75 + 2) = a2;
              v101 = v75;
              v76 = *buf;
              *buf = 0;
              v103 = v76;
              WebKit::RemoteCDMInstanceSessionProxy::updateLicense(this, &v103, v19, &buf[16], &v101);
              v77 = v103;
              v103 = 0;
              if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v77, v13);
              }

              v78 = v101;
              v101 = 0;
              if (v78)
              {
                (*(*v78 + 8))(v78);
              }

              if ((v106 & 1) == 0)
              {
                return WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref(v11, v13);
              }

              v3 = *&buf[16];
            }

            *&buf[16] = 0;
            if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v3 + 2);
              (*(*v3 + 8))(v3);
            }

            goto LABEL_138;
          }

LABEL_151:
          __break(1u);
LABEL_152:
          v83 = *a3;
          v84 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v85 = *(a3 + 3);
          if (!v85)
          {
            goto LABEL_81;
          }

          goto LABEL_153;
        }

LABEL_35:
        v26 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v12 >= 0x107F)
          {
            v27 = 4223;
          }

          else
          {
            v27 = v12;
          }

          v28 = (&IPC::Detail::messageDescriptions)[3 * v27];
          v29 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v28;
          *&buf[12] = 2048;
          *&buf[14] = v29;
          _os_log_error_impl(&dword_19D52D000, v26, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
        }

        goto LABEL_81;
      }

      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[8] & 1) == 0)
      {
        v13 = *a3;
        v81 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v82 = *(a3 + 3);
        if (!v82)
        {
          return WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref(v11, v13);
        }

        if (!v81)
        {
          return WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref(v11, v13);
        }

        (*(*v82 + 16))(v82, v13);
        if ((buf[8] & 1) == 0)
        {
          return WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref(v11, v13);
        }
      }

      WebKit::RemoteCDMInstanceSessionProxy::storeRecordOfKeyUsage(this, buf);
      if ((buf[8] & 1) == 0)
      {
        return WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref(v11, v13);
      }

LABEL_138:
      v62 = *buf;
      *buf = 0;
      if (!v62)
      {
        return WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref(v11, v13);
      }

LABEL_139:
      if (atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
LABEL_140:
        WTF::StringImpl::destroy(v62, v13);
      }

      return WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref(v11, v13);
    }

    switch(v12)
    {
      case 0x3CBu:
        IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
        if (buf[8] & 1) != 0 || (v13 = *a3, v79 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v80 = *(a3 + 3)) != 0) && v79 && ((*(*v80 + 16))(v80, v13), (buf[8]))
        {
          v23 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if (v13)
          {
            a3 = v23;
            while (1)
            {
              v24 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v25 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v25 == v24)
              {
                goto LABEL_64;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_64:
            v50 = WTF::fastMalloc(0x18);
            *v50 = &unk_1F10F1DC8;
            *(v50 + 1) = a3;
            *(v50 + 2) = a2;
            v103 = v50;
            if ((buf[8] & 1) == 0)
            {
              goto LABEL_151;
            }

            WebKit::RemoteCDMInstanceSessionProxy::closeSession(this, buf, &v103);
            v51 = v103;
            v103 = 0;
            if (v51)
            {
              (*(*v51 + 8))(v51);
            }
          }
        }

        if (buf[8] != 1)
        {
          return WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref(v11, v13);
        }

        goto LABEL_138;
      case 0x3CCu:
        v42 = IPC::Decoder::decode<WebCore::WritingDirection>(a3);
        if ((v42 & 0x100) == 0)
        {
          goto LABEL_81;
        }

        v43 = v42;
        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v103);
        if ((v104 & 1) == 0)
        {
          v92 = *a3;
          v93 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v94 = *(a3 + 3);
          if (!v94)
          {
            goto LABEL_81;
          }

          if (!v93)
          {
            goto LABEL_81;
          }

          (*(*v94 + 16))(v94, v92);
          if ((v104 & 1) == 0)
          {
            goto LABEL_81;
          }
        }

        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, buf);
        if ((buf[8] & 1) == 0)
        {
          v15 = *a3;
          v95 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v96 = *(a3 + 3);
          if (!v96)
          {
            goto LABEL_18;
          }

          if (!v95)
          {
            goto LABEL_18;
          }

          (*(*v96 + 16))(v96, v15);
          if ((buf[8] & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        if ((v104 & 1) == 0)
        {
          goto LABEL_151;
        }

        v44 = v103;
        v45 = *buf;
        v46 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v13)
        {
          v47 = v46;
          while (1)
          {
            v48 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v49 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v49, v48 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v49 == v48)
            {
              goto LABEL_94;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_94:
          v63 = WTF::fastMalloc(0x18);
          *v63 = &unk_1F10F1DA0;
          *(v63 + 1) = v47;
          *(v63 + 2) = a2;
          v101 = v63;
          *buf = v44;
          v103 = v45;
          WebKit::RemoteCDMInstanceSessionProxy::loadSession(this, v43, buf, &v103, &v101);
          v64 = v103;
          v103 = 0;
          if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v64, v13);
          }

          v65 = *buf;
          *buf = 0;
          if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v65, v13);
          }

          v66 = v101;
          v101 = 0;
          if (v66)
          {
            (*(*v66 + 8))(v66);
          }

          return WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref(v11, v13);
        }

        if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v45, v13);
        }

        break;
      case 0x3CDu:
        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v103);
        if ((v104 & 1) == 0)
        {
          v89 = *a3;
          v90 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v91 = *(a3 + 3);
          if (!v91)
          {
            goto LABEL_81;
          }

          if (!v90)
          {
            goto LABEL_81;
          }

          (*(*v91 + 16))(v91, v89);
          if ((v104 & 1) == 0)
          {
            goto LABEL_81;
          }
        }

        v14 = IPC::Decoder::decode<WebCore::WritingDirection>(a3);
        if ((v14 & 0x100) == 0)
        {
LABEL_18:
          if (v104)
          {
            v16 = v103;
            v103 = 0;
            if (v16)
            {
              goto LABEL_79;
            }
          }

          goto LABEL_81;
        }

        if ((v104 & 1) == 0)
        {
          goto LABEL_151;
        }

        v53 = v14;
        v44 = v103;
        *buf = v103;
        buf[8] = v14;
        buf[16] = 1;
        v54 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v13)
        {
          v55 = v54;
          while (1)
          {
            v56 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v57 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v57, v56 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v57 == v56)
            {
              goto LABEL_85;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_85:
          v60 = WTF::fastMalloc(0x18);
          *v60 = &unk_1F10F1DF0;
          *(v60 + 1) = v55;
          *(v60 + 2) = a2;
          v103 = v60;
          WebKit::RemoteCDMInstanceSessionProxy::removeSessionData(this, buf, v53, &v103);
          v61 = v103;
          v103 = 0;
          if (v61)
          {
            (*(*v61 + 8))(v61);
          }

          if ((buf[16] & 1) == 0)
          {
            return WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref(v11, v13);
          }

          v44 = *buf;
        }

        *buf = 0;
        break;
      default:
        goto LABEL_35;
    }

    if (!v44 || atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      return WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref(v11, v13);
    }

    v62 = v44;
    goto LABEL_140;
  }

  v7 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v21 = *(a3 + 25);
    if (v21 >= 0x107F)
    {
      v21 = 4223;
    }

    v22 = (&IPC::Detail::messageDescriptions)[3 * v21];
    *buf = 136315138;
    *&buf[4] = v22;
    _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteCDMInstanceSessionProxy", buf, 0xCu);
  }

  v8 = *a3;
  v9 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = *(a3 + 3);
  if (result)
  {
    if (v9)
    {
      return (*(*result + 16))(result, v8);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::RemoteCDMProxy::didReceiveMessage(WebKit::RemoteCDMProxy *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  WebKit::RemoteCDMProxy::sharedPreferencesForWebProcess(this, v42);
  if (v42[24] == 1 && (v42[9] & 0x10) != 0)
  {
    ++*(this + 4);
    v10 = *(a3 + 25);
    switch(v10)
    {
      case 0x3D8u:
        result = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
        if (v21)
        {
          *(this + 7) = result;
          v23 = *(this + 3);
          if (v23)
          {
            if (*(v23 + 8))
            {
              result = (*(**(this + 4) + 16))(*(this + 4), result);
            }
          }
        }

        break;
      case 0x3D7u:
        result = (*(**(this + 4) + 104))(*(this + 4));
        break;
      case 0x3D6u:
        IPC::Decoder::decode<WebCore::CDMKeySystemConfiguration>(&v43, a3);
        if (v49 != 1)
        {
          buf[0] = 0;
          v58 = 0;
LABEL_34:
          if (v58 & 1) != 0 || (v21 = *a3, v22 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v22 && (result = (*(*result + 16))(result, v21), (v58))
          {
            result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if (v21)
            {
              v27 = result;
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
                  goto LABEL_41;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_41:
              v30 = WTF::fastMalloc(0x18);
              *v30 = &unk_1F10F1E18;
              *(v30 + 1) = v27;
              *(v30 + 2) = a2;
              v43 = v30;
              if ((v58 & 1) == 0)
              {
                __break(1u);
              }

              WebKit::RemoteCDMProxy::getSupportedConfiguration(this, buf, v57, &v43);
              result = v43;
              v43 = 0;
              if (result)
              {
                result = (*(*result + 8))(result);
              }
            }
          }

          if (v58 == 1)
          {
            v31 = v55;
            if (v55)
            {
              v55 = 0;
              v56 = 0;
              WTF::fastFree(v31, v21);
            }

            WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v54, v21);
            WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v53, v32);
            WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf[8], v33);
            result = *buf;
            *buf = 0;
            if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v21);
            }
          }

          break;
        }

        v11 = *(a3 + 1);
        v12 = *(a3 + 2);
        v13 = *a3;
        if (v11 <= &v12[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v37 = *(a3 + 3);
          if (v37)
          {
            if (v11)
            {
              (*(*v37 + 16))(v37);
              v11 = *(a3 + 1);
            }
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v12 + 1;
          if (v12)
          {
            v14 = *v12;
            if (v14 < 2)
            {
              std::__tuple_leaf<0ul,WebCore::CDMKeySystemConfiguration,false>::__tuple_leaf[abi:sn200100]<WebCore::CDMKeySystemConfiguration,0>(buf, &v43);
              v57 = v14;
              v15 = 1;
LABEL_15:
              v58 = v15;
              if (v49)
              {
                v16 = v47;
                if (v47)
                {
                  v47 = 0;
                  v48 = 0;
                  WTF::fastFree(v16, v13);
                }

                WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v46, v13);
                WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v45, v17);
                WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v18);
                v20 = v43;
                v43 = 0;
                if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v20, v19);
                }
              }

              goto LABEL_34;
            }

LABEL_68:
            *a3 = 0;
            *(a3 + 1) = 0;
            v39 = *(a3 + 3);
            if (v39)
            {
              if (v11)
              {
                (*(*v39 + 16))(v39, v13);
                v40 = *(a3 + 3);
                v13 = *a3;
                v41 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                if (v40)
                {
                  if (v41)
                  {
                    (*(*v40 + 16))(v40, v13);
                  }
                }
              }
            }

            v15 = 0;
            buf[0] = 0;
            goto LABEL_15;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v38 = *(a3 + 3);
        if (v38)
        {
          if (v11)
          {
            (*(*v38 + 16))(v38);
            v13 = *a3;
            v11 = *(a3 + 1);
            goto LABEL_68;
          }
        }

        else
        {
          v11 = 0;
        }

        v13 = 0;
        goto LABEL_68;
      default:
        v24 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v10 >= 0x107F)
          {
            v34 = 4223;
          }

          else
          {
            v34 = v10;
          }

          v35 = (&IPC::Detail::messageDescriptions)[3 * v34];
          v36 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v35;
          v51 = 2048;
          v52 = v36;
          _os_log_error_impl(&dword_19D52D000, v24, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
        }

        v21 = *a3;
        v22 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        result = *(a3 + 3);
        if (result && v22)
        {
          result = (*(*result + 16))(result, v21);
        }

        break;
    }

    if (*(this + 4) == 1)
    {
      return (*(*this + 24))(this, v21, v22);
    }

    --*(this + 4);
    return result;
  }

  v6 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v25 = *(a3 + 25);
    if (v25 >= 0x107F)
    {
      v25 = 4223;
    }

    v26 = (&IPC::Detail::messageDescriptions)[3 * v25];
    *buf = 136315138;
    *&buf[4] = v26;
    _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteCDMProxy", buf, 0xCu);
  }

  v7 = *a3;
  v8 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = *(a3 + 3);
  if (result)
  {
    if (v8)
    {
      return (*(*result + 16))(result, v7);
    }
  }

  return result;
}

BOOL WebKit::RemoteCDMProxy::didReceiveSyncMessage(_DWORD *a1, atomic_ullong *a2, uint64_t *a3, uint64_t *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  WebKit::RemoteCDMProxy::sharedPreferencesForWebProcess(a1, v30);
  if (v30[24] == 1 && (v30[9] & 0x10) != 0)
  {
    ++a1[4];
    v13 = *(a3 + 25);
    v12 = v13 == 4023;
    if (v13 == 4023)
    {
      v14 = *a4;
      *a4 = 0;
      while (1)
      {
        v15 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v16 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v16 == v15)
        {
          goto LABEL_17;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_17:
      v22 = WTF::fastMalloc(0x18);
      *v22 = &unk_1F10F1E40;
      v22[1] = v14;
      v22[2] = a2;
      *buf = v22;
      WebKit::RemoteCDMProxy::createInstance(a1, buf);
      v23 = *buf;
      *buf = 0;
      if (v23)
      {
        (*(*v23 + 8))(v23);
      }
    }

    else
    {
      v17 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v13 >= 0x107F)
        {
          v27 = 4223;
        }

        else
        {
          v27 = v13;
        }

        v28 = (&IPC::Detail::messageDescriptions)[3 * v27];
        v29 = a3[7];
        *buf = 136315394;
        *&buf[4] = v28;
        v32 = 2048;
        v33 = v29;
        _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
      }

      v19 = *a3;
      v20 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v21 = a3[3];
      if (v21 && v20)
      {
        (*(*v21 + 16))(v21, v19);
      }
    }

    if (a1[4] == 1)
    {
      (*(*a1 + 24))(a1, v19, v20);
    }

    else
    {
      --a1[4];
    }
  }

  else
  {
    v8 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a3 + 25);
      if (v25 >= 0x107F)
      {
        v25 = 4223;
      }

      v26 = (&IPC::Detail::messageDescriptions)[3 * v25];
      *buf = 136315138;
      *&buf[4] = v26;
      _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteCDMProxy", buf, 0xCu);
    }

    v9 = *a3;
    v10 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v11 = a3[3];
    if (v11 && v10)
    {
      (*(*v11 + 16))(v11, v9);
    }

    return 0;
  }

  return v12;
}

uint64_t WebKit::RemoteCaptureSampleManager::didReceiveMessage(WebKit::RemoteCaptureSampleManager *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v81 = *MEMORY[0x1E69E9840];
  (**this)(this, a2);
  v7 = *(a3 + 25);
  if (v7 != 987)
  {
    if (v7 != 986)
    {
      if (v7 == 985)
      {
        v8 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v9 & 1) == 0)
        {
LABEL_53:
          buf[0] = 0;
          v80 = 0;
          goto LABEL_54;
        }

        v10 = v8;
        IPC::ArgumentCoder<WebKit::ConsumerSharedCARingBufferHandle,void>::decode(a3, v70);
        if ((v70[24] & 1) == 0)
        {
          v49 = *a3;
          v50 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v51 = *(a3 + 3);
          if (!v51 || !v50 || ((*(*v51 + 16))(v51, v49), (v70[24] & 1) == 0))
          {
            buf[0] = 0;
            v80 = 0;
            goto LABEL_88;
          }
        }

        IPC::ArgumentCoder<WebCore::CAAudioStreamDescription,void>::decode(a3, v61);
        if ((v64 & 1) == 0)
        {
          v52 = *a3;
          v53 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v54 = *(a3 + 3);
          if (!v54 || !v53 || ((*(*v54 + 16))(v54, v52), (v64 & 1) == 0))
          {
            buf[0] = 0;
            v80 = 0;
LABEL_86:
            if (v70[24])
            {
              WTF::MachSendRight::~MachSendRight(v70);
            }

LABEL_88:
            if (v80)
            {
LABEL_89:
              WebKit::RemoteCaptureSampleManager::audioStorageChanged(this, *buf, &buf[8], &buf[32], &v77, &v78, v79);
              if (v80)
              {
                IPC::Semaphore::destroy(&v77);
                WTF::MachSendRight::~MachSendRight(&v77);
                WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(&buf[32]);
                WTF::MachSendRight::~MachSendRight(&buf[8]);
              }

              return (*(*this + 8))(this, v22, v23);
            }

LABEL_54:
            v22 = *a3;
            v23 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v42 = *(a3 + 3);
            if (!v42)
            {
              return (*(*this + 8))(this, v22, v23);
            }

            if (!v23)
            {
              return (*(*this + 8))(this, v22, v23);
            }

            (*(*v42 + 16))(v42, v22);
            if ((v80 & 1) == 0)
            {
              return (*(*this + 8))(this, v22, v23);
            }

            goto LABEL_89;
          }
        }

        IPC::ArgumentCoder<IPC::Semaphore,void>::decode(a3, v65);
        if ((v67 & 1) == 0)
        {
          v39 = *a3;
          v40 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v41 = *(a3 + 3);
          if (!v41 || !v40 || ((*(*v41 + 16))(v41, v39), (v67 & 1) == 0))
          {
            buf[0] = 0;
            v80 = 0;
LABEL_84:
            if (v64)
            {
              WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(v61);
            }

            goto LABEL_86;
          }
        }

        IPC::Decoder::decode<WTF::MediaTime>(a3, cf);
        if (v69)
        {
          v11 = *(a3 + 1);
          v12 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
          v13 = v12 - *a3;
          v14 = v11 >= v13;
          v15 = v11 - v13;
          if (v14 && v15 > 7)
          {
            *(a3 + 2) = v12 + 1;
            if (v12)
            {
              if (v70[24] & 1) != 0 && (v64 & 1) != 0 && (v67)
              {
                v16 = *v12;
                *buf = v10;
                WTF::MachSendRight::MachSendRight();
                *&buf[16] = *&v70[8];
                *&buf[32] = MEMORY[0x1E69E2E98] + 16;
                *v76 = *&v61[24];
                *&v76[16] = *&v61[40];
                *&v76[32] = v62;
                *&v76[48] = v63;
                v75 = *&v61[8];
                WTF::MachSendRight::MachSendRight();
                v17 = v66;
                v66 = 0;
                HIDWORD(v77) = v17;
                v78 = *cf;
                v79 = v16;
                v18 = 1;
                goto LABEL_82;
              }

              goto LABEL_52;
            }
          }

          else
          {
            *a3 = 0;
            *(a3 + 1) = 0;
            v55 = *(a3 + 3);
            if (v55)
            {
              if (v11)
              {
                (*(*v55 + 16))(v55);
                v11 = *(a3 + 1);
              }
            }

            else
            {
              v11 = 0;
            }
          }

          *a3 = 0;
          *(a3 + 1) = 0;
          v56 = *(a3 + 3);
          if (v56 && v11)
          {
            (*(*v56 + 16))(v56);
          }
        }

        v18 = 0;
        buf[0] = 0;
LABEL_82:
        v80 = v18;
        if (v67)
        {
          IPC::Semaphore::destroy(v65);
          WTF::MachSendRight::~MachSendRight(v65);
        }

        goto LABEL_84;
      }

      v29 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v7 >= 0x107F)
        {
          v36 = 4223;
        }

        else
        {
          v36 = v7;
        }

        v37 = (&IPC::Detail::messageDescriptions)[3 * v36];
        v38 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v37;
        *&buf[12] = 2048;
        *&buf[14] = v38;
        _os_log_error_impl(&dword_19D52D000, v29, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_27;
    }

    v19 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v20)
    {
      v21 = v19;
      IPC::ArgumentCoder<WebKit::RemoteVideoFrameProxyProperties,void>::decode(a3, v70);
      if (v73 & 1) != 0 || (v43 = *a3, v44 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v45 = *(a3 + 3)) != 0) && v44 && ((*(*v45 + 16))(v45, v43), (v73))
      {
        IPC::Decoder::decode<WebCore::VideoFrameTimeMetadata>(v61, a3);
        if (v62 == 1)
        {
          if (v73)
          {
            *&buf[8] = *v70;
            *&buf[24] = *&v70[16];
            v75 = v71;
            *buf = v21;
            *v76 = v72;
            *&v76[8] = *v61;
            *&v76[24] = *&v61[16];
            *&v76[40] = *&v61[32];
            v77 = *&v61[48];
            LOBYTE(v78) = 1;
            WebKit::RemoteCaptureSampleManager::videoFrameAvailable(this, v21, &buf[8], v61);
            return (*(*this + 8))(this, v22, v23);
          }

          goto LABEL_52;
        }
      }
    }

LABEL_27:
    v22 = *a3;
    v23 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v30 = *(a3 + 3);
    if (v30 && v23)
    {
      (*(*v30 + 16))(v30, v22);
    }

    return (*(*this + 8))(this, v22, v23);
  }

  v24 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
  if ((v25 & 1) == 0)
  {
    goto LABEL_27;
  }

  v26 = v24;
  IPC::ArgumentCoder<WTF::RetainPtr<__CVBuffer *>,void>::decode(a3, cf);
  if ((cf[1] & 1) == 0)
  {
    v46 = *a3;
    v47 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v48 = *(a3 + 3);
    if (v48 && v47)
    {
      (*(*v48 + 16))(v48, v46);
    }

    goto LABEL_27;
  }

  v27 = IPC::Decoder::decode<WebCore::VideoFrameRotation>(a3);
  if ((v27 & 0x10000) == 0)
  {
    goto LABEL_25;
  }

  v31 = *(a3 + 1);
  v32 = *(a3 + 2);
  v33 = *a3;
  if (v31 <= &v32[-*a3])
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    v58 = *(a3 + 3);
    if (v58)
    {
      if (v31)
      {
        (*(*v58 + 16))(v58);
        v31 = *(a3 + 1);
      }
    }

    else
    {
      v31 = 0;
    }

    goto LABEL_94;
  }

  *(a3 + 2) = v32 + 1;
  if (!v32)
  {
LABEL_94:
    *a3 = 0;
    *(a3 + 1) = 0;
    v59 = *(a3 + 3);
    if (v59)
    {
      if (v31)
      {
        (*(*v59 + 16))(v59);
        v33 = *a3;
        v31 = *(a3 + 1);
        goto LABEL_97;
      }
    }

    else
    {
      v31 = 0;
    }

    v33 = 0;
LABEL_97:
    *a3 = 0;
    *(a3 + 1) = 0;
    v60 = *(a3 + 3);
    if (v60 && v31)
    {
      (*(*v60 + 16))(v60, v33);
    }

LABEL_25:
    v28 = 0;
    buf[0] = 0;
    v76[40] = 0;
    goto LABEL_40;
  }

  v4 = *v32;
  if (v4 >= 2)
  {
    goto LABEL_97;
  }

  v3 = v27;
  IPC::Decoder::decode<WTF::MediaTime>(a3, v70);
  if (v70[16])
  {
    IPC::Decoder::decode<WebCore::VideoFrameTimeMetadata>(v61, a3);
    if (v62)
    {
      if ((v70[16] & 1) == 0)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      *&buf[24] = *v70;
      v75 = *v61;
      v34 = cf[0];
      cf[0] = 0;
      *buf = v26;
      *&buf[8] = v34;
      *&buf[16] = v3;
      buf[18] = v4;
      *v76 = *&v61[16];
      *&v76[32] = *&v61[48];
      v28 = 1;
      *&v76[16] = *&v61[32];
    }

    else
    {
      v28 = 0;
      buf[0] = 0;
    }

    v76[40] = v28;
  }

  else
  {
    v28 = 0;
    buf[0] = 0;
    v76[40] = 0;
  }

LABEL_40:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if ((v28 & 1) == 0)
  {
    goto LABEL_27;
  }

  *v61 = v75;
  *&v61[16] = *v76;
  *&v61[32] = *&v76[16];
  *&v61[48] = *&v76[32];
  WebKit::RemoteCaptureSampleManager::videoFrameAvailableCV(this, *buf, &buf[8], v3, v4 & 1, *&buf[24], *&buf[32], v61);
  if (v76[40])
  {
    v35 = *&buf[8];
    *&buf[8] = 0;
    if (v35)
    {
      CFRelease(v35);
    }
  }

  return (*(*this + 8))(this, v22, v23);
}

void WebKit::RemoteImageBuffer::didReceiveStreamMessage(atomic_uint *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = 1;
  atomic_fetch_add(this + 2, 1u);
  v9 = *(a3 + 25);
  if (v9 == 1376)
  {
    IPC::ArgumentCoder<WebCore::PixelBufferSourceView,void>::decode(a3, &v38);
    if ((v42 & 1) == 0)
    {
      IPC::Decoder::markInvalid(a3);
      if ((v42 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v10 = IPC::Decoder::decode<WebCore::IntPoint>(a3);
    if ((v11 & 1) == 0 || (v12 = IPC::Decoder::decode<WebCore::IntSize>(a3), (v13 & 1) == 0) || (v9 = v12, v14 = IPC::Decoder::decode<WebCore::IntPoint>(a3), (v15 & 1) == 0) || (v3 = v14, v17 = IPC::Decoder::decode<WebCore::PathRoundedRect::Strategy>(a3), (v17 & 0x100) == 0))
    {
      v19 = 0;
      buf[0] = 0;
LABEL_9:
      v49 = v19;
      if (v42)
      {
        v20 = cf;
        cf = 0;
        if (v20)
        {
          CFRelease(v20);
        }
      }

      if ((v19 & 1) == 0)
      {
        goto LABEL_58;
      }

      WebKit::RemoteImageBuffer::putPixelBuffer(this, buf, v10, v9, v3, v4);
      if (v49)
      {
        v21 = *&buf[8];
        *&buf[8] = 0;
        if (v21)
        {
          CFRelease(v21);
        }
      }

LABEL_16:
      if (!this)
      {
        return;
      }

      goto LABEL_17;
    }

    if (v42)
    {
      v4 = v17;
      *buf = v38;
      v18 = cf;
      cf = 0;
      *&buf[8] = v18;
      *&buf[16] = v40;
      v44 = v41;
      v45 = v10;
      v46 = v9;
      v47 = v3;
      v19 = 1;
      v48 = v17;
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_38;
  }

  if (*(a3 + 25) > 0x1001u)
  {
    v10 = a2;
    v16 = v9 == 4099;
    if (*(a3 + 25) > 0x1003u)
    {
      if (v9 != 4100)
      {
        if (v9 == 4101)
        {
          IPC::handleMessageSynchronous<Messages::RemoteImageBuffer::GetPixelBufferWithNewMemory,WebKit::RemoteImageBuffer,WebKit::RemoteImageBuffer,void ()(WebCore::SharedMemoryHandle &&,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
          goto LABEL_16;
        }

        if (v9 == 4102)
        {
          IPC::handleMessageSynchronous<Messages::RemoteImageBuffer::GetShareableBitmap,WebKit::RemoteImageBuffer,WebKit::RemoteImageBuffer,void ()(WebCore::PreserveResolution,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)> &&)>(a2, a3, this);
          goto LABEL_16;
        }

LABEL_57:
        v34 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v9 >= 0x107F)
          {
            v35 = 4223;
          }

          else
          {
            v35 = v9;
          }

          v36 = (&IPC::Detail::messageDescriptions)[3 * v35];
          v37 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v36;
          *&buf[12] = 2048;
          *&buf[14] = v37;
          _os_log_error_impl(&dword_19D52D000, v34, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
        }

        goto LABEL_58;
      }

      IPC::ArgumentCoder<WebCore::PixelBufferFormat,void>::decode(a3, buf);
      if ((buf[16] & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
LABEL_58:
        IPC::Decoder::markInvalid(a3);
        goto LABEL_16;
      }

      v22 = IPC::Decoder::decode<WebCore::IntPoint>(a3);
      if (v23 & 1) != 0 && (v24 = IPC::Decoder::decode<WebCore::IntSize>(a3), (v25))
      {
        v3 = v24;
        v26 = *buf;
        v5 = *&buf[8];
        v27 = 1;
        *&buf[8] = 0;
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

      if (*&buf[8])
      {
        CFRelease(*&buf[8]);
      }

      if ((v27 & 1) == 0)
      {
        goto LABEL_58;
      }

      v28 = *(a3 + 8);
      if (v28)
      {
        atomic_fetch_add(v10 + 2, 1u);
        v29 = WTF::fastMalloc(0x18);
        *v29 = &unk_1F10F1E68;
        v29[1] = v28;
        v29[2] = v10;
        v38 = v29;
        *buf = v26;
        *&buf[8] = v5;
        WebKit::RemoteImageBuffer::getPixelBuffer(this, buf, v22, v3, &v38);
        v30 = *&buf[8];
        *&buf[8] = 0;
        if (v30)
        {
          CFRelease(v30);
        }

        v31 = v38;
        v38 = 0;
        if (!v31)
        {
          goto LABEL_16;
        }

LABEL_36:
        (*(*v31 + 8))(v31);
        goto LABEL_16;
      }

      __break(0xC471u);
LABEL_66:
      JUMPOUT(0x19D9FF75CLL);
    }

LABEL_38:
    if (!v16)
    {
      if (v9 == 4098)
      {
        IPC::handleMessageSynchronous<Messages::RemoteImageBuffer::FilteredNativeImage,WebKit::RemoteImageBuffer,WebKit::RemoteImageBuffer,void ()(WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)> &&)>(v10, a3, this);
        goto LABEL_16;
      }

      goto LABEL_57;
    }

    v32 = *(a3 + 8);
    if (v32)
    {
      atomic_fetch_add(v10 + 2, v8);
      v33 = WTF::fastMalloc(0x18);
      *v33 = &unk_1F10F1F08;
      v33[1] = v32;
      v33[2] = v10;
      *buf = v33;
      WebKit::RemoteImageBuffer::flushContextSync(this, buf);
      v31 = *buf;
      *buf = 0;
      if (!v31)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }

    __break(0xC471u);
    goto LABEL_66;
  }

  if (v9 != 1375)
  {
    if (v9 == 1374)
    {
      WebKit::RemoteImageBuffer::convertToLuminanceMask(this);
      goto LABEL_16;
    }

    if (v9 == 1377)
    {
      IPC::handleMessage<Messages::RemoteImageBuffer::TransformToColorSpace,IPC::StreamServerConnection,WebKit::RemoteImageBuffer,WebKit::RemoteImageBuffer,void ()(WebCore::DestinationColorSpace const&)>(a3, this);
      goto LABEL_16;
    }

    goto LABEL_57;
  }

  (*(**(this + 2) + 24))(*(this + 2), a2);
LABEL_17:
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 2);
    (*(*this + 8))(this);
  }
}

void IPC::handleMessage<Messages::RemoteImageBuffer::TransformToColorSpace,IPC::StreamServerConnection,WebKit::RemoteImageBuffer,WebKit::RemoteImageBuffer,void ()(WebCore::DestinationColorSpace const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::tuple<WebCore::DestinationColorSpace>,void>::decode<IPC::Decoder>(a1, &cf);
  if (v10 & 1) != 0 || ((v5 = *a1, v6 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v7 = *(a1 + 3)) != 0) ? (v8 = v6 == 0) : (v8 = 1), !v8 && ((*(*v7 + 16))(v7, v5), (v10)))
  {
    WebKit::RemoteImageBuffer::transformToColorSpace(a2);
    if (v10)
    {
      v4 = cf;
      cf = 0;
      if (v4)
      {
        CFRelease(v4);
      }
    }
  }
}

WTF::MachSendRight *IPC::handleMessageSynchronous<Messages::RemoteImageBuffer::GetPixelBufferWithNewMemory,WebKit::RemoteImageBuffer,WebKit::RemoteImageBuffer,void ()(WebCore::SharedMemoryHandle &&,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize,WTF::CompletionHandler<void ()(void)> &&)>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<std::tuple<WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>>(v11, a2);
  if (v11[48] != 1)
  {
    return std::optional<std::tuple<WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>>::~optional(v11);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    atomic_fetch_add((a1 + 8), 1u);
    v7 = WTF::fastMalloc(0x18);
    *v7 = &unk_1F10F1E90;
    v7[1] = v6;
    v7[2] = a1;
    v10 = v7;
    IPC::callMemberFunction<WebKit::RemoteImageBuffer,WebKit::RemoteImageBuffer,void ()(WebCore::SharedMemoryHandle &&,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize,WTF::CompletionHandler<void ()(void)> &&),std::tuple<WebCore::SharedMemoryHandle,WebCore::SharedMemoryHandle &&,WebCore::PixelBufferFormat,WebCore::IntPoint>,WTF::CompletionHandler>(a3, v11, &v10);
    v8 = v10;
    v10 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    return std::optional<std::tuple<WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>>::~optional(v11);
  }

  result = 157;
  __break(0xC471u);
  return result;
}

uint64_t IPC::handleMessageSynchronous<Messages::RemoteImageBuffer::GetShareableBitmap,WebKit::RemoteImageBuffer,WebKit::RemoteImageBuffer,void ()(WebCore::PreserveResolution,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)> &&)>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[2];
  v6 = *a2;
  v7 = a2[1];
  if (v7 <= &v5[-v6])
  {
    *a2 = 0;
    a2[1] = 0;
    v13 = a2;
    v14 = a2[3];
    if (v14)
    {
      if (v7)
      {
        (*(*v14 + 16))(v14);
        v6 = *v13;
        v7 = v13[1];
        goto LABEL_11;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
  }

  else
  {
    a2[2] = (v5 + 1);
    if (v5)
    {
      v8 = *v5;
      if (v8 < 2)
      {
        v9 = a2[8];
        if (!v9)
        {
          __break(0xC471u);
          JUMPOUT(0x19D9FFA74);
        }

        atomic_fetch_add((a1 + 8), 1u);
        v11 = WTF::fastMalloc(0x18);
        *v11 = &unk_1F10F1EB8;
        v11[1] = v9;
        v11[2] = a1;
        v20 = v11;
        WebKit::RemoteImageBuffer::getShareableBitmap(a3, v8 & 1, &v20);
        result = v20;
        v20 = 0;
        if (result)
        {
          return (*(*result + 8))(result);
        }

        return result;
      }

      v13 = a2;
      goto LABEL_15;
    }

    v13 = a2;
  }

LABEL_11:
  *v13 = 0;
  v13[1] = 0;
  v15 = v13[3];
  if (v15)
  {
    if (v7)
    {
      (*(*v15 + 16))(v15, v6);
      v6 = *v13;
      v7 = v13[1];
      goto LABEL_15;
    }
  }

  else
  {
    v7 = 0;
  }

  v6 = 0;
LABEL_15:
  *v13 = 0;
  v13[1] = 0;
  result = v13[3];
  if (result && v7 && ((*(*result + 16))(result, v6), result = v13[3], v16 = *v13, v17 = v13[1], *v13 = 0, v13[1] = 0, result) && v17)
  {
    (*(*result + 16))(result, v16);
    v18 = v13[1];
    result = v13[3];
    *v13 = 0;
    v13[1] = 0;
    if (result && v18)
    {
      v19 = *(*result + 16);

      return v19();
    }
  }

  else
  {
    *v13 = 0;
    v13[1] = 0;
  }

  return result;
}

uint64_t IPC::handleMessageSynchronous<Messages::RemoteImageBuffer::FilteredNativeImage,WebKit::RemoteImageBuffer,WebKit::RemoteImageBuffer,void ()(WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)> &&)>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>>(a2, &v13);
  if (v14 == 1)
  {
    v7 = *(a2 + 8);
    if (v7)
    {
      atomic_fetch_add((a1 + 8), 1u);
      v8 = WTF::fastMalloc(0x18);
      *v8 = &unk_1F10F1EE0;
      v8[1] = v7;
      v8[2] = a1;
      v9 = v13;
      v12 = v8;
      v13 = 0;
      v15 = v9;
      WebKit::RemoteImageBuffer::filteredNativeImage(a3, &v15, &v12);
      WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v15, v10);
      result = v12;
      v12 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      if (v14)
      {
        return WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v13, v11);
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

atomic_uchar **WebKit::RemoteImageBufferProxy::didReceiveMessage(WebKit::RemoteImageBufferProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v33 = *MEMORY[0x1E69E9840];
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
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_4:
  v8 = *(a3 + 25);
  if (v8 == 1370)
  {
    IPC::ArgumentCoder<std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>,void>::decode<IPC::Decoder>(a3, buf);
    if ((v32 & 1) == 0)
    {
      IPC::Decoder::markInvalid(a3);
      if ((v32 & 1) == 0)
      {
        v18[0] = 0;
        v23 = 0;
        goto LABEL_43;
      }
    }

    v18[0] = 0;
    v22 = 0;
    if (v31 == 1)
    {
      v21 = -1;
      mpark::detail::constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>>(v18, buf);
      v22 = 1;
      v23 = 1;
      if ((v32 & 1) != 0 && (v31 & 1) != 0 && v30 != 255)
      {
        if (!v30 && v29 == 1)
        {
          v14 = cf;
          cf = 0;
          if (v14)
          {
            CFRelease(v14);
          }
        }

        WTF::MachSendRight::~MachSendRight(buf);
        if ((v23 & 1) == 0)
        {
LABEL_43:
          IPC::Decoder::markInvalid(a3);
          if ((v23 & 1) == 0)
          {
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v5, v9);
          }
        }
      }
    }

    else
    {
      v23 = 1;
    }

    buf[0] = 0;
    v31 = 0;
    if (v22 == 1)
    {
      v30 = -1;
      mpark::detail::constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>>(buf, v18);
      v31 = 1;
    }

    WebKit::RemoteImageBufferProxy::didCreateBackend(this, buf);
    if (v31 == 1 && v30 != 255)
    {
      if (!v30 && v29 == 1)
      {
        v12 = cf;
        cf = 0;
        if (v12)
        {
          CFRelease(v12);
        }
      }

      WTF::MachSendRight::~MachSendRight(buf);
    }

    if ((v23 & 1) != 0 && v22 == 1 && v21 != 255)
    {
      if (!v21 && v20 == 1)
      {
        v13 = v19;
        v19 = 0;
        if (v13)
        {
          CFRelease(v13);
        }
      }

      WTF::MachSendRight::~MachSendRight(v18);
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v5, v9);
  }

  v11 = qword_1ED6416C8;
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
    *buf = 136315394;
    v25 = v16;
    v26 = 2048;
    v27 = v17;
    _os_log_error_impl(&dword_19D52D000, v11, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
  }

  IPC::Decoder::markInvalid(a3);
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v5, v9);
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::CDMKeySystemConfiguration>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::CDMKeySystemConfiguration,void>::decode(a2, a1);
  if ((*(a1 + 80) & 1) == 0)
  {
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t std::__tuple_leaf<0ul,WebCore::CDMKeySystemConfiguration,false>::__tuple_leaf[abi:sn200100]<WebCore::CDMKeySystemConfiguration,0>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 8, a2 + 2);
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 24, a2 + 6);
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 40, a2 + 10);
  *(a1 + 56) = *(a2 + 28);
  *(a1 + 72) = 0;
  *(a1 + 64) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 64, a2 + 16);
  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteCDMInstanceProxy27InitializeWithConfigurationENS2_10ConnectionEN6WebKit22RemoteCDMInstanceProxyES9_FvRKN7WebCore25CDMKeySystemConfigurationENSA_38CDMInstanceAllowDistinctiveIdentifiersENSA_31CDMInstanceAllowPersistentStateEONS_17CompletionHandlerIFvNSA_23CDMInstanceSuccessValueEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1CD8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteCDMInstanceProxy27InitializeWithConfigurationENS2_10ConnectionEN6WebKit22RemoteCDMInstanceProxyES9_FvRKN7WebCore25CDMKeySystemConfigurationENSA_38CDMInstanceAllowDistinctiveIdentifiersENSA_31CDMInstanceAllowPersistentStateEONS_17CompletionHandlerIFvNSA_23CDMInstanceSuccessValueEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1CD8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteCDMInstanceProxy27InitializeWithConfigurationENS2_10ConnectionEN6WebKit22RemoteCDMInstanceProxyES9_FvRKN7WebCore25CDMKeySystemConfigurationENSA_38CDMInstanceAllowDistinctiveIdentifiersENSA_31CDMInstanceAllowPersistentStateEONS_17CompletionHandlerIFvNSA_23CDMInstanceSuccessValueEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3491;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  v11 = v2;
  IPC::Encoder::operator<<<BOOL>(v5, &v11);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteCDMInstanceProxy20SetServerCertificateENS2_10ConnectionEN6WebKit22RemoteCDMInstanceProxyES9_FvONS_3RefIN7WebCore12SharedBufferENS_12RawPtrTraitsISC_EENS_21DefaultRefDerefTraitsISC_EEEEONS_17CompletionHandlerIFvNSB_23CDMInstanceSuccessValueEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1D00;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteCDMInstanceProxy20SetServerCertificateENS2_10ConnectionEN6WebKit22RemoteCDMInstanceProxyES9_FvONS_3RefIN7WebCore12SharedBufferENS_12RawPtrTraitsISC_EENS_21DefaultRefDerefTraitsISC_EEEEONS_17CompletionHandlerIFvNSB_23CDMInstanceSuccessValueEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1D00;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteCDMInstanceProxy20SetServerCertificateENS2_10ConnectionEN6WebKit22RemoteCDMInstanceProxyES9_FvONS_3RefIN7WebCore12SharedBufferENS_12RawPtrTraitsISC_EENS_21DefaultRefDerefTraitsISC_EEEEONS_17CompletionHandlerIFvNSB_23CDMInstanceSuccessValueEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3492;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  v11 = v2;
  IPC::Encoder::operator<<<BOOL>(v5, &v11);
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteCDMInstanceProxy13CreateSessionEN6WebKit22RemoteCDMInstanceProxyES8_FvyONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericINS7_38RemoteCDMInstanceSessionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1D28;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteCDMInstanceProxy13CreateSessionEN6WebKit22RemoteCDMInstanceProxyES8_FvyONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericINS7_38RemoteCDMInstanceSessionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1D28;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages22RemoteCDMInstanceProxy13CreateSessionEN6WebKit22RemoteCDMInstanceProxyES8_FvyONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericINS7_38RemoteCDMInstanceSessionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  if (a3)
  {
    v8 = 1;
    IPC::Encoder::operator<<<BOOL>(v5, &v8);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2);
  }

  else
  {
    v9 = 0;
    IPC::Encoder::operator<<<BOOL>(v5, &v9);
  }

  return IPC::Connection::sendMessageImpl(*(a1 + 16), v4, 0, 0);
}

uint64_t IPC::VectorArgumentCoder<false,std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q1>)
{
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
    v33 = *(a1 + 3);
    if (v33)
    {
      if (v5)
      {
        (*(*v33 + 16))(v33);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_37;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
LABEL_37:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v5)
      {
        result = (*(*result + 16))(result);
      }
    }

    *a2 = 0;
    *(a2 + 16) = 0;
    return result;
  }

  v12 = *v6;
  v37 = 0uLL;
  if (v12 >= 0x10000)
  {
    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>>(a1, &v34);
      if (v36 != 1)
      {
LABEL_33:
        *a2 = 0;
        *(a2 + 16) = 0;
        return WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v7);
      }

      if (v37.n128_u32[3] != v37.n128_u32[2])
      {
        break;
      }

      v23 = WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v37, v37.n128_u32[3] + 1, &v34);
      v24 = v37.n128_u32[3] + 1;
      v25 = v37.n128_u64[0] + 16 * v37.n128_u32[3];
      v26 = *v23;
      *v23 = 0;
      *v25 = v26;
      *(v25 + 8) = *(v23 + 8);
      v37.n128_u32[3] = v24;
      if (v36)
      {
        goto LABEL_28;
      }

LABEL_31:
      if (!--v12)
      {
        WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v37, v37.n128_u32[3]);
        *a2 = v37.n128_u64[0];
        v32 = v37.n128_u64[1];
        v37 = 0uLL;
        *(a2 + 8) = v32;
        goto LABEL_22;
      }
    }

    v27 = v37.n128_u32[3] + 1;
    v28 = v37.n128_u64[0] + 16 * v37.n128_u32[3];
    v29 = v34;
    v34 = 0;
    *v28 = v29;
    *(v28 + 8) = v35;
    v37.n128_u32[3] = v27;
LABEL_28:
    v30 = v34;
    v34 = 0;
    if (v30 && atomic_fetch_add(v30 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v30 + 2);
      (*(*v30 + 8))(v30);
    }

    goto LABEL_31;
  }

  if (v12)
  {
    v37.n128_u32[2] = v12;
    v37.n128_u64[0] = WTF::fastMalloc((16 * v12));
    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>>(a1, &v34);
      if (v36 != 1)
      {
        goto LABEL_33;
      }

      if (v37.n128_u32[3] != v37.n128_u32[2])
      {
        break;
      }

      v13 = WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v37, v37.n128_u32[3] + 1, &v34);
      v14 = v37.n128_u32[3] + 1;
      v15 = v37.n128_u64[0] + 16 * v37.n128_u32[3];
      v16 = *v13;
      *v13 = 0;
      *v15 = v16;
      *(v15 + 8) = *(v13 + 8);
      v37.n128_u32[3] = v14;
      if (v36)
      {
        goto LABEL_15;
      }

LABEL_18:
      if (!--v12)
      {
        v22 = v37.n128_u64[1];
        v21 = v37.n128_u64[0];
        goto LABEL_21;
      }
    }

    v17 = v37.n128_u32[3] + 1;
    v18 = v37.n128_u64[0] + 16 * v37.n128_u32[3];
    v19 = v34;
    v34 = 0;
    *v18 = v19;
    *(v18 + 8) = v35;
    v37.n128_u32[3] = v17;
LABEL_15:
    v20 = v34;
    v34 = 0;
    if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v20 + 2);
      (*(*v20 + 8))(v20);
    }

    goto LABEL_18;
  }

  v21 = 0;
  v22 = 0;
LABEL_21:
  a3.n128_u64[0] = 0;
  v37 = a3;
  *a2 = v21;
  *(a2 + 8) = v22;
LABEL_22:
  *(a2 + 16) = 1;
  return WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v37, v7);
}

void IPC::Decoder::decode<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {
    v4 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v5 = *(a1 + 3);
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

void IPC::ArgumentCoder<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a1, &v6);
  if (v7 == 1)
  {
    v4 = IPC::Decoder::decode<WebCore::FocusDirection>(a1);
    if ((v4 & 0x100) != 0)
    {
      if (v7)
      {
        *a2 = v6;
        *(a2 + 8) = v4;
        *(a2 + 16) = 1;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
      if (v7)
      {
        v5 = v6;
        v6 = 0;
        if (v5)
        {
          if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v5 + 2);
            (*(*v5 + 8))(v5);
          }
        }
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

unsigned int *WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > a2)
    {
      result = WTF::VectorDestructor<true,std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>>::destruct((*result + 16 * a2), (*result + 16 * v4));
      v3[3] = a2;
      LODWORD(v4) = a2;
    }

    v5 = *v3;
    if (a2)
    {
      if (v3[2])
      {
        v3[2] = a2;
        result = WTF::fastRealloc(v5, (16 * a2));
        *v3 = result;
        return result;
      }

      if (a2 >> 28)
      {
        __break(0xC471u);
        JUMPOUT(0x19DA00A08);
      }

      result = WTF::fastMalloc((16 * a2));
      v3[2] = a2;
      *v3 = result;
      if (result != v5)
      {
        result = memcpy(result, v5, 16 * v4);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

unsigned int *WTF::VectorDestructor<true,std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>>::destruct(unsigned int *result, unsigned int **a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          result = (*(*result + 8))(result);
        }
      }

      v3 += 2;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>>::destruct(*a1, (*a1 + 16 * v3));
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

_DWORD *WTF::RefCounted<WebKit::RemoteCDMInstanceSessionProxy>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::RemoteCDMInstanceSessionProxy::~RemoteCDMInstanceSessionProxy((result - 8), a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteCDMInstanceSessionProxy14RequestLicenseENS2_10ConnectionEN6WebKit29RemoteCDMInstanceSessionProxyES9_FvN7WebCore14CDMSessionTypeENSA_22CDMKeyGroupingStrategyENS_10AtomStringEONS_6RefPtrINSA_12SharedBufferENS_12RawPtrTraitsISF_EENS_21DefaultRefDerefTraitsISF_EEEEONS_17CompletionHandlerIFvSL_RKNS_6StringEbbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_SP_bbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1D50;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteCDMInstanceSessionProxy14RequestLicenseENS2_10ConnectionEN6WebKit29RemoteCDMInstanceSessionProxyES9_FvN7WebCore14CDMSessionTypeENSA_22CDMKeyGroupingStrategyENS_10AtomStringEONS_6RefPtrINSA_12SharedBufferENS_12RawPtrTraitsISF_EENS_21DefaultRefDerefTraitsISF_EEEEONS_17CompletionHandlerIFvSL_RKNS_6StringEbbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_SP_bbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1D50;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteCDMInstanceSessionProxy14RequestLicenseENS2_10ConnectionEN6WebKit29RemoteCDMInstanceSessionProxyES9_FvN7WebCore14CDMSessionTypeENSA_22CDMKeyGroupingStrategyENS_10AtomStringEONS_6RefPtrINSA_12SharedBufferENS_12RawPtrTraitsISF_EENS_21DefaultRefDerefTraitsISF_EEEEONS_17CompletionHandlerIFvSL_RKNS_6StringEbbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_SP_bbEE4callESL_SP_bb(uint64_t a1, void *a2, uint64_t *a3, char a4, char a5)
{
  v16 = a4;
  v15 = a5;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3496;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v8;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v17 = v9;
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(v9, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, a3);
  v10 = IPC::Encoder::operator<<<BOOL>(v9, &v16);
  IPC::Encoder::operator<<<BOOL>(v10, &v15);
  IPC::Connection::sendMessageImpl(v7, &v17, 0, 0);
  result = v17;
  v17 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteCDMInstanceSessionProxy13UpdateLicenseENS2_10ConnectionEN6WebKit29RemoteCDMInstanceSessionProxyES9_FvNS_6StringEN7WebCore14CDMSessionTypeEONS_6RefPtrINSB_12SharedBufferENS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEONS_17CompletionHandlerIFvbONSt3__18optionalINS_6VectorINSM_4pairINS_3RefISE_SG_SI_EENSB_12CDMKeyStatusEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEONSN_IdEEONSN_INSP_INSB_14CDMMessageTypeESR_EEEEbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSY_S10_S14_bEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1D78;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteCDMInstanceSessionProxy13UpdateLicenseENS2_10ConnectionEN6WebKit29RemoteCDMInstanceSessionProxyES9_FvNS_6StringEN7WebCore14CDMSessionTypeEONS_6RefPtrINSB_12SharedBufferENS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEONS_17CompletionHandlerIFvbONSt3__18optionalINS_6VectorINSM_4pairINS_3RefISE_SG_SI_EENSB_12CDMKeyStatusEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEONSN_IdEEONSN_INSP_INSB_14CDMMessageTypeESR_EEEEbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSY_S10_S14_bEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1D78;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteCDMInstanceSessionProxy13UpdateLicenseENS2_10ConnectionEN6WebKit29RemoteCDMInstanceSessionProxyES9_FvNS_6StringEN7WebCore14CDMSessionTypeEONS_6RefPtrINSB_12SharedBufferENS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEEONS_17CompletionHandlerIFvbONSt3__18optionalINS_6VectorINSM_4pairINS_3RefISE_SG_SI_EENSB_12CDMKeyStatusEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEONSN_IdEEONSN_INSP_INSB_14CDMMessageTypeESR_EEEEbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbSY_S10_S14_bEE4callEbSY_S10_S14_b(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v18 = a2;
  v17 = a6;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 3497;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v10;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v19 = v11;
  v12 = IPC::Encoder::operator<<<BOOL>(v11, &v18);
  IPC::ArgumentCoder<std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v12, a3);
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(v12, a4);
  IPC::ArgumentCoder<std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>,void>::encode<IPC::Encoder,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>>(v12, a5);
  IPC::Encoder::operator<<<BOOL>(v12, &v17);
  IPC::Connection::sendMessageImpl(v9, &v19, 0, 0);
  result = v19;
  v19 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v7 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v7);
    if (*(a2 + 16))
    {
      return IPC::VectorArgumentCoder<false,std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2);
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::VectorArgumentCoder<false,std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, v6);
    }
  }

  else
  {
    v8 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }
}

uint64_t IPC::VectorArgumentCoder<false,std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(IPC::Encoder *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  v5 = *(a2 + 3);
  if (v5)
  {
    v6 = *a2;
    v7 = v6 + 16 * v5;
    do
    {
      IPC::ArgumentCoder<WebCore::SharedBuffer,void>::encode(a1, *v6);
      result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(v6 + 8));
      v6 += 16;
    }

    while (v6 != v7);
  }

  return result;
}

void IPC::ArgumentCoder<std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>,void>::encode<IPC::Encoder,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v5 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v5);
    if (*(a2 + 16))
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
      IPC::ArgumentCoder<WebCore::SharedBuffer,void>::encode(a1, *(a2 + 8));
    }

    else
    {
      v4 = std::__throw_bad_optional_access[abi:sn200100]();
      _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteCDMInstanceSessionProxy11LoadSessionENS2_10ConnectionEN6WebKit29RemoteCDMInstanceSessionProxyES9_FvN7WebCore14CDMSessionTypeENS_6StringESC_ONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorINSE_4pairINS_3RefINSA_12SharedBufferENS_12RawPtrTraitsISJ_EENS_21DefaultRefDerefTraitsISJ_EEEENSA_12CDMKeyStatusEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEONSF_IdEEONSF_INSH_INSA_14CDMMessageTypeESO_EEEEbNSA_29CDMInstanceSessionLoadFailureEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_SX_S11_bS12_EED1Ev(v4);
    }
  }

  else
  {
    v6 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteCDMInstanceSessionProxy11LoadSessionENS2_10ConnectionEN6WebKit29RemoteCDMInstanceSessionProxyES9_FvN7WebCore14CDMSessionTypeENS_6StringESC_ONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorINSE_4pairINS_3RefINSA_12SharedBufferENS_12RawPtrTraitsISJ_EENS_21DefaultRefDerefTraitsISJ_EEEENSA_12CDMKeyStatusEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEONSF_IdEEONSF_INSH_INSA_14CDMMessageTypeESO_EEEEbNSA_29CDMInstanceSessionLoadFailureEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_SX_S11_bS12_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1DA0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteCDMInstanceSessionProxy11LoadSessionENS2_10ConnectionEN6WebKit29RemoteCDMInstanceSessionProxyES9_FvN7WebCore14CDMSessionTypeENS_6StringESC_ONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorINSE_4pairINS_3RefINSA_12SharedBufferENS_12RawPtrTraitsISJ_EENS_21DefaultRefDerefTraitsISJ_EEEENSA_12CDMKeyStatusEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEONSF_IdEEONSF_INSH_INSA_14CDMMessageTypeESO_EEEEbNSA_29CDMInstanceSessionLoadFailureEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_SX_S11_bS12_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1DA0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteCDMInstanceSessionProxy11LoadSessionENS2_10ConnectionEN6WebKit29RemoteCDMInstanceSessionProxyES9_FvN7WebCore14CDMSessionTypeENS_6StringESC_ONS_17CompletionHandlerIFvONSt3__18optionalINS_6VectorINSE_4pairINS_3RefINSA_12SharedBufferENS_12RawPtrTraitsISJ_EENS_21DefaultRefDerefTraitsISJ_EEEENSA_12CDMKeyStatusEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEONSF_IdEEONSF_INSH_INSA_14CDMMessageTypeESO_EEEEbNSA_29CDMInstanceSessionLoadFailureEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_SX_S11_bS12_EE4callESV_SX_S11_bS12_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v18 = a5;
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 3494;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v11;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v19 = v12;
  IPC::ArgumentCoder<std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v12, a2);
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(v12, a3);
  IPC::ArgumentCoder<std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>,void>::encode<IPC::Encoder,std::optional<std::pair<WebCore::CDMMessageType,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>>(v12, a4);
  v13 = IPC::Encoder::operator<<<BOOL>(v12, &v18);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v13, a6);
  IPC::Connection::sendMessageImpl(v10, &v19, 0, 0);
  result = v19;
  v19 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v14);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteCDMInstanceSessionProxy12CloseSessionENS2_10ConnectionEN6WebKit29RemoteCDMInstanceSessionProxyES9_FvRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1DC8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteCDMInstanceSessionProxy12CloseSessionENS2_10ConnectionEN6WebKit29RemoteCDMInstanceSessionProxyES9_FvRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1DC8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteCDMInstanceSessionProxy12CloseSessionENS2_10ConnectionEN6WebKit29RemoteCDMInstanceSessionProxyES9_FvRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3493;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteCDMInstanceSessionProxy17RemoveSessionDataENS2_10ConnectionEN6WebKit29RemoteCDMInstanceSessionProxyES9_FvRKNS_6StringEN7WebCore14CDMSessionTypeEONS_17CompletionHandlerIFvONS_6VectorINSt3__14pairINS_3RefINSD_12SharedBufferENS_12RawPtrTraitsISK_EENS_21DefaultRefDerefTraitsISK_EEEENSD_12CDMKeyStatusEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_6RefPtrISK_SM_SO_EEbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_SY_bEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1DF0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteCDMInstanceSessionProxy17RemoveSessionDataENS2_10ConnectionEN6WebKit29RemoteCDMInstanceSessionProxyES9_FvRKNS_6StringEN7WebCore14CDMSessionTypeEONS_17CompletionHandlerIFvONS_6VectorINSt3__14pairINS_3RefINSD_12SharedBufferENS_12RawPtrTraitsISK_EENS_21DefaultRefDerefTraitsISK_EEEENSD_12CDMKeyStatusEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_6RefPtrISK_SM_SO_EEbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_SY_bEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1DF0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29RemoteCDMInstanceSessionProxy17RemoveSessionDataENS2_10ConnectionEN6WebKit29RemoteCDMInstanceSessionProxyES9_FvRKNS_6StringEN7WebCore14CDMSessionTypeEONS_17CompletionHandlerIFvONS_6VectorINSt3__14pairINS_3RefINSD_12SharedBufferENS_12RawPtrTraitsISK_EENS_21DefaultRefDerefTraitsISK_EEEENSD_12CDMKeyStatusEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_6RefPtrISK_SM_SO_EEbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_SY_bEE4callESV_SY_b(uint64_t a1, void *a2, atomic_uint **a3, char a4)
{
  v13 = a4;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 3495;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = v7;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v14 = v8;
  IPC::VectorArgumentCoder<false,std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::CDMKeyStatus>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v8, a2);
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(v8, a3);
  IPC::Encoder::operator<<<BOOL>(v8, &v13);
  IPC::Connection::sendMessageImpl(v6, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14RemoteCDMProxy25GetSupportedConfigurationENS2_10ConnectionEN6WebKit14RemoteCDMProxyES9_FvON7WebCore25CDMKeySystemConfigurationENSA_28CDMPrivateLocalStorageAccessEONS_17CompletionHandlerIFvNSt3__18optionalISB_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1E18;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14RemoteCDMProxy25GetSupportedConfigurationENS2_10ConnectionEN6WebKit14RemoteCDMProxyES9_FvON7WebCore25CDMKeySystemConfigurationENSA_28CDMPrivateLocalStorageAccessEONS_17CompletionHandlerIFvNSt3__18optionalISB_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1E18;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages14RemoteCDMProxy25GetSupportedConfigurationENS2_10ConnectionEN6WebKit14RemoteCDMProxyES9_FvON7WebCore25CDMKeySystemConfigurationENSA_28CDMPrivateLocalStorageAccessEONS_17CompletionHandlerIFvNSt3__18optionalISB_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3498;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (a2[80])
  {
    v12 = 1;
    IPC::Encoder::operator<<<BOOL>(v5, &v12);
    if ((a2[80] & 1) == 0)
    {
      v10 = std::__throw_bad_optional_access[abi:sn200100]();
      return _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14RemoteCDMProxy14CreateInstanceEN6WebKit14RemoteCDMProxyES8_FvONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericINS7_31RemoteCDMInstanceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS7_30RemoteCDMInstanceConfigurationEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_SJ_EED1Ev(v10);
    }

    IPC::ArgumentCoder<WebCore::CDMKeySystemConfiguration,void>::encode(v5, a2);
  }

  else
  {
    v13 = 0;
    IPC::Encoder::operator<<<BOOL>(v5, &v13);
  }

  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14RemoteCDMProxy14CreateInstanceEN6WebKit14RemoteCDMProxyES8_FvONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericINS7_31RemoteCDMInstanceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS7_30RemoteCDMInstanceConfigurationEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_SJ_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1E40;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14RemoteCDMProxy14CreateInstanceEN6WebKit14RemoteCDMProxyES8_FvONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericINS7_31RemoteCDMInstanceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS7_30RemoteCDMInstanceConfigurationEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_SJ_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1E40;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages14RemoteCDMProxy14CreateInstanceEN6WebKit14RemoteCDMProxyES8_FvONS_17CompletionHandlerIFvNSt3__18optionalINS_23ObjectIdentifierGenericINS7_31RemoteCDMInstanceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS7_30RemoteCDMInstanceConfigurationEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_SJ_EE4callESH_SJ_(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (a3)
  {
    v10 = 1;
    IPC::Encoder::operator<<<BOOL>(v7, &v10);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, a2);
  }

  else
  {
    v11 = 0;
    IPC::Encoder::operator<<<BOOL>(v7, &v11);
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a4);
  return IPC::Connection::sendMessageImpl(*(a1 + 16), v6, 0, 0);
}

uint64_t IPC::Decoder::decode<WebCore::VideoFrameTimeMetadata>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::VideoFrameTimeMetadata,void>::decode(a2, a1);
  if ((*(a1 + 56) & 1) == 0)
  {
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

void IPC::Decoder::decode<WebCore::PixelBufferFormat>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebCore::PixelBufferFormat,void>::decode(a2, a1);
  if ((*(a1 + 16) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages17RemoteImageBuffer14GetPixelBufferEN6WebKit17RemoteImageBufferES8_FvN7WebCore17PixelBufferFormatENS9_8IntPointENS9_7IntSizeEONS_17CompletionHandlerIFvvEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1E68;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages17RemoteImageBuffer14GetPixelBufferEN6WebKit17RemoteImageBufferES8_FvN7WebCore17PixelBufferFormatENS9_8IntPointENS9_7IntSizeEONS_17CompletionHandlerIFvvEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1E68;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages17RemoteImageBuffer14GetPixelBufferEN6WebKit17RemoteImageBufferES8_FvN7WebCore17PixelBufferFormatENS9_8IntPointENS9_7IntSizeEONS_17CompletionHandlerIFvvEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJEE4callEv(uint64_t result, void *a2)
{
  v4 = *(result + 16);
  if (*(v4 + 120) != 1)
  {
    goto LABEL_12;
  }

  v5 = *(v4 + 56);
  v4 = *(v4 + 64);
  v6 = *(v4 + 8);
  if (v5 != 1)
  {
    v7 = v6 >= 0x100;
    v8 = v6 - 256;
    if (!v7)
    {
      goto LABEL_11;
    }

    v4 = *(v4 + 16);
    if (v5)
    {
      v7 = v8 >= v5 - 1;
      v8 = v5 - 1;
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    if (v8 > 1)
    {
      *(v4 + 256) = 3199;
      return result;
    }

LABEL_17:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v6 > 0xFF)
  {
    goto LABEL_17;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  v15[3] = v2;
  v15[4] = v3;
  v9 = *(result + 8);
  v14 = v4;
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 3199;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v9;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v15[0] = v10;
  if (*(v14 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v14 + 128), v10);
  }

  IPC::Connection::sendMessageImpl(*(v14 + 40), v15, 0, 0);
  result = v15[0];
  v15[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

void IPC::Decoder::decode<std::tuple<WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<std::tuple<WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a1[48] & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

void IPC::callMemberFunction<WebKit::RemoteImageBuffer,WebKit::RemoteImageBuffer,void ()(WebCore::SharedMemoryHandle &&,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize,WTF::CompletionHandler<void ()(void)> &&),std::tuple<WebCore::SharedMemoryHandle,WebCore::SharedMemoryHandle &&,WebCore::PixelBufferFormat,WebCore::IntPoint>,WTF::CompletionHandler>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4[0] = WebKit::RemoteImageBuffer::getPixelBufferWithNewMemory;
  v4[1] = 0;
  v3[0] = &v5;
  v3[1] = v4;
  v3[2] = a3;
  IPC::callMemberFunction<WebKit::RemoteImageBuffer,WebKit::RemoteImageBuffer,void ()(WebCore::SharedMemoryHandle &&,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize,WTF::CompletionHandler<void ()(void)> &&),std::tuple<WebCore::SharedMemoryHandle,WebCore::SharedMemoryHandle &&,WebCore::PixelBufferFormat,WebCore::IntPoint>,WTF::CompletionHandler>(WebKit::RemoteImageBuffer *,void ()(WebCore::SharedMemoryHandle &&,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize,WTF::CompletionHandler<void ()(void)> &&) WebKit::RemoteImageBuffer::*,std::tuple<WebCore::SharedMemoryHandle,WebCore::SharedMemoryHandle &&,WebCore::PixelBufferFormat,WebCore::IntPoint> &&,WTF<WTF::CompletionHandler> &&)::{lambda(WebKit::RemoteImageBuffer &&)#1}::operator()<WebCore::SharedMemoryHandle,WebCore::SharedMemoryHandle &&,WebCore::PixelBufferFormat,WebCore::IntPoint>(v3, a2, (a2 + 16), (a2 + 32), (a2 + 40));
}

void IPC::ArgumentCoder<std::tuple<WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>,void>::decode<IPC::Decoder>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WebCore::SharedMemoryHandle>(a2, v4);
  if (v5 == 1)
  {
    IPC::ArgumentCoder<std::tuple<WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>,void>::decode<IPC::Decoder,WebCore::SharedMemoryHandle>(a1, a2, v4);
    if (v5)
    {
      WTF::MachSendRight::~MachSendRight(v4);
    }
  }

  else
  {
    *a1 = 0;
    a1[48] = 0;
  }
}

void IPC::ArgumentCoder<std::tuple<WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>,void>::decode<IPC::Decoder,WebCore::SharedMemoryHandle>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<WebCore::PixelBufferFormat>(v7, a2);
  if (v9 == 1)
  {
    IPC::ArgumentCoder<std::tuple<WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>,void>::decode<IPC::Decoder,WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat>(a1, a2, a3, v7);
    if (v9)
    {
      v6 = cf;
      if (cf)
      {

        CFRelease(v6);
      }
    }
  }

  else
  {
    *a1 = 0;
    a1[48] = 0;
  }
}

unint64_t IPC::ArgumentCoder<std::tuple<WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>,void>::decode<IPC::Decoder,WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3, uint64_t a4)
{
  result = IPC::Decoder::decode<WebCore::IntPoint>(a2);
  v10 = result;
  v11 = v9;
  if (v9)
  {
    return IPC::ArgumentCoder<std::tuple<WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>,void>::decode<IPC::Decoder,WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint>(a1, a2, a3, a4, &v10);
  }

  *a1 = 0;
  a1[48] = 0;
  return result;
}

unint64_t IPC::ArgumentCoder<std::tuple<WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>,void>::decode<IPC::Decoder,WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint>(_BYTE *a1, IPC::Decoder *a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = IPC::Decoder::decode<WebCore::IntSize>(a2);
  v11 = result;
  v12 = v10;
  if (v10)
  {
    return IPC::ArgumentCoder<std::tuple<WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>,void>::decode<IPC::Decoder,WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>(a1, a3, a4, a5, &v11);
  }

  *a1 = 0;
  a1[48] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>,void>::decode<IPC::Decoder,WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (*(a2 + 16) & 1) != 0 && (*(a3 + 16) & 1) != 0 && (a4[1] & 1) != 0 && (a5[1])
  {
    return std::__optional_destruct_base<std::tuple<WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>,false>::__optional_destruct_base[abi:sn200100]<WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>(a1, a2, a3, a4, a5);
  }

  __break(1u);
  return a1;
}

uint64_t std::__optional_destruct_base<std::tuple<WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>,false>::__optional_destruct_base[abi:sn200100]<WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = WTF::MachSendRight::MachSendRight();
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *a3;
  v10 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(result + 24) = v10;
  *(result + 32) = *a4;
  *(result + 40) = *a5;
  *(result + 48) = 1;
  return result;
}

void IPC::callMemberFunction<WebKit::RemoteImageBuffer,WebKit::RemoteImageBuffer,void ()(WebCore::SharedMemoryHandle &&,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize,WTF::CompletionHandler<void ()(void)> &&),std::tuple<WebCore::SharedMemoryHandle,WebCore::SharedMemoryHandle &&,WebCore::PixelBufferFormat,WebCore::IntPoint>,WTF::CompletionHandler>(WebKit::RemoteImageBuffer *,void ()(WebCore::SharedMemoryHandle &&,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize,WTF::CompletionHandler<void ()(void)> &&) WebKit::RemoteImageBuffer::*,std::tuple<WebCore::SharedMemoryHandle,WebCore::SharedMemoryHandle &&,WebCore::PixelBufferFormat,WebCore::IntPoint> &&,WTF<WTF::CompletionHandler> &&)::{lambda(WebKit::RemoteImageBuffer &&)#1}::operator()<WebCore::SharedMemoryHandle,WebCore::SharedMemoryHandle &&,WebCore::PixelBufferFormat,WebCore::IntPoint>(uint64_t a1, uint64_t a2, __int16 *a3, void *a4, void *a5)
{
  v7 = *(a1 + 8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = (**a1 + (v9 >> 1));
  if (v9)
  {
    v8 = *(*v10 + v8);
  }

  v15 = v5;
  v16 = v6;
  v13 = *a3;
  v11 = *(a3 + 1);
  *(a3 + 1) = 0;
  cf = v11;
  v8(v10, a2, &v13, *a4, *a5, *(a1 + 16));
  v12 = cf;
  cf = 0;
  if (v12)
  {
    CFRelease(v12);
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages17RemoteImageBuffer27GetPixelBufferWithNewMemoryEN6WebKit17RemoteImageBufferES8_FvON7WebCore18SharedMemoryHandleENS9_17PixelBufferFormatENS9_8IntPointENS9_7IntSizeEONS_17CompletionHandlerIFvvEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1E90;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages17RemoteImageBuffer27GetPixelBufferWithNewMemoryEN6WebKit17RemoteImageBufferES8_FvON7WebCore18SharedMemoryHandleENS9_17PixelBufferFormatENS9_8IntPointENS9_7IntSizeEONS_17CompletionHandlerIFvvEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1E90;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t IPC::StreamServerConnection::sendSyncReply<Messages::RemoteImageBuffer::GetPixelBufferWithNewMemory>(uint64_t result, void *a2)
{
  v2 = result;
  if (*(result + 120) == 1)
  {
    v8 = *(result + 64);
    v9 = *(v8 + 8);
    if (v9 > 0xFF && ((v10 = *(result + 56), v11 = *(v8 + 16), v12 = v9 - 256, !v10) || (v13 = v10 - 1, v14 = v12 >= v13, v12 = v13, v14)))
    {
      if (v12 > 1)
      {
        *(v11 + 256) = 3199;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = 1067;
    __break(0xC471u);
    return result;
  }

  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3199;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v15 = v4;
  if (*(v2 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v2 + 128), v4);
  }

  IPC::Connection::sendMessageImpl(*(v2 + 40), &v15, 0, 0);
  result = v15;
  v15 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v6, v7);
  }

  return result;
}

WTF::MachSendRight *std::optional<std::tuple<WebCore::SharedMemoryHandle,WebCore::PixelBufferFormat,WebCore::IntPoint,WebCore::IntSize>>::~optional(WTF::MachSendRight *this)
{
  if (*(this + 48) == 1)
  {
    v2 = *(this + 3);
    *(this + 3) = 0;
    if (v2)
    {
      CFRelease(v2);
    }

    WTF::MachSendRight::~MachSendRight(this);
  }

  return this;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages17RemoteImageBuffer18GetShareableBitmapEN6WebKit17RemoteImageBufferES8_FvN7WebCore18PreserveResolutionEONS_17CompletionHandlerIFvONSt3__18optionalINS9_21ShareableBitmapHandleEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSG_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1EB8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages17RemoteImageBuffer18GetShareableBitmapEN6WebKit17RemoteImageBufferES8_FvN7WebCore18PreserveResolutionEONS_17CompletionHandlerIFvONSt3__18optionalINS9_21ShareableBitmapHandleEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1EB8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages17RemoteImageBuffer18GetShareableBitmapEN6WebKit17RemoteImageBufferES8_FvN7WebCore18PreserveResolutionEONS_17CompletionHandlerIFvONSt3__18optionalINS9_21ShareableBitmapHandleEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3199;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::ShareableBitmapHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::ShareableBitmapHandle>>(v5, a2);
  if (*(v3 + 120) == 1)
  {

    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v5);
  }

  else
  {
    IPC::Connection::sendMessageImpl(*(v3 + 40), &v10, 0, 0);
    result = v10;
    v10 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v7);
      return bmalloc::api::tzoneFree(v8, v9);
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 8) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>(a1, &v7);
  if (v8)
  {
    v5 = v7;
    v7 = 0;
    *a2 = v5;
    result = WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v7, v4);
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a2 = 0;
  }

  *(a2 + 8) = v6;
  return result;
}

uint64_t IPC::Decoder::decode<WTF::Ref<WebCore::Filter,WTF::RawPtrTraits<WebCore::Filter>,WTF::DefaultRefDerefTraits<WebCore::Filter>>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::Filter,void>::decode(a1, a2);
  if ((*(a2 + 8) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages17RemoteImageBuffer19FilteredNativeImageEN6WebKit17RemoteImageBufferES8_FvNS_3RefIN7WebCore6FilterENS_12RawPtrTraitsISB_EENS_21DefaultRefDerefTraitsISB_EEEEONS_17CompletionHandlerIFvONSt3__18optionalINSA_21ShareableBitmapHandleEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSM_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F1EE0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages17RemoteImageBuffer19FilteredNativeImageEN6WebKit17RemoteImageBufferES8_FvNS_3RefIN7WebCore6FilterENS_12RawPtrTraitsISB_EENS_21DefaultRefDerefTraitsISB_EEEEONS_17CompletionHandlerIFvONSt3__18optionalINSA_21ShareableBitmapHandleEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1EE0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages17RemoteImageBuffer19FilteredNativeImageEN6WebKit17RemoteImageBufferES8_FvNS_3RefIN7WebCore6FilterENS_12RawPtrTraitsISB_EENS_21DefaultRefDerefTraitsISB_EEEEONS_17CompletionHandlerIFvONSt3__18optionalINSA_21ShareableBitmapHandleEEEEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3199;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::ShareableBitmapHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::ShareableBitmapHandle>>(v5, a2);
  if (*(v3 + 120) == 1)
  {

    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v3 + 128), v5);
  }

  else
  {
    IPC::Connection::sendMessageImpl(*(v3 + 40), &v10, 0, 0);
    result = v10;
    v10 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v7);
      return bmalloc::api::tzoneFree(v8, v9);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages17RemoteImageBuffer16FlushContextSyncEN6WebKit17RemoteImageBufferES8_FvONS_17CompletionHandlerIFvvEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1F08;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages17RemoteImageBuffer16FlushContextSyncEN6WebKit17RemoteImageBufferES8_FvONS_17CompletionHandlerIFvvEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1F08;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages17RemoteImageBuffer16FlushContextSyncEN6WebKit17RemoteImageBufferES8_FvONS_17CompletionHandlerIFvvEEEEEEvRNS2_22StreamServerConnectionERNS2_7DecoderEPT0_MT1_T2_EUlDpOT_E_vJEE4callEv(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (*(v2 + 120) != 1)
  {
    goto LABEL_13;
  }

  v4 = *(v2 + 56);
  v3 = *(v2 + 64);
  v5 = *(v3 + 8);
  if (v4 != 1)
  {
    v6 = v5 >= 0x100;
    v7 = v5 - 256;
    if (!v6)
    {
      goto LABEL_12;
    }

    v8 = *(v3 + 16);
    if (v4)
    {
      v6 = v7 >= v4 - 1;
      v7 = v4 - 1;
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    if (v7 > 1)
    {
      *(v8 + 256) = 3199;
      return result;
    }

LABEL_17:
    result = 1067;
    __break(0xC471u);
    return result;
  }

  if (v5 > 0xFF)
  {
    goto LABEL_17;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  v9 = *(result + 8);
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 3199;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = v9;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v14 = v10;
  if (*(v2 + 120) == 1)
  {
    return std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((v2 + 128), v10);
  }

  IPC::Connection::sendMessageImpl(*(v2 + 40), &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

void mpark::detail::constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>>(WTF::MachSendRight *this, uint64_t a2)
{
  if (*(this + 80) != 255)
  {
    if (!*(this + 80) && *(this + 32) == 1)
    {
      v7 = *(this + 3);
      *(this + 3) = 0;
      if (v7)
      {
        CFRelease(v7);
      }
    }

    WTF::MachSendRight::~MachSendRight(this);
  }

  *(this + 80) = -1;
  v4 = *(a2 + 80);
  if (v4 != 255)
  {
    WTF::MachSendRight::MachSendRight();
    if (!v4)
    {
      *(this + 1) = *(a2 + 8);
      *(this + 2) = *(a2 + 16);
      *(this + 24) = 0;
      *(this + 32) = 0;
      if (*(a2 + 32) == 1)
      {
        v5 = *(a2 + 24);
        *(a2 + 24) = 0;
        *(this + 3) = v5;
        *(this + 32) = 1;
      }

      v6 = *(a2 + 44);
      *(this + 10) = *(a2 + 40);
      *(this + 44) = v6;
      *(this + 48) = 0;
      if (*(a2 + 48))
      {
        *(this + 48) = 1;
      }

      *(this + 13) = *(a2 + 52);
      *(this + 56) = 0;
      if (*(a2 + 56))
      {
        *(this + 56) = 1;
      }

      *(this + 15) = *(a2 + 60);
      *(this + 64) = 0;
      if (*(a2 + 64))
      {
        *(this + 64) = 1;
      }

      *(this + 68) = *(a2 + 68);
    }

    *(this + 80) = *(a2 + 80);
  }
}

void sub_19DA02D1C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_19DA02EE8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14)
{
  if (a9)
  {
  }

  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA0307C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void initializeTargetIfNeeded(WKObject *a1)
{
  if (!a1->_hasInitializedTarget)
  {
    a1->_hasInitializedTarget = 1;
    v2 = [(WKObject *)a1 _web_createTarget];
    m_ptr = a1->_target.m_ptr;
    a1->_target.m_ptr = v2;
    if (m_ptr)
    {
    }
  }
}

void WebKit::cancelledError(WebKit *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x1E696A978];
  v5 = WebCore::ResourceRequestBase::url(this);
  WTF::URL::createCFURL(v8, v5);
  WebKit::createNSError(v4, 0xFFFFFC19, *v8, &v9);
  v6 = v9;
  MEMORY[0x19EB04D40](a2, v9);
  if (v6)
  {
  }

  v7 = *v8;
  *v8 = 0;
  if (v7)
  {
  }
}

void sub_19DA03D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (v9)
  {
  }

  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::createNSError(WebKit *this@<X0>, NSString *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v5 = a2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a3, *MEMORY[0x1E696A980], objc_msgSend(a3, "absoluteString"), @"NSErrorFailingURLStringKey", 0}];
  if (v9)
  {
    v8 = v9;
  }

  *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:this code:v5 userInfo:v9];
  if (v9)
  {
  }
}

void sub_19DA03E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  if (a14)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::fileDoesNotExistError(WebKit *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x1E696A978];
  v5 = WebCore::ResourceResponseBase::url(this);
  WTF::URL::createCFURL(v8, v5);
  WebKit::createNSError(v4, 0xFFFFFBB4, *v8, &v9);
  v6 = v9;
  MEMORY[0x19EB04D40](a2, v9);
  if (v6)
  {
  }

  v7 = *v8;
  *v8 = 0;
  if (v7)
  {
  }
}

void sub_19DA03F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (v9)
  {
  }

  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::decodeError(WebKit *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x1E696A978];
  WTF::URL::createCFURL(v7, this);
  WebKit::createNSError(v4, 0xFFFFFC08, *v7, &v8);
  v5 = v8;
  MEMORY[0x19EB04D40](a2, v8);
  if (v5)
  {
  }

  v6 = *v7;
  *v7 = 0;
  if (v6)
  {
  }
}

void sub_19DA03FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (v9)
  {
  }

  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::RemoteImageBufferSet::didReceiveStreamMessage(atomic_uint *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  atomic_fetch_add(this + 2, 1u);
  v5 = *(a3 + 25);
  if (v5 == 1372)
  {
    updated = IPC::Decoder::decode<std::tuple<WebKit::MonotonicObjectIdentifier<WebKit::RenderingUpdateIDType>>>(a3);
    if (v7)
    {
      WebKit::RemoteImageBufferSet::endPrepareForDisplay(this, updated);
    }

    goto LABEL_4;
  }

  if (v5 != 1373)
  {
    v13 = *(a3 + 25);
    v9 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v13 >= 0x107F)
      {
        v10 = 4223;
      }

      else
      {
        v10 = v13;
      }

      v11 = (&IPC::Detail::messageDescriptions)[3 * v10];
      v12 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v11;
      v21 = 2048;
      *v22 = v12;
      _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
    }

    goto LABEL_14;
  }

  IPC::ArgumentCoder<WebKit::RemoteImageBufferSetConfiguration,void>::decode(a3, buf);
  if ((v25 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a3);
    if ((v25 & 1) == 0)
    {
LABEL_14:
      IPC::Decoder::markInvalid(a3);
      goto LABEL_4;
    }
  }

  v14 = *buf;
  v15 = *&buf[8];
  cf = *&v22[2];
  v17 = v23;
  v18 = v24;
  v19 = 1;
  WebKit::RemoteImageBufferSet::updateConfiguration(this, &v14);
  if (v19)
  {
    v8 = cf;
    cf = 0;
    if (v8)
    {
      CFRelease(v8);
    }
  }

LABEL_4:
  if (this)
  {
    if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, this + 2);
      (*(*this + 8))(this);
    }
  }
}

uint64_t WebKit::RemoteImageBufferSetProxy::didReceiveMessage(WebKit::RemoteImageBufferSetProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  (**this)(this, a2);
  if (*(a3 + 25) == 1371)
  {
    IPC::ArgumentCoder<WebKit::ImageBufferSetPrepareBufferForDisplayOutputData,void>::decode(a3, v18);
    if (v27 & 1) != 0 || (IPC::Decoder::markInvalid(a3), (v27))
    {
      updated = IPC::Decoder::decode<WebKit::MonotonicObjectIdentifier<WebKit::RenderingUpdateIDType>>(a3);
      if (v6)
      {
        if ((v27 & 1) == 0)
        {
          __break(1u);
          goto LABEL_27;
        }

        v7 = updated;
        buf[0] = 0;
        v35 = 0;
        if (v22 == 1)
        {
          v34 = -1;
          mpark::detail::constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>>(buf, v18);
          v35 = 1;
        }

        v36 = v23;
        v37 = v24;
        v38 = v25;
        v39 = v26;
        v40 = v7;
        v8 = 1;
      }

      else
      {
        v8 = 0;
        buf[0] = 0;
      }

      v41 = v8;
      if ((v27 & 1) != 0 && v22 == 1 && v21 != 255)
      {
        if (!v21 && v20 == 1)
        {
          v12 = cf;
          cf = 0;
          if (v12)
          {
            CFRelease(v12);
          }
        }

        WTF::MachSendRight::~MachSendRight(v18);
        v8 = v41;
      }

      if (v8)
      {
LABEL_14:
        v18[0] = 0;
        v22 = 0;
        if (v35 == 1)
        {
          v21 = -1;
          mpark::detail::constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>>(v18, buf);
          v22 = 1;
        }

        v23 = v36;
        v24 = v37;
        v25 = v38;
        v26 = v39;
        WebKit::RemoteImageBufferSetProxy::didPrepareForDisplay(this, v18, v40);
        if (v22 != 1 || v21 == 255)
        {
          goto LABEL_20;
        }

        if (v21)
        {
LABEL_19:
          WTF::MachSendRight::~MachSendRight(v18);
LABEL_20:
          if ((v41 & 1) != 0 && v35 == 1 && v34 != 255)
          {
            if (!v34 && v33 == 1)
            {
              v11 = v32;
              v32 = 0;
              if (v11)
              {
                CFRelease(v11);
              }
            }

            WTF::MachSendRight::~MachSendRight(buf);
          }

          return (*(*this + 8))(this);
        }

LABEL_27:
        if (v20 == 1)
        {
          v10 = cf;
          cf = 0;
          if (v10)
          {
            CFRelease(v10);
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      buf[0] = 0;
      v41 = 0;
    }

    IPC::Decoder::markInvalid(a3);
    if ((v41 & 1) == 0)
    {
      return (*(*this + 8))(this);
    }

    goto LABEL_14;
  }

  v17 = *(a3 + 25);
  v13 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    if (v17 >= 0x107F)
    {
      v14 = 4223;
    }

    else
    {
      v14 = v17;
    }

    v15 = (&IPC::Detail::messageDescriptions)[3 * v14];
    v16 = *(a3 + 7);
    *buf = 136315394;
    v29 = v15;
    v30 = 2048;
    v31 = v16;
    _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
  }

  IPC::Decoder::markInvalid(a3);
  return (*(*this + 8))(this);
}

atomic_ullong *WebKit::RemoteImageDecoderAVFManager::didReceiveMessage(WebKit::RemoteImageDecoderAVFManager *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = (this + 24);
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
  if (v8 != 1378)
  {
    v24 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v8 >= 0x107F)
      {
        v28 = 4223;
      }

      else
      {
        v28 = v8;
      }

      v29 = (&IPC::Detail::messageDescriptions)[3 * v28];
      v30 = *(a3 + 7);
      *v34 = 136315394;
      *&v34[4] = v29;
      *&v34[12] = 2048;
      *&v34[14] = v30;
      _os_log_error_impl(&dword_19D52D000, v24, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", v34, 0x16u);
    }

    goto LABEL_20;
  }

  v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
  if (v10)
  {
    v11 = *(a3 + 1);
    v12 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v13 = v12 - *a3;
    v14 = v11 >= v13;
    v15 = v11 - v13;
    if (!v14 || v15 <= 7)
    {
LABEL_30:
      *a3 = 0;
      *(a3 + 1) = 0;
      v32 = *(a3 + 3);
      if (v32)
      {
        if (v11)
        {
          (*(*v32 + 16))(v32);
          v11 = *(a3 + 1);
        }
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_32;
    }

    *(a3 + 2) = v12 + 1;
    if (!v12)
    {
LABEL_32:
      *a3 = 0;
      *(a3 + 1) = 0;
      v33 = *(a3 + 3);
      if (v33 && v11)
      {
        (*(*v33 + 16))(v33);
      }

      goto LABEL_20;
    }

    v17 = v9;
    v18 = *v12;
    v19 = IPC::Decoder::decode<WebCore::IntSize>(a3);
    if (v20)
    {
      v11 = *(a3 + 1);
      v21 = *(a3 + 2);
      if (v11 <= &v21[-*a3])
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v31 = *(a3 + 3);
        if (v31)
        {
          if (v11)
          {
            (*(*v31 + 16))(v31);
            v11 = *(a3 + 1);
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        *(a3 + 2) = v21 + 1;
        if (v21)
        {
          v22 = *v21;
          if (v22 < 2)
          {
            *v34 = v17;
            *&v34[8] = v18;
            *&v34[16] = v19;
            v35 = v22;
            v36 = 1;
            WebKit::RemoteImageDecoderAVFManager::encodedDataStatusChanged(this, v34, v18, &v34[16], v22 & 1);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteImageDecoderAVFManager,(WTF::DestructionThread)0>::deref(v5, v23);
          }

          goto LABEL_32;
        }
      }

      goto LABEL_30;
    }
  }

LABEL_20:
  v23 = *a3;
  v25 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v26 = *(a3 + 3);
  if (v26 && v25)
  {
    (*(*v26 + 16))(v26, v23);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteImageDecoderAVFManager,(WTF::DestructionThread)0>::deref(v5, v23);
}

void WebKit::RemoteImageDecoderAVFProxy::didReceiveMessage(WebKit::RemoteImageDecoderAVFProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  WebKit::RemoteMediaEngineConfigurationFactoryProxy::sharedPreferencesForWebProcess(this, v25);
  if (v26 == 1 && (~v25[1] & 0x100200000000) == 0)
  {
    WebKit::RemoteImageDecoderAVFProxy::ref(this);
    v5 = *(a3 + 25);
    switch(v5)
    {
      case 0x563u:
        IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>(buf, a3);
        if (BYTE2(v29) == 1)
        {
          WebKit::RemoteImageDecoderAVFProxy::clearFrameBufferCache(this, *buf);
        }

        goto LABEL_18;
      case 0x565u:
        v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v13)
        {
          v14 = v12;
          IPC::Decoder::decode<long long>(a3);
          if (v15)
          {
            WebKit::RemoteImageDecoderAVFProxy::setExpectedContentSize(this, v14);
LABEL_18:
            if (this)
            {
              WebKit::RemoteImageDecoderAVFProxy::deref(this);
            }

            return;
          }
        }

        break;
      case 0x564u:
        v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v7)
        {
          WebKit::RemoteImageDecoderAVFProxy::deleteDecoder(this, v6);
          goto LABEL_18;
        }

        break;
      default:
        v16 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v5 >= 0x107F)
          {
            v22 = 4223;
          }

          else
          {
            v22 = v5;
          }

          v23 = (&IPC::Detail::messageDescriptions)[3 * v22];
          v24 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v23;
          v28 = 2048;
          v29 = v24;
          _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
        }

        break;
    }

    v17 = *a3;
    v18 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v19 = *(a3 + 3);
    if (v19 && v18)
    {
      (*(*v19 + 16))(v19, v17);
    }

    goto LABEL_18;
  }

  v8 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v20 = *(a3 + 25);
    if (v20 >= 0x107F)
    {
      v20 = 4223;
    }

    v21 = (&IPC::Detail::messageDescriptions)[3 * v20];
    *buf = 136315138;
    *&buf[4] = v21;
    _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteImageDecoderAVFProxy", buf, 0xCu);
  }

  v9 = *a3;
  v10 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v11 = *(a3 + 3);
  if (v11 && v10)
  {
    (*(*v11 + 16))(v11, v9);
  }
}

uint64_t WebKit::RemoteImageDecoderAVFProxy::didReceiveSyncMessage(WebKit::RemoteMediaEngineConfigurationFactoryProxy *a1, atomic_ullong *a2, uint64_t a3, uint64_t *a4)
{
  v80 = *MEMORY[0x1E69E9840];
  WebKit::RemoteMediaEngineConfigurationFactoryProxy::sharedPreferencesForWebProcess(a1, v70);
  if (v71 != 1 || (~v70[1] & 0x100200000000) != 0)
  {
    v13 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v48 = *(a3 + 50);
      if (v48 >= 0x107F)
      {
        v48 = 4223;
      }

      v49 = (&IPC::Detail::messageDescriptions)[3 * v48];
      *buf = 136315138;
      *&buf[4] = v49;
      _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteImageDecoderAVFProxy", buf, 0xCu);
    }

    v14 = *a3;
    v15 = *(a3 + 8);
    *a3 = 0;
    *(a3 + 8) = 0;
    v16 = *(a3 + 24);
    if (v16 && v15)
    {
      (*(*v16 + 16))(v16, v14);
    }

    return 0;
  }

  WebKit::RemoteImageDecoderAVFProxy::ref(a1);
  v8 = *(a3 + 50);
  if (v8 == 4105)
  {
    v22 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v23 & 1) == 0)
    {
      goto LABEL_80;
    }

    v24 = v22;
    IPC::ArgumentCoder<IPC::SharedBufferReference,void>::decode(a3, &v74);
    if ((v76 & 1) == 0)
    {
      v59 = *a3;
      v60 = *(a3 + 8);
      *a3 = 0;
      *(a3 + 8) = 0;
      v61 = *(a3 + 24);
      if (v61 && v60)
      {
        (*(*v61 + 16))(v61, v59);
      }

      buf[0] = 0;
      v79 = 0;
      goto LABEL_35;
    }

    v25 = *(a3 + 8);
    v26 = *(a3 + 16);
    v27 = *a3;
    if (v25 <= &v26[-*a3])
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      v66 = *(a3 + 24);
      if (v66)
      {
        if (v25)
        {
          (*(*v66 + 16))(v66);
          v25 = *(a3 + 8);
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      *(a3 + 16) = v26 + 1;
      if (v26)
      {
        v28 = *v26;
        if (v28 < 2)
        {
          *buf = v24;
          *&buf[8] = v74;
          *&buf[16] = v75;
          v78 = v28;
          v79 = 1;
          v75 = 0uLL;
LABEL_32:
          v29 = v75;
          *&v75 = 0;
          if (v29 && atomic_fetch_add(v29 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v29 + 2);
            (*(*v29 + 8))(v29);
          }

LABEL_35:
          if ((v79 & 1) == 0)
          {
            goto LABEL_80;
          }

          v30 = *a4;
          *a4 = 0;
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
              goto LABEL_59;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_59:
          v45 = WTF::fastMalloc(0x18);
          *v45 = &unk_1F10F1F58;
          v45[1] = v30;
          v45[2] = a2;
          v74 = v45;
          WebKit::RemoteImageDecoderAVFProxy::setData(a1, *buf, &buf[8], v78, &v74);
          v46 = v74;
          v74 = 0;
          if (v46)
          {
            (*(*v46 + 8))(v46);
          }

          if (v79)
          {
            v47 = *&buf[24];
            *&buf[24] = 0;
            if (v47)
            {
              WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v47);
            }

            v44 = *&buf[16];
            *&buf[16] = 0;
            if (v44)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_67;
        }

LABEL_99:
        *a3 = 0;
        *(a3 + 8) = 0;
        v68 = *(a3 + 24);
        if (v68 && v25)
        {
          (*(*v68 + 16))(v68, v27);
        }

        buf[0] = 0;
        v69 = *(&v75 + 1);
        v79 = 0;
        *(&v75 + 1) = 0;
        if (v69)
        {
          WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v69);
        }

        goto LABEL_32;
      }
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    v67 = *(a3 + 24);
    if (v67)
    {
      if (v25)
      {
        (*(*v67 + 16))(v67);
        v27 = *a3;
        v25 = *(a3 + 8);
        goto LABEL_99;
      }
    }

    else
    {
      v25 = 0;
    }

    v27 = 0;
    goto LABEL_99;
  }

  if (v8 != 4104)
  {
    if (v8 != 4103)
    {
      v33 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v8 >= 0x107F)
        {
          v50 = 4223;
        }

        else
        {
          v50 = v8;
        }

        v51 = (&IPC::Detail::messageDescriptions)[3 * v50];
        v52 = *(a3 + 56);
        *buf = 136315394;
        *&buf[4] = v51;
        *&buf[12] = 2048;
        *&buf[14] = v52;
        _os_log_error_impl(&dword_19D52D000, v33, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
      }

      v34 = *a3;
      v35 = *(a3 + 8);
      *a3 = 0;
      *(a3 + 8) = 0;
      v36 = *(a3 + 24);
      if (v36 && v35)
      {
        (*(*v36 + 16))(v36, v34);
      }

      v17 = 0;
      if (a1)
      {
        goto LABEL_68;
      }

      return v17;
    }

    IPC::ArgumentCoder<IPC::SharedBufferReference,void>::decode(a3, &v74);
    if (v76)
    {
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v72);
      if (v73 & 1) != 0 || (v62 = *a3, v63 = *(a3 + 8), *a3 = 0, *(a3 + 8) = 0, (v64 = *(a3 + 24)) != 0) && v63 && ((*(*v64 + 16))(v64, v62), (v73))
      {
        *buf = v74;
        *&buf[8] = v75;
        *&buf[24] = v72;
        v78 = 1;
        v75 = 0uLL;
      }

      else
      {
        buf[0] = 0;
        v65 = *(&v75 + 1);
        v78 = 0;
        *(&v75 + 1) = 0;
        if (v65)
        {
          WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v65);
        }
      }

      v9 = v75;
      *&v75 = 0;
      if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9 + 2);
        (*(*v9 + 8))(v9);
      }
    }

    else
    {
      v56 = *a3;
      v57 = *(a3 + 8);
      *a3 = 0;
      *(a3 + 8) = 0;
      v58 = *(a3 + 24);
      if (v58 && v57)
      {
        (*(*v58 + 16))(v58, v56);
      }

      buf[0] = 0;
      v78 = 0;
    }

    if (v78)
    {
      v10 = *a4;
      *a4 = 0;
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
          goto LABEL_48;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_48:
      v39 = WTF::fastMalloc(0x18);
      *v39 = &unk_1F10F1F30;
      v39[1] = v10;
      v39[2] = a2;
      v74 = v39;
      WebKit::RemoteImageDecoderAVFProxy::createDecoder(a1, buf, &buf[24], &v74);
      v41 = v74;
      v74 = 0;
      if (v41)
      {
        (*(*v41 + 8))(v41);
      }

      if ((v78 & 1) == 0)
      {
        goto LABEL_67;
      }

      v42 = *&buf[24];
      *&buf[24] = 0;
      if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, v40);
      }

      v43 = *&buf[16];
      *&buf[16] = 0;
      if (v43)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v43);
      }

      v44 = *&buf[8];
      *&buf[8] = 0;
      if (!v44)
      {
        goto LABEL_67;
      }

LABEL_65:
      if (atomic_fetch_add(v44 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v44 + 2);
        (*(*v44 + 8))(v44);
      }

      goto LABEL_67;
    }

LABEL_80:
    v53 = *a3;
    v54 = *(a3 + 8);
    *a3 = 0;
    *(a3 + 8) = 0;
    v55 = *(a3 + 24);
    if (v55 && v54)
    {
      (*(*v55 + 16))(v55, v53);
    }

    goto LABEL_67;
  }

  IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerClientIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>(buf, a3);
  if (buf[16] == 1)
  {
    v19 = *a4;
    *a4 = 0;
    while (1)
    {
      v20 = *a2;
      if ((*a2 & 1) == 0)
      {
        break;
      }

      v21 = *a2;
      atomic_compare_exchange_strong_explicit(a2, &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v21 == v20)
      {
        goto LABEL_45;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_45:
    v37 = WTF::fastMalloc(0x18);
    *v37 = &unk_1F10F1F80;
    v37[1] = v19;
    v37[2] = a2;
    v74 = v37;
    WebKit::RemoteImageDecoderAVFProxy::createFrameImageAtIndex(a1, *buf, *&buf[8], &v74);
    v38 = v74;
    v74 = 0;
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }
  }

LABEL_67:
  v17 = 1;
  if (a1)
  {
LABEL_68:
    WebKit::RemoteImageDecoderAVFProxy::deref(a1);
  }

  return v17;
}

void WebKit::RemoteLayerTreeDrawingAreaProxy::didReceiveMessage(WebKit::RemoteLayerTreeDrawingAreaProxy *this, IPC::Connection *a2, uint64_t **a3, __n128 a4)
{
  v139 = *MEMORY[0x1E69E9840];
  ++*(this + 18);
  v7 = *(a3 + 25);
  if (v7 > 0x567)
  {
    switch(v7)
    {
      case 0x568u:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>>>(&v119, a3);
        if (v120 == 1)
        {
          WebKit::RemoteLayerTreeDrawingAreaProxy::commitLayerTreeNotTriggered(this, a2, v119);
        }

        goto LABEL_140;
      case 0x56Au:
        IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>>>(&v119, a3);
        if (v120 == 1)
        {
          v24 = v119;
          v25 = WebKit::RemoteLayerTreeDrawingAreaProxy::processStateForConnection(this, a2);
          if (*(v25 + 24) != 1 || v24 > *(v25 + 8))
          {
            v26 = *(v25 + 48);
            *(v25 + 32) = v24;
            if ((v26 & 1) == 0)
            {
              *(v25 + 48) = 1;
            }
          }
        }

        goto LABEL_140;
      case 0x569u:
        v8 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v8 & 0x100000000) != 0)
        {
          (*(*this + 424))(this, a2, v8);
        }

        goto LABEL_140;
    }

LABEL_46:
    WebKit::DrawingAreaProxy::didReceiveMessage(this, a2, a3);
    goto LABEL_140;
  }

  if (v7 == 1382)
  {
    IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3, v100);
    if ((v101 & 1) == 0 || (IPC::ArgumentCoder<WebKit::RemoteLayerBackingStoreProperties,void>::decode(a3, &v102), (v118 & 1) == 0) && ((v86 = *a3, v87 = a3[1], *a3 = 0, a3[1] = 0, (v88 = a3[3]) == 0) || !v87 || (v27 = (*(*v88 + 16))(v88, v86), (v118 & 1) == 0)))
    {
      LOBYTE(v119) = 0;
      v135 = 0;
      goto LABEL_165;
    }

    if ((v101 & 1) == 0)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      if (v29)
      {
        (*(*v27 + 16))(v27, v28);
      }

LABEL_122:
      if (v103)
      {
        WTF::Vector<std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v102, v28);
      }

      goto LABEL_124;
    }

    v119 = *v100;
    LOBYTE(v120) = 0;
    BYTE8(v127) = 0;
    if (v107 == 1)
    {
      LOBYTE(v127) = -1;
      mpark::detail::constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>>(&v120, &v102);
      BYTE8(v127) = 1;
      *v128 = v108;
      v131 = v114;
      v132 = v115;
      v133 = v116;
      v134 = v117;
      *&v128[24] = v110;
      *&v128[40] = v111;
      v129 = v112;
      v130 = v113;
      *&v128[8] = v109;
      v135 = 1;
      if (v118)
      {
        v108 = 0;
        if ((v107 & 1) != 0 && v106 != 255)
        {
          if (!v106 && v105 == 1)
          {
            v93 = v104;
            v104 = 0;
            if (v93)
            {
              CFRelease(v93);
            }
          }

          WTF::MachSendRight::~MachSendRight(&v102);
          if ((v135 & 1) == 0)
          {
LABEL_165:
            v9 = *a3;
            v10 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v89 = a3[3];
            if (!v89)
            {
              goto LABEL_140;
            }

            if (!v10)
            {
              goto LABEL_140;
            }

            (*(*v89 + 16))(v89, v9);
            if ((v135 & 1) == 0)
            {
              goto LABEL_140;
            }
          }
        }
      }
    }

    else
    {
      *v128 = v108;
      v131 = v114;
      v132 = v115;
      v133 = v116;
      v134 = v117;
      *&v128[24] = v110;
      *&v128[40] = v111;
      v129 = v112;
      v130 = v113;
      *&v128[8] = v109;
      v135 = 1;
    }

    WebKit::RemoteLayerTreeDrawingAreaProxy::asyncSetLayerContents(this, v119, *(&v119 + 1), &v120);
    if (v135)
    {
      v77 = *v128;
      *v128 = 0;
      if (v77)
      {
        CFRelease(v77);
      }

      if (BYTE8(v127) == 1 && v127 != 255)
      {
        if (!v127 && v124 == 1)
        {
          v92 = v123;
          v123 = 0;
          if (v92)
          {
            CFRelease(v92);
          }
        }

        WTF::MachSendRight::~MachSendRight(&v120);
      }
    }

    goto LABEL_140;
  }

  if (v7 != 1383)
  {
    goto LABEL_46;
  }

  v11 = a3[1];
  v12 = ((a3[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *a3;
  v14 = (v12 - *a3);
  v15 = v11 >= v14;
  v16 = v11 - v14;
  if (!v15 || v16 <= 7)
  {
    *a3 = 0;
    a3[1] = 0;
    v94 = a3[3];
    if (v94)
    {
      if (v11)
      {
        (*(*v94 + 16))(v94);
        v11 = a3[1];
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_191;
  }

  a3[2] = (v12 + 1);
  if (!v12)
  {
LABEL_191:
    *a3 = 0;
    a3[1] = 0;
    v95 = a3[3];
    if (v95 && v11)
    {
      (*(*v95 + 16))(v95);
    }

LABEL_160:
    v83 = *a3;
    v84 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v85 = a3[3];
    if (v85 && v84)
    {
      (*(*v85 + 16))(v85, v83);
    }

LABEL_124:
    v9 = *a3;
    v10 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v75 = a3[3];
    if (v75 && v10)
    {
      (*(*v75 + 16))(v75, v9);
    }

    goto LABEL_140;
  }

  v18 = *v12;
  v100[0] = 0;
  v100[1] = 0;
  if (v18 >= 0x421)
  {
    while (1)
    {
      IPC::Decoder::decode<std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>>(&v119, a3);
      v78 = v138;
      if (v138 == 1)
      {
        v79 = HIDWORD(v100[1]);
        if (HIDWORD(v100[1]) == LODWORD(v100[1]))
        {
          a4 = WTF::Vector<std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>>(v100, &v119);
        }

        else
        {
          v80 = WebKit::RemoteLayerTreeTransaction::RemoteLayerTreeTransaction(v100[0] + 992 * HIDWORD(v100[1]), &v119);
          v81 = v136;
          v136 = 0;
          *(v80 + 960) = v81;
          a4.n128_u64[1] = *(&v137 + 1);
          *(v80 + 968) = v137;
          HIDWORD(v100[1]) = v79 + 1;
        }
      }

      if (v138 == 1)
      {
        v82 = v136;
        v136 = 0;
        if (v82)
        {
          WebCore::ScrollingStateTree::operator delete();
        }

        WebKit::RemoteLayerTreeTransaction::~RemoteLayerTreeTransaction(&v119, v13);
      }

      if ((v78 & 1) == 0)
      {
        break;
      }

      if (!--v18)
      {
        v32 = v100[1];
        v31 = HIDWORD(v100[1]);
        v30 = v100[0];
        if (LODWORD(v100[1]) > HIDWORD(v100[1]))
        {
          v90 = v100[0];
          if (HIDWORD(v100[1]))
          {
            if (HIDWORD(v100[1]) >= 0x421085)
            {
              __break(0xC471u);
              return;
            }

            v91 = 992 * HIDWORD(v100[1]);
            v90 = WTF::fastMalloc((992 * HIDWORD(v100[1])));
            v32 = v91 / 0x3E0;
            if (v90 != v30)
            {
              WTF::VectorMover<false,std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>>::move(v30, v30 + 992 * v31, v90);
            }
          }

          if (v30)
          {
            if (v90 == v30)
            {
              v32 = 0;
              v90 = 0;
            }

            WTF::fastFree(v30, v13);
          }

          v30 = v90;
        }

        goto LABEL_47;
      }
    }

LABEL_159:
    WTF::Vector<std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v100, v13);
    goto LABEL_160;
  }

  if (v18)
  {
    LODWORD(v100[1]) = 992 * v18 / 0x3E0u;
    v100[0] = WTF::fastMalloc((992 * v18));
    do
    {
      IPC::Decoder::decode<std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>>(&v119, a3);
      v19 = v138;
      if (v138 == 1)
      {
        v20 = HIDWORD(v100[1]);
        if (HIDWORD(v100[1]) == LODWORD(v100[1]))
        {
          a4 = WTF::Vector<std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>>(v100, &v119);
        }

        else
        {
          v21 = WebKit::RemoteLayerTreeTransaction::RemoteLayerTreeTransaction(v100[0] + 992 * HIDWORD(v100[1]), &v119);
          v22 = v136;
          v136 = 0;
          *(v21 + 960) = v22;
          a4.n128_u64[1] = *(&v137 + 1);
          *(v21 + 968) = v137;
          HIDWORD(v100[1]) = v20 + 1;
        }
      }

      if (v138 == 1)
      {
        v23 = v136;
        v136 = 0;
        if (v23)
        {
          WebCore::ScrollingStateTree::operator delete();
        }

        WebKit::RemoteLayerTreeTransaction::~RemoteLayerTreeTransaction(&v119, v13);
      }

      if ((v19 & 1) == 0)
      {
        goto LABEL_159;
      }

      --v18;
    }

    while (v18);
    v30 = v100[0];
    v32 = v100[1];
    v31 = HIDWORD(v100[1]);
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v30 = 0;
  }

LABEL_47:
  a4.n128_u64[0] = 0;
  *v100 = a4;
  *&v102 = v30;
  *(&v102 + 1) = __PAIR64__(v31, v32);
  v103 = 1;
  WTF::Vector<std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v100, v13);
  v28 = *a3;
  v34 = a3[1];
  v35 = ((a3[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v36 = (v35 - *a3);
  v15 = v34 >= v36;
  v37 = v34 - v36;
  if (!v15 || v37 <= 3)
  {
    *a3 = 0;
    a3[1] = 0;
    v96 = a3[3];
    if (v96)
    {
      if (v34)
      {
        (*(*v96 + 16))(v96);
        v34 = a3[1];
      }
    }

    else
    {
      v34 = 0;
    }

    goto LABEL_196;
  }

  a3[2] = (v35 + 1);
  if (!v35)
  {
LABEL_196:
    *a3 = 0;
    a3[1] = 0;
    v97 = a3[3];
    if (v97 && v34)
    {
      (*(*v97 + 16))(v97);
    }

LABEL_121:
    v28 = *a3;
    v29 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v27 = a3[3];
    if (!v27)
    {
      goto LABEL_122;
    }

    goto LABEL_146;
  }

  v39 = *v35;
  v98 = 0;
  if (!v39)
  {
    v76 = 0;
    goto LABEL_128;
  }

  for (i = 0; i != v39; ++i)
  {
    v41 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v42 & 1) == 0)
    {
      goto LABEL_119;
    }

    v43 = v41;
    v44 = a3[1];
    v45 = a3[2];
    v42 = *a3;
    if (v44 <= v45 - *a3)
    {
      *a3 = 0;
      a3[1] = 0;
      v72 = a3[3];
      if (!v72)
      {
        goto LABEL_106;
      }

      if (!v44)
      {
        goto LABEL_113;
      }

      (*(*v72 + 16))(v72);
      v44 = a3[1];
LABEL_109:
      v73 = a3[3];
      *a3 = 0;
      a3[1] = 0;
      if (v73)
      {
        if (v44)
        {
          (*(*v73 + 16))(v73);
          v42 = *a3;
          v44 = a3[1];
        }

        else
        {
          v42 = 0;
        }

LABEL_112:
        v74 = a3[3];
        *a3 = 0;
        a3[1] = 0;
        if (v74 && v44)
        {
          (*(*v74 + 16))(v74, v42);
        }
      }

      else
      {
LABEL_106:
        *a3 = 0;
        a3[1] = 0;
      }

LABEL_113:
      LOBYTE(v100[0]) = 0;
      LOBYTE(v100[1]) = 0;
LABEL_69:
      v42 = *a3;
      v52 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v53 = a3[3];
      if (!v53)
      {
        goto LABEL_119;
      }

      if (!v52)
      {
        goto LABEL_119;
      }

      (*(*v53 + 16))(v53, v42);
      if ((v100[1] & 1) == 0)
      {
        goto LABEL_119;
      }

      goto LABEL_74;
    }

    a3[2] = (v45 + 1);
    if (!v45)
    {
      goto LABEL_109;
    }

    v46 = *v45;
    if (v46 >= 2)
    {
      goto LABEL_112;
    }

    if (!v46)
    {
      v100[0] = 0;
      LOBYTE(v100[1]) = 1;
      goto LABEL_74;
    }

    IPC::ArgumentCoder<WebKit::BufferSetBackendHandle,void>::decode(a3, &v119);
    if (v129 & 1) != 0 || (v42 = *a3, v69 = a3[1], *a3 = 0, a3[1] = 0, (v70 = a3[3]) != 0) && v69 && ((*(*v70 + 16))(v70, v42), (v129))
    {
      v47 = WTF::fastMalloc(0xA8);
      v48 = v47;
      *v47 = 0;
      *(v47 + 88) = 0;
      if (v126 == 1)
      {
        *(v47 + 80) = -1;
        mpark::detail::constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>>(v47, &v119);
        *(v48 + 88) = 1;
      }

      *(v48 + 6) = v127;
      v49 = *v128;
      v50 = *&v128[16];
      v51 = *&v128[32];
      *(v48 + 160) = v128[48];
      *(v48 + 8) = v50;
      *(v48 + 9) = v51;
      *(v48 + 7) = v49;
      v99 = 0;
      v100[0] = v48;
      LOBYTE(v100[1]) = 1;
      std::unique_ptr<WebKit::BufferSetBackendHandle>::reset[abi:sn200100](&v99, 0);
      if ((v129 & 1) != 0 && v126 == 1 && v125 != 255)
      {
        if (!v125 && v122 == 1)
        {
          v71 = cf;
          cf = 0;
          if (v71)
          {
            CFRelease(v71);
          }
        }

        WTF::MachSendRight::~MachSendRight(&v119);
      }
    }

    else
    {
      LOBYTE(v100[0]) = 0;
      LOBYTE(v100[1]) = 0;
    }

    if ((v100[1] & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_74:
    if ((v43 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_118;
    }

    v54 = v98;
    if (!v98)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(&v98, 0);
      v54 = v98;
    }

    v55 = *(v54 - 8);
    v56 = (v43 + ~(v43 << 32)) ^ ((v43 + ~(v43 << 32)) >> 22);
    v57 = 9 * ((v56 + ~(v56 << 13)) ^ ((v56 + ~(v56 << 13)) >> 8));
    v58 = (v57 ^ (v57 >> 15)) + ~((v57 ^ (v57 >> 15)) << 27);
    v59 = v55 & ((v58 >> 31) ^ v58);
    v60 = (v54 + 16 * v59);
    v61 = *v60;
    if (*v60)
    {
      v62 = 0;
      v63 = 1;
      while (v61 != v43)
      {
        if (v61 == -1)
        {
          v62 = v60;
        }

        v59 = (v59 + v63) & v55;
        v60 = (v54 + 16 * v59);
        v61 = *v60;
        ++v63;
        if (!*v60)
        {
          if (v62)
          {
            *v62 = 0;
            v62[1] = 0;
            --*(v54 - 16);
            v60 = v62;
          }

          goto LABEL_85;
        }
      }

      if ((v100[1] & 1) == 0)
      {
        goto LABEL_119;
      }

LABEL_118:
      std::unique_ptr<WebKit::BufferSetBackendHandle>::reset[abi:sn200100](v100, 0);
LABEL_119:
      if (v98)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v98, v42);
      }

      goto LABEL_121;
    }

LABEL_85:
    *v60 = v43;
    v64 = v100[0];
    v100[0] = 0;
    *&v119 = 0;
    std::unique_ptr<WebKit::BufferSetBackendHandle>::reset[abi:sn200100](v60 + 1, v64);
    v27 = std::unique_ptr<WebKit::BufferSetBackendHandle>::reset[abi:sn200100](&v119, 0);
    v65 = v98;
    if (v98)
    {
      v66 = *(v98 - 12) + 1;
    }

    else
    {
      v66 = 1;
    }

    *(v98 - 12) = v66;
    v67 = (*(v65 - 16) + v66);
    v68 = *(v65 - 4);
    if (v68 <= 0x400)
    {
      if (3 * v68 > 4 * v67)
      {
        goto LABEL_90;
      }

LABEL_89:
      v27 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(&v98, v60);
      goto LABEL_90;
    }

    if (v68 <= 2 * v67)
    {
      goto LABEL_89;
    }

LABEL_90:
    if (LOBYTE(v100[1]) == 1)
    {
      v27 = std::unique_ptr<WebKit::BufferSetBackendHandle>::reset[abi:sn200100](v100, 0);
    }
  }

  if ((v103 & 1) == 0)
  {
    goto LABEL_145;
  }

  v76 = v98;
  v30 = v102;
  v32 = DWORD2(v102);
  v31 = HIDWORD(v102);
LABEL_128:
  *&v33 = 0;
  v102 = v33;
  *&v119 = v30;
  *(&v119 + 1) = __PAIR64__(v31, v32);
  v120 = v76;
  LOBYTE(cf) = 1;
  WTF::Vector<std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v102, v28);
  WebKit::RemoteLayerTreeDrawingAreaProxy::commitLayerTree(this, a2, &v119, &v120);
  if (cf)
  {
    if (v120)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v120, v9);
    }

    WTF::Vector<std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v119, v9);
  }

LABEL_140:
  if (*(this + 18) == 1)
  {
    (*(*this + 24))(this, v9, v10);
  }

  else
  {
    --*(this + 18);
  }
}
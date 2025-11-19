_DWORD *WebKit::RemoteLegacyCDMFactoryProxy::didReceiveMessage(atomic_ullong *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  WebKit::RemoteLegacyCDMFactoryProxy::sharedPreferencesForWebProcess(this, v30);
  if (v30[24] == 1 && (v30[11] & 2) != 0)
  {
    v10 = this + 2;
    ++*(this + 4);
    v11 = *(a3 + 25);
    if (v11 == 1387)
    {
      v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v13)
      {
        v14 = v12;
        v15 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v16)
        {
          v17 = v15;
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
              goto LABEL_19;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_19:
          v23 = WTF::fastMalloc(0x18);
          *v23 = &unk_1F10F1FA8;
          v23[1] = v17;
          v23[2] = a2;
          *buf = v23;
          WebKit::RemoteLegacyCDMFactoryProxy::removeSession(this, v14, buf);
          v24 = *buf;
          *buf = 0;
          if (v24)
          {
            (*(*v24 + 8))(v24);
          }
        }

        return WTF::RefCounted<WebKit::RemoteLegacyCDMFactoryProxy>::deref(v10, v16);
      }
    }

    else
    {
      v20 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v11 >= 0x107F)
        {
          v27 = 4223;
        }

        else
        {
          v27 = v11;
        }

        v28 = (&IPC::Detail::messageDescriptions)[3 * v27];
        v29 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v28;
        v32 = 2048;
        v33 = v29;
        _os_log_error_impl(&dword_19D52D000, v20, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }
    }

    v16 = *a3;
    v21 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v22 = *(a3 + 3);
    if (v22 && v21)
    {
      (*(*v22 + 16))(v22, v16);
    }

    return WTF::RefCounted<WebKit::RemoteLegacyCDMFactoryProxy>::deref(v10, v16);
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
    _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteLegacyCDMFactoryProxy", buf, 0xCu);
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

uint64_t WebKit::RemoteLegacyCDMFactoryProxy::didReceiveSyncMessage(uint64_t a1, atomic_ullong *a2, IPC::Decoder *a3, uint64_t *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  WebKit::RemoteLegacyCDMFactoryProxy::sharedPreferencesForWebProcess(a1, v52);
  if (v52[24] == 1 && (v52[11] & 2) != 0)
  {
    v13 = (a1 + 16);
    ++*(a1 + 16);
    v14 = *(a3 + 25);
    if (v14 == 4107)
    {
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v53);
      if (v54 & 1) != 0 || (v49 = *a3, v50 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v51 = *(a3 + 3)) != 0) && v50 && ((*(*v51 + 16))(v51, v49), (v54))
      {
        IPC::ArgumentCoder<std::optional<WTF::String>,void>::decode<IPC::Decoder>(a3, v55);
        if ((v56 & 1) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (v14 != 4106)
      {
        v23 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v14 >= 0x107F)
          {
            v37 = 4223;
          }

          else
          {
            v37 = v14;
          }

          v38 = (&IPC::Detail::messageDescriptions)[3 * v37];
          v39 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v38;
          *&buf[12] = 2048;
          *&buf[14] = v39;
          _os_log_error_impl(&dword_19D52D000, v23, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
        }

        v24 = *a3;
        v25 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v26 = *(a3 + 3);
        if (v26 && v25)
        {
          (*(*v26 + 16))(v26, v24);
        }

        v12 = 0;
        goto LABEL_67;
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v53);
      if (v54 & 1) != 0 || (v46 = *a3, v47 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v48 = *(a3 + 3)) != 0) && v47 && ((*(*v48 + 16))(v48, v46), (v54))
      {
        IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v55, a3);
        if (v56 == 1)
        {
          if (v54)
          {
            *buf = v53;
            *&buf[8] = *v55;
            v58 = 1;
            v16 = *a4;
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
                goto LABEL_45;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_45:
            v34 = WTF::fastMalloc(0x18);
            *v34 = &unk_1F10F1FD0;
            *(v34 + 1) = v16;
            *(v34 + 2) = a2;
            v55[0] = v34;
            WebKit::RemoteLegacyCDMFactoryProxy::createCDM(a1, buf, &buf[8], v55);
            v35 = v55[0];
            v55[0] = 0;
            if (v35)
            {
              (*(*v35 + 8))(v35);
            }

            if (v58)
            {
LABEL_48:
              v36 = *buf;
              *buf = 0;
              if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v36, v24);
              }
            }

            goto LABEL_66;
          }

          while (1)
          {
            __break(1u);
LABEL_60:
            v15 = *a3;
            v40 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v41 = *(a3 + 3);
            if (!v41)
            {
              break;
            }

            if (!v40)
            {
              break;
            }

            (*(*v41 + 16))(v41, v15);
            if ((v56 & 1) == 0)
            {
              break;
            }

LABEL_17:
            if (v54)
            {
              *buf = v53;
              buf[8] = 0;
              buf[16] = 0;
              v19 = LOBYTE(v55[1]);
              if (v55[1])
              {
                *&buf[8] = v55[0];
                buf[16] = 1;
              }

              v58 = 1;
              v20 = *a4;
              *a4 = 0;
              while (1)
              {
                v21 = *a2;
                if ((*a2 & 1) == 0)
                {
                  break;
                }

                v22 = *a2;
                atomic_compare_exchange_strong_explicit(a2, &v22, v21 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v22 == v21)
                {
                  goto LABEL_28;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_28:
              v27 = WTF::fastMalloc(0x18);
              *v27 = &unk_1F10F1FF8;
              *(v27 + 1) = v20;
              *(v27 + 2) = a2;
              v53 = v27;
              LOBYTE(v55[0]) = 0;
              LOBYTE(v55[1]) = 0;
              if (v19)
              {
                v28 = *&buf[8];
                *&buf[8] = 0;
                v55[0] = v28;
                LOBYTE(v55[1]) = 1;
              }

              WebKit::RemoteLegacyCDMFactoryProxy::supportsKeySystem(a1, buf, v55, &v53);
              if (LOBYTE(v55[1]) == 1)
              {
                v29 = v55[0];
                v55[0] = 0;
                if (v29)
                {
                  if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v29, v24);
                  }
                }
              }

              v30 = v53;
              v53 = 0;
              if (v30)
              {
                (*(*v30 + 8))(v30);
              }

              if (v58)
              {
                if (buf[16] == 1)
                {
                  v31 = *&buf[8];
                  *&buf[8] = 0;
                  if (v31)
                  {
                    if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v31, v24);
                    }
                  }
                }

                goto LABEL_48;
              }

              goto LABEL_66;
            }
          }
        }

        if (v54)
        {
          v42 = v53;
          v53 = 0;
          if (v42)
          {
            if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v42, v15);
            }
          }
        }
      }
    }

    v24 = *a3;
    v43 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v44 = *(a3 + 3);
    if (v44 && v43)
    {
      (*(*v44 + 16))(v44, v24);
    }

LABEL_66:
    v12 = 1;
LABEL_67:
    WTF::RefCounted<WebKit::RemoteLegacyCDMFactoryProxy>::deref(v13, v24);
    return v12;
  }

  v8 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v32 = *(a3 + 25);
    if (v32 >= 0x107F)
    {
      v32 = 4223;
    }

    v33 = (&IPC::Detail::messageDescriptions)[3 * v32];
    *buf = 136315138;
    *&buf[4] = v33;
    _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteLegacyCDMFactoryProxy", buf, 0xCu);
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

uint64_t *WebKit::RemoteLegacyCDMProxy::didReceiveMessage(WebKit::RemoteLegacyCDMProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(this + 4);
  if (v4)
  {
    v6 = *(v4 + 8);
    if (v6)
    {
      WebKit::RemoteLegacyCDMFactoryProxy::sharedPreferencesForWebProcess(v6, v21);
      if ((v21[24] & 1) != 0 && (v21[11] & 2) != 0)
      {
        ++*(this + 7);
        v11 = *(a3 + 25);
        if (v11 == 1388)
        {
          result = IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(buf, a3);
          if ((v24 & 0x10000) != 0)
          {
            v14 = *buf;
            if ((buf[8] & 1) == 0)
            {
              v14 = 0;
            }

            *(this + 5) = v14;
LABEL_18:
            if (*(this + 7) == 1)
            {
              return (*(*this + 24))(this, v12, v13);
            }

            --*(this + 7);
            return result;
          }
        }

        else
        {
          v17 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            if (v11 >= 0x107F)
            {
              v18 = 4223;
            }

            else
            {
              v18 = v11;
            }

            v19 = (&IPC::Detail::messageDescriptions)[3 * v18];
            v20 = *(a3 + 7);
            *buf = 136315394;
            *&buf[4] = v19;
            v23 = 2048;
            v24 = v20;
            _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
          }
        }

        v12 = *a3;
        v13 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        result = *(a3 + 3);
        if (result && v13)
        {
          result = (*(*result + 16))(result, v12);
        }

        goto LABEL_18;
      }
    }
  }

  v7 = qword_1ED6416C8;
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
    _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteLegacyCDMProxy", buf, 0xCu);
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

uint64_t WebKit::RemoteLegacyCDMProxy::didReceiveSyncMessage(uint64_t a1, atomic_ullong *a2, uint64_t a3, uint64_t *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  if (v5)
  {
    v7 = *(v5 + 8);
    if (v7)
    {
      WebKit::RemoteLegacyCDMFactoryProxy::sharedPreferencesForWebProcess(v7, v40);
      if ((v40[24] & 1) != 0 && (v40[11] & 2) != 0)
      {
        ++*(a1 + 28);
        v16 = *(a3 + 50);
        if (v16 == 4108)
        {
          v22 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v23)
          {
            v25 = v22;
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
                goto LABEL_28;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_28:
            v31 = WTF::fastMalloc(0x18);
            *v31 = &unk_1F10F2048;
            v31[1] = v26;
            v31[2] = a2;
            *buf = v31;
            WebKit::RemoteLegacyCDMProxy::createSession(a1, v25, buf);
            v32 = *buf;
            *buf = 0;
            if (v32)
            {
              (*(*v32 + 8))(v32);
            }
          }
        }

        else
        {
          if (v16 != 4109)
          {
            v29 = qword_1ED6416C8;
            if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              if (v16 >= 0x107F)
              {
                v36 = 4223;
              }

              else
              {
                v36 = v16;
              }

              v37 = (&IPC::Detail::messageDescriptions)[3 * v36];
              v38 = *(a3 + 56);
              *buf = 136315394;
              *&buf[4] = v37;
              v43 = 2048;
              v44 = v38;
              _os_log_error_impl(&dword_19D52D000, v29, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
            }

            v23 = *a3;
            v24 = *(a3 + 8);
            *a3 = 0;
            *(a3 + 8) = 0;
            v30 = *(a3 + 24);
            if (v30 && v24)
            {
              (*(*v30 + 16))(v30, v23);
            }

            v14 = 0;
            goto LABEL_39;
          }

          IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
          if (buf[8] & 1) != 0 || (v23 = *a3, v24 = *(a3 + 8), *a3 = 0, *(a3 + 8) = 0, (v39 = *(a3 + 24)) != 0) && v24 && ((*(*v39 + 16))(v39, v23), (buf[8]))
          {
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
                goto LABEL_31;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_31:
            v33 = WTF::fastMalloc(0x18);
            *v33 = &unk_1F10F2020;
            v33[1] = v17;
            v33[2] = a2;
            v41 = v33;
            if ((buf[8] & 1) == 0)
            {
              __break(1u);
            }

            WebKit::RemoteLegacyCDMProxy::supportsMIMEType(a1, buf, &v41);
            v34 = v41;
            v41 = 0;
            if (v34)
            {
              (*(*v34 + 8))(v34);
            }

            if (buf[8])
            {
              v35 = *buf;
              *buf = 0;
              if (v35)
              {
                if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v35, v23);
                }
              }
            }
          }
        }

        v14 = 1;
LABEL_39:
        if (*(a1 + 28) == 1)
        {
          (*(*a1 + 24))(a1, v23, v24);
        }

        else
        {
          --*(a1 + 28);
        }

        return v14;
      }
    }
  }

  v10 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v20 = *(a3 + 50);
    if (v20 >= 0x107F)
    {
      v20 = 4223;
    }

    v21 = (&IPC::Detail::messageDescriptions)[3 * v20];
    *buf = 136315138;
    *&buf[4] = v21;
    _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteLegacyCDMProxy", buf, 0xCu);
  }

  v11 = *a3;
  v12 = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  v13 = *(a3 + 24);
  if (v13 && v12)
  {
    (*(*v13 + 16))(v13, v11);
  }

  return 0;
}

_DWORD *WebKit::RemoteLegacyCDMSession::didReceiveMessage(WebKit::RemoteLegacyCDMSession *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = (this + 24);
  ++*(this + 6);
  v6 = *(a3 + 25);
  if (v6 != 1390)
  {
    if (v6 == 1391)
    {
      IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a3, &v34);
      if (v35 == 1)
      {
        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v36);
        if (v37 & 1) != 0 || (v28 = *a3, v29 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v30 = *(a3 + 3)) != 0) && v29 && ((*(*v30 + 16))(v30, v28), (v37))
        {
          if ((v35 & 1) == 0)
          {
            __break(1u);
          }

          *buf = v34;
          *&buf[8] = v36;
          buf[16] = 1;
        }

        else
        {
          buf[0] = 0;
          buf[16] = 0;
          if (v35)
          {
            v31 = v34;
            v34 = 0;
            if (v31)
            {
              if (atomic_fetch_add(v31 + 2, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v31 + 2);
                (*(*v31 + 8))(v31, v28, v29);
              }
            }
          }
        }
      }

      else
      {
        buf[0] = 0;
        buf[16] = 0;
      }

      if (buf[16])
      {
        WebKit::RemoteLegacyCDMSession::sendMessage(this, buf, &buf[8]);
        if (buf[16])
        {
          v22 = *&buf[8];
          *&buf[8] = 0;
          if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v9);
          }

          v23 = *buf;
          *buf = 0;
          if (v23 && atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v23 + 2);
            (*(*v23 + 8))(v23);
          }
        }

        return WTF::RefCounted<WebKit::RemoteLegacyCDMSession>::deref(v5, v9);
      }
    }

    else
    {
      v19 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v6 >= 0x107F)
        {
          v25 = 4223;
        }

        else
        {
          v25 = v6;
        }

        v26 = (&IPC::Detail::messageDescriptions)[3 * v25];
        v27 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v26;
        *&buf[12] = 2048;
        *&buf[14] = v27;
        _os_log_error_impl(&dword_19D52D000, v19, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }
    }

    goto LABEL_23;
  }

  v7 = *(a3 + 1);
  v8 = ((*(a3 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
  v9 = *a3;
  v10 = v8 - *a3;
  v11 = v7 >= v10;
  v12 = v7 - v10;
  if (!v11 || v12 <= 1)
  {
    goto LABEL_46;
  }

  *(a3 + 2) = v8 + 1;
  if (!v8)
  {
    goto LABEL_48;
  }

  v14 = *v8;
  v15 = ((v8 + 5) & 0xFFFFFFFFFFFFFFFCLL);
  if (v7 < v15 - v9 || v7 - (v15 - v9) <= 3)
  {
LABEL_46:
    *a3 = 0;
    *(a3 + 1) = 0;
    v32 = *(a3 + 3);
    if (v32)
    {
      if (v7)
      {
        (*(*v32 + 16))(v32);
        v7 = *(a3 + 1);
      }
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_48;
  }

  *(a3 + 2) = v15 + 4;
  if (!v15)
  {
LABEL_48:
    *a3 = 0;
    *(a3 + 1) = 0;
    v33 = *(a3 + 3);
    if (v33 && v7)
    {
      (*(*v33 + 16))(v33);
    }

LABEL_23:
    v9 = *a3;
    v20 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v21 = *(a3 + 3);
    if (v21 && v20)
    {
      (*(*v21 + 16))(v21, v9);
    }

    return WTF::RefCounted<WebKit::RemoteLegacyCDMSession>::deref(v5, v9);
  }

  v17 = *(this + 6);
  if (v17)
  {
    v18 = *(v17 + 8);
    if (v18)
    {
      (*(*v18 + 24))(v18, v14, *v15);
    }
  }

  return WTF::RefCounted<WebKit::RemoteLegacyCDMSession>::deref(v5, v9);
}

void WebKit::RemoteImageDecoderAVFProxy::~RemoteImageDecoderAVFProxy(WebKit::RemoteImageDecoderAVFProxy *this)
{
  WebKit::RemoteImageDecoderAVFProxy::~RemoteImageDecoderAVFProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

{
  *this = &unk_1F10F2070;
  WTF::MachSendRight::~MachSendRight((this + 40));
  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = (v3 + 8);
      do
      {
        if (*(v5 - 1) != -1)
        {
          v6 = *v5;
          *v5 = 0;
          if (v6)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageDecoder,(WTF::DestructionThread)0>::deref((v6 + 8), v2);
          }
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), v2);
  }

  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v7, v2);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v2);
}

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageDecoder,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ImageDecoder,(WTF::DestructionThread)0>(*result, a2);
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

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::ImageDecoder,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
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

uint64_t IPC::Decoder::decode<std::tuple<WebKit::MonotonicObjectIdentifier<WebKit::RenderingUpdateIDType>>>(IPC::Decoder *a1)
{
  result = IPC::Decoder::decode<WebKit::MonotonicObjectIdentifier<WebKit::RenderingUpdateIDType>>(a1);
  if ((v3 & 1) == 0)
  {
    v6 = result;
    v4 = a1;
    v5 = v3;
    IPC::Decoder::markInvalid(v4);
    result = v6;
    v3 = v5;
  }

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::MonotonicObjectIdentifier<WebKit::RenderingUpdateIDType>>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<WebKit::MonotonicObjectIdentifier<WebKit::RenderingUpdateIDType>,void>::decode(a1);
  if ((v3 & 1) == 0)
  {
    v4 = result;
    IPC::Decoder::markInvalid(a1);
    return v4;
  }

  return result;
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteImageDecoderAVFManager,(WTF::DestructionThread)0>::deref(atomic_ullong *result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      v3 = *result;

      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::RemoteImageDecoderAVFManager,(WTF::DestructionThread)0>(v3, a2);
    }

    v4 = *result;
    atomic_compare_exchange_strong_explicit(result, &v4, v2 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v4 != v2);
  if (v2 == 3)
  {
    WebKit::RemoteImageDecoderAVFManager::~RemoteImageDecoderAVFManager((result - 3), a2);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

WebKit::RemoteImageDecoderAVFManager *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::RemoteImageDecoderAVFManager,(WTF::DestructionThread)0>(WebKit::RemoteImageDecoderAVFManager *this, void *a2)
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
  if (v6 != 1)
  {
    v7 = v5;
    v8 = v4;
    this = WTF::Lock::unlockSlow(v2);
    v5 = v7;
    v4 = v8;
  }

  if (!v4)
  {
    v9[0] = v2;
    v9[1] = v5;
    return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::RemoteImageDecoderAVFManager,(WTF::DestructionThread)0>(void)const::{lambda(void)#1}::operator()(v9, a2);
  }

  return this;
}

WebKit::RemoteImageDecoderAVFManager *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::RemoteImageDecoderAVFManager,(WTF::DestructionThread)0>(void)const::{lambda(void)#1}::operator()(uint64_t *a1, void *a2)
{
  v3 = *a1;
  result = a1[1];
  if (result)
  {
    WebKit::RemoteImageDecoderAVFManager::~RemoteImageDecoderAVFManager(result, a2);
    result = bmalloc::api::tzoneFree(v4, v5);
  }

  v6 = 0;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    result = MEMORY[0x19EB01E30](v3);
  }

  v8 = *(v3 + 16) - 1;
  *(v3 + 16) = v8;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 == 1)
  {
    if (v8)
    {
      return result;
    }
  }

  else
  {
    v9 = v8;
    result = WTF::Lock::unlockSlow(v3);
    if (v9)
    {
      return result;
    }
  }

  return WTF::fastFree(v3, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26RemoteImageDecoderAVFProxy13CreateDecoderEN6WebKit26RemoteImageDecoderAVFProxyES8_FvRKNS2_21SharedBufferReferenceERKNS_6StringEONS_17CompletionHandlerIFvONSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore26ImageDecoderIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSP_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1F30;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26RemoteImageDecoderAVFProxy13CreateDecoderEN6WebKit26RemoteImageDecoderAVFProxyES8_FvRKNS2_21SharedBufferReferenceERKNS_6StringEONS_17CompletionHandlerIFvONSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore26ImageDecoderIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSP_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1F30;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26RemoteImageDecoderAVFProxy13CreateDecoderEN6WebKit26RemoteImageDecoderAVFProxyES8_FvRKNS2_21SharedBufferReferenceERKNS_6StringEONS_17CompletionHandlerIFvONSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore26ImageDecoderIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSP_EE4callESP_(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (*(a2 + 8))
  {
    v9 = 1;
    IPC::Encoder::operator<<<BOOL>(v4, &v9);
    if ((*(a2 + 8) & 1) == 0)
    {
      v8 = std::__throw_bad_optional_access[abi:sn200100]();
      return _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26RemoteImageDecoderAVFProxy7SetDataEN6WebKit26RemoteImageDecoderAVFProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore26ImageDecoderIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS2_21SharedBufferReferenceEbONS_17CompletionHandlerIFvyRKNSA_7IntSizeEbONSt3__18optionalINS_6VectorINSA_21ImageDecoderFrameInfoELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJySL_bSU_EED1Ev(v8);
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, *a2);
  }

  else
  {
    v10 = 0;
    IPC::Encoder::operator<<<BOOL>(v4, &v10);
  }

  v6 = *(a1 + 16);

  return IPC::Connection::sendMessageImpl(v6, v3, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26RemoteImageDecoderAVFProxy7SetDataEN6WebKit26RemoteImageDecoderAVFProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore26ImageDecoderIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS2_21SharedBufferReferenceEbONS_17CompletionHandlerIFvyRKNSA_7IntSizeEbONSt3__18optionalINS_6VectorINSA_21ImageDecoderFrameInfoELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJySL_bSU_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1F58;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26RemoteImageDecoderAVFProxy7SetDataEN6WebKit26RemoteImageDecoderAVFProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore26ImageDecoderIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS2_21SharedBufferReferenceEbONS_17CompletionHandlerIFvyRKNSA_7IntSizeEbONSt3__18optionalINS_6VectorINSA_21ImageDecoderFrameInfoELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJySL_bSU_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1F58;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26RemoteImageDecoderAVFProxy7SetDataEN6WebKit26RemoteImageDecoderAVFProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore26ImageDecoderIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEERKNS2_21SharedBufferReferenceEbONS_17CompletionHandlerIFvyRKNSA_7IntSizeEbONSt3__18optionalINS_6VectorINSA_21ImageDecoderFrameInfoELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJySL_bSU_EE4callEySL_bSU_(uint64_t a1, uint64_t a2, int *a3, char a4, uint64_t *a5)
{
  v17 = a4;
  v8 = (a1 + 8);
  v9 = *(a1 + 8);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, a2);
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v9, a3);
  v10 = IPC::Encoder::operator<<<BOOL>(v9, &v17);
  v11 = v10;
  if ((a5[2] & 1) == 0)
  {
    v19 = 0;
    IPC::Encoder::operator<<<BOOL>(v10, &v19);
    return IPC::Connection::sendMessageImpl(*(a1 + 16), v8, 0, 0);
  }

  v18 = 1;
  IPC::Encoder::operator<<<BOOL>(v10, &v18);
  if (a5[2])
  {
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v11, *(a5 + 3));
    v12 = *(a5 + 3);
    if (v12)
    {
      v13 = *a5;
      v14 = v13 + 16 * v12;
      do
      {
        IPC::Encoder::operator<<<BOOL>(v11, v13);
        IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v11, *(v13 + 8));
        v13 += 16;
      }

      while (v13 != v14);
    }

    return IPC::Connection::sendMessageImpl(*(a1 + 16), v8, 0, 0);
  }

  v16 = std::__throw_bad_optional_access[abi:sn200100]();
  return _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26RemoteImageDecoderAVFProxy23CreateFrameImageAtIndexEN6WebKit26RemoteImageDecoderAVFProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore26ImageDecoderIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEyONS_17CompletionHandlerIFvONSt3__18optionalINSA_21ShareableBitmapHandleEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED1Ev(v16);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26RemoteImageDecoderAVFProxy23CreateFrameImageAtIndexEN6WebKit26RemoteImageDecoderAVFProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore26ImageDecoderIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEyONS_17CompletionHandlerIFvONSt3__18optionalINSA_21ShareableBitmapHandleEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1F80;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26RemoteImageDecoderAVFProxy23CreateFrameImageAtIndexEN6WebKit26RemoteImageDecoderAVFProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore26ImageDecoderIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEyONS_17CompletionHandlerIFvONSt3__18optionalINSA_21ShareableBitmapHandleEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1F80;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages26RemoteImageDecoderAVFProxy23CreateFrameImageAtIndexEN6WebKit26RemoteImageDecoderAVFProxyES8_FvNS_23ObjectIdentifierGenericIN7WebCore26ImageDecoderIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEyONS_17CompletionHandlerIFvONSt3__18optionalINSA_21ShareableBitmapHandleEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, unint64_t a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<std::optional<WebCore::ShareableBitmapHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::ShareableBitmapHandle>>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,void>::decode(a2, &v8);
  if (v9)
  {
    *a1 = v8;
    *(a1 + 16) = 1;
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      if (v6)
      {
        (*(*result + 16))(result, v5);
        v6 = *(a2 + 1);
        result = *(a2 + 3);
      }
    }

    else
    {
      v6 = 0;
    }

    *a1 = 0;
    *(a1 + 16) = 0;
    *a2 = 0;
    *(a2 + 1) = 0;
    if (result && v6)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

void IPC::Decoder::decode<std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>>(uint64_t a1, IPC::Decoder *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebKit::RemoteLayerTreeTransaction,void>::decode(a2, v18);
  if ((v19 & 1) == 0)
  {
    v6 = *a2;
    v7 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v8 = *(a2 + 3);
    v9 = !v8 || v7 == 0;
    if (v9 || ((*(*v8 + 16))(v8, v6), (v19 & 1) == 0))
    {
      *a1 = 0;
      *(a1 + 992) = 0;
LABEL_15:
      v10 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v11 = *(a2 + 3);
      if (v11 && v10)
      {
        v12 = *(*v11 + 16);

        v12();
      }

      return;
    }
  }

  IPC::ArgumentCoder<WebKit::RemoteScrollingCoordinatorTransaction,void>::decode(a2, &v15);
  if (v17 & 1) != 0 || (v4 = *a2, v13 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v14 = *(a2 + 3)) != 0) && v13 && ((*(*v14 + 16))(v14, v4), (v17))
  {
    if ((v19 & 1) == 0)
    {
      __break(1u);
    }

    WebKit::RemoteLayerTreeTransaction::RemoteLayerTreeTransaction(a1, v18);
    *(a1 + 960) = v15;
    *(a1 + 968) = v16;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a1 = 0;
  }

  *(a1 + 992) = v5;
  if (v19)
  {
    WebKit::RemoteLayerTreeTransaction::~RemoteLayerTreeTransaction(v18, v4);
    v5 = *(a1 + 992);
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_15;
  }
}

__n128 WTF::Vector<std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = WebKit::RemoteLayerTreeTransaction::RemoteLayerTreeTransaction(*a1 + 992 * *(a1 + 12), v3);
  v5 = *(v3 + 960);
  *(v3 + 960) = 0;
  *(v4 + 960) = v5;
  result = *(v3 + 968);
  *(v4 + 968) = result;
  ++*(a1 + 12);
  return result;
}

unint64_t WTF::Vector<std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 992 * *(a1 + 12) <= a3)
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

    WTF::Vector<std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x421085)
    {
      __break(0xC471u);
      JUMPOUT(0x19DA08200);
    }

    v3 = *a1;
    v4 = *a1 + 992 * *(a1 + 12);
    v5 = 992 * a2;
    v6 = WTF::fastMalloc((992 * a2));
    *(a1 + 8) = v5 / 0x3E0;
    *a1 = v6;
    WTF::VectorMover<false,std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>>::move(v3, v4, v6);
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

void WTF::VectorMover<false,std::pair<WebKit::RemoteLayerTreeTransaction,WebKit::RemoteScrollingCoordinatorTransaction>>::move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      WebKit::RemoteLayerTreeTransaction::RemoteLayerTreeTransaction(a3, v5);
      v7 = *(v5 + 960);
      *(v5 + 960) = 0;
      *(a3 + 960) = v7;
      *(a3 + 968) = *(v5 + 968);
      v8 = *(v5 + 960);
      *(v5 + 960) = 0;
      if (v8)
      {
        WebCore::ScrollingStateTree::operator delete();
      }

      WebKit::RemoteLayerTreeTransaction::~RemoteLayerTreeTransaction(v5, v6);
      a3 += 992;
      v5 += 992;
    }

    while (v5 != a2);
  }
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
    v13 = 0;
    v11 = 0;
    do
    {
      v14 = (v6 + 16 * v13);
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
            v24 = *(v16 + 16 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = (v16 + 16 * v23);
          std::unique_ptr<WebKit::BufferSetBackendHandle>::reset[abi:sn200100](v25 + 1, 0);
          *v25 = *v14;
          v26 = v14[1];
          v14[1] = 0;
          v25[1] = v26;
          std::unique_ptr<WebKit::BufferSetBackendHandle>::reset[abi:sn200100](v14 + 1, 0);
          if (v14 == a3)
          {
            v11 = v25;
          }
        }
      }

      else
      {
        std::unique_ptr<WebKit::BufferSetBackendHandle>::reset[abi:sn200100](v14 + 1, 0);
      }

      ++v13;
    }

    while (v13 != v7);
    goto LABEL_19;
  }

  v11 = 0;
  result = 0;
  if (v6)
  {
LABEL_19:
    WTF::fastFree((v6 - 16), v10);
    return v11;
  }

  return result;
}

_DWORD *WTF::RefCounted<WebKit::RemoteLegacyCDMFactoryProxy>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::RemoteLegacyCDMFactoryProxy::~RemoteLegacyCDMFactoryProxy((result - 4), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages27RemoteLegacyCDMFactoryProxy13RemoveSessionENS2_10ConnectionEN6WebKit27RemoteLegacyCDMFactoryProxyES9_FvNS_23ObjectIdentifierGenericINS8_36RemoteLegacyCDMSessionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F1FA8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages27RemoteLegacyCDMFactoryProxy13RemoveSessionENS2_10ConnectionEN6WebKit27RemoteLegacyCDMFactoryProxyES9_FvNS_23ObjectIdentifierGenericINS8_36RemoteLegacyCDMSessionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F1FA8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages27RemoteLegacyCDMFactoryProxy13RemoveSessionENS2_10ConnectionEN6WebKit27RemoteLegacyCDMFactoryProxyES9_FvNS_23ObjectIdentifierGenericINS8_36RemoteLegacyCDMSessionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3505;
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteLegacyCDMFactoryProxy9CreateCDMEN6WebKit27RemoteLegacyCDMFactoryProxyES8_FvRKNS_6StringEONSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore25MediaPlayerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONSD_INSE_INS7_29RemoteLegacyCDMIdentifierTypeESI_yEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSQ_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1FD0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteLegacyCDMFactoryProxy9CreateCDMEN6WebKit27RemoteLegacyCDMFactoryProxyES8_FvRKNS_6StringEONSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore25MediaPlayerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONSD_INSE_INS7_29RemoteLegacyCDMIdentifierTypeESI_yEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSQ_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1FD0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteLegacyCDMFactoryProxy9CreateCDMEN6WebKit27RemoteLegacyCDMFactoryProxyES8_FvRKNS_6StringEONSt3__18optionalINS_23ObjectIdentifierGenericIN7WebCore25MediaPlayerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONS_17CompletionHandlerIFvONSD_INSE_INS7_29RemoteLegacyCDMIdentifierTypeESI_yEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSQ_EE4callESQ_(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (*(a2 + 8))
  {
    v9 = 1;
    IPC::Encoder::operator<<<BOOL>(v4, &v9);
    if ((*(a2 + 8) & 1) == 0)
    {
      v8 = std::__throw_bad_optional_access[abi:sn200100]();
      return _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteLegacyCDMFactoryProxy17SupportsKeySystemEN6WebKit27RemoteLegacyCDMFactoryProxyES8_FvRKNS_6StringENSt3__18optionalIS9_EEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(v8);
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, *a2);
  }

  else
  {
    v10 = 0;
    IPC::Encoder::operator<<<BOOL>(v4, &v10);
  }

  v6 = *(a1 + 16);

  return IPC::Connection::sendMessageImpl(v6, v3, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteLegacyCDMFactoryProxy17SupportsKeySystemEN6WebKit27RemoteLegacyCDMFactoryProxyES8_FvRKNS_6StringENSt3__18optionalIS9_EEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1FF8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteLegacyCDMFactoryProxy17SupportsKeySystemEN6WebKit27RemoteLegacyCDMFactoryProxyES8_FvRKNS_6StringENSt3__18optionalIS9_EEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F1FF8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteLegacyCDMFactoryProxy17SupportsKeySystemEN6WebKit27RemoteLegacyCDMFactoryProxyES8_FvRKNS_6StringENSt3__18optionalIS9_EEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages20RemoteLegacyCDMProxy16SupportsMIMETypeEN6WebKit20RemoteLegacyCDMProxyES8_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2020;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages20RemoteLegacyCDMProxy16SupportsMIMETypeEN6WebKit20RemoteLegacyCDMProxyES8_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2020;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages20RemoteLegacyCDMProxy16SupportsMIMETypeEN6WebKit20RemoteLegacyCDMProxyES8_FvRKNS_6StringEONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = a1 + 8;
  IPC::Encoder::operator<<<BOOL>(*(a1 + 8), &v4);
  return IPC::Connection::sendMessageImpl(*(v2 + 8), v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages20RemoteLegacyCDMProxy13CreateSessionEN6WebKit20RemoteLegacyCDMProxyES8_FvyONS_17CompletionHandlerIFvONSt3__18optionalINS_23ObjectIdentifierGenericINS7_36RemoteLegacyCDMSessionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2048;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages20RemoteLegacyCDMProxy13CreateSessionEN6WebKit20RemoteLegacyCDMProxyES8_FvyONS_17CompletionHandlerIFvONSt3__18optionalINS_23ObjectIdentifierGenericINS7_36RemoteLegacyCDMSessionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2048;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

_DWORD *_ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages20RemoteLegacyCDMProxy13CreateSessionEN6WebKit20RemoteLegacyCDMProxyES8_FvyONS_17CompletionHandlerIFvONSt3__18optionalINS_23ObjectIdentifierGenericINS7_36RemoteLegacyCDMSessionIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (*(a2 + 8))
  {
    v10 = 1;
    IPC::Encoder::operator<<<BOOL>(v4, &v10);
    if ((*(a2 + 8) & 1) == 0)
    {
      v8 = std::__throw_bad_optional_access[abi:sn200100]();
      return WTF::RefCounted<WebKit::RemoteLegacyCDMSession>::deref(v8, v9);
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, *a2);
  }

  else
  {
    v11 = 0;
    IPC::Encoder::operator<<<BOOL>(v4, &v11);
  }

  v6 = *(a1 + 16);

  return IPC::Connection::sendMessageImpl(v6, v3, 0, 0);
}

_DWORD *WTF::RefCounted<WebKit::RemoteLegacyCDMSession>::deref(_DWORD *result, WTF::StringImpl *a2)
{
  if (*result == 1)
  {
    WebKit::RemoteLegacyCDMSession::~RemoteLegacyCDMSession((result - 6), a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::fallbackIconForFile(WebKit *this@<X0>, void *a2@<X8>)
{
  v6 = 0;
  if ((-[WebKit checkResourceIsReachableAndReturnError:](this, "checkResourceIsReachableAndReturnError:", &v6) & 1) != 0 && (v5 = [MEMORY[0x1E69CDA18] interactionControllerWithURL:this], objc_msgSend(objc_msgSend(v5, "icons"), "count")))
  {
    WebKit::thumbnailSizedImageForImage([objc_msgSend(objc_msgSend(v5 "icons")], a2);
  }

  else
  {
    *a2 = 0;
  }
}

void WebKit::thumbnailSizedImageForImage(WebKit *this@<X0>, void *a2@<X8>)
{
  if (!this)
  {
    goto LABEL_18;
  }

  Width = CGImageGetWidth(this);
  Height = CGImageGetHeight(this);
  v7 = Height;
  if (Width == Height)
  {
    CFRetain(this);
    v8 = this;
    goto LABEL_14;
  }

  v9 = v7 >= Width ? Width : Height;
  v10 = Width < v7;
  v11 = round((Width - v9) * 0.5);
  v12 = round((v7 - v9) * 0.5);
  v13 = v10 ? v12 : 0.0;
  v14 = v10 ? 0.0 : v11;
  v15 = v9;
  v8 = CGImageCreateWithImageInRect(this, *(&v9 - 2));
  if (!v8)
  {
LABEL_18:
    *a2 = 0;
    return;
  }

LABEL_14:
  ColorSpace = CGImageGetColorSpace(this);
  v17 = ColorSpace;
  if (ColorSpace)
  {
    CFRetain(ColorSpace);
  }

  if (CGColorSpaceSupportsOutput(v17))
  {
    v18 = v17;
  }

  else
  {
    v18 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (v17)
    {
      CFRelease(v17);
    }
  }

  v19 = CGBitmapContextCreate(0, 0x64uLL, 0x64uLL, 8uLL, 0x190uLL, v18, 1u);
  CGContextSetInterpolationQuality(v19, kCGInterpolationHigh);
  v24.size.width = 100.0;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.height = 100.0;
  CGContextDrawImage(v19, v24, v8);
  Image = CGBitmapContextCreateImage(v19);
  v21 = Image;
  if (Image)
  {
    v22 = Image;
  }

  else
  {
    v22 = v8;
  }

  CFRetain(v22);
  *a2 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v22];
  CFRelease(v22);
  if (!v21)
  {
    if (!v19)
    {
      goto LABEL_26;
    }

LABEL_32:
    CFRelease(v19);
    if (!v18)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  CFRelease(v21);
  if (v19)
  {
    goto LABEL_32;
  }

LABEL_26:
  if (v18)
  {
LABEL_27:
    CFRelease(v18);
  }

LABEL_28:

  CFRelease(v8);
}

void sub_19DA08D84(_Unwind_Exception *a1)
{
  if (v2)
  {
    CFRelease(v2);
  }

  CFRelease(v1);
  _Unwind_Resume(a1);
}

void WebKit::iconForImageFile(WebKit *this@<X0>, void *a2@<X8>)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E696E100];
  v10[0] = *MEMORY[0x1E696DFF0];
  v10[1] = v5;
  v11[0] = MEMORY[0x1E695E118];
  v11[1] = &unk_1F1184F08;
  v10[2] = *MEMORY[0x1E696E000];
  v10[3] = @"kCGImageSourceEnableRestrictedDecoding";
  v11[2] = MEMORY[0x1E695E118];
  v11[3] = MEMORY[0x1E695E118];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v7 = CGImageSourceCreateWithURL(this, 0);
  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v7, 0, v6);
  v9 = ThumbnailAtIndex;
  if (ThumbnailAtIndex)
  {
    WebKit::thumbnailSizedImageForImage(ThumbnailAtIndex, a2);
    CFRelease(v9);
  }

  else
  {
    WebKit::fallbackIconForFile(this, a2);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_19DA08F18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::iconForVideoFile(WebKit *this@<X0>, NSURL *a2@<X1>, void *a3@<X8>)
{
  v5 = [objc_alloc((*MEMORY[0x1E69E2260])(this a2))];
  v6 = [objc_alloc((*MEMORY[0x1E69E2350])()) initWithAsset:v5];
  v10 = 0;
  PAL::get_CoreMedia_kCMTimeZero(v9, [v6 setAppliesPreferredTrackTransform:1]);
  v7 = [v6 copyCGImageAtTime:v9 actualTime:0 error:&v10];
  v8 = v7;
  if (v7)
  {
    WebKit::thumbnailSizedImageForImage(v7, a3);
    CFRelease(v8);
  }

  else
  {
    WebKit::fallbackIconForFile(this, a3);
  }

  if (v6)
  {
  }

  if (v5)
  {
  }
}

void sub_19DA09030(_Unwind_Exception *exception_object)
{
  if (v2)
  {
  }

  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::iconForFiles(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 12))
  {
    goto LABEL_15;
  }

  v4 = objc_alloc(MEMORY[0x1E695DFF8]);
  if (!*(a1 + 12))
  {
    __break(0xC471u);
    return;
  }

  v5 = v4;
  v6 = **a1;
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v16, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }
  }

  else
  {
    v16 = &stru_1F1147748;
    v8 = &stru_1F1147748;
  }

  v9 = [v5 initFileURLWithPath:v16 isDirectory:0];
  v10 = v16;
  v16 = 0;
  if (v10)
  {
  }

  if (!v9)
  {
LABEL_15:
    *a2 = 0;
    return;
  }

  v11 = [v9 pathExtension];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  if ([(__CFString *)v12 length])
  {
    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], v12, 0);
    if (UTTypeConformsTo(PreferredIdentifierForTag, *MEMORY[0x1E69637F8]))
    {
      WebKit::iconForImageFile(v9, a2);
    }

    else if (UTTypeConformsTo(PreferredIdentifierForTag, *MEMORY[0x1E6963850]))
    {
      WebKit::iconForVideoFile(v9, v15, a2);
    }

    else
    {
      WebKit::fallbackIconForFile(v9, a2);
    }

    if (PreferredIdentifierForTag)
    {
      CFRelease(PreferredIdentifierForTag);
    }
  }

  else
  {
    *a2 = 0;
  }

  if (v12)
  {
  }
}

void sub_19DA091F8(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DA09250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  JUMPOUT(0x19DA09248);
}

void WebKit::startListeningForMachServiceConnections(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  {
    v12 = a3;
    v13 = a2;
    v10 = a4;
    v11 = a5;
    v9 = a6;
    v8 = a1;
    mach_service = xpc_connection_create_mach_service(a1, MEMORY[0x1E69E96A0], 1uLL);
    WebKit::startListeningForMachServiceConnections(char const*,WTF::ASCIILiteral,void (*)(NSObject  {objcproto13OS_xpc_object}*),void (*)(NSObject  {objcproto13OS_xpc_object}*),void (*)(NSObject  {objcproto13OS_xpc_object}*))::listener = mach_service;
    if (mach_service)
    {
      v7 = mach_service;
    }

    a6 = v9;
    a4 = v10;
    a5 = v11;
    a3 = v12;
    a1 = v8;
    a2 = v13;
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = ___ZN6WebKit39startListeningForMachServiceConnectionsEPKcN3WTF12ASCIILiteralEPFvPU24objcproto13OS_xpc_object8NSObjectES8_S8__block_invoke;
  handler[3] = &__block_descriptor_80_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = a2;
  handler[5] = a3;
  handler[6] = a1;
  handler[7] = a5;
  handler[8] = a6;
  handler[9] = a4;
  xpc_connection_set_event_handler(WebKit::startListeningForMachServiceConnections(char const*,WTF::ASCIILiteral,void (*)(NSObject  {objcproto13OS_xpc_object}*),void (*)(NSObject  {objcproto13OS_xpc_object}*),void (*)(NSObject  {objcproto13OS_xpc_object}*))::listener, handler);
  xpc_connection_activate(WebKit::startListeningForMachServiceConnections(char const*,WTF::ASCIILiteral,void (*)(NSObject  {objcproto13OS_xpc_object}*),void (*)(NSObject  {objcproto13OS_xpc_object}*),void (*)(NSObject  {objcproto13OS_xpc_object}*))::listener);
}

void ___ZN6WebKit39startListeningForMachServiceConnectionsEPKcN3WTF12ASCIILiteralEPFvPU24objcproto13OS_xpc_object8NSObjectES8_S8__block_invoke(uint64_t a1, _xpc_connection_s *a2)
{
  if (object_getClass(a2) == MEMORY[0x1E69E9E68])
  {
    if (*(a1 + 40) && (WTF::hasEntitlement() & 1) == 0)
    {
      NSLog(&cfstr_ConnectionAtte.isa);

      xpc_connection_cancel(a2);
    }

    else
    {
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = ___ZN6WebKit39startListeningForMachServiceConnectionsEPKcN3WTF12ASCIILiteralEPFvPU24objcproto13OS_xpc_object8NSObjectES8_S8__block_invoke_2;
      handler[3] = &unk_1E7630EA0;
      handler[4] = a2;
      v5 = *(a1 + 48);
      v6 = *(a1 + 64);
      xpc_connection_set_event_handler(a2, handler);
      xpc_connection_set_target_queue(a2, MEMORY[0x1E69E96A0]);
      xpc_connection_activate(a2);
      NSLog(&cfstr_AddingPeerConn.isa, a2);
      (*(a1 + 72))(a2);
    }
  }
}

uint64_t ___ZN6WebKit39startListeningForMachServiceConnectionsEPKcN3WTF12ASCIILiteralEPFvPU24objcproto13OS_xpc_object8NSObjectES8_S8__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 == MEMORY[0x1E69E9E20])
  {
    v5 = xpc_connection_copy_invalidation_reason();
    NSLog(&cfstr_FailedToStartL.isa, *(a1 + 40), v5);
    NSLog(&cfstr_RemovingPeerCo.isa, *(a1 + 32));
    result = (*(a1 + 48))(*(a1 + 32));
    if (v5)
    {

      JUMPOUT(0x19EB14CD0);
    }
  }

  else if (a2 == MEMORY[0x1E69E9E18])
  {
    NSLog(&cfstr_RemovingPeerCo.isa, *(a1 + 32));
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);

    return v6(v7);
  }

  else
  {
    v3 = *(a1 + 56);

    return v3(a2);
  }

  return result;
}

void sub_19DA095A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x19EB14CD0](v1, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::vectorToXPCData(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  WTF::makeDispatchData<unsigned char>(a1, &ddata);
  *a2 = xpc_data_create_with_dispatch_data(ddata);
  v3 = ddata;
  ddata = 0;
  if (v3)
  {
  }
}

void sub_19DA0961C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

IPC::Encoder *WebKit::encoderToXPCData@<X0>(void **a1@<X0>, xpc_object_t *a2@<X8>)
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3812000000;
  v12[3] = __Block_byref_object_copy__2;
  v12[4] = __Block_byref_object_dispose__2;
  v12[5] = &unk_19EA2799F;
  v3 = *a1;
  *a1 = 0;
  v13 = v3;
  result = v3[2];
  if (result)
  {
    v5 = v3[3];
  }

  else
  {
    result = (v3 + 4);
    v5 = 512;
  }

  v6 = v3[68];
  if (v5 < v6)
  {
    __break(1u);
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___ZN6WebKit16encoderToXPCDataEON3WTF9UniqueRefIN3IPC7EncoderEEE_block_invoke;
    v11[3] = &unk_1E7630EE8;
    v11[4] = v12;
    v7 = dispatch_data_create(result, v6, MEMORY[0x1E69E96A0], v11);
    *a2 = xpc_data_create_with_dispatch_data(v7);
    if (v7)
    {
    }

    _Block_object_dispose(v12, 8);
    result = v13;
    v13 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v8);
      return bmalloc::api::tzoneFree(v9, v10);
    }
  }

  return result;
}

void sub_19DA09770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, IPC::Encoder *a20)
{
  if (v20)
  {
  }

  _Block_object_dispose(&a14, 8);
  v23 = a20;
  a20 = 0;
  if (v23)
  {
    IPC::Encoder::~Encoder(v23, v22);
    bmalloc::api::tzoneFree(v24, v25);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

IPC::Encoder *___ZN6WebKit16encoderToXPCDataEON3WTF9UniqueRefIN3IPC7EncoderEEE_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  result = *(v3 + 48);
  *(v3 + 48) = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, a2);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

uint64_t WebKit::PCM::DaemonConnectionSet::setConnectedNetworkProcessHasDebugModeEnabled(WebKit::PCM::DaemonConnectionSet *this, const WebKit::Daemon::Connection *a2, int a3)
{
  v9 = *(a2 + 3);
  result = WTF::HashTable<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>>,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashMap<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>>,(WTF::ShouldValidateKey)1,NSObject  {objcproto13OS_xpc_object} const*>(this, &v9);
  v6 = *this;
  if (*this)
  {
    v6 += 16 * *(v6 - 4);
  }

  if (v6 != result && *(result + 8) != a3)
  {
    v7 = *(this + 1);
    *(result + 8) = a3;
    if (a3)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 - 1;
    }

    *(this + 1) = v8;
  }

  return result;
}

void WebKit::PCM::DaemonConnectionSet::broadcastConsoleMessage(void **a1, unsigned int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "debug message level", a2);
  WTF::String::utf8();
  if (v12)
  {
    v5 = v12 + 16;
  }

  else
  {
    v5 = 0;
  }

  xpc_dictionary_set_string(v4, "debug message", v5);
  if (v12)
  {
    if (*v12 == 1)
    {
      WTF::fastFree(v12, v6);
    }

    else
    {
      --*v12;
    }
  }

  v7 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(a1);
  v8 = v7;
  v10 = v9;
  if (*a1)
  {
    v11 = &(*a1)[2 * *(*a1 - 1)];
  }

  else
  {
    v11 = 0;
  }

  if (v11 != v7)
  {
    do
    {
      xpc_connection_send_message(*v8, v4);
      do
      {
        v8 += 2;
      }

      while (v8 != v10 && *v8 + 1 <= 1);
    }

    while (v8 != v11);
  }

  if (v4)
  {
  }
}

void sub_19DA09998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::PCMDaemonMain(WebKit *this, uint64_t a2, const char **a3)
{
  v4 = this;
  if (this < 5)
  {
    if (this)
    {
LABEL_23:
      NSLog(&cfstr_UsageSMachserv.isa, a2, a3, *a2);
      return 0xFFFFFFFFLL;
    }

    __break(1u);
  }

  v5 = *(a2 + 8);
  if (!v5 || strlen(*(a2 + 8)) != 17)
  {
    goto LABEL_23;
  }

  v6 = *v5 == 0x65536863616D2D2DLL && *(v5 + 8) == 0x6D614E6563697672;
  if (!v6 || *(v5 + 16) != 101)
  {
    goto LABEL_23;
  }

  v8 = *(a2 + 24);
  if (!v8 || strlen(*(a2 + 24)) != 17)
  {
    goto LABEL_23;
  }

  v9 = *v8 == 0x6761726F74732D2DLL && *(v8 + 8) == 0x6F697461636F4C65;
  if (!v9 || *(v8 + 16) != 110)
  {
    goto LABEL_23;
  }

  v12 = *(a2 + 16);
  v13 = *(a2 + 32);
  v15 = v4 != 5 && (v14 = *(a2 + 40)) != 0 && strlen(v14) == 15 && *v14 == 0x4174726174732D2DLL && *(v14 + 7) == 0x7974697669746341;
  v16 = objc_autoreleasePoolPush();
  _CFPrefsSetDirectModeEnabled();
  _CFPrefsSetReadOnly();
  WebKit::startListeningForMachServiceConnections(v12, "com.apple.private.webkit.adattributiond", 40, WebKit::connectionAdded, WebKit::connectionRemoved, WebKit::connectionEventHandler);
  if (v15)
  {
    NSLog(&cfstr_RegisteringXpc.isa);
    xpc_activity_register("com.apple.webkit.adattributiond.activity", *MEMORY[0x1E69E9C50], &__block_literal_global_13);
  }

  WTF::initializeMainThread(v17);
  WTF::FileSystemImpl::stringFromFileSystemRepresentation(&v23, v13, v18);
  WebKit::PCM::initializePCMStorageInDirectory(&v23, v19);
  v21 = v23;
  v23 = 0;
  if (v21)
  {
    if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v20);
    }
  }

  objc_autoreleasePoolPop(v16);
  CFRunLoopRun();
  return 0;
}

void WebKit::connectionAdded(void *a1)
{
  {
    WebKit::PCM::DaemonConnectionSet::singleton(void)::set = 0;
    qword_1EB01DB30 = 0;
  }

  v16 = a1;
  if (a1)
  {
    v1 = a1;
    a1 = v16;
  }

  if (a1 == -1 || !a1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DA09DF0);
  }

  v2 = WebKit::PCM::DaemonConnectionSet::singleton(void)::set;
  if (!WebKit::PCM::DaemonConnectionSet::singleton(void)::set)
  {
    WTF::HashTable<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>>,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashMap<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::FastMalloc>::expand();
    v2 = WebKit::PCM::DaemonConnectionSet::singleton(void)::set;
  }

  v3 = *(v2 - 8);
  v4 = (v16 + ~(v16 << 32)) ^ ((v16 + ~(v16 << 32)) >> 22);
  v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  v7 = v3 & ((v6 >> 31) ^ v6);
  v8 = v2 + 16 * v7;
  v9 = *v8;
  if (*v8)
  {
    v10 = 0;
    v11 = 1;
    while (v9 != v16)
    {
      if (v9 == -1)
      {
        v10 = v8;
      }

      v7 = (v7 + v11) & v3;
      v8 = v2 + 16 * v7;
      v9 = *v8;
      ++v11;
      if (!*v8)
      {
        if (v10)
        {
          *(v10 + 8) = 0;
          --*(v2 - 16);
          v8 = v10;
        }

        goto LABEL_17;
      }
    }

    if (v16)
    {
    }
  }

  else
  {
LABEL_17:
    *v8 = v16;
    *(v8 + 8) = 0;
    v12 = WebKit::PCM::DaemonConnectionSet::singleton(void)::set;
    if (WebKit::PCM::DaemonConnectionSet::singleton(void)::set)
    {
      v13 = *(WebKit::PCM::DaemonConnectionSet::singleton(void)::set - 12) + 1;
    }

    else
    {
      v13 = 1;
    }

    *(WebKit::PCM::DaemonConnectionSet::singleton(void)::set - 12) = v13;
    v14 = (*(v12 - 16) + v13);
    v15 = *(v12 - 4);
    if (v15 > 0x400)
    {
      if (v15 > 2 * v14)
      {
        return;
      }
    }

    else if (3 * v15 > 4 * v14)
    {
      return;
    }

    WTF::HashTable<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>>,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashMap<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::FastMalloc>::expand();
  }
}

void sub_19DA09E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::connectionRemoved(uint64_t a1)
{
  {
    WebKit::PCM::DaemonConnectionSet::singleton(void)::set = 0;
    qword_1EB01DB30 = 0;
  }

  v9 = a1;
  ShouldValidate = WTF::HashTable<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>>,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashMap<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>>,(WTF::ShouldValidateKey)1,NSObject  {objcproto13OS_xpc_object} const*>(&WebKit::PCM::DaemonConnectionSet::singleton(void)::set, &v9);
  v2 = ShouldValidate;
  if (WebKit::PCM::DaemonConnectionSet::singleton(void)::set)
  {
    if (WebKit::PCM::DaemonConnectionSet::singleton(void)::set + 16 * *(WebKit::PCM::DaemonConnectionSet::singleton(void)::set - 4) == ShouldValidate)
    {
      return;
    }
  }

  else if (!ShouldValidate)
  {
    return;
  }

  v3 = *(ShouldValidate + 8);
  v4 = *ShouldValidate;
  *ShouldValidate = 0;
  if (v4)
  {
  }

  *v2 = -1;
  v5 = WebKit::PCM::DaemonConnectionSet::singleton(void)::set;
  v6 = vadd_s32(*(WebKit::PCM::DaemonConnectionSet::singleton(void)::set - 16), 0xFFFFFFFF00000001);
  *(WebKit::PCM::DaemonConnectionSet::singleton(void)::set - 16) = v6;
  v7 = *(v5 - 4);
  if (6 * v6.i32[1] < v7 && v7 >= 9)
  {
    WTF::HashTable<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>>,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashMap<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::FastMalloc>::rehash(v7 >> 1);
  }

  if (v3)
  {
    --qword_1EB01DB30;
  }
}

void WebKit::connectionEventHandler(void *a1)
{
  v1 = a1;
  if (object_getClass(a1) == MEMORY[0x1E69E9E80])
  {
    if (xpc_dictionary_get_uint64(v1, "version") == 1)
    {
      uint64 = xpc_dictionary_get_uint64(v1, "message type");
      length = 0;
      data = xpc_dictionary_get_data(v1, "encoded message", &length);
      v4 = length;
      remote_connection = xpc_dictionary_get_remote_connection(v1);
      v6 = remote_connection;
      if (remote_connection)
      {
        v7 = remote_connection;
      }

      v8 = WTF::fastMalloc(0x20);
      *(v8 + 16) = 1;
      *v8 = &unk_1F10EC440;
      *(v8 + 8) = 0;
      *(v8 + 24) = v6;
      if (v1)
      {
        v9 = v1;
      }

      v10 = 0;
      if (uint64 <= 0x10u && ((1 << uint64) & 0x1104D) != 0)
      {
        v10 = WTF::fastMalloc(0x10);
        *v10 = &unk_1F10F2118;
        v10[1] = v1;
        v1 = 0;
      }

      length = v10;
      WebKit::PCM::decodeMessageAndSendToManager(v8, uint64, data, v4, &length);
      v11 = length;
      length = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      if (v1)
      {
      }

      if (*(v8 + 16) == 1)
      {
        (*(*v8 + 8))(v8);
      }

      else
      {
        --*(v8 + 16);
      }
    }

    else
    {
      NSLog(&cfstr_ReceivedReques.isa);
    }
  }
}

void sub_19DA0A0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
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

void WebKit::handleXPCEndpointMessage(void *a1, void *a2)
{
  if (object_getClass(a1) == MEMORY[0x1E69E9E80])
  {
    if (MEMORY[0x19EB01EF0](*a2, "xpc-endpoint-launch-services-database-message", 45))
    {
      value = xpc_dictionary_get_value(a1, "xpc-endpoint-launch-services-database");
      if (value)
      {
        v8 = value;
        v5 = value;
        Class = object_getClass(v8);
        if (Class == MEMORY[0x1E69E9E90])
        {
          v7 = WebKit::LaunchServicesDatabaseManager::singleton(Class);
          WebKit::XPCEndpointClient::setEndpoint(v7, v8);
        }
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

BOOL WebKit::XPCServiceInitializerDelegate::getClientSDKAlignedBehaviors(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  *__n = 0;
  data = xpc_dictionary_get_data(v3, "client-sdk-aligned-behaviors", __n);
  v5 = *__n;
  if (!*__n)
  {
    return 0;
  }

  if (*__n < 0xDuLL)
  {
    memcpy(a2, data, *__n);
    return 1;
  }

  v7 = qword_1ED6416A0;
  result = os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *__n = 134218240;
    *&__n[4] = v5;
    v9 = 2048;
    v10 = 12;
    _os_log_fault_impl(&dword_19D52D000, v7, OS_LOG_TYPE_FAULT, "XPCServiceInitializerDelegate::getClientSDKAlignedBehaviors: Receives too many bytes (got %lu but expected %lu bytes)", __n, 0x16u);
    return 0;
  }

  return result;
}

uint64_t WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::String&>(uint64_t a1, uint64_t *a2, uint64_t *a3, atomic_uint **a4)
{
  v26 = a4;
  WTF::checkHashTableKey<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(*a3);
  v8 = *a2;
  if (*a2 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, 0), (v8 = *a2) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*a3 + 16);
  if (v10 < 0x100)
  {
    v11 = WTF::StringImpl::hashSlowCase(*a3);
  }

  else
  {
    v11 = v10 >> 8;
  }

  v12 = 0;
  for (i = 1; ; ++i)
  {
    v14 = v11 & v9;
    v15 = (v8 + 16 * (v11 & v9));
    v16 = *v15;
    if (!*v15)
    {
      if (v12)
      {
        *v12 = 0;
        v12[1] = 0;
        --*(*a2 - 16);
        v15 = v12;
      }

      result = WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String,WTF::String&>(WTF::String &&,WTF::String&)::{lambda(void)#1}>(v15, a3, &v26);
      v18 = *a2;
      if (*a2)
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
        if (v21 > 2 * v20)
        {
          goto LABEL_18;
        }
      }

      else if (3 * v21 > 4 * v20)
      {
LABEL_18:
        v22 = v18 + 16 * v21;
        v23 = 1;
        goto LABEL_19;
      }

      result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, v15);
      v15 = result;
      v18 = *a2;
      if (*a2)
      {
        v21 = *(v18 - 4);
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_18;
    }

    if (v16 == -1)
    {
      v12 = (v8 + 16 * v14);
      goto LABEL_11;
    }

    result = WTF::equal(v16, *a3, v7);
    if (result)
    {
      break;
    }

LABEL_11:
    v11 = i + v14;
  }

  v24 = *a2;
  if (*a2)
  {
    v25 = *(v24 - 4);
  }

  else
  {
    v25 = 0;
  }

  v23 = 0;
  v22 = v24 + 16 * v25;
LABEL_19:
  *a1 = v15;
  *(a1 + 8) = v22;
  *(a1 + 16) = v23;
  return result;
}

uint64_t JSC::Config::configureForTesting(JSC::Config *this)
{
  v1 = WTF::setPermissionsOfConfigPage(this);
  v2 = WTF::Config::disableFreezingForTesting(v1);

  return MEMORY[0x1EEDCA1D0](v2);
}

uint64_t WebKit::disableJSC(WTF *a1)
{
  v2 = MEMORY[0x1E696EBF0];
  *(MEMORY[0x1E696EBF0] + 482) = 257;
  *(v2 + 146) = 1;
  v3 = WTF::initializeMainThread(a1);
  v4 = JSC::Options::initialize(v3);
  v5 = JSC::ExecutableAllocator::disableJIT(v4);
  *(v2 + 1933) = 0;
  JSC::Options::notifyOptionsChanged(v5);
  v6 = WTF::CompletionHandler<void ()(void)>::operator()(a1);

  return MEMORY[0x1EEDCB538](v6);
}

void *WTF::Detail::CallableWrapper<WebKit::replySender(WebKit::PCM::MessageType,WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10F2118;
  v2 = a1[1];
  if (v2)
  {
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::replySender(WebKit::PCM::MessageType,WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10F2118;
  v3 = *(this + 1);
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::replySender(WebKit::PCM::MessageType,WTF::OSObjectPtr<NSObject  {objcproto13OS_xpc_object}*> &&)::$_0,void,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&>::call(uint64_t a1, uint64_t a2)
{
  message = xpc_dictionary_create_reply(*(a1 + 8));
  WebKit::PCM::addVersionAndEncodedMessageToDictionary(a2, message);
  remote_connection = xpc_dictionary_get_remote_connection(*(a1 + 8));
  xpc_connection_send_message(remote_connection, message);
  if (message)
  {
  }
}

void sub_19DA0A748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void ___ZN6WebKitL32registerScheduledActivityHandlerEv_block_invoke(int a1, xpc_activity_t activity)
{
  if (xpc_activity_get_state(activity))
  {
    v3 = MEMORY[0x1E69E96A0];

    dispatch_async(v3, &__block_literal_global_66);
  }

  else
  {
    NSLog(&cfstr_ActivityChecki.isa);
    xdict = xpc_activity_copy_criteria(activity);
    xpc_dictionary_set_uint64(xdict, *MEMORY[0x1E69E9CB0], 0x15180uLL);
    xpc_dictionary_set_uint64(xdict, *MEMORY[0x1E69E9C98], 0xE10uLL);
    xpc_dictionary_set_string(xdict, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
    xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9C40], 1);
    xpc_dictionary_set_uint64(xdict, *MEMORY[0x1E69E9D80], 0x15180uLL);
    xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9DB8], 1);
    xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9D88], 1);
    xpc_activity_set_criteria(activity, xdict);
    if (xdict)
    {
    }
  }
}

void sub_19DA0A8CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN6WebKitL32registerScheduledActivityHandlerEv_block_invoke_2()
{
  NSLog(&cfstr_XpcActivityHap.isa);
  v0 = WebKit::PCM::managerPointer(void)::manager;

  return WebKit::PrivateClickMeasurementManager::firePendingAttributionRequests(v0);
}

_DWORD *WTF::HashTable<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>>,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashMap<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::FastMalloc>::expand()
{
  if (WebKit::PCM::DaemonConnectionSet::singleton(void)::set && (v0 = *(WebKit::PCM::DaemonConnectionSet::singleton(void)::set - 4)) != 0)
  {
    return WTF::HashTable<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>>,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashMap<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::FastMalloc>::rehash(v0 << (6 * *(WebKit::PCM::DaemonConnectionSet::singleton(void)::set - 12) >= (2 * v0)));
  }

  else
  {
    return WTF::HashTable<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>>,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashMap<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::FastMalloc>::rehash(8u);
  }
}

_DWORD *WTF::HashTable<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>>,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashMap<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::FastMalloc>::rehash(unsigned int a1)
{
  v2 = WebKit::PCM::DaemonConnectionSet::singleton(void)::set;
  if (WebKit::PCM::DaemonConnectionSet::singleton(void)::set)
  {
    v3 = *(WebKit::PCM::DaemonConnectionSet::singleton(void)::set - 4);
    v4 = *(WebKit::PCM::DaemonConnectionSet::singleton(void)::set - 12);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  result = WTF::fastMalloc((16 * a1 + 16));
  if (a1)
  {
    v7 = a1;
    v8 = result + 6;
    do
    {
      *(v8 - 1) = 0;
      *v8 = 0;
      v8 += 16;
      --v7;
    }

    while (v7);
  }

  WebKit::PCM::DaemonConnectionSet::singleton(void)::set = (result + 4);
  result[2] = a1 - 1;
  result[3] = a1;
  *result = 0;
  result[1] = v4;
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v10 = v2 + 16 * i;
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          if (WebKit::PCM::DaemonConnectionSet::singleton(void)::set)
          {
            v12 = *(WebKit::PCM::DaemonConnectionSet::singleton(void)::set - 8);
          }

          else
          {
            v12 = 0;
          }

          v13 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
          v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
          v16 = v12 & ((v15 >> 31) ^ v15);
          v17 = 1;
          do
          {
            v18 = v16;
            v19 = *(WebKit::PCM::DaemonConnectionSet::singleton(void)::set + 16 * v16);
            v16 = (v16 + v17++) & v12;
          }

          while (v19);
          v20 = WebKit::PCM::DaemonConnectionSet::singleton(void)::set + 16 * v18;
          *v10 = 0;
          *v20 = v11;
          *(v20 + 8) = *(v10 + 8);
          v21 = *v10;
          *v10 = 0;
          if (v21)
          {
          }
        }

        else
        {
          *v10 = 0;
        }
      }
    }
  }

  else if (!v2)
  {
    return result;
  }

  return WTF::fastFree((v2 - 16), v6);
}

uint64_t WTF::HashTable<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>>,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashMap<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>,WebKit::PCM::DaemonConnectionSet::DebugModeEnabled,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>,WTF::HashTraits<WebKit::PCM::DaemonConnectionSet::DebugModeEnabled>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RetainPtr<NSObject  {objcproto13OS_xpc_object}*>>>,(WTF::ShouldValidateKey)1,NSObject  {objcproto13OS_xpc_object} const*>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DA0ABE4);
  }

  v4 = *(v2 - 8);
  v5 = (~(v3 << 32) + v3) ^ ((~(v3 << 32) + v3) >> 22);
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

unint64_t WTF::parseInteger<unsigned long long,char16_t>(unsigned __int16 *a1, unint64_t a2, unsigned int a3, char a4, int a5)
{
  if (a1)
  {
    if (!a5)
    {
      goto LABEL_12;
    }

    v5 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v6 = a1[v5];
      if ((v6 - 9) >= 5 && v6 != 32)
      {
        break;
      }

      if (a2 == ++v5)
      {
        goto LABEL_10;
      }
    }

    if (a2 >= v5)
    {
      goto LABEL_11;
    }

    while (1)
    {
      __break(1u);
LABEL_10:
      v5 = a2;
LABEL_11:
      a2 -= v5;
      a1 += v5;
LABEL_12:
      if (!a2)
      {
LABEL_22:
        v11 = 0;
        goto LABEL_63;
      }

      v7 = *a1;
      if (v7 == 43)
      {
        if (!--a2)
        {
          goto LABEL_22;
        }

        v8 = a1[1];
        ++a1;
        v7 = v8;
      }

      if ((v7 - 48) > 9)
      {
        if ((v7 | 0x20u) < 0x61)
        {
          goto LABEL_62;
        }

        v12 = a3 >= 0x24 ? 36 : a3;
        v10 = v12 + 87;
        if ((v7 | 0x20u) >= v12 + 87)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v7 - 48 >= a3)
        {
          goto LABEL_62;
        }

        if (a3 >= 0x24)
        {
          v9 = 36;
        }

        else
        {
          v9 = a3;
        }

        v10 = v9 + 87;
      }

      v11 = 0;
      v13 = 0;
      v14 = a2 - 1;
      v15 = a1 + 1;
      v16 = &a1[a2];
      while (1)
      {
        v17 = (v7 - 48);
        v18 = v7 - 48;
        v19 = (v7 | 0x20u) - 87;
        if (v17 < 0xA)
        {
          v19 = v18;
        }

        v20 = !is_mul_ok(v11, a3);
        if (is_mul_ok(v11, a3))
        {
          v11 *= a3;
        }

        v21 = __CFADD__(v11, v19);
        v22 = v11 + v19;
        v23 = v21;
        if (!v21)
        {
          v11 = v22;
        }

        if ((v23 | v20))
        {
          v13 = 1;
        }

        if (!v14)
        {
          break;
        }

        ++a1;
        v7 = *v15;
        if ((v7 - 48) > 9)
        {
          if ((v7 | 0x20u) < 0x61 || (v7 | 0x20u) >= v10)
          {
            v16 = v15;
            break;
          }
        }

        else if (v7 - 48 >= a3)
        {
          v16 = a1;
          break;
        }

        --v14;
        ++v15;
      }

      if (v13)
      {
        goto LABEL_62;
      }

      if (a4)
      {
        goto LABEL_50;
      }

      if (!a5)
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_50;
      }

      v25 = 0;
      while (1)
      {
        v26 = v16[v25];
        if ((v26 - 9) >= 5 && v26 != 32)
        {
          break;
        }

        if (v14 == ++v25)
        {
          goto LABEL_50;
        }
      }

      if (v14 >= v25)
      {
        if (v14 != v25)
        {
          goto LABEL_62;
        }

LABEL_50:
        v24 = v11 & 0xFFFFFFFFFFFFFF00;
        v11 = v11;
        return v24 | v11;
      }
    }

    if (v14)
    {
      goto LABEL_62;
    }

    goto LABEL_50;
  }

LABEL_62:
  v11 = 0;
LABEL_63:
  v24 = 0;
  return v24 | v11;
}

uint64_t WTF::checkHashTableKey<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DA0AE24);
  }

  return result;
}

WTF::StringImpl *WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String,WTF::String&>(WTF::String &&,WTF::String&)::{lambda(void)#1}>(WTF::StringImpl **a1, WTF::StringImpl *a2, atomic_uint ***a3)
{
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = **a3;
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  result = a1[1];
  a1[1] = v7;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(result, a2);
  }

  return result;
}

uint64_t WebKit::RemoteLegacyCDMSessionProxy::didReceiveMessage(WebKit::RemoteLegacyCDMSessionProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(this + 5);
  if (v4 && (v6 = *(v4 + 8)) != 0 && (WebKit::RemoteLegacyCDMFactoryProxy::sharedPreferencesForWebProcess(v6, v20), (v20[24] & 1) != 0) && (v20[11] & 2) != 0)
  {
    ++*(this + 8);
    v11 = *(a3 + 25);
    if (v11 == 1389)
    {
      result = WebKit::RemoteLegacyCDMSessionProxy::releaseKeys(this);
    }

    else
    {
      v16 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v11 >= 0x107F)
        {
          v17 = 4223;
        }

        else
        {
          v17 = v11;
        }

        v18 = (&IPC::Detail::messageDescriptions)[3 * v17];
        v19 = *(a3 + 7);
        *buf = 136315394;
        v22 = v18;
        v23 = 2048;
        v24 = v19;
        _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      v12 = *a3;
      v13 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = *(a3 + 3);
      if (result && v13)
      {
        result = (*(*result + 16))(result, v12);
      }
    }

    if (*(this + 8) == 1)
    {
      return (*(*this + 24))(this, v12, v13);
    }

    else
    {
      --*(this + 8);
    }
  }

  else
  {
    v7 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a3 + 25);
      if (v14 >= 0x107F)
      {
        v14 = 4223;
      }

      v15 = (&IPC::Detail::messageDescriptions)[3 * v14];
      *buf = 136315138;
      v22 = v15;
      _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteLegacyCDMSessionProxy", buf, 0xCu);
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
  }

  return result;
}

uint64_t WebKit::RemoteLegacyCDMSessionProxy::didReceiveSyncMessage(uint64_t a1, atomic_ullong *a2, IPC::Decoder *a3, uint64_t *a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 40);
  if (v5)
  {
    v7 = *(v5 + 8);
    if (v7)
    {
      WebKit::RemoteLegacyCDMFactoryProxy::sharedPreferencesForWebProcess(v7, v54);
      if ((v54[24] & 1) != 0 && (v54[11] & 2) != 0)
      {
        ++*(a1 + 32);
        v16 = *(a3 + 25);
        switch(v16)
        {
          case 0x100Eu:
            IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
            if (buf[8] & 1) != 0 || (v17 = *a3, v19 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v47 = *(a3 + 3)) != 0) && v19 && ((*(*v47 + 16))(v47, v17), (buf[8]))
            {
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
              v18 = WTF::fastMalloc(0x18);
              *v18 = &unk_1F10F21F8;
              *(v18 + 1) = v26;
              *(v18 + 2) = a2;
              v57 = v18;
              if (buf[8])
              {
                v32 = *buf;
                *buf = 0;
                v59 = v32;
                WebKit::RemoteLegacyCDMSessionProxy::cachedKeyForKeyID(a1, &v59, &v57);
                v33 = v59;
                v59 = 0;
                if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v33, v17);
                }

                v34 = v57;
                v57 = 0;
                if (v34)
                {
                  (*(*v34 + 8))(v34);
                }

                if ((buf[8] & 1) == 0)
                {
                  break;
                }

LABEL_71:
                v43 = *buf;
                *buf = 0;
                if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v43, v17);
                }

                break;
              }

              goto LABEL_88;
            }

            break;
          case 0x1010u:
            IPC::Decoder::decode<std::tuple<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>(a3, buf);
            if (buf[8] == 1)
            {
              v23 = *a4;
              *a4 = 0;
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
                  goto LABEL_35;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_35:
              v18 = WTF::fastMalloc(0x18);
              *v18 = &unk_1F10F21D0;
              *(v18 + 1) = v23;
              *(v18 + 2) = a2;
              v59 = v18;
              if (buf[8])
              {
                WebKit::RemoteLegacyCDMSessionProxy::update(a1, buf, &v59);
                v30 = v59;
                v59 = 0;
                if (v30)
                {
                  (*(*v30 + 8))(v30);
                }

                if (buf[8])
                {
                  v31 = *buf;
                  *buf = 0;
                  if (v31)
                  {
                    if (atomic_fetch_add(v31 + 2, 0xFFFFFFFF) == 1)
                    {
                      atomic_store(1u, v31 + 2);
                      (*(*v31 + 8))(v31);
                    }
                  }
                }

                break;
              }

              goto LABEL_88;
            }

            break;
          case 0x100Fu:
            IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v55);
            if ((v56 & 1) == 0)
            {
              v49 = *a3;
              v50 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v51 = *(a3 + 3);
              if (!v51 || !v50 || ((*(*v51 + 16))(v51, v49), (v56 & 1) == 0))
              {
                buf[0] = 0;
                v62 = 0;
LABEL_56:
                if ((v62 & 1) == 0)
                {
                  v17 = *a3;
                  v19 = *(a3 + 1);
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v48 = *(a3 + 3);
                  if (v48 && v19)
                  {
                    (*(*v48 + 16))(v48, v17);
                  }

                  break;
                }

                v36 = *a4;
                *a4 = 0;
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
                    goto LABEL_62;
                  }
                }

                WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_62:
                v39 = WTF::fastMalloc(0x18);
                *v39 = &unk_1F10F21A8;
                *(v39 + 1) = v36;
                *(v39 + 2) = a2;
                v59 = v39;
                WebKit::RemoteLegacyCDMSessionProxy::generateKeyRequest(a1, buf, &buf[8], &buf[16], &v59);
                v40 = v59;
                v59 = 0;
                if (v40)
                {
                  (*(*v40 + 8))(v40);
                }

                if ((v62 & 1) == 0)
                {
                  break;
                }

                v41 = *&buf[16];
                *&buf[16] = 0;
                if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v41, v17);
                }

                v42 = *&buf[8];
                *&buf[8] = 0;
                if (v42 && atomic_fetch_add(v42 + 2, 0xFFFFFFFF) == 1)
                {
                  atomic_store(1u, v42 + 2);
                  (*(*v42 + 8))(v42);
                }

                goto LABEL_71;
              }
            }

            IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a3, &v57);
            if (v58 != 1)
            {
              buf[0] = 0;
              v62 = 0;
              goto LABEL_52;
            }

            v18 = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v59);
            if ((v60 & 1) == 0)
            {
              v17 = *a3;
              v19 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v52 = *(a3 + 3);
              if (!v52 || !v19 || (v18 = (*(*v52 + 16))(v52, v17), (v60 & 1) == 0))
              {
                buf[0] = 0;
                v62 = 0;
                if (v58)
                {
                  v53 = v57;
                  v57 = 0;
                  if (v53)
                  {
                    if (atomic_fetch_add(v53 + 2, 0xFFFFFFFF) == 1)
                    {
                      atomic_store(1u, v53 + 2);
                      (*(*v53 + 8))(v53, v17, v19);
                    }
                  }
                }

                goto LABEL_52;
              }
            }

            if (v56 & 1) != 0 && (v58)
            {
              v20 = v55;
              v55 = 0;
              *buf = v20;
              *&buf[8] = v57;
              *&buf[16] = v59;
              v62 = 1;
LABEL_52:
              if (v56)
              {
                v35 = v55;
                v55 = 0;
                if (v35)
                {
                  if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v35, v17);
                  }
                }
              }

              goto LABEL_56;
            }

LABEL_88:
            __break(1u);
LABEL_89:
            if (v19)
            {
              (*(*v18 + 16))(v18, v17);
            }

LABEL_33:
            v14 = 0;
            goto LABEL_75;
          default:
            v29 = qword_1ED6416C8;
            if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              if (v16 >= 0x107F)
              {
                v44 = 4223;
              }

              else
              {
                v44 = v16;
              }

              v45 = (&IPC::Detail::messageDescriptions)[3 * v44];
              v46 = *(a3 + 7);
              *buf = 136315394;
              *&buf[4] = v45;
              *&buf[12] = 2048;
              *&buf[14] = v46;
              _os_log_error_impl(&dword_19D52D000, v29, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
            }

            v17 = *a3;
            v19 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v18 = *(a3 + 3);
            if (!v18)
            {
              goto LABEL_33;
            }

            goto LABEL_89;
        }

        v14 = 1;
LABEL_75:
        if (*(a1 + 32) == 1)
        {
          (*(*a1 + 24))(a1, v17, v19);
        }

        else
        {
          --*(a1 + 32);
        }

        return v14;
      }
    }
  }

  v10 = qword_1ED6416C8;
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
    _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteLegacyCDMSessionProxy", buf, 0xCu);
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

  return 0;
}

IPC::Decoder *WebKit::RemoteMediaEngineConfigurationFactoryProxy::didReceiveMessage(WebKit::RemoteMediaEngineConfigurationFactoryProxy *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v6 = buf;
  v88 = *MEMORY[0x1E69E9840];
  WebKit::RemoteMediaEngineConfigurationFactoryProxy::sharedPreferencesForWebProcess(this, v56);
  if (v58 == 1 && (~v57 & 0x100200000000) == 0)
  {
    WebKit::RemoteMediaEngineConfigurationFactoryProxy::ref(this);
    v7 = *(a3 + 25);
    if (v7 != 1393)
    {
      if (v7 != 1392)
      {
        v22 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v7 >= 0x107F)
          {
            v45 = 4223;
          }

          else
          {
            v45 = v7;
          }

          v46 = (&IPC::Detail::messageDescriptions)[3 * v45];
          v47 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v46;
          *&buf[12] = 2048;
          *&buf[14] = v47;
          _os_log_error_impl(&dword_19D52D000, v22, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
        }

        v23 = *a3;
        v24 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        result = *(a3 + 3);
        if (result && v24)
        {
          result = (*(*result + 16))(result, v23);
        }

        goto LABEL_97;
      }

      IPC::ArgumentCoder<WebCore::MediaDecodingConfiguration,void>::decode(a3, buf);
      if ((v87 & 1) == 0)
      {
        goto LABEL_106;
      }

LABEL_6:
      LOBYTE(v59) = 0;
      v62 = 0;
      if (v76 == 1)
      {
        v9 = *buf;
        *buf = 0;
        v59 = v9;
        v10 = *(v6 + 24);
        v60 = *(v6 + 8);
        v61 = v10;
        v62 = 1;
      }

      LOBYTE(v63[0]) = 0;
      v65 = 0;
      if (v79 == 1)
      {
        v11 = *(v6 + 48);
        v12 = *(v6 + 64);
        v77 = 0uLL;
        *v63 = v11;
        v64[0] = v12;
        *(v64 + 10) = *(v6 + 74);
        v65 = v79;
      }

      LOBYTE(v66) = 0;
      v68 = 0;
      if (v82 == 1)
      {
        v66 = v80;
        v13 = v81;
        v80 = 0;
        v81 = 0;
        v67 = v13;
        v68 = 1;
        LOBYTE(v69) = 0;
        v71 = 0;
        if ((v85 & 1) == 0)
        {
          v72 = v86;
          v73 = 1;
LABEL_33:
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v80, v8);
          goto LABEL_38;
        }
      }

      else
      {
        LOBYTE(v69) = 0;
        v71 = 0;
        if ((v85 & 1) == 0)
        {
          v72 = v86;
          v73 = 1;
LABEL_38:
          if (v79 == 1)
          {
            v31 = *(&v77 + 1);
            *(&v77 + 1) = 0;
            if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v31, v8);
            }

            v32 = v77;
            *&v77 = 0;
            if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v32, v8);
            }
          }

          if (v76 == 1)
          {
            v33 = *buf;
            *buf = 0;
            if (v33)
            {
              if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v33, v8);
              }
            }
          }

          while (1)
          {
            if ((v73 & 1) == 0)
            {
              v34 = *a3;
              v51 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              result = *(a3 + 3);
              if (!result)
              {
                break;
              }

              if (!v51)
              {
                break;
              }

              result = (*(*result + 16))(result, v34);
              if ((v73 & 1) == 0)
              {
                break;
              }
            }

            result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if ((v34 & 1) == 0)
            {
              break;
            }

            a3 = result;
            while (1)
            {
              v35 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v36 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v36, v35 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v36 == v35)
              {
                goto LABEL_56;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_56:
            v37 = WTF::fastMalloc(0x18);
            *v37 = &unk_1F10F2220;
            v37[1] = a3;
            v37[2] = a2;
            *buf = v37;
            if (v73)
            {
              WebKit::RemoteMediaEngineConfigurationFactoryProxy::createDecodingConfiguration(this, &v59, buf);
              result = *buf;
              *buf = 0;
              if (!result)
              {
                break;
              }

              goto LABEL_80;
            }

LABEL_105:
            __break(1u);
LABEL_106:
            v48 = *a3;
            v49 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v50 = *(a3 + 3);
            if (v50)
            {
              if (v49)
              {
                (*(*v50 + 16))(v50, v48);
                if (v87)
                {
                  goto LABEL_6;
                }
              }
            }

            LOBYTE(v59) = 0;
            v73 = 0;
          }

LABEL_81:
          if (v73 == 1)
          {
            if (v71 == 1)
            {
              result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69, v34);
            }

            if (v68 == 1)
            {
              result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v66, v34);
            }

            if (v65 == 1)
            {
              v44 = v63[1];
              v63[1] = 0;
              if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v44, v34);
              }

              result = v63[0];
              v63[0] = 0;
              if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v34);
              }
            }

            if (v62 == 1)
            {
              result = v59;
              v59 = 0;
              if (result)
              {
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v34);
                }
              }
            }
          }

LABEL_97:
          if (this)
          {
            return WebKit::RemoteMediaEngineConfigurationFactoryProxy::deref(this);
          }

          return result;
        }
      }

      v69 = v83;
      v27 = v84;
      v83 = 0;
      v84 = 0;
      v70 = v27;
      v6 = 1;
      v71 = 1;
      v28 = v86;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v83, v8);
      v72 = v28;
      v73 = 1;
      if ((v82 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_33;
    }

    IPC::ArgumentCoder<WebCore::MediaEncodingConfiguration,void>::decode(a3, buf);
    if ((v87 & 1) == 0)
    {
      v52 = *a3;
      v53 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v54 = *(a3 + 3);
      if (!v54 || !v53 || ((*(*v54 + 16))(v54, v52), (v87 & 1) == 0))
      {
        LOBYTE(v59) = 0;
        v73 = 0;
        goto LABEL_71;
      }
    }

    LOBYTE(v59) = 0;
    v62 = 0;
    if (v76 == 1)
    {
      v19 = *buf;
      *buf = 0;
      v59 = v19;
      v60 = *&buf[8];
      v61 = v75;
      v62 = 1;
    }

    LOBYTE(v63[0]) = 0;
    v65 = 0;
    if (v79 == 1)
    {
      v20 = v77;
      v77 = 0uLL;
      *v63 = v20;
      v64[0] = v78[0];
      *(v64 + 10) = *(v78 + 10);
      v65 = v79;
    }

    LOBYTE(v66) = 0;
    v68 = 0;
    if (v82 == 1)
    {
      v66 = v80;
      v21 = v81;
      v80 = 0;
      v81 = 0;
      v67 = v21;
      v68 = 1;
      LOBYTE(v69) = 0;
      v71 = 0;
      if ((v85 & 1) == 0)
      {
        LOBYTE(v72) = v86;
        v73 = 1;
        goto LABEL_36;
      }
    }

    else
    {
      LOBYTE(v69) = 0;
      v71 = 0;
      if ((v85 & 1) == 0)
      {
        LOBYTE(v72) = v86;
        v73 = 1;
        goto LABEL_60;
      }
    }

    v69 = v83;
    v29 = v84;
    v83 = 0;
    v84 = 0;
    v70 = v29;
    v6 = 1;
    v71 = 1;
    v30 = v86;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v83, v18);
    LOBYTE(v72) = v30;
    v73 = 1;
    if ((v82 & 1) == 0)
    {
LABEL_60:
      if (v79 == 1)
      {
        v38 = *(&v77 + 1);
        *(&v77 + 1) = 0;
        if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v38, v18);
        }

        v39 = v77;
        *&v77 = 0;
        if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v39, v18);
        }
      }

      if (v76 == 1)
      {
        v40 = *buf;
        *buf = 0;
        if (v40)
        {
          if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v40, v18);
          }
        }
      }

LABEL_71:
      if (v73 & 1) != 0 || (v34 = *a3, v55 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v55 && (result = (*(*result + 16))(result, v34), (v73))
      {
        result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v34)
        {
          a3 = result;
          while (1)
          {
            v41 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v42 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v42, v41 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v42 == v41)
            {
              goto LABEL_78;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_78:
          v43 = WTF::fastMalloc(0x18);
          *v43 = &unk_1F10F2248;
          v43[1] = a3;
          v43[2] = a2;
          *buf = v43;
          if ((v73 & 1) == 0)
          {
            goto LABEL_105;
          }

          WebKit::RemoteMediaEngineConfigurationFactoryProxy::createEncodingConfiguration(this, &v59, buf);
          result = *buf;
          *buf = 0;
          if (result)
          {
LABEL_80:
            result = (*(*result + 8))(result);
          }
        }
      }

      goto LABEL_81;
    }

LABEL_36:
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v80, v18);
    goto LABEL_60;
  }

  v14 = qword_1ED6416C8;
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
    _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteMediaEngineConfigurationFactoryProxy", buf, 0xCu);
  }

  v15 = *a3;
  v16 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = *(a3 + 3);
  if (result && v16)
  {
    return (*(*result + 16))(result, v15);
  }

  return result;
}

void WebKit::RemoteMediaPlayerManagerProxy::didReceiveMessage(WebKit::RemoteMediaPlayerManagerProxy *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  WebKit::RemoteCDMFactoryProxy::sharedPreferencesForWebProcess(this, v33);
  if (v33[24] == 1 && (v33[12] & 2) != 0)
  {
    ++*(this + 4);
    v9 = *(a3 + 25);
    if (v9 == 1395)
    {
      v20 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v21)
      {
        WebKit::RemoteMediaPlayerManagerProxy::deleteMediaPlayer(this, v20);
LABEL_21:
        if (*(this + 4) == 1)
        {
          (*(*this + 24))(this, v18, v19);
        }

        else
        {
          --*(this + 4);
        }

        return;
      }
    }

    else
    {
      if (v9 == 1394)
      {
        v10 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v11 & 1) != 0 && (v12 = v10, v13 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3), (v14) && (v15 = v13, v16 = IPC::Decoder::decode<WebCore::MediaPlayerMediaEngineIdentifier>(a3), v16 > 0xFFu) && ((v17 = v16, IPC::ArgumentCoder<WebKit::RemoteMediaPlayerProxyConfiguration,void>::decode(a3, v37), (v38) || (v29 = *a3, v30 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v31 = *(a3 + 3)) != 0) && v30 && ((*(*v31 + 16))(v31, v29), (v38)))
        {
          *buf = v12;
          *&buf[8] = v15;
          buf[16] = v17;
          WebKit::RemoteMediaPlayerProxyConfiguration::RemoteMediaPlayerProxyConfiguration(v35, v37);
          v36 = 1;
          if ((v38 & 1) == 0)
          {
            goto LABEL_15;
          }

          WebKit::RemoteMediaPlayerProxyConfiguration::~RemoteMediaPlayerProxyConfiguration(v37);
          if (v36)
          {
            goto LABEL_15;
          }
        }

        else
        {
          buf[0] = 0;
          v36 = 0;
        }

        v18 = *a3;
        v19 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v32 = *(a3 + 3);
        if (!v32)
        {
          goto LABEL_21;
        }

        if (!v19)
        {
          goto LABEL_21;
        }

        (*(*v32 + 16))(v32, v18);
        if ((v36 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_15:
        WebKit::RemoteMediaPlayerManagerProxy::createMediaPlayer(this, *buf, *&buf[8], buf[16], v35);
        if (v36)
        {
          WebKit::RemoteMediaPlayerProxyConfiguration::~RemoteMediaPlayerProxyConfiguration(v35);
        }

        goto LABEL_21;
      }

      v22 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v9 >= 0x107F)
        {
          v26 = 4223;
        }

        else
        {
          v26 = v9;
        }

        v27 = (&IPC::Detail::messageDescriptions)[3 * v26];
        v28 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v27;
        *&buf[12] = 2048;
        *&buf[14] = v28;
        _os_log_error_impl(&dword_19D52D000, v22, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }
    }

    v18 = *a3;
    v19 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v23 = *(a3 + 3);
    if (v23 && v19)
    {
      (*(*v23 + 16))(v23, v18);
    }

    goto LABEL_21;
  }

  v5 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v24 = *(a3 + 25);
    if (v24 >= 0x107F)
    {
      v24 = 4223;
    }

    v25 = (&IPC::Detail::messageDescriptions)[3 * v24];
    *buf = 136315138;
    *&buf[4] = v25;
    _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteMediaPlayerManagerProxy", buf, 0xCu);
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

uint64_t WebKit::RemoteMediaPlayerManagerProxy::didReceiveSyncMessage(WebKit::RemoteCDMFactoryProxy *a1, atomic_ullong *a2, IPC::Decoder *a3, IPC::Decoder **a4)
{
  v8 = buf;
  v67 = *MEMORY[0x1E69E9840];
  WebKit::RemoteCDMFactoryProxy::sharedPreferencesForWebProcess(a1, v58);
  if (v58[24] == 1 && (v58[12] & 2) != 0)
  {
    ++*(a1 + 4);
    v14 = *(a3 + 25);
    if (v14 == 4115)
    {
      v24 = IPC::Decoder::decode<WebCore::MediaPlayerMediaEngineIdentifier>(a3);
      if (v24 > 0xFFu)
      {
        LOBYTE(v8) = v24;
        IPC::ArgumentCoder<WebCore::MediaEngineSupportParameters,void>::decode(a3, &v59);
        if ((v61 & 1) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_24;
      }

      goto LABEL_70;
    }

    if (v14 != 4114)
    {
      if (v14 != 4113)
      {
        v28 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v14 >= 0x107F)
          {
            v43 = 4223;
          }

          else
          {
            v43 = v14;
          }

          v44 = (&IPC::Detail::messageDescriptions)[3 * v43];
          v45 = *(a3 + 7);
          *buf = 136315394;
          *&buf[4] = v44;
          *&buf[12] = 2048;
          *&buf[14] = v45;
          _os_log_error_impl(&dword_19D52D000, v28, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
        }

        v29 = *a3;
        v30 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v31 = *(a3 + 3);
        if (v31 && v30)
        {
          (*(*v31 + 16))(v31, v29);
        }

        v13 = 0;
        goto LABEL_53;
      }

      v15 = IPC::Decoder::decode<WebCore::MediaPlayerMediaEngineIdentifier>(a3);
      if (v15 > 0xFFu)
      {
        v16 = v15;
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
            goto LABEL_34;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_34:
        v32 = WTF::fastMalloc(0x18);
        *v32 = &unk_1F10F2270;
        v32[1] = v17;
        v32[2] = a2;
        *buf = v32;
        WebKit::RemoteMediaPlayerManagerProxy::getSupportedTypes(a1, v16, buf);
        v33 = *buf;
        *buf = 0;
        if (v33)
        {
          (*(*v33 + 8))(v33);
        }

LABEL_52:
        v13 = 1;
LABEL_53:
        if (*(a1 + 4) == 1)
        {
          (*(*a1 + 24))(a1, v29, v30);
        }

        else
        {
          --*(a1 + 4);
        }

        return v13;
      }

LABEL_84:
      v29 = *a3;
      v30 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v57 = *(a3 + 3);
      if (v57 && v30)
      {
        (*(*v57 + 16))(v57, v29);
      }

      goto LABEL_52;
    }

    v20 = IPC::Decoder::decode<WebCore::MediaPlayerMediaEngineIdentifier>(a3);
    if (v20 < 0x100u)
    {
      goto LABEL_84;
    }

    LOBYTE(v8) = v20;
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v62);
    if ((v63 & 1) == 0)
    {
      v50 = *a3;
      v51 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v52 = *(a3 + 3);
      if (!v52)
      {
        goto LABEL_84;
      }

      if (!v51)
      {
        goto LABEL_84;
      }

      (*(*v52 + 16))(v52, v50);
      if ((v63 & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v59);
    if ((v60 & 1) == 0)
    {
      v53 = *a3;
      v54 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v55 = *(a3 + 3);
      if (!v55 || !v54 || ((*(*v55 + 16))(v55, v53), (v60 & 1) == 0))
      {
        if (v63)
        {
          v56 = v62;
          v62 = 0;
          if (v56)
          {
            if (atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v56, v53);
            }
          }
        }

        goto LABEL_84;
      }
    }

    if (v63)
    {
      buf[0] = v8;
      *&buf[8] = v62;
      *&buf[16] = v59;
      v65 = 1;
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
          goto LABEL_43;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_43:
      v36 = WTF::fastMalloc(0x18);
      *v36 = &unk_1F10F22C0;
      v36[1] = v21;
      v36[2] = a2;
      v59 = v36;
      WebKit::RemoteMediaPlayerManagerProxy::supportsKeySystem(a1, v8, &buf[8], &buf[16], &v59);
      v37 = v59;
      v59 = 0;
      if (v37)
      {
        (*(*v37 + 8))(v37);
      }

      if (v65)
      {
        v38 = *&buf[16];
        *&buf[16] = 0;
        if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v38, v29);
        }

        v39 = *&buf[8];
        *&buf[8] = 0;
        if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v39, v29);
        }
      }

      goto LABEL_52;
    }

    while (1)
    {
      __break(1u);
LABEL_69:
      v46 = *a3;
      v47 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v48 = *(a3 + 3);
      if (!v48)
      {
        break;
      }

      if (!v47)
      {
        break;
      }

      (*(*v48 + 16))(v48, v46);
      if ((v61 & 1) == 0)
      {
        break;
      }

LABEL_24:
      buf[0] = v8;
      WebCore::MediaEngineSupportParameters::MediaEngineSupportParameters(&buf[8], &v59);
      v66 = 1;
      if (v61)
      {
        WebCore::MediaEngineSupportParameters::~MediaEngineSupportParameters(&v59, v25);
        if ((v66 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

LABEL_26:
      a3 = *a4;
      *a4 = 0;
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
          goto LABEL_37;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_37:
      v34 = WTF::fastMalloc(0x18);
      *v34 = &unk_1F10F2298;
      v34[1] = a3;
      v34[2] = a2;
      v59 = v34;
      if (v66)
      {
        WebKit::RemoteMediaPlayerManagerProxy::supportsTypeAndCodecs(a1, buf[0], &buf[8], &v59);
        v35 = v59;
        v59 = 0;
        if (v35)
        {
          (*(*v35 + 8))(v35);
        }

        if (v66)
        {
          WebCore::MediaEngineSupportParameters::~MediaEngineSupportParameters(&buf[8], v29);
        }

        goto LABEL_52;
      }
    }

LABEL_70:
    buf[0] = 0;
    v66 = 0;
LABEL_71:
    v29 = *a3;
    v30 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v49 = *(a3 + 3);
    if (!v49)
    {
      goto LABEL_52;
    }

    if (!v30)
    {
      goto LABEL_52;
    }

    (*(*v49 + 16))(v49, v29);
    if ((v66 & 1) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_26;
  }

  v9 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v41 = *(a3 + 25);
    if (v41 >= 0x107F)
    {
      v41 = 4223;
    }

    v42 = (&IPC::Detail::messageDescriptions)[3 * v41];
    *buf = 136315138;
    *&buf[4] = v42;
    _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteMediaPlayerManagerProxy", buf, 0xCu);
  }

  v10 = *a3;
  v11 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v12 = *(a3 + 3);
  if (v12 && v11)
  {
    (*(*v12 + 16))(v12, v10);
  }

  return 0;
}

unsigned __int8 *WebKit::RemoteMediaPlayerProxy::didReceiveMessage(atomic_uchar *this, atomic_ullong *a2, unsigned __int8 **a3)
{
  v6 = buf;
  v233 = *MEMORY[0x1E69E9840];
  WebKit::RemoteMediaPlayerProxy::sharedPreferencesForWebProcess(this, v211);
  if (v213 == 1)
  {
    v7 = v212;
    if ((v212 & 0x200000000) != 0)
    {
      v12 = this + 16;
      ++*(this + 4);
      v13 = *(a3 + 25);
      switch(*(a3 + 25))
      {
        case 0x574:
          v14 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
          if ((v14 & 0x100) != 0)
          {
            WebKit::RemoteMediaPlayerProxy::acceleratedRenderingStateChanged(this, v14 & 1);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x575:
          WebKit::RemoteMediaPlayerProxy::applicationDidBecomeActive(this);
          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x576:
          WebKit::RemoteMediaPlayerProxy::applicationWillResignActive(this);
          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x577:
          if ((v7 & 0x1000) != 0)
          {
            *buf = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
            buf[8] = v116;
            if (v116)
            {
              WebKit::RemoteMediaPlayerProxy::attemptToDecryptWithInstance(this, buf);
            }
          }

          else
          {
            v77 = qword_1ED6416C8;
            if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              *&buf[4] = "RemoteMediaPlayerProxy_AttemptToDecryptWithInstance";
              _os_log_error_impl(&dword_19D52D000, v77, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message endpoint", buf, 0xCu);
            }

            v18 = *a3;
            v19 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v20 = a3[3];
            if (v20)
            {
              goto LABEL_433;
            }
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x578:
          IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
          if (buf[8] & 1) != 0 || (v154 = *a3, v155 = a3[1], *a3 = 0, a3[1] = 0, (v156 = a3[3]) != 0) && v155 && ((*(*v156 + 16))(v156, v154), (buf[8]))
          {
            WebKit::RemoteMediaPlayerProxy::audioOutputDeviceChanged(this, buf);
            goto LABEL_143;
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x579:
          IPC::Decoder::decode<std::tuple<unsigned long long,BOOL>>(buf, a3);
          if (buf[16] == 1)
          {
            WebKit::RemoteMediaPlayerProxy::audioTrackSetEnabled(this, *buf, buf[8]);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x57A:
          WebKit::RemoteMediaPlayerProxy::beginSimulatedHDCPError(this);
          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x57B:
          WebKit::RemoteMediaPlayerProxy::cancelLoad(this);
          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x57C:
          if ((v7 & 0x1000) != 0)
          {
            *buf = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
            buf[8] = v119;
            if (v119)
            {
              WebKit::RemoteMediaPlayerProxy::cdmInstanceAttached(this, buf);
            }
          }

          else
          {
            v82 = qword_1ED6416C8;
            if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              *&buf[4] = "RemoteMediaPlayerProxy_CdmInstanceAttached";
              _os_log_error_impl(&dword_19D52D000, v82, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message endpoint", buf, 0xCu);
            }

            v18 = *a3;
            v19 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v20 = a3[3];
            if (v20)
            {
              goto LABEL_433;
            }
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x57D:
          if ((v7 & 0x1000) != 0)
          {
            *buf = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
            buf[8] = v118;
            if (v118)
            {
              WebKit::RemoteMediaPlayerProxy::cdmInstanceDetached(this, buf);
            }
          }

          else
          {
            v81 = qword_1ED6416C8;
            if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              *&buf[4] = "RemoteMediaPlayerProxy_CdmInstanceDetached";
              _os_log_error_impl(&dword_19D52D000, v81, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message endpoint", buf, 0xCu);
            }

            v18 = *a3;
            v19 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v20 = a3[3];
            if (v20)
            {
              goto LABEL_433;
            }
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x57E:
          if ((v7 & 2) != 0)
          {
            WebKit::RemoteMediaPlayerProxy::createAudioSourceProvider(this);
          }

          else
          {
            v26 = qword_1ED6416C8;
            if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              *&buf[4] = "RemoteMediaPlayerProxy_CreateAudioSourceProvider";
              _os_log_error_impl(&dword_19D52D000, v26, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message endpoint", buf, 0xCu);
            }

            v18 = *a3;
            v19 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v20 = a3[3];
            if (v20)
            {
              goto LABEL_433;
            }
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x57F:
          v36 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if ((v37 & 1) == 0)
          {
            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          v38 = v36;
          while (1)
          {
            v39 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v40 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v40, v39 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v40 == v39)
            {
              goto LABEL_231;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_231:
          v112 = WTF::fastMalloc(0x18);
          *v112 = &unk_1F10F2338;
          v112[1] = v38;
          v112[2] = a2;
          *buf = v112;
          WebKit::RemoteMediaPlayerProxy::didLoadingProgress(this);
          v113 = *buf;
          *buf = 0;
          if (v113)
          {
            goto LABEL_239;
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x580:
          WebKit::RemoteMediaPlayerProxy::endSimulatedHDCPError(this);
          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x582:
          if ((v7 & 0x2000000) != 0)
          {
            WebKit::RemoteMediaPlayerProxy::keyAdded(this);
          }

          else
          {
            v25 = qword_1ED6416C8;
            if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              *&buf[4] = "RemoteMediaPlayerProxy_KeyAdded";
              _os_log_error_impl(&dword_19D52D000, v25, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message endpoint", buf, 0xCu);
            }

            v18 = *a3;
            v19 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v20 = a3[3];
            if (v20)
            {
              goto LABEL_433;
            }
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x583:
          IPC::ArgumentCoder<WTF::URL,void>::decode(a3, v222);
          if ((v223[16] & 1) == 0)
          {
            v180 = *a3;
            v181 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v182 = a3[3];
            if (!v182 || !v181 || ((*(*v182 + 16))(v182, v180), (v223[16] & 1) == 0))
            {
              buf[0] = 0;
              v232 = 0;
              goto LABEL_383;
            }
          }

          IPC::ArgumentCoder<std::optional<WebKit::SandboxExtensionHandle>,void>::decode<IPC::Decoder>(a3, &v214);
          if ((v216 & 1) == 0)
          {
            v68 = *a3;
            v172 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v173 = a3[3];
            if (!v173 || !v172 || ((*(*v173 + 16))(v173, v68), (v216 & 1) == 0))
            {
              v71 = 0;
              buf[0] = 0;
              v232 = 0;
LABEL_261:
              if (v223[16])
              {
                v123 = *v222;
                *v222 = 0;
                if (v123)
                {
                  if (atomic_fetch_add_explicit(v123, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v123, v68);
                  }
                }
              }

              if (v71)
              {
                goto LABEL_266;
              }

LABEL_383:
              v67 = *a3;
              v183 = a3[1];
              *a3 = 0;
              a3[1] = 0;
              v184 = a3[3];
              if (!v184)
              {
                goto LABEL_274;
              }

              if (!v183)
              {
                goto LABEL_274;
              }

              (*(*v184 + 16))(v184, v67);
              if ((v232 & 1) == 0)
              {
                goto LABEL_274;
              }

LABEL_266:
              v124 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if (v67)
              {
                a3 = v124;
                while (1)
                {
                  v125 = *a2;
                  if ((*a2 & 1) == 0)
                  {
                    break;
                  }

                  v126 = *a2;
                  atomic_compare_exchange_strong_explicit(a2, &v126, v125 + 2, memory_order_relaxed, memory_order_relaxed);
                  if (v126 == v125)
                  {
                    goto LABEL_272;
                  }
                }

                WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_272:
                v127 = WTF::fastMalloc(0x18);
                *v127 = &unk_1F10F22E8;
                v127[1] = a3;
                v127[2] = a2;
                *v222 = v127;
                if (v232)
                {
                  WebKit::RemoteMediaPlayerProxy::load(this, buf, &v226[16]);
                }

                goto LABEL_342;
              }

LABEL_274:
              if (v232 == 1)
              {
                v128 = v228;
                v228 = 0;
                if (v128 && atomic_fetch_add_explicit(v128, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v128, v67);
                }

                if (v227 == 1)
                {
                  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v226[16]);
                }

                goto LABEL_144;
              }

              return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
            }
          }

          IPC::Decoder::decode<WebCore::MediaPlayerLoadOptions>(&v217, a3);
          v69 = v221;
          if (v221 == 1)
          {
            if ((v223[16] & 1) == 0 || (v216 & 1) == 0)
            {
              goto LABEL_342;
            }

            v70 = *v222;
            *v222 = 0;
            *buf = v70;
            *&buf[8] = *&v222[8];
            *v226 = *v223;
            *&v222[8] &= ~1u;
            v226[16] = 0;
            v227 = 0;
            if (v215 == 1)
            {
              v157 = v214;
              v214 = 0;
              *&v226[16] = v157;
              v227 = 1;
            }

            v228 = v217;
            LOBYTE(v229) = v218;
            v230 = v219;
            v231 = v220;
            v71 = 1;
            v232 = 1;
            if (!v215)
            {
              goto LABEL_261;
            }
          }

          else
          {
            buf[0] = 0;
            v232 = 0;
            if ((v216 & 1) == 0 || (v215 & 1) == 0)
            {
              v71 = 0;
              goto LABEL_261;
            }
          }

          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v214);
          v71 = v69;
          goto LABEL_261;
        case 0x584:
          if ((v7 & 0x440000000000) == 0)
          {
            v131 = qword_1ED6416C8;
            if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              *&buf[4] = "RemoteMediaPlayerProxy_LoadMediaSource";
              _os_log_error_impl(&dword_19D52D000, v131, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message endpoint", buf, 0xCu);
            }

            v18 = *a3;
            v19 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v20 = a3[3];
            if (!v20)
            {
              return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
            }

            goto LABEL_433;
          }

          IPC::ArgumentCoder<WTF::URL,void>::decode(a3, v222);
          if ((v223[16] & 1) == 0)
          {
            v185 = *a3;
            v186 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v187 = a3[3];
            if (!v187)
            {
              goto LABEL_326;
            }

            if (!v186)
            {
              goto LABEL_326;
            }

            (*(*v187 + 16))(v187, v185);
            if ((v223[16] & 1) == 0)
            {
              goto LABEL_326;
            }
          }

          IPC::Decoder::decode<WebCore::MediaPlayerLoadOptions>(&v217, a3);
          if (v221 == 1)
          {
            v73 = IPC::ArgumentCoder<WTF::ObjectIdentifierGeneric<WebCore::BackgroundFetchRecordIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,void>::decode(a3);
            if (v72)
            {
              if ((v223[16] & 1) == 0 || (v221 & 1) == 0)
              {
                goto LABEL_342;
              }

              v13 = v73;
              v74 = *v222;
              *v222 = 0;
              *&buf[8] = *&v222[8];
              *v226 = *v223;
              *&v222[8] &= ~1u;
              v6 = v217;
              v217 = 0;
              *buf = v74;
              *&v226[16] = v6;
              v227 = v218;
              LOWORD(v228) = v219;
              BYTE2(v228) = v220;
              v229 = v73;
              v75 = 1;
              LOBYTE(v230) = 1;
            }

            else
            {
              v72 = *a3;
              v177 = a3[1];
              *a3 = 0;
              a3[1] = 0;
              v178 = a3[3];
              if (v178 && v177)
              {
                (*(*v178 + 16))(v178, v72);
              }

              buf[0] = 0;
              LOBYTE(v230) = 0;
              if (v221)
              {
                v179 = v217;
                v217 = 0;
                if (v179)
                {
                  if (atomic_fetch_add_explicit(v179, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v179, v72);
                  }
                }
              }

              v75 = 0;
            }
          }

          else
          {
            v75 = 0;
            buf[0] = 0;
            LOBYTE(v230) = 0;
          }

          if (v223[16])
          {
            v134 = *v222;
            *v222 = 0;
            if (v134)
            {
              if (atomic_fetch_add_explicit(v134, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v134, v72);
              }
            }
          }

          if ((v75 & 1) == 0)
          {
            goto LABEL_326;
          }

          v135 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if ((v67 & 1) == 0)
          {
            goto LABEL_316;
          }

          v136 = v135;
          while (1)
          {
            v137 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v138 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v138, v137 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v138 == v137)
            {
              goto LABEL_312;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_312:
          v139 = WTF::fastMalloc(0x18);
          *v139 = &unk_1F10F2310;
          v139[1] = v136;
          v139[2] = a2;
          *v222 = v139;
          WebKit::RemoteMediaPlayerProxy::loadMediaSource(this, buf, &v226[16], v13, v222);
          v140 = *v222;
          *v222 = 0;
          if (v140)
          {
            (*(*v140 + 8))(v140);
          }

          if ((v230 & 1) == 0)
          {
            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          v6 = *&v226[16];
LABEL_316:
          *&v226[16] = 0;
          if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, v67);
          }

LABEL_144:
          v79 = *buf;
          *buf = 0;
          if (!v79)
          {
            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

LABEL_145:
          if (atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v79, v67);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x585:
          WebKit::RemoteMediaPlayerProxy::notifyActiveSourceBuffersChanged(this);
          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x586:
          WebKit::RemoteMediaPlayerProxy::notifyTrackModeChanged(this);
          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x587:
          WebKit::RemoteMediaPlayerProxy::pause(this);
          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x588:
          v31 = IPC::Decoder::decode<std::tuple<WTF::MonotonicTime>>(a3);
          if (v32)
          {
            WebKit::RemoteMediaPlayerProxy::pauseAtHostTime(this, *&v31);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x589:
          IPC::ArgumentCoder<std::tuple<WTF::MediaTime>,void>::decode<IPC::Decoder>(a3, buf);
          if ((buf[16] & 1) == 0)
          {
            v163 = *a3;
            v164 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v165 = a3[3];
            if (!v165)
            {
              return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
            }

            if (!v164)
            {
              return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
            }

            (*(*v165 + 16))(v165, v163);
            if ((buf[16] & 1) == 0)
            {
              return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
            }
          }

          v86 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if ((v87 & 1) == 0)
          {
            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          a3 = v86;
          while (1)
          {
            v88 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v89 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v89, v88 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v89 == v88)
            {
              goto LABEL_237;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_237:
          v115 = WTF::fastMalloc(0x18);
          *v115 = &unk_1F10F2360;
          v115[1] = a3;
          v115[2] = a2;
          *v222 = v115;
          if (buf[16])
          {
            WebKit::RemoteMediaPlayerProxy::performTaskAtTime(this, buf, v222);
            v113 = *v222;
            *v222 = 0;
            if (!v113)
            {
              return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
            }

            goto LABEL_239;
          }

LABEL_342:
          __break(1u);
LABEL_343:
          v18 = *a3;
          v19 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v20 = a3[3];
          if (!v20)
          {
            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          goto LABEL_433;
        case 0x58A:
          WebKit::RemoteMediaPlayerProxy::play(this);
          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x58B:
          v29 = IPC::Decoder::decode<std::tuple<WTF::MonotonicTime>>(a3);
          if (v30)
          {
            WebKit::RemoteMediaPlayerProxy::playAtHostTime(this, *&v29);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x58C:
          IPC::ArgumentCoder<WebCore::LayoutRect,void>::decode(a3, buf);
          if (buf[16])
          {
            *v222 = *buf;
            v222[16] = 1;
            WebKit::RemoteMediaPlayerProxy::playerContentBoxRectChanged(this, v222);
            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          v144 = *a3;
          v158 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v159 = a3[3];
          if (v159 && v158)
          {
            goto LABEL_449;
          }

          *a3 = 0;
          a3[1] = 0;
          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x58D:
          v41 = a3[1];
          v42 = a3[2];
          if (v41 <= v42 - *a3)
          {
            goto LABEL_411;
          }

          a3[2] = v42 + 1;
          if (!v42)
          {
            goto LABEL_413;
          }

          v43 = *v42;
          if (v43 >= 2)
          {
            goto LABEL_457;
          }

          v44 = IPC::Decoder::decode<WebCore::MediaPlayerPreload>(a3);
          if (v44 < 0x100u)
          {
            goto LABEL_326;
          }

          v41 = a3[1];
          v45 = a3[2];
          if (v41 <= v45 - *a3)
          {
            goto LABEL_411;
          }

          a3[2] = v45 + 1;
          if (!v45)
          {
            goto LABEL_413;
          }

          v46 = *v45;
          if (v46 >= 2)
          {
            goto LABEL_457;
          }

          v47 = v44;
          v48 = IPC::Decoder::decode<WebCore::MediaPlayerPreload>(a3);
          if (v48 < 0x100u)
          {
            goto LABEL_326;
          }

          v41 = a3[1];
          v49 = a3[2];
          v50 = *a3;
          if (v41 <= v49 - *a3)
          {
            goto LABEL_411;
          }

          v51 = v49 + 1;
          a3[2] = v49 + 1;
          if (!v49)
          {
            goto LABEL_413;
          }

          v52 = *v49;
          if (v52 >= 2)
          {
            goto LABEL_457;
          }

          if (v41 <= v51 - v50)
          {
            v202 = 0;
            v203 = 0;
            *a3 = 0;
            a3[1] = 0;
            v204 = a3[3];
            if (v204)
            {
              (*(*v204 + 16))(v204);
              v203 = *a3;
              v202 = a3[1];
            }
          }

          else
          {
            a3[2] = v49 + 2;
            if (v49 != -1)
            {
              v210 = v52;
              v53 = *v51;
              if (v53 >= 2)
              {
                goto LABEL_457;
              }

              v54 = v48;
              v209 = IPC::Decoder::decode<WebCore::IntSize>(a3);
              if ((v55 & 1) == 0)
              {
                goto LABEL_326;
              }

              v41 = a3[1];
              v56 = ((a3[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v57 = *a3;
              v58 = (v56 - *a3);
              v59 = v41 >= v58;
              v60 = v41 - v58;
              if (v59 && v60 > 3)
              {
                v61 = (v56 + 1);
                a3[2] = (v56 + 1);
                if (!v56)
                {
                  goto LABEL_457;
                }

                if (v41 <= v61 - v57)
                {
LABEL_411:
                  *a3 = 0;
                  a3[1] = 0;
                  v194 = a3[3];
                  if (v194)
                  {
                    if (v41)
                    {
                      (*(*v194 + 16))(v194);
                      v41 = a3[1];
                    }
                  }

                  else
                  {
                    v41 = 0;
                  }
                }

                else
                {
                  v62 = *v56;
                  a3[2] = v56 + 5;
                  if (v56 != -4)
                  {
                    v63 = *v61;
                    if (v63 >= 2)
                    {
                      goto LABEL_457;
                    }

                    v64 = IPC::Decoder::decode<WebCore::DynamicRangeMode>(a3);
                    if (v64 < 0x100u)
                    {
                      goto LABEL_326;
                    }

                    v65 = v64;
                    if ((IPC::ArgumentCoder<WebCore::PlatformDynamicRangeLimit,void>::decode(a3) & 0x100000000) != 0)
                    {
                      v66 = v209;
                      WebKit::RemoteMediaPlayerProxy::prepareForPlayback(this, v43 & 1, v47, v46 & 1, v54, v210 & 1, v53 & 1, v66, v62, v63 & 1, v65);
                      return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
                    }

                    goto LABEL_456;
                  }
                }
              }

LABEL_413:
              *a3 = 0;
              a3[1] = 0;
              v195 = a3[3];
              if (!v195)
              {
LABEL_414:
                v41 = 0;
                goto LABEL_457;
              }

              if (!v41)
              {
                goto LABEL_457;
              }

              (*(*v195 + 16))(v195);
LABEL_456:
              v41 = a3[1];
LABEL_457:
              *a3 = 0;
              a3[1] = 0;
              v208 = a3[3];
              if (v208 && v41)
              {
                (*(*v208 + 16))(v208);
              }

              goto LABEL_326;
            }

            v202 = v41;
            v203 = v50;
          }

          *a3 = 0;
          a3[1] = 0;
          v205 = a3[3];
          if (!v205 || !v202)
          {
            goto LABEL_414;
          }

          (*(*v205 + 16))(v205, v203, v202);
          goto LABEL_456;
        case 0x58E:
          WebKit::RemoteMediaPlayerProxy::prepareForRendering(this);
          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x58F:
          WebKit::RemoteMediaPlayerProxy::prepareToPlay(this);
          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x590:
          v91 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if ((v92 & 1) == 0)
          {
            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          v93 = v91;
          while (1)
          {
            v94 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v95 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v95, v94 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v95 == v94)
            {
              goto LABEL_234;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_234:
          v114 = WTF::fastMalloc(0x18);
          *v114 = &unk_1F10F2388;
          v114[1] = v93;
          v114[2] = a2;
          *buf = v114;
          WebKit::RemoteMediaPlayerProxy::requestHostingContext(this, buf);
          v113 = *buf;
          *buf = 0;
          if (v113)
          {
LABEL_239:
            (*(*v113 + 8))(v113);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x591:
          IPC::ArgumentCoder<std::tuple<WebCore::SeekTarget>,void>::decode<IPC::Decoder>(a3, buf);
          if (v227 & 1) != 0 || (v160 = *a3, v161 = a3[1], *a3 = 0, a3[1] = 0, (v162 = a3[3]) != 0) && v161 && ((*(*v162 + 16))(v162, v160), (v227))
          {
            WebKit::RemoteMediaPlayerProxy::seekToTarget(this, buf);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x592:
          v33 = a3[1];
          v34 = a3[2];
          v35 = *a3;
          if (v33 <= v34 - *a3)
          {
            *a3 = 0;
            a3[1] = 0;
            v196 = a3[3];
            if (v196)
            {
              if (v33)
              {
                (*(*v196 + 16))(v196);
                v33 = a3[1];
              }
            }

            else
            {
              v33 = 0;
            }
          }

          else
          {
            a3[2] = v34 + 1;
            if (v34)
            {
              if (*v34 < 4u)
              {
                WebKit::RemoteMediaPlayerProxy::setBufferingPolicy(this);
                return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
              }

LABEL_421:
              *a3 = 0;
              a3[1] = 0;
              v198 = a3[3];
              if (!v198)
              {
                return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
              }

              if (!v33)
              {
                return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
              }

              (*(*v198 + 16))(v198, v35);
              v18 = *a3;
              v19 = a3[1];
              v20 = a3[3];
              *a3 = 0;
              a3[1] = 0;
              if (!v20)
              {
                return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
              }

LABEL_433:
              if (v19)
              {
LABEL_434:
                (*(*v20 + 16))(v20, v18);
              }

              return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
            }
          }

          *a3 = 0;
          a3[1] = 0;
          v197 = a3[3];
          if (v197)
          {
            if (v33)
            {
              (*(*v197 + 16))(v197);
              v35 = *a3;
              v33 = a3[1];
              goto LABEL_421;
            }
          }

          else
          {
            v33 = 0;
          }

          v35 = 0;
          goto LABEL_421;
        case 0x594:
          if ((v7 & 0x2000000) != 0)
          {
            IPC::ArgumentCoder<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(a3, buf);
            if (buf[16] & 1) != 0 || (v174 = *a3, v175 = a3[1], *a3 = 0, a3[1] = 0, (v176 = a3[3]) != 0) && v175 && ((*(*v176 + 16))(v176, v174), (buf[16]))
            {
              WebKit::RemoteMediaPlayerProxy::setLegacyCDMSession(this, buf);
            }

            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          v76 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *&buf[4] = "RemoteMediaPlayerProxy_SetLegacyCDMSession";
            _os_log_error_impl(&dword_19D52D000, v76, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message endpoint", buf, 0xCu);
          }

          v18 = *a3;
          v19 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v20 = a3[3];
          if (!v20)
          {
            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          goto LABEL_433;
        case 0x595:
          if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
          {
            WebKit::RemoteMediaPlayerProxy::setMuted(this);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x596:
          v98 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
          if ((v98 & 0x100) != 0)
          {
            WebKit::RemoteMediaPlayerProxy::setPageIsVisible(this, v98 & 1);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x597:
          if (IPC::Decoder::decode<WebCore::MediaPlayerPreload>(a3) > 0xFFu)
          {
            WebKit::RemoteMediaPlayerProxy::setPitchCorrectionAlgorithm(this);
            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          v18 = *a3;
          v19 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v20 = a3[3];
          if (v20)
          {
            goto LABEL_433;
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x598:
          if ((IPC::ArgumentCoder<WebCore::PlatformDynamicRangeLimit,void>::decode(a3) & 0x100000000) != 0)
          {
            WebKit::RemoteMediaPlayerProxy::setPlatformDynamicRangeLimit(this);
            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          v188 = *a3;
          v189 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v190 = a3[3];
          if (!v190)
          {
            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          if (!v189)
          {
            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          (*(*v190 + 16))(v190, v188);
          v20 = a3[3];
          v18 = *a3;
          v19 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          if (!v20)
          {
            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          goto LABEL_433;
        case 0x599:
          if (IPC::Decoder::decode<WebCore::DynamicRangeMode>(a3) > 0xFFu)
          {
            WebKit::RemoteMediaPlayerProxy::setPreferredDynamicRangeMode(this);
            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          v18 = *a3;
          v19 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v20 = a3[3];
          if (v20)
          {
            goto LABEL_433;
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x59A:
          if (IPC::Decoder::decode<WebCore::MediaPlayerPreload>(a3) <= 0xFFu)
          {
            goto LABEL_343;
          }

          WebKit::RemoteMediaPlayerProxy::setPreload(this);
          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x59B:
          *buf = IPC::Decoder::decode<std::tuple<WebCore::IntSize>>(a3);
          buf[8] = v80;
          if (v80)
          {
            WebKit::RemoteMediaPlayerProxy::setPresentationSize(this, buf);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x59C:
          if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
          {
            WebKit::RemoteMediaPlayerProxy::setPreservesPitch(this);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x59D:
          if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
          {
            WebKit::RemoteMediaPlayerProxy::setPrivateBrowsingMode(this);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x59E:
          v27 = IPC::Decoder::decode<std::tuple<double>>(a3);
          if (v28)
          {
            WebKit::RemoteMediaPlayerProxy::setRate(this, *&v27);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x59F:
          IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
          if (buf[8] & 1) != 0 || (v151 = *a3, v152 = a3[1], *a3 = 0, a3[1] = 0, (v153 = a3[3]) != 0) && v152 && ((*(*v153 + 16))(v153, v151), (buf[8]))
          {
            WebKit::RemoteMediaPlayerProxy::setSceneIdentifier(this, buf);
LABEL_143:
            if (buf[8])
            {
              goto LABEL_144;
            }
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x5A0:
          v85 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
          if ((v85 & 0x100) != 0)
          {
            WebKit::RemoteMediaPlayerProxy::setShouldCheckHardwareSupport(this, v85 & 1);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x5A1:
          if ((v7 & 0x2000000) != 0)
          {
            if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
            {
              WebKit::RemoteMediaPlayerProxy::setShouldContinueAfterKeyNeeded(this);
            }

            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          v17 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *&buf[4] = "RemoteMediaPlayerProxy_SetShouldContinueAfterKeyNeeded";
            _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message endpoint", buf, 0xCu);
          }

          v18 = *a3;
          v19 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v20 = a3[3];
          if (!v20)
          {
            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          goto LABEL_433;
        case 0x5A2:
          v24 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
          if ((v24 & 0x100) != 0)
          {
            WebKit::RemoteMediaPlayerProxy::setShouldDisableHDR(this, v24 & 1);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x5A3:
          if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
          {
            WebKit::RemoteMediaPlayerProxy::setShouldDisableSleep(this);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x5A4:
          if ((v7 & 2) != 0)
          {
            v117 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
            if ((v117 & 0x100) != 0)
            {
              WebKit::RemoteMediaPlayerProxy::setShouldEnableAudioSourceProvider(this, v117 & 1);
            }

            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          v78 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *&buf[4] = "RemoteMediaPlayerProxy_SetShouldEnableAudioSourceProvider";
            _os_log_error_impl(&dword_19D52D000, v78, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message endpoint", buf, 0xCu);
          }

          v18 = *a3;
          v19 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v20 = a3[3];
          if (!v20)
          {
            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          goto LABEL_433;
        case 0x5A5:
          if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
          {
            WebKit::RemoteMediaPlayerProxy::setShouldMaintainAspectRatio(this);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x5A6:
          if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
          {
            WebKit::RemoteMediaPlayerProxy::setShouldPlayToPlaybackTarget(this);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x5A8:
          if ((v7 & 0x18) != 0)
          {
            if ((IPC::Decoder::decode<WebCore::WritingDirection>(a3) & 0x100) != 0)
            {
              WebKit::RemoteMediaPlayerProxy::setVideoFullscreenGravity(this);
              return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
            }

            v18 = *a3;
            v19 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v20 = a3[3];
            if (!v20)
            {
              return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
            }
          }

          else
          {
            v130 = qword_1ED6416C8;
            if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              *&buf[4] = "RemoteMediaPlayerProxy_SetVideoFullscreenGravity";
              _os_log_error_impl(&dword_19D52D000, v130, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message endpoint", buf, 0xCu);
            }

            v18 = *a3;
            v19 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v20 = a3[3];
            if (!v20)
            {
              return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
            }
          }

          goto LABEL_433;
        case 0x5A9:
          if ((v7 & 0x18) != 0)
          {
            v21 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
            if ((v21 & 0x100000000) != 0)
            {
              WebKit::RemoteMediaPlayerProxy::setVideoFullscreenMode(this, v21);
            }

            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          v129 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *&buf[4] = "RemoteMediaPlayerProxy_SetVideoFullscreenMode";
            _os_log_error_impl(&dword_19D52D000, v129, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message endpoint", buf, 0xCu);
          }

          v18 = *a3;
          v19 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v20 = a3[3];
          if (v20)
          {
            goto LABEL_433;
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x5AA:
          v99 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
          if (v100)
          {
            v101 = v99;
            IPC::ArgumentCoder<WTF::MachSendRightAnnotated,void>::decode(a3, v222);
            if (v222[16] & 1) != 0 || (v166 = *a3, v167 = a3[1], *a3 = 0, a3[1] = 0, (v168 = a3[3]) != 0) && v167 && ((*(*v168 + 16))(v168, v166), (v222[16]))
            {
              *buf = v101;
              WTF::MachSendRight::MachSendRight();
              *&buf[16] = *&v222[8];
              v226[0] = 1;
              if ((v222[16] & 1) == 0)
              {
                goto LABEL_209;
              }

              *&v222[8] = 0;
              WTF::MachSendRight::~MachSendRight(v222);
              if (v226[0])
              {
                goto LABEL_209;
              }

LABEL_361:
              v169 = *a3;
              v170 = a3[1];
              *a3 = 0;
              a3[1] = 0;
              v171 = a3[3];
              if (!v171)
              {
                return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
              }

              if (!v170)
              {
                return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
              }

              (*(*v171 + 16))(v171, v169);
              if ((v226[0] & 1) == 0)
              {
                return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
              }

LABEL_209:
              WebKit::RemoteMediaPlayerProxy::setVideoLayerSizeFenced(this, buf, &buf[8]);
              if (v226[0])
              {
                v103 = *&buf[16];
                *&buf[16] = 0;
                if (v103)
                {
                  WTF::fastFree(v103, v102);
                }

                WTF::MachSendRight::~MachSendRight(&buf[8]);
              }

              return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
            }
          }

          else
          {
            v191 = *a3;
            v192 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v193 = a3[3];
            if (v193 && v192)
            {
              (*(*v193 + 16))(v193, v191);
            }
          }

          buf[0] = 0;
          v226[0] = 0;
          goto LABEL_361;
        case 0x5AB:
          v96 = IPC::Decoder::decode<std::tuple<double>>(a3);
          if (v97)
          {
            WebKit::RemoteMediaPlayerProxy::setVideoPlaybackMetricsUpdateInterval(this, *&v96);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x5AC:
          v22 = IPC::Decoder::decode<std::tuple<double>>(a3);
          if (v23)
          {
            WebKit::RemoteMediaPlayerProxy::setVolume(this, *&v22);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x5AD:
          if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
          {
            WebKit::RemoteMediaPlayerProxy::setVolumeLocked(this);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x5AE:
          IPC::Decoder::decode<WebKit::MediaPlaybackTargetContextSerialized>(buf, a3);
          if (v227)
          {
            v222[8] = buf[8];
            *v222 = &unk_1F10E8450;
            *&v222[16] = *&buf[16];
            *v223 = *v226;
            *&v223[8] = *&v226[8];
            v224 = 1;
          }

          else
          {
            v222[0] = 0;
            v224 = 0;
            v120 = *a3;
            v121 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v122 = a3[3];
            if (!v122)
            {
              return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
            }

            if (!v121)
            {
              return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
            }

            (*(*v122 + 16))(v122, v120);
            if ((v224 & 1) == 0)
            {
              return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
            }
          }

          WebKit::RemoteMediaPlayerProxy::setWirelessPlaybackTarget(this, v222);
          if (v224)
          {
            v83 = *&v223[16];
            *&v223[16] = 0;
            if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v83, v67);
            }

            v84 = *&v223[8];
            *&v223[8] = 0;
            if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v84, v67);
            }

            v79 = *&v222[16];
            *&v222[16] = 0;
            if (v79)
            {
              goto LABEL_145;
            }
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x5AF:
          if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
          {
            WebKit::RemoteMediaPlayerProxy::setWirelessVideoPlaybackDisabled(this);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x5B0:
          WebKit::RemoteMediaPlayerProxy::startVideoFrameMetadataGathering(this);
          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x5B1:
          WebKit::RemoteMediaPlayerProxy::stopVideoFrameMetadataGathering(this);
          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x5B2:
          v104 = a3[1];
          v105 = ((a3[2] + 7) & 0xFFFFFFFFFFFFFFF8);
          v106 = *a3;
          v107 = (v105 - *a3);
          v59 = v104 >= v107;
          v108 = v104 - v107;
          if (!v59 || v108 <= 7)
          {
            goto LABEL_427;
          }

          v110 = (v105 + 1);
          a3[2] = (v105 + 1);
          if (!v105)
          {
            goto LABEL_429;
          }

          if (v104 <= v110 - v106)
          {
            *a3 = 0;
            a3[1] = 0;
            v199 = a3[3];
            if (v199)
            {
              if (v104)
              {
                (*(*v199 + 16))(v199);
                v104 = a3[1];
              }
            }

            else
            {
              v104 = 0;
            }
          }

          else
          {
            v111 = *v105;
            a3[2] = v105 + 9;
            if (v105 != -8)
            {
              if (*v110 < 3u)
              {
                WebKit::RemoteMediaPlayerProxy::textTrackSetMode(this, v111);
                return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
              }

LABEL_429:
              *a3 = 0;
              a3[1] = 0;
              v201 = a3[3];
              if (v201 && v104)
              {
                (*(*v201 + 16))(v201);
              }

              v18 = *a3;
              v19 = a3[1];
              *a3 = 0;
              a3[1] = 0;
              v20 = a3[3];
              if (!v20)
              {
                return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
              }

              goto LABEL_433;
            }
          }

LABEL_427:
          *a3 = 0;
          a3[1] = 0;
          v200 = a3[3];
          if (v200)
          {
            if (v104)
            {
              (*(*v200 + 16))(v200);
              v104 = a3[1];
            }
          }

          else
          {
            v104 = 0;
          }

          goto LABEL_429;
        case 0x5B3:
          WebKit::RemoteMediaPlayerProxy::tracksChanged(this);
          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x5B4:
          if ((v7 & 0x18) != 0)
          {
            WebKit::RemoteMediaPlayerProxy::updateVideoFullscreenInlineImage(this);
            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          v133 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *&buf[4] = "RemoteMediaPlayerProxy_UpdateVideoFullscreenInlineImage";
            _os_log_error_impl(&dword_19D52D000, v133, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message endpoint", buf, 0xCu);
          }

          v18 = *a3;
          v19 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v20 = a3[3];
          if (v20)
          {
            goto LABEL_433;
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x5B5:
          if ((v7 & 0x18) != 0)
          {
            v90 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
            if ((v90 & 0x100) != 0)
            {
              WebKit::RemoteMediaPlayerProxy::videoFullscreenStandbyChanged(this, v90 & 1);
            }

            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          v132 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *&buf[4] = "RemoteMediaPlayerProxy_VideoFullscreenStandbyChanged";
            _os_log_error_impl(&dword_19D52D000, v132, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message endpoint", buf, 0xCu);
          }

          v18 = *a3;
          v19 = a3[1];
          *a3 = 0;
          a3[1] = 0;
          v20 = a3[3];
          if (v20)
          {
            goto LABEL_433;
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        case 0x5B6:
          IPC::Decoder::decode<std::tuple<unsigned long long,BOOL>>(buf, a3);
          if (buf[16] == 1)
          {
            WebKit::RemoteMediaPlayerProxy::videoTrackSetSelected(this, *buf, buf[8]);
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
        default:
          if (v13 != 1447)
          {
            if (v13 == 1427)
            {
              v141 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
              if ((v141 & 0x100) != 0)
              {
                WebKit::RemoteMediaPlayerProxy::setHasMessageClientForTesting(this, v141 & 1);
              }

              return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
            }

            if (v13 == 1409)
            {
              if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
              {
                WebKit::RemoteMediaPlayerProxy::isInFullscreenOrPictureInPictureChanged(this);
              }

              return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
            }

            v146 = qword_1ED6416C8;
            if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              if (v13 >= 0x107F)
              {
                v148 = 4223;
              }

              else
              {
                v148 = v13;
              }

              v149 = (&IPC::Detail::messageDescriptions)[3 * v148];
              v150 = a3[7];
              *buf = 136315394;
              *&buf[4] = v149;
              *&buf[12] = 2048;
              *&buf[14] = v150;
              _os_log_error_impl(&dword_19D52D000, v146, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
            }

LABEL_326:
            v18 = *a3;
            v147 = a3[1];
            *a3 = 0;
            a3[1] = 0;
            v20 = a3[3];
            if (v20)
            {
LABEL_327:
              if (!v147)
              {
                return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
              }

              goto LABEL_434;
            }

            return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
          }

          v142 = a3[1];
          v143 = a3[2];
          v144 = *a3;
          if (v142 <= v143 - *a3)
          {
            *a3 = 0;
            a3[1] = 0;
            v206 = a3[3];
            if (v206)
            {
              if (v142)
              {
                (*(*v206 + 16))(v206);
                v142 = a3[1];
              }
            }

            else
            {
              v142 = 0;
            }
          }

          else
          {
            a3[2] = v143 + 1;
            if (v143)
            {
              v145 = *v143;
              if (v145 < 4)
              {
                WebKit::RemoteMediaPlayerProxy::setSoundStageSize(this, v145);
                return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
              }

              goto LABEL_447;
            }
          }

          *a3 = 0;
          a3[1] = 0;
          v207 = a3[3];
          if (v207)
          {
            if (v142)
            {
              (*(*v207 + 16))(v207);
              v144 = *a3;
              v142 = a3[1];
              goto LABEL_447;
            }
          }

          else
          {
            v142 = 0;
          }

          v144 = 0;
LABEL_447:
          *a3 = 0;
          a3[1] = 0;
          v159 = a3[3];
          if (v159 && v142)
          {
LABEL_449:
            (*(*v159 + 16))(v159, v144);
            v18 = *a3;
            v147 = a3[1];
            v20 = a3[3];
            *a3 = 0;
            a3[1] = 0;
            if (v20)
            {
              goto LABEL_327;
            }
          }

          return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v12);
      }
    }
  }

  v8 = qword_1ED6416C8;
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
    _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteMediaPlayerProxy", buf, 0xCu);
  }

  v9 = *a3;
  v10 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  result = a3[3];
  if (result)
  {
    if (v10)
    {
      return (*(*result + 16))(result, v9);
    }
  }

  return result;
}

uint64_t WebKit::RemoteMediaPlayerProxy::didReceiveSyncMessage(uint64_t a1, atomic_ullong *a2, IPC::Decoder *a3, uint64_t *a4)
{
  v68 = *MEMORY[0x1E69E9840];
  WebKit::RemoteMediaPlayerProxy::sharedPreferencesForWebProcess(a1, v60);
  if (v60[24] == 1 && (v60[12] & 2) != 0)
  {
    v13 = (a1 + 16);
    ++*(a1 + 16);
    v14 = *(a3 + 25);
    if (v14 <= 0x1016)
    {
      switch(v14)
      {
        case 0x1014u:
          v23 = *a4;
          *a4 = 0;
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
              goto LABEL_37;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_37:
          v33 = WTF::fastMalloc(0x18);
          *v33 = &unk_1F10F2400;
          v33[1] = v23;
          v33[2] = a2;
          *buf = v33;
          WebKit::RemoteMediaPlayerProxy::accessLog(a1, buf);
LABEL_51:
          v35 = *buf;
          *buf = 0;
          if (!v35)
          {
LABEL_81:
            v12 = 1;
LABEL_82:
            WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v13);
            return v12;
          }

LABEL_58:
          (*(*v35 + 8))(v35);
          goto LABEL_81;
        case 0x1015u:
          v36 = *a4;
          *a4 = 0;
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
              goto LABEL_54;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_54:
          v43 = WTF::fastMalloc(0x18);
          *v43 = &unk_1F10F2450;
          v43[1] = v36;
          v43[2] = a2;
          *buf = v43;
          WebKit::RemoteMediaPlayerProxy::colorSpace(a1, buf);
          v35 = *buf;
          *buf = 0;
          if (!v35)
          {
            goto LABEL_81;
          }

          goto LABEL_58;
        case 0x1016u:
          v15 = *a4;
          *a4 = 0;
          while (1)
          {
            v16 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v17 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v17 == v16)
            {
              goto LABEL_50;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_50:
          v42 = WTF::fastMalloc(0x18);
          *v42 = &unk_1F10F23D8;
          v42[1] = v15;
          v42[2] = a2;
          *buf = v42;
          WebKit::RemoteMediaPlayerProxy::errorLog(a1, buf);
          goto LABEL_51;
      }

LABEL_33:
      v29 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v14 >= 0x107F)
        {
          v54 = 4223;
        }

        else
        {
          v54 = v14;
        }

        v55 = (&IPC::Detail::messageDescriptions)[3 * v54];
        v56 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v55;
        *&buf[12] = 2048;
        *&buf[14] = v56;
        _os_log_error_impl(&dword_19D52D000, v29, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
      }

      v30 = *a3;
      v31 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v32 = *(a3 + 3);
      if (v32 && v31)
      {
        (*(*v32 + 16))(v32, v30);
      }

      v12 = 0;
      goto LABEL_82;
    }

    if (v14 == 4121)
    {
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
          goto LABEL_39;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_39:
      v34 = WTF::fastMalloc(0x18);
      *v34 = &unk_1F10F2478;
      v34[1] = v26;
      v34[2] = a2;
      *buf = v34;
      WebKit::RemoteMediaPlayerProxy::videoFrameForCurrentTimeIfChanged(a1, buf);
      v35 = *buf;
      *buf = 0;
      if (!v35)
      {
        goto LABEL_81;
      }

      goto LABEL_58;
    }

    if (v14 == 4120)
    {
      v39 = *a4;
      *a4 = 0;
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
          goto LABEL_57;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_57:
      v44 = WTF::fastMalloc(0x18);
      *v44 = &unk_1F10F2428;
      v44[1] = v39;
      v44[2] = a2;
      *buf = v44;
      WebKit::RemoteMediaPlayerProxy::nativeImageForCurrentTime(a1, buf);
      v35 = *buf;
      *buf = 0;
      if (!v35)
      {
        goto LABEL_81;
      }

      goto LABEL_58;
    }

    if (v14 != 4119)
    {
      goto LABEL_33;
    }

    IPC::ArgumentCoder<std::tuple<WebCore::SecurityOriginData>,void>::decode<IPC::Decoder>(a3, buf);
    if ((v64 & 1) == 0)
    {
      v57 = *a3;
      v58 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v59 = *(a3 + 3);
      if (!v59)
      {
        goto LABEL_81;
      }

      if (!v58)
      {
        goto LABEL_81;
      }

      (*(*v59 + 16))(v59, v57);
      if ((v64 & 1) == 0)
      {
        goto LABEL_81;
      }
    }

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
        goto LABEL_60;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_60:
    v45 = WTF::fastMalloc(0x18);
    *v45 = &unk_1F10F23B0;
    v45[1] = v18;
    v45[2] = a2;
    v61 = v45;
    if ((v64 & 1) == 0)
    {
      __break(1u);
    }

    LOBYTE(v65[0]) = 0;
    v67 = -1;
    if (v63)
    {
      if (v63 == 255)
      {
        goto LABEL_64;
      }

      *v65 = *buf;
    }

    else
    {
      v46 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      *v65 = v46;
      v66 = *&buf[16];
    }

    v67 = v63;
LABEL_64:
    WebKit::RemoteMediaPlayerProxy::isCrossOrigin(a1, v65, &v61);
    if (!v67)
    {
      v48 = v65[1];
      v65[1] = 0;
      if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v48, v47);
      }

      v49 = v65[0];
      v65[0] = 0;
      if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v47);
      }
    }

    v50 = v61;
    v61 = 0;
    if (v50)
    {
      (*(*v50 + 8))(v50);
    }

    if ((v64 & 1) != 0 && !v63)
    {
      v51 = *&buf[8];
      *&buf[8] = 0;
      if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v51, v47);
      }

      v52 = *buf;
      *buf = 0;
      if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v52, v47);
      }
    }

    goto LABEL_81;
  }

  v8 = qword_1ED6416C8;
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
    _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteMediaPlayerProxy", buf, 0xCu);
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

atomic_uchar **WebKit::RemoteMediaResourceManager::didReceiveMessage(WebKit::RemoteMediaResourceManager *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v186 = *MEMORY[0x1E69E9840];
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
  if (v9 <= 0x5B9)
  {
    switch(v9)
    {
      case 0x5B7u:
        IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError>>(buf, a3);
        if (v155[32] != 1)
        {
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v6, v13);
        }

        WebKit::RemoteMediaResourceManager::accessControlCheckFailed(this, *buf, &buf[8]);
        goto LABEL_57;
      case 0x5B8u:
        v72 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v73 & 1) == 0)
        {
          goto LABEL_52;
        }

        v74 = v72;
        IPC::ArgumentCoder<IPC::SharedBufferReference,void>::decode(a3, v136);
        if (v136[24])
        {
          *buf = v74;
          *&buf[8] = *v136;
          v75 = *&v136[16];
          *&buf[24] = *&v136[16];
          buf[32] = 1;
          v76 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if (v13)
          {
            v77 = v76;
            while (1)
            {
              v78 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v79 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v79, v78 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v79 == v78)
              {
                goto LABEL_93;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_93:
            v80 = WTF::fastMalloc(0x18);
            *v80 = &unk_1F10F24F0;
            v80[1] = v77;
            v80[2] = a2;
            *v136 = v80;
            WebKit::RemoteMediaResourceManager::dataReceived(this, v74, &buf[8], v136);
            v81 = *v136;
            *v136 = 0;
            if (v81)
            {
              (*(*v81 + 8))(v81);
            }

            if ((buf[32] & 1) == 0)
            {
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v6, v13);
            }

            v75 = *&buf[24];
          }

          *&buf[24] = 0;
          if (v75)
          {
            WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v75);
          }

          v82 = *&buf[16];
          *&buf[16] = 0;
          if (v82 && atomic_fetch_add(v82 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v82 + 2);
            (*(*v82 + 8))(v82);
          }

          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v6, v13);
        }

        break;
      case 0x5B9u:
        v16 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v17 & 1) == 0)
        {
          goto LABEL_52;
        }

        v18 = *(a3 + 1);
        v19 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
        v20 = *a3;
        v21 = v19 - *a3;
        v22 = v18 >= v21;
        v23 = v18 - v21;
        if (v22 && v23 > 7)
        {
          *(a3 + 2) = v19 + 1;
          if (!v19)
          {
LABEL_165:
            *a3 = 0;
            *(a3 + 1) = 0;
            v115 = *(a3 + 3);
            if (v115 && v18)
            {
              (*(*v115 + 16))(v115);
            }

            goto LABEL_52;
          }

          v24 = *v19;
          v25 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
          if (v18 >= v25 - v20 && v18 - (v25 - v20) > 7)
          {
            *(a3 + 2) = v25 + 1;
            if (v25)
            {
              WebKit::RemoteMediaResourceManager::dataSent(this, v16, v24, *v25);
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v6, v13);
            }

            goto LABEL_165;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v111 = *(a3 + 3);
        if (!v111)
        {
          v18 = 0;
          goto LABEL_165;
        }

        if (!v18)
        {
          goto LABEL_165;
        }

        (*(*v111 + 16))(v111);
        break;
      default:
        goto LABEL_51;
    }

    v18 = *(a3 + 1);
    goto LABEL_165;
  }

  if (*(a3 + 25) > 0x5BBu)
  {
    if (v9 == 1468)
    {
      v48 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v49 & 1) == 0)
      {
        goto LABEL_124;
      }

      v50 = v48;
      IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a3, &v116);
      if (v135 & 1) != 0 || (v105 = *a3, v106 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v107 = *(a3 + 3)) != 0) && v106 && ((*(*v107 + 16))(v107, v105), (v135))
      {
        IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, v136);
        if (v153 & 1) != 0 || (v102 = *a3, v103 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v104 = *(a3 + 3)) != 0) && v103 && ((*(*v104 + 16))(v104, v102), (v153))
        {
          if ((v135 & 1) == 0)
          {
LABEL_123:
            while (1)
            {
              __break(1u);
LABEL_124:
              buf[0] = 0;
              v185 = 0;
LABEL_125:
              v13 = *a3;
              v95 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v96 = *(a3 + 3);
              if (!v96)
              {
                break;
              }

              if (!v95)
              {
                break;
              }

              (*(*v96 + 16))(v96, v13);
              if ((v185 & 1) == 0)
              {
                break;
              }

LABEL_80:
              v69 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if ((v13 & 1) == 0)
              {
                break;
              }

              a3 = v69;
              while (1)
              {
                v70 = *a2;
                if ((*a2 & 1) == 0)
                {
                  break;
                }

                v71 = *a2;
                atomic_compare_exchange_strong_explicit(a2, &v71, v70 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v71 == v70)
                {
                  goto LABEL_111;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_111:
              v86 = WTF::fastMalloc(0x18);
              *v86 = &unk_1F10F24C8;
              v86[1] = a3;
              v86[2] = a2;
              *v136 = v86;
              if (v185)
              {
                WebKit::RemoteMediaResourceManager::redirectReceived(this, *buf, &buf[8], v165, v136);
                v87 = *v136;
                *v136 = 0;
                if (v87)
                {
                  (*(*v87 + 8))(v87);
                }

                break;
              }
            }

            if (v185 == 1)
            {
              v88 = v183;
              v183 = 0;
              if (v88)
              {
                CFRelease(v88);
              }

              WebCore::ResourceResponseBase::~ResourceResponseBase(v165, v13);
              WebCore::ResourceRequest::~ResourceRequest(&buf[8]);
            }

            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v6, v13);
          }

          v52 = v116;
          v116 = 0;
          *buf = v50;
          *&buf[8] = v52;
          *&buf[16] = v117;
          *&buf[32] = v118;
          LODWORD(v117) = v117 & 0xFFFFFFFE;
          v53 = v119;
          v119 = 0;
          *&buf[48] = v53;
          *v155 = v120;
          *&v155[16] = v121;
          LODWORD(v120) = v120 & 0xFFFFFFFE;
          *&v155[32] = v122;
          v54 = v123;
          v123 = 0u;
          *v156 = v54;
          v55 = v124;
          v124 = 0;
          *&v156[16] = v55;
          v56 = v125;
          v125 = 0;
          v157 = v56;
          v57 = v126;
          v126 = 0;
          v158 = v57;
          v58 = v127;
          v127 = 0;
          v159 = v58;
          v59 = v128;
          v128 = 0;
          v160 = v59;
          BYTE4(v161) = v130;
          LODWORD(v161) = v129;
          v60 = v131;
          v131 = 0u;
          v162 = v60;
          LOBYTE(v164) = v133;
          v163 = v132;
          v61 = v134;
          *&v132 = 0;
          v134 = 0;
          v62 = *v136;
          v63 = *&v136[40];
          *v136 = 0;
          *(&v164 + 1) = v61;
          *v165 = v62;
          *&v165[8] = *&v136[8];
          *&v165[24] = *&v136[24];
          *&v136[8] &= ~1u;
          *&v136[40] = 0;
          *&v165[40] = v63;
          v166 = *v137;
          v64 = *&v137[8];
          memset(&v137[8], 0, 32);
          v167 = v64;
          v168 = *&v137[24];
          v65 = v138;
          v138 = 0;
          v169 = v65;
          v66 = *(&v139 + 1);
          v170 = v139;
          v139 = 0uLL;
          v171 = v66;
          v67 = v140;
          v140 = 0;
          v172 = v67;
          LOBYTE(v173) = 0;
          v174 = 0;
          if (v142 == 1)
          {
            v91 = v141;
            v141 = 0;
            v173 = v91;
            v174 = 1;
          }

          v175 = v143;
          v176 = v144;
          v180 = v148;
          v181 = v149;
          v182[0] = v150[0];
          *(v182 + 11) = *(v150 + 11);
          v178 = v146;
          v179 = v147;
          v68 = v145;
          v145 = 0;
          v177 = v68;
          v183 = cf;
          v184 = v152;
          v185 = 1;
          if (v153)
          {
            cf = 0;
            WebCore::ResourceResponseBase::~ResourceResponseBase(v136, v51);
          }
        }

        else
        {
          buf[0] = 0;
          v185 = 0;
        }

        if (v135)
        {
          WebCore::ResourceRequest::~ResourceRequest(&v116);
        }
      }

      else
      {
        buf[0] = 0;
        v185 = 0;
      }

      if ((v185 & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_80;
    }

    if (v9 != 1469)
    {
      goto LABEL_51;
    }

    v26 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v27 & 1) == 0 || (v28 = v26, IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, v136), (v153 & 1) == 0) && ((v97 = *a3, v98 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v99 = *(a3 + 3)) == 0) || !v98 || ((*(*v99 + 16))(v99, v97), (v153 & 1) == 0)))
    {
      buf[0] = 0;
      LOBYTE(v168) = 0;
LABEL_131:
      v13 = *a3;
      v100 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v101 = *(a3 + 3);
      if (!v101 || !v100 || ((*(*v101 + 16))(v101, v13), (v168 & 1) == 0))
      {
LABEL_106:
        if (v168 == 1)
        {
          v85 = v166;
          v166 = 0;
          if (v85)
          {
            CFRelease(v85);
          }

          WebCore::ResourceResponseBase::~ResourceResponseBase(&buf[8], v13);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v6, v13);
      }

LABEL_44:
      v39 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v13)
      {
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
            goto LABEL_103;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_103:
        v83 = WTF::fastMalloc(0x18);
        *v83 = &unk_1F10F24A0;
        v83[1] = a3;
        v83[2] = a2;
        *v136 = v83;
        if ((v168 & 1) == 0)
        {
          goto LABEL_123;
        }

        WebKit::RemoteMediaResourceManager::responseReceived(this, *buf, &buf[8], BYTE8(v167), v136);
        v84 = *v136;
        *v136 = 0;
        if (v84)
        {
          (*(*v84 + 8))(v84);
        }
      }

      goto LABEL_106;
    }

    v29 = *(a3 + 1);
    v30 = *(a3 + 2);
    v31 = *a3;
    if (v29 <= &v30[-*a3])
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v112 = *(a3 + 3);
      if (v112)
      {
        if (v29)
        {
          (*(*v112 + 16))(v112);
          v29 = *(a3 + 1);
        }
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      *(a3 + 2) = v30 + 1;
      if (v30)
      {
        v32 = *v30;
        if (v32 < 2)
        {
          *&buf[16] = *&v136[8];
          *&buf[32] = *&v136[24];
          v33 = *&v137[8];
          memset(&v137[8], 0, 32);
          v34 = *&v136[40];
          *buf = v28;
          *&buf[8] = *v136;
          *v136 = 0;
          *&v136[8] &= ~1u;
          *&v136[40] = 0;
          *&buf[48] = v34;
          *v155 = *v137;
          *&v155[8] = v33;
          *&v155[24] = *&v137[24];
          *&v33 = v138;
          v138 = 0;
          *v156 = v33;
          *&v33 = *(&v139 + 1);
          *&v156[8] = v139;
          v139 = 0uLL;
          *&v156[16] = v33;
          v35 = v140;
          v140 = 0;
          v157 = v35;
          LOBYTE(v158) = 0;
          LOBYTE(v159) = 0;
          if (v142 == 1)
          {
            v90 = v141;
            v141 = 0;
            v158 = v90;
            LOBYTE(v159) = 1;
          }

          LOWORD(v160) = v143;
          BYTE2(v160) = v144;
          v36 = cf;
          v161 = v145;
          v164 = v148;
          *v165 = v149;
          *&v165[16] = v150[0];
          *&v165[27] = *(v150 + 11);
          v162 = v146;
          v163 = v147;
          v145 = 0;
          cf = 0;
          v166 = v36;
          LOBYTE(v167) = v152;
          v37 = 1;
          BYTE8(v167) = v32;
          goto LABEL_39;
        }

LABEL_160:
        *a3 = 0;
        *(a3 + 1) = 0;
        v114 = *(a3 + 3);
        if (v114 && v29)
        {
          (*(*v114 + 16))(v114, v31);
        }

        v37 = 0;
        buf[0] = 0;
LABEL_39:
        LOBYTE(v168) = v37;
        if (v153)
        {
          v38 = cf;
          cf = 0;
          if (v38)
          {
            CFRelease(v38);
          }

          WebCore::ResourceResponseBase::~ResourceResponseBase(v136, v31);
        }

        if (v37)
        {
          goto LABEL_44;
        }

        goto LABEL_131;
      }
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v113 = *(a3 + 3);
    if (v113)
    {
      if (v29)
      {
        (*(*v113 + 16))(v113);
        v31 = *a3;
        v29 = *(a3 + 1);
        goto LABEL_160;
      }
    }

    else
    {
      v29 = 0;
    }

    v31 = 0;
    goto LABEL_160;
  }

  if (v9 != 1466)
  {
    if (v9 == 1467)
    {
      v10 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v11 & 1) == 0 || (v12 = v10, IPC::ArgumentCoder<WebCore::NetworkLoadMetrics,void>::decode(a3, v136), (v142 & 1) == 0) && ((v108 = *a3, v109 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v110 = *(a3 + 3)) == 0) || !v109 || ((*(*v110 + 16))(v110, v108), (v142 & 1) == 0)))
      {
LABEL_52:
        v13 = *a3;
        v43 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v44 = *(a3 + 3);
        if (v44 && v43)
        {
          (*(*v44 + 16))(v44, v13);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v6, v13);
      }

      *&buf[40] = *&v136[32];
      *v155 = *v137;
      *&v155[16] = *&v137[16];
      *&buf[8] = *v136;
      *buf = v12;
      *&v155[32] = *&v137[32];
      *v156 = v138;
      v157 = v140;
      *&buf[24] = *&v136[16];
      *&v156[8] = v139;
      v158 = v141;
      LOBYTE(v159) = 1;
      WebKit::RemoteMediaResourceManager::loadFinished(this, v12, &buf[8]);
      if (v159)
      {
        v14 = v158;
        v158 = 0;
        if (v14)
        {
          WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v14, v13);
        }

        v15 = *v156;
        *v156 = 0;
        if (v15)
        {
          goto LABEL_67;
        }
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v6, v13);
    }

LABEL_51:
    v42 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v9 >= 0x107F)
      {
        v92 = 4223;
      }

      else
      {
        v92 = v9;
      }

      v93 = (&IPC::Detail::messageDescriptions)[3 * v92];
      v94 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v93;
      *&buf[12] = 2048;
      *&buf[14] = v94;
      _os_log_error_impl(&dword_19D52D000, v42, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    goto LABEL_52;
  }

  IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError>>(buf, a3);
  if (v155[32] != 1)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v6, v13);
  }

  WebKit::RemoteMediaResourceManager::loadFailed(this, *buf, &buf[8]);
LABEL_57:
  if (v155[32])
  {
    v45 = *&v155[16];
    *&v155[16] = 0;
    if (v45)
    {
      CFRelease(v45);
    }

    v46 = *v155;
    *v155 = 0;
    if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v46, v13);
    }

    v47 = *&buf[16];
    *&buf[16] = 0;
    if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v47, v13);
    }

    v15 = *&buf[8];
    *&buf[8] = 0;
    if (v15)
    {
LABEL_67:
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v13);
      }
    }
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v6, v13);
}

atomic_uchar **WebKit::RemoteMediaSessionHelper::didReceiveMessage(WebKit::RemoteMediaSessionHelper *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v53 = *MEMORY[0x1E69E9840];
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
  if (v8 <= 0x5D2)
  {
    if (*(a3 + 25) <= 0x5D0u)
    {
      if (v8 == 1487)
      {
        v10 = *(a3 + 1);
        v12 = *(a3 + 2);
        v9 = *a3;
        if (v10 > &v12[-*a3])
        {
          *(a3 + 2) = v12 + 1;
          if (v12)
          {
            if (*v12 < 2u)
            {
              WebCore::MediaSessionHelper::activeAudioRouteDidChange();
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::deref(v5, v9);
            }

            goto LABEL_68;
          }

          goto LABEL_65;
        }
      }

      else
      {
        if (v8 != 1488)
        {
          goto LABEL_55;
        }

        v10 = *(a3 + 1);
        v11 = *(a3 + 2);
        v9 = *a3;
        if (v10 > &v11[-*a3])
        {
          *(a3 + 2) = v11 + 1;
          if (v11)
          {
            if (*v11 < 2u)
            {
              WebCore::MediaSessionHelper::activeAudioRouteSupportsSpatialPlaybackDidChange();
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::deref(v5, v9);
            }

            goto LABEL_68;
          }

          goto LABEL_65;
        }
      }

      goto LABEL_63;
    }

    if (v8 != 1489)
    {
      if (v8 == 1490)
      {
        WebCore::MediaSessionHelper::applicationDidBecomeActive(this);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::deref(v5, v9);
      }

      goto LABEL_55;
    }

    v13 = *(a3 + 1);
    v14 = *(a3 + 2);
    v15 = *a3;
    if (v13 <= &v14[-*a3])
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v31 = *(a3 + 3);
      if (v31)
      {
        if (v13)
        {
          (*(*v31 + 16))(v31);
          v13 = *(a3 + 1);
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      *(a3 + 2) = v14 + 1;
      if (v14)
      {
        v16 = *v14;
        if (v16 < 2)
        {
          IPC::Decoder::decode<WebKit::MediaPlaybackTargetContextSerialized>(v42, a3);
          if (v46 == 1)
          {
            buf[0] = v16;
            v48[12] = v42[8];
            *&v48[4] = &unk_1F10E8450;
            v49 = v43;
            v50 = v44;
            *v51 = v45;
            v52 = 1;
LABEL_35:
            WebKit::RemoteMediaSessionHelper::activeVideoRouteDidChange(this, v16 & 1, &v48[4]);
            if (v52)
            {
              v17 = v51[1];
              v51[1] = 0;
              if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v17, v9);
              }

              v18 = v51[0];
              v51[0] = 0;
              if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v18, v9);
              }

              v19 = v49;
              v49 = 0;
              if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v19, v9);
              }
            }

            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::deref(v5, v9);
          }

LABEL_76:
          buf[0] = 0;
          v52 = 0;
          v9 = *a3;
          v34 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v35 = *(a3 + 3);
          if (!v35)
          {
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::deref(v5, v9);
          }

          if (!v34)
          {
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::deref(v5, v9);
          }

          (*(*v35 + 16))(v35, v9);
          if ((v52 & 1) == 0)
          {
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::deref(v5, v9);
          }

          LOBYTE(v16) = buf[0];
          goto LABEL_35;
        }

        goto LABEL_75;
      }
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v32 = *(a3 + 3);
    if (v32)
    {
      if (v13)
      {
        (*(*v32 + 16))(v32);
        v15 = *a3;
        v13 = *(a3 + 1);
        goto LABEL_75;
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = 0;
LABEL_75:
    *a3 = 0;
    *(a3 + 1) = 0;
    v33 = *(a3 + 3);
    if (v33)
    {
      if (v13)
      {
        (*(*v33 + 16))(v33, v15);
        v39 = *(a3 + 3);
        v40 = *a3;
        v41 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        if (v39)
        {
          if (v41)
          {
            (*(*v39 + 16))(v39, v40);
          }
        }
      }
    }

    goto LABEL_76;
  }

  if (*(a3 + 25) <= 0x5D4u)
  {
    if (v8 == 1491)
    {
      if (IPC::Decoder::decode<std::tuple<WebCore::AudioSessionMayResume>>(a3) >= 0x100u)
      {
        WebCore::MediaSessionHelper::applicationDidEnterBackground();
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::deref(v5, v9);
    }

    if (v8 == 1492)
    {
      WebCore::MediaSessionHelper::applicationWillBecomeInactive(this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::deref(v5, v9);
    }

    goto LABEL_55;
  }

  switch(v8)
  {
    case 0x5D7u:
      v10 = *(a3 + 1);
      v20 = *(a3 + 2);
      v9 = *a3;
      if (v10 > &v20[-*a3])
      {
        *(a3 + 2) = v20 + 1;
        if (v20)
        {
          if (*v20 < 2u)
          {
            WebCore::MediaSessionHelper::isPlayingToAutomotiveHeadUnitDidChange();
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::deref(v5, v9);
          }

          goto LABEL_68;
        }

        goto LABEL_65;
      }

LABEL_63:
      *a3 = 0;
      *(a3 + 1) = 0;
      v28 = *(a3 + 3);
      if (v28)
      {
        if (v10)
        {
          (*(*v28 + 16))(v28);
          v10 = *(a3 + 1);
        }
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_65;
    case 0x5D6u:
      v10 = *(a3 + 1);
      v21 = *(a3 + 2);
      v9 = *a3;
      if (v10 > &v21[-*a3])
      {
        *(a3 + 2) = v21 + 1;
        if (v21)
        {
          if (*v21 < 2u)
          {
            WebCore::MediaSessionHelper::externalOutputDeviceAvailableDidChange();
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::deref(v5, v9);
          }

          goto LABEL_68;
        }

LABEL_65:
        *a3 = 0;
        *(a3 + 1) = 0;
        v29 = *(a3 + 3);
        if (v29)
        {
          if (v10)
          {
            (*(*v29 + 16))(v29);
            v9 = *a3;
            v10 = *(a3 + 1);
LABEL_68:
            *a3 = 0;
            *(a3 + 1) = 0;
            v30 = *(a3 + 3);
            if (!v30 || !v10 || ((*(*v30 + 16))(v30, v9), v37 = *(a3 + 3), v9 = *a3, v38 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, !v37) || !v38)
            {
              *a3 = 0;
              *(a3 + 1) = 0;
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::deref(v5, v9);
            }

            (*(*v37 + 16))(v37, v9);
            v9 = *a3;
            v23 = *(a3 + 1);
            v24 = *(a3 + 3);
            *a3 = 0;
            *(a3 + 1) = 0;
            if (!v24)
            {
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::deref(v5, v9);
            }

            goto LABEL_57;
          }
        }

        else
        {
          v10 = 0;
        }

        v9 = 0;
        goto LABEL_68;
      }

      goto LABEL_63;
    case 0x5D5u:
      if (IPC::Decoder::decode<std::tuple<WebCore::AudioSessionMayResume>>(a3) >= 0x100u)
      {
        WebCore::MediaSessionHelper::applicationWillEnterForeground();
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::deref(v5, v9);
  }

LABEL_55:
  v22 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    if (v8 >= 0x107F)
    {
      v25 = 4223;
    }

    else
    {
      v25 = v8;
    }

    v26 = (&IPC::Detail::messageDescriptions)[3 * v25];
    v27 = *(a3 + 7);
    *buf = 136315394;
    *v48 = v26;
    *&v48[8] = 2048;
    *&v48[10] = v27;
    _os_log_error_impl(&dword_19D52D000, v22, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
  }

  v9 = *a3;
  v23 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v24 = *(a3 + 3);
  if (v24)
  {
LABEL_57:
    if (v23)
    {
      (*(*v24 + 16))(v24, v9);
    }
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::deref(v5, v9);
}

void WebKit::RemoteMediaSessionHelper::~RemoteMediaSessionHelper(WebKit::RemoteMediaSessionHelper *this, void *a2)
{
  WebKit::RemoteMediaSessionHelper::~RemoteMediaSessionHelper(this, a2);

  WTF::fastFree(v2, v3);
}

{
  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v3, a2);
  }

  *(this + 7) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 8, a2);
  *this = MEMORY[0x1E69E2E60] + 16;
  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  v6 = *(this + 2);
  if (v6)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v6, v4);
  }
}

uint64_t WebKit::RemoteMediaSessionHelper::ref(uint64_t this)
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

uint64_t non-virtual thunk toWebKit::RemoteMediaSessionHelper::ref(uint64_t this)
{
  while (1)
  {
    v1 = *(this - 48);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this - 48);
    atomic_compare_exchange_strong_explicit((this - 48), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this - 48));
}

{
  while (1)
  {
    v1 = *(this - 64);
    if ((v1 & 1) == 0)
    {
      break;
    }

    v2 = *(this - 64);
    atomic_compare_exchange_strong_explicit((this - 64), &v2, v1 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v1)
    {
      return this;
    }
  }

  return WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(this - 64));
}

atomic_uchar **non-virtual thunk toWebKit::RemoteMediaSessionHelper::deref(atomic_uchar **this, void *a2)
{
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::deref(this - 6, a2);
}

{
  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::deref(this - 8, a2);
}

void non-virtual thunk toWebKit::RemoteMediaSessionHelper::~RemoteMediaSessionHelper(WebKit::RemoteMediaSessionHelper *this, void *a2)
{
  WebKit::RemoteMediaSessionHelper::~RemoteMediaSessionHelper((this - 56), a2);
}

{
  WebKit::RemoteMediaSessionHelper::~RemoteMediaSessionHelper((this - 56), a2);

  WTF::fastFree(v2, v3);
}

{
  WebKit::RemoteMediaSessionHelper::~RemoteMediaSessionHelper((this - 72), a2);
}

{
  WebKit::RemoteMediaSessionHelper::~RemoteMediaSessionHelper((this - 72), a2);

  WTF::fastFree(v2, v3);
}

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>(*result, a2);
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

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
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

uint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSessionHelper,(WTF::DestructionThread)0>::weakRefCount(atomic_ullong *a1)
{
  if (*a1)
  {
    return 0;
  }

  v1 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(a1);

  return WTF::ThreadSafeWeakPtrControlBlock::weakRefCount(v1);
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::weakRefCount(atomic_uchar *this)
{
  v2 = 0;
  v3 = 1;
  atomic_compare_exchange_strong_explicit(this, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this);
  }

  result = *(this + 2);
  atomic_compare_exchange_strong_explicit(this, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    v5 = result;
    WTF::Lock::unlockSlow(this);
    return v5;
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteLegacyCDMSessionProxy18GenerateKeyRequestEN6WebKit27RemoteLegacyCDMSessionProxyES8_FvRKNS_6StringEONS_6RefPtrIN7WebCore12SharedBufferENS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEESB_ONS_17CompletionHandlerIFvSK_SB_tjEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_SB_tjEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F21A8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteLegacyCDMSessionProxy18GenerateKeyRequestEN6WebKit27RemoteLegacyCDMSessionProxyES8_FvRKNS_6StringEONS_6RefPtrIN7WebCore12SharedBufferENS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEESB_ONS_17CompletionHandlerIFvSK_SB_tjEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_SB_tjEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F21A8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteLegacyCDMSessionProxy18GenerateKeyRequestEN6WebKit27RemoteLegacyCDMSessionProxyES8_FvRKNS_6StringEONS_6RefPtrIN7WebCore12SharedBufferENS_12RawPtrTraitsISE_EENS_21DefaultRefDerefTraitsISE_EEEESB_ONS_17CompletionHandlerIFvSK_SB_tjEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSK_SB_tjEE4callESK_SB_tj(uint64_t a1, atomic_uint **a2, uint64_t *a3, __int16 a4, int a5)
{
  v8 = (a1 + 8);
  v9 = *(a1 + 8);
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(v9, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, a3);
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v9, a4);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v9, a5);
  v10 = v8[1];

  return IPC::Connection::sendMessageImpl(v10, v8, 0, 0);
}

void IPC::Decoder::decode<std::tuple<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a1, &v8);
  if (v9 == 1)
  {
    *a2 = v8;
    *(a2 + 8) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    v4 = *a1;
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      (*(*v6 + 16))(v6, v4);
    }
  }
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteLegacyCDMSessionProxy6UpdateEN6WebKit27RemoteLegacyCDMSessionProxyES8_FvONS_6RefPtrIN7WebCore12SharedBufferENS_12RawPtrTraitsISB_EENS_21DefaultRefDerefTraitsISB_EEEEONS_17CompletionHandlerIFvbSH_tjEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbSH_tjEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F21D0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteLegacyCDMSessionProxy6UpdateEN6WebKit27RemoteLegacyCDMSessionProxyES8_FvONS_6RefPtrIN7WebCore12SharedBufferENS_12RawPtrTraitsISB_EENS_21DefaultRefDerefTraitsISB_EEEEONS_17CompletionHandlerIFvbSH_tjEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbSH_tjEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F21D0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteLegacyCDMSessionProxy6UpdateEN6WebKit27RemoteLegacyCDMSessionProxyES8_FvONS_6RefPtrIN7WebCore12SharedBufferENS_12RawPtrTraitsISB_EENS_21DefaultRefDerefTraitsISB_EEEEONS_17CompletionHandlerIFvbSH_tjEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbSH_tjEE4callEbSH_tj(uint64_t a1, char a2, atomic_uint **a3, __int16 a4, int a5)
{
  v10 = (a1 + 8);
  v11 = *(a1 + 8);
  v12 = IPC::Encoder::grow(v11, 1uLL, 1);
  if (v13)
  {
    *v12 = a2;
    IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(v11, a3);
    IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v11, a4);
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v11, a5);
    v14 = *(a1 + 16);

    return IPC::Connection::sendMessageImpl(v14, v10, 0, 0);
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteLegacyCDMSessionProxy17CachedKeyForKeyIDEN6WebKit27RemoteLegacyCDMSessionProxyES8_FvNS_6StringEONS_17CompletionHandlerIFvONS_6RefPtrIN7WebCore12SharedBufferENS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSJ_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F21F8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteLegacyCDMSessionProxy17CachedKeyForKeyIDEN6WebKit27RemoteLegacyCDMSessionProxyES8_FvNS_6StringEONS_17CompletionHandlerIFvONS_6RefPtrIN7WebCore12SharedBufferENS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSJ_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F21F8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages27RemoteLegacyCDMSessionProxy17CachedKeyForKeyIDEN6WebKit27RemoteLegacyCDMSessionProxyES8_FvNS_6StringEONS_17CompletionHandlerIFvONS_6RefPtrIN7WebCore12SharedBufferENS_12RawPtrTraitsISD_EENS_21DefaultRefDerefTraitsISD_EEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, atomic_uint **a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages42RemoteMediaEngineConfigurationFactoryProxy27CreateDecodingConfigurationENS2_10ConnectionEN6WebKit42RemoteMediaEngineConfigurationFactoryProxyES9_FvON7WebCore26MediaDecodingConfigurationEONS_17CompletionHandlerIFvONSA_29MediaCapabilitiesDecodingInfoEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F2220;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages42RemoteMediaEngineConfigurationFactoryProxy27CreateDecodingConfigurationENS2_10ConnectionEN6WebKit42RemoteMediaEngineConfigurationFactoryProxyES9_FvON7WebCore26MediaDecodingConfigurationEONS_17CompletionHandlerIFvONSA_29MediaCapabilitiesDecodingInfoEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2220;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages42RemoteMediaEngineConfigurationFactoryProxy27CreateDecodingConfigurationENS2_10ConnectionEN6WebKit42RemoteMediaEngineConfigurationFactoryProxyES9_FvON7WebCore26MediaDecodingConfigurationEONS_17CompletionHandlerIFvONSA_29MediaCapabilitiesDecodingInfoEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EE4callESF_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3506;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebCore::MediaCapabilitiesDecodingInfo,void>::encode(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages42RemoteMediaEngineConfigurationFactoryProxy27CreateEncodingConfigurationENS2_10ConnectionEN6WebKit42RemoteMediaEngineConfigurationFactoryProxyES9_FvON7WebCore26MediaEncodingConfigurationEONS_17CompletionHandlerIFvONSA_29MediaCapabilitiesEncodingInfoEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F2248;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages42RemoteMediaEngineConfigurationFactoryProxy27CreateEncodingConfigurationENS2_10ConnectionEN6WebKit42RemoteMediaEngineConfigurationFactoryProxyES9_FvON7WebCore26MediaEncodingConfigurationEONS_17CompletionHandlerIFvONSA_29MediaCapabilitiesEncodingInfoEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F2248;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages42RemoteMediaEngineConfigurationFactoryProxy27CreateEncodingConfigurationENS2_10ConnectionEN6WebKit42RemoteMediaEngineConfigurationFactoryProxyES9_FvON7WebCore26MediaEncodingConfigurationEONS_17CompletionHandlerIFvONSA_29MediaCapabilitiesEncodingInfoEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EE4callESF_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3507;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebCore::MediaCapabilitiesEncodingInfo,void>::encode(v5, a2);
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

uint64_t IPC::Decoder::decode<WebCore::MediaPlayerMediaEngineIdentifier>(void *a1)
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
  if (v4 < 0xA)
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29RemoteMediaPlayerManagerProxy17GetSupportedTypesEN6WebKit29RemoteMediaPlayerManagerProxyES8_FvN7WebCore32MediaPlayerMediaEngineIdentifierEONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2270;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29RemoteMediaPlayerManagerProxy17GetSupportedTypesEN6WebKit29RemoteMediaPlayerManagerProxyES8_FvN7WebCore32MediaPlayerMediaEngineIdentifierEONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2270;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29RemoteMediaPlayerManagerProxy17GetSupportedTypesEN6WebKit29RemoteMediaPlayerManagerProxyES8_FvN7WebCore32MediaPlayerMediaEngineIdentifierEONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29RemoteMediaPlayerManagerProxy21SupportsTypeAndCodecsEN6WebKit29RemoteMediaPlayerManagerProxyES8_FvN7WebCore32MediaPlayerMediaEngineIdentifierEOKNS9_28MediaEngineSupportParametersEONS_17CompletionHandlerIFvNS9_23MediaPlayerSupportsTypeEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSF_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2298;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29RemoteMediaPlayerManagerProxy21SupportsTypeAndCodecsEN6WebKit29RemoteMediaPlayerManagerProxyES8_FvN7WebCore32MediaPlayerMediaEngineIdentifierEOKNS9_28MediaEngineSupportParametersEONS_17CompletionHandlerIFvNS9_23MediaPlayerSupportsTypeEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSF_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F2298;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29RemoteMediaPlayerManagerProxy21SupportsTypeAndCodecsEN6WebKit29RemoteMediaPlayerManagerProxyES8_FvN7WebCore32MediaPlayerMediaEngineIdentifierEOKNS9_28MediaEngineSupportParametersEONS_17CompletionHandlerIFvNS9_23MediaPlayerSupportsTypeEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSF_EE4callESF_(uint64_t a1, char a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29RemoteMediaPlayerManagerProxy17SupportsKeySystemEN6WebKit29RemoteMediaPlayerManagerProxyES8_FvN7WebCore32MediaPlayerMediaEngineIdentifierEOKNS_6StringESD_ONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10F22C0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29RemoteMediaPlayerManagerProxy17SupportsKeySystemEN6WebKit29RemoteMediaPlayerManagerProxyES8_FvN7WebCore32MediaPlayerMediaEngineIdentifierEOKNS_6StringESD_ONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10F22C0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages29RemoteMediaPlayerManagerProxy17SupportsKeySystemEN6WebKit29RemoteMediaPlayerManagerProxyES8_FvN7WebCore32MediaPlayerMediaEngineIdentifierEOKNS_6StringESD_ONS_17CompletionHandlerIFvbEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJbEE4callEb(uint64_t a1, char a2)
{
  v4 = (a1 + 8);
  v5 = IPC::Encoder::grow(*(a1 + 8), 1uLL, 1);
  if (v6)
  {
    *v5 = a2;
    v7 = *(a1 + 16);

    return IPC::Connection::sendMessageImpl(v7, v4, 0, 0);
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

_DWORD *WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::RemoteMediaPlayerProxy::~RemoteMediaPlayerProxy((result - 4));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::MediaPlayerPreload>(void *a1)
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
  if (v4 < 3)
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

uint64_t IPC::Decoder::decode<WebCore::DynamicRangeMode>(void *a1)
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
  if (v4 < 5)
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

WTF::StringImpl *IPC::Decoder::decode<WebCore::MediaPlayerLoadOptions>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::MediaPlayerLoadOptions,void>::decode(a2, a1);
  if ((*(a1 + 24) & 1) == 0)
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages22RemoteMediaPlayerProxy4LoadENS2_10ConnectionEN6WebKit22RemoteMediaPlayerProxyES9_FvONS_3URLEONSt3__18optionalINS8_22SandboxExtensionHandleEEERKN7WebCore22MediaPlayerLoadOptionsEONS_17CompletionHandlerIFvONS8_30RemoteMediaPlayerConfigurationEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1)
{
  *a1 = &unk_1F10F22E8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}
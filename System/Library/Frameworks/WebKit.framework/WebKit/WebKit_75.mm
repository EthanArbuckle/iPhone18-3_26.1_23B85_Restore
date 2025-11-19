WTF::StringImpl *WebKit::WebPermissionController::didReceiveMessage(atomic_uint *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  atomic_fetch_add(this + 2, 1u);
  v5 = *(a3 + 25);
  if (v5 == 2894)
  {
    v6 = IPC::Decoder::decode<WebCore::PermissionName>(a3);
    if ((v6 & 0x100) != 0)
    {
      v7 = v6;
      IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a3, &v24);
      if (v27)
      {
        LOBYTE(v19) = v7;
        v20[4] = 0;
        v22 = -1;
        if (v26)
        {
          if (v26 == 255)
          {
            goto LABEL_7;
          }

          *&v20[4] = v24;
        }

        else
        {
          *&v20[4] = v24;
          v21 = v25;
        }

        v22 = v26;
LABEL_7:
        v23 = 1;
        result = (*(*this + 40))(this, v7, &v20[4]);
        if ((v23 & 1) != 0 && !v22)
        {
          v11 = *&v20[12];
          *&v20[12] = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v9);
          }

          result = *&v20[4];
          *&v20[4] = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v9);
          }
        }

        goto LABEL_17;
      }

      v16 = *a3;
      v17 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v18 = *(a3 + 3);
      if (v18 && v17)
      {
        (*(*v18 + 16))(v18, v16);
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
        v13 = 4223;
      }

      else
      {
        v13 = v5;
      }

      v14 = (&IPC::Detail::messageDescriptions)[3 * v13];
      v15 = *(a3 + 7);
      v19 = 136315394;
      *v20 = v14;
      *&v20[8] = 2048;
      *&v20[10] = v15;
      _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &v19, 0x16u);
    }
  }

  v9 = *a3;
  v10 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = *(a3 + 3);
  if (result && v10)
  {
    result = (*(*result + 16))(result, v9);
  }

LABEL_17:
  if (this)
  {
    if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, this + 2);
      return (*(*this + 8))(this, v9, v10);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::WebPermissionControllerProxy::didReceiveMessage(WebKit::WebPermissionControllerProxy *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (!v4)
  {
    __break(0xC471u);
    goto LABEL_103;
  }

  if ((*(v4 + 1110) & 0x20) == 0)
  {
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
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver WebPermissionControllerProxy", buf, 0xCu);
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

  atomic_fetch_add((v4 + 16), 1u);
  v11 = *(a3 + 25);
  if (v11 != 2893)
  {
    v21 = qword_1ED6416C8;
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
      *&buf[12] = 2048;
      *&buf[14] = v29;
      _os_log_error_impl(&dword_19D52D000, v21, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    goto LABEL_23;
  }

  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a3, &v63);
  if ((v69 & 1) == 0)
  {
    v32 = *a3;
    v33 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v34 = *(a3 + 3);
    if (!v34 || !v33 || ((*(*v34 + 16))(v34, v32), (v69 & 1) == 0))
    {
LABEL_23:
      v22 = *a3;
      v23 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v24 = *(a3 + 3);
      if (v24 && v23)
      {
        (*(*v24 + 16))(v24, v22);
      }

      goto LABEL_97;
    }
  }

  v13 = IPC::ArgumentCoder<WebCore::PermissionDescriptor,void>::decode(a3);
  if ((v13 & 0x100) != 0)
  {
    v14 = v13;
    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a3, &v52);
    if ((v53 & 1) == 0)
    {
      v17 = *a3;
      v30 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v31 = *(a3 + 3);
      if (!v31 || !v30 || ((*(*v31 + 16))(v31, v17), (v53 & 1) == 0))
      {
LABEL_55:
        v20 = 0;
        buf[0] = 0;
        goto LABEL_56;
      }
    }

    v15 = *(a3 + 1);
    v16 = *(a3 + 2);
    v17 = *a3;
    if (v15 <= &v16[-*a3])
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v37 = *(a3 + 3);
      if (v37)
      {
        if (v15)
        {
          (*(*v37 + 16))(v37);
          v15 = *(a3 + 1);
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      *(a3 + 2) = v16 + 1;
      if (v16)
      {
        v3 = *v16;
        if (v3 < 4)
        {
          if (v69)
          {
            buf[0] = 0;
            v55 = -1;
            if (v65)
            {
              if (v65 == 255)
              {
LABEL_18:
                LOBYTE(v56[0]) = 0;
                v58 = -1;
                if (v68)
                {
                  if (v68 == 255)
                  {
                    goto LABEL_21;
                  }

                  *v56 = v66;
                }

                else
                {
                  v19 = v66;
                  v66 = 0uLL;
                  *v56 = v19;
                  v57 = v67;
                }

                v58 = v68;
LABEL_21:
                v59[0] = v14;
                v60 = v52;
                v61 = v3;
                v20 = 1;
LABEL_56:
                v62 = v20;
                goto LABEL_57;
              }

              *buf = v63;
            }

            else
            {
              v18 = v63;
              v63 = 0uLL;
              *buf = v18;
              *&buf[16] = v64;
            }

            v55 = v65;
            goto LABEL_18;
          }

LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        goto LABEL_54;
      }
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v38 = *(a3 + 3);
    if (v38)
    {
      if (v15)
      {
        (*(*v38 + 16))(v38);
        v17 = *a3;
        v15 = *(a3 + 1);
        goto LABEL_54;
      }
    }

    else
    {
      v15 = 0;
    }

    v17 = 0;
LABEL_54:
    *a3 = 0;
    *(a3 + 1) = 0;
    v39 = *(a3 + 3);
    if (v39 && v15)
    {
      (*(*v39 + 16))(v39, v17);
    }

    goto LABEL_55;
  }

  v17 = *a3;
  v35 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v36 = *(a3 + 3);
  if (v36 && v35)
  {
    (*(*v36 + 16))(v36, v17);
  }

  v20 = 0;
  buf[0] = 0;
  v62 = 0;
LABEL_57:
  if (v69)
  {
    if (!v68)
    {
      v40 = *(&v66 + 1);
      *(&v66 + 1) = 0;
      if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v40, v17);
      }

      v41 = v66;
      *&v66 = 0;
      if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v41, v17);
      }
    }

    v68 = -1;
    if (!v65)
    {
      v42 = *(&v63 + 1);
      *(&v63 + 1) = 0;
      if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, v17);
      }

      v43 = v63;
      *&v63 = 0;
      if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, v17);
      }
    }
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_23;
  }

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
  if ((v44 & 1) == 0)
  {
    goto LABEL_82;
  }

  v45 = result;
  while (1)
  {
    v46 = *a2;
    if ((*a2 & 1) == 0)
    {
      break;
    }

    v47 = *a2;
    atomic_compare_exchange_strong_explicit(a2, &v47, v46 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v47 == v46)
    {
      goto LABEL_79;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_79:
  v48 = WTF::fastMalloc(0x18);
  *v48 = &unk_1F10EE8F8;
  v48[1] = v45;
  v48[2] = a2;
  *&v63 = v48;
  WebKit::WebPermissionControllerProxy::query(this, buf, v59, v60, SBYTE8(v60), v3, &v63);
  result = v63;
  *&v63 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v62)
  {
LABEL_82:
    if (!v58)
    {
      v49 = v56[1];
      v56[1] = 0;
      if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v44);
      }

      result = v56[0];
      v56[0] = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v44);
      }
    }

    v58 = -1;
    if (!v55)
    {
      v50 = *&buf[8];
      *&buf[8] = 0;
      if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v50, v44);
      }

      result = *buf;
      *buf = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v44);
      }
    }
  }

  if (this)
  {
LABEL_97:
    v51 = *(this + 2);
    if (v51)
    {
      return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v51 + 16));
    }

LABEL_104:
    __break(0xC471u);
    JUMPOUT(0x19D9789ACLL);
  }

  return result;
}

void WebKit::WebScreenOrientationManager::didReceiveMessage(WebKit::WebScreenOrientationManager *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  WebKit::WebScreenOrientationManager::ref(this);
  v5 = *(a3 + 25);
  if (v5 == 3147)
  {
    v6 = IPC::Decoder::decode<std::tuple<WebCore::ScreenOrientationType>>(a3);
    if ((v6 & 0x100) != 0)
    {
      WebKit::WebScreenOrientationManager::orientationDidChange(this, v6);
    }
  }

  else
  {
    v7 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v5 >= 0x107F)
      {
        v11 = 4223;
      }

      else
      {
        v11 = v5;
      }

      v12 = (&IPC::Detail::messageDescriptions)[3 * v11];
      v13 = *(a3 + 7);
      v14 = 136315394;
      v15 = v12;
      v16 = 2048;
      v17 = v13;
      _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &v14, 0x16u);
    }

    v8 = *a3;
    v9 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v10 = *(a3 + 3);
    if (v10 && v9)
    {
      (*(*v10 + 16))(v10, v8);
    }
  }

  if (this)
  {
    WebKit::WebScreenOrientationManager::deref(this);
  }
}

unsigned int **WebKit::WebScreenOrientationManagerProxy::didReceiveMessage(WebKit::WebScreenOrientationManagerProxy *this, IPC::Connection *a2, unsigned int ***a3)
{
  v35 = *MEMORY[0x1E69E9840];
  WebKit::WebProcessProxy::fromConnection(a2, a2, v32);
  v6 = *(*v32 + 1104);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((*v32 + 16));
  if ((v6 & 0x200000000000000) != 0)
  {
    v11 = (this + 16);
    ++*(this + 4);
    v12 = *(a3 + 25);
    if (v12 == 3146)
    {
      WebKit::WebScreenOrientationManagerProxy::unlock(this);
    }

    else if (v12 == 3145)
    {
      v20 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v20 & 0x100) != 0)
      {
        *(this + 48) = v20 & 1;
      }
    }

    else
    {
      if (v12 == 3144)
      {
        v13 = IPC::Decoder::decode<WebCore::ScreenOrientationLockType>(a3);
        if ((v13 & 0x100) != 0)
        {
          v14 = v13;
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
                goto LABEL_23;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_23:
            v25 = WTF::fastMalloc(0x18);
            *v25 = &unk_1F10EE920;
            v25[1] = v17;
            v25[2] = a2;
            *v32 = v25;
            WebKit::WebScreenOrientationManagerProxy::lock(this, v14, v32);
            v26 = *v32;
            *v32 = 0;
            if (v26)
            {
              (*(*v26 + 8))(v26);
            }
          }

          return WTF::RefCounted<WebKit::WebScreenOrientationManagerProxy>::deref(v11);
        }
      }

      else
      {
        v21 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v12 >= 0x107F)
          {
            v29 = 4223;
          }

          else
          {
            v29 = v12;
          }

          v30 = (&IPC::Detail::messageDescriptions)[3 * v29];
          v31 = a3[7];
          *v32 = 136315394;
          *&v32[4] = v30;
          v33 = 2048;
          v34 = v31;
          _os_log_error_impl(&dword_19D52D000, v21, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", v32, 0x16u);
        }
      }

      v22 = *a3;
      v23 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v24 = a3[3];
      if (v24 && v23)
      {
        (*(*v24 + 2))(v24, v22);
      }
    }

    return WTF::RefCounted<WebKit::WebScreenOrientationManagerProxy>::deref(v11);
  }

  v7 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v27 = *(a3 + 25);
    if (v27 >= 0x107F)
    {
      v27 = 4223;
    }

    v28 = (&IPC::Detail::messageDescriptions)[3 * v27];
    *v32 = 136315138;
    *&v32[4] = v28;
    _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver WebScreenOrientationManagerProxy", v32, 0xCu);
  }

  v8 = *a3;
  v9 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  result = a3[3];
  if (result)
  {
    if (v9)
    {
      return (*(*result + 2))(result, v8);
    }
  }

  return result;
}

BOOL WebKit::WebScreenOrientationManagerProxy::didReceiveSyncMessage(uint64_t a1, WebKit::WebProcessProxy *this, uint64_t *a3, uint64_t *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  WebKit::WebProcessProxy::fromConnection(this, this, v32);
  v8 = *(*v32 + 1104);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((*v32 + 16));
  if ((v8 & 0x200000000000000) != 0)
  {
    v14 = (a1 + 16);
    ++*(a1 + 16);
    v15 = *(a3 + 25);
    v13 = v15 == 4222;
    if (v15 == 4222)
    {
      v16 = *a4;
      *a4 = 0;
      while (1)
      {
        v17 = *this;
        if ((*this & 1) == 0)
        {
          break;
        }

        v18 = *this;
        atomic_compare_exchange_strong_explicit(this, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v18 == v17)
        {
          goto LABEL_16;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*this);
LABEL_16:
      v24 = WTF::fastMalloc(0x18);
      *v24 = &unk_1F10EE948;
      v24[1] = v16;
      v24[2] = this;
      *v32 = v24;
      WebKit::WebScreenOrientationManagerProxy::currentOrientation(a1, v32);
      v25 = *v32;
      *v32 = 0;
      if (v25)
      {
        (*(*v25 + 8))(v25);
      }
    }

    else
    {
      v19 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v15 >= 0x107F)
        {
          v29 = 4223;
        }

        else
        {
          v29 = v15;
        }

        v30 = (&IPC::Detail::messageDescriptions)[3 * v29];
        v31 = a3[7];
        *v32 = 136315394;
        *&v32[4] = v30;
        v33 = 2048;
        v34 = v31;
        _os_log_error_impl(&dword_19D52D000, v19, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", v32, 0x16u);
      }

      v21 = *a3;
      v22 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v23 = a3[3];
      if (v23 && v22)
      {
        (*(*v23 + 16))(v23, v21);
      }
    }

    WTF::RefCounted<WebKit::WebScreenOrientationManagerProxy>::deref(v14);
  }

  else
  {
    v9 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a3 + 25);
      if (v27 >= 0x107F)
      {
        v27 = 4223;
      }

      v28 = (&IPC::Detail::messageDescriptions)[3 * v27];
      *v32 = 136315138;
      *&v32[4] = v28;
      _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver WebScreenOrientationManagerProxy", v32, 0xCu);
    }

    v10 = *a3;
    v11 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v12 = a3[3];
    if (v12 && v11)
    {
      (*(*v12 + 16))(v12, v10);
    }

    return 0;
  }

  return v13;
}

_DWORD *WebKit::WebSharedWorkerContextManagerConnection::didReceiveMessage(WebKit::WebSharedWorkerContextManagerConnection *this, atomic_ullong *a2, IPC::Decoder *a3, double a4, __n128 a5)
{
  v159 = *MEMORY[0x1E69E9840];
  v7 = (this + 32);
  ++*(this + 8);
  v8 = *(a3 + 25);
  if (v8 > 0xC4F)
  {
    if (*(a3 + 25) > 0xC51u)
    {
      if (v8 == 3154)
      {
        IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v40)
        {
          WebCore::SharedWorkerContextManager::Connection::terminateSharedWorker();
        }

        return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
      }

      if (v8 == 3155)
      {
        IPC::ArgumentCoder<std::tuple<WebKit::WebPreferencesStore>,void>::decode<IPC::Decoder>(a3, buf, a4, a5);
        if (v108)
        {
LABEL_42:
          WebKit::WebSharedWorkerContextManagerConnection::updatePreferencesStore(this, buf, v26);
          if (v108)
          {
            if (*v107)
            {
              WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(*v107, *&v107[8]);
            }

            if (*buf)
            {
              WTF::RobinHoodHashTable<WTF::String,WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,mpark::variant<WTF::String,BOOL,unsigned int,double>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<mpark::variant<WTF::String,BOOL,unsigned int,double>>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(*buf, *&buf[8]);
            }
          }

          return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
        }

LABEL_132:
        v68 = *a3;
        v69 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v70 = *(a3 + 3);
        if (!v70)
        {
          return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
        }

        if (!v69)
        {
          return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
        }

        (*(*v70 + 16))(v70, v68);
        if ((v108 & 1) == 0)
        {
          return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
        }

        goto LABEL_42;
      }
    }

    else
    {
      if (v8 == 3152)
      {
        IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
        if ((buf[8] & 1) == 0)
        {
          v61 = *a3;
          v62 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v63 = *(a3 + 3);
          if (!v63)
          {
            return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
          }

          if (!v62)
          {
            return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
          }

          (*(*v63 + 16))(v63, v61);
          if ((buf[8] & 1) == 0)
          {
            return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
          }
        }

        v28 = *buf;
        *buf = 0;
        v29 = *(this + 11);
        *(this + 11) = v28;
        if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, v27);
        }

        if ((buf[8] & 1) == 0)
        {
          return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
        }

        goto LABEL_53;
      }

      if (v8 == 3153)
      {
        IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v24)
        {
          WebCore::SharedWorkerContextManager::Connection::suspendSharedWorker();
        }

        return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
      }
    }

    goto LABEL_67;
  }

  if (*(a3 + 25) <= 0xC4Du)
  {
    if (v8 == 3148)
    {
      WebKit::WebSharedWorkerContextManagerConnection::close(this);
      return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
    }

    if (v8 == 3149)
    {
      IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a3, &v140);
      if ((v146 & 1) == 0)
      {
        v65 = *a3;
        v66 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v67 = *(a3 + 3);
        if (!v67 || !v66 || ((*(*v67 + 16))(v67, v65), (v146 & 1) == 0))
        {
          buf[0] = 0;
          v139 = 0;
LABEL_96:
          if ((v139 & 1) == 0)
          {
            v71 = *a3;
            v72 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v73 = *(a3 + 3);
            if (!v73)
            {
              return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
            }

            if (!v72)
            {
              return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
            }

            (*(*v73 + 16))(v73, v71);
            if ((v139 & 1) == 0)
            {
              return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
            }
          }

          WebKit::WebSharedWorkerContextManagerConnection::launchSharedWorker(this, buf, v110, &v111, v113, &v128);
          if ((v139 & 1) == 0)
          {
            return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
          }

          v52 = v138;
          v138 = 0;
          if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v52, v51);
          }

          if (v133 == 1)
          {
            v53 = v129;
            v129 = 0;
            if (v53)
            {
              if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v53, v51);
              }
            }
          }

          WebCore::WorkerFetchResult::~WorkerFetchResult(v113, v51);
          v54 = v112;
          v112 = 0;
          if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v54, v27);
          }

          if (!v109)
          {
            v55 = *&v107[16];
            *&v107[16] = 0;
            if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v55, v27);
            }

            v56 = *&v107[8];
            *&v107[8] = 0;
            if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v56, v27);
            }
          }

          v109 = -1;
          if (v107[0])
          {
            return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
          }

          v57 = *&buf[8];
          *&buf[8] = 0;
          if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v57, v27);
          }

LABEL_53:
          v30 = *buf;
          *buf = 0;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            goto LABEL_79;
          }

          return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
        }
      }

      v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v10 & 1) == 0 || (v11 = v9, IPC::Decoder::decode<WebCore::WorkerOptions>(&v84, a3), v86 != 1))
      {
        buf[0] = 0;
        v139 = 0;
LABEL_81:
        if (v146)
        {
          if (!v145)
          {
            v47 = *(&v143 + 1);
            *(&v143 + 1) = 0;
            if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v47, v10);
            }

            v48 = v143;
            *&v143 = 0;
            if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v48, v10);
            }
          }

          v145 = -1;
          if (!v142)
          {
            v49 = *(&v140 + 1);
            *(&v140 + 1) = 0;
            if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v49, v10);
            }

            v50 = v140;
            *&v140 = 0;
            if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v50, v10);
            }
          }
        }

        goto LABEL_96;
      }

      IPC::ArgumentCoder<WebCore::WorkerFetchResult,void>::decode(a3, &v87);
      if ((v105 & 1) == 0)
      {
        v10 = *a3;
        v77 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v78 = *(a3 + 3);
        if (!v78 || !v77 || ((*(*v78 + 16))(v78, v10), (v105 & 1) == 0))
        {
          buf[0] = 0;
          v139 = 0;
LABEL_27:
          v23 = v85;
          if (v85 && atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v10);
          }

          goto LABEL_81;
        }
      }

      IPC::ArgumentCoder<WebCore::WorkerInitializationData,void>::decode(a3, &v147);
      if ((v158 & 1) == 0)
      {
        v10 = *a3;
        v79 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v80 = *(a3 + 3);
        if (!v80 || !v79 || ((*(*v80 + 16))(v80, v10), (v158 & 1) == 0))
        {
          buf[0] = 0;
          v139 = 0;
LABEL_25:
          if (v105)
          {
            WebCore::WorkerFetchResult::~WorkerFetchResult(&v87, v10);
          }

          goto LABEL_27;
        }
      }

      if (v146 & 1) != 0 && (v105)
      {
        buf[0] = 0;
        v107[0] = -1;
        if (v142)
        {
          if (v142 == 255)
          {
LABEL_15:
            v107[8] = 0;
            v109 = -1;
            if (v145)
            {
              if (v145 == 255)
              {
                goto LABEL_18;
              }

              *&v107[8] = v143;
            }

            else
            {
              v13 = v143;
              v143 = 0uLL;
              *&v107[8] = v13;
              v108 = v144;
            }

            v109 = v145;
LABEL_18:
            v110 = v11;
            v111 = v84;
            v14 = v85;
            v85 = 0;
            v112 = v14;
            v113[0] = v87;
            v15 = v90;
            v113[2] = v89;
            v87 = 0u;
            v113[1] = v88;
            LODWORD(v88) = v88 & 0xFFFFFFFE;
            v90 = 0u;
            v113[3] = v15;
            v16 = v91;
            v91 = 0;
            v114 = v16;
            v116 = v93;
            v115 = v92;
            v117 = v94;
            v17 = v95;
            v95 = 0u;
            v18 = v96;
            v96 = 0u;
            v118 = v17;
            v119 = v18;
            v19 = v97;
            v97 = 0;
            v121 = v98;
            v122 = v99;
            LODWORD(v98) = v98 & 0xFFFFFFFE;
            v120 = v19;
            v123 = v100;
            v125 = v102;
            v124 = v101;
            v20 = v103;
            v100 = 0;
            v103 = 0;
            v126 = v20;
            v127 = v104;
            LOBYTE(v128) = 0;
            v133 = 0;
            if (v152 == 1)
            {
              v128 = v147;
              v21 = v148;
              v148 = 0;
              v129 = v21;
              v130 = v149;
              v131 = v150;
              LODWORD(v149) = v149 & 0xFFFFFFFE;
              v132 = v151;
              v133 = 1;
            }

            v134 = v153;
            v135 = v154;
            v136 = v155;
            v137 = v156;
            v138 = v157;
            v139 = 1;
            if (v158)
            {
              v157 = 0;
              if (v152)
              {
                v22 = v148;
                v148 = 0;
                if (v22)
                {
                  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v22, v10);
                  }
                }
              }
            }

            goto LABEL_25;
          }

          *buf = v140;
        }

        else
        {
          v12 = v140;
          v140 = 0uLL;
          *buf = v12;
          *&buf[16] = v141;
        }

        v107[0] = v142;
        goto LABEL_15;
      }

      goto LABEL_131;
    }

    goto LABEL_67;
  }

  if (v8 != 3150)
  {
    if (v8 == 3151)
    {
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v25)
      {
        WebCore::SharedWorkerContextManager::Connection::resumeSharedWorker();
      }

      return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
    }

LABEL_67:
    v41 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v8 >= 0x107F)
      {
        v58 = 4223;
      }

      else
      {
        v58 = v8;
      }

      v59 = (&IPC::Detail::messageDescriptions)[3 * v58];
      v60 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v59;
      *&buf[12] = 2048;
      *&buf[14] = v60;
      _os_log_error_impl(&dword_19D52D000, v41, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    goto LABEL_68;
  }

  v32 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
  if ((v33 & 1) == 0 || (v34 = v32, IPC::ArgumentCoder<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,void>::decode<IPC::Decoder>(a3, &v87), (v89 & 1) == 0) && ((v74 = *a3, v75 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v76 = *(a3 + 3)) == 0) || !v75 || ((*(*v76 + 16))(v76, v74), (v89 & 1) == 0)) || (IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v147), (BYTE8(v147) & 1) == 0) && ((v81 = *a3, v82 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v83 = *(a3 + 3)) == 0) || !v82 || ((*(*v83 + 16))(v83, v81), (BYTE8(v147) & 1) == 0)))
  {
LABEL_68:
    v42 = *a3;
    v43 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v44 = *(a3 + 3);
    if (v44 && v43)
    {
      (*(*v44 + 16))(v44, v42);
    }

    return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
  }

  if ((v89 & 1) == 0)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  *&buf[8] = v87;
  *v107 = v88;
  v35 = v147;
  *buf = v34;
  *&v107[16] = v147;
  LOBYTE(v108) = 1;
  v36 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
  if (v27)
  {
    v37 = v36;
    while (1)
    {
      v38 = *a2;
      if ((*a2 & 1) == 0)
      {
        break;
      }

      v39 = *a2;
      atomic_compare_exchange_strong_explicit(a2, &v39, v38 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v39 == v38)
      {
        goto LABEL_72;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_72:
    v45 = WTF::fastMalloc(0x18);
    *v45 = &unk_1F10EE970;
    v45[1] = v37;
    v45[2] = a2;
    *&v87 = v45;
    WebCore::SharedWorkerContextManager::Connection::postConnectEvent();
    v46 = v87;
    *&v87 = 0;
    if (v46)
    {
      (*(*v46 + 8))(v46);
    }

    if ((v108 & 1) == 0)
    {
      return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
    }

    v35 = *&v107[16];
  }

  *&v107[16] = 0;
  if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v30 = v35;
LABEL_79:
    WTF::StringImpl::destroy(v30, v27);
  }

  return WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(v7);
}

WTF::StringImpl *WebKit::WebSharedWorkerObjectConnection::didReceiveMessage(WebKit::WebSharedWorkerObjectConnection *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v6 = buf;
  v84 = *MEMORY[0x1E69E9840];
  ++*(this + 2);
  v7 = *(a3 + 25);
  if (v7 > 0xC55)
  {
    if (v7 != 3158)
    {
      if (v7 == 3159)
      {
        IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, buf);
        if (buf[16] == 1)
        {
          v14 = *(a3 + 1);
          v15 = (*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8;
          v16 = v15 - *a3;
          v17 = v14 >= v16;
          v18 = v14 - v16;
          if (v17 && v18 > 7)
          {
            *(a3 + 2) = v15 + 8;
            if (v15)
            {
              result = WebCore::SharedWorkerObjectConnection::reportNetworkUsageToWorkerObject();
              goto LABEL_91;
            }
          }

          else
          {
            *a3 = 0;
            *(a3 + 1) = 0;
            v58 = *(a3 + 3);
            if (v58)
            {
              if (v14)
              {
                (*(*v58 + 16))(v58);
                v14 = *(a3 + 1);
              }
            }

            else
            {
              v14 = 0;
            }
          }

          *a3 = 0;
          *(a3 + 1) = 0;
          v59 = *(a3 + 3);
          if (v59 && v14)
          {
            (*(*v59 + 16))(v59);
          }
        }

        goto LABEL_26;
      }

      goto LABEL_25;
    }

    IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, v68);
    if ((v68[16] & 1) == 0 || (IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v64), (v64[1] & 1) == 0) && ((v51 = *a3, v52 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v53 = *(a3 + 3)) == 0) || !v52 || ((*(*v53 + 16))(v53, v51), (v64[1] & 1) == 0)))
    {
LABEL_26:
      v9 = *a3;
      v10 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = *(a3 + 3);
      if (result && v10)
      {
        result = (*(*result + 16))(result, v9);
      }

      goto LABEL_91;
    }

    v25 = *(a3 + 1);
    v26 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v27 = *a3;
    v28 = v26 - *a3;
    v17 = v25 >= v28;
    v29 = v25 - v28;
    if (!v17 || v29 <= 3)
    {
      goto LABEL_109;
    }

    *(a3 + 2) = v26 + 1;
    if (!v26)
    {
      goto LABEL_112;
    }

    v3 = *v26;
    v31 = ((v26 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    if (v25 < v31 - v27 || v25 - (v31 - v27) <= 3)
    {
LABEL_109:
      *a3 = 0;
      *(a3 + 1) = 0;
      v56 = *(a3 + 3);
      if (v56)
      {
        if (v25)
        {
          (*(*v56 + 16))(v56);
          v27 = *a3;
          v25 = *(a3 + 1);
LABEL_112:
          *a3 = 0;
          *(a3 + 1) = 0;
          v57 = *(a3 + 3);
          if (v57 && v25)
          {
            (*(*v57 + 16))(v57);
          }

          v37 = 0;
          buf[0] = 0;
          LOBYTE(v77) = 0;
          goto LABEL_56;
        }
      }

      else
      {
        v25 = 0;
      }

      v27 = 0;
      goto LABEL_112;
    }

    *(a3 + 2) = v31 + 4;
    if (!v31)
    {
      goto LABEL_112;
    }

    v6 = *v31;
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v66);
    if ((v66[1] & 1) == 0)
    {
      v27 = *a3;
      v54 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v55 = *(a3 + 3);
      if (!v55 || !v54 || ((*(*v55 + 16))(v55, v27), (v66[1] & 1) == 0))
      {
        v37 = 0;
        buf[0] = 0;
        LOBYTE(v77) = 0;
        goto LABEL_56;
      }
    }

    v33 = *(a3 + 1);
    v34 = *(a3 + 2);
    v27 = *a3;
    if (v33 <= &v34[-*a3])
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v60 = *(a3 + 3);
      if (v60)
      {
        if (v33)
        {
          (*(*v60 + 16))(v60);
          v33 = *(a3 + 1);
        }
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      *(a3 + 2) = v34 + 1;
      if (v34)
      {
        v35 = *v34;
        if (v35 < 2)
        {
          if ((v68[16] & 1) == 0 || (v64[1] & 1) == 0)
          {
            goto LABEL_98;
          }

          *buf = *v68;
          v36 = v64[0];
          v64[0] = 0;
          *&buf[16] = v36;
          *&buf[24] = v3;
          *&buf[28] = v6;
          v76[0] = v66[0];
          LOBYTE(v76[1]) = v35;
          v37 = 1;
          LOBYTE(v77) = 1;
LABEL_56:
          if (v64[1])
          {
            v38 = v64[0];
            v64[0] = 0;
            if (v38)
            {
              if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v38, v27);
              }
            }
          }

          if (v37)
          {
            result = WebCore::SharedWorkerObjectConnection::postErrorToWorkerObject();
            if ((v77 & 1) == 0)
            {
              goto LABEL_91;
            }

            v13 = v76[0];
            v76[0] = 0;
            if (!v13)
            {
              goto LABEL_65;
            }

            goto LABEL_63;
          }

          goto LABEL_26;
        }

LABEL_124:
        *a3 = 0;
        *(a3 + 1) = 0;
        v62 = *(a3 + 3);
        if (v62 && v33)
        {
          (*(*v62 + 16))(v62, v27);
        }

        buf[0] = 0;
        LOBYTE(v77) = 0;
        if (v66[1])
        {
          v63 = v66[0];
          v66[0] = 0;
          if (v63)
          {
            if (atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v63, v27);
            }
          }
        }

        v37 = 0;
        goto LABEL_56;
      }
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v61 = *(a3 + 3);
    if (v61)
    {
      if (v33)
      {
        (*(*v61 + 16))(v61);
        v27 = *a3;
        v33 = *(a3 + 1);
        goto LABEL_124;
      }
    }

    else
    {
      v33 = 0;
    }

    v27 = 0;
    goto LABEL_124;
  }

  if (v7 == 3156)
  {
    v3 = a2;
    IPC::ArgumentCoder<WTF::URL,void>::decode(a3, v68);
    if ((v68[40] & 1) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_30;
  }

  if (v7 != 3157)
  {
LABEL_25:
    v20 = qword_1ED6416C8;
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
      _os_log_error_impl(&dword_19D52D000, v20, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    goto LABEL_26;
  }

  IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, v66);
  if ((v67 & 1) == 0)
  {
    goto LABEL_26;
  }

  IPC::Decoder::decode<WebCore::ResourceError>(a3, v68);
  if (v74 != 1)
  {
    goto LABEL_26;
  }

  if ((v67 & 1) == 0)
  {
    while (1)
    {
LABEL_98:
      __break(1u);
LABEL_99:
      v48 = *a3;
      v49 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v50 = *(a3 + 3);
      if (!v50)
      {
        goto LABEL_26;
      }

      if (!v49)
      {
        goto LABEL_26;
      }

      (*(*v50 + 16))(v50, v48);
      if ((v68[40] & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_30:
      IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, v64);
      if ((v65 & 1) == 0)
      {
        break;
      }

      IPC::Decoder::decode<WebCore::WorkerOptions>(v66, a3);
      if (v67 != 1)
      {
        v24 = 0;
        buf[0] = 0;
LABEL_69:
        LOBYTE(v79) = v24;
LABEL_70:
        if (v68[40])
        {
          v39 = *v68;
          *v68 = 0;
          if (v39)
          {
            if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v39, v21);
            }
          }
        }

        if ((v24 & 1) == 0)
        {
          goto LABEL_26;
        }

        v40 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v9)
        {
          v41 = v40;
          while (1)
          {
            v42 = *v3;
            if ((*v3 & 1) == 0)
            {
              break;
            }

            v43 = *v3;
            atomic_compare_exchange_strong_explicit(v3, &v43, v42 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v43 == v42)
            {
              goto LABEL_81;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_81:
          v44 = WTF::fastMalloc(0x18);
          *v44 = &unk_1F10EE998;
          v44[1] = v41;
          v44[2] = v3;
          *v68 = v44;
          WebCore::SharedWorkerObjectConnection::fetchScriptInClient();
          result = *v68;
          *v68 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }

          if ((v79 & 1) == 0)
          {
            goto LABEL_91;
          }

          v6 = v78;
        }

        v78 = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v9);
        }

        result = *buf;
        *buf = 0;
        if (!result)
        {
          goto LABEL_91;
        }

        goto LABEL_89;
      }

      if (v68[40] & 1) != 0 && (v65)
      {
        v22 = *v68;
        *v68 = 0;
        *buf = v22;
        v23 = *&v68[8];
        *(v6 + 8) = *&v68[8];
        *(v6 + 24) = *&v68[24];
        *&v68[8] = v23 & 0xFFFFFFFE;
        *(v6 + 40) = *v64;
        WORD4(v77) = v66[0];
        v6 = v66[1];
        v78 = v66[1];
        v24 = 1;
        goto LABEL_69;
      }
    }

    v24 = 0;
    buf[0] = 0;
    LOBYTE(v79) = 0;
    goto LABEL_70;
  }

  *buf = *v66;
  *&buf[16] = *v68;
  *v76 = *&v68[16];
  v77 = *&v68[32];
  *&v68[16] &= ~1u;
  v78 = v69;
  v79 = v70;
  v80 = v71;
  cf = v72;
  v82 = v73;
  v83 = 1;
  result = WebCore::SharedWorkerObjectConnection::notifyWorkerObjectOfLoadCompletion();
  if (v83)
  {
    v11 = cf;
    cf = 0;
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = v78;
    v78 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }

    v13 = *&buf[24];
    *&buf[24] = 0;
    if (!v13)
    {
LABEL_65:
      result = *&buf[16];
      *&buf[16] = 0;
      if (result)
      {
LABEL_89:
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v9);
        }
      }

      goto LABEL_91;
    }

LABEL_63:
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v9);
    }

    goto LABEL_65;
  }

LABEL_91:
  if (*(this + 2) == 1)
  {
    return (*(*this + 8))(this, v9, v10);
  }

  --*(this + 2);
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages13WebFrameProxy45FindFocusableElementDescendingIntoRemoteFrameENS2_10ConnectionEN6WebKit13WebFrameProxyES9_FvN7WebCore14FocusDirectionERKNSA_14FocusEventDataEONS_17CompletionHandlerIFvNSA_25FoundElementInRemoteFrameEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EE880;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages13WebFrameProxy45FindFocusableElementDescendingIntoRemoteFrameENS2_10ConnectionEN6WebKit13WebFrameProxyES9_FvN7WebCore14FocusDirectionERKNSA_14FocusEventDataEONS_17CompletionHandlerIFvNSA_25FoundElementInRemoteFrameEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EE880;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WebCore::ClientOrigin,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::WebLockIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::UUID>,WTF::String>>(uint64_t a1, IPC::Decoder *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a2, v27);
  if ((v33 & 1) == 0)
  {
    v13 = *a2;
    v14 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v15 = *(a2 + 3);
    v16 = !v15 || v14 == 0;
    if (v16 || ((*(*v15 + 16))(v15, v13), (v33 & 1) == 0))
    {
      *a1 = 0;
      *(a1 + 128) = 0;
      goto LABEL_25;
    }
  }

  result = IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v23);
  if ((v24 & 1) == 0)
  {
    goto LABEL_32;
  }

  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a2, v34);
  if ((v35 & 1) == 0)
  {
LABEL_31:
    v5 = *a2;
    v19 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v19)
    {
      result = (*(*result + 16))(result, v5);
    }

LABEL_32:
    v12 = 0;
    *a1 = 0;
    *(a1 + 128) = 0;
    goto LABEL_33;
  }

  result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v25);
  if ((v26 & 1) == 0)
  {
    v5 = *a2;
    v22 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (!result || !v22 || (result = (*(*result + 16))(result, v5), (v26 & 1) == 0))
    {
      v12 = 0;
      *a1 = 0;
      goto LABEL_14;
    }
  }

  if ((v33 & 1) == 0 || (v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  *a1 = 0;
  *(a1 + 24) = -1;
  v6 = v29;
  if (!v29)
  {
    v7 = *v27;
    v27[0] = 0;
    v27[1] = 0;
    *a1 = v7;
    *(a1 + 16) = v28;
LABEL_9:
    *(a1 + 24) = v6;
    goto LABEL_10;
  }

  if (v29 != 255)
  {
    *a1 = *v27;
    goto LABEL_9;
  }

LABEL_10:
  *(a1 + 32) = 0;
  *(a1 + 56) = -1;
  v8 = v32;
  if (v32)
  {
    if (v32 == 255)
    {
      goto LABEL_13;
    }

    *(a1 + 32) = *v30;
  }

  else
  {
    v9 = *v30;
    v30[0] = 0;
    v30[1] = 0;
    *(a1 + 32) = v9;
    *(a1 + 48) = v31;
  }

  *(a1 + 56) = v8;
LABEL_13:
  v10 = v34[0];
  v11 = v34[1];
  *(a1 + 64) = v23;
  *(a1 + 80) = v10;
  *(a1 + 96) = v11;
  *(a1 + 112) = v25;
  v12 = 1;
LABEL_14:
  *(a1 + 128) = v12;
  if ((v33 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_33:
  if (!v32)
  {
    v20 = v30[1];
    v30[1] = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v5);
    }

    result = v30[0];
    v30[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v5);
    }
  }

  v32 = -1;
  if (v29)
  {
    goto LABEL_47;
  }

  v21 = v27[1];
  v27[1] = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v5);
  }

  result = v27[0];
  v27[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v5);
    if (v12)
    {
      return result;
    }
  }

  else
  {
LABEL_47:
    if (v12)
    {
      return result;
    }
  }

LABEL_25:
  v17 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v17)
  {
    v18 = *(*result + 16);

    return v18();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20WebLockRegistryProxy16AbortLockRequestENS2_10ConnectionEN6WebKit20WebLockRegistryProxyES9_FvON7WebCore12ClientOriginENSA_16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_21WebLockIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEENSD_INS_4UUIDEEEONS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EE8A8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20WebLockRegistryProxy16AbortLockRequestENS2_10ConnectionEN6WebKit20WebLockRegistryProxyES9_FvON7WebCore12ClientOriginENSA_16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_21WebLockIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEENSD_INS_4UUIDEEEONS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EE8A8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20WebLockRegistryProxy16AbortLockRequestENS2_10ConnectionEN6WebKit20WebLockRegistryProxyES9_FvON7WebCore12ClientOriginENSA_16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_21WebLockIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEENSD_INS_4UUIDEEEONS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3700;
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

mpark *IPC::ArgumentCoder<std::tuple<WebCore::ClientOrigin>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  result = IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a1, v13);
  if ((v19 & 1) == 0)
  {
    v10 = *a1;
    v11 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    v12 = !result || v11 == 0;
    if (v12 || (result = (*(*result + 16))(result, v10), (v19 & 1) == 0))
    {
      *a2 = 0;
      *(a2 + 64) = 0;
      return result;
    }
  }

  *a2 = 0;
  *(a2 + 24) = -1;
  v6 = v15;
  if (v15)
  {
    if (v15 == 255)
    {
      goto LABEL_5;
    }

    *a2 = *v13;
  }

  else
  {
    v7 = *v13;
    v13[0] = 0;
    v13[1] = 0;
    *a2 = v7;
    *(a2 + 16) = v14;
  }

  *(a2 + 24) = v6;
LABEL_5:
  *(a2 + 32) = 0;
  *(a2 + 56) = -1;
  v8 = v18;
  if (v18)
  {
    if (v18 != 255)
    {
      *(a2 + 32) = v16;
      *(a2 + 56) = v8;
    }

    *(a2 + 64) = 1;
  }

  else
  {
    *(a2 + 32) = v16;
    *(a2 + 48) = v17;
    *(a2 + 56) = 0;
    *(a2 + 64) = 1;
    v16 = 0uLL;
  }

  v18 = -1;
  if (!v6)
  {
    v9 = v13[1];
    v13[1] = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v5);
    }

    result = v13[0];
    v13[0] = 0;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20WebLockRegistryProxy8SnapshotENS2_10ConnectionEN6WebKit20WebLockRegistryProxyES9_FvON7WebCore12ClientOriginEONS_17CompletionHandlerIFvONSA_22WebLockManagerSnapshotEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EE8D0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20WebLockRegistryProxy8SnapshotENS2_10ConnectionEN6WebKit20WebLockRegistryProxyES9_FvON7WebCore12ClientOriginEONS_17CompletionHandlerIFvONSA_22WebLockManagerSnapshotEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EE8D0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20WebLockRegistryProxy8SnapshotENS2_10ConnectionEN6WebKit20WebLockRegistryProxyES9_FvON7WebCore12ClientOriginEONS_17CompletionHandlerIFvONSA_22WebLockManagerSnapshotEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EE4callESF_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3701;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::VectorArgumentCoder<false,WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, a2);
  IPC::VectorArgumentCoder<false,WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::WebLockManagerSnapshot::Info,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v5, a2 + 16);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages28WebPermissionControllerProxy5QueryENS2_10ConnectionEN6WebKit28WebPermissionControllerProxyES9_FvRKN7WebCore12ClientOriginERKNSA_20PermissionDescriptorENSt3__18optionalINS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSA_21PermissionQuerySourceEONS_17CompletionHandlerIFvNSI_INSA_15PermissionStateEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EE8F8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages28WebPermissionControllerProxy5QueryENS2_10ConnectionEN6WebKit28WebPermissionControllerProxyES9_FvRKN7WebCore12ClientOriginERKNSA_20PermissionDescriptorENSt3__18optionalINS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSA_21PermissionQuerySourceEONS_17CompletionHandlerIFvNSI_INSA_15PermissionStateEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EE8F8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages28WebPermissionControllerProxy5QueryENS2_10ConnectionEN6WebKit28WebPermissionControllerProxyES9_FvRKN7WebCore12ClientOriginERKNSA_20PermissionDescriptorENSt3__18optionalINS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSA_21PermissionQuerySourceEONS_17CompletionHandlerIFvNSI_INSA_15PermissionStateEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EE4callESS_(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3911;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  if ((v2 & 0x100) != 0)
  {
    v11 = 1;
    IPC::Encoder::operator<<<BOOL>(v5, &v11);
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, v2);
  }

  else
  {
    v12 = 0;
    IPC::Encoder::operator<<<BOOL>(v5, &v12);
  }

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

uint64_t IPC::Decoder::decode<std::tuple<WebCore::ScreenOrientationType>>(uint64_t *a1)
{
  v2 = IPC::Decoder::decode<WebKit::AuthenticationChallengeDisposition>(a1);
  v3 = v2 & 0x100;
  if ((v2 & 0x100) == 0)
  {
    v6 = *a1;
    v7 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v8 = a1[3];
    if (v8 && v7 != 0)
    {
      v11 = v2;
      v10 = v2 & 0x100;
      (*(*v8 + 16))(v8, v6);
      v3 = v10;
      LOBYTE(v2) = v11;
    }
  }

  v4 = v2;
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v3;
}

unsigned int **WTF::RefCounted<WebKit::WebScreenOrientationManagerProxy>::deref(unsigned int **result)
{
  if (*result == 1)
  {
    WebKit::WebScreenOrientationManagerProxy::~WebScreenOrientationManagerProxy(result - 2);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebScreenOrientationManagerProxy4LockENS2_10ConnectionEN6WebKit32WebScreenOrientationManagerProxyES9_FvN7WebCore25ScreenOrientationLockTypeEONS_17CompletionHandlerIFvONSt3__18optionalINSA_9ExceptionEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EE920;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebScreenOrientationManagerProxy4LockENS2_10ConnectionEN6WebKit32WebScreenOrientationManagerProxyES9_FvN7WebCore25ScreenOrientationLockTypeEONS_17CompletionHandlerIFvONSt3__18optionalINSA_9ExceptionEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EE920;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebScreenOrientationManagerProxy4LockENS2_10ConnectionEN6WebKit32WebScreenOrientationManagerProxyES9_FvN7WebCore25ScreenOrientationLockTypeEONS_17CompletionHandlerIFvONSt3__18optionalINSA_9ExceptionEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSH_EE4callESH_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3979;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::Exception>,void>::encode<IPC::Encoder,std::optional<WebCore::Exception>>(v5, a2);
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

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages32WebScreenOrientationManagerProxy18CurrentOrientationEN6WebKit32WebScreenOrientationManagerProxyES8_FvONS_17CompletionHandlerIFvN7WebCore21ScreenOrientationTypeEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSB_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10EE948;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages32WebScreenOrientationManagerProxy18CurrentOrientationEN6WebKit32WebScreenOrientationManagerProxyES8_FvONS_17CompletionHandlerIFvN7WebCore21ScreenOrientationTypeEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSB_EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10EE948;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  std::unique_ptr<IPC::Encoder>::reset[abi:sn200100]((a1 + 8), 0);

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC24handleMessageSynchronousIN8Messages32WebScreenOrientationManagerProxy18CurrentOrientationEN6WebKit32WebScreenOrientationManagerProxyES8_FvONS_17CompletionHandlerIFvN7WebCore21ScreenOrientationTypeEEEEEEEbRNS2_10ConnectionERNS2_7DecoderERNS_9UniqueRefINS2_7EncoderEEEPT0_MT1_T2_EUlDpOT_E_vJSB_EE4callESB_(uint64_t a1, char a2)
{
  v2 = (a1 + 8);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(*(a1 + 8), a2);
  v3 = v2[1];

  return IPC::Connection::sendMessageImpl(v3, v2, 0, 0);
}

_DWORD *WTF::RefCounted<WebKit::WebSharedWorkerContextManagerConnection>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::WebSharedWorkerContextManagerConnection::~WebSharedWorkerContextManagerConnection((result - 8));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::WorkerOptions>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<WebCore::WorkerOptions,void>::decode(a2, a1);
  if ((*(a1 + 16) & 1) == 0)
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages39WebSharedWorkerContextManagerConnection16PostConnectEventENS2_10ConnectionEN6WebKit39WebSharedWorkerContextManagerConnectionEN7WebCore26SharedWorkerContextManager10ConnectionEFvNS_23ObjectIdentifierGenericINSA_26SharedWorkerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONSt3__14pairINSA_21MessagePortIdentifierESK_EEONS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EE970;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages39WebSharedWorkerContextManagerConnection16PostConnectEventENS2_10ConnectionEN6WebKit39WebSharedWorkerContextManagerConnectionEN7WebCore26SharedWorkerContextManager10ConnectionEFvNS_23ObjectIdentifierGenericINSA_26SharedWorkerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONSt3__14pairINSA_21MessagePortIdentifierESK_EEONS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EE970;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages39WebSharedWorkerContextManagerConnection16PostConnectEventENS2_10ConnectionEN6WebKit39WebSharedWorkerContextManagerConnectionEN7WebCore26SharedWorkerContextManager10ConnectionEFvNS_23ObjectIdentifierGenericINSA_26SharedWorkerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONSt3__14pairINSA_21MessagePortIdentifierESK_EEONS_6StringEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3980;
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

WTF *IPC::ArgumentCoder<std::tuple<WebKit::WebPreferencesStore>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, __n128 a4@<Q1>)
{
  result = IPC::ArgumentCoder<WebKit::WebPreferencesStore,void>::decode(a1, v12, a3, a4);
  if (v19 & 1) != 0 || ((v9 = *a1, v10 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v11 = v10 == 0) : (v11 = 1), !v11 && (result = (*(*result + 16))(result, v9), (v19)))
  {
    *a2 = v12[0];
    *(a2 + 8) = v12[1];
    *(a2 + 16) = v13;
    *(a2 + 20) = v14;
    *(a2 + 24) = v15;
    v7 = v16;
    *(a2 + 40) = v17;
    *(a2 + 44) = v18;
    v8 = 1;
    *(a2 + 32) = v7;
  }

  else
  {
    v8 = 0;
    *a2 = 0;
  }

  *(a2 + 48) = v8;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages31WebSharedWorkerObjectConnection19FetchScriptInClientENS2_10ConnectionEN6WebKit31WebSharedWorkerObjectConnectionEN7WebCore28SharedWorkerObjectConnectionEFvONS_3URLENSA_16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_32SharedWorkerObjectIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONSA_13WorkerOptionsEONS_17CompletionHandlerIFvONSA_17WorkerFetchResultEONSA_24WorkerInitializationDataEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SR_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EE998;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages31WebSharedWorkerObjectConnection19FetchScriptInClientENS2_10ConnectionEN6WebKit31WebSharedWorkerObjectConnectionEN7WebCore28SharedWorkerObjectConnectionEFvONS_3URLENSA_16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_32SharedWorkerObjectIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONSA_13WorkerOptionsEONS_17CompletionHandlerIFvONSA_17WorkerFetchResultEONSA_24WorkerInitializationDataEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SR_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EE998;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages31WebSharedWorkerObjectConnection19FetchScriptInClientENS2_10ConnectionEN6WebKit31WebSharedWorkerObjectConnectionEN7WebCore28SharedWorkerObjectConnectionEFvONS_3URLENSA_16ProcessQualifiedINS_23ObjectIdentifierGenericINSA_32SharedWorkerObjectIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEONSA_13WorkerOptionsEONS_17CompletionHandlerIFvONSA_17WorkerFetchResultEONSA_24WorkerInitializationDataEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SR_EE4callESP_SR_(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3981;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<WebCore::WorkerFetchResult,void>::encode(v7, a2);
  IPC::ArgumentCoder<WebCore::WorkerInitializationData,void>::encode(v7, a3);
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

void WebKit::WebSharedWorkerServerConnection::didReceiveMessage(WebKit::NetworkProcess **this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  WebKit::WebSharedWorkerServerConnection::sharedPreferencesForWebProcess(this, a2, v27);
  if (v27[24] == 1 && (v27[15] & 0x20) != 0)
  {
    ++*(this + 6);
    v9 = *(a3 + 25);
    if (v9 > 0xC59)
    {
      if (v9 == 3162)
      {
        IPC::Decoder::decode<std::tuple<WebCore::SharedWorkerKey,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
        if (LOBYTE(v40[0]) != 1)
        {
          goto LABEL_34;
        }

        WebKit::WebSharedWorkerServerConnection::sharedWorkerObjectIsGoingAway(this, buf, v39, *(&v39 + 1));
      }

      else
      {
        if (v9 != 3163)
        {
          goto LABEL_16;
        }

        IPC::Decoder::decode<std::tuple<WebCore::SharedWorkerKey,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
        if (LOBYTE(v40[0]) != 1)
        {
          goto LABEL_34;
        }

        WebKit::WebSharedWorkerServerConnection::suspendForBackForwardCache(this, buf, v39, *(&v39 + 1));
      }

LABEL_32:
      if ((v40[0] & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (v9 != 3160)
    {
      if (v9 == 3161)
      {
        IPC::Decoder::decode<std::tuple<WebCore::SharedWorkerKey,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(buf, a3);
        if (LOBYTE(v40[0]) != 1)
        {
          goto LABEL_34;
        }

        WebKit::WebSharedWorkerServerConnection::resumeForBackForwardCache(this, buf, v39, *(&v39 + 1));
        goto LABEL_32;
      }

LABEL_16:
      v12 = qword_1ED6416C8;
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
        v36 = v19;
        v37 = 2048;
        v38 = v20;
        _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      v10 = *a3;
      v11 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v13 = *(a3 + 3);
      if (v13 && v11)
      {
        (*(*v13 + 16))(v13, v10);
      }

      goto LABEL_34;
    }

    IPC::Decoder::decode<WebCore::SharedWorkerKey>(v44, a3);
    if (v45 == 1)
    {
      IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3, &v28);
      if (v29 != 1 || (IPC::ArgumentCoder<std::pair<WebCore::MessagePortIdentifier,WebCore::MessagePortIdentifier>,void>::decode<IPC::Decoder>(a3, v30), (v31 & 1) == 0) && ((v14 = *a3, v21 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v22 = *(a3 + 3)) == 0) || !v21 || ((*(*v22 + 16))(v22, v14), (v31 & 1) == 0)))
      {
        buf[0] = 0;
        v43 = 0;
        if ((v45 & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_49;
      }

      IPC::ArgumentCoder<WebCore::WorkerOptions,void>::decode(a3, &v32);
      if ((v34 & 1) == 0)
      {
        v14 = *a3;
        v25 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v26 = *(a3 + 3);
        if (v26 && v25)
        {
          (*(*v26 + 16))(v26, v14);
        }

        v15 = 0;
        buf[0] = 0;
LABEL_28:
        v43 = v15;
        if ((v45 & 1) == 0)
        {
LABEL_50:
          if (v15)
          {
LABEL_51:
            WebKit::WebSharedWorkerServerConnection::requestSharedWorker(this, buf, v39, *(&v39 + 1), v40, &v41);
            if ((v43 & 1) == 0)
            {
LABEL_34:
              if (*(this + 6) == 1)
              {
                (*(*this + 1))(this, v10, v11);
              }

              else
              {
                --*(this + 6);
              }

              return;
            }

            v23 = v42;
            v42 = 0;
            if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v23, v10);
            }

LABEL_33:
            WebCore::SharedWorkerKey::~SharedWorkerKey(buf, v10);
            goto LABEL_34;
          }

LABEL_55:
          v10 = *a3;
          v11 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v24 = *(a3 + 3);
          if (!v24)
          {
            goto LABEL_34;
          }

          if (!v11)
          {
            goto LABEL_34;
          }

          (*(*v24 + 16))(v24, v10);
          if ((v43 & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_51;
        }

LABEL_49:
        WebCore::SharedWorkerKey::~SharedWorkerKey(v44, v14);
        v15 = v43;
        goto LABEL_50;
      }

      if (v45 & 1) != 0 && (v29 & 1) != 0 && (v31)
      {
        std::__tuple_leaf<0ul,WebCore::SharedWorkerKey,false>::__tuple_leaf[abi:sn200100]<WebCore::SharedWorkerKey,0>(buf, v44);
        v39 = v28;
        v40[0] = v30[0];
        v40[1] = v30[1];
        v41 = v32;
        v42 = v33;
        v15 = 1;
        goto LABEL_28;
      }

      __break(1u);
    }

    buf[0] = 0;
    v43 = 0;
    goto LABEL_55;
  }

  v5 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a3 + 25);
    if (v16 >= 0x107F)
    {
      v16 = 4223;
    }

    v17 = (&IPC::Detail::messageDescriptions)[3 * v16];
    *buf = 136315138;
    v36 = v17;
    _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver WebSharedWorkerServerConnection", buf, 0xCu);
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

_DWORD *WebKit::WebSharedWorkerServerToContextConnection::didReceiveMessage(WebKit::WebSharedWorkerServerToContextConnection *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = *(this + 4);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      if ((*(v7 + 287) & 0x20) != 0)
      {
        v13 = (this + 24);
        ++*(this + 6);
        v14 = *(a3 + 25);
        if (v14 == 3165)
        {
          v33 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
          if (v34)
          {
            WebKit::WebSharedWorkerServerToContextConnection::sharedWorkerTerminated(this, v33);
          }

          return WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref(v13);
        }

        if (v14 != 3164)
        {
          v35 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            if (v14 >= 0x107F)
            {
              v41 = 4223;
            }

            else
            {
              v41 = v14;
            }

            v42 = (&IPC::Detail::messageDescriptions)[3 * v41];
            v43 = *(a3 + 7);
            *buf = 136315394;
            *&buf[4] = v42;
            *&buf[12] = 2048;
            *&buf[14] = v43;
            _os_log_error_impl(&dword_19D52D000, v35, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
          }

          goto LABEL_40;
        }

        v15 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v16 & 1) == 0 || (v17 = v15, IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v55), (v56 & 1) == 0) && ((v44 = *a3, v45 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v46 = *(a3 + 3)) == 0) || !v45 || ((*(*v46 + 16))(v46, v44), (v56 & 1) == 0)))
        {
LABEL_40:
          v36 = *a3;
          v37 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v38 = *(a3 + 3);
          if (v38 && v37)
          {
            (*(*v38 + 16))(v38, v36);
          }

          return WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref(v13);
        }

        v18 = *(a3 + 1);
        v19 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v20 = *a3;
        v21 = v19 - *a3;
        v22 = v18 >= v21;
        v23 = v18 - v21;
        if (v22 && v23 > 3)
        {
          *(a3 + 2) = v19 + 1;
          if (!v19)
          {
            goto LABEL_62;
          }

          v14 = *v19;
          v24 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
          if (v18 >= v24 - v20 && v18 - (v24 - v20) > 3)
          {
            *(a3 + 2) = v24 + 1;
            if (v24)
            {
              v3 = *v24;
              IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v57);
              if ((v58 & 1) == 0)
              {
                v20 = *a3;
                v47 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v48 = *(a3 + 3);
                if (!v48 || !v47 || ((*(*v48 + 16))(v48, v20), (v58 & 1) == 0))
                {
                  v28 = 0;
                  buf[0] = 0;
                  v62 = 0;
                  goto LABEL_25;
                }
              }

              v25 = *(a3 + 1);
              v26 = *(a3 + 2);
              v20 = *a3;
              if (v25 <= &v26[-*a3])
              {
                *a3 = 0;
                *(a3 + 1) = 0;
                v51 = *(a3 + 3);
                if (v51)
                {
                  if (v25)
                  {
                    (*(*v51 + 16))(v51);
                    v25 = *(a3 + 1);
                  }
                }

                else
                {
                  v25 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v26 + 1;
                if (v26)
                {
                  v4 = *v26;
                  if (v4 < 2)
                  {
                    if ((v56 & 1) == 0)
                    {
                      __break(1u);
                    }

                    v27 = v55;
                    v55 = 0;
                    *buf = v17;
                    *&buf[8] = v27;
                    *&buf[16] = v14;
                    *&buf[20] = v3;
                    v60 = v57;
                    v61 = v4;
                    v28 = 1;
                    v62 = 1;
                    goto LABEL_25;
                  }

                  goto LABEL_69;
                }
              }

              *a3 = 0;
              *(a3 + 1) = 0;
              v52 = *(a3 + 3);
              if (v52)
              {
                if (v25)
                {
                  (*(*v52 + 16))(v52);
                  v20 = *a3;
                  v25 = *(a3 + 1);
LABEL_69:
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v53 = *(a3 + 3);
                  if (v53 && v25)
                  {
                    (*(*v53 + 16))(v53, v20);
                  }

                  buf[0] = 0;
                  v62 = 0;
                  if (v58)
                  {
                    v54 = v57;
                    v57 = 0;
                    if (v54)
                    {
                      if (atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v54, v20);
                      }
                    }
                  }

                  v28 = 0;
                  goto LABEL_25;
                }
              }

              else
              {
                v25 = 0;
              }

              v20 = 0;
              goto LABEL_69;
            }

LABEL_62:
            *a3 = 0;
            *(a3 + 1) = 0;
            v50 = *(a3 + 3);
            if (v50 && v18)
            {
              (*(*v50 + 16))(v50);
            }

            v28 = 0;
            buf[0] = 0;
            v62 = 0;
LABEL_25:
            if (v56)
            {
              v29 = v55;
              v55 = 0;
              if (v29)
              {
                if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v29, v20);
                }
              }
            }

            if (v28)
            {
              WebKit::WebSharedWorkerServerToContextConnection::postErrorToWorkerObject(this, *buf, &buf[8], v14, v3, &v60, v4 & 1);
              if (v62)
              {
                v31 = v60;
                v60 = 0;
                if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v31, v30);
                }

                v32 = *&buf[8];
                *&buf[8] = 0;
                if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v32, v30);
                }
              }

              return WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref(v13);
            }

            goto LABEL_40;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v49 = *(a3 + 3);
        if (v49)
        {
          if (v18)
          {
            (*(*v49 + 16))(v49);
            v20 = *a3;
            v18 = *(a3 + 1);
            goto LABEL_62;
          }
        }

        else
        {
          v18 = 0;
        }

        v20 = 0;
        goto LABEL_62;
      }
    }
  }

  v8 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v39 = *(a3 + 25);
    if (v39 >= 0x107F)
    {
      v39 = 4223;
    }

    v40 = (&IPC::Detail::messageDescriptions)[3 * v39];
    *buf = 136315138;
    *&buf[4] = v40;
    _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver WebSharedWorkerServerToContextConnection", buf, 0xCu);
  }

  v9 = *a3;
  v10 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  result = *(a3 + 3);
  if (result)
  {
    if (v10)
    {
      return (*(*result + 16))(result, v9);
    }
  }

  return result;
}

atomic_ullong *WebKit::WebTransportSession::didReceiveMessage(WebKit::WebTransportSession *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = (this + 32);
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
  if (v8 > 0xC67)
  {
    if (v8 == 3176)
    {
      v26 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v27)
      {
        WebKit::WebTransportSession::receiveIncomingUnidirectionalStream(this, v26);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebTransportSession,(WTF::DestructionThread)2>::deref(v5);
    }

    if (v8 == 3177)
    {
      v15 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v16 & 1) == 0 || (v17 = v15, IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, &v41), (v42 & 1) == 0) && ((v35 = *a3, v36 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v37 = *(a3 + 3)) == 0) || !v36 || ((*(*v37 + 16))(v37, v35), (v42 & 1) == 0)))
      {
LABEL_38:
        v21 = *a3;
        v22 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v23 = *(a3 + 3);
        if (v23 && v22)
        {
          (*(*v23 + 16))(v23, v21);
        }

        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebTransportSession,(WTF::DestructionThread)2>::deref(v5);
      }

      v9 = *(a3 + 1);
      v18 = *(a3 + 2);
      v11 = *a3;
      if (v9 > &v18[-*a3])
      {
        *(a3 + 2) = v18 + 1;
        if (v18)
        {
          v19 = *v18;
          if (v19 < 2)
          {
            IPC::Decoder::decode<std::optional<WebCore::Exception>>(v43, a3);
            if (v46 != 1)
            {
              goto LABEL_38;
            }

            if (v42)
            {
              *buf = v17;
              *&buf[8] = v41;
              v48[0] = v19;
              LOBYTE(v49) = 0;
              v51 = 0;
              if (v45 == 1)
              {
                LOBYTE(v49) = v43[0];
                v50 = v44;
                v51 = 1;
              }

              v52 = 1;
              WebKit::WebTransportSession::streamReceiveBytes(this, v17, *&buf[8], *&buf[16], v19 & 1, &v49);
              if ((v52 & 1) != 0 && v51 == 1)
              {
                v14 = v50;
                v50 = 0;
                if (v14)
                {
                  goto LABEL_35;
                }
              }

              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebTransportSession,(WTF::DestructionThread)2>::deref(v5);
            }

LABEL_50:
            __break(1u);
          }

          goto LABEL_64;
        }

LABEL_61:
        *a3 = 0;
        *(a3 + 1) = 0;
        v39 = *(a3 + 3);
        if (v39)
        {
          if (v9)
          {
            (*(*v39 + 16))(v39);
            v11 = *a3;
            v9 = *(a3 + 1);
            goto LABEL_64;
          }
        }

        else
        {
          v9 = 0;
        }

        v11 = 0;
LABEL_64:
        *a3 = 0;
        *(a3 + 1) = 0;
        v40 = *(a3 + 3);
        if (v40 && v9)
        {
          (*(*v40 + 16))(v40, v11);
        }

        goto LABEL_38;
      }

LABEL_59:
      *a3 = 0;
      *(a3 + 1) = 0;
      v38 = *(a3 + 3);
      if (v38)
      {
        if (v9)
        {
          (*(*v38 + 16))(v38);
          v9 = *(a3 + 1);
        }
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_61;
    }

LABEL_37:
    v20 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v8 >= 0x107F)
      {
        v29 = 4223;
      }

      else
      {
        v29 = v8;
      }

      v30 = (&IPC::Detail::messageDescriptions)[3 * v29];
      v31 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v30;
      *&buf[12] = 2048;
      *&buf[14] = v31;
      _os_log_error_impl(&dword_19D52D000, v20, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    goto LABEL_38;
  }

  if (v8 == 3174)
  {
    v24 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
    if (v25)
    {
      WebKit::WebTransportSession::receiveBidirectionalStream(this, v24);
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebTransportSession,(WTF::DestructionThread)2>::deref(v5);
  }

  if (v8 != 3175)
  {
    goto LABEL_37;
  }

  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, &v41);
  if ((v42 & 1) == 0)
  {
    v32 = *a3;
    v33 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v34 = *(a3 + 3);
    if (!v34)
    {
      goto LABEL_38;
    }

    if (!v33)
    {
      goto LABEL_38;
    }

    (*(*v34 + 16))(v34, v32);
    if ((v42 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v9 = *(a3 + 1);
  v10 = *(a3 + 2);
  v11 = *a3;
  if (v9 <= &v10[-*a3])
  {
    goto LABEL_59;
  }

  *(a3 + 2) = v10 + 1;
  if (!v10)
  {
    goto LABEL_61;
  }

  v12 = *v10;
  if (v12 >= 2)
  {
    goto LABEL_64;
  }

  IPC::Decoder::decode<std::optional<WebCore::Exception>>(v43, a3);
  if (v46 != 1)
  {
    goto LABEL_38;
  }

  if ((v42 & 1) == 0)
  {
    goto LABEL_50;
  }

  *buf = v41;
  buf[16] = v12;
  v48[0] = 0;
  LOBYTE(v50) = 0;
  if (v45 == 1)
  {
    v48[0] = v43[0];
    v49 = v44;
    LOBYTE(v50) = 1;
  }

  v51 = 1;
  WebKit::WebTransportSession::receiveDatagram(this, *buf, *&buf[8], v12 & 1, v48);
  if ((v51 & 1) != 0 && v50 == 1)
  {
    v14 = v49;
    v49 = 0;
    if (v14)
    {
LABEL_35:
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebTransportSession,(WTF::DestructionThread)2>::deref(v5);
}

uint64_t WebKit::AuthenticationManager::didReceiveMessage(WebKit::AuthenticationManager *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 3) + 8);
  if (v3)
  {
    atomic_fetch_add((v3 + 144), 1u);
    v6 = *(a3 + 25);
    if (v6 == 2)
    {
      v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v8)
      {
        v9 = v7;
        v10 = IPC::Decoder::decode<WebKit::AuthenticationChallengeDisposition>(a3);
        if ((v10 & 0x100) != 0)
        {
          v11 = v10;
          IPC::ArgumentCoder<WebCore::Credential,void>::decode(a3, &v27);
          if (v30)
          {
            *buf = v9;
            buf[8] = v11;
            *&v33[2] = v27;
            v34 = v28;
            cf = v29;
            v36 = 1;
            WebKit::AuthenticationManager::completeAuthenticationChallenge(this, v9, v11, &v33[2]);
            if (v36)
            {
              v13 = cf;
              cf = 0;
              if (v13)
              {
                CFRelease(v13);
              }

              v14 = *&v33[10];
              *&v33[10] = 0;
              if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v14, v12);
              }

              v15 = *&v33[2];
              *&v33[2] = 0;
              if (v15)
              {
                if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v15, v12);
                }
              }
            }

            return WebKit::AuthenticationManager::deref(this);
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
        }
      }
    }

    else
    {
      v16 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v6 >= 0x107F)
        {
          v21 = 4223;
        }

        else
        {
          v21 = v6;
        }

        v22 = (&IPC::Detail::messageDescriptions)[3 * v21];
        v23 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v22;
        v32 = 2048;
        *v33 = v23;
        _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }
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

    return WebKit::AuthenticationManager::deref(this);
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t IPC::handleMessageAsync<Messages::AuxiliaryProcess::MainThreadPing,IPC::Connection,WebKit::AuxiliaryProcess,WebKit::AuxiliaryProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v6)
  {
    v7 = result;
    while (1)
    {
      v8 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v10 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v10, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v8)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_5:
    v9 = WTF::fastMalloc(0x18);
    *v9 = &unk_1F10EEA10;
    v9[1] = v7;
    v9[2] = a1;
    v11 = v9;
    WebKit::AuxiliaryProcess::mainThreadPing(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::AuxiliaryProcess::PreferenceDidUpdate,IPC::Connection,WebKit::AuxiliaryProcess,WebKit::AuxiliaryProcess,void ()(WTF::String const&,WTF::String const&,std::optional<WTF::String> const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v28);
  if ((v29 & 1) == 0)
  {
    v17 = *a1;
    v18 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v19 = *(a1 + 3);
    v20 = !v19 || v18 == 0;
    if (v20 || ((*(*v19 + 16))(v19, v17), (v29 & 1) == 0))
    {
LABEL_27:
      v12 = *a1;
      v13 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      result = *(a1 + 3);
      if (result && v13)
      {
        return (*(*result + 16))(result, v12);
      }

      return result;
    }
  }

  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v30);
  if (v31 & 1) != 0 || (v4 = *a1, v21 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v22 = *(a1 + 3)) != 0) && v21 && ((*(*v22 + 16))(v22, v4), (v31))
  {
    IPC::ArgumentCoder<std::optional<WTF::String>,void>::decode<IPC::Decoder>(a1, &v32);
    if ((v34 & 1) == 0)
    {
      goto LABEL_31;
    }

    do
    {
      if (v29 & 1) != 0 && (v31)
      {
        v5 = v28;
        v28 = 0;
        v23 = v5;
        v24 = v30;
        LOBYTE(v25) = 0;
        v26 = 0;
        if (v33)
        {
          v25 = v32;
          v6 = 1;
          v26 = 1;
        }

        else
        {
          v6 = 1;
        }

        v27 = 1;
        goto LABEL_10;
      }

      __break(1u);
LABEL_31:
      v4 = *a1;
      v14 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v15 = *(a1 + 3);
      if (!v15)
      {
        break;
      }

      if (!v14)
      {
        break;
      }

      (*(*v15 + 16))(v15, v4);
    }

    while ((v34 & 1) != 0);
    LOBYTE(v23) = 0;
    v27 = 0;
    if (v31)
    {
      v16 = v30;
      v30 = 0;
      if (v16)
      {
        if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v4);
        }
      }
    }

    v6 = 0;
  }

  else
  {
    v6 = 0;
    LOBYTE(v23) = 0;
    v27 = 0;
  }

LABEL_10:
  if ((v29 & 1) != 0 && (v7 = v28, v28 = 0, v7) && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
    if ((v6 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_27;
  }

  result = (*(*a2 + 80))(a2, &v23, &v24, &v25);
  if (v27)
  {
    if (v26 == 1)
    {
      v10 = v25;
      v25 = 0;
      if (v10)
      {
        if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v9);
        }
      }
    }

    v11 = v24;
    v24 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    result = v23;
    v23 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v9);
      }
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcess::didReceiveSyncMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a1 + 48;
  (**a1)(a1);
  v11 = IPC::MessageReceiverMap::dispatchSyncMessage(v8, a2, a3, a4);
  if ((v11 & 1) == 0)
  {
    v12 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a3 + 50);
      if (v15 >= 0x107F)
      {
        v15 = 4223;
      }

      v16 = (&IPC::Detail::messageDescriptions)[3 * v15];
      v17 = *(a3 + 56);
      v18 = 136315394;
      v19 = v16;
      v20 = 2048;
      v21 = v17;
      _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", &v18, 0x16u);
    }

    v9 = *a3;
    v10 = *(a3 + 8);
    *a3 = 0;
    *(a3 + 8) = 0;
    v13 = *(a3 + 24);
    if (v13 && v10)
    {
      (*(*v13 + 16))(v13, v9);
    }
  }

  (*(*a1 + 8))(a1, v9, v10);
  return v11;
}

uint64_t WebKit::DigitalCredentialsCoordinator::didReceiveMessage(WebKit::DigitalCredentialsCoordinator *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  ++*(this + 2);
  v5 = *(a3 + 25);
  if (v5 == 7)
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
          goto LABEL_12;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_12:
      v14 = WTF::fastMalloc(0x18);
      *v14 = &unk_1F10EEA38;
      v14[1] = v10;
      v14[2] = a2;
      *v18 = v14;
      WebKit::DigitalCredentialsCoordinator::provideRawDigitalCredentialRequests(this, v18);
      result = *v18;
      *v18 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v13 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v5 >= 0x107F)
      {
        v15 = 4223;
      }

      else
      {
        v15 = v5;
      }

      v16 = (&IPC::Detail::messageDescriptions)[3 * v15];
      v17 = *(a3 + 7);
      *v18 = 136315394;
      *&v18[4] = v16;
      v19 = 2048;
      v20 = v17;
      _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", v18, 0x16u);
    }

    v8 = *a3;
    v9 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result && v9)
    {
      result = (*(*result + 16))(result, v8);
    }
  }

  if (*(this + 2) == 1)
  {
    return (*(*this + 8))(this, v8, v9);
  }

  --*(this + 2);
  return result;
}

void WebKit::DownloadProxy::didReceiveMessage(CFTypeRef *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v184 = *MEMORY[0x1E69E9840];
  CFRetain(this[1]);
  v7 = *(a3 + 25);
  if (v7 <= 0xC)
  {
    if (*(a3 + 25) > 9u)
    {
      if (v7 != 10)
      {
        if (v7 != 11)
        {
          if (v7 == 12)
          {
            IPC::ArgumentCoder<WebCore::AuthenticationChallenge,void>::decode(a3, v121);
            if ((v144 & 1) == 0)
            {
              goto LABEL_162;
            }

            goto LABEL_17;
          }

          goto LABEL_105;
        }

        WebKit::DownloadProxy::didFinish(this);
LABEL_152:
        CFRelease(this[1]);
        return;
      }

      IPC::Decoder::decode<WebCore::ResourceError>(a3, v121);
      if (BYTE8(v124) == 1)
      {
        IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, &v145);
        if (v146 & 1) != 0 || (v36 = *a3, v118 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v119 = *(a3 + 3)) != 0) && v118 && ((*(*v119 + 16))(v119, v36), (v146))
        {
          if ((BYTE8(v124) & 1) == 0)
          {
            goto LABEL_161;
          }

          v37 = *v121;
          *v121 = 0;
          *&v121[8] = 0;
          *buf = v37;
          *&buf[16] = *&v121[16];
          *&buf[32] = *&v121[32];
          *&v121[16] &= ~1u;
          v149 = v122;
          LODWORD(v150) = v123[0];
          WORD2(v150) = WORD2(v123[0]);
          *(&v150 + 1) = v123[1];
          v151[0] = v124;
          *&v151[8] = v145;
          v38 = 1;
          LOBYTE(v152) = 1;
          v122 = 0;
          v123[1] = 0;
LABEL_66:
          v39 = v122;
          v122 = 0;
          if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v39, v36);
          }

          v40 = *&v121[8];
          *&v121[8] = 0;
          if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v40, v36);
          }

          v41 = *v121;
          *v121 = 0;
          if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v41, v36);
          }

          if ((v38 & 1) == 0)
          {
            goto LABEL_106;
          }

          WebKit::DownloadProxy::didFail(this, buf, *&v151[8], *&v151[16]);
          if (v152)
          {
            v42 = *(&v150 + 1);
            *(&v150 + 1) = 0;
            if (v42)
            {
              CFRelease(v42);
            }

            v43 = v149;
            v149 = 0;
            if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v43, v21);
            }

            v44 = *&buf[8];
            *&buf[8] = 0;
            if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v44, v21);
            }

            goto LABEL_85;
          }

          goto LABEL_152;
        }

        buf[0] = 0;
        LOBYTE(v152) = 0;
        if (BYTE8(v124))
        {
          v120 = v123[1];
          v123[1] = 0;
          if (v120)
          {
            CFRelease(v120);
          }

          v38 = 0;
          goto LABEL_66;
        }
      }

LABEL_106:
      v58 = *a3;
      v59 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v60 = *(a3 + 3);
      if (v60 && v59)
      {
        (*(*v60 + 16))(v60, v58);
      }

      goto LABEL_152;
    }

    if (v7 != 8)
    {
      if (v7 == 9)
      {
        IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
        if ((buf[8] & 1) == 0)
        {
          v82 = *a3;
          v83 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v84 = *(a3 + 3);
          if (!v84)
          {
            goto LABEL_152;
          }

          if (!v83)
          {
            goto LABEL_152;
          }

          (*(*v84 + 16))(v84, v82);
          if ((buf[8] & 1) == 0)
          {
            goto LABEL_152;
          }
        }

        WebKit::DownloadProxy::didCreateDestination(this, buf);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_152;
        }

        goto LABEL_85;
      }

      goto LABEL_105;
    }

    IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, v121);
    if (v141 & 1) != 0 || (v96 = *a3, v97 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v98 = *(a3 + 3)) != 0) && v97 && ((*(*v98 + 16))(v98, v96), (v141))
    {
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v145);
      if (BYTE8(v145) & 1) != 0 || (v22 = *a3, v116 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v117 = *(a3 + 3)) != 0) && v116 && ((*(*v117 + 16))(v117, v22), (BYTE8(v145)))
      {
        if ((v141 & 1) == 0)
        {
          goto LABEL_161;
        }

        *&buf[8] = *&v121[8];
        *&v121[8] &= ~1u;
        *buf = *v121;
        *&buf[40] = *&v121[40];
        *v121 = 0;
        *&buf[24] = *&v121[24];
        *&v121[40] = 0;
        v149 = v122;
        v23 = *v123;
        *v123 = 0u;
        v150 = v23;
        v24 = v124;
        v124 = 0u;
        *v151 = v24;
        *&v24 = v125;
        v125 = 0;
        *&v151[16] = v24;
        v25 = v126;
        v126 = 0;
        v152 = v25;
        *&v24 = v127;
        v127 = 0;
        v153 = v24;
        v26 = v128;
        v128 = 0;
        v154 = v26;
        LOBYTE(v155) = 0;
        v156 = 0;
        if (v130 == 1)
        {
          v77 = v129;
          v129 = 0;
          v155 = v77;
          v156 = 1;
        }

        v157 = v131;
        v158 = v132;
        v162 = v136;
        *v163 = v137;
        *&v163[16] = v138[0];
        *&v163[27] = *(v138 + 11);
        v160 = v134;
        v161 = v135;
        v27 = v133;
        v28 = v139;
        v133 = 0;
        v139 = 0;
        v159 = v27;
        v164 = v28;
        LOBYTE(v165[0]) = v140;
        v29 = 1;
        v165[1] = v145;
      }

      else
      {
        v29 = 0;
        buf[0] = 0;
      }

      LOBYTE(v166) = v29;
      if (v141)
      {
        v30 = v139;
        v139 = 0;
        if (v30)
        {
          CFRelease(v30);
        }

        WebCore::ResourceResponseBase::~ResourceResponseBase(v121, v22);
      }

      if (v29)
      {
        goto LABEL_51;
      }
    }

    else
    {
      buf[0] = 0;
      LOBYTE(v166) = 0;
    }

    v32 = *a3;
    v99 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v100 = *(a3 + 3);
    if (!v100 || !v99 || ((*(*v100 + 16))(v100, v32), (v166 & 1) == 0))
    {
LABEL_129:
      if (v166 == 1)
      {
        v70 = v165[1];
        v165[1] = 0;
        if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v70, v32);
        }

        v71 = v164;
        v164 = 0;
        if (v71)
        {
          CFRelease(v71);
        }

        WebCore::ResourceResponseBase::~ResourceResponseBase(buf, v32);
      }

      goto LABEL_136;
    }

LABEL_51:
    v31 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v32)
    {
      a3 = v31;
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
          goto LABEL_126;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_126:
      v68 = WTF::fastMalloc(0x18);
      *v68 = &unk_1F10EEA88;
      v68[1] = a3;
      v68[2] = a2;
      *v121 = v68;
      if ((v166 & 1) == 0)
      {
        goto LABEL_161;
      }

      WebKit::DownloadProxy::decideDestinationWithSuggestedFilename(this, buf, &v165[1], v121);
      v69 = *v121;
      *v121 = 0;
      if (v69)
      {
        (*(*v69 + 8))(v69);
      }
    }

    goto LABEL_129;
  }

  if (*(a3 + 25) <= 0xFu)
  {
    if (v7 == 13)
    {
      IPC::ArgumentCoder<std::tuple<unsigned long long,unsigned long long,unsigned long long>,void>::decode<IPC::Decoder>(a3, buf);
      if (buf[24] & 1) != 0 || (v91 = *a3, v92 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v93 = *(a3 + 3)) != 0) && v92 && ((*(*v93 + 16))(v93, v91), (buf[24]))
      {
        WebKit::DownloadProxy::didReceiveData(this, *buf, *&buf[8], *&buf[16]);
      }

      goto LABEL_152;
    }

    if (v7 != 14)
    {
      if (v7 == 15)
      {
        IPC::Decoder::decode<std::tuple<WTF::URL,std::span<unsigned char const,18446744073709551615ul>,WebKit::SandboxExtensionHandle>>(buf, a3);
        if (BYTE8(v150) == 1)
        {
          v8 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if (v9)
          {
            a3 = v8;
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
                goto LABEL_110;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_110:
            v61 = WTF::fastMalloc(0x18);
            *v61 = &unk_1F10EEAB0;
            v61[1] = a3;
            v61[2] = a2;
            *v121 = v61;
            if ((BYTE8(v150) & 1) == 0)
            {
              goto LABEL_161;
            }

            WebKit::DownloadProxy::didReceivePlaceholderURL(this, buf, *&buf[40], v149, &v150);
            v62 = *v121;
            *v121 = 0;
            if (v62)
            {
              (*(*v62 + 8))(v62);
            }
          }
        }

        if (BYTE8(v150) == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v150);
          v64 = *buf;
          *buf = 0;
          if (v64)
          {
            if (atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v64, v63);
            }
          }
        }

        goto LABEL_136;
      }

      goto LABEL_105;
    }

    IPC::Decoder::decode<std::tuple<WTF::URL,std::span<unsigned char const,18446744073709551615ul>,WebKit::SandboxExtensionHandle>>(buf, a3);
    if (BYTE8(v150) != 1)
    {
      goto LABEL_152;
    }

    WebKit::DownloadProxy::didReceiveFinalURL(this, buf, *&buf[40], v149, &v150);
    if ((BYTE8(v150) & 1) == 0)
    {
      goto LABEL_152;
    }

    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v150);
LABEL_85:
    v45 = *buf;
    *buf = 0;
    if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v45, v21);
    }

    goto LABEL_152;
  }

  if (v7 != 18)
  {
    if (v7 == 17)
    {
      v35 = this[43];
      this[43] = 0;
      if (v35)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref(v35 + 1, v6);
      }

      goto LABEL_152;
    }

    if (v7 == 16)
    {
      IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a3, v121);
      if (v137 & 1) != 0 || (v104 = *a3, v105 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v106 = *(a3 + 3)) != 0) && v105 && ((*(*v106 + 16))(v106, v104), (v137))
      {
        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v145);
        if (BYTE8(v145) & 1) != 0 || (v113 = *a3, v114 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v115 = *(a3 + 3)) != 0) && v114 && ((*(*v115 + 16))(v115, v113), (BYTE8(v145)))
        {
          if ((v137 & 1) == 0)
          {
            while (1)
            {
LABEL_161:
              __break(1u);
LABEL_162:
              v85 = *a3;
              v86 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v87 = *(a3 + 3);
              if (!v87 || !v86 || ((*(*v87 + 16))(v87, v85), (v144 & 1) == 0))
              {
                buf[0] = 0;
                LOBYTE(v181) = 0;
                goto LABEL_164;
              }

LABEL_17:
              v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if ((v13 & 1) == 0)
              {
                break;
              }

              if (v144)
              {
                v14 = v12;
                WebCore::AuthenticationChallengeBase::AuthenticationChallengeBase(buf, v121);
                v15 = v142;
                v16 = cf;
                v142 = 0;
                cf = 0;
                *&v180[8] = v15;
                *&v180[16] = v16;
                *&v180[24] = v14;
                v17 = 1;
                goto LABEL_139;
              }
            }

            v17 = 0;
            buf[0] = 0;
LABEL_139:
            LOBYTE(v181) = v17;
            if (v144)
            {
              v72 = cf;
              cf = 0;
              if (v72)
              {
                CFRelease(v72);
              }

              v73 = v142;
              v142 = 0;
              if (v73)
              {
                CFRelease(v73);
              }

              WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(v121, v13);
              v17 = v181;
            }

            if (v17)
            {
              goto LABEL_146;
            }

LABEL_164:
            v88 = *a3;
            v89 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v90 = *(a3 + 3);
            if (!v90)
            {
              goto LABEL_152;
            }

            if (!v89)
            {
              goto LABEL_152;
            }

            (*(*v90 + 16))(v90, v88);
            if ((v181 & 1) == 0)
            {
              goto LABEL_152;
            }

LABEL_146:
            WebKit::DownloadProxy::didReceiveAuthenticationChallenge(this, buf, *&v180[24]);
            if (v181)
            {
              v75 = *&v180[16];
              *&v180[16] = 0;
              if (v75)
              {
                CFRelease(v75);
              }

              v76 = *&v180[8];
              *&v180[8] = 0;
              if (v76)
              {
                CFRelease(v76);
              }

              WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(buf, v74);
            }

            goto LABEL_152;
          }

          std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(buf, v121);
          *v163 = v145;
          v18 = 1;
        }

        else
        {
          v18 = 0;
          buf[0] = 0;
        }

        v163[8] = v18;
        if (v137)
        {
          WebCore::ResourceRequest::~ResourceRequest(v121);
          v18 = v163[8];
        }

        if (v18)
        {
          goto LABEL_30;
        }
      }

      else
      {
        buf[0] = 0;
        v163[8] = 0;
      }

      v107 = *a3;
      v108 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v109 = *(a3 + 3);
      if (!v109)
      {
        goto LABEL_152;
      }

      if (!v108)
      {
        goto LABEL_152;
      }

      (*(*v109 + 16))(v109, v107);
      if ((v163[8] & 1) == 0)
      {
        goto LABEL_152;
      }

LABEL_30:
      WebKit::DownloadProxy::didStart(this, buf, v163);
      if (v163[8])
      {
        v20 = *v163;
        *v163 = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v19);
        }

        WebCore::ResourceRequest::~ResourceRequest(buf);
      }

      goto LABEL_152;
    }

LABEL_105:
    v57 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v7 >= 0x107F)
      {
        v79 = 4223;
      }

      else
      {
        v79 = v7;
      }

      v80 = (&IPC::Detail::messageDescriptions)[3 * v79];
      v81 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v80;
      *&buf[12] = 2048;
      *&buf[14] = v81;
      _os_log_error_impl(&dword_19D52D000, v57, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
    }

    goto LABEL_106;
  }

  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a3, &v145);
  if (v147 & 1) != 0 || (v110 = *a3, v111 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v112 = *(a3 + 3)) != 0) && v111 && ((*(*v112 + 16))(v112, v110), (v147))
  {
    IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, v121);
    if (v141 & 1) != 0 || (v101 = *a3, v102 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v103 = *(a3 + 3)) != 0) && v102 && ((*(*v103 + 16))(v103, v101), (v141))
    {
      if ((v147 & 1) == 0)
      {
        goto LABEL_161;
      }

      std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(buf, &v145);
      *&v163[8] = *&v121[8];
      *&v163[24] = *&v121[24];
      v47 = *v123;
      *v123 = 0u;
      v48 = v124;
      v124 = 0u;
      v49 = *v121;
      *v121 = 0;
      *v163 = v49;
      *&v121[8] &= ~1u;
      v50 = *&v121[40];
      *&v121[40] = 0;
      *&v163[40] = v50;
      v164 = v122;
      *v165 = v47;
      v166 = v48;
      *&v47 = v125;
      v125 = 0;
      v167 = v47;
      v51 = v126;
      v126 = 0;
      v168 = v51;
      *&v47 = v127;
      v127 = 0;
      v169 = v47;
      v52 = v128;
      v128 = 0;
      v170 = v52;
      LOBYTE(v171) = 0;
      v172 = 0;
      if (v130 == 1)
      {
        v78 = v129;
        v129 = 0;
        v171 = v78;
        v172 = 1;
      }

      v173 = v131;
      v174 = v132;
      v175 = v133;
      v133 = 0;
      *&v180[11] = *(v138 + 11);
      v178 = v136;
      v179 = v137;
      *v180 = v138[0];
      v176 = v134;
      v177 = v135;
      v181 = v139;
      v182 = v140;
      v183 = 1;
      if (v141)
      {
        v139 = 0;
        WebCore::ResourceResponseBase::~ResourceResponseBase(v121, v46);
      }
    }

    else
    {
      buf[0] = 0;
      v183 = 0;
    }

    if (v147)
    {
      WebCore::ResourceRequest::~ResourceRequest(&v145);
    }
  }

  else
  {
    buf[0] = 0;
    v183 = 0;
  }

  if (v183 & 1) != 0 || (v54 = *a3, v94 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v95 = *(a3 + 3)) != 0) && v94 && ((*(*v95 + 16))(v95, v54), (v183))
  {
    v53 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v54)
    {
      a3 = v53;
      while (1)
      {
        v55 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v56 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v56, v55 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v56 == v55)
        {
          goto LABEL_118;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_118:
      v65 = WTF::fastMalloc(0x18);
      *v65 = &unk_1F10EEA60;
      v65[1] = a3;
      v65[2] = a2;
      *v121 = v65;
      if ((v183 & 1) == 0)
      {
        goto LABEL_161;
      }

      WebKit::DownloadProxy::willSendRequest(this, buf, v163, v121);
      v66 = *v121;
      *v121 = 0;
      if (v66)
      {
        (*(*v66 + 8))(v66);
      }
    }
  }

  if (v183 == 1)
  {
    v67 = v181;
    v181 = 0;
    if (v67)
    {
      CFRelease(v67);
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v163, v54);
    WebCore::ResourceRequest::~ResourceRequest(buf);
  }

LABEL_136:
  if (this)
  {
    goto LABEL_152;
  }
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::SharedWorkerKey>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::SharedWorkerKey,void>::decode(a2, a1);
  if ((*(a1 + 112) & 1) == 0)
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

uint64_t std::__tuple_leaf<0ul,WebCore::SharedWorkerKey,false>::__tuple_leaf[abi:sn200100]<WebCore::SharedWorkerKey,0>(uint64_t a1, uint64_t a2)
{
  v4 = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(a1);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v4 + 32);
  WTF::URL::URL(a1 + 64, (a2 + 64));
  v5 = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a1 + 104) = v5;
  return a1;
}

void WebCore::SharedWorkerKey::~SharedWorkerKey(WebCore::SharedWorkerKey *this, WTF::StringImpl *a2)
{
  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  if (!*(this + 56))
  {
    v5 = *(this + 5);
    *(this + 5) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(this + 4);
    *(this + 4) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(this + 56) = -1;
  if (!*(this + 24))
  {
    v7 = *(this + 1);
    *(this + 1) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    v8 = *this;
    *this = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }

  *(this + 24) = -1;
}

void IPC::Decoder::decode<std::tuple<WebCore::SharedWorkerKey,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::SharedWorkerObjectIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t a1, IPC::Decoder *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::SharedWorkerKey>(v11, a2);
  if (v12 != 1)
  {
    *a1 = 0;
    *(a1 + 128) = 0;
LABEL_11:
    v6 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v7 = *(a2 + 3);
    if (v7 && v6)
    {
      v8 = *(*v7 + 16);

      v8();
    }

    return;
  }

  IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v9);
  if (v10)
  {
    if ((v12 & 1) == 0)
    {
      __break(1u);
    }

    std::__tuple_leaf<0ul,WebCore::SharedWorkerKey,false>::__tuple_leaf[abi:sn200100]<WebCore::SharedWorkerKey,0>(a1, v11);
    *(a1 + 112) = v9;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a1 = 0;
  }

  *(a1 + 128) = v5;
  if (v12)
  {
    WebCore::SharedWorkerKey::~SharedWorkerKey(v11, v4);
    v5 = *(a1 + 128);
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }
}

_DWORD *WTF::RefCounted<WebKit::WebSharedWorkerServerToContextConnection>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::WebSharedWorkerServerToContextConnection::~WebSharedWorkerServerToContextConnection((result - 6));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebTransportSession,(WTF::DestructionThread)2>::deref(atomic_ullong *result)
{
  v1 = result;
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
        v4 = WTF::fastMalloc(0x10);
        *v4 = &unk_1F10EE9C0;
        v4[1] = v1;
        v6 = v4;
        WTF::ensureOnMainRunLoop();
        result = v6;
        if (v6)
        {
          return (*(*v6 + 8))(v6);
        }
      }

      return result;
    }
  }

  v5 = *result;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::WebTransportSession,(WTF::DestructionThread)2>(v5);
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::WebTransportSession,(WTF::DestructionThread)2>(atomic_uchar *this)
{
  v1 = this;
  v2 = 0;
  atomic_compare_exchange_strong_explicit(this, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    this = MEMORY[0x19EB01E30](this);
  }

  v3 = *(v1 + 1) - 1;
  *(v1 + 1) = v3;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v1 + 3);
    ++*(v1 + 2);
    *(v1 + 3) = 0;
  }

  v5 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    if (v3)
    {
      return this;
    }
  }

  else
  {
    v7 = v3;
    this = WTF::Lock::unlockSlow(v1);
    if (v7)
    {
      return this;
    }
  }

  v6 = WTF::fastMalloc(0x18);
  *v6 = &unk_1F10EE9E8;
  *(v6 + 1) = v1;
  *(v6 + 2) = v4;
  v8 = v6;
  WTF::ensureOnMainRunLoop();
  this = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return this;
}

uint64_t WTF::Detail::CallableWrapper<void WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::WebTransportSession,(WTF::DestructionThread)2>(void)::{lambda(void)#1},void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  v4 = 0;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](v3);
  }

  v6 = *(v3 + 16) - 1;
  *(v3 + 16) = v6;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    v7 = v6;
    result = WTF::Lock::unlockSlow(v3);
    if (v7)
    {
      return result;
    }
  }

  return WTF::fastFree(v3, a2);
}

uint64_t *IPC::Decoder::decode<std::optional<WebCore::Exception>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<std::optional<WebCore::Exception>,void>::decode<IPC::Decoder>(a2, a1);
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

uint64_t *IPC::ArgumentCoder<std::optional<WebCore::Exception>,void>::decode<IPC::Decoder>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = result[1];
  v5 = result[2];
  v6 = *result;
  if (v4 <= &v5[-*result])
  {
    *result = 0;
    result[1] = 0;
    v11 = result[3];
    if (v11)
    {
      if (v4)
      {
        (*(*v11 + 16))(v11);
        v4 = v2[1];
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_15:
    *v2 = 0;
    v2[1] = 0;
    v12 = v2[3];
    if (v12)
    {
      if (v4)
      {
        (*(*v12 + 16))(v12);
        v6 = *v2;
        v4 = v2[1];
        goto LABEL_18;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_18;
  }

  result[2] = (v5 + 1);
  if (!v5)
  {
    goto LABEL_15;
  }

  v7 = *v5;
  if (v7 < 2)
  {
    if (v7)
    {
      result = IPC::ArgumentCoder<WebCore::Exception,void>::decode(result, v13);
      if (v15)
      {
        *a2 = v13[0];
        *(a2 + 8) = v14;
        v8 = 1;
        *(a2 + 16) = 1;
      }

      else
      {
        v9 = *v2;
        v10 = v2[1];
        *v2 = 0;
        v2[1] = 0;
        result = v2[3];
        if (result)
        {
          if (v10)
          {
            result = (*(*result + 16))(result, v9);
          }
        }

        v8 = 0;
        *a2 = 0;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 16) = 0;
      v8 = 1;
    }

    *(a2 + 24) = v8;
    return result;
  }

LABEL_18:
  *v2 = 0;
  v2[1] = 0;
  result = v2[3];
  if (result && v4)
  {
    result = (*(*result + 16))(result, v6);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16AuxiliaryProcess14MainThreadPingENS2_10ConnectionEN6WebKit16AuxiliaryProcessES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EEA10;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16AuxiliaryProcess14MainThreadPingENS2_10ConnectionEN6WebKit16AuxiliaryProcessES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEA10;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *IPC::Connection::sendAsyncReply<Messages::AuxiliaryProcess::MainThreadPing>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3201;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29DigitalCredentialsCoordinator35ProvideRawDigitalCredentialRequestsENS2_10ConnectionEN6WebKit29DigitalCredentialsCoordinatorES9_FvONS_17CompletionHandlerIFvONS_6VectorIN5mpark7variantIJN7WebCore21MobileDocumentRequestENSE_16OpenID4VPRequestEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EEA38;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29DigitalCredentialsCoordinator35ProvideRawDigitalCredentialRequestsENS2_10ConnectionEN6WebKit29DigitalCredentialsCoordinatorES9_FvONS_17CompletionHandlerIFvONS_6VectorIN5mpark7variantIJN7WebCore21MobileDocumentRequestENSE_16OpenID4VPRequestEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEA38;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages29DigitalCredentialsCoordinator35ProvideRawDigitalCredentialRequestsENS2_10ConnectionEN6WebKit29DigitalCredentialsCoordinatorES9_FvONS_17CompletionHandlerIFvONS_6VectorIN5mpark7variantIJN7WebCore21MobileDocumentRequestENSE_16OpenID4VPRequestEEEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3202;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v17 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[3]);
  v6 = a2[3];
  if (v6)
  {
    v7 = *a2 + 8;
    v8 = 24 * v6;
    while (1)
    {
      v9 = *(v7 + 8);
      v10 = IPC::Encoder::grow(v5, 1uLL, 1);
      if (!v11)
      {
        break;
      }

      *v10 = v9;
      if (v9)
      {
        if (v9 == 1 && *(v7 + 8) != 1)
        {
LABEL_16:
          mpark::throw_bad_variant_access(v10);
        }
      }

      else
      {
        if (*(v7 + 8))
        {
          goto LABEL_16;
        }

        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, (v7 - 8));
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, v7);
      }

      v7 += 24;
      v8 -= 24;
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    result = 1067;
    __break(0xC471u);
  }

  else
  {
LABEL_13:
    IPC::Connection::sendMessageImpl(v3, &v17, 0, 0);
    result = v17;
    v17 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v13);
      return bmalloc::api::tzoneFree(v15, v16);
    }
  }

  return result;
}

uint64_t std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(uint64_t a1, uint64_t a2)
{
  WTF::URL::URL(a1, a2);
  WTF::URL::URL(v4 + 40, (a2 + 40));
  *(a1 + 80) = *(a2 + 80);
  v5 = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a1 + 88) = v5;
  *(a1 + 104) = 0;
  *(a1 + 96) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 96, (a2 + 96));
  *(a1 + 120) = 0;
  *(a1 + 112) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 112, (a2 + 112));
  *(a1 + 136) = 0;
  *(a1 + 128) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 128, (a2 + 128));
  v6 = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 144) = v6;
  v7 = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a1 + 152) = v7;
  v8 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a1 + 160) = v8;
  v9 = *(a2 + 168);
  *(a2 + 168) = 0;
  *(a1 + 168) = v9;
  v10 = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 176) = v10;
  v11 = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a1 + 192) = v11;
  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages13DownloadProxy15WillSendRequestENS2_10ConnectionEN6WebKit13DownloadProxyES9_FvON7WebCore15ResourceRequestERKNSA_16ResourceResponseEONS_17CompletionHandlerIFvSC_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EEA60;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages13DownloadProxy15WillSendRequestENS2_10ConnectionEN6WebKit13DownloadProxyES9_FvON7WebCore15ResourceRequestERKNSA_16ResourceResponseEONS_17CompletionHandlerIFvSC_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEA60;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages13DownloadProxy15WillSendRequestENS2_10ConnectionEN6WebKit13DownloadProxyES9_FvON7WebCore15ResourceRequestERKNSA_16ResourceResponseEONS_17CompletionHandlerIFvSC_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSC_EE4callESC_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3205;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(v5, a2);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages13DownloadProxy38DecideDestinationWithSuggestedFilenameENS2_10ConnectionEN6WebKit13DownloadProxyES9_FvRKN7WebCore16ResourceResponseEONS_6StringEONS_17CompletionHandlerIFvSE_NS8_22SandboxExtensionHandleENS8_14AllowOverwriteENS8_22UseDownloadPlaceholderERKNS_3URLESH_NSt3__14spanIKhLm18446744073709551615EEESQ_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_SH_SI_SJ_SM_SH_SQ_SQ_EED1Ev(void *a1)
{
  *a1 = &unk_1F10EEA88;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages13DownloadProxy38DecideDestinationWithSuggestedFilenameENS2_10ConnectionEN6WebKit13DownloadProxyES9_FvRKN7WebCore16ResourceResponseEONS_6StringEONS_17CompletionHandlerIFvSE_NS8_22SandboxExtensionHandleENS8_14AllowOverwriteENS8_22UseDownloadPlaceholderERKNS_3URLESH_NSt3__14spanIKhLm18446744073709551615EEESQ_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_SH_SI_SJ_SM_SH_SQ_SQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEA88;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages13DownloadProxy38DecideDestinationWithSuggestedFilenameENS2_10ConnectionEN6WebKit13DownloadProxyES9_FvRKN7WebCore16ResourceResponseEONS_6StringEONS_17CompletionHandlerIFvSE_NS8_22SandboxExtensionHandleENS8_14AllowOverwriteENS8_22UseDownloadPlaceholderERKNS_3URLESH_NSt3__14spanIKhLm18446744073709551615EEESQ_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_SH_SI_SJ_SM_SH_SQ_SQ_EE4callESE_SH_SI_SJ_SM_SH_SQ_SQ_(uint64_t a1, void *a2, WebKit::SandboxExtensionImpl **a3, char a4, char a5, uint64_t *a6, WebKit::SandboxExtensionImpl **a7, uint64_t a8, const void *a9, size_t a10, const void *a11, size_t a12)
{
  v18 = *(a1 + 8);
  v24 = *(a1 + 16);
  v19 = IPC::Encoder::operator new(0x238, a2);
  *v19 = 3203;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 1) = v18;
  *(v19 + 68) = 0;
  *(v19 + 70) = 0;
  *(v19 + 69) = 0;
  IPC::Encoder::encodeHeader(v19);
  v25 = v19;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v19, a2);
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(v19, a3);
  v26 = a4;
  IPC::Encoder::operator<<<BOOL>(v19, &v26);
  v27 = a5;
  IPC::Encoder::operator<<<BOOL>(v19, &v27);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v19, a6);
  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(v19, a7);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v19, a9, a10);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v19, a11, a12);
  IPC::Connection::sendMessageImpl(v24, &v25, 0, 0);
  result = v25;
  v25 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v20);
    return bmalloc::api::tzoneFree(v22, v23);
  }

  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<unsigned long long,unsigned long long,unsigned long long>,void>::decode<IPC::Decoder>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1[1];
  v3 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *a1;
  v5 = v3 - *a1;
  v6 = v2 >= v5;
  v7 = v2 - v5;
  if (v6 && v7 > 7)
  {
    a1[2] = (v3 + 1);
    if (v3)
    {
      v13 = *v3;
      v14 = 1;
      return IPC::ArgumentCoder<std::tuple<unsigned long long,unsigned long long,unsigned long long>,void>::decode<IPC::Decoder,unsigned long long>(a1, &v13, a2);
    }

    v11 = a2;
    v12 = a1;
  }

  else
  {
    v11 = a2;
    v12 = a1;
    *a1 = 0;
    a1[1] = 0;
    v10 = a1[3];
    if (v10)
    {
      if (v2)
      {
        (*(*v10 + 16))(v10);
        v4 = *v12;
        v2 = v12[1];
        goto LABEL_12;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
  }

LABEL_12:
  *v12 = 0;
  v12[1] = 0;
  result = v12[3];
  if (result)
  {
    if (v2)
    {
      result = (*(*result + 16))(result, v4);
    }
  }

  *v11 = 0;
  v11[24] = 0;
  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<unsigned long long,unsigned long long,unsigned long long>,void>::decode<IPC::Decoder,unsigned long long>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = a1[1];
  v5 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 7)
  {
    a1[2] = (v5 + 1);
    if (v5)
    {
      v15 = *v5;
      v16 = 1;
      return IPC::ArgumentCoder<std::tuple<unsigned long long,unsigned long long,unsigned long long>,void>::decode<IPC::Decoder,unsigned long long,unsigned long long>(a1, a2, &v15, a3);
    }

    v13 = a3;
    v14 = a1;
  }

  else
  {
    v13 = a3;
    v14 = a1;
    *a1 = 0;
    a1[1] = 0;
    v12 = a1[3];
    if (v12)
    {
      if (v4)
      {
        (*(*v12 + 16))(v12);
        v6 = *v14;
        v4 = v14[1];
        goto LABEL_12;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
  }

LABEL_12:
  *v14 = 0;
  v14[1] = 0;
  result = v14[3];
  if (result)
  {
    if (v4)
    {
      result = (*(*result + 16))(result, v6);
    }
  }

  *v13 = 0;
  v13[24] = 0;
  return result;
}

uint64_t *IPC::ArgumentCoder<std::tuple<unsigned long long,unsigned long long,unsigned long long>,void>::decode<IPC::Decoder,unsigned long long,unsigned long long>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = result[1];
  v7 = ((result[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *result;
  v9 = v7 - *result;
  v10 = v6 >= v9;
  v11 = v6 - v9;
  if (v10 && v11 > 7)
  {
    result[2] = (v7 + 1);
    if (!v7)
    {
      v17 = a4;
      v18 = result;
      goto LABEL_15;
    }

    if (*(a2 + 8) & 1) != 0 && (a3[1])
    {
      v13 = *v7;
      v14 = *a3;
      *a4 = *a2;
      *(a4 + 1) = v14;
      *(a4 + 2) = v13;
      v15 = 1;
      goto LABEL_10;
    }

    __break(1u);
  }

  v17 = a4;
  v18 = result;
  *result = 0;
  result[1] = 0;
  v16 = result[3];
  if (!v16)
  {
    v6 = 0;
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  (*(*v16 + 16))(v16);
  v8 = *v18;
  v6 = v18[1];
LABEL_15:
  *v18 = 0;
  v18[1] = 0;
  result = v18[3];
  if (result && v6)
  {
    result = (*(*result + 16))(result, v8);
  }

  v15 = 0;
  a4 = v17;
  *v17 = 0;
LABEL_10:
  a4[24] = v15;
  return result;
}

void IPC::Decoder::decode<std::tuple<WTF::URL,std::span<unsigned char const,18446744073709551615ul>,WebKit::SandboxExtensionHandle>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WTF::URL,void>::decode(a2, v18);
  if ((v19 & 1) == 0)
  {
    v12 = *a2;
    v13 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v14 = *(a2 + 3);
    v15 = !v14 || v13 == 0;
    if (v15 || ((*(*v14 + 16))(v14, v12), (v19 & 1) == 0))
    {
      *a1 = 0;
      *(a1 + 64) = 0;
      goto LABEL_12;
    }
  }

  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a2, &v20);
  if ((v21 & 1) == 0 && ((v4 = *a2, v16 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v17 = *(a2 + 3)) == 0) || !v16 || ((*(*v17 + 16))(v17, v4), (v21 & 1) == 0)) || (IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::decode(a2, &v22), (v23 & 1) == 0) && ((v4 = *a2, v7 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v8 = *(a2 + 3)) == 0) || !v7 || ((*(*v8 + 16))(v8, v4), (v23 & 1) == 0)))
  {
    *a1 = 0;
    *(a1 + 64) = 0;
LABEL_8:
    if (v19)
    {
      v6 = v18[0];
      v18[0] = 0;
      if (v6)
      {
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v4);
        }
      }
    }

LABEL_12:
    if (*(a1 + 64))
    {
      return;
    }

    goto LABEL_17;
  }

  if (v19 & 1) != 0 && (v21)
  {
    WTF::URL::URL(a1, v18);
    *(a1 + 40) = v20;
    v5 = v22;
    v22 = 0;
    *(a1 + 56) = v5;
    *(a1 + 64) = 1;
    if (v23)
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v22);
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_17:
  v9 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v10 = *(a2 + 3);
  if (v10 && v9)
  {
    v11 = *(*v10 + 16);

    v11();
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages13DownloadProxy24DidReceivePlaceholderURLENS2_10ConnectionEN6WebKit13DownloadProxyES9_FvRKNS_3URLENSt3__14spanIKhLm18446744073709551615EEEONS8_22SandboxExtensionHandleEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EEAB0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages13DownloadProxy24DidReceivePlaceholderURLENS2_10ConnectionEN6WebKit13DownloadProxyES9_FvRKNS_3URLENSt3__14spanIKhLm18446744073709551615EEEONS8_22SandboxExtensionHandleEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EEAB0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages13DownloadProxy24DidReceivePlaceholderURLENS2_10ConnectionEN6WebKit13DownloadProxyES9_FvRKNS_3URLENSt3__14spanIKhLm18446744073709551615EEEONS8_22SandboxExtensionHandleEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3204;
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

API::Object *API::WebArchive::create@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, API::Object **a4@<X8>)
{
  v8 = API::Object::newObject(0x30uLL, 29);
  result = API::WebArchive::WebArchive(v8, a1, a2, a3);
  *a4 = v8;
  return result;
}

API::WebArchive *API::WebArchive::create@<X0>(API::WebArchive *this@<X0>, API::WebArchive **a2@<X8>)
{
  v5 = API::Object::newObject(0x30uLL, 29);
  result = API::WebArchive::WebArchive(v5, this);
  *a2 = v5;
  return result;
}

double API::WebArchive::create@<D0>(API::Object **a1@<X8>)
{
  v4 = API::Object::newObject(0x30uLL, 29);
  WebCore::LegacyWebArchive::create();
  API::Object::Object(v4);
  *v4 = &unk_1F10EEAD8;
  if (v6)
  {
    ++v6[2];
    *(v4 + 2) = v6;
    *(v4 + 3) = 0;
    *(v4 + 4) = 0;
    *(v4 + 5) = 0;
    *a1 = v4;
    if (v6[2] == 1)
    {
      (*(*v6 + 8))();
    }

    else
    {
      --v6[2];
    }
  }

  else
  {
    result = 0.0;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    *a1 = v4;
  }

  return result;
}

API::Object *API::WebArchive::WebArchive(API::Object *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = API::Object::Object(a1);
  *v8 = &unk_1F10EEAD8;
  *(v8 + 2) = 0;
  if (a2)
  {
    CFRetain(*(a2 + 8));
  }

  *(a1 + 3) = a2;
  v9 = *a3;
  if (v9)
  {
    CFRetain(*(v9 + 8));
  }

  *(a1 + 4) = v9;
  v10 = *a4;
  if (*a4)
  {
    CFRetain(*(v10 + 8));
  }

  *(a1 + 5) = v10;
  v11 = *(*(a1 + 3) + 16);
  if (v11)
  {
    ++v11[2];
  }

  v12 = *(*(a1 + 4) + 28);
  v32 = 0;
  v33 = 0;
  if (v12)
  {
    if (v12 >> 29)
    {
      __break(0xC471u);
      JUMPOUT(0x19D97FBC0);
    }

    v13 = 0;
    LODWORD(v33) = v12;
    v32 = WTF::fastMalloc((8 * v12));
    do
    {
      v14 = *(a1 + 4);
      if (v13 >= *(v14 + 28))
      {
        goto LABEL_41;
      }

      v15 = *(*(v14 + 16) + 8 * v13);
      if (v15 && (*(*v15 + 16))(v15) == 30)
      {
        CFRetain(*(v15 + 8));
        v16 = *(v15 + 8);
        v17 = *(v15 + 16);
        ++*(v17 + 8);
        CFRelease(v16);
      }

      else
      {
        v17 = MEMORY[0x10];
        ++*(MEMORY[0x10] + 8);
      }

      v18 = HIDWORD(v33) + 1;
      *(v32 + 8 * HIDWORD(v33)) = v17;
      HIDWORD(v33) = v18;
      ++v13;
    }

    while (v12 != v13);
    v10 = *(a1 + 5);
  }

  v19 = *(v10 + 28);
  v30 = 0;
  v31 = 0;
  if (v19)
  {
    if (v19 >> 29)
    {
LABEL_41:
      __break(0xC471u);
      JUMPOUT(0x19D97FB90);
    }

    v20 = 0;
    LODWORD(v31) = v19;
    v30 = WTF::fastMalloc((8 * v19));
    do
    {
      v21 = *(a1 + 5);
      if (v20 >= *(v21 + 28))
      {
        __break(0xC471u);
        JUMPOUT(0x19D97FB98);
      }

      v22 = *(*(v21 + 16) + 8 * v20);
      if (v22 && (*(*v22 + 16))(v22) == 29)
      {
        CFRetain(*(v22 + 8));
        v23 = *(v22 + 8);
        v24 = *(v22 + 16);
        ++*(v24 + 8);
        CFRelease(v23);
      }

      else
      {
        v24 = MEMORY[0x10];
        ++*(MEMORY[0x10] + 8);
      }

      v25 = HIDWORD(v31) + 1;
      *(v30 + 8 * HIDWORD(v31)) = v24;
      HIDWORD(v31) = v25;
      ++v20;
    }

    while (v19 != v20);
  }

  ++v11[2];
  WebCore::LegacyWebArchive::create();
  if (*(a1 + 2))
  {
    __break(0xC471u);
    JUMPOUT(0x19D97FBB8);
  }

  *(a1 + 2) = v29;
  if (v11)
  {
    if (v11[2] == 1)
    {
      (*(*v11 + 8))(v11);
    }

    else
    {
      --v11[2];
    }
  }

  WTF::Vector<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, v26);
  WTF::Vector<WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v27);
  if (v11[2] == 1)
  {
    (*(*v11 + 8))(v11);
  }

  else
  {
    --v11[2];
  }

  return a1;
}

void sub_19D97FBCC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, uint64_t a12, WTF *a13)
{
  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  WTF::Vector<WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, a2);
  if (v14)
  {
    if (v14[2] == 1)
    {
      (*(*v14 + 8))(v14);
    }

    else
    {
      --v14[2];
    }
  }

  v16 = v13[5];
  v13[5] = 0;
  if (v16)
  {
    CFRelease(*(v16 + 8));
  }

  v17 = v13[4];
  v13[4] = 0;
  if (v17)
  {
    CFRelease(*(v17 + 8));
  }

  v18 = v13[3];
  v13[3] = 0;
  if (v18)
  {
    CFRelease(*(v18 + 8));
  }

  v19 = v13[2];
  v13[2] = 0;
  if (v19)
  {
    if (v19[2] == 1)
    {
      (*(*v19 + 8))(v19);
    }

    else
    {
      --v19[2];
    }
  }

  _Unwind_Resume(a1);
}

API::WebArchive *API::WebArchive::WebArchive(API::WebArchive *this, API::Data *a2)
{
  *API::Object::Object(this) = &unk_1F10EEAD8;
  WebCore::SharedBuffer::create<std::span<unsigned char const,18446744073709551615ul>>(&v5);
  WebCore::LegacyWebArchive::create();
  v3 = v5;
  v5 = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

void sub_19D97FE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12)
{
  if (a12)
  {
    if (atomic_fetch_add(a12 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a12 + 2);
      (*(*a12 + 8))(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

void API::WebArchive::~WebArchive(API::WebArchive *this)
{
  *this = &unk_1F10EEAD8;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
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
}

{
  API::WebArchive::~WebArchive(this);

  JUMPOUT(0x19EB14CF0);
}

API::Object *API::WebArchive::mainResource(API::WebArchive *this)
{
  result = *(this + 3);
  if (!result)
  {
    v3 = *(*(this + 2) + 16);
    if (v3)
    {
      ++*(v3 + 8);
    }

    v4 = API::Object::newObject(0x18uLL, 30);
    result = API::Object::Object(v4);
    *result = &unk_1F10EEB00;
    *(result + 2) = v3;
    v5 = *(this + 3);
    *(this + 3) = result;
    if (v5)
    {
      CFRelease(*(v5 + 8));
      return *(this + 3);
    }
  }

  return result;
}

void sub_19D97FFE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (v1[2] == 1)
    {
      (*(*v1 + 8))(v1);
    }

    else
    {
      --v1[2];
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t API::WebArchive::subresources(API::WebArchive *this)
{
  result = *(this + 4);
  if (!result)
  {
    v3 = *(this + 2);
    v15 = 0;
    v16 = 0;
    v4 = *(v3 + 36);
    if (v4)
    {
      if (v4 >> 29)
      {
        __break(0xC471u);
        goto LABEL_13;
      }

      v5 = WTF::fastMalloc((8 * v4));
      LODWORD(v16) = v4;
      v15 = v5;
      v6 = *(v3 + 36);
      if (v6)
      {
        v7 = 0;
        v8 = *(v3 + 24);
        v9 = 8 * v6;
        do
        {
          v10 = *(v8 + 8 * v7);
          ++*(v10 + 8);
          v11 = API::Object::newObject(0x18uLL, 30);
          v12 = API::Object::Object(v11);
          *v12 = &unk_1F10EEB00;
          *(v12 + 2) = v10;
          *(v5 + 8 * v7++) = v12;
          v9 -= 8;
        }

        while (v9);
        HIDWORD(v16) = v6;
      }
    }

    API::Array::create(&v15, &v14);
    if (!*(this + 4))
    {
      *(this + 4) = v14;
      WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v13);
      return *(this + 4);
    }

    __break(0xC471u);
LABEL_13:
    JUMPOUT(0x19D98014CLL);
  }

  return result;
}

void sub_19D980158(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

uint64_t API::WebArchive::subframeArchives(API::WebArchive *this)
{
  result = *(this + 5);
  if (!result)
  {
    v3 = *(this + 2);
    v14 = 0;
    v15 = 0;
    v4 = *(v3 + 52);
    if (v4)
    {
      if (v4 >> 29)
      {
LABEL_21:
        __break(0xC471u);
        JUMPOUT(0x19D980368);
      }

      v5 = WTF::fastMalloc((8 * v4));
      LODWORD(v15) = v4;
      v14 = v5;
      v6 = *(v3 + 52);
      if (v6)
      {
        v7 = 0;
        v8 = *(v3 + 40);
        v9 = 8 * v6;
        do
        {
          v10 = *(v8 + 8 * v7);
          if (v10)
          {
            if (((*(*v10 + 48))(*(v8 + 8 * v7)) & 1) == 0)
            {
              goto LABEL_21;
            }

            ++v10[2];
          }

          v11 = API::Object::newObject(0x30uLL, 29);
          *API::Object::Object(v11) = &unk_1F10EEAD8;
          if (v10)
          {
            ++v10[2];
            *(v11 + 2) = v10;
            *(v11 + 3) = 0;
            *(v11 + 4) = 0;
            *(v11 + 5) = 0;
            if (v10[2] == 1)
            {
              (*(*v10 + 8))(v10);
            }

            else
            {
              --v10[2];
            }
          }

          else
          {
            *(v11 + 1) = 0u;
            *(v11 + 2) = 0u;
          }

          *(v5 + 8 * v7++) = v11;
          v9 -= 8;
        }

        while (v9);
        HIDWORD(v15) = v6;
      }
    }

    API::Array::create(&v14, &v13);
    if (*(this + 5))
    {
      __break(0xC471u);
      JUMPOUT(0x19D980388);
    }

    *(this + 5) = v13;
    WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v14, v12);
    return *(this + 5);
  }

  return result;
}

void sub_19D980394(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

void API::WebArchive::data(WebCore::LegacyWebArchive **this@<X0>, API::Object **a2@<X8>)
{
  WebCore::LegacyWebArchive::rawDataRepresentation(&theData, this[2]);
  v3 = theData;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(v3);
  if (Length < 0)
  {
    __break(0xC471u);
  }

  else
  {
    v6 = theData;
    theData = 0;
    v7 = WTF::fastMalloc(0x10);
    *v7 = &unk_1F10EEBC0;
    v7[1] = v6;
    v10 = v7;
    API::Data::createWithoutCopying(BytePtr, Length, &v10, a2);
    v8 = v10;
    v10 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = theData;
    theData = 0;
    if (v9)
    {
      CFRelease(v9);
    }
  }
}

void sub_19D9804EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

API::WebArchiveResource *API::WebArchiveResource::create@<X0>(API::WebArchiveResource *this@<X0>, atomic_uint **a2@<X1>, const WTF::String *a3@<X2>, const WTF::String *a4@<X3>, API::WebArchiveResource **a5@<X8>)
{
  v11 = API::Object::newObject(0x18uLL, 30);
  result = API::WebArchiveResource::WebArchiveResource(v11, this, a2, a3, a4);
  *a5 = v11;
  return result;
}

API::WebArchiveResource *API::WebArchiveResource::WebArchiveResource(API::WebArchiveResource *this, API::Data *a2, atomic_uint **a3, const WTF::String *a4, const WTF::String *a5)
{
  *API::Object::Object(this) = &unk_1F10EEB00;
  v23 = *(a2 + 1);
  WebCore::SharedBuffer::create<std::span<unsigned char const,18446744073709551615ul>>(&v24);
  v8 = v24;
  v24 = 0;
  v25 = v8;
  WTF::URL::URL(&v22, a3);
  v21 = 0;
  WebCore::ResourceResponseBase::ResourceResponseBase(v17);
  v19 = 0;
  v20 = 0;
  v18 = v18 & 0xF1 | 4;
  WebCore::ArchiveResource::create();
  v10 = v19;
  v19 = 0;
  if (v10)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v17, v9);
  v12 = v21;
  v21 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  v13 = v22;
  v22 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v11);
  }

  v14 = v25;
  v25 = 0;
  if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14 + 2);
    (*(*v14 + 8))(v14);
  }

  v15 = v24;
  v24 = 0;
  if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v15 + 2);
    (*(*v15 + 8))(v15);
  }

  return this;
}

void sub_19D9807D4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  v43 = a41;
  a41 = 0;
  if (v43)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(&a10, a2);
  v45 = *(v41 - 144);
  *(v41 - 144) = 0;
  if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v45, v44);
  }

  v46 = *(v41 - 136);
  *(v41 - 136) = 0;
  if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v46, v44);
  }

  v47 = *(v41 - 72);
  *(v41 - 72) = 0;
  if (v47 && atomic_fetch_add(v47 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v47 + 2);
    (*(*v47 + 8))(v47);
  }

  v48 = *(v41 - 80);
  *(v41 - 80) = 0;
  if (v48)
  {
    if (atomic_fetch_add(v48 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v48 + 2);
      (*(*v48 + 8))(v48);
    }
  }

  _Unwind_Resume(a1);
}

void API::WebArchiveResource::~WebArchiveResource(API::WebArchiveResource *this)
{
  *this = &unk_1F10EEB00;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    if (v2[2] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[2];
    }
  }
}

{
  API::WebArchiveResource::~WebArchiveResource(this);

  JUMPOUT(0x19EB14CF0);
}

void API::WebArchiveResource::data(API::WebArchiveResource *this@<X0>, API::Object **a2@<X8>)
{
  v3 = *(*(this + 2) + 320);
  if (v3)
  {
    atomic_fetch_add(v3 + 2, 1u);
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }
  }

  atomic_fetch_add(v3 + 2, 1u);
  WebCore::FragmentedSharedBuffer::makeContiguous(&v12, v3);
  WebCore::SharedBuffer::createCFData(&theData, v12);
  v4 = v12;
  v12 = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    goto LABEL_9;
  }

  if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

LABEL_9:
  v5 = theData;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(v5);
  if (Length < 0)
  {
    __break(0xC471u);
  }

  else
  {
    v8 = theData;
    theData = 0;
    v9 = WTF::fastMalloc(0x10);
    *v9 = &unk_1F10EEBE8;
    *(v9 + 1) = v8;
    v12 = v9;
    API::Data::createWithoutCopying(BytePtr, Length, &v12, a2);
    v10 = v12;
    v12 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = theData;
    theData = 0;
    if (v11)
    {
      CFRelease(v11);
    }
  }
}

void sub_19D980BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

id WebKit::DocumentEditingContext::toLegacyPlatformContext(uint64_t a1, char a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD2A0]);
  if ((a2 & 2) != 0)
  {
    WebCore::AttributedString::nsAttributedString(&v23, a1);
    [v4 setContextBefore:v23];
    v8 = v23;
    v23 = 0;
    if (v8)
    {
    }

    WebCore::AttributedString::nsAttributedString(&v23, (a1 + 40));
    [v4 setSelectedText:v23];
    v9 = v23;
    v23 = 0;
    if (v9)
    {
    }

    WebCore::AttributedString::nsAttributedString(&v23, (a1 + 80));
    [v4 setContextAfter:v23];
    v10 = v23;
    v23 = 0;
    if (v10)
    {
    }

    WebCore::AttributedString::nsAttributedString(&v23, (a1 + 120));
    [v4 setMarkedText:v23];
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_19;
    }

    WebCore::AttributedString::nsAttributedString(&v23, a1);
    [v4 setContextBefore:{objc_msgSend(v23, "string")}];
    v5 = v23;
    v23 = 0;
    if (v5)
    {
    }

    WebCore::AttributedString::nsAttributedString(&v23, (a1 + 40));
    [v4 setSelectedText:{objc_msgSend(v23, "string")}];
    v6 = v23;
    v23 = 0;
    if (v6)
    {
    }

    WebCore::AttributedString::nsAttributedString(&v23, (a1 + 80));
    [v4 setContextAfter:{objc_msgSend(v23, "string")}];
    v7 = v23;
    v23 = 0;
    if (v7)
    {
    }

    WebCore::AttributedString::nsAttributedString(&v23, (a1 + 120));
    [v4 setMarkedText:{objc_msgSend(v23, "string")}];
  }

  v11 = v23;
  v23 = 0;
  if (v11)
  {
  }

LABEL_19:
  [v4 setSelectedRangeInMarkedText:{*(a1 + 200), *(a1 + 208)}];
  v12 = *(a1 + 228);
  if (v12)
  {
    v13 = *(a1 + 216);
    v14 = v13 + 32 * v12;
    do
    {
      WebCore::FloatRect::operator CGRect();
      [v4 addTextRect:*(v13 + 16) forCharacterRange:*(v13 + 24)];
      v13 += 32;
    }

    while (v13 != v14);
  }

  WebCore::AttributedString::nsAttributedString(&v23, (a1 + 160));
  [v4 setAnnotatedText:v23];
  v15 = v23;
  v23 = 0;
  if (v15)
  {
  }

  if (a2 < 0)
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a1 + 244)];
    v17 = *(a1 + 244);
    if (v17)
    {
      v18 = *(a1 + 232);
      v19 = &v18[2 * v17];
      do
      {
        v20 = [MEMORY[0x1E696B098] valueWithRange:{*v18, v18[1]}];
        if (v20)
        {
          [v16 addObject:v20];
        }

        v18 += 2;
      }

      while (v18 != v19);
    }

    if (objc_opt_respondsToSelector())
    {
      [v4 setAutocorrectedRanges:v16];
    }

    if (v16)
    {
    }
  }

  if (v4)
  {
    v21 = v4;
  }

  return v4;
}

void sub_19D980F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::DocumentEditingContext::toPlatformContext(uint64_t a1, char a2)
{
  if ((a2 & 2) != 0)
  {
    v5 = objc_alloc(MEMORY[0x1E695AA90]);
    WebCore::AttributedString::nsAttributedString(&v32, (a1 + 40));
    v6 = v32;
    WebCore::AttributedString::nsAttributedString(&v31, a1);
    v7 = v31;
    WebCore::AttributedString::nsAttributedString(&v30, (a1 + 80));
    v8 = v30;
    WebCore::AttributedString::nsAttributedString(&v29, (a1 + 120));
    v9 = [v5 initWithAttributedSelectedText:v6 contextBefore:v7 contextAfter:v8 markedText:v29 selectedRangeInMarkedText:{*(a1 + 200), *(a1 + 208)}];
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      v4 = 0;
      goto LABEL_14;
    }

    v10 = objc_alloc(MEMORY[0x1E695AA90]);
    WebCore::AttributedString::nsAttributedString(&v32, (a1 + 40));
    v11 = [v32 string];
    WebCore::AttributedString::nsAttributedString(&v31, a1);
    v12 = [v31 string];
    WebCore::AttributedString::nsAttributedString(&v30, (a1 + 80));
    v13 = [v30 string];
    WebCore::AttributedString::nsAttributedString(&v29, (a1 + 120));
    v9 = [v10 initWithSelectedText:v11 contextBefore:v12 contextAfter:v13 markedText:objc_msgSend(v29 selectedRangeInMarkedText:{"string"), *(a1 + 200), *(a1 + 208)}];
  }

  v4 = v9;
  v14 = v29;
  v29 = 0;
  if (v14)
  {
  }

  v15 = v30;
  v30 = 0;
  if (v15)
  {
  }

  v16 = v31;
  v31 = 0;
  if (v16)
  {
  }

  v17 = v32;
  v32 = 0;
  if (v17)
  {
  }

LABEL_14:
  v18 = *(a1 + 228);
  if (v18)
  {
    v19 = *(a1 + 216);
    v20 = v19 + 32 * v18;
    do
    {
      WebCore::FloatRect::operator CGRect();
      [v4 addTextRect:*(v19 + 16) forCharacterRange:*(v19 + 24)];
      v19 += 32;
    }

    while (v19 != v20);
  }

  WebCore::AttributedString::nsAttributedString(&v32, (a1 + 160));
  [v4 setAnnotatedText:v32];
  v21 = v32;
  v32 = 0;
  if (v21)
  {
  }

  if (a2 < 0)
  {
    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a1 + 244)];
    v23 = *(a1 + 244);
    if (v23)
    {
      v24 = *(a1 + 232);
      v25 = &v24[2 * v23];
      do
      {
        v26 = [MEMORY[0x1E696B098] valueWithRange:{*v24, v24[1], v29, v30, v31, v32}];
        if (v26)
        {
          [v22 addObject:v26];
        }

        v24 += 2;
      }

      while (v24 != v25);
    }

    if (objc_opt_respondsToSelector())
    {
      [v4 setAutocorrectedRanges:v22];
    }

    if (v22)
    {
    }
  }

  if (v4)
  {
    v27 = v4;
  }

  return v4;
}

void sub_19D98126C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12)
{
  if (a10)
  {
  }

  if (a11)
  {
  }

  if (a12)
  {
  }

  _Unwind_Resume(exception_object);
}

double WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v4 = *a3;
  *a3 = 0;
  *(a1 + 112) = v4;
  *(a1 + 120) = a2;
  return result;
}

WTF *WebKit::JavaScriptEvaluationResult::toID@<X0>(WebKit::JavaScriptEvaluationResult *this@<X0>, void *a2@<X1>, void *a3@<X8>, __n128 a4@<Q0>)
{
  v103 = a3;
  v5 = *(this + 14);
  *(this + 14) = 0;
  if (!v5)
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_9;
  }

  v6 = *(v5 - 4);
  v7 = (v5 + 32 * v6);
  if (!*(v5 - 12))
  {
LABEL_9:
    v9 = v7;
    v7 = (v5 + 32 * v6);
    goto LABEL_10;
  }

  if (!v6)
  {
    v10 = 0;
    v9 = v5;
    goto LABEL_12;
  }

  v8 = 32 * v6;
  v9 = v5;
  while (*v9 + 1 <= 1)
  {
    v9 += 4;
    v8 -= 32;
    if (!v8)
    {
      v9 = v7;
      break;
    }
  }

LABEL_10:
  if (v5)
  {
    v10 = *(v5 - 4);
LABEL_12:
    v11 = (v5 + 32 * v10);
    goto LABEL_13;
  }

  v11 = 0;
LABEL_13:
  while (v9 != v11)
  {
    v107 = *v9;
    v12 = mpark::detail::copy_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::copy_constructor(&v108, (v9 + 1));
    if (v110 == 255)
    {
      v14 = -1;
    }

    else
    {
      v14 = v110;
    }

    if (v14 <= 2)
    {
      if (v14)
      {
        if (v14 == 1)
        {
          if (v110 != 1)
          {
            goto LABEL_163;
          }

          if (v108)
          {
            v16 = MEMORY[0x1E695E118];
          }

          else
          {
            v16 = MEMORY[0x1E695E110];
          }

          v17 = v16;
        }

        else
        {
          if (v110 != 2)
          {
            goto LABEL_163;
          }

          v16 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:*&v108];
        }
      }

      else
      {
        if (v110)
        {
          goto LABEL_163;
        }

        if (v108 == 1)
        {
          v24 = [MEMORY[0x1E695DFB0] null];
          v16 = v24;
          if (!v24)
          {
            goto LABEL_66;
          }

LABEL_40:
          v25 = v24;
          goto LABEL_66;
        }

        v16 = 0;
      }
    }

    else if (v14 > 4)
    {
      if (v14 == 5)
      {
        if (v110 != 5)
        {
          goto LABEL_163;
        }

        v18 = objc_alloc(MEMORY[0x1E695DF70]);
        v16 = [v18 initWithCapacity:HIDWORD(v109)];
        WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v111, &v108);
        v112 = v16;
        if (v16)
        {
          v19 = v16;
        }

        v20 = *(this + 9);
        if (v20 == *(this + 8))
        {
          v21 = WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<NSMutableArray>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 6, v20 + 1, v111);
          v22 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((*(this + 3) + 24 * *(this + 9)), v21);
          v23 = (v21 + 4);
        }

        else
        {
          v22 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((*(this + 3) + 24 * v20), v111);
          v23 = &v112;
        }

        v41 = *v23;
        *v23 = 0;
        v22[2] = v41;
        ++*(this + 9);
        v42 = v112;
        v112 = 0;
        if (v42)
        {
        }

        v40 = v111[0];
        if (v111[0])
        {
          v111[0] = 0;
          LODWORD(v111[1]) = 0;
          goto LABEL_63;
        }
      }

      else
      {
        if (v110 != 6)
        {
LABEL_163:
          mpark::throw_bad_variant_access(v12);
        }

        v26 = objc_alloc(MEMORY[0x1E695DF90]);
        if (v108)
        {
          v27 = *(v108 - 3);
        }

        else
        {
          v27 = 0;
        }

        v28 = [v26 initWithCapacity:{v27, v103}];
        v16 = v28;
        v29 = v108;
        v108 = 0;
        v111[0] = v29;
        v111[1] = v28;
        if (v28)
        {
          v30 = v28;
        }

        v31 = *(this + 5);
        if (v31 == *(this + 4))
        {
          v32 = WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::RetainPtr<NSMutableDictionary>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 8, v31 + 1, v111);
          v33 = (*(this + 1) + 16 * *(this + 5));
          *v33 = 0;
          v34 = *v32;
          *v32 = 0;
          *v33 = v34;
          v35 = v32[1];
          v32[1] = 0;
          v33[1] = v35;
          ++*(this + 5);
          v36 = v111[1];
          v111[1] = 0;
          if (v36)
          {
          }
        }

        else
        {
          v37 = v31 + 1;
          v38 = *(this + 1);
          v111[0] = 0;
          v39 = (v38 + 16 * v31);
          *v39 = v29;
          v39[1] = v16;
          *(this + 5) = v37;
          v111[1] = 0;
        }

        if (v111[0])
        {
          v40 = (v111[0] - 16);
LABEL_63:
          WTF::fastFree(v40, v13);
        }
      }
    }

    else if (v14 == 3)
    {
      if (v110 != 3)
      {
        goto LABEL_163;
      }

      v15 = v108;
      if (v108)
      {
        atomic_fetch_add_explicit(v108, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](v111, v15);
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v13);
        }
      }

      else
      {
        v111[0] = &stru_1F1147748;
        v43 = &stru_1F1147748;
      }

      v16 = v111[0];
    }

    else
    {
      if (v110 != 4)
      {
        goto LABEL_163;
      }

      v24 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:*&v108];
      v16 = v24;
      if (v24)
      {
        goto LABEL_40;
      }
    }

LABEL_66:
    v44 = v107;
    if (v107 == -1)
    {
      __break(0xC471u);
      goto LABEL_168;
    }

    if (!v107)
    {
      __break(0xC471u);
      JUMPOUT(0x19D981C5CLL);
    }

    v45 = *this;
    if (!*this)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(this);
      v45 = *this;
      v44 = v107;
    }

    v46 = *(v45 - 8);
    v47 = (v44 + ~(v44 << 32)) ^ ((v44 + ~(v44 << 32)) >> 22);
    v48 = 9 * ((v47 + ~(v47 << 13)) ^ ((v47 + ~(v47 << 13)) >> 8));
    v49 = (v48 ^ (v48 >> 15)) + ~((v48 ^ (v48 >> 15)) << 27);
    v50 = v46 & ((v49 >> 31) ^ v49);
    v51 = (v45 + 16 * v50);
    v52 = *v51;
    if (*v51)
    {
      v53 = 0;
      v54 = 1;
      while (v52 != v44)
      {
        if (v52 == -1)
        {
          v53 = v51;
        }

        v50 = (v50 + v54) & v46;
        v51 = (v45 + 16 * v50);
        v52 = *v51;
        ++v54;
        if (!*v51)
        {
          if (v53)
          {
            *v53 = 0;
            v53[1] = 0;
            --*(*this - 16);
            v44 = v107;
            v51 = v53;
          }

          goto LABEL_78;
        }
      }

      if (v16)
      {
      }

      goto LABEL_88;
    }

LABEL_78:
    v55 = v51[1];
    *v51 = v44;
    v51[1] = v16;
    if (v55)
    {
    }

    v56 = *this;
    if (*this)
    {
      v57 = *(v56 - 12) + 1;
    }

    else
    {
      v57 = 1;
    }

    *(v56 - 12) = v57;
    v58 = (*(v56 - 16) + v57);
    v59 = *(v56 - 4);
    if (v59 <= 0x400)
    {
      if (3 * v59 > 4 * v58)
      {
        goto LABEL_88;
      }

LABEL_87:
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(this);
      goto LABEL_88;
    }

    if (v59 <= 2 * v58)
    {
      goto LABEL_87;
    }

LABEL_88:
    mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&v108, v13);
    do
    {
      v9 += 4;
    }

    while (v9 != v7 && *v9 + 1 <= 1);
  }

  if (v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable( v5,  a2);
  }

  a4.n128_u64[0] = 0;
  v60 = *(this + 3);
  v111[0] = v60;
  v61 = *(this + 9);
  LODWORD(v111[1]) = *(this + 8);
  HIDWORD(v111[1]) = v61;
  v106 = a4;
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (v61)
  {
    v62 = (v60 + 24 * v61);
    do
    {
      WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v107, v60);
      v63 = *(v60 + 2);
      v109 = v63;
      if (v63)
      {
        v64 = v63;
      }

      if (HIDWORD(v108))
      {
        v65 = v107;
        v66 = 8 * HIDWORD(v108);
        do
        {
          WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&v105, this, *v65);
          v67 = v105;
          if (v105)
          {
            [v109 addObject:v105];
          }

          ++v65;
          v66 -= 8;
        }

        while (v66);
      }

      v68 = v109;
      v109 = 0;
      if (v68)
      {
      }

      v69 = v107;
      if (v107)
      {
        v107 = 0;
        LODWORD(v108) = 0;
        WTF::fastFree(v69, a2);
      }

      v60 = (v60 + 24);
    }

    while (v60 != v62);
  }

  WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<NSMutableArray>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v111, a2);
  WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<NSMutableArray>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v106, v70);
  *&v72 = 0;
  v73 = *(this + 1);
  v107 = v73;
  v74 = *(this + 5);
  LODWORD(v108) = *(this + 4);
  HIDWORD(v108) = v74;
  *v111 = v72;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (v74)
  {
    v75 = (v73 + 16 * v74);
    while (1)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::HashTable(&v106, v73);
      v76 = *(v73 + 1);
      v106.n128_u64[1] = v76;
      if (v76)
      {
        v77 = v76;
      }

      if (!v106.n128_u64[0])
      {
        break;
      }

      v79 = *(v106.n128_u64[0] - 4);
      v78 = (v106.n128_u64[0] + 16 * v79);
      if (!*(v106.n128_u64[0] - 12))
      {
        goto LABEL_118;
      }

      if (!v79)
      {
        v83 = 0;
        v80 = v106.n128_u64[0];
        goto LABEL_129;
      }

      v82 = 16 * v79;
      v80 = v106.n128_u64[0];
      while ((*v80 + 1) <= 1)
      {
        v80 += 2;
        v82 -= 16;
        if (!v82)
        {
          v80 = v78;
          break;
        }
      }

LABEL_119:
      if (v106.n128_u64[0])
      {
        v83 = *(v106.n128_u64[0] - 4);
LABEL_129:
        v81 = (v106.n128_u64[0] + 16 * v83);
        goto LABEL_136;
      }

      v81 = 0;
LABEL_136:
      while (v80 != v81)
      {
        v84 = v80[1];
        WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&v105, this, *v80);
        v85 = v105;
        if (v105)
        {
          WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&v104, this, v84);
          v86 = v104;
          if (v104)
          {
            [v106.n128_u64[1] setObject:v104 forKey:v85];
          }
        }

        do
        {
          v80 += 2;
        }

        while (v80 != v78 && (*v80 + 1) <= 1);
      }

      v87 = v106.n128_u64[1];
      v106.n128_u64[1] = 0;
      if (v87)
      {
      }

      if (v106.n128_u64[0])
      {
        WTF::fastFree((v106.n128_u64[0] - 16), v71);
      }

      v73 = (v73 + 16);
      if (v73 == v75)
      {
        goto LABEL_142;
      }
    }

    v78 = 0;
    v79 = 0;
LABEL_118:
    v80 = v78;
    v78 = (v106.n128_u64[0] + 16 * v79);
    goto LABEL_119;
  }

LABEL_142:
  WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::RetainPtr<NSMutableDictionary>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v107, v71);
  WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::RetainPtr<NSMutableDictionary>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v111, v88);
  v107 = *this;
  result = v107;
  *this = 0;
  if (!result)
  {
    goto LABEL_153;
  }

  v91 = *(this + 15);
  if (v91 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D981C7CLL);
  }

  if (!v91)
  {
    __break(0xC471u);
LABEL_168:
    JUMPOUT(0x19D981C3CLL);
  }

  v92 = *(result - 2);
  v93 = (v91 + ~(v91 << 32)) ^ ((v91 + ~(v91 << 32)) >> 22);
  v94 = 9 * ((v93 + ~(v93 << 13)) ^ ((v93 + ~(v93 << 13)) >> 8));
  v95 = (v94 ^ (v94 >> 15)) + ~((v94 ^ (v94 >> 15)) << 27);
  v96 = v92 & ((v95 >> 31) ^ v95);
  v97 = *(result + 2 * v96);
  if (v97 != v91)
  {
    v98 = 1;
    while (v97)
    {
      v96 = (v96 + v98) & v92;
      v97 = *(result + 2 * v96);
      ++v98;
      if (v97 == v91)
      {
        goto LABEL_152;
      }
    }

    v96 = *(result - 1);
  }

LABEL_152:
  v99 = *(result - 1);
  if (v96 == v99)
  {
LABEL_153:
    *v103 = 0;
    if (!result)
    {
      return result;
    }

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(result, v89);
  }

  v100 = (result + 16 * v96);
  *v103 = v100[1];
  *v100 = -1;
  v100[1] = 0;
  v101 = vadd_s32(*(result - 16), 0xFFFFFFFF00000001);
  *(result - 2) = v101;
  if (6 * v101.i32[1] >= v99 || v99 < 9)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(result, v89);
  }

  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(&v107, v99 >> 1);
  result = v107;
  if (v107)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(result, v89);
  }

  return result;
}

void sub_19D981CA0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF *a14, int a15, uint64_t a16, uint64_t a17, WTF *a18, uint64_t a19, uint64_t a20)
{
  *a9 = 0;
  if (v20)
  {
  }

  if (a14)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(a14, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *WebKit::JavaScriptEvaluationResult::toWK@<X0>(WebKit::JavaScriptEvaluationResult *this@<X0>, void *a2@<X1>, void *a3@<X8>, __n128 a4@<Q0>)
{
  v5 = *(this + 14);
  *(this + 14) = 0;
  if (!v5)
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_9;
  }

  v6 = *(v5 - 4);
  v7 = (v5 + 32 * v6);
  if (!*(v5 - 12))
  {
LABEL_9:
    v9 = v7;
    v7 = (v5 + 32 * v6);
    goto LABEL_10;
  }

  if (!v6)
  {
    v10 = 0;
    v9 = v5;
    goto LABEL_12;
  }

  v8 = 32 * v6;
  v9 = v5;
  while (*v9 + 1 <= 1)
  {
    v9 += 4;
    v8 -= 32;
    if (!v8)
    {
      v9 = v7;
      break;
    }
  }

LABEL_10:
  if (v5)
  {
    v10 = *(v5 - 4);
LABEL_12:
    v11 = (v5 + 32 * v10);
    goto LABEL_13;
  }

  v11 = 0;
LABEL_13:
  while (v9 != v11)
  {
    v117 = *v9;
    v12 = mpark::detail::copy_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::copy_constructor(&v118, (v9 + 1));
    if (v120 == 255)
    {
      v14 = -1;
    }

    else
    {
      v14 = v120;
    }

    if (v14 <= 2)
    {
      if (v14)
      {
        if (v14 == 1)
        {
          if (v120 != 1)
          {
            goto LABEL_165;
          }

          v15 = v118;
          v16 = API::Object::newObject(0x18uLL, 31);
          *(v16 + 16) = v15;
          v17 = API::Object::Object(v16);
          v18 = &unk_1F10E82D8;
          goto LABEL_36;
        }

        if (v120 != 2)
        {
          goto LABEL_165;
        }

LABEL_35:
        v25 = v118;
        v26 = API::Object::newObject(0x18uLL, 32);
        *(v26 + 2) = v25;
        v17 = API::Object::Object(v26);
        v18 = &unk_1F10E8350;
LABEL_36:
        *v17 = v18;
        v114 = v17;
        goto LABEL_52;
      }

      if (v120)
      {
        goto LABEL_165;
      }

      v114 = 0;
    }

    else if (v14 > 4)
    {
      if (v14 == 5)
      {
        if (v120 != 5)
        {
          goto LABEL_165;
        }

        v121 = 0;
        v122 = 0;
        API::Array::create(&v121, &v116);
        WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v121, v19);
        WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v121, &v118);
        v20 = v116.n128_u64[0];
        CFRetain(*(v116.n128_u64[0] + 8));
        v123 = v20;
        v21 = *(this + 19);
        if (v21 == *(this + 18))
        {
          v22 = WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Ref<API::Array,WTF::RawPtrTraits<API::Array>,WTF::DefaultRefDerefTraits<API::Array>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 16, v21 + 1, &v121);
          v23 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((*(this + 8) + 24 * *(this + 19)), v22);
          v24 = (v22 + 4);
        }

        else
        {
          v23 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((*(this + 8) + 24 * v21), &v121);
          v24 = &v123;
        }

        v36 = *v24;
        *v24 = 0;
        v23[2] = v36;
        ++*(this + 19);
        v37 = v123;
        v123 = 0;
        if (v37)
        {
          CFRelease(*(v37 + 1));
        }

        v38 = v121;
        if (v121)
        {
          v121 = 0;
          LODWORD(v122) = 0;
          WTF::fastFree(v38, v13);
        }

        v114 = v20;
      }

      else
      {
        if (v120 != 6)
        {
LABEL_165:
          mpark::throw_bad_variant_access(v12);
        }

        v27 = API::Object::newObject(0x18uLL, 9);
        v28 = API::Object::Object(v27);
        *v28 = &unk_1F110EAE0;
        *(v28 + 2) = 0;
        v29 = v118;
        v118 = 0;
        v121 = v29;
        CFRetain(*(v28 + 1));
        v122 = v27;
        v30 = *(this + 15);
        if (v30 == *(this + 14))
        {
          v31 = WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::Ref<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 48, v30 + 1, &v121);
          v30 = *(this + 15);
          v32 = (*(this + 6) + 16 * v30);
          *v32 = 0;
          v33 = *v31;
          *v31 = 0;
          *v32 = v33;
          v34 = v31[1];
        }

        else
        {
          v32 = (*(this + 6) + 16 * v30);
          v121 = 0;
          *v32 = v29;
          v31 = &v121;
          v34 = v27;
        }

        v31[1] = 0;
        v32[1] = v34;
        *(this + 15) = v30 + 1;
        v35 = v122;
        v122 = 0;
        if (v35)
        {
          CFRelease(*(v35 + 1));
        }

        if (v121)
        {
          WTF::fastFree((v121 - 16), v13);
        }

        v114 = v27;
      }
    }

    else
    {
      if (v14 != 3)
      {
        if (v120 != 4)
        {
          goto LABEL_165;
        }

        goto LABEL_35;
      }

      if (v120 != 3)
      {
        goto LABEL_165;
      }

      API::String::create(&v114);
    }

LABEL_52:
    v39 = v117;
    if (v117 == -1)
    {
      __break(0xC471u);
      goto LABEL_170;
    }

    if (!v117)
    {
      __break(0xC471u);
      JUMPOUT(0x19D98289CLL);
    }

    v40 = *(this + 5);
    if (!v40)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(this + 5);
      v40 = *(this + 5);
      v39 = v117;
    }

    v41 = *(v40 - 8);
    v42 = (v39 + ~(v39 << 32)) ^ ((v39 + ~(v39 << 32)) >> 22);
    v43 = 9 * ((v42 + ~(v42 << 13)) ^ ((v42 + ~(v42 << 13)) >> 8));
    v44 = (v43 ^ (v43 >> 15)) + ~((v43 ^ (v43 >> 15)) << 27);
    v45 = v41 & ((v44 >> 31) ^ v44);
    v46 = (v40 + 16 * v45);
    v47 = *v46;
    if (*v46)
    {
      v48 = 0;
      v49 = 1;
      while (v47 != v39)
      {
        if (v47 == -1)
        {
          v48 = v46;
        }

        v45 = (v45 + v49) & v41;
        v46 = (v40 + 16 * v45);
        v47 = *v46;
        ++v49;
        if (!*v46)
        {
          if (v48)
          {
            *v48 = 0;
            v48[1] = 0;
            --*(*(this + 5) - 16);
            v39 = v117;
            v46 = v48;
          }

          goto LABEL_64;
        }
      }

      goto LABEL_72;
    }

LABEL_64:
    *v46 = v39;
    v50 = v114;
    v114 = 0;
    v51 = v46[1];
    v46[1] = v50;
    if (v51)
    {
      CFRelease(*(v51 + 1));
    }

    v52 = *(this + 5);
    if (v52)
    {
      v53 = *(v52 - 12) + 1;
    }

    else
    {
      v53 = 1;
    }

    *(v52 - 12) = v53;
    v54 = (*(v52 - 16) + v53);
    v55 = *(v52 - 4);
    if (v55 > 0x400)
    {
      if (v55 > 2 * v54)
      {
        goto LABEL_72;
      }

LABEL_71:
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(this + 5);
      goto LABEL_72;
    }

    if (3 * v55 <= 4 * v54)
    {
      goto LABEL_71;
    }

LABEL_72:
    v56 = v114;
    v114 = 0;
    if (v56)
    {
      CFRelease(*(v56 + 1));
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&v118, v13);
    do
    {
      v9 += 4;
    }

    while (v9 != v7 && *v9 + 1 <= 1);
  }

  if (v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable( v5,  a2);
  }

  a4.n128_u64[0] = 0;
  v57 = *(this + 8);
  v121 = v57;
  v58 = *(this + 19);
  LODWORD(v122) = *(this + 18);
  HIDWORD(v122) = v58;
  v116 = a4;
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (v58)
  {
    v59 = (v57 + 24 * v58);
    do
    {
      WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v117, v57);
      v60 = *(v57 + 2);
      CFRetain(*(v60 + 8));
      v119 = v60;
      if (HIDWORD(v118))
      {
        v61 = v117;
        v62 = 8 * HIDWORD(v118);
        do
        {
          v63 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 5, *v61);
          v64 = v63;
          if (v63)
          {
            CFRetain(*(v63 + 8));
            v65 = v119;
            CFRetain(*(v119 + 8));
            v114 = v64;
            v66 = *(v65 + 28);
            if (v66 == *(v65 + 24))
            {
              v68 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v65 + 16, v66 + 1, &v114);
              v66 = *(v65 + 28);
              v67 = (*(v65 + 16) + 8 * v66);
              v64 = *v68;
            }

            else
            {
              v67 = (*(v65 + 16) + 8 * v66);
              v68 = &v114;
            }

            *v68 = 0;
            *v67 = v64;
            *(v65 + 28) = v66 + 1;
            v69 = v114;
            v114 = 0;
            if (v69)
            {
              CFRelease(*(v69 + 1));
            }

            CFRelease(*(v65 + 8));
          }

          ++v61;
          v62 -= 8;
        }

        while (v62);
        v60 = v119;
        v119 = 0;
        if (!v60)
        {
          goto LABEL_100;
        }
      }

      else
      {
        v119 = 0;
      }

      CFRelease(*(v60 + 8));
LABEL_100:
      v70 = v117;
      if (v117)
      {
        v117 = 0;
        LODWORD(v118) = 0;
        WTF::fastFree(v70, a2);
      }

      v57 = (v57 + 24);
    }

    while (v57 != v59);
  }

  WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Ref<API::Array,WTF::RawPtrTraits<API::Array>,WTF::DefaultRefDerefTraits<API::Array>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v121, a2);
  WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Ref<API::Array,WTF::RawPtrTraits<API::Array>,WTF::DefaultRefDerefTraits<API::Array>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v116, v71);
  v73.n128_u64[0] = 0;
  v74 = *(this + 6);
  v121 = v74;
  v75 = *(this + 15);
  LODWORD(v122) = *(this + 14);
  HIDWORD(v122) = v75;
  v116 = v73;
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (v75)
  {
    v76 = (v74 + 16 * v75);
    while (1)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::HashTable(&v114, v74);
      v77 = *(v74 + 1);
      CFRetain(*(v77 + 8));
      v115 = v77;
      if (!v114)
      {
        break;
      }

      v79 = *(v114 - 1);
      v78 = (v114 + 16 * v79);
      if (!*(v114 - 3))
      {
        goto LABEL_107;
      }

      if (!v79)
      {
        v92 = 0;
        v80 = v114;
        goto LABEL_138;
      }

      v91 = 16 * v79;
      v80 = v114;
      while ((*v80 + 1) <= 1)
      {
        v80 += 2;
        v91 -= 16;
        if (!v91)
        {
          v80 = v78;
          break;
        }
      }

LABEL_108:
      if (v114)
      {
        v92 = *(v114 - 1);
LABEL_138:
        v81 = (v114 + 16 * v92);
        goto LABEL_110;
      }

      v81 = 0;
LABEL_110:
      if (v80 != v81)
      {
        do
        {
          v82 = v80[1];
          v83 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 5, *v80);
          v84 = v83;
          if (v83 && (*(*v83 + 16))(v83) == 20)
          {
            CFRetain(*(v84 + 8));
            v85 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(this + 5, v82);
            v86 = v85;
            if (v85)
            {
              CFRetain(*(v85 + 8));
              v113 = v86;
              v87 = v115;
              CFRetain(*(v115 + 8));
              WTF::String::isolatedCopy();
              WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>((v87 + 16), &v112, &v113, &v117);
              v89 = v112;
              v112 = 0;
              if (v89 && atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v89, v88);
              }

              CFRelease(*(v87 + 8));
              v90 = v113;
              v113 = 0;
              if (v90)
              {
                CFRelease(*(v90 + 8));
              }
            }

            CFRelease(*(v84 + 8));
          }

          do
          {
            v80 += 2;
          }

          while (v80 != v78 && (*v80 + 1) <= 1);
        }

        while (v80 != v81);
        v77 = v115;
      }

      v115 = 0;
      if (v77)
      {
        CFRelease(*(v77 + 8));
      }

      if (v114)
      {
        WTF::fastFree((v114 - 16), v72);
      }

      v74 = (v74 + 16);
      if (v74 == v76)
      {
        goto LABEL_139;
      }
    }

    v78 = 0;
    v79 = 0;
LABEL_107:
    v80 = v78;
    v78 = (v114 + 16 * v79);
    goto LABEL_108;
  }

LABEL_139:
  WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::Ref<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v121, v72);
  WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::Ref<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v116, v93);
  v117 = *(this + 5);
  v95 = v117;
  *(this + 5) = 0;
  if (!v95)
  {
    goto LABEL_150;
  }

  v96 = *(this + 15);
  if (v96 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9828BCLL);
  }

  if (!v96)
  {
    __break(0xC471u);
LABEL_170:
    JUMPOUT(0x19D98287CLL);
  }

  v97 = *(v95 - 2);
  v98 = (v96 + ~(v96 << 32)) ^ ((v96 + ~(v96 << 32)) >> 22);
  v99 = 9 * ((v98 + ~(v98 << 13)) ^ ((v98 + ~(v98 << 13)) >> 8));
  v100 = (v99 ^ (v99 >> 15)) + ~((v99 ^ (v99 >> 15)) << 27);
  v101 = v97 & ((v100 >> 31) ^ v100);
  v102 = *(v95 + 2 * v101);
  if (v102 != v96)
  {
    v103 = 1;
    while (v102)
    {
      v101 = (v101 + v103) & v97;
      v102 = *(v95 + 2 * v101);
      ++v103;
      if (v102 == v96)
      {
        goto LABEL_149;
      }
    }

    v101 = *(v95 - 1);
  }

  v104 = *(v95 - 1);
  if (v101 == v104)
  {
    goto LABEL_150;
  }

LABEL_149:
  v105 = (v95 + 16 * v101);
  v106 = v105[1];
  *v105 = -1;
  v105[1] = 0;
  v107 = vadd_s32(*(v95 - 16), 0xFFFFFFFF00000001);
  *(v95 - 2) = v107;
  if (6 * v107.i32[1] < v104 && v104 >= 9)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(&v117, v104 >> 1);
  }

  if (v106)
  {
    v109 = *(v106 + 8);
    *a3 = v109;
    if (v109)
    {
      CFRetain(*([v109 _apiObject] + 8));
      v109 = *(v106 + 8);
    }

    CFRelease(v109);
  }

  else
  {
LABEL_150:
    *a3 = 0;
  }

  result = v117;
  if (v117)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v117, v94);
  }

  return result;
}

void sub_19D9828E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, int a17, uint64_t a18, uint64_t a19, WTF *a20, uint64_t a21, uint64_t a22)
{
  if (a12)
  {
    CFRelease(*(a12 + 8));
  }

  CFRelease(*(v22 + 8));
  v25 = a18;
  a18 = 0;
  if (v25)
  {
    CFRelease(*(v25 + 8));
  }

  v26 = a16;
  if (a16)
  {
    a16 = 0;
    a17 = 0;
    WTF::fastFree(v26, v24);
  }

  WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Ref<API::Array,WTF::RawPtrTraits<API::Array>,WTF::DefaultRefDerefTraits<API::Array>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a20, v24);
  WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Ref<API::Array,WTF::RawPtrTraits<API::Array>,WTF::DefaultRefDerefTraits<API::Array>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, v27);
  _Unwind_Resume(a1);
}

void WebKit::JavaScriptEvaluationResult::toVariant(WebKit::JavaScriptEvaluationResult *this, JSValue *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = WTF::dynamic_objc_cast<JSValue>(a3);
  if (v6)
  {

    WebKit::JavaScriptEvaluationResult::jsValueToVariant(this, a2, v6);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *this = 1;
      goto LABEL_27;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (CFNumberGetType(a3) == kCFNumberCharType)
      {
        if ([a3 isEqual:MEMORY[0x1E695E118]])
        {
          v7 = 1;
          *this = 1;
          goto LABEL_9;
        }

        if ([a3 isEqual:MEMORY[0x1E695E110]])
        {
          *this = 0;
          v7 = 1;
          goto LABEL_9;
        }
      }

      [a3 doubleValue];
      *this = v15;
      v7 = 2;
      goto LABEL_9;
    }

    if (WTF::is_objc<NSString,objc_object>(a3))
    {
      MEMORY[0x19EB02040](&v22, a3);
      *this = v22;
      v7 = 3;
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a3 timeIntervalSince1970];
      *this = v14;
      v7 = 4;
      goto LABEL_9;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = 0;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3321888768;
        v16[2] = ___ZN6WebKit26JavaScriptEvaluationResult9toVariantEP11objc_object_block_invoke;
        v16[3] = &__block_descriptor_48_e8_32c72_ZTSKZN6WebKit26JavaScriptEvaluationResult9toVariantEP11objc_objectE3__0_e15_v32__0_8_16_B24l;
        v16[4] = &v22;
        v16[5] = a2;
        [a3 enumerateKeysAndObjectsUsingBlock:v16];
        *this = v22;
        v7 = 6;
LABEL_9:
        *(this + 16) = v7;
        return;
      }

      *this = 0;
LABEL_27:
      *(this + 16) = 0;
      return;
    }

    v22 = 0;
    v23 = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v8)
    {
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(a3);
          }

          v11 = WebKit::JavaScriptEvaluationResult::addObjectToMap(a2, *(*(&v18 + 1) + 8 * i));
          v17 = v11;
          if (HIDWORD(v23) == v23)
          {
            WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&v22, &v17);
          }

          else
          {
            *(v22 + HIDWORD(v23)) = v11;
            ++HIDWORD(v23);
          }
        }

        v8 = [a3 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v8);
    }

    WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this, &v22);
    *(this + 16) = 5;
    v13 = v22;
    if (v22)
    {
      v22 = 0;
      LODWORD(v23) = 0;
      WTF::fastFree(v13, v12);
    }
  }
}

void WebKit::JavaScriptEvaluationResult::jsValueToVariant(WebKit::JavaScriptEvaluationResult *this, JSValue *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (([a3 isObject] & 1) == 0)
  {
    if ([a3 isBoolean])
    {
      *this = [a3 toBool];
      v7 = 1;
      goto LABEL_29;
    }

    if ([a3 isNumber])
    {
      [objc_msgSend(a3 "toNumber")];
      *this = v17;
      v7 = 2;
      goto LABEL_29;
    }

    if ([a3 isString])
    {
      MEMORY[0x19EB02040](&v25, [a3 toString]);
      *this = v25;
      v7 = 3;
      goto LABEL_29;
    }

    if ([a3 isNull])
    {
      *this = 1;
LABEL_36:
      *(this + 16) = 0;
      return;
    }

LABEL_35:
    *this = 0;
    goto LABEL_36;
  }

  if ([a3 isDate])
  {
    [objc_msgSend(a3 "toDate")];
    *this = v6;
    v7 = 4;
LABEL_29:
    *(this + 16) = v7;
    return;
  }

  if ([a3 isArray])
  {
    v8 = [a3 toArray];
    if (v8)
    {
      v9 = v8;
      v10 = v8;
      v11 = [v9 count];
      v12 = v11;
      v25 = 0;
      v26 = 0;
      if (!v11)
      {
LABEL_12:
        WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(this, &v25);
        *(this + 16) = 5;
        v16 = v25;
        if (v25)
        {
          v25 = 0;
          LODWORD(v26) = 0;
          WTF::fastFree(v16, v15);
        }

LABEL_34:

        return;
      }

      if (!(v11 >> 29))
      {
        v13 = WTF::fastMalloc((8 * v11));
        v14 = 0;
        LODWORD(v26) = v12;
        v25 = v13;
        do
        {
          *(v13 + v14) = WebKit::JavaScriptEvaluationResult::addObjectToMap(a2, [v9 objectAtIndex:v14]);
          HIDWORD(v26) = ++v14;
        }

        while (v12 != v14);
        goto LABEL_12;
      }

LABEL_38:
      __break(0xC471u);
      JUMPOUT(0x19D9831B4);
    }

    goto LABEL_35;
  }

  v18 = [a3 toObject];
  v9 = v18;
  if (v18)
  {
    if ((WTF::ObjCTypeCastTraits<NSDictionary>::isType(v18) & 1) == 0)
    {
      goto LABEL_38;
    }

    v19 = v9;
  }

  v33 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v20)
  {
    v21 = *v30;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v9);
        }

        v23 = *(*(&v29 + 1) + 8 * i);
        v28 = WebKit::JavaScriptEvaluationResult::addObjectToMap(a2, v23);
        v27 = WebKit::JavaScriptEvaluationResult::addObjectToMap(a2, [v9 objectForKey:v23]);
        WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&v33, &v28, &v27, &v25);
      }

      v20 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v20);
    v24 = v33;
  }

  else
  {
    v24 = 0;
  }

  *this = v24;
  *(this + 16) = 6;
  if (v9)
  {
    goto LABEL_34;
  }
}

uint64_t WebKit::JavaScriptEvaluationResult::addObjectToMap(WebKit::JavaScriptEvaluationResult *this, objc_object *a2)
{
  if (a2)
  {
    v3 = a2;
    while (1)
    {
      v4 = WTF::dynamic_objc_cast<JSValue>(v3);
      if (!v4)
      {
        break;
      }

      v5 = v4;
      if (![v4 isArray])
      {
        break;
      }

      v3 = [v5 toArray];
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    v15[0] = v3;
    ShouldValidate = WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::find<WTF::HashMapTranslator<WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>>,(WTF::ShouldValidateKey)1,objc_object const*>(this + 11, v15);
    v11 = *(this + 11);
    if (v11)
    {
      v11 += 16 * *(v11 - 4);
    }

    if (v11 != ShouldValidate)
    {
      return *(ShouldValidate + 8);
    }

    IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
    v17 = IdentifierInternal;
    v14[0] = v3;
    v12 = v3;
    WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>&>(v15, this + 11, v14, &v17);
    if (v14[0])
    {
    }

    WebKit::JavaScriptEvaluationResult::toVariant(v15, this, v3);
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>( v14,  this + 14,  &v17,  v15);
    mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v15, v13);
    return IdentifierInternal;
  }

LABEL_6:
  if (*(this + 104))
  {
    return *(this + 12);
  }

  v6 = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  if ((*(this + 104) & 1) == 0)
  {
    *(this + 104) = 1;
  }

  *(this + 12) = v6;
  LOBYTE(v15[0]) = 0;
  v16 = 0;
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>( v14,  this + 14,  this + 12,  v15);
  result = mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v15, v7);
  if (*(this + 104))
  {
    return *(this + 12);
  }

  __break(1u);
  return result;
}

void sub_19D983388(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  mpark::detail::move_constructor<mpark::detail::traits<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(va, a2);
  _Unwind_Resume(a1);
}

void sub_19D9833A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  JUMPOUT(0x19D983398);
}

uint64_t *___ZN6WebKit26JavaScriptEvaluationResult9toVariantEP11objc_object_block_invoke(uint64_t a1, objc_object *a2, objc_object *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = WebKit::JavaScriptEvaluationResult::addObjectToMap(v4, a2);
  v8 = WebKit::JavaScriptEvaluationResult::addObjectToMap(v4, a3);
  return WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v5, &v9, &v8, v7);
}

__n128 __copy_helper_block_e8_32c72_ZTSKZN6WebKit26JavaScriptEvaluationResult9toVariantEP11objc_objectE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

unint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned __int8 *a4)
{
  v24 = a4;
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMapTranslator,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(*a3);
  v7 = *a2;
  if (*a2
    || (WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand( a2,  0),  (v7 = *a2) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  result = WTF::intHash(*a3);
  v10 = result & v8;
  v11 = (v7 + 32 * v10);
  v12 = *v11;
  v13 = *a3;
  if (*v11)
  {
    v20 = 0;
    v21 = 1;
    do
    {
      if (v12 == v13)
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

        v19 = 0;
        v18 = v22 + 32 * v23;
        goto LABEL_9;
      }

      if (v12 == -1)
      {
        v20 = v11;
      }

      v10 = (v10 + v21) & v8;
      v11 = (v7 + 32 * v10);
      v12 = *v11;
      ++v21;
    }

    while (*v11);
    if (v20)
    {
      *v20 = 0;
      v20[8] = 0;
      v20[24] = 0;
      --*(*a2 - 16);
      v13 = *a3;
      v11 = v20;
    }
  }

  result = WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::translate<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>> WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>(WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> const&,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)::{lambda(void)#1}>( v11,  v13,  &v24);
  v14 = *a2;
  if (*a2)
  {
    v15 = *(v14 - 12) + 1;
  }

  else
  {
    v15 = 1;
  }

  *(v14 - 12) = v15;
  v16 = (*(v14 - 16) + v15);
  v17 = *(v14 - 4);
  if (v17 > 0x400)
  {
    if (v17 > 2 * v16)
    {
      goto LABEL_8;
    }

LABEL_21:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand( a2,  v11);
    v11 = result;
    v14 = *a2;
    if (*a2)
    {
      v17 = *(v14 - 4);
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_8;
  }

  if (3 * v17 <= 4 * v16)
  {
    goto LABEL_21;
  }

LABEL_8:
  v18 = v14 + 32 * v17;
  v19 = 1;
LABEL_9:
  *a1 = v11;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19;
  return result;
}

void WebKit::JavaScriptEvaluationResult::extract(WebKit::JavaScriptEvaluationResult *this@<X0>, OpaqueJSContext *a2@<X1>, _BYTE *a3@<X8>)
{
  API::SerializedScriptValue::deserializationContext(this, &v12);
  v8 = WebKit::roundTripThroughSerializedScriptValue(this, v12, a2, v7);
  if (v9)
  {
    WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult(v11, v12, v8);
    WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult(a3, v11);
    a3[128] = 1;
    WebKit::JavaScriptEvaluationResult::~JavaScriptEvaluationResult(v11, v10);
  }

  else
  {
    *a3 = 0;
    a3[128] = 0;
  }

  if (v12)
  {
    JSGlobalContextRelease(v12);
  }
}

void sub_19D983654(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    JSGlobalContextRelease(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::roundTripThroughSerializedScriptValue(WebKit *this, OpaqueJSContext *a2, OpaqueJSContext *a3, const OpaqueJSValue **a4)
{
  WebCore::SerializedScriptValue::create(&v8, this, a3, 0, a4);
  if (!v8)
  {
    return 0;
  }

  v5 = WebCore::SerializedScriptValue::deserialize(v8, a2, 0);
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v6);
  }

  return v5;
}

void sub_19D9836E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::JavaScriptEvaluationResult::extract(objc_object *this@<X0>, objc_object *a2@<X1>, _BYTE *a3@<X8>)
{
  if (this && (WebKit::isSerializable(this, a2) & 1) == 0)
  {
    *a3 = 0;
    a3[128] = 0;
  }

  else
  {
    WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult(v6, this);
    WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult(a3, v6);
    a3[128] = 1;
    WebKit::JavaScriptEvaluationResult::~JavaScriptEvaluationResult(v6, v5);
  }
}

uint64_t WebKit::isSerializable(WebKit *this, objc_object *a2)
{
  if (!this || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 0;
      v8 = &v7;
      v9 = 0x2020000000;
      v10 = 1;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = ___ZN6WebKitL14isSerializableEP11objc_object_block_invoke;
      v6[3] = &unk_1E7630E08;
      v6[4] = &v7;
      [(WebKit *)this enumerateObjectsUsingBlock:v6];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v3 = 0;
        return v3 & 1;
      }

      v7 = 0;
      v8 = &v7;
      v9 = 0x2020000000;
      v10 = 1;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = ___ZN6WebKitL14isSerializableEP11objc_object_block_invoke_2;
      v5[3] = &unk_1E7630E30;
      v5[4] = &v7;
      [(WebKit *)this enumerateKeysAndObjectsUsingBlock:v5];
    }

    v3 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v3 & 1;
}

WebKit::JavaScriptEvaluationResult *WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult(WebKit::JavaScriptEvaluationResult *this, objc_object *a2)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 104) = 0;
  *(this + 14) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 5) = 0u;
  *(this + 96) = 0;
  *(this + 15) = WebKit::JavaScriptEvaluationResult::addObjectToMap(this, a2);
  v4 = *(this + 11);
  if (v4)
  {
    *(this + 11) = 0;
    WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::deallocateTable(v4, v3);
  }

  if (*(this + 104) == 1)
  {
    *(this + 104) = 0;
  }

  return this;
}

void sub_19D9839F8(_Unwind_Exception *a1, void *a2)
{
  v6 = v2[14];
  if (v6)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable( v6,  a2);
  }

  v7 = v2[11];
  if (v7)
  {
    WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::deallocateTable(v7, a2);
  }

  v8 = v2[10];
  if (v8)
  {
    WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::deallocateTable(v8, a2);
  }

  WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Ref<API::Array,WTF::RawPtrTraits<API::Array>,WTF::DefaultRefDerefTraits<API::Array>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
  WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::Ref<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v9);
  v11 = v2[5];
  if (v11)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v11, v10);
  }

  WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<NSMutableArray>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v2 + 3), v10);
  WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::RetainPtr<NSMutableDictionary>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v2 + 1), v12);
  if (*v2)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(*v2, v13);
  }

  _Unwind_Resume(a1);
}

WebKit::JavaScriptEvaluationResult *WebKit::JavaScriptEvaluationResult::JavaScriptEvaluationResult(WebKit::JavaScriptEvaluationResult *this, OpaqueJSContext *a2, const OpaqueJSValue *a3)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 104) = 0;
  *(this + 14) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 5) = 0u;
  *(this + 96) = 0;
  *(this + 15) = WebKit::JavaScriptEvaluationResult::addObjectToMap(this, [MEMORY[0x1E696EB58] valueWithJSValueRef:a3 inContext:{objc_msgSend(MEMORY[0x1E696EB40], "contextWithJSGlobalContextRef:", a2)}]);
  v5 = *(this + 10);
  if (v5)
  {
    *(this + 10) = 0;
    WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::deallocateTable(v5, v4);
  }

  if (*(this + 104) == 1)
  {
    *(this + 104) = 0;
  }

  return this;
}

void sub_19D983B38(_Unwind_Exception *a1, void *a2)
{
  v6 = v2[14];
  if (v6)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<mpark::variant<WebKit::JavaScriptEvaluationResult::NullType,BOOL,double,WTF::String,WTF::Seconds,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable( v6,  a2);
  }

  v7 = v2[11];
  if (v7)
  {
    WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::deallocateTable(v7, a2);
  }

  v8 = v2[10];
  if (v8)
  {
    WTF::HashTable<WTF::RetainPtr<objc_object *>,WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashMap<WTF::RetainPtr<objc_object *>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::FastMalloc>::deallocateTable(v8, a2);
  }

  WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Ref<API::Array,WTF::RawPtrTraits<API::Array>,WTF::DefaultRefDerefTraits<API::Array>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
  WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::Ref<API::Dictionary,WTF::RawPtrTraits<API::Dictionary>,WTF::DefaultRefDerefTraits<API::Dictionary>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3, v9);
  v11 = v2[5];
  if (v11)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v11, v10);
  }

  WTF::Vector<std::pair<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<NSMutableArray>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v2 + 3), v10);
  WTF::Vector<std::pair<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::JSObjectIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::RetainPtr<NSMutableDictionary>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v2 + 1), v12);
  if (*v2)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RetainPtr<NSURLSessionDataTask>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RetainPtr<NSURLSessionDataTask>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::DataTaskIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(*v2, v13);
  }

  _Unwind_Resume(a1);
}

JSValueRef WebKit::JavaScriptEvaluationResult::toJS(WebKit::JavaScriptEvaluationResult *this, OpaqueJSContext *a2, __n128 a3)
{
  v4 = MEMORY[0x1E696EB58];
  WebKit::JavaScriptEvaluationResult::toID(this, a2, &v8, a3);
  v5 = v8;
  v6 = [objc_msgSend(v4 valueWithObject:v8 inContext:{objc_msgSend(MEMORY[0x1E696EB40], "contextWithJSGlobalContextRef:", a2)), "JSValueRef"}];
  if (v5)
  {
  }

  if (v6)
  {
    return v6;
  }

  return JSValueMakeUndefined(a2);
}

void sub_19D983C58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **WebKit::RemoteObjectInvocation::RemoteObjectInvocation(atomic_uint **result, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *result = v4;
  v5 = *a3;
  *a3 = 0;
  v6 = *a4;
  *a4 = 0;
  result[1] = v5;
  result[2] = v6;
  return result;
}

IPC::Encoder *WebKit::RemoteObjectRegistry::sendInvocation(WebKit::RemoteObjectRegistry *this, const WebKit::RemoteObjectInvocation *a2)
{
  v4 = *(a2 + 2);
  if (v4)
  {
    (*(*this + 64))(&v9, this, "RemoteObjectRegistry invocation", 32);
    WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>(this + 3, v4, &v9, v8);
    v7 = v9;
    v9 = 0;
    if (v7)
    {
      WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v7 + 8), v6);
    }
  }

  v8[0] = a2;
  return WebKit::RemoteObjectRegistry::send<Messages::RemoteObjectRegistry::InvokeMethod>(this, v8);
}

void sub_19D983D60(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((a12 + 8), a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19D983F44);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand(result, 0);
    v9 = *v8;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v23 = 0;
        v24 = v9 + 16 * *(v9 - 4);
        goto LABEL_25;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*v8 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  v19 = *a3;
  *a3 = 0;
  v20 = v15[1];
  *v15 = v5;
  v15[1] = v19;
  if (v20)
  {
    result = WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v20 + 8), a2);
  }

  v21 = *v8;
  if (*v8)
  {
    v22 = *(v21 - 12) + 1;
  }

  else
  {
    v22 = 1;
  }

  *(v21 - 12) = v22;
  v25 = (*(v21 - 16) + v22);
  v26 = *(v21 - 4);
  if (v26 > 0x400)
  {
    if (v26 <= 2 * v25)
    {
LABEL_21:
      result = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v21 = *v8;
      if (*v8)
      {
        v26 = *(v21 - 4);
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else if (3 * v26 <= 4 * v25)
  {
    goto LABEL_21;
  }

  v24 = v21 + 16 * v26;
  v23 = 1;
LABEL_25:
  *a4 = v15;
  *(a4 + 8) = v24;
  *(a4 + 16) = v23;
  return result;
}

IPC::Encoder *WebKit::RemoteObjectRegistry::send<Messages::RemoteObjectRegistry::InvokeMethod>(uint64_t a1, uint64_t *a2)
{
  (*(*a1 + 72))(&v12);
  result = (*(*a1 + 80))(a1);
  if (v14 == 1 && (v5 & 1) != 0)
  {
    v6 = result;
    if (v13 == 1)
    {
      v7 = v12;
      v8 = IPC::Encoder::operator new(0x238, v5);
      *v8 = 1504;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 1) = v6;
      *(v8 + 68) = 0;
      *(v8 + 70) = 0;
      *(v8 + 69) = 0;
      IPC::Encoder::encodeHeader(v8);
      v15 = v8;
      IPC::ArgumentCoder<WebKit::RemoteObjectInvocation,void>::encode(v8, *a2);
      (*(*(v7 + 32) + 32))(v7 + 32, &v15, 0);
      result = v15;
      v15 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v9);
        return bmalloc::api::tzoneFree(v10, v11);
      }
    }

    else
    {
      if (v13)
      {
        mpark::throw_bad_variant_access(result);
      }

      return WebKit::AuxiliaryProcessProxy::send<Messages::RemoteObjectRegistry::InvokeMethod>(v12, a2, result);
    }
  }

  return result;
}

void sub_19D9840B0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, IPC::Encoder *a12)
{
  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

mpark *WebKit::RemoteObjectRegistry::send<Messages::RemoteObjectRegistry::CallReplyBlock>(uint64_t a1, uint64_t **a2)
{
  (*(*a1 + 72))(&v6);
  result = (*(*a1 + 80))(a1);
  if (v8 == 1 && (v5 & 1) != 0)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        mpark::throw_bad_variant_access(result);
      }

      return IPC::MessageSender::send<Messages::RemoteObjectRegistry::CallReplyBlock>(v6 + 32, a2, result, 0);
    }

    else
    {
      return WebKit::AuxiliaryProcessProxy::send<Messages::RemoteObjectRegistry::CallReplyBlock>(v6, a2, result, 0);
    }
  }

  return result;
}

IPC::Encoder *WebKit::RemoteObjectRegistry::send<Messages::RemoteObjectRegistry::ReleaseUnusedReplyBlock>(uint64_t a1, uint64_t *a2)
{
  (*(*a1 + 72))(&v15);
  result = (*(*a1 + 80))(a1);
  if (v17 != 1 || (v5 & 1) == 0)
  {
    return result;
  }

  v6 = result;
  if (!v16)
  {
    v7 = v15;
    v8 = IPC::Encoder::operator new(0x238, v5);
    *v8 = 1505;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = v6;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    IPC::Encoder::encodeHeader(v8);
    v20 = v8;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, *a2);
    LOBYTE(v18[0]) = 0;
    v19 = 0;
    WebKit::AuxiliaryProcessProxy::sendMessage(v7, &v20, 0, v18, 1);
    if (v19 == 1)
    {
      v10 = v18[0];
      v18[0] = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    result = v20;
    v20 = 0;
    if (!result)
    {
      return result;
    }

LABEL_11:
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v13, v14);
  }

  if (v16 != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  v11 = v15;
  v12 = IPC::Encoder::operator new(0x238, v5);
  *v12 = 1505;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v6;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v18[0] = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, *a2);
  (*(*(v11 + 32) + 32))(v11 + 32, v18, 0);
  result = v18[0];
  v18[0] = 0;
  if (result)
  {
    goto LABEL_11;
  }

  return result;
}

void sub_19D984380(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, IPC::Encoder *a13, uint64_t a14, char a15)
{
  if (a15 == 1 && a13)
  {
    (*(*a13 + 8))(a13);
  }

  v17 = *(v15 - 40);
  *(v15 - 40) = 0;
  if (v17)
  {
    IPC::Encoder::~Encoder(v17, a2);
    bmalloc::api::tzoneFree(v18, v19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::RemoteObjectRegistry::invokeMethod(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 16));

  return [Weak _invokeMethod:a2];
}

uint64_t WebKit::RemoteObjectRegistry::callReplyBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (a1 + 24);
  ShouldValidate = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned long long>>,(WTF::ShouldValidateKey)1,unsigned long long>(*(a1 + 24), a3);
  if (*v7)
  {
    v9 = *v7 + 16 * *(*v7 - 4);
    if (v9 == ShouldValidate)
    {
      return [objc_loadWeak((a1 + 16)) _callReplyWithID:a3 blockInvocation:a4];
    }
  }

  else
  {
    if (!ShouldValidate)
    {
      return [objc_loadWeak((a1 + 16)) _callReplyWithID:a3 blockInvocation:a4];
    }

    v9 = 0;
  }

  if (v9 != ShouldValidate)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::RefPtr<WebKit::ProcessThrottlerActivity,WTF::RawPtrTraits<WebKit::ProcessThrottlerActivity>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottlerActivity>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::remove(v7, ShouldValidate);
  }

  return [objc_loadWeak((a1 + 16)) _callReplyWithID:a3 blockInvocation:a4];
}
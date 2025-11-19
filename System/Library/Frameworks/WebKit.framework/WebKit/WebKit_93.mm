WTF::StringImpl *WebKit::WebGeolocationManager::didReceiveMessage(WebKit::WebGeolocationManager *this, IPC::Connection *a2, WTF::StringImpl **a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!*(this + 3))
  {
    __break(0xC471u);
    goto LABEL_46;
  }

  v5 = *(a3 + 25);
  if (v5 == 2036)
  {
    result = IPC::Decoder::decode<std::tuple<WebCore::RegistrableDomain>>(a3, buf);
    if (buf[8] != 1)
    {
      goto LABEL_22;
    }

    result = WebKit::WebGeolocationManager::resetPermissions(this, buf, v9);
    if ((buf[8] & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (v5 != 2035)
  {
    if (v5 != 2034)
    {
      v10 = qword_1ED6416C8;
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
        v15 = a3[7];
        *buf = 136315394;
        *&buf[4] = v14;
        *&buf[12] = 2048;
        *&buf[14] = v15;
        _os_log_error_impl(&dword_19D52D000, v10, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_21;
    }

    IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a3, &v27);
    if (v28)
    {
      IPC::ArgumentCoder<WebCore::GeolocationPositionData,void>::decode(a3, v25);
      if ((v26 & 1) == 0)
      {
        v19 = *a3;
        v20 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        v21 = a3[3];
        if (!v21)
        {
          goto LABEL_34;
        }

        if (!v20)
        {
          goto LABEL_34;
        }

        (*(*v21 + 16))(v21, v19);
        if ((v26 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v32 = v25[3];
      v33 = v25[4];
      v34 = v25[5];
      v35 = v25[6];
      *&buf[8] = v25[0];
      v30 = v25[1];
      *buf = v27;
      v31 = v25[2];
      v36 = 1;
      result = WebKit::WebGeolocationManager::didChangePosition(this, buf, &buf[8]);
      if ((v36 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }

LABEL_30:
    v16 = *a3;
    v17 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v18 = a3[3];
    if (v18 && v17)
    {
      (*(*v18 + 16))(v18, v16);
    }

    goto LABEL_21;
  }

  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a3, &v27);
  if ((v28 & 1) == 0)
  {
    goto LABEL_30;
  }

  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v25);
  if ((BYTE8(v25[0]) & 1) == 0)
  {
    v19 = *a3;
    v23 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    v24 = a3[3];
    if (!v24 || !v23 || ((*(*v24 + 16))(v24, v19), (BYTE8(v25[0]) & 1) == 0))
    {
LABEL_34:
      v22 = v27;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v19);
      }

LABEL_21:
      v11 = *a3;
      v12 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      result = a3[3];
      if (result && v12)
      {
        result = (*(*result + 16))(result, v11);
      }

      goto LABEL_22;
    }
  }

  *buf = v27;
  *&buf[8] = *&v25[0];
  buf[16] = 1;
  result = WebKit::WebGeolocationManager::didFailToDeterminePosition(this, buf, &buf[8]);
  if ((buf[16] & 1) == 0)
  {
    goto LABEL_22;
  }

  v8 = *&buf[8];
  *&buf[8] = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

LABEL_17:
  result = *buf;
  *buf = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v7);
    }
  }

LABEL_22:
  if (!*(this + 3))
  {
    __break(0xC471u);
LABEL_46:
    JUMPOUT(0x19DA62014);
  }

  return result;
}

void WebKit::WebGeolocationManagerProxy::didReceiveMessage(CFTypeRef *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  WebKit::WebProcessProxy::fromConnection(a2, a2, buf);
  v7 = *(*buf + 1104);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((*buf + 16));
  if ((v7 & 0x1000000000) != 0)
  {
    CFRetain(this[1]);
    v12 = *(a3 + 25);
    if (v12 != 2031)
    {
      if (v12 != 2033)
      {
        if (v12 != 2032)
        {
          v24 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            if (v12 >= 0x107F)
            {
              v30 = 4223;
            }

            else
            {
              v30 = v12;
            }

            v31 = (&IPC::Detail::messageDescriptions)[3 * v30];
            v32 = *(a3 + 7);
            *buf = 136315394;
            *&buf[4] = v31;
            *&buf[12] = 2048;
            *&buf[14] = v32;
            _os_log_error_impl(&dword_19D52D000, v24, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
          }

          goto LABEL_26;
        }

        IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a3, &v49);
        if (v50)
        {
          v14 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if ((v13 & 1) == 0 || (IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v51), (v52 & 1) == 0) && ((v13 = *a3, v36 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v37 = *(a3 + 3)) == 0) || !v36 || ((*(*v37 + 16))(v37, v13), (v52 & 1) == 0)))
          {
            v18 = 0;
            buf[0] = 0;
            v55 = 0;
            goto LABEL_41;
          }

          v15 = *(a3 + 1);
          v16 = *(a3 + 2);
          v13 = *a3;
          if (v15 <= &v16[-*a3])
          {
            *a3 = 0;
            *(a3 + 1) = 0;
            v45 = *(a3 + 3);
            if (v45)
            {
              if (v15)
              {
                (*(*v45 + 16))(v45);
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
              if (v3 < 2)
              {
                v17 = v49;
                v49 = 0;
                *buf = v17;
                *&buf[8] = v14;
                *&buf[16] = v51;
                v54 = v3;
                v18 = 1;
                v55 = 1;
                goto LABEL_41;
              }

LABEL_68:
              *a3 = 0;
              *(a3 + 1) = 0;
              v47 = *(a3 + 3);
              if (v47 && v15)
              {
                (*(*v47 + 16))(v47, v13);
              }

              buf[0] = 0;
              v55 = 0;
              if (v52)
              {
                v48 = v51;
                v51 = 0;
                if (v48)
                {
                  if (atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v48, v13);
                  }
                }
              }

              v18 = 0;
LABEL_41:
              v38 = v49;
              if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v38, v13);
              }

              if (v18)
              {
                WebKit::WebGeolocationManagerProxy::startUpdating(this, a2, buf, v14, &buf[16], v3 & 1);
                if (v55)
                {
                  v39 = *&buf[16];
                  *&buf[16] = 0;
                  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v39, v19);
                  }

                  goto LABEL_49;
                }

LABEL_52:
                CFRelease(this[1]);
                return;
              }

LABEL_26:
              v25 = *a3;
              v26 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v27 = *(a3 + 3);
              if (v27 && v26)
              {
                (*(*v27 + 16))(v27, v25);
              }

              goto LABEL_52;
            }
          }

          *a3 = 0;
          *(a3 + 1) = 0;
          v46 = *(a3 + 3);
          if (v46)
          {
            if (v15)
            {
              (*(*v46 + 16))(v46);
              v13 = *a3;
              v15 = *(a3 + 1);
              goto LABEL_68;
            }
          }

          else
          {
            v15 = 0;
          }

          v13 = 0;
          goto LABEL_68;
        }

LABEL_36:
        v33 = *a3;
        v34 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v35 = *(a3 + 3);
        if (v35 && v34)
        {
          (*(*v35 + 16))(v35, v33);
        }

        goto LABEL_26;
      }

      IPC::Decoder::decode<std::tuple<WebCore::RegistrableDomain>>(a3, buf);
      if (buf[8] != 1)
      {
        goto LABEL_52;
      }

      WebKit::WebGeolocationManagerProxy::stopUpdating(this, a2, buf);
      if ((buf[8] & 1) == 0)
      {
        goto LABEL_52;
      }

LABEL_49:
      v40 = *buf;
      *buf = 0;
      if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v40, v19);
      }

      goto LABEL_52;
    }

    IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a3, &v51);
    if ((v52 & 1) == 0)
    {
      goto LABEL_36;
    }

    v20 = *(a3 + 1);
    v21 = *(a3 + 2);
    v22 = *a3;
    if (v20 <= &v21[-*a3])
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v41 = *(a3 + 3);
      if (v41)
      {
        if (v20)
        {
          (*(*v41 + 16))(v41);
          v20 = *(a3 + 1);
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      *(a3 + 2) = v21 + 1;
      if (v21)
      {
        v23 = *v21;
        if (v23 < 2)
        {
          *buf = v51;
          buf[8] = v23;
          buf[16] = 1;
          WebKit::WebGeolocationManagerProxy::setEnableHighAccuracy(this, a2, buf, v23 & 1);
          if ((buf[16] & 1) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        }

LABEL_59:
        *a3 = 0;
        *(a3 + 1) = 0;
        v43 = *(a3 + 3);
        if (v43 && v20)
        {
          (*(*v43 + 16))(v43, v22);
        }

        v44 = v51;
        if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v44, v22);
        }

        goto LABEL_26;
      }
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v42 = *(a3 + 3);
    if (v42)
    {
      if (v20)
      {
        (*(*v42 + 16))(v42);
        v22 = *a3;
        v20 = *(a3 + 1);
        goto LABEL_59;
      }
    }

    else
    {
      v20 = 0;
    }

    v22 = 0;
    goto LABEL_59;
  }

  v8 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v28 = *(a3 + 25);
    if (v28 >= 0x107F)
    {
      v28 = 4223;
    }

    v29 = (&IPC::Detail::messageDescriptions)[3 * v28];
    *buf = 136315138;
    *&buf[4] = v29;
    _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver WebGeolocationManagerProxy", buf, 0xCu);
  }

  v9 = *a3;
  v10 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v11 = *(a3 + 3);
  if (v11)
  {
    if (v10)
    {
      (*(*v11 + 16))(v11, v9);
    }
  }
}

_DWORD *WebKit::WebIDBConnectionToServer::didReceiveMessage(WebKit::WebIDBConnectionToServer *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v135 = *MEMORY[0x1E69E9840];
  v4 = (this + 24);
  ++*(this + 6);
  v5 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0x7F5:
      IPC::Decoder::decode<std::tuple<WebCore::IDBResourceIdentifier,WebCore::IDBError>>(buf, a3);
      if (v124 != 1)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WebKit::WebIDBConnectionToServer::didAbortTransaction(this);
      goto LABEL_33;
    case 0x7F6:
      IPC::Decoder::decode<std::tuple<WebCore::IDBResultData>>(buf, a3);
      if (v128 != 1)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WebKit::WebIDBConnectionToServer::didClearObjectStore(this);
      goto LABEL_98;
    case 0x7F7:
      v8 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v9 & 1) == 0)
      {
        goto LABEL_115;
      }

      v10 = v8;
      IPC::Decoder::decode<WebCore::IDBError>(a3, &v104);
      if ((v105 & 1) == 0)
      {
        goto LABEL_115;
      }

      *buf = v10;
      *&buf[8] = v104;
      *&buf[16] = *(&v104 + 1);
      buf[24] = 1;
      WebKit::WebIDBConnectionToServer::didCloseFromServer(this);
      if (buf[24])
      {
        v11 = *&buf[16];
        *&buf[16] = 0;
        if (v11)
        {
          goto LABEL_179;
        }
      }

      return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
    case 0x7F8:
      IPC::Decoder::decode<std::tuple<WebCore::IDBResourceIdentifier,WebCore::IDBError>>(buf, a3);
      if (v124 != 1)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WebKit::WebIDBConnectionToServer::didCommitTransaction(this);
      goto LABEL_33;
    case 0x7F9:
      IPC::Decoder::decode<std::tuple<WebCore::IDBResultData>>(buf, a3);
      if (v128 != 1)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WebKit::WebIDBConnectionToServer::didCreateIndex(this);
      goto LABEL_98;
    case 0x7FA:
      IPC::Decoder::decode<std::tuple<WebCore::IDBResultData>>(buf, a3);
      if (v128 != 1)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WebKit::WebIDBConnectionToServer::didCreateObjectStore(this);
      goto LABEL_98;
    case 0x7FB:
      IPC::Decoder::decode<std::tuple<WebCore::IDBResultData>>(buf, a3);
      if (v128 != 1)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WebKit::WebIDBConnectionToServer::didDeleteDatabase(this);
      goto LABEL_98;
    case 0x7FC:
      IPC::Decoder::decode<std::tuple<WebCore::IDBResultData>>(buf, a3);
      if (v128 != 1)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WebKit::WebIDBConnectionToServer::didDeleteIndex(this);
      goto LABEL_98;
    case 0x7FD:
      IPC::Decoder::decode<std::tuple<WebCore::IDBResultData>>(buf, a3);
      if (v128 != 1)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WebKit::WebIDBConnectionToServer::didDeleteObjectStore(this);
      goto LABEL_98;
    case 0x7FE:
      IPC::Decoder::decode<std::tuple<WebCore::IDBResultData>>(buf, a3);
      if (v128 != 1)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WebKit::WebIDBConnectionToServer::didDeleteRecord(this);
      goto LABEL_98;
    case 0x7FF:
      IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(a3, &v117);
      if ((v118 & 1) == 0)
      {
        goto LABEL_115;
      }

      v22 = *(a3 + 1);
      v23 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v24 = *a3;
      v25 = v23 - *a3;
      v18 = v22 >= v25;
      v26 = v22 - v25;
      if (v18 && v26 > 7)
      {
        *(a3 + 2) = v23 + 1;
        if (!v23)
        {
          goto LABEL_246;
        }

        v28 = *v23;
        v112 = 0;
        v113 = 0;
        if (v28 < 0x10000)
        {
          if (!v28)
          {
            v37 = 0;
            v38 = 0;
            goto LABEL_121;
          }

          LODWORD(v113) = v28;
          v112 = WTF::fastMalloc((16 * v28));
          while (1)
          {
            IPC::Decoder::decode<WebCore::IDBDatabaseNameAndVersion>(buf, a3);
            if (buf[16] != 1)
            {
              goto LABEL_209;
            }

            if (HIDWORD(v113) != v113)
            {
              break;
            }

            v29 = WTF::Vector<WebCore::IDBDatabaseNameAndVersion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v112, HIDWORD(v113) + 1, buf);
            v30 = HIDWORD(v113) + 1;
            v31 = (v112 + 16 * HIDWORD(v113));
            v32 = *v29;
            *v29 = 0;
            *v31 = v32;
            v31[1] = v29[1];
            HIDWORD(v113) = v30;
            if (buf[16])
            {
              goto LABEL_70;
            }

LABEL_73:
            if (!--v28)
            {
              goto LABEL_74;
            }
          }

          v33 = HIDWORD(v113) + 1;
          v34 = (v112 + 16 * HIDWORD(v113));
          v35 = *buf;
          *buf = 0;
          *v34 = v35;
          v34[1] = *&buf[8];
          HIDWORD(v113) = v33;
LABEL_70:
          v36 = *buf;
          *buf = 0;
          if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v36, v24);
          }

          goto LABEL_73;
        }

        while (1)
        {
          IPC::Decoder::decode<WebCore::IDBDatabaseNameAndVersion>(buf, a3);
          if (buf[16] != 1)
          {
LABEL_209:
            WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v112, v24);
            goto LABEL_210;
          }

          if (HIDWORD(v113) != v113)
          {
            break;
          }

          result = WTF::Vector<WebCore::IDBDatabaseNameAndVersion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v112, HIDWORD(v113) + 1, buf);
          v79 = HIDWORD(v113) + 1;
          v80 = (v112 + 16 * HIDWORD(v113));
          v81 = *result;
          *result = 0;
          *v80 = v81;
          v80[1] = *(result + 1);
          HIDWORD(v113) = v79;
          if (buf[16])
          {
            goto LABEL_196;
          }

LABEL_199:
          if (!--v28)
          {
            v85 = HIDWORD(v113);
            v37 = v112;
            if (v113 > HIDWORD(v113))
            {
              v86 = v112;
              if (HIDWORD(v113))
              {
                if (HIDWORD(v113) >> 28)
                {
                  __break(0xC471u);
                  return result;
                }

                v86 = WTF::fastMalloc((16 * HIDWORD(v113)));
                LODWORD(v113) = v85;
                v112 = v86;
                if (v86 != v37)
                {
                  WTF::VectorTypeOperations<WTF::KeyValuePair<WTF::String,unsigned long long>>::move(v37, (v37 + 16 * v85), v86);
                  v86 = v112;
                }
              }

              if (v37)
              {
                if (v86 == v37)
                {
                  v112 = 0;
                  LODWORD(v113) = 0;
                }

                WTF::fastFree(v37, v24);
LABEL_74:
                v37 = v112;
              }

              else
              {
                v37 = v86;
              }
            }

            v38 = v113;
LABEL_121:
            v101 = v38;
            v112 = 0;
            v113 = 0;
            LOBYTE(v105) = 1;
            v39 = WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v112, v24);
            if ((v118 & 1) == 0)
            {
              goto LABEL_181;
            }

            *buf = v117;
            v104 = 0uLL;
            *&buf[16] = v37;
            *&buf[24] = v101;
            LOBYTE(v124) = 1;
            WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v104, v7);
            WebKit::WebIDBConnectionToServer::didGetAllDatabaseNamesAndVersions(this);
            if (v124)
            {
              WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf[16], v7);
            }

            return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
          }
        }

        v82 = HIDWORD(v113) + 1;
        v83 = (v112 + 16 * HIDWORD(v113));
        v84 = *buf;
        *buf = 0;
        *v83 = v84;
        v83[1] = *&buf[8];
        HIDWORD(v113) = v82;
LABEL_196:
        result = *buf;
        *buf = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v24);
        }

        goto LABEL_199;
      }

      *a3 = 0;
      *(a3 + 1) = 0;
      v99 = *(a3 + 3);
      if (v99)
      {
        if (v22)
        {
          (*(*v99 + 16))(v99);
          v22 = *(a3 + 1);
        }
      }

      else
      {
        v22 = 0;
      }

LABEL_246:
      *a3 = 0;
      *(a3 + 1) = 0;
      v100 = *(a3 + 3);
      if (v100 && v22)
      {
        (*(*v100 + 16))(v100);
      }

LABEL_210:
      v87 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v88 = *(a3 + 3);
      if (v88)
      {
        v89 = v87 == 0;
      }

      else
      {
        v89 = 1;
      }

      if (v89)
      {
        goto LABEL_115;
      }

LABEL_214:
      (*(*v88 + 16))(v88);
LABEL_115:
      v7 = *a3;
      v40 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v39 = *(a3 + 3);
      if (v39)
      {
LABEL_182:
        if (v40)
        {
          (*(*v39 + 16))(v39, v7);
        }
      }

      return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
    case 0x800:
      IPC::Decoder::decode<std::tuple<WebKit::WebIDBResult>>(buf, a3);
      if (v130 != 1)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WebKit::WebIDBConnectionToServer::didGetAllRecords(this);
      goto LABEL_49;
    case 0x801:
      IPC::Decoder::decode<std::tuple<WebCore::IDBResultData>>(buf, a3);
      if (v128 != 1)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WebKit::WebIDBConnectionToServer::didGetCount(this);
      goto LABEL_98;
    case 0x802:
      IPC::Decoder::decode<std::tuple<WebKit::WebIDBResult>>(buf, a3);
      if (v130 != 1)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WebKit::WebIDBConnectionToServer::didGetRecord(this);
      goto LABEL_49;
    case 0x803:
      IPC::Decoder::decode<std::tuple<WebKit::WebIDBResult>>(buf, a3);
      if (v130 != 1)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WebKit::WebIDBConnectionToServer::didIterateCursor(this);
      goto LABEL_49;
    case 0x804:
      IPC::Decoder::decode<std::tuple<WebKit::WebIDBResult>>(buf, a3);
      if (v130 != 1)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WebKit::WebIDBConnectionToServer::didOpenCursor(this);
LABEL_49:
      if ((v130 & 1) == 0)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v128, v7);
      goto LABEL_99;
    case 0x805:
      IPC::Decoder::decode<std::tuple<WebCore::IDBResultData>>(buf, a3);
      if (v128 != 1)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WebKit::WebIDBConnectionToServer::didOpenDatabase(this);
      goto LABEL_98;
    case 0x806:
      IPC::Decoder::decode<std::tuple<WebCore::IDBResultData>>(buf, a3);
      if (v128 != 1)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WebKit::WebIDBConnectionToServer::didPutOrAdd(this);
      goto LABEL_98;
    case 0x807:
      IPC::Decoder::decode<std::tuple<WebCore::IDBResultData>>(buf, a3);
      if (v128 != 1)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WebKit::WebIDBConnectionToServer::didRenameIndex(this);
      goto LABEL_98;
    case 0x808:
      IPC::Decoder::decode<std::tuple<WebCore::IDBResultData>>(buf, a3);
      if (v128 != 1)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WebKit::WebIDBConnectionToServer::didRenameObjectStore(this);
LABEL_98:
      if (v128)
      {
LABEL_99:
        WebCore::IDBResultData::~IDBResultData(buf);
      }

      return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
    case 0x809:
      IPC::Decoder::decode<std::tuple<WebCore::IDBResourceIdentifier,WebCore::IDBError>>(buf, a3);
      if (v124 != 1)
      {
        return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
      }

      WebKit::WebIDBConnectionToServer::didStartTransaction(this);
LABEL_33:
      if (v124)
      {
        v11 = *&buf[24];
        *&buf[24] = 0;
        if (v11)
        {
          goto LABEL_179;
        }
      }

      return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
    case 0x80A:
      v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v13 & 1) == 0)
      {
        goto LABEL_115;
      }

      v14 = v12;
      IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(a3, &v104);
      if (v105 != 1)
      {
        goto LABEL_115;
      }

      v15 = *(a3 + 1);
      v16 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v17 = v16 - *a3;
      v18 = v15 >= v17;
      v19 = v15 - v17;
      if (!v18 || v19 <= 7)
      {
        goto LABEL_239;
      }

      *(a3 + 2) = v16 + 1;
      if (!v16)
      {
        goto LABEL_241;
      }

      v21 = *v16;
      *&buf[8] = v104;
      *buf = v14;
      *&buf[24] = v21;
      LOBYTE(v124) = 1;
      WebKit::WebIDBConnectionToServer::fireVersionChangeEvent(this);
      return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
    case 0x80B:
      IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(a3, &v102);
      if ((v103 & 1) == 0)
      {
        buf[0] = 0;
        v134 = 0;
        goto LABEL_185;
      }

      IPC::ArgumentCoder<WebCore::IDBIndexInfo,void>::decode(a3, &v104);
      if ((v108 & 1) == 0)
      {
        v76 = *a3;
        v77 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v78 = *(a3 + 3);
        if (!v78 || !v77 || ((*(*v78 + 16))(v78, v76), (v108 & 1) == 0))
        {
          buf[0] = 0;
          v134 = 0;
          goto LABEL_160;
        }
      }

      IPC::ArgumentCoder<std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,void>::decode<IPC::Decoder>(a3, v109);
      if ((v111 & 1) == 0)
      {
        v7 = *a3;
        v90 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v91 = *(a3 + 3);
        if (!v91 || !v90 || ((*(*v91 + 16))(v91, v7), (v111 & 1) == 0))
        {
          buf[0] = 0;
          v134 = 0;
          goto LABEL_156;
        }
      }

      IPC::ArgumentCoder<WebCore::IDBKeyData,void>::decode(a3, &v112);
      if ((v116 & 1) == 0)
      {
        v7 = *a3;
        v92 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v93 = *(a3 + 3);
        if (!v93 || !v92 || ((*(*v93 + 16))(v93, v7), (v116 & 1) == 0))
        {
          buf[0] = 0;
          v134 = 0;
          goto LABEL_153;
        }
      }

      IPC::ArgumentCoder<WebCore::IDBValue,void>::decode(a3, &v117);
      if ((v120 & 1) == 0)
      {
        v7 = *a3;
        v94 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v95 = *(a3 + 3);
        if (!v95 || !v94 || ((*(*v95 + 16))(v95, v7), (v120 & 1) == 0))
        {
          buf[0] = 0;
          v134 = 0;
          goto LABEL_136;
        }
      }

      v39 = IPC::ArgumentCoder<std::optional<long long>,void>::decode<IPC::Decoder>(a3, &v121);
      if ((v122 & 1) == 0)
      {
        v7 = *a3;
        v96 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v97 = *(a3 + 3);
        if (!v97 || !v96 || (v39 = (*(*v97 + 16))(v97, v7), (v122 & 1) == 0))
        {
          v59 = 0;
          buf[0] = 0;
LABEL_133:
          v134 = v59;
          if (v120)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v119, v7);
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v117 + 8, v60);
            v61 = v117;
            *&v117 = 0;
            if (v61)
            {
              WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v61, v7);
            }
          }

LABEL_136:
          if (v116)
          {
            if (v115 <= 2u)
            {
              if (v115 >= 2u)
              {
                WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v113, v7);
              }
            }

            else if (v115 <= 8u && ((1 << v115) & 0x1B0) == 0)
            {
              if (v115 == 3)
              {
                v62 = v113;
                v113 = 0;
                if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v62, v7);
                }
              }

              else if (v115 == 6)
              {
                v66 = v113;
                v113 = 0;
                if (v66)
                {
                  WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v66, v7);
                }
              }
            }
          }

LABEL_153:
          if ((v111 & 1) != 0 && v110 == 1)
          {
            mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v109, v7);
          }

LABEL_156:
          if (v108)
          {
            mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v106, v7);
            v68 = v105;
            v105 = 0;
            if (v68)
            {
              if (atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v68, v67);
              }
            }
          }

LABEL_160:
          if (v134)
          {
            goto LABEL_161;
          }

LABEL_185:
          v7 = *a3;
          v74 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v75 = *(a3 + 3);
          if (!v75)
          {
            return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
          }

          if (!v74)
          {
            return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
          }

          (*(*v75 + 16))(v75, v7);
          if ((v134 & 1) == 0)
          {
            return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
          }

LABEL_161:
          WebKit::WebIDBConnectionToServer::generateIndexKeyForRecord(this);
          if (v134)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v133, v7);
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v132[1], v69);
            v71 = v132[0];
            v132[0] = 0;
            if (v71)
            {
              WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v71, v70);
            }

            if (v131 <= 2u)
            {
              if (v131 >= 2u)
              {
                WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v129, v70);
              }
            }

            else if (v131 <= 8u && ((1 << v131) & 0x1B0) == 0)
            {
              if (v131 == 3)
              {
                v72 = v129;
                v129 = 0;
                if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v72, v70);
                }
              }

              else if (v131 == 6)
              {
                v73 = v129;
                v129 = 0;
                if (v73)
                {
                  WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v73, v70);
                }
              }
            }

            v131 = -1;
            if (v127 == 1)
            {
              mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v126, v70);
            }

            mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v125, v70);
            v11 = v124;
            v124 = 0;
            if (v11)
            {
LABEL_179:
              if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v11, v7);
              }
            }
          }

          return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
        }
      }

      if ((v103 & 1) == 0 || (v108 & 1) == 0 || (v111 & 1) == 0 || (v116 & 1) == 0 || (v120 & 1) == 0)
      {
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

      *buf = v102;
      *&buf[16] = v104;
      v41 = v105;
      v105 = 0;
      v124 = v41;
      mpark::detail::move_assignment<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_assignment(v125, v106);
      v125[12] = v107;
      v126[0] = 0;
      v127 = 0;
      if (v110 == 1)
      {
        mpark::detail::move_assignment<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_assignment(v126, v109);
        v127 = 1;
      }

      v128 = v112;
      LOBYTE(v129) = 0;
      v131 = -1;
      if (v115 > 4u)
      {
        if (v115 > 6u)
        {
          if (v115 - 7 >= 2)
          {
            goto LABEL_132;
          }

          goto LABEL_131;
        }

        if (v115 == 5)
        {
          v54 = v113;
LABEL_129:
          v129 = v54;
          goto LABEL_131;
        }
      }

      else
      {
        if (v115 <= 1u)
        {
          if (!v115)
          {
            v129 = 0;
          }

          goto LABEL_131;
        }

        if (v115 == 2)
        {
          v129 = v113;
          v55 = v114;
          v113 = 0;
          v114 = 0;
          v130 = v55;
          goto LABEL_131;
        }

        if (v115 != 3)
        {
          v129 = v113;
LABEL_131:
          v131 = v115;
LABEL_132:
          *&v42 = 0;
          *v132 = v117;
          v56 = v118;
          v118 = 0;
          v117 = 0uLL;
          v132[2] = v56;
          v58 = *(&v119 + 1);
          v57 = v119;
          v119 = v42;
          v133[0] = __PAIR128__(v58, v57);
          v59 = 1;
          v133[1] = v121;
          goto LABEL_133;
        }
      }

      v54 = v113;
      v113 = 0;
      goto LABEL_129;
    case 0x80C:
      IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(a3, &v104);
      if (v105 != 1)
      {
        goto LABEL_115;
      }

      v15 = *(a3 + 1);
      v43 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v44 = *a3;
      v45 = v43 - *a3;
      v18 = v15 >= v45;
      v46 = v15 - v45;
      if (!v18 || v46 <= 7)
      {
        goto LABEL_239;
      }

      *(a3 + 2) = v43 + 1;
      if (!v43)
      {
        goto LABEL_241;
      }

      v48 = *v43;
      v49 = ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v15 >= v49 - v44 && v15 - (v49 - v44) > 7)
      {
        *(a3 + 2) = v49 + 1;
        if (v49)
        {
          v51 = *v49;
          *buf = v104;
          *&buf[16] = v48;
          *&buf[24] = v51;
          LOBYTE(v124) = 1;
          WebKit::WebIDBConnectionToServer::notifyOpenDBRequestBlocked(this);
          return WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(v4, v7);
        }
      }

      else
      {
LABEL_239:
        *a3 = 0;
        *(a3 + 1) = 0;
        v98 = *(a3 + 3);
        if (v98)
        {
          if (v15)
          {
            (*(*v98 + 16))(v98);
            v15 = *(a3 + 1);
          }
        }

        else
        {
          v15 = 0;
        }
      }

LABEL_241:
      *a3 = 0;
      *(a3 + 1) = 0;
      v88 = *(a3 + 3);
      if (!v88 || !v15)
      {
        goto LABEL_115;
      }

      goto LABEL_214;
    default:
      v52 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v5 >= 0x107F)
        {
          v63 = 4223;
        }

        else
        {
          v63 = v5;
        }

        v64 = (&IPC::Detail::messageDescriptions)[3 * v63];
        v65 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v64;
        *&buf[12] = 2048;
        *&buf[14] = v65;
        _os_log_error_impl(&dword_19D52D000, v52, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_115;
  }
}

void IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebExtensionFrameParameters,WTF::WallTime>>(uint64_t a1, IPC::Decoder *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v6 & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 128) = 0;
LABEL_17:
    v13 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v14 = *(a2 + 3);
    if (v14)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = *(*v14 + 16);

      v16();
    }

    return;
  }

  v7 = v4;
  IPC::ArgumentCoder<WebKit::WebExtensionFrameParameters,void>::decode(a2, v20, v5);
  if (v26 & 1) != 0 || (v17 = *a2, v18 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v19 = *(a2 + 3)) != 0) && v18 && ((*(*v19 + 16))(v19, v17), (v26))
  {
    v8 = IPC::Decoder::decode<WTF::Seconds>(a2);
    if (v9)
    {
      if ((v26 & 1) == 0)
      {
        __break(1u);
      }

      v10 = v8;
      *a1 = v7;
      *(a1 + 16) = v20[0];
      *(a1 + 24) = 0;
      *(a1 + 64) = 0;
      if (v22 == 1)
      {
        WTF::URL::URL(a1 + 24, &v21);
        *(a1 + 64) = 1;
      }

      *(a1 + 72) = v23;
      *(a1 + 88) = v24;
      *(a1 + 104) = v25;
      *(a1 + 112) = v10;
      v11 = 1;
    }

    else
    {
      v11 = 0;
      *a1 = 0;
    }

    *(a1 + 128) = v11;
    if ((v26 & 1) != 0 && v22 == 1)
    {
      v12 = v21;
      v21 = 0;
      if (v12)
      {
        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v9);
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 128) = 0;
  }

  if ((*(a1 + 128) & 1) == 0)
  {
    goto LABEL_17;
  }
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WTF::String,WTF::String,unsigned int>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v25);
  if ((v26 & 1) == 0)
  {
    goto LABEL_23;
  }

  while (1)
  {
    result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v27);
    if ((v28 & 1) == 0)
    {
      v7 = *a2;
      v22 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (!result || !v22 || (result = (*(*result + 16))(result, v7), (v28 & 1) == 0))
      {
        v15 = 0;
        *a1 = 0;
        *(a1 + 24) = 0;
        goto LABEL_11;
      }
    }

    v5 = *(a2 + 1);
    v6 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v7 = *a2;
    v8 = v6 - *a2;
    v9 = v5 >= v8;
    v10 = v5 - v8;
    if (!v9 || v10 <= 3)
    {
      break;
    }

    *(a2 + 2) = v6 + 1;
    if (!v6)
    {
      goto LABEL_34;
    }

    if (v26)
    {
      v12 = *v6;
      v13 = v25;
      v25 = 0;
      v14 = v27;
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v12;
      v15 = 1;
      *(a1 + 24) = 1;
      goto LABEL_11;
    }

    __break(1u);
LABEL_23:
    v18 = *a2;
    v19 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v20 = *(a2 + 3);
    if (v20)
    {
      v21 = v19 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      (*(*v20 + 16))(v20, v18);
      if (v26)
      {
        continue;
      }
    }

    *a1 = 0;
    *(a1 + 24) = 0;
    goto LABEL_17;
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v23 = *(a2 + 3);
  if (!v23)
  {
    v5 = 0;
LABEL_33:
    v7 = 0;
    goto LABEL_34;
  }

  if (!v5)
  {
    goto LABEL_33;
  }

  (*(*v23 + 16))(v23);
  v7 = *a2;
  v5 = *(a2 + 1);
LABEL_34:
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v5)
  {
    result = (*(*result + 16))(result);
  }

  *a1 = 0;
  v24 = v28;
  *(a1 + 24) = 0;
  if (v24)
  {
    result = v27;
    v27 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  v15 = 0;
LABEL_11:
  if ((v26 & 1) != 0 && (result = v25, v25 = 0, result) && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v7);
    if (v15)
    {
      return result;
    }
  }

  else if (v15)
  {
    return result;
  }

LABEL_17:
  v16 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v16)
  {
    v17 = *(*result + 16);

    return v17();
  }

  return result;
}

WTF::StringImpl *IPC::callMemberFunction<WebKit::WebExtensionController,WebKit::WebExtensionController,void ()(WTF::String,WTF::String,unsigned int),std::tuple<WTF::String,WTF::String,unsigned int>>(uint64_t a1, void (*a2)(void *, WTF::StringImpl **, WTF::StringImpl **, void), uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = (a1 + (a3 >> 1));
  if (a3)
  {
    v6 = *(*v7 + a2);
  }

  v13[1] = v4;
  v13[2] = v5;
  v8 = *a4;
  v12 = *(a4 + 8);
  v13[0] = v8;
  *a4 = 0;
  *(a4 + 8) = 0;
  v6(v7, v13, &v12, *(a4 + 16));
  v10 = v12;
  v12 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  result = v13[0];
  v13[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v9);
    }
  }

  return result;
}

_DWORD *WTF::RefCounted<WebKit::WebExtensionControllerProxy>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::WebExtensionControllerProxy::~WebExtensionControllerProxy((result - 4));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20WebFullScreenManager24RequestRestoreFullScreenENS2_10ConnectionEN6WebKit20WebFullScreenManagerES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4750;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20WebFullScreenManager24RequestRestoreFullScreenENS2_10ConnectionEN6WebKit20WebFullScreenManagerES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4750;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20WebFullScreenManager24RequestRestoreFullScreenENS2_10ConnectionEN6WebKit20WebFullScreenManagerES9_FvONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3688;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20WebFullScreenManager31EnterFullScreenForOwnerElementsENS2_10ConnectionEN6WebKit20WebFullScreenManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4778;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20WebFullScreenManager31EnterFullScreenForOwnerElementsENS2_10ConnectionEN6WebKit20WebFullScreenManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4778;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20WebFullScreenManager31EnterFullScreenForOwnerElementsENS2_10ConnectionEN6WebKit20WebFullScreenManagerES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3686;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20WebFullScreenManager25ExitFullScreenInMainFrameENS2_10ConnectionEN6WebKit20WebFullScreenManagerES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F47A0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20WebFullScreenManager25ExitFullScreenInMainFrameENS2_10ConnectionEN6WebKit20WebFullScreenManagerES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F47A0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages20WebFullScreenManager25ExitFullScreenInMainFrameENS2_10ConnectionEN6WebKit20WebFullScreenManagerES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3687;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebFullScreenManagerProxy15EnterFullScreenENS2_10ConnectionEN6WebKit25WebFullScreenManagerProxyES9_FNS_9AwaitableIbEERS7_NS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEbNS8_22FullScreenMediaDetailsEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F47C8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebFullScreenManagerProxy15EnterFullScreenENS2_10ConnectionEN6WebKit25WebFullScreenManagerProxyES9_FNS_9AwaitableIbEERS7_NS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEbNS8_22FullScreenMediaDetailsEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F47C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebFullScreenManagerProxy15EnterFullScreenENS2_10ConnectionEN6WebKit25WebFullScreenManagerProxyES9_FNS_9AwaitableIbEERS7_NS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEbNS8_22FullScreenMediaDetailsEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3684;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebFullScreenManagerProxy14ExitFullScreenENS2_10ConnectionEN6WebKit25WebFullScreenManagerProxyES9_FNS_9AwaitableIvEEvEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F47F0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebFullScreenManagerProxy14ExitFullScreenENS2_10ConnectionEN6WebKit25WebFullScreenManagerProxyES9_FNS_9AwaitableIvEEvEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F47F0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebFullScreenManagerProxy14ExitFullScreenENS2_10ConnectionEN6WebKit25WebFullScreenManagerProxyES9_FNS_9AwaitableIvEEvEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3685;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebFullScreenManagerProxy20BeganEnterFullScreenENS2_10ConnectionEN6WebKit25WebFullScreenManagerProxyES9_FNS_9AwaitableIbEEN7WebCore7IntRectESD_EEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4818;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebFullScreenManagerProxy20BeganEnterFullScreenENS2_10ConnectionEN6WebKit25WebFullScreenManagerProxyES9_FNS_9AwaitableIbEEN7WebCore7IntRectESD_EEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4818;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebFullScreenManagerProxy20BeganEnterFullScreenENS2_10ConnectionEN6WebKit25WebFullScreenManagerProxyES9_FNS_9AwaitableIbEEN7WebCore7IntRectESD_EEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3682;
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebFullScreenManagerProxy19BeganExitFullScreenENS2_10ConnectionEN6WebKit25WebFullScreenManagerProxyES9_FNS_9AwaitableIvEENS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSD_7IntRectESI_EEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10F4840;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebFullScreenManagerProxy19BeganExitFullScreenENS2_10ConnectionEN6WebKit25WebFullScreenManagerProxyES9_FNS_9AwaitableIvEENS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSD_7IntRectESI_EEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F4840;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebFullScreenManagerProxy19BeganExitFullScreenENS2_10ConnectionEN6WebKit25WebFullScreenManagerProxyES9_FNS_9AwaitableIvEENS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSD_7IntRectESI_EEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3683;
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

_DWORD *WTF::RefCounted<WebKit::WebIDBConnectionToServer>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::WebIDBConnectionToServer::~WebIDBConnectionToServer((result - 6), a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void IPC::Decoder::decode<std::tuple<WebCore::IDBResultData>>(uint64_t a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WebCore::IDBResultData,void>::decode(a2, &v13);
  if (v22)
  {
    goto LABEL_2;
  }

  v9 = *a2;
  v10 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v11 = a2[3];
  if (v11)
  {
    if (v10)
    {
      (*(*v11 + 16))(v11, v9);
      if (v22)
      {
LABEL_2:
        *a1 = v13;
        *(a1 + 16) = v14;
        *(a1 + 24) = v15;
        v4 = v16;
        v16 = 0;
        *(a1 + 32) = v4;
        *(a1 + 40) = v17;
        v5 = v18;
        v18 = 0u;
        *(a1 + 56) = v5;
        v6 = v19;
        v19 = 0u;
        *(a1 + 72) = v6;
        v7 = v20;
        v8 = v21;
        v20 = 0;
        *(a1 + 88) = v7;
        *(a1 + 96) = v8;
        WebCore::IDBResultData::~IDBResultData(&v13);
        *(a1 + 104) = 1;
        return;
      }

      v10 = a2[1];
      v11 = a2[3];
    }
  }

  else
  {
    v10 = 0;
  }

  *a1 = 0;
  *(a1 + 104) = 0;
  *a2 = 0;
  a2[1] = 0;
  if (v11 && v10)
  {
    v12 = *(*v11 + 16);

    v12();
  }
}

void WebCore::IDBResultData::~IDBResultData(WebCore::IDBResultData *this)
{
  std::unique_ptr<WebCore::IDBGetAllResult>::reset[abi:sn200100](this + 11, 0);
  std::unique_ptr<WebCore::IDBGetResult>::reset[abi:sn200100](this + 10, 0);
  std::unique_ptr<WebCore::IDBKeyData>::reset[abi:sn200100](this + 9, 0);
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](v2 + 6, 0);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v2 + 4), v3);
    bmalloc::api::tzoneFree(v2, v4);
  }

  std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](this + 7, 0);
  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }
  }
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WebCore::IDBResourceIdentifier,WebCore::IDBError>>(uint64_t a1, uint64_t *a2)
{
  IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(a2, &v8);
  if ((v9 & 1) != 0 && (result = IPC::Decoder::decode<WebCore::IDBError>(a2, &v10), v12 == 1))
  {
    if (v9)
    {
      *a1 = v8;
      *(a1 + 16) = v10;
      *(a1 + 24) = v11;
      *(a1 + 32) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 32) = 0;
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

void IPC::Decoder::decode<std::tuple<WebKit::WebIDBResult>>(uint64_t a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WebKit::WebIDBResult,void>::decode(a2, &v16);
  if (v27 & 1) != 0 || ((v9 = *a2, v10 = a2[1], *a2 = 0, a2[1] = 0, (v11 = a2[3]) != 0) ? (v12 = v10 == 0) : (v12 = 1), !v12 && ((*(*v11 + 16))(v11, v9), (v27)))
  {
    *a1 = v16;
    *(a1 + 16) = v17;
    *(a1 + 24) = v18;
    v5 = v19;
    v19 = 0;
    *(a1 + 32) = v5;
    *(a1 + 40) = v20;
    v6 = v21;
    v21 = 0u;
    *(a1 + 56) = v6;
    v7 = v22;
    v22 = 0u;
    *(a1 + 72) = v7;
    v8 = v24;
    *(a1 + 88) = v23;
    *(a1 + 96) = v8;
    v23 = 0;
    *(a1 + 104) = v25;
    *&v7 = v26;
    v25 = 0;
    v26 = 0;
    *(a1 + 112) = v7;
    *(a1 + 120) = 1;
    WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v4);
    WebCore::IDBResultData::~IDBResultData(&v16);
  }

  else
  {
    *a1 = 0;
    *(a1 + 120) = 0;
    v13 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v14 = a2[3];
    if (v14 && v13)
    {
      v15 = *(*v14 + 16);

      v15();
    }
  }
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::IDBDatabaseNameAndVersion>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::IDBDatabaseNameAndVersion,void>::decode(a2, a1);
  if ((*(a1 + 16) & 1) == 0)
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

unint64_t WTF::Vector<WebCore::IDBDatabaseNameAndVersion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WebCore::IDBDatabaseNameAndVersion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebCore::IDBDatabaseNameAndVersion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::IDBDatabaseNameAndVersion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
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
    v5 = (*result + 16 * *(result + 12));
    v6 = WTF::fastMalloc((16 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    WTF::VectorTypeOperations<WTF::KeyValuePair<WTF::String,unsigned long long>>::move(v4, v5, v6);
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

uint64_t IPC::callMemberFunctionCoroutine<WebKit::WebFullScreenManagerProxy,WebKit::WebFullScreenManagerProxy,WTF::Awaitable<BOOL> ()(IPC::Connection &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails),std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails>,void ()(BOOL)>(WebKit::WebFullScreenManagerProxy *,WTF::Awaitable<BOOL> ()(IPC::Connection &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails) WebKit::WebFullScreenManagerProxy::*,IPC::Connection &,std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(WebKit::WebFullScreenManagerProxy)#1}::operator()<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails> &&<void ()(BOOL)>>(WTF *a1)
{
  v2 = *(a1 + 3);
  v3 = *(a1 + 5);
  v4 = *(v2 + 24);
  *(v2 + 24) = 0;
  (*(*v3 + 16))(v3, v4);
  (*(*v3 + 8))(v3);
  v6 = *(a1 + 4);
  if (v6)
  {
    (*(v6 + 8))();
  }

  v7 = *(a1 + 6);
  if (v7[5] == 1)
  {
    (*(*v7 + 24))(v7);
  }

  else
  {
    --v7[5];
  }

  return WTF::fastFree(a1, v5);
}

uint64_t IPC::callMemberFunctionCoroutine<WebKit::WebFullScreenManagerProxy,WebKit::WebFullScreenManagerProxy,WTF::Awaitable<BOOL> ()(IPC::Connection &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails),std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails>,void ()(BOOL)>(WebKit::WebFullScreenManagerProxy *,WTF::Awaitable<BOOL> ()(IPC::Connection &,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails) WebKit::WebFullScreenManagerProxy::*,IPC::Connection &,std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(WebKit::WebFullScreenManagerProxy)#1}::operator()<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebKit::FullScreenMediaDetails> &&<void ()(BOOL)>>(WTF *this, void *a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    (*(v3 + 8))();
  }

  v4 = *(this + 6);
  if (v4[5] == 1)
  {
    (*(*v4 + 24))(v4);
  }

  else
  {
    --v4[5];
  }

  v5 = *(this + 5);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZZN3IPC31callMemberFunctionCoroutineVoidIN6WebKit25WebFullScreenManagerProxyES2_FN3WTF9AwaitableIvEEvENSt3__15tupleIJEEEFvvEEEvPT_MT0_T1_OT2_ONS3_17CompletionHandlerIT3_EEENKUlSB_E_clINSI_ISA_EEEENS3_4TaskESB__resume(WTF *a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    (*(v2 + 8))();
  }

  v3 = *(a1 + 5);
  (*(*v3 + 16))(v3);
  (*(*v3 + 8))(v3);
  v5 = *(a1 + 6);
  if (v5[5] == 1)
  {
    (*(*v5 + 24))(v5);
  }

  else
  {
    --v5[5];
  }

  return WTF::fastFree(a1, v4);
}

uint64_t _ZZN3IPC31callMemberFunctionCoroutineVoidIN6WebKit25WebFullScreenManagerProxyES2_FN3WTF9AwaitableIvEEvENSt3__15tupleIJEEEFvvEEEvPT_MT0_T1_OT2_ONS3_17CompletionHandlerIT3_EEENKUlSB_E_clINSI_ISA_EEEENS3_4TaskESB__destroy(WTF *this, void *a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    (*(v3 + 8))();
  }

  v5 = *(this + 5);
  v4 = *(this + 6);
  if (v4[5] == 1)
  {
    (*(*v4 + 24))(v4);
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    --v4[5];
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  (*(*v5 + 8))(v5);
LABEL_5:

  return WTF::fastFree(this, a2);
}

uint64_t IPC::callMemberFunctionCoroutine<WebKit::WebFullScreenManagerProxy,WebKit::WebFullScreenManagerProxy,WTF::Awaitable<BOOL> ()(WebCore::IntRect,WebCore::IntRect),std::tuple<WebCore::IntRect,WebCore::IntRect>,void ()(BOOL)>(WebKit::WebFullScreenManagerProxy *,WTF::Awaitable<BOOL> ()(WebCore::IntRect,WebCore::IntRect) WebKit::WebFullScreenManagerProxy::*,std::tuple<WebCore::IntRect,WebCore::IntRect> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(WebKit::WebFullScreenManagerProxy)#1}::operator()<std::tuple<WebCore::IntRect,WebCore::IntRect> &&<void ()(BOOL)>>(WTF *a1)
{
  v2 = *(a1 + 3);
  v3 = *(a1 + 5);
  v4 = *(v2 + 24);
  *(v2 + 24) = 0;
  (*(*v3 + 16))(v3, v4);
  (*(*v3 + 8))(v3);
  v6 = *(a1 + 4);
  if (v6)
  {
    (*(v6 + 8))();
  }

  v7 = *(a1 + 6);
  if (v7[5] == 1)
  {
    (*(*v7 + 24))(v7);
  }

  else
  {
    --v7[5];
  }

  return WTF::fastFree(a1, v5);
}

uint64_t IPC::callMemberFunctionCoroutine<WebKit::WebFullScreenManagerProxy,WebKit::WebFullScreenManagerProxy,WTF::Awaitable<BOOL> ()(WebCore::IntRect,WebCore::IntRect),std::tuple<WebCore::IntRect,WebCore::IntRect>,void ()(BOOL)>(WebKit::WebFullScreenManagerProxy *,WTF::Awaitable<BOOL> ()(WebCore::IntRect,WebCore::IntRect) WebKit::WebFullScreenManagerProxy::*,std::tuple<WebCore::IntRect,WebCore::IntRect> &&,WTF::CompletionHandler<void ()(BOOL)> &&)::{lambda(WebKit::WebFullScreenManagerProxy)#1}::operator()<std::tuple<WebCore::IntRect,WebCore::IntRect> &&<void ()(BOOL)>>(WTF *this, void *a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    (*(v3 + 8))();
  }

  v4 = *(this + 6);
  if (v4[5] == 1)
  {
    (*(*v4 + 24))(v4);
  }

  else
  {
    --v4[5];
  }

  v5 = *(this + 5);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return WTF::fastFree(this, a2);
}

uint64_t IPC::callMemberFunctionCoroutineVoid<WebKit::WebFullScreenManagerProxy,WebKit::WebFullScreenManagerProxy,WTF::Awaitable<void> ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect),std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect>,void ()(void)>(WebKit::WebFullScreenManagerProxy *,WTF::Awaitable<void> ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect) WebKit::WebFullScreenManagerProxy::*,std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect> &&,WTF::CompletionHandler<void ()(void)> &&)::{lambda(WebKit::WebFullScreenManagerProxy)#1}::operator()<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect> &&<void ()(void)>>(WTF *a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    (*(v2 + 8))();
  }

  v3 = *(a1 + 5);
  (*(*v3 + 16))(v3);
  (*(*v3 + 8))(v3);
  v5 = *(a1 + 6);
  if (v5[5] == 1)
  {
    (*(*v5 + 24))(v5);
  }

  else
  {
    --v5[5];
  }

  return WTF::fastFree(a1, v4);
}

uint64_t IPC::callMemberFunctionCoroutineVoid<WebKit::WebFullScreenManagerProxy,WebKit::WebFullScreenManagerProxy,WTF::Awaitable<void> ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect),std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect>,void ()(void)>(WebKit::WebFullScreenManagerProxy *,WTF::Awaitable<void> ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect) WebKit::WebFullScreenManagerProxy::*,std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect> &&,WTF::CompletionHandler<void ()(void)> &&)::{lambda(WebKit::WebFullScreenManagerProxy)#1}::operator()<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntRect,WebCore::IntRect> &&<void ()(void)>>(WTF *this, void *a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    (*(v3 + 8))();
  }

  v5 = *(this + 5);
  v4 = *(this + 6);
  if (v4[5] == 1)
  {
    (*(*v4 + 24))(v4);
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    --v4[5];
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  (*(*v5 + 8))(v5);
LABEL_5:

  return WTF::fastFree(this, a2);
}

void sub_19DA652FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA65450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA657D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA65A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  CFRelease(*(v10 + 8));
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v12);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DA65B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12)
{
  _Block_release(v12);
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v14);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v14);
  }

  if (a12)
  {
    CFRelease(*(a12 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DA65D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12)
{
  _Block_release(v12);
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v14);
  }

  if (a12)
  {
    CFRelease(*(a12 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DA65E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  _Block_release(v10);
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DA65F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12)
{
  _Block_release(v12);
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v14);
  }

  if (a12)
  {
    CFRelease(*(a12 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_19DA660A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA66168(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA66240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA662F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA66424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12)
{
  if (v12)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA66604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  CFRelease(*(v10 + 8));
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, v12);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DA66814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t checkContentWorldOptions(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40) & 1;
  if (a2)
  {
    v5 = [a2 allowAccessToClosedShadowRoots];
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x1E695D930];
  if (v5 != v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The value of allowAccessToClosedShadowRoots does not match the existing world"];
  }

  v7 = (*(a1 + 40) >> 1) & 1;
  if (a2)
  {
    v8 = [a2 allowAutofill];
  }

  else
  {
    v8 = 0;
  }

  if (v8 != v7)
  {
    [MEMORY[0x1E695DF30] raise:*v6 format:@"The value of allowAutofill does not match the existing world"];
  }

  v9 = (*(a1 + 40) >> 2) & 1;
  if (a2)
  {
    v10 = [a2 allowElementUserInfo];
  }

  else
  {
    v10 = 0;
  }

  if (v10 != v9)
  {
    [MEMORY[0x1E695DF30] raise:*v6 format:@"The value of allowElementUserInfo does not match the existing world"];
  }

  v11 = (*(a1 + 40) >> 3) & 1;
  if (a2)
  {
    result = [a2 disableLegacyBuiltinOverrides];
  }

  else
  {
    result = 0;
  }

  if (result != v11)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *v6;

    return [v13 raise:v14 format:@"The value of disableLegacyBuiltinOverrides does not match the existing world"];
  }

  return result;
}

void sub_19DA66A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA66C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA66D54(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA67194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA67214(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA672E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_19DA676F0(_Unwind_Exception *a1, void *a2)
{
  if (*(v2 + 2) == 1)
  {
    bmalloc::api::tzoneFree(v2, a2);
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

void sub_19DA678BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  _Block_release(v11);
  objc_destroyWeak(&a9);
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

WTF::StringImpl *localizedDescriptionForErrorCode@<X0>(WKErrorCode a1@<X0>, const __CFString *a2@<X1>, void *a3@<X8>)
{
  switch(a1)
  {
    case WKErrorWebContentProcessTerminated:
      WebCore::localizedString(&v8, @"The Web Content process was terminated", a2);
      v4 = v8;
      if (!v8)
      {
        goto LABEL_41;
      }

      goto LABEL_35;
    case WKErrorWebViewInvalidated:
      WebCore::localizedString(&v8, @"The WKWebView was invalidated", a2);
      v4 = v8;
      if (v8)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    case WKErrorJavaScriptExceptionOccurred:
      WebCore::localizedString(&v8, @"A JavaScript exception occurred", a2);
      v4 = v8;
      if (v8)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    case WKErrorJavaScriptResultTypeIsUnsupported:
      WebCore::localizedString(&v8, @"JavaScript execution returned a result of an unsupported type", a2);
      v4 = v8;
      if (v8)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    case WKErrorContentRuleListStoreCompileFailed:
      WebCore::localizedString(&v8, @"Compiling a WKContentRuleList failed", a2);
      v4 = v8;
      if (v8)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    case WKErrorContentRuleListStoreLookUpFailed:
      WebCore::localizedString(&v8, @"Looking up a WKContentRuleList failed", a2);
      v4 = v8;
      if (v8)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    case WKErrorContentRuleListStoreRemoveFailed:
      WebCore::localizedString(&v8, @"Removing a WKContentRuleList failed", a2);
      v4 = v8;
      if (v8)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    case WKErrorContentRuleListStoreVersionMismatch:
      WebCore::localizedString(&v8, @"Looking up a WKContentRuleList found a binary that is incompatible", a2);
      v4 = v8;
      if (v8)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    case WKErrorAttributedStringContentFailedToLoad:
      WebCore::localizedString(&v8, @"Attributed string content failed to load", a2);
      v4 = v8;
      if (v8)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    case WKErrorAttributedStringContentLoadTimedOut:
      WebCore::localizedString(&v8, @"Timed out while loading attributed string content", a2);
      v4 = v8;
      if (v8)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    case WKErrorJavaScriptInvalidFrameTarget:
      WebCore::localizedString(&v8, @"JavaScript execution targeted an invalid frame", a2);
      v4 = v8;
      if (v8)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    case WKErrorNavigationAppBoundDomain:
      WebCore::localizedString(&v8, @"Attempted to navigate away from an app-bound domain or navigate after using restricted APIs", a2);
      v4 = v8;
      if (v8)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    case WKErrorJavaScriptAppBoundDomain:
      WebCore::localizedString(&v8, @"JavaScript execution targeted a frame that is not in an app-bound domain", a2);
      v4 = v8;
      if (v8)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    case WKErrorDuplicateCredential:
      WebCore::localizedString(&v8, @"This credential is already present", a2);
      v4 = v8;
      if (v8)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    case WKErrorMalformedCredential:
      WebCore::localizedString(&v8, @"This credential is malformed", a2);
      v4 = v8;
      if (v8)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    case WKErrorCredentialNotFound:
      WebCore::localizedString(&v8, @"Credential could not be found", a2);
      v4 = v8;
      if (v8)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    default:
      WebCore::localizedString(&v8, @"An unknown error occurred", a2);
      v4 = v8;
      if (v8)
      {
LABEL_35:
        atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](v4);
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, v5);
        }
      }

      else
      {
LABEL_41:
        *a3 = &stru_1F1147748;
        v7 = &stru_1F1147748;
      }

      result = v8;
      v8 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }

      return result;
  }
}

void sub_19DA67EAC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t createNSError@<X0>(WKErrorCode a1@<X0>, const __CFString *a2@<X1>, void *a3@<X8>)
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v14[0] = *MEMORY[0x1E696A578];
    localizedDescriptionForErrorCode(a1, a2, &v11);
    v14[1] = *MEMORY[0x1E696AA08];
    v15[0] = v11;
    v15[1] = a2;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  }

  else
  {
    v12 = *MEMORY[0x1E696A578];
    localizedDescriptionForErrorCode(a1, 0, &v11);
    v13 = v11;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  }

  v7 = v6;
  v8 = v11;
  v11 = 0;
  if (v8)
  {
  }

  v9 = objc_alloc(MEMORY[0x1E696ABC0]);
  result = [v9 initWithDomain:@"WKErrorDomain" code:a1 userInfo:{v7, v11}];
  *a3 = result;
  return result;
}

void sub_19DA68098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void DownloadClient::~DownloadClient(id *this)
{
  objc_destroyWeak(this + 2);
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  objc_destroyWeak(this + 2);
  if (*(this + 2) == 1)
  {

    bmalloc::api::tzoneFree(this, v2);
  }

  else
  {
    __break(0xC471u);
  }
}

void DownloadClient::didReceiveAuthenticationChallenge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (!WeakRetained || (WeakRetained, (*(a1 + 24) & 2) == 0))
  {
    v7 = *(a3 + 472);
    WebCore::CredentialBase::CredentialBase(&v20);
    v22 = 0;
    WebKit::AuthenticationDecisionListener::completeChallenge(v7);
    v9 = v22;
    v22 = 0;
    if (v9)
    {
    }

    v10 = v21;
    v21 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    v11 = v20;
    v20 = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v8);
      }
    }

    return;
  }

  Weak = objc_loadWeak((a1 + 16));
  v13 = *(a2 + 8);
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v14 = *(a3 + 8);
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = *(a3 + 8);
      goto LABEL_17;
    }

LABEL_20:
    __break(0xC471u);
    JUMPOUT(0x19DA68388);
  }

  v15 = 0;
LABEL_17:
  CFRetain(v15);
  v16 = objc_loadWeakRetained((a1 + 16));
  WebKit::CompletionHandlerCallChecker::create(v16, sel_download_didReceiveAuthenticationChallenge_completionHandler_, &v21);
  v18 = a3;
  v17 = v21;
  v19 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
  *v19 = MEMORY[0x1E69E9818];
  v19[1] = 50331650;
  v19[2] = WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<DownloadClient::didReceiveAuthenticationChallenge(WebKit::DownloadProxy &,WebKit::AuthenticationChallengeProxy &)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}>(DownloadClient::didReceiveAuthenticationChallenge(WebKit::DownloadProxy &,WebKit::AuthenticationChallengeProxy &)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1})::{lambda(void *,NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}::__invoke;
  v19[3] = &WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<DownloadClient::didReceiveAuthenticationChallenge(WebKit::DownloadProxy &,WebKit::AuthenticationChallengeProxy &)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}>(DownloadClient::didReceiveAuthenticationChallenge(WebKit::DownloadProxy &,WebKit::AuthenticationChallengeProxy &)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1})::descriptor;
  v19[4] = v18;
  v19[5] = v17;
  [Weak download:v13 didReceiveAuthenticationChallenge:v14 completionHandler:v19];
  _Block_release(v19);
  if (v16)
  {
  }
}

void sub_19DA683AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  _Block_release(v10);
  if (v9)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t DownloadClient::didReceiveData(DownloadClient *this, WebKit::DownloadProxy *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 1);
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    result = 117;
    __break(0xC471u);
  }

  else
  {
    v8 = [v7 progress];
    [v8 setTotalUnitCount:a5];

    return [v8 setCompletedUnitCount:a4];
  }

  return result;
}

void DownloadClient::decidePlaceholderPolicy(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 24);
  if ((v4 & 0x30) != 0)
  {
    Weak = objc_loadWeak((a1 + 16));
    v7 = *(a2 + 8);
    if ((v4 & 0x10) != 0)
    {
      if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = *a3;
        *a3 = 0;
        v9 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
        *v9 = MEMORY[0x1E69E9818];
        v9[1] = 50331650;
        v9[2] = WTF::BlockPtr<void ()(_WKPlaceholderPolicy,NSURL *)>::fromCallable<DownloadClient::decidePlaceholderPolicy(WebKit::DownloadProxy &,WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)> &&)::{lambda(_WKPlaceholderPolicy,NSURL *)#1}>(DownloadClient::decidePlaceholderPolicy(WebKit::DownloadProxy &,WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)> &&)::{lambda(_WKPlaceholderPolicy,NSURL *)#1})::{lambda(void *,_WKPlaceholderPolicy,NSURL *)#1}::__invoke;
        v9[3] = &WTF::BlockPtr<void ()(_WKPlaceholderPolicy,NSURL *)>::fromCallable<DownloadClient::decidePlaceholderPolicy(WebKit::DownloadProxy &,WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)> &&)::{lambda(_WKPlaceholderPolicy,NSURL *)#1}>(DownloadClient::decidePlaceholderPolicy(WebKit::DownloadProxy &,WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)> &&)::{lambda(_WKPlaceholderPolicy,NSURL *)#1})::descriptor;
        v9[4] = v12;
        [Weak _download:v7 decidePlaceholderPolicy:v9];
        goto LABEL_13;
      }
    }

    else if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = *a3;
      *a3 = 0;
      v9 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
      *v9 = MEMORY[0x1E69E9818];
      v9[1] = 50331650;
      v9[2] = WTF::BlockPtr<void ()(WKDownloadPlaceholderPolicy,NSURL *)>::fromCallable<DownloadClient::decidePlaceholderPolicy(WebKit::DownloadProxy &,WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)> &&)::{lambda(WKDownloadPlaceholderPolicy,NSURL *)#1}>(DownloadClient::decidePlaceholderPolicy(WebKit::DownloadProxy &,WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)> &&)::{lambda(WKDownloadPlaceholderPolicy,NSURL *)#1})::{lambda(void *,WKDownloadPlaceholderPolicy,NSURL *)#1}::__invoke;
      v9[3] = &WTF::BlockPtr<void ()(WKDownloadPlaceholderPolicy,NSURL *)>::fromCallable<DownloadClient::decidePlaceholderPolicy(WebKit::DownloadProxy &,WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)> &&)::{lambda(WKDownloadPlaceholderPolicy,NSURL *)#1}>(DownloadClient::decidePlaceholderPolicy(WebKit::DownloadProxy &,WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)> &&)::{lambda(WKDownloadPlaceholderPolicy,NSURL *)#1})::descriptor;
      v9[4] = v8;
      [Weak download:v7 decidePlaceholderPolicy:v9];
LABEL_13:

      _Block_release(v9);
      return;
    }

    __break(0xC471u);
    JUMPOUT(0x19DA686C0);
  }

  WTF::URL::URL(&v13);
  WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)>::operator()(a3);
  v11 = v13;
  v13 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }
}

void DownloadClient::decideDestinationWithSuggestedFilename(uint64_t a1, uint64_t a2, WebCore::ResourceResponse *a3, atomic_uint **a4, uint64_t *a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (WeakRetained)
  {

    Weak = objc_loadWeak((a1 + 16));
    v12 = *(a2 + 8);
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      __break(0xC471u);
    }

    else
    {
      v13 = WebCore::ResourceResponse::nsURLResponse(a3);
      v14 = *a4;
      if (v14)
      {
        atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v28, v14);
        if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v15);
        }
      }

      else
      {
        v28 = &stru_1F1147748;
        v18 = &stru_1F1147748;
      }

      v19 = v28;
      CFRetain(*(a2 + 8));
      v20 = *a5;
      *a5 = 0;
      v21 = objc_loadWeakRetained((a1 + 16));
      WebKit::CompletionHandlerCallChecker::create(v21, sel_download_decideDestinationUsingResponse_suggestedFilename_completionHandler_, &v27);
      v23 = a2;
      v22 = v20;
      v24 = v27;
      v25 = malloc_type_malloc(0x38uLL, 0x10E004099C88F60uLL);
      *v25 = MEMORY[0x1E69E9818];
      v25[1] = 50331650;
      v25[2] = WTF::BlockPtr<void ()(NSURL *)>::fromCallable<DownloadClient::decideDestinationWithSuggestedFilename(WebKit::DownloadProxy &,WebCore::ResourceResponse const&,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)> &&)::{lambda(NSURL *)#1}>(DownloadClient::decideDestinationWithSuggestedFilename(WebKit::DownloadProxy &,WebCore::ResourceResponse const&,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)> &&)::{lambda(NSURL *)#1})::{lambda(void *,NSURL *)#1}::__invoke;
      v25[3] = &WTF::BlockPtr<void ()(NSURL *)>::fromCallable<DownloadClient::decideDestinationWithSuggestedFilename(WebKit::DownloadProxy &,WebCore::ResourceResponse const&,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)> &&)::{lambda(NSURL *)#1}>(DownloadClient::decideDestinationWithSuggestedFilename(WebKit::DownloadProxy &,WebCore::ResourceResponse const&,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)> &&)::{lambda(NSURL *)#1})::descriptor;
      v25[4] = v23;
      v25[5] = v22;
      v25[6] = v24;
      [Weak download:v12 decideDestinationUsingResponse:v13 suggestedFilename:v19 completionHandler:v25];
      _Block_release(v25);
      if (v21)
      {
      }

      v26 = v28;
      v28 = 0;
      if (v26)
      {
      }
    }
  }

  else
  {
    v29 = 0;
    WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)>::operator()(a5, 0, &v29);
    v17 = v29;
    v29 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }
  }
}

void sub_19DA6897C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14)
{
  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void DownloadClient::didFinish(id *this, WebKit::DownloadProxy *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  if (WeakRetained)
  {

    if ((this[3] & 4) != 0)
    {
      Weak = objc_loadWeak(this + 2);
      v6 = *(a2 + 1);
      if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        __break(0xC471u);
      }

      else
      {

        [Weak downloadDidFinish:v6];
      }
    }
  }
}

void DownloadClient::didFail(id *this, WebKit::DownloadProxy *a2, const WebCore::ResourceError *a3, API::Data *a4)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  if (WeakRetained)
  {

    if ((this[3] & 8) != 0)
    {
      Weak = objc_loadWeak(this + 2);
      v10 = *(a2 + 1);
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v11 = WebCore::ResourceError::nsError(a3), a4) && (a4 = *(a4 + 1)) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        __break(0xC471u);
        JUMPOUT(0x19DA68C5CLL);
      }

      [Weak download:v10 didFailWithError:v11 resumeData:a4];
    }
  }
}

void DownloadClient::didReceivePlaceholderURL(uint64_t a1, uint64_t a2, WTF::URL *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (!WeakRetained || (WeakRetained, (*(a1 + 24) & 0xC0) == 0))
  {

    WTF::CompletionHandler<void ()(void)>::operator()(a6);
    return;
  }

  v25 = 0;
  v24 = 0;
  v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a4 length:a5];
  v14 = [objc_alloc(MEMORY[0x1E695DFF8]) initByResolvingBookmarkData:v13 options:0 relativeToURL:0 bookmarkDataIsStale:&v25 error:&v24];
  if (!v24 && v25 != 1 || (v15 = qword_1ED6416F0, !os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR)))
  {
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  LOWORD(v23[0]) = 0;
  _os_log_error_impl(&dword_19D52D000, v15, OS_LOG_TYPE_ERROR, "Failed to resolve URL from bookmark data", v23, 2u);
  if (!v14)
  {
LABEL_7:
    WTF::URL::createCFURL(v23, a3);
    v14 = v23[0];
  }

LABEL_8:
  if ((*(a1 + 24) & 0x40) != 0)
  {
    Weak = objc_loadWeak((a1 + 16));
    v21 = *(a2 + 8);
    if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v22 = *a6;
      *a6 = 0;
      v19 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
      *v19 = MEMORY[0x1E69E9818];
      v19[1] = 50331650;
      v19[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)>)::{lambda(void *)#1}::__invoke;
      v19[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)>)::descriptor;
      v19[4] = v22;
      [Weak _download:v21 didReceivePlaceholderURL:v14 completionHandler:v19];
      goto LABEL_18;
    }

LABEL_26:
    __break(0xC471u);
    JUMPOUT(0x19DA68F7CLL);
  }

  v16 = objc_loadWeak((a1 + 16));
  v17 = *(a2 + 8);
  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v18 = *a6;
  *a6 = 0;
  v19 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v19 = MEMORY[0x1E69E9818];
  v19[1] = 50331650;
  v19[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)>)::{lambda(void *)#1}::__invoke;
  v19[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)>)::descriptor;
  v19[4] = v18;
  [v16 download:v17 didReceivePlaceholderURL:v14 completionHandler:v19];
LABEL_18:
  _Block_release(v19);
  if (!v14)
  {
    if (!v13)
    {
      return;
    }

    goto LABEL_20;
  }

  if (v13)
  {
LABEL_20:
  }
}

void sub_19DA68FA0(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DA69018()
{
  if (v0)
  {
    JUMPOUT(0x19DA69020);
  }

  JUMPOUT(0x19DA68FCCLL);
}

void DownloadClient::didReceiveFinalURL(uint64_t a1, uint64_t a2, WTF::URL *a3, uint64_t a4, uint64_t a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (!WeakRetained)
  {
    return;
  }

  if ((*(a1 + 24) & 0x300) == 0)
  {
    return;
  }

  v20 = 0;
  v19 = 0;
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a4 length:a5];
  v12 = [objc_alloc(MEMORY[0x1E695DFF8]) initByResolvingBookmarkData:v11 options:0 relativeToURL:0 bookmarkDataIsStale:&v20 error:&v19];
  if (!v19 && v20 != 1 || (v13 = qword_1ED6416F0, !os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_ERROR)))
  {
    if (v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  LOWORD(v18[0]) = 0;
  _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Failed to resolve URL from bookmark data", v18, 2u);
  if (!v12)
  {
LABEL_7:
    WTF::URL::createCFURL(v18, a3);
    v12 = v18[0];
  }

LABEL_8:
  if ((*(a1 + 24) & 0x100) != 0)
  {
    Weak = objc_loadWeak((a1 + 16));
    v17 = *(a2 + 8);
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [Weak _download:v17 didReceiveFinalURL:v12];
      goto LABEL_15;
    }

LABEL_23:
    __break(0xC471u);
    JUMPOUT(0x19DA6920CLL);
  }

  v14 = objc_loadWeak((a1 + 16));
  v15 = *(a2 + 8);
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  [v14 download:v15 didReceiveFinalURL:v12];
LABEL_15:
  if (!v12)
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v11)
  {
LABEL_17:
  }
}

void sub_19DA69230(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void DownloadClient::processDidCrash(id *this, WebKit::DownloadProxy *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 2);
  if (WeakRetained)
  {

    if ((this[3] & 8) != 0)
    {
      Weak = objc_loadWeak(this + 2);
      v6 = *(a2 + 1);
      if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        __break(0xC471u);
      }

      else
      {
        v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1005 userInfo:0];

        [Weak download:v6 didFailWithError:v7 resumeData:0];
      }
    }
  }
}

void DownloadClient::willSendRequest(uint64_t a1, uint64_t a2, uint64_t a3, WebCore::ResourceResponse *a4, uint64_t *a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (WeakRetained && (WeakRetained, (*(a1 + 24) & 1) != 0))
  {
    v11 = WebCore::ResourceRequest::nsURLRequest();
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    Weak = objc_loadWeak((a1 + 16));
    v15 = *(a2 + 8);
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v16 = WebCore::ResourceResponse::nsURLResponse(a4)) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      __break(0xC471u);
      JUMPOUT(0x19DA69660);
    }

    WebCore::ResourceRequestBase::RequestData::RequestData(v34, a3);
    v17 = *(a3 + 152);
    *(a3 + 152) = 0;
    *(a3 + 160) = 0;
    v35 = v17;
    v18 = *(a3 + 168);
    v19 = *(a3 + 176);
    *(a3 + 168) = 0;
    v36 = v18;
    v37 = v19;
    v38 = *(a3 + 184);
    v20 = *(a3 + 192);
    *(a3 + 192) = 0;
    v21 = *a5;
    *a5 = 0;
    *&v39 = v20;
    *(&v39 + 1) = v21;
    v22 = objc_loadWeakRetained((a1 + 16));
    WebKit::CompletionHandlerCallChecker::create(v22, sel_download_willPerformHTTPRedirection_newRequest_decisionHandler_, &v40);
    WebCore::ResourceRequestBase::RequestData::RequestData(v41, v34);
    v23 = v35;
    v35 = 0u;
    v42 = v23;
    v24 = v36;
    v36 = 0;
    v43 = v24;
    v44 = v37;
    v45 = v38;
    v25 = v39;
    v39 = 0u;
    v46 = v25;
    v26 = v40;
    v40 = 0;
    v47 = v26;
    v27 = malloc_type_malloc(0xF8uLL, 0x10E004021F53F83uLL);
    *v27 = MEMORY[0x1E69E9818];
    *(v27 + 1) = 50331650;
    *(v27 + 2) = WTF::BlockPtr<void ()(WKDownloadRedirectPolicy)>::fromCallable<DownloadClient::willSendRequest(WebKit::DownloadProxy &,WebCore::ResourceRequest &&,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::{lambda(WKDownloadRedirectPolicy)#1}>(DownloadClient::willSendRequest(WebKit::DownloadProxy &,WebCore::ResourceRequest &&,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::{lambda(WKDownloadRedirectPolicy)#1})::{lambda(void *,WKDownloadRedirectPolicy)#1}::__invoke;
    *(v27 + 3) = &WTF::BlockPtr<void ()(WKDownloadRedirectPolicy)>::fromCallable<DownloadClient::willSendRequest(WebKit::DownloadProxy &,WebCore::ResourceRequest &&,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::{lambda(WKDownloadRedirectPolicy)#1}>(DownloadClient::willSendRequest(WebKit::DownloadProxy &,WebCore::ResourceRequest &&,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::{lambda(WKDownloadRedirectPolicy)#1})::descriptor;
    WebCore::ResourceRequestBase::RequestData::RequestData((v27 + 32), v41);
    v28 = v44;
    v29 = v47;
    *(v27 + 25) = v43;
    *(v27 + 26) = v28;
    v27[216] = v45;
    v30 = v42;
    v42 = 0u;
    *(v27 + 184) = v30;
    v43 = 0;
    *(v27 + 14) = v46;
    *(v27 + 30) = v29;
    v47 = 0;
    v46 = 0u;
    WebCore::ResourceRequestBase::~ResourceRequestBase(v41);
    [Weak download:v15 willPerformHTTPRedirection:v16 newRequest:v12 decisionHandler:v27];
    _Block_release(v27);
    v31 = v40;
    v40 = 0;
    if (v31)
    {
      WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v31);
    }

    v32 = *(&v39 + 1);
    *(&v39 + 1) = 0;
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }

    v33 = v39;
    *&v39 = 0;
    if (v33)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(v34);
    if (v22)
    {
    }

    if (v12)
    {
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>::operator()(a5);
  }
}

void sub_19DA69684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, atomic_uint *a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_release(v65);
  v67 = a36;
  a36 = 0;
  if (v67)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v67);
  }

  v68 = a35;
  a35 = 0;
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  v69 = a34;
  a34 = 0;
  if (v69)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a10);
  if (v64)
  {
  }

  if (v63)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)>::operator()(uint64_t *a1, uint64_t a2, WTF::StringImpl **a3)
{
  v3 = *a1;
  *a1 = 0;
  v4 = *a3;
  *a3 = 0;
  v8 = v4;
  v9 = v3;
  WTF::Function<void ()(WebKit::AllowOverwrite,WTF::String)>::operator()(&v9, a2, &v8);
  v6 = v8;
  v8 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19DA6991C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::Function<void ()(WebKit::AllowOverwrite,WTF::String)>::operator()(uint64_t *a1, uint64_t a2, WTF::StringImpl **a3)
{
  v3 = *a1;
  v4 = *a3;
  *a3 = 0;
  v7 = v4;
  (*(*v3 + 16))(v3, a2, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

void sub_19DA699F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<DownloadClient::didReceiveAuthenticationChallenge(WebKit::DownloadProxy &,WebKit::AuthenticationChallengeProxy &)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}>(DownloadClient::didReceiveAuthenticationChallenge(WebKit::DownloadProxy &,WebKit::AuthenticationChallengeProxy &)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1})::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    v4 = *(v3 + 8);

    CFRelease(v4);
  }
}

uint64_t WTF::BlockPtr<void ()(NSURLSessionAuthChallengeDisposition,NSURLCredential *)>::fromCallable<DownloadClient::didReceiveAuthenticationChallenge(WebKit::DownloadProxy &,WebKit::AuthenticationChallengeProxy &)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}>(DownloadClient::didReceiveAuthenticationChallenge(WebKit::DownloadProxy &,WebKit::AuthenticationChallengeProxy &)::{lambda(NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1})::{lambda(void *,NSURLSessionAuthChallengeDisposition,NSURLCredential *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 40));
  if (result)
  {
    return result;
  }

  *(*(a1 + 40) + 24) = 1;
  if (a2 > 1)
  {
    if (a2 == 2 || a2 == 3)
    {
      goto LABEL_5;
    }

    return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid NSURLSessionAuthChallengeDisposition (%ld)", a2}];
  }

  if (!a2)
  {
    v9 = *(*(a1 + 32) + 472);
    if (a3)
    {
      MEMORY[0x19EB02B50](&v13, a3);
    }

    else
    {
      WebCore::CredentialBase::CredentialBase(&v13);
      v15 = 0;
    }

    v8 = v9;
    goto LABEL_14;
  }

  if (a2 != 1)
  {
    return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid NSURLSessionAuthChallengeDisposition (%ld)", a2}];
  }

LABEL_5:
  v7 = *(*(a1 + 32) + 472);
  WebCore::CredentialBase::CredentialBase(&v13);
  v15 = 0;
  v8 = v7;
LABEL_14:
  WebKit::AuthenticationDecisionListener::completeChallenge(v8);
  v11 = v15;
  v15 = 0;
  if (v11)
  {
  }

  v12 = v14;
  v14 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  result = v13;
  v13 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v10);
    }
  }

  return result;
}

atomic_uint *WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v5 = v1;
    atomic_store(add, result);
    WebKit::CompletionHandlerCallChecker::~CompletionHandlerCallChecker(result);

    return WTF::fastFree(v3, v4);
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(_WKPlaceholderPolicy,NSURL *)>::fromCallable<DownloadClient::decidePlaceholderPolicy(WebKit::DownloadProxy &,WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)> &&)::{lambda(_WKPlaceholderPolicy,NSURL *)#1}>(DownloadClient::decidePlaceholderPolicy(WebKit::DownloadProxy &,WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)> &&)::{lambda(_WKPlaceholderPolicy,NSURL *)#1})::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

WTF::StringImpl *WTF::BlockPtr<void ()(_WKPlaceholderPolicy,NSURL *)>::fromCallable<DownloadClient::decidePlaceholderPolicy(WebKit::DownloadProxy &,WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)> &&)::{lambda(_WKPlaceholderPolicy,NSURL *)#1}>(DownloadClient::decidePlaceholderPolicy(WebKit::DownloadProxy &,WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)> &&)::{lambda(_WKPlaceholderPolicy,NSURL *)#1})::{lambda(void *,_WKPlaceholderPolicy,NSURL *)#1}::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 > 1)
  {
    return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid WKPlaceholderPolicy (%ld)", a2}];
  }

  MEMORY[0x19EB01DE0](&v6, a3);
  WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)>::operator()((a1 + 32));
  result = v6;
  v6 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

void sub_19DA69D3C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WTF::BlockPtr<void ()(WKDownloadPlaceholderPolicy,NSURL *)>::fromCallable<DownloadClient::decidePlaceholderPolicy(WebKit::DownloadProxy &,WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)> &&)::{lambda(WKDownloadPlaceholderPolicy,NSURL *)#1}>(DownloadClient::decidePlaceholderPolicy(WebKit::DownloadProxy &,WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)> &&)::{lambda(WKDownloadPlaceholderPolicy,NSURL *)#1})::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

WTF::StringImpl *WTF::BlockPtr<void ()(WKDownloadPlaceholderPolicy,NSURL *)>::fromCallable<DownloadClient::decidePlaceholderPolicy(WebKit::DownloadProxy &,WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)> &&)::{lambda(WKDownloadPlaceholderPolicy,NSURL *)#1}>(DownloadClient::decidePlaceholderPolicy(WebKit::DownloadProxy &,WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)> &&)::{lambda(WKDownloadPlaceholderPolicy,NSURL *)#1})::{lambda(void *,WKDownloadPlaceholderPolicy,NSURL *)#1}::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 > 1)
  {
    return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid WKDownloadPlaceholderPolicy (%ld)", a2}];
  }

  MEMORY[0x19EB01DE0](&v6, a3);
  WTF::CompletionHandler<void ()(WebKit::UseDownloadPlaceholder,WTF::URL const&)>::operator()((a1 + 32));
  result = v6;
  v6 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

void sub_19DA69E5C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void WTF::BlockPtr<void ()(NSURL *)>::fromCallable<DownloadClient::decideDestinationWithSuggestedFilename(WebKit::DownloadProxy &,WebCore::ResourceResponse const&,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)> &&)::{lambda(NSURL *)#1}>(DownloadClient::decideDestinationWithSuggestedFilename(WebKit::DownloadProxy &,WebCore::ResourceResponse const&,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)> &&)::{lambda(NSURL *)#1})::{lambda(void const*)#1}::__invoke(void *a1)
{
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4)
  {
    v5 = *(v4 + 8);

    CFRelease(v5);
  }
}

uint64_t WTF::BlockPtr<void ()(NSURL *)>::fromCallable<DownloadClient::decideDestinationWithSuggestedFilename(WebKit::DownloadProxy &,WebCore::ResourceResponse const&,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)> &&)::{lambda(NSURL *)#1}>(DownloadClient::decideDestinationWithSuggestedFilename(WebKit::DownloadProxy &,WebCore::ResourceResponse const&,WTF::String const&,WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)> &&)::{lambda(NSURL *)#1})::{lambda(void *,NSURL *)#1}::__invoke(uint64_t a1, void *a2)
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 48));
  if (result)
  {
    return result;
  }

  *(*(a1 + 48) + 24) = 1;
  if (!a2)
  {
    goto LABEL_6;
  }

  if ([a2 isFileURL])
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    if (([v5 fileExistsAtPath:{objc_msgSend(objc_msgSend(a2, "URLByDeletingLastPathComponent"), "path")}] & 1) != 0 && !objc_msgSend(v5, "fileExistsAtPath:", objc_msgSend(a2, "path")))
    {
      v9 = *(*(a1 + 32) + 8);
      if (v9)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          result = 117;
          __break(0xC471u);
          return result;
        }
      }

      [objc_msgSend(v9 "progress")];
      MEMORY[0x19EB02040](&v10, [a2 path]);
      WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)>::operator()((a1 + 40), 0, &v10);
      goto LABEL_16;
    }

LABEL_6:
    v10 = 0;
    WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)>::operator()((a1 + 40), 0, &v10);
LABEL_16:
    result = v10;
    v10 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v6);
      }
    }

    return result;
  }

  v10 = 0;
  WTF::CompletionHandler<void ()(WebKit::AllowOverwrite,WTF::String)>::operator()((a1 + 40), 0, &v10);
  v8 = v10;
  v10 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"destination must be a file URL"];
}

void sub_19DA6A0F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void DownloadClient::willSendRequest(WebKit::DownloadProxy &,WebCore::ResourceRequest &&,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::{lambda(WKDownloadRedirectPolicy)#1}::operator()(uint64_t a1, uint64_t a2)
{
  if ((WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(a1 + 208)) & 1) == 0)
  {
    *(*(a1 + 208) + 24) = 1;
    if (a2 == 1)
    {

      WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>::operator()((a1 + 200));
    }

    else if (a2)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid WKDownloadRedirectPolicy (%ld)", a2}];
    }

    else
    {
      WebCore::ResourceRequest::ResourceRequest(v5);
      WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>::operator()((a1 + 200));
      v4 = v6;
      v6 = 0;
      if (v4)
      {
      }

      WebCore::ResourceRequestBase::~ResourceRequestBase(v5);
    }
  }
}

void sub_19DA6A1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  v35 = a34;
  a34 = 0;
  if (v35)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&a10);
  _Unwind_Resume(a1);
}

void WTF::BlockPtr<void ()(WKDownloadRedirectPolicy)>::fromCallable<DownloadClient::willSendRequest(WebKit::DownloadProxy &,WebCore::ResourceRequest &&,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::{lambda(WKDownloadRedirectPolicy)#1}>(DownloadClient::willSendRequest(WebKit::DownloadProxy &,WebCore::ResourceRequest &&,WebCore::ResourceResponse const&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest &)> &&)::{lambda(WKDownloadRedirectPolicy)#1})::{lambda(void const*)#1}::__invoke(void *a1)
{
  v2 = a1[30];
  a1[30] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::CompletionHandlerCallChecker,(WTF::DestructionThread)0>::deref(v2);
  }

  v3 = a1[29];
  a1[29] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[28];
  a1[28] = 0;
  if (v4)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase((a1 + 4));
}

void sub_19DA6A368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void sub_19DA6A8CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    CFRelease(*(v16 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA6AB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    CFRelease(*(v16 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA6ACF4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, void *a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  _Unwind_Resume(a1);
}

void WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a1 + 12)];
  *a2 = v4;
  v6 = *(a1 + 12);
  if (v6)
  {
    v7 = v4;
    v8 = *a1;
    v9 = 8 * v6;
    do
    {
      WTF::makeNSArrayElement(&v11, v8, v5);
      if (v11)
      {
        [v7 addObject:?];
        v10 = v11;
        v11 = 0;
        if (v10)
        {
        }
      }

      v8 = (v8 + 8);
      v9 -= 8;
    }

    while (v9);
  }
}

void sub_19DA6ADB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  *v10 = 0;
  if (v11)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA6B008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DA6B1C0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebInspectorInterruptDispatcher::didReceiveMessage(WebKit::WebInspectorInterruptDispatcher *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!*(this + 2))
  {
    __break(0xC471u);
    goto LABEL_16;
  }

  v5 = *(a3 + 25);
  if (v5 == 2061)
  {
    WebKit::WebInspectorInterruptDispatcher::notifyNeedDebuggerBreak(this);
  }

  else
  {
    v6 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v5 >= 0x107F)
      {
        v10 = 4223;
      }

      else
      {
        v10 = v5;
      }

      v11 = (&IPC::Detail::messageDescriptions)[3 * v10];
      v12 = *(a3 + 7);
      v13 = 136315394;
      v14 = v11;
      v15 = 2048;
      v16 = v12;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &v13, 0x16u);
    }

    v7 = *a3;
    v8 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v9 = *(a3 + 3);
    if (v9)
    {
      if (v8)
      {
        (*(*v9 + 16))(v9, v7);
      }
    }
  }

  if (!*(this + 2))
  {
    __break(0xC471u);
LABEL_16:
    JUMPOUT(0x19DA6B4B8);
  }
}

void WebKit::WebInspector::didReceiveMessage(atomic_uint *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  atomic_fetch_add(this + 5, 1u);
  v5 = *(a3 + 25);
  if (v5 > 0x84F)
  {
    if (*(a3 + 25) <= 0x852u)
    {
      if (v5 != 2128)
      {
        if (v5 == 2129)
        {
          WebKit::WebInspector::showResources(this);
          if (!this)
          {
            return;
          }

          goto LABEL_51;
        }

        if (v5 == 2130)
        {
          WebKit::WebInspector::startElementSelection(this);
          if (!this)
          {
            return;
          }

          goto LABEL_51;
        }

        goto LABEL_43;
      }

      v13 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a3);
      if (v14)
      {
        WebKit::WebInspector::showMainResourceForFrame(this, v13);
        if (!this)
        {
          return;
        }

        goto LABEL_51;
      }

LABEL_50:
      if (!this)
      {
        return;
      }

      goto LABEL_51;
    }

    switch(v5)
    {
      case 0x853u:
        WebKit::WebInspector::startPageProfiling(this);
        if (!this)
        {
          return;
        }

        goto LABEL_51;
      case 0x854u:
        WebKit::WebInspector::stopElementSelection(this);
        if (!this)
        {
          return;
        }

        goto LABEL_51;
      case 0x855u:
        WebKit::WebInspector::stopPageProfiling(this);
        if (!this)
        {
          return;
        }

        goto LABEL_51;
    }

    goto LABEL_43;
  }

  if (*(a3 + 25) > 0x84Cu)
  {
    if (v5 != 2125)
    {
      if (v5 == 2126)
      {
        v8 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v9)
        {
          v10 = v8;
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
              goto LABEL_49;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_49:
          v19 = WTF::fastMalloc(0x18);
          *v19 = &unk_1F10F4B18;
          v19[1] = v10;
          v19[2] = a2;
          *v24 = v19;
          WebKit::WebInspector::show(this, v24);
          v20 = *v24;
          *v24 = 0;
          if (v20)
          {
            (*(*v20 + 8))(v20);
            if (!this)
            {
              return;
            }

            goto LABEL_51;
          }
        }

        goto LABEL_50;
      }

      if (v5 == 2127)
      {
        WebKit::WebInspector::showConsole(this);
        if (!this)
        {
          return;
        }

        goto LABEL_51;
      }

      goto LABEL_43;
    }

    IPC::Decoder::decode<std::tuple<IPC::ConnectionHandle>>(v24, a3);
    if (v24[4] == 1)
    {
      WebKit::WebInspector::setFrontendConnection(this, v24);
      if (v24[4])
      {
        WTF::MachSendRight::~MachSendRight(v24);
        if (!this)
        {
          return;
        }

        goto LABEL_51;
      }
    }

    goto LABEL_50;
  }

  if (v5 == 2123)
  {
    WebKit::WebInspector::close(this, a2);
    if (!this)
    {
      return;
    }

    goto LABEL_51;
  }

  if (v5 != 2124)
  {
LABEL_43:
    v15 = qword_1ED6416C8;
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
      v23 = *(a3 + 7);
      *v24 = 136315394;
      *&v24[4] = v22;
      v25 = 2048;
      v26 = v23;
      _os_log_error_impl(&dword_19D52D000, v15, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", v24, 0x16u);
    }

    v16 = *a3;
    v17 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v18 = *(a3 + 3);
    if (v18 && v17)
    {
      (*(*v18 + 16))(v18, v16);
      if (!this)
      {
        return;
      }

      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v6 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_50;
  }

  *(this + 56) = v6 & 1;
LABEL_51:
  if (atomic_fetch_add(this + 5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 5);
    (*(*this + 24))(this);
  }
}

void WebKit::WebInspectorUI::didReceiveMessage(WebKit::WebInspectorUI *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  ++*(this + 5);
  v7 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0x838:
      v8 = 3;
      goto LABEL_45;
    case 0x839:
      v8 = 2;
      goto LABEL_45;
    case 0x83A:
      v8 = 1;
      goto LABEL_45;
    case 0x83B:
      v8 = 0;
LABEL_45:
      WebKit::WebInspectorUI::setDockSide(this, v8);
      goto LABEL_63;
    case 0x83C:
      v11 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_62;
      }

      v13 = v11;
      IPC::ArgumentCoder<WebKit::DebuggableInfoData,void>::decode(a3, v50);
      if ((v54 & 1) == 0)
      {
        v40 = *a3;
        v41 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v42 = *(a3 + 3);
        if (!v42)
        {
          goto LABEL_62;
        }

        if (!v41)
        {
          goto LABEL_62;
        }

        (*(*v42 + 16))(v42, v40);
        if ((v54 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      v14 = *(a3 + 1);
      v15 = *(a3 + 2);
      v16 = *a3;
      if (v14 <= v15 - *a3)
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v47 = *(a3 + 3);
        if (v47)
        {
          if (v14)
          {
            (*(*v47 + 16))(v47);
            v14 = *(a3 + 1);
          }
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_99;
      }

      *(a3 + 2) = v15 + 1;
      if (!v15)
      {
LABEL_99:
        *a3 = 0;
        *(a3 + 1) = 0;
        v48 = *(a3 + 3);
        if (v48)
        {
          if (v14)
          {
            (*(*v48 + 16))(v48);
            v16 = *a3;
            v14 = *(a3 + 1);
            goto LABEL_102;
          }
        }

        else
        {
          v14 = 0;
        }

        v16 = 0;
LABEL_102:
        *a3 = 0;
        *(a3 + 1) = 0;
        v49 = *(a3 + 3);
        if (v49 && v14)
        {
          (*(*v49 + 16))(v49, v16);
        }

        goto LABEL_103;
      }

      v4 = *v15;
      if (v4 >= 2)
      {
        goto LABEL_102;
      }

      v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      v18 = ((v15 & 0xFFFFFFFFFFFFFFFCLL) + 4);
      if (v14 < v18 - v16 || v14 - (v18 - v16) <= 3)
      {
        v43 = 0;
        v44 = 0;
        *a3 = 0;
        *(a3 + 1) = 0;
        v45 = *(a3 + 3);
        if (v45)
        {
          (*(*v45 + 16))(v45);
          v44 = *a3;
          v43 = *(a3 + 1);
        }
      }

      else
      {
        *(a3 + 2) = v17 + 8;
        if (v18)
        {
          v3 = *v18;
          *buf = v13;
          buf[8] = v50[0];
          v19 = *v51;
          v51[0] = 0;
          v51[1] = 0;
          *&v57[2] = v19;
          v20 = v52;
          v52 = 0;
          v58 = v20;
          v59 = v53;
          v60 = v4;
          v21 = 1;
          v61 = v3;
          goto LABEL_16;
        }

        v43 = v14;
        v44 = v16;
      }

      *a3 = 0;
      *(a3 + 1) = 0;
      v46 = *(a3 + 3);
      if (v46 && v43)
      {
        (*(*v46 + 16))(v46, v44, v43);
      }

LABEL_103:
      v21 = 0;
      buf[0] = 0;
LABEL_16:
      v62 = v21;
      if (v54)
      {
        v22 = v52;
        v52 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v16);
        }

        v23 = v51[1];
        v51[1] = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v16);
        }

        v24 = v51[0];
        v51[0] = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v16);
        }
      }

      if (v21)
      {
        WebKit::WebInspectorUI::establishConnection(this, *buf, &buf[8], v4 & 1, v3);
        if (v62)
        {
          v25 = v58;
          v58 = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v9);
          }

          v26 = *&v57[10];
          *&v57[10] = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v9);
          }

          v27 = *&v57[2];
          *&v57[2] = 0;
          if (v27)
          {
LABEL_56:
            if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v27, v9);
            }
          }
        }
      }

      else
      {
LABEL_62:
        v9 = *a3;
        v10 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v32 = *(a3 + 3);
        if (v32 && v10)
        {
          (*(*v32 + 16))(v32, v9);
        }
      }

LABEL_63:
      if (*(this + 5) == 1)
      {
        (*(*this + 24))(this, v9, v10);
      }

      else
      {
        --*(this + 5);
      }

      return;
    case 0x83D:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[8] & 1) == 0)
      {
        v9 = *a3;
        v10 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v37 = *(a3 + 3);
        if (!v37)
        {
          goto LABEL_63;
        }

        if (!v10)
        {
          goto LABEL_63;
        }

        (*(*v37 + 16))(v37, v9);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      WebKit::WebInspectorUI::evaluateInFrontendForTesting(this, buf);
      goto LABEL_54;
    case 0x83E:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[8] & 1) == 0)
      {
        v9 = *a3;
        v10 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v38 = *(a3 + 3);
        if (!v38)
        {
          goto LABEL_63;
        }

        if (!v10)
        {
          goto LABEL_63;
        }

        (*(*v38 + 16))(v38, v9);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      WebKit::RemoteWebInspectorUI::sendMessageToFrontend(this, buf);
      goto LABEL_54;
    case 0x83F:
      v29 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v29 & 0x100) != 0)
      {
        WebKit::WebInspectorUI::setDiagnosticLoggingAvailable(this, v29 & 1);
      }

      goto LABEL_63;
    case 0x840:
      v30 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v30 & 0x100) != 0)
      {
        WebKit::WebInspectorUI::setDockingUnavailable(this, (v30 & 1));
      }

      goto LABEL_63;
    case 0x841:
      v28 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v28 & 0x100) != 0)
      {
        WebKit::WebInspectorUI::setIsVisible(this, (v28 & 1));
      }

      goto LABEL_63;
    case 0x842:
      WebKit::RemoteWebInspectorUI::showConsole(this);
      goto LABEL_63;
    case 0x843:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[8] & 1) == 0)
      {
        v9 = *a3;
        v10 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v36 = *(a3 + 3);
        if (!v36)
        {
          goto LABEL_63;
        }

        if (!v10)
        {
          goto LABEL_63;
        }

        (*(*v36 + 16))(v36, v9);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      WebKit::WebInspectorUI::showMainResourceForFrame(this, buf);
      goto LABEL_54;
    case 0x844:
      WebKit::RemoteWebInspectorUI::showResources(this);
      goto LABEL_63;
    case 0x845:
      WebKit::WebInspectorUI::startElementSelection(this);
      goto LABEL_63;
    case 0x846:
      WebKit::WebInspectorUI::startPageProfiling(this);
      goto LABEL_63;
    case 0x847:
      WebKit::WebInspectorUI::stopElementSelection(this);
      goto LABEL_63;
    case 0x848:
      WebKit::WebInspectorUI::stopPageProfiling(this);
      goto LABEL_63;
    case 0x849:
      WebKit::WebInspectorUI::updateConnection(this);
      goto LABEL_63;
    case 0x84A:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if ((buf[8] & 1) == 0)
      {
        v9 = *a3;
        v10 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v39 = *(a3 + 3);
        if (!v39)
        {
          goto LABEL_63;
        }

        if (!v10)
        {
          goto LABEL_63;
        }

        (*(*v39 + 16))(v39, v9);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      WebKit::RemoteWebInspectorUI::updateFindString(this, buf);
LABEL_54:
      if (buf[8])
      {
        v27 = *buf;
        *buf = 0;
        if (v27)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_63;
    default:
      v31 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v7 >= 0x107F)
        {
          v33 = 4223;
        }

        else
        {
          v33 = v7;
        }

        v34 = (&IPC::Detail::messageDescriptions)[3 * v33];
        v35 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v34;
        v56 = 2048;
        *v57 = v35;
        _os_log_error_impl(&dword_19D52D000, v31, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_62;
  }
}

void WebKit::WebInspectorUIProxy::didReceiveMessage(CFTypeRef *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v81 = *MEMORY[0x1E69E9840];
  CFRetain(this[1]);
  v7 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0x81A:
      v22 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v22 & 0x100) != 0)
      {
        WebKit::WebInspectorUIProxy::attachAvailabilityChanged(this, v22 & 1);
      }

      goto LABEL_133;
    case 0x81B:
      v9 = this;
      v10 = 0;
      goto LABEL_27;
    case 0x81C:
      v9 = this;
      v10 = 2;
      goto LABEL_27;
    case 0x81D:
      v9 = this;
      v10 = 1;
LABEL_27:
      WebKit::WebInspectorUIProxy::attach(v9, v10);
      goto LABEL_133;
    case 0x81E:
      if (*(this + 78) == 1)
      {
        *(this + 78) = 0;
      }

      else if ((*(this + 73) & 1) == 0)
      {
        WebKit::WebInspectorUIProxy::open(this);
      }

      goto LABEL_133;
    case 0x81F:
      WebKit::WebInspectorUIProxy::detach(this);
      goto LABEL_133;
    case 0x820:
      WebKit::WebInspectorUIProxy::closeFrontendPageAndWindow(this);
      goto LABEL_133;
    case 0x821:
    case 0x831:
      IPC::Decoder::decode<std::tuple<WebCore::InspectorFrontendClientAppearance>>(a3);
      goto LABEL_133;
    case 0x822:
      v28 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v28 & 0x100) != 0)
      {
        WebKit::WebInspectorUIProxy::elementSelectionChanged(this, v28 & 1);
      }

      goto LABEL_133;
    case 0x823:
      WebKit::WebInspectorUIProxy::frontendLoaded(this);
      goto LABEL_133;
    case 0x824:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, cf);
      if ((cf[8] & 1) == 0)
      {
        v50 = *a3;
        v51 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v52 = *(a3 + 3);
        if (!v52)
        {
          goto LABEL_133;
        }

        if (!v51)
        {
          goto LABEL_133;
        }

        (*(*v52 + 16))(v52, v50);
        if ((cf[8] & 1) == 0)
        {
          goto LABEL_133;
        }
      }

      goto LABEL_56;
    case 0x825:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, cf);
      if ((cf[8] & 1) == 0)
      {
        v25 = *a3;
        v56 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v57 = *(a3 + 3);
        if (!v57)
        {
          goto LABEL_78;
        }

        if (!v56)
        {
          goto LABEL_78;
        }

        (*(*v57 + 16))(v57, v25);
        if ((cf[8] & 1) == 0)
        {
          goto LABEL_78;
        }
      }

      v24 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v25 & 1) == 0)
      {
        goto LABEL_78;
      }

      a3 = v24;
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
          goto LABEL_75;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_75:
      v41 = WTF::fastMalloc(0x18);
      *v41 = &unk_1F10F4B40;
      v41[1] = a3;
      v41[2] = a2;
      v76 = v41;
      if (cf[8])
      {
        WebKit::WebInspectorUIProxy::load(this, cf, &v76);
        v42 = v76;
        v76 = 0;
        if (v42)
        {
          (*(*v42 + 8))(v42);
        }

LABEL_78:
        if (cf[8] == 1)
        {
          v43 = *cf;
          *cf = 0;
          if (v43)
          {
            if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v43, v25);
            }
          }
        }

        goto LABEL_82;
      }

      __break(1u);
LABEL_119:
      v67 = *a3;
      v68 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v69 = *(a3 + 3);
      if (v69)
      {
        if (v68)
        {
          (*(*v69 + 16))(v69, v67);
          if ((v79 & 0x10000) != 0)
          {
LABEL_4:
            WTF::isIntegralOrPointerType(this);
          }
        }
      }

      goto LABEL_133;
    case 0x826:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, cf);
      if ((cf[8] & 1) == 0)
      {
        v47 = *a3;
        v48 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v49 = *(a3 + 3);
        if (!v49)
        {
          goto LABEL_133;
        }

        if (!v48)
        {
          goto LABEL_133;
        }

        (*(*v49 + 16))(v49, v47);
        if ((cf[8] & 1) == 0)
        {
          goto LABEL_133;
        }
      }

      WebKit::WebInspectorUIProxy::openURLExternally(this, cf);
      goto LABEL_57;
    case 0x827:
      v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v18 & 1) == 0)
      {
        goto LABEL_133;
      }

      v19 = v17;
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
          goto LABEL_72;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_72:
      v39 = WTF::fastMalloc(0x18);
      *v39 = &unk_1F10F4B68;
      v39[1] = v19;
      v39[2] = a2;
      *cf = v39;
      WebKit::WebInspectorUIProxy::pickColorFromScreen(this, cf);
      v40 = *cf;
      *cf = 0;
      if (v40)
      {
        (*(*v40 + 8))(v40);
      }

LABEL_82:
      if (!this)
      {
        return;
      }

      goto LABEL_133;
    case 0x828:
      WebKit::WebInspectorUIProxy::reopen(this);
      goto LABEL_133;
    case 0x829:
      WebKit::WebInspectorUIProxy::requestOpenLocalInspectorFrontend(this);
      goto LABEL_133;
    case 0x82A:
      WebKit::WebInspectorUIProxy::resetState(this);
      goto LABEL_133;
    case 0x82B:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, cf);
      if ((cf[8] & 1) == 0)
      {
        v58 = *a3;
        v59 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v60 = *(a3 + 3);
        if (!v60)
        {
          goto LABEL_133;
        }

        if (!v59)
        {
          goto LABEL_133;
        }

        (*(*v60 + 16))(v60, v58);
        if ((cf[8] & 1) == 0)
        {
          goto LABEL_133;
        }
      }

LABEL_56:
      WTF::isIntegralOrPointerType(this);
      goto LABEL_57;
    case 0x82C:
      IPC::ArgumentCoder<std::tuple<WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,BOOL>,void>::decode<IPC::Decoder>(a3, cf, v6);
      if (v80 & 1) != 0 || (v61 = *a3, v62 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v63 = *(a3 + 3)) != 0) && v62 && ((*(*v63 + 16))(v63, v61), (v80))
      {
        WebKit::WebInspectorUIProxy::save(this);
        if (v80)
        {
          WTF::Vector<WebCore::InspectorFrontendClientSaveData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(cf, v23);
        }
      }

      goto LABEL_133;
    case 0x82D:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, cf);
      if ((cf[8] & 1) == 0)
      {
        v53 = *a3;
        v54 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v55 = *(a3 + 3);
        if (!v55)
        {
          goto LABEL_133;
        }

        if (!v54)
        {
          goto LABEL_133;
        }

        (*(*v55 + 16))(v55, v53);
        if ((cf[8] & 1) == 0)
        {
          goto LABEL_133;
        }
      }

      WebKit::WebInspectorUIProxy::sendMessageToBackend(this, cf);
LABEL_57:
      if (cf[8])
      {
        v34 = *cf;
        *cf = 0;
        if (v34)
        {
          if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v34, v8);
          }
        }
      }

      goto LABEL_133;
    case 0x82E:
      v33 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
      if ((v33 & 0x100000000) != 0)
      {
        WebKit::WebInspectorUIProxy::setAttachedWindowHeight(this, v33);
      }

      goto LABEL_133;
    case 0x82F:
      v35 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
      if ((v35 & 0x100000000) != 0)
      {
        WebKit::WebInspectorUIProxy::setAttachedWindowWidth(this, v35);
      }

      goto LABEL_133;
    case 0x830:
      v11 = *(a3 + 1);
      v12 = *(a3 + 2);
      v13 = *a3;
      if (v11 <= &v12[-*a3])
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v70 = *(a3 + 3);
        if (v70)
        {
          if (v11)
          {
            (*(*v70 + 16))(v70);
            v11 = *(a3 + 1);
          }
        }

        else
        {
          v11 = 0;
        }

LABEL_125:
        *a3 = 0;
        *(a3 + 1) = 0;
        v71 = *(a3 + 3);
        if (v71)
        {
          if (v11)
          {
            (*(*v71 + 16))(v71);
            v13 = *a3;
            v11 = *(a3 + 1);
LABEL_128:
            *a3 = 0;
            *(a3 + 1) = 0;
            v72 = *(a3 + 3);
            if (v72 && v11)
            {
              (*(*v72 + 16))(v72, v13);
            }

            v16 = 0;
            goto LABEL_130;
          }
        }

        else
        {
          v11 = 0;
        }

        v13 = 0;
        goto LABEL_128;
      }

      *(a3 + 2) = v12 + 1;
      if (!v12)
      {
        goto LABEL_125;
      }

      v14 = *v12;
      if (v14 >= 4)
      {
        goto LABEL_128;
      }

      v15 = IPC::Decoder::decode<std::optional<BOOL>>(a3);
      v16 = (v14 & 0xFF0000FF | (v15 << 8)) & (v15 << 15 >> 31) & 0xFEFFFFFF | ((((v15 & 0x10000u) >> 16) & 1) << 24);
      if ((v15 & 0x10000) != 0)
      {
        goto LABEL_131;
      }

LABEL_130:
      v73 = *a3;
      v74 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v75 = *(a3 + 3);
      if (v75 && v74)
      {
        (*(*v75 + 16))(v75, v73);
      }

LABEL_131:
      if (HIBYTE(v16))
      {
        WebKit::WebInspectorUIProxy::setDeveloperPreferenceOverride(this, v16, (v16 >> 8));
      }

LABEL_133:
      CFRelease(this[1]);
      return;
    case 0x832:
      IPC::Decoder::decode<std::tuple<IPC::ConnectionHandle>>(cf, a3);
      if (cf[4] == 1)
      {
        WebKit::WebInspectorUIProxy::setFrontendConnection(this, cf);
        if (cf[4])
        {
          WTF::MachSendRight::~MachSendRight(cf);
        }
      }

      goto LABEL_133;
    case 0x833:
      v38 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v38 & 0x100) != 0)
      {
        WebKit::WebInspectorUIProxy::setInspectorPageDeveloperExtrasEnabled(this, v38 & 1);
      }

      goto LABEL_133;
    case 0x834:
      IPC::ArgumentCoder<std::tuple<WebCore::FloatRect>,void>::decode<IPC::Decoder>(a3, cf);
      if ((v79 & 0x10000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_119;
    case 0x835:
      IPC::ArgumentCoder<std::tuple<WebCore::CertificateInfo>,void>::decode<IPC::Decoder>(a3, cf);
      if (cf[8] & 1) != 0 || (v64 = *a3, v65 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v66 = *(a3 + 3)) != 0) && v65 && ((*(*v66 + 16))(v66, v64), (cf[8]))
      {
        WTF::isIntegralOrPointerType(this);
        if (cf[8])
        {
          v36 = *cf;
          *cf = 0;
          if (v36)
          {
            CFRelease(v36);
          }
        }
      }

      goto LABEL_133;
    case 0x836:
      goto LABEL_133;
    case 0x837:
      v37 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v37 & 0x100) != 0)
      {
        *(this + 76) = v37 & 1;
      }

      goto LABEL_133;
    default:
      v29 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v7 >= 0x107F)
        {
          v44 = 4223;
        }

        else
        {
          v44 = v7;
        }

        v45 = (&IPC::Detail::messageDescriptions)[3 * v44];
        v46 = *(a3 + 7);
        *cf = 136315394;
        *&cf[4] = v45;
        v78 = 2048;
        v79 = v46;
        _os_log_error_impl(&dword_19D52D000, v29, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", cf, 0x16u);
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

      goto LABEL_133;
  }
}

WTF *WebKit::WebNotificationManager::didReceiveMessage(WebKit::WebNotificationManager *this, IPC::Connection *a2, WTF **a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!*(*(this + 3) + 8))
  {
    __break(0xC471u);
    goto LABEL_44;
  }

  v5 = *(a3 + 25);
  if (v5 <= 0x85C)
  {
    if (v5 == 2139)
    {
      result = IPC::Decoder::decode<std::tuple<WTF::UUID>>(a3, v21);
      if (BYTE2(v23) == 1)
      {
        result = WebKit::WebNotificationManager::didClickNotification(this, v21);
      }
    }

    else
    {
      if (v5 != 2140)
      {
LABEL_24:
        v11 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v5 >= 0x107F)
          {
            v14 = 4223;
          }

          else
          {
            v14 = v5;
          }

          v15 = (&IPC::Detail::messageDescriptions)[3 * v14];
          v16 = a3[7];
          *v21 = 136315394;
          *&v21[4] = v15;
          v22 = 2048;
          v23 = v16;
          _os_log_error_impl(&dword_19D52D000, v11, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", v21, 0x16u);
        }

        v12 = *a3;
        v13 = a3[1];
        *a3 = 0;
        a3[1] = 0;
        result = a3[3];
        if (result && v13)
        {
          result = (*(*result + 16))(result, v12);
        }

        goto LABEL_26;
      }

      IPC::ArgumentCoder<std::tuple<WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a3, v21);
      if (BYTE2(v23) & 1) != 0 || (v19 = *a3, v20 = a3[1], *a3 = 0, a3[1] = 0, (result = a3[3]) != 0) && v20 && (result = (*(*result + 16))(result, v19), (BYTE2(v23)))
      {
        result = WebKit::WebNotificationManager::didCloseNotifications(this, v21);
        if (BYTE2(v23))
        {
          result = *v21;
          if (*v21)
          {
            memset(v21, 0, sizeof(v21));
            result = WTF::fastFree(result, v7);
          }
        }
      }
    }
  }

  else
  {
    switch(v5)
    {
      case 0x85Du:
        result = IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a3, v21);
        if (BYTE2(v23) == 1)
        {
          result = WebKit::WebNotificationManager::didRemoveNotificationDecisions(this, v21, v8);
          if (BYTE2(v23))
          {
            result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v21, v9);
          }
        }

        break;
      case 0x85Fu:
        IPC::ArgumentCoder<std::tuple<WTF::String,BOOL>,void>::decode<IPC::Decoder>(a3, v21);
        if (BYTE2(v23) & 1) != 0 || (v17 = *a3, v18 = a3[1], *a3 = 0, a3[1] = 0, (result = a3[3]) != 0) && v18 && (result = (*(*result + 16))(result, v17), (BYTE2(v23)))
        {
          result = WebKit::WebNotificationManager::didUpdateNotificationDecision(this, v21, v21[8]);
          if (BYTE2(v23))
          {
            result = *v21;
            *v21 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v10);
              }
            }
          }
        }

        break;
      case 0x85Eu:
        result = IPC::Decoder::decode<std::tuple<WTF::UUID>>(a3, v21);
        if (BYTE2(v23) == 1)
        {
          result = WebKit::WebNotificationManager::didShowNotification(this, v21);
        }

        break;
      default:
        goto LABEL_24;
    }
  }

LABEL_26:
  if (!*(*(this + 3) + 8))
  {
    __break(0xC471u);
LABEL_44:
    JUMPOUT(0x19DA6CC50);
  }

  return result;
}

void WebKit::WebPage::didReceiveMessage(CFTypeRef *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v137 = *MEMORY[0x1E69E9840];
  CFRetain(this[1]);
  v9 = *(a3 + 25);
  if (v9 == 2745)
  {
    v10 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    if ((v10 & 0x100) != 0)
    {
      *(this + 1240) = v10 & 1;
    }

    goto LABEL_4;
  }

  if (*(a3 + 25) > 0xAC7u)
  {
    if (*(a3 + 25) > 0xADFu)
    {
      if (*(a3 + 25) > 0xAEEu)
      {
        if (*(a3 + 25) > 0xAFBu)
        {
          if (*(a3 + 25) <= 0xB1Bu)
          {
            if (*(a3 + 25) > 0xB08u)
            {
              switch(v9)
              {
                case 2843:
                  IPC::handleMessageAsync<Messages::WebPage::UpdateSelectionWithDelta,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(long long,long long,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
                  goto LABEL_4;
                case 2825:
                  if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) != 0)
                  {
                    WebKit::WebPage::touchWithIdentifierWasRemoved(this);
                  }

                  goto LABEL_4;
                case 2827:
                  WebKit::WebPage::tryRestoreScrollPosition(this);
                  goto LABEL_4;
              }
            }

            else
            {
              switch(v9)
              {
                case 2821:
                  IPC::handleMessage<Messages::WebPage::TapHighlightAtPosition,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint const&)>(a3, this);
                  goto LABEL_4;
                case 2812:
                  v88 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
                  if ((v88 & 0x100) != 0)
                  {
                    WebKit::WebPage::storeSelectionForAccessibility(this, v88 & 1);
                  }

                  goto LABEL_4;
                case 2822:
                  IPC::handleMessageAsync<Messages::WebPage::TextInputContextsInRect,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::FloatRect,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)>(a2, a3, this);
                  goto LABEL_4;
              }
            }
          }

          else if (*(a3 + 25) <= 0xB26u)
          {
            switch(v9)
            {
              case 2846:
                IPC::handleMessageAsync<Messages::WebPage::UpdateSelectionWithTouches,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WebKit::SelectionTouch,BOOL,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::SelectionTouch,WTF::OptionSet<WebKit::SelectionFlags>)> &&)>(a2, a3, this);
                goto LABEL_4;
              case 2844:
                IPC::handleMessageAsync<Messages::WebPage::UpdateSelectionWithExtentPoint,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,BOOL,WebKit::RespectSelectionAnchor,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
                goto LABEL_4;
              case 2845:
                IPC::handleMessageAsync<Messages::WebPage::UpdateSelectionWithExtentPointAndBoundary,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WebCore::TextGranularity,BOOL,WebKit::TextInteractionSource,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
                goto LABEL_4;
            }
          }

          else
          {
            switch(v9)
            {
              case 2856:
                WebKit::WebPage::viewWillStartLiveResize(this);
                goto LABEL_4;
              case 2855:
                WebKit::WebPage::viewWillEndLiveResize(this);
                goto LABEL_4;
              case 2863:
                WebKit::WebPage::willInsertFinalDictationResult(this);
                goto LABEL_4;
            }
          }
        }

        else
        {
          switch(v9)
          {
            case 2807:
              WebKit::WebPage::stopInteraction(this);
              goto LABEL_4;
            case 2802:
              IPC::handleMessage<Messages::WebPage::StartInteractionWithElementContextOrPosition,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::optional<WebCore::ElementContext> &&,WebCore::IntPoint &&)>(a3, this);
              goto LABEL_4;
            case 2799:
              *v133 = IPC::Decoder::decode<std::tuple<WebCore::FloatPoint>>(a3);
              v133[8] = v27;
              if (v27)
              {
                WebKit::WebPage::startAutoscrollAtPosition(this, v133);
              }

              goto LABEL_4;
          }
        }
      }

      else
      {
        switch(v9)
        {
          case 2791:
            v40 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
            if (v41)
            {
              v42 = v40;
              v43 = IPC::Decoder::decode<unsigned long long>(a3);
              if (v44)
              {
                v45 = *&v43;
                v46 = IPC::Decoder::decode<unsigned long long>(a3);
                if (v47)
                {
                  *v133 = v42;
                  *&v133[8] = v45;
                  *&v133[16] = v46;
                  v134 = 1;
                  WebKit::WebPage::setViewportConfigurationViewLayoutSize(this, v133, v45, *&v46);
                  goto LABEL_4;
                }
              }
            }

            else
            {
              IPC::Decoder::markInvalid(a3);
            }

LABEL_1036:
            IPC::Decoder::markInvalid(a3);
            goto LABEL_4;
          case 2785:
            IPC::handleMessage<Messages::WebPage::SetUnderlayColor,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::Color const&)>(a3, this);
            goto LABEL_4;
          case 2784:
            IPC::handleMessage<Messages::WebPage::SetUnderPageBackgroundColorOverride,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::Color &&)>(a3, this);
            goto LABEL_4;
        }
      }
    }

    else if (*(a3 + 25) > 0xAD2u)
    {
      switch(v9)
      {
        case 2771:
          v51 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
          if ((v51 & 0x100) != 0)
          {
            *(this + 1287) = v51 & 1;
          }

          goto LABEL_4;
        case 2778:
          if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
          {
            WebKit::WebPage::setShouldSuppressHDR(this);
          }

          goto LABEL_4;
        case 2776:
          v26 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
          if ((v26 & 0x100) != 0)
          {
            WebKit::WebPage::setShouldRevealCurrentSelectionAfterInsertion(this, v26 & 1);
          }

          goto LABEL_4;
      }
    }

    else if (*(a3 + 25) > 0xACCu)
    {
      if (v9 == 2770)
      {
        IPC::handleMessage<Messages::WebPage::SetSceneIdentifier,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String &&)>(a3, this);
        goto LABEL_4;
      }

      if (v9 == 2765)
      {
        IPC::handleMessage<Messages::WebPage::SetOverrideViewportArguments,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::optional<WebCore::ViewportArguments> const&)>(a3);
        goto LABEL_4;
      }
    }

    else
    {
      if (v9 == 2763)
      {
        IPC::handleMessage<Messages::WebPage::SetObscuredContentInsetsFenced,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::RectEdges<float> const&,WTF::MachSendRight const&)>(a3, this);
        goto LABEL_4;
      }

      if (v9 == 2760)
      {
        *(this + 1823) = 1;
        goto LABEL_4;
      }
    }
  }

  else if (*(a3 + 25) <= 0xA12u)
  {
    if (*(a3 + 25) <= 0x9C2u)
    {
      switch(*(a3 + 25))
      {
        case 0x97E:
          IPC::handleMessage<Messages::WebPage::AddConsoleMessage,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,JSC::MessageSource,JSC::MessageLevel,WTF::String const&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>)>(a3, this);
          goto LABEL_4;
        case 0x97F:
        case 0x980:
        case 0x981:
        case 0x982:
        case 0x98D:
        case 0x98E:
        case 0x991:
        case 0x995:
        case 0x997:
        case 0x998:
        case 0x999:
        case 0x99A:
        case 0x99B:
        case 0x99C:
        case 0x99D:
        case 0x99E:
        case 0x99F:
        case 0x9A2:
        case 0x9A3:
        case 0x9A5:
        case 0x9A6:
        case 0x9A7:
        case 0x9A8:
        case 0x9A9:
        case 0x9AC:
        case 0x9AD:
        case 0x9AE:
        case 0x9AF:
        case 0x9B0:
        case 0x9B1:
          goto LABEL_35;
        case 0x983:
          WebKit::WebPage::applicationDidBecomeActive(this);
          goto LABEL_4;
        case 0x984:
          v79 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
          if ((v79 & 0x100) != 0)
          {
            WebKit::WebPage::applicationDidEnterBackground(this, v79 & 1);
          }

          goto LABEL_4;
        case 0x985:
          if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
          {
            WebKit::WebPage::applicationDidEnterBackgroundForMedia(this);
          }

          goto LABEL_4;
        case 0x986:
          WebKit::WebPage::applicationDidFinishSnapshottingAfterEnteringBackground(this);
          goto LABEL_4;
        case 0x987:
          v80 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
          if ((v80 & 0x100) != 0)
          {
            WebKit::WebPage::applicationWillEnterForeground(this, v80 & 1);
          }

          goto LABEL_4;
        case 0x988:
          if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
          {
            WebKit::WebPage::applicationWillEnterForegroundForMedia(this);
          }

          goto LABEL_4;
        case 0x989:
          WebKit::WebPage::applicationWillResignActive(this);
          goto LABEL_4;
        case 0x98A:
          IPC::handleMessageAsync<Messages::WebPage::ApplyAutocorrection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(WTF::String const&)> &&)>(a2, a3, this);
          goto LABEL_4;
        case 0x98B:
          IPC::handleMessage<Messages::WebPage::AttemptSyntheticClick,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>)>(a3, this);
          goto LABEL_4;
        case 0x98C:
          IPC::handleMessage<Messages::WebPage::AutofillLoginCredentials,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::String const&)>(a3, this);
          goto LABEL_4;
        case 0x98F:
          IPC::handleMessageAsync<Messages::WebPage::BeginSelectionInDirection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::SelectionDirection,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
          goto LABEL_4;
        case 0x990:
          WebKit::WebPage::blurFocusedElement(this);
          goto LABEL_4;
        case 0x992:
          WebKit::WebPage::cancelAutoscroll(this);
          goto LABEL_4;
        case 0x993:
          v81 = IPC::Decoder::decode<std::tuple<unsigned int,WebCore::IntPoint>>(a3);
          *v133 = v81;
          *&v133[8] = v82;
          v133[12] = BYTE4(v82);
          if ((v82 & 0x100000000) != 0)
          {
            WebKit::WebPage::cancelPointer(this, v81, &v133[4]);
          }

          goto LABEL_4;
        case 0x994:
          WebKit::WebPage::cancelPotentialTap(this);
          goto LABEL_4;
        case 0x996:
          WebKit::WebPage::centerSelectionInVisibleArea(this);
          goto LABEL_4;
        case 0x9A0:
          IPC::Decoder::decode<std::tuple<WebCore::FloatPoint>>(a3);
          if (v78)
          {
            WebKit::WebPage::clearSelectionAfterTappingSelectionHighlightIfNeeded(this);
          }

          goto LABEL_4;
        case 0x9A1:
          IPC::handleMessageAsync<Messages::WebPage::ClearServiceWorkerEntitlementOverride,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
          goto LABEL_4;
        case 0x9A4:
          IPC::handleMessageAsync<Messages::WebPage::CommitPotentialTap,IPC::Connection,WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,unsigned int)>(a2, a3, this);
          goto LABEL_4;
        case 0x9AA:
          IPC::handleMessage<Messages::WebPage::ConnectInspector,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,Inspector::FrontendChannel::ConnectionType)>(a3, this);
          goto LABEL_4;
        case 0x9AB:
          IPC::handleMessage<Messages::WebPage::ContentSizeCategoryDidChange,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(a3, this);
          goto LABEL_4;
        case 0x9B2:
          IPC::handleMessage<Messages::WebPage::CreateRemoteSubframe,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::Ref<WebCore::FrameTreeSyncData,WTF::RawPtrTraits<WebCore::FrameTreeSyncData>,WTF::DefaultRefDerefTraits<WebCore::FrameTreeSyncData>> &&)>(a3, this);
          goto LABEL_4;
        default:
          if (v9 == 2493)
          {
            v111 = IPC::Decoder::decode<std::tuple<WebCore::FloatPoint>>(a3);
            if (v112)
            {
              WebKit::WebPage::didBeginTouchPoint(this, v112, *&v111, *(&v111 + 1));
            }

            goto LABEL_4;
          }

          if (v9 != 2498)
          {
            goto LABEL_35;
          }

          IPC::handleMessage<Messages::WebPage::DidChooseColor,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::Color const&)>(a3, this);
          break;
      }

      goto LABEL_4;
    }

    if (*(a3 + 25) > 0x9EAu)
    {
      if (*(a3 + 25) <= 0x9F3u)
      {
        if (*(a3 + 25) > 0x9F0u)
        {
          if (v9 == 2545)
          {
            IPC::handleMessageAsync<Messages::WebPage::ExecuteEditCommandWithCallback,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
            goto LABEL_4;
          }

          if (v9 == 2547)
          {
            IPC::handleMessageAsync<Messages::WebPage::ExtendSelection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::TextGranularity,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
            goto LABEL_4;
          }
        }

        else
        {
          if (v9 == 2543)
          {
            IPC::handleMessage<Messages::WebPage::EnqueueSecurityPolicyViolationEvent,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::SecurityPolicyViolationEventInit &&)>(a3, this);
            goto LABEL_4;
          }

          if (v9 == 2539)
          {
            IPC::handleMessage<Messages::WebPage::DynamicViewportSizeUpdate,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::DynamicViewportSizeUpdate const&)>(a3, this);
            goto LABEL_4;
          }
        }
      }

      else if (*(a3 + 25) <= 0x9FEu)
      {
        if (v9 == 2548)
        {
          IPC::handleMessageAsync<Messages::WebPage::ExtendSelectionForReplacement,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
          goto LABEL_4;
        }

        if (v9 == 2558)
        {
          IPC::handleMessageAsync<Messages::WebPage::FocusNextFocusedElement,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
          goto LABEL_4;
        }
      }

      else
      {
        switch(v9)
        {
          case 2564:
            v87 = IPC::Decoder::decode<std::tuple<WebKit::SyntheticEditingCommandType>>(a3);
            if (v87 >= 0x100u)
            {
              WebKit::WebPage::generateSyntheticEditingCommand(this, v87);
            }

            goto LABEL_4;
          case 2559:
            IPC::handleMessageAsync<Messages::WebPage::FocusTextInputContextAndPlaceCaret,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ElementContext const&,WebCore::IntPoint const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
            goto LABEL_4;
          case 2571:
            IPC::handleMessageAsync<Messages::WebPage::GetFrameTree,IPC::Connection,WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<std::optional<WebKit::FrameTreeNodeData>> ()(void)>(a2, a3, this);
            goto LABEL_4;
        }
      }
    }

    else if (*(a3 + 25) <= 0x9CFu)
    {
      if (*(a3 + 25) <= 0x9C7u)
      {
        if (v9 == 2502)
        {
          WebKit::WebPage::didCloseSuggestions(this, v6);
          goto LABEL_4;
        }

        if (v9 == 2499)
        {
          IPC::handleMessage<Messages::WebPage::DidChooseDate,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(a3, this);
          goto LABEL_4;
        }
      }

      else
      {
        switch(v9)
        {
          case 2504:
            WebKit::WebPage::didEndColorPicker(this);
            goto LABEL_4;
          case 2506:
            WebKit::WebPage::didEndDateTimePicker(this, v6);
            goto LABEL_4;
          case 2510:
            v49 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a3);
            if (v50)
            {
              WebKit::WebPage::didFinishLoadInAnotherProcess(this, v49);
            }

            goto LABEL_4;
        }
      }
    }

    else if (*(a3 + 25) <= 0x9D2u)
    {
      if (v9 == 2514)
      {
        WebKit::WebPage::didRecognizeLongPress(this);
        goto LABEL_4;
      }

      if (v9 == 2512)
      {
        WebKit::WebPage::didInsertFinalDictationResult(this);
        goto LABEL_4;
      }
    }

    else
    {
      switch(v9)
      {
        case 2515:
          WebKit::WebPage::didReleaseAllTouchPoints(this);
          goto LABEL_4;
        case 2526:
          IPC::handleMessage<Messages::WebPage::DisconnectInspector,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(a3, this);
          goto LABEL_4;
        case 2522:
          IPC::handleMessage<Messages::WebPage::DidSelectDataListOption,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(a3, this);
          goto LABEL_4;
      }
    }
  }

  else if (*(a3 + 25) <= 0xA7Bu)
  {
    if (*(a3 + 25) <= 0xA57u)
    {
      switch(*(a3 + 25))
      {
        case 0xA13:
          IPC::handleMessageAsync<Messages::WebPage::GetRectsAtSelectionOffsetWithText,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(int,WTF::String const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)>(a2, a3, this);
          goto LABEL_4;
        case 0xA14:
          IPC::handleMessageAsync<Messages::WebPage::GetRectsForGranularityWithSelectionOffset,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::TextGranularity,int,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)>(a2, a3, this);
          goto LABEL_4;
        case 0xA1A:
          IPC::handleMessageAsync<Messages::WebPage::GetSelectionContext,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::String const&,WTF::String const&,WTF::String const&)> &&)>(a2, a3, this);
          goto LABEL_4;
        case 0xA22:
          IPC::handleMessage<Messages::WebPage::GoToBackForwardItem,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::GoToBackForwardItemParameters &&)>(a3, this);
          goto LABEL_4;
        case 0xA23:
          IPC::handleMessage<Messages::WebPage::GoToBackForwardItemWaitingForProcessLaunch,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::GoToBackForwardItemParameters &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WebKit::GoToBackForwardItemParameters &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(a3);
          goto LABEL_4;
        case 0xA25:
          WebKit::WebPage::handleAutocorrectionContextRequest(this);
          goto LABEL_4;
        case 0xA26:
          IPC::handleMessage<Messages::WebPage::HandleDoubleTapForDoubleClickAtPoint,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WTF::OptionSet<WebKit::WebEventModifier>,WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>)>(a3, this);
          goto LABEL_4;
        case 0xA27:
          IPC::handleMessage<Messages::WebPage::HandleTwoFingerTapAtPoint,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WTF::OptionSet<WebKit::WebEventModifier>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(a3, this);
          goto LABEL_4;
        case 0xA29:
          v57 = IPC::Decoder::decode<std::tuple<WebKit::HardwareKeyboardState>>(a3);
          if (HIBYTE(v57))
          {
            WebKit::WebPage::hardwareKeyboardAvailabilityChanged(this, v57);
          }

          goto LABEL_4;
        case 0xA34:
          *v133 = IPC::Decoder::decode<std::tuple<WebCore::FloatPoint>>(a3);
          v133[8] = v85;
          if (v85)
          {
            WebKit::WebPage::inspectorNodeSearchEndedAtPosition(this, v133);
          }

          goto LABEL_4;
        case 0xA35:
          *v133 = IPC::Decoder::decode<std::tuple<WebCore::FloatPoint>>(a3);
          v133[8] = v84;
          if (v84)
          {
            WebKit::WebPage::inspectorNodeSearchMovedToPosition(this, v133);
          }

          goto LABEL_4;
        case 0xA37:
          IPC::handleMessage<Messages::WebPage::KeyEvent,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebKeyboardEvent const&)>(a3, this);
          goto LABEL_4;
        case 0xA3A:
          IPC::handleMessage<Messages::WebPage::LoadAlternateHTML,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::LoadParameters &&)>(a3, this);
          goto LABEL_4;
        case 0xA3C:
          IPC::handleMessage<Messages::WebPage::LoadData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::LoadParameters &&)>(a3, this);
          goto LABEL_4;
        case 0xA3D:
          IPC::handleMessage<Messages::WebPage::LoadDataInFrame,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::span<unsigned char const,18446744073709551615ul>,WTF::String &&,WTF::String &,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(a3, this);
          goto LABEL_4;
        case 0xA3E:
          IPC::handleMessage<Messages::WebPage::LoadDidCommitInAnotherProcess,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)>(a3, this);
          goto LABEL_4;
        case 0xA3F:
          IPC::handleMessage<Messages::WebPage::LoadRequest,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::LoadParameters &&)>(a3, this);
          goto LABEL_4;
        case 0xA40:
          IPC::handleMessage<Messages::WebPage::LoadRequestWaitingForProcessLaunch,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::LoadParameters &&,WTF::URL &&,WebKit::LoadParameters &&::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WebKit::LoadParameters &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL)>(a3);
          goto LABEL_4;
        case 0xA41:
          IPC::handleMessage<Messages::WebPage::LoadSimulatedRequestAndResponse,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::LoadParameters &&,WebCore::ResourceResponse &&)>(a3, this);
          goto LABEL_4;
        case 0xA42:
          IPC::handleMessage<Messages::WebPage::LoadURLInFrame,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::URL &&,WTF::String const&,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(a3, this);
          goto LABEL_4;
        case 0xA47:
          IPC::handleMessage<Messages::WebPage::MouseEvent,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebMouseEvent const&,std::optional<WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> &&)>(a3, this);
          goto LABEL_4;
        case 0xA48:
          IPC::handleMessageAsync<Messages::WebPage::MoveSelectionAtBoundaryWithDirection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::TextGranularity,WebCore::SelectionDirection,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
          goto LABEL_4;
        case 0xA49:
          IPC::handleMessageAsync<Messages::WebPage::MoveSelectionByOffset,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(int,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
          goto LABEL_4;
        case 0xA4C:
          IPC::handleMessage<Messages::WebPage::NotifyReportObservers,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::Report,WTF::RawPtrTraits<WebCore::Report>,WTF::DefaultRefDerefTraits<WebCore::Report>> &&)>(a3, this);
          goto LABEL_4;
        case 0xA50:
          IPC::handleMessageAsync<Messages::WebPage::PerformActionOnElement,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(unsigned int,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
          goto LABEL_4;
        case 0xA51:
          IPC::handleMessage<Messages::WebPage::PerformActionOnElements,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(unsigned int,WTF::Vector<WebCore::ElementContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(a3, this);
          goto LABEL_4;
        default:
          goto LABEL_35;
      }
    }

    if (*(a3 + 25) > 0xA73u)
    {
      if (*(a3 + 25) <= 0xA76u)
      {
        if (v9 == 2678)
        {
          IPC::handleMessageAsync<Messages::WebPage::RequestEvasionRectsAboveSelection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)>(a2, a3, this);
          goto LABEL_4;
        }

        if (v9 == 2676)
        {
          IPC::handleMessageAsync<Messages::WebPage::RequestDocumentEditingContext,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::DocumentEditingContextRequest &&,WTF::CompletionHandler<void ()(WebKit::DocumentEditingContext &&)> &&)>(a2, a3, this);
          goto LABEL_4;
        }
      }

      else
      {
        switch(v9)
        {
          case 2683:
            IPC::handleMessage<Messages::WebPage::RequestPositionInformation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::InteractionInformationRequest const&)>(a3, this);
            goto LABEL_4;
          case 2679:
            IPC::handleMessageAsync<Messages::WebPage::RequestFocusedElementInformation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(std::optional<WebKit::FocusedElementInformation> const&)> &&)>(a2, a3, this);
            goto LABEL_4;
          case 2681:
            IPC::handleMessageAsync<Messages::WebPage::RequestImageBitmap,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ElementContext const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&,WTF::String const&)> &&)>(a2, a3, this);
            goto LABEL_4;
        }
      }
    }

    else if (*(a3 + 25) <= 0xA68u)
    {
      if (v9 == 2648)
      {
        IPC::handleMessageAsync<Messages::WebPage::PotentialTapAtPosition,IPC::Connection,WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<std::optional<WebCore::RemoteUserInputEventData>> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::ObjectIdentifierGeneric<WebKit::TapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,BOOL)>(a2, a3, this);
        goto LABEL_4;
      }

      if (v9 == 2651)
      {
        IPC::handleMessageAsync<Messages::WebPage::PrepareSelectionForContextMenuWithLocationInView,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint,WTF::CompletionHandler<void ()(BOOL,WebKit::RevealItem const&)> &&)>(a2, a3, this);
        goto LABEL_4;
      }
    }

    else
    {
      switch(v9)
      {
        case 2665:
          IPC::handleMessage<Messages::WebPage::ReplaceDictatedText,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::String const&)>(a3, this);
          goto LABEL_4;
        case 2669:
          IPC::handleMessage<Messages::WebPage::ReplaceSelectedText,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::String const&)>(a3, this);
          goto LABEL_4;
        case 2675:
          IPC::handleMessageAsync<Messages::WebPage::RequestAutocorrectionData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::CompletionHandler<void ()(WebKit::WebAutocorrectionData)> &&)>(a2, a3, this);
          goto LABEL_4;
      }
    }
  }

  else
  {
    switch(*(a3 + 25))
    {
      case 0xA8F:
        IPC::handleMessageAsync<Messages::WebPage::SelectPositionAtBoundaryWithDirection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WebCore::TextGranularity,WebCore::SelectionDirection,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        goto LABEL_4;
      case 0xA90:
        IPC::handleMessageAsync<Messages::WebPage::SelectPositionAtPoint,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        goto LABEL_4;
      case 0xA91:
        IPC::handleMessageAsync<Messages::WebPage::SelectTextWithGranularityAtPoint,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WebCore::TextGranularity,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        goto LABEL_4;
      case 0xA92:
        IPC::handleMessageAsync<Messages::WebPage::SelectWithGesture,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,BOOL,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)> &&)>(a2, a3, this);
        goto LABEL_4;
      case 0xA93:
        IPC::handleMessageAsync<Messages::WebPage::SelectWithTwoTouches,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::CompletionHandler<void ()(WebCore::IntPoint const&,WebKit::GestureType,WebKit::GestureRecognizerState,WTF::OptionSet<WebKit::SelectionFlags>)> &&)>(a2, a3, this);
        goto LABEL_4;
      case 0xA94:
        WebKit::WebPage::selectWordBackward(this);
        goto LABEL_4;
      case 0xA95:
        IPC::handleMessage<Messages::WebPage::SendMessageToTargetBackend,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::String const&)>(a3, this);
        goto LABEL_4;
      case 0xA96:
        IPC::handleMessage<Messages::WebPage::SendReportToEndpoints,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::URL &&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const,IPC::FormDataReference &&,WebCore::ViolationReportType)>(a3, this);
        goto LABEL_4;
      case 0xA97:
        v11 = IPC::Decoder::decode<WTF::OptionSet<WebCore::ActivityState>>(a3);
        if ((v11 & 0x10000) == 0)
        {
          goto LABEL_1036;
        }

        v12 = *(a3 + 1);
        v13 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
        v14 = v13 - *a3;
        v15 = v12 >= v14;
        v16 = v12 - v14;
        if (v15 && v16 > 7)
        {
          *(a3 + 2) = v13 + 1;
          if (v13)
          {
            v17 = v11;
            v18 = *v13;
            v19 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if ((v20 & 1) == 0)
            {
              goto LABEL_4;
            }

            v21 = v19;
            while (1)
            {
              v22 = *a2;
              if ((*a2 & 1) == 0)
              {
                break;
              }

              v127 = *a2;
              atomic_compare_exchange_strong_explicit(a2, &v127, v22 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v127 == v22)
              {
                goto LABEL_18;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_18:
            v23 = WTF::fastMalloc(0x18);
            *v23 = &unk_1F10F4BB8;
            v23[1] = v21;
            v23[2] = a2;
            *v133 = v23;
            WebKit::WebPage::setActivityState(this, v17, v18, v133);
            v24 = *v133;
            *v133 = 0;
            if (!v24)
            {
              goto LABEL_20;
            }

            goto LABEL_19;
          }
        }

        else
        {
          IPC::Decoder::markInvalid(a3);
        }

        IPC::Decoder::markInvalid(a3);
        goto LABEL_1036;
      case 0xA98:
      case 0xA9A:
      case 0xA9B:
      case 0xA9C:
      case 0xA9D:
      case 0xA9F:
      case 0xAA0:
      case 0xAA1:
      case 0xAA2:
      case 0xAA3:
      case 0xAA4:
      case 0xAA5:
      case 0xAA6:
      case 0xAA8:
      case 0xAA9:
      case 0xAAA:
      case 0xAAC:
      case 0xAAD:
      case 0xAAE:
      case 0xAAF:
      case 0xAB3:
      case 0xAB4:
      case 0xAB5:
      case 0xAB9:
      case 0xABA:
      case 0xABB:
      case 0xABC:
        break;
      case 0xA99:
        if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
        {
          WebKit::WebPage::setAllowsMediaDocumentInlinePlayback(this);
        }

        goto LABEL_4;
      case 0xA9E:
        IPC::handleMessage<Messages::WebPage::SetBackgroundColor,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::optional<WebCore::Color> const&)>(a3, this);
        goto LABEL_4;
      case 0xAA7:
        v83 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((v83 & 0x100) != 0)
        {
          WebKit::WebPage::setControlledByAutomation(this, v83 & 1);
        }

        goto LABEL_4;
      case 0xAAB:
        v71 = IPC::Decoder::decode<std::tuple<int>>(a3);
        if ((v71 & 0x100000000) != 0)
        {
          WebKit::WebPage::setDeviceOrientation(this, v71);
        }

        goto LABEL_4;
      case 0xAB0:
        IPC::handleMessage<Messages::WebPage::SetFocusedElementSelectedIndex,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ElementContext const&,unsigned int,BOOL)>(a3, this);
        goto LABEL_4;
      case 0xAB1:
        IPC::handleMessage<Messages::WebPage::SetFocusedElementValue,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ElementContext const&,WTF::String const&)>(a3, this);
        goto LABEL_4;
      case 0xAB2:
        v64 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((v64 & 0x100) != 0)
        {
          WebKit::WebPage::setForceAlwaysUserScalable(this, v64 & 1);
        }

        goto LABEL_4;
      case 0xAB6:
        if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
        {
          WebKit::WebPage::setIndicating(this);
        }

        goto LABEL_4;
      case 0xAB7:
        IPC::handleMessageAsync<Messages::WebPage::SetInitialFocus,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(BOOL,BOOL,std::optional<WebKit::WebKeyboardEvent> const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        goto LABEL_4;
      case 0xAB8:
        IPC::handleMessage<Messages::WebPage::SetInsertionPointColor,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::Color)>(a3, this);
        goto LABEL_4;
      case 0xABD:
        IPC::handleMessage<Messages::WebPage::SetLastKnownMousePosition,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntPoint,WebCore::IntPoint)>(a3, this);
        goto LABEL_4;
      default:
        if (v9 == 2684)
        {
          IPC::handleMessageAsync<Messages::WebPage::RequestRVItemInCurrentSelectedRange,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WebKit::RevealItem const&)> &&)>(a2, a3, this);
          goto LABEL_4;
        }

        if (v9 == 2697)
        {
          if ((IPC::Decoder::decode<std::tuple<WebCore::ScrollDirection,WebCore::ScrollGranularity>>(a3) & 0xFFFFFF) >= 0x10000)
          {
            WebKit::WebPage::scrollBy(this);
          }

          goto LABEL_4;
        }

        break;
    }
  }

LABEL_35:
  if (*(a3 + 25) <= 0x9D4u)
  {
    if (*(a3 + 25) <= 0x9B8u)
    {
      if (*(a3 + 25) <= 0x9A1u)
      {
        if (*(a3 + 25) > 0x998u)
        {
          if (v9 == 2463)
          {
            WebKit::WebPage::clearSelection(this);
            goto LABEL_4;
          }

          if (v9 == 2457)
          {
            WebKit::WebPage::changeListType(this);
            goto LABEL_4;
          }
        }

        else
        {
          switch(v9)
          {
            case 2455:
              IPC::handleMessage<Messages::WebPage::ChangeFont,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::FontChanges &&)>(a3, this);
              goto LABEL_4;
            case 2456:
              IPC::handleMessage<Messages::WebPage::ChangeFontAttributes,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::FontAttributeChanges &&)>(a3, this);
              goto LABEL_4;
            case 2429:
              WebKit::WebPage::accessibilitySettingsDidChange(this);
              goto LABEL_4;
          }
        }
      }

      else if (v9 == 2466)
      {
        WebKit::WebPage::close(this);
        goto LABEL_4;
      }
    }

    else
    {
      switch(v9)
      {
        case 2516:
          IPC::ArgumentCoder<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(a3, v133);
          if (v133[16] & 1) != 0 || (IPC::Decoder::markInvalid(a3), (v133[16]))
          {
            WebKit::WebPage::didRemoveBackForwardItem(this, *v133, *&v133[8]);
          }

          goto LABEL_4;
        case 2490:
          IPC::handleMessageAsync<Messages::WebPage::DetectDataInAllFrames,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::OptionSet<WebCore::DataDetectorType>,WTF::CompletionHandler<void ()(WebKit::DataDetectionResult &&)> &&)>(a2, a3, this);
          goto LABEL_4;
        case 2489:
          WebKit::WebPage::decreaseListLevel(this);
          goto LABEL_4;
      }
    }

LABEL_117:
    if (*(a3 + 25) > 0xABFu)
    {
      if (*(a3 + 25) <= 0xACEu)
      {
        switch(v9)
        {
          case 2757:
            *v133 = IPC::Decoder::decode<std::tuple<WebCore::FloatSize>>(a3);
            v133[8] = v62;
            if (v62)
            {
              WebKit::WebPage::setMinimumUnobscuredSize(this, v133);
            }

            goto LABEL_4;
          case 2752:
            *v133 = IPC::Decoder::decode<std::tuple<WebCore::FloatSize>>(a3);
            v133[8] = v63;
            if (v63)
            {
              WebKit::WebPage::setMaximumUnobscuredSize(this, v133);
            }

            goto LABEL_4;
          case 2766:
            v100 = IPC::Decoder::decode<std::tuple<double>>(a3);
            if (v101)
            {
              WebKit::WebPage::setPageLength(this, *&v100);
            }

            goto LABEL_4;
        }
      }

      else if (*(a3 + 25) <= 0xAE2u)
      {
        if (*(a3 + 25) <= 0xADBu)
        {
          if (v9 == 2768)
          {
            if (IPC::Decoder::decode<std::tuple<WebCore::PaginationMode>>(a3) >= 0x100u)
            {
              WebKit::WebPage::setPaginationMode(this);
            }

            goto LABEL_4;
          }

          if (v9 == 2767)
          {
            if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
            {
              WebKit::WebPage::setPaginationBehavesLikeColumns(this);
            }

            goto LABEL_4;
          }
        }

        else
        {
          switch(v9)
          {
            case 2781:
              if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
              {
                WebKit::WebPage::setSuppressScrollbarAnimations(this);
              }

              goto LABEL_4;
            case 2783:
              v108 = IPC::Decoder::decode<std::tuple<int>>(a3);
              if ((v108 & 0x100000000) != 0)
              {
                WebKit::WebPage::setTextForActivePopupMenu(this, v108);
              }

              goto LABEL_4;
            case 2780:
              v58 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
              if ((v58 & 0x100) != 0)
              {
                WebKit::WebPage::setSmartInsertDeleteEnabled(this, v58 & 1);
              }

              goto LABEL_4;
          }
        }
      }

      else if (*(a3 + 25) > 0xB23u)
      {
        switch(v9)
        {
          case 2853:
            IPC::handleMessageAsync<Messages::WebPage::UserMediaAccessWasGranted,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::CaptureDevice &&,WebCore::CaptureDevice &,WebCore::MediaDeviceHashSalts &&,WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
            goto LABEL_4;
          case 2852:
            IPC::handleMessage<Messages::WebPage::UserMediaAccessWasDenied,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::UserMediaRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::String &&,WebCore::MediaConstraintType)>(a3, this);
            goto LABEL_4;
          case 2857:
            WebKit::WebPage::voiceActivityDetected(this);
            goto LABEL_4;
        }
      }

      else if (v9 == 2787)
      {
        v36 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
        if ((v36 & 0x100) != 0)
        {
          WebKit::WebPage::setUseFixedLayout(this, v36 & 1);
        }

        goto LABEL_4;
      }

      goto LABEL_136;
    }

    if (*(a3 + 25) > 0xA43u)
    {
      if (*(a3 + 25) <= 0xAA9u)
      {
        if (*(a3 + 25) <= 0xA6Bu)
        {
          if (*(a3 + 25) > 0xA66u)
          {
            switch(v9)
            {
              case 2666:
                IPC::handleMessage<Messages::WebPage::ReplaceFoundTextRangeWithString,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::WebFoundTextRange const&,WTF::String const&)>(a3, this);
                goto LABEL_4;
              case 2663:
                IPC::handleMessageAsync<Messages::WebPage::RemoveLayerForFindOverlay,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
                goto LABEL_4;
              case 2664:
                IPC::handleMessageAsync<Messages::WebPage::RemoveTextPlaceholder,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ElementContext const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
                goto LABEL_4;
            }
          }

          else if (*(a3 + 25) <= 0xA53u)
          {
            if (v9 == 2643)
            {
              IPC::handleMessageAsync<Messages::WebPage::PerformDragControllerAction,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::DragControllerAction,WebCore::DragData &&,WTF::CompletionHandler<void ()(std::optional<WebCore::DragOperation>,WebCore::DragHandlingMethod,BOOL,unsigned int,WebCore::IntRect,WebCore::DragHandlingMethod,std::optional<WebCore::RemoteUserInputEventData>)> &&)>(a2, a3, this);
              goto LABEL_4;
            }

            if (v9 == 2628)
            {
              IPC::handleMessage<Messages::WebPage::MediaKeySystemWasGranted,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&)>(a3, this);
              goto LABEL_4;
            }
          }

          else
          {
            if (v9 == 2647)
            {
              IPC::handleMessage<Messages::WebPage::PostInjectedBundleMessage,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WebKit::UserData const&)>(a3, this);
              goto LABEL_4;
            }

            if (v9 == 2644)
            {
              IPC::handleMessageAsync<Messages::WebPage::PerformDragOperation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::DragData &&,WebKit::SandboxExtensionHandle &&,WTF::Vector<WebCore::DragData &&,0ul,WebKit::SandboxExtensionHandle &::CrashOnOverflow,16ul,WebKit::SandboxExtensionHandle &::FastMalloc> &&,WebKit::SandboxExtensionHandle &::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
              goto LABEL_4;
            }
          }
        }

        else if (*(a3 + 25) > 0xA89u)
        {
          switch(v9)
          {
            case 2719:
              v99 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
              if ((v99 & 0x100) != 0)
              {
                WebKit::WebPage::setBackgroundExtendsBeyondPage(this, v99 & 1);
              }

              goto LABEL_4;
            case 2702:
              v104 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
              if ((v104 & 0x100000000) != 0)
              {
                WebKit::WebPage::selectFindMatch(this, v104);
              }

              goto LABEL_4;
            case 2698:
              IPC::handleMessage<Messages::WebPage::ScrollTextRangeToVisible,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::WebFoundTextRange const&)>(a3, this);
              goto LABEL_4;
          }
        }

        else if (*(a3 + 25) > 0xA74u)
        {
          if (v9 == 2685)
          {
            IPC::handleMessageAsync<Messages::WebPage::RequestRectForFoundTextRange,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::WebFoundTextRange const&,WTF::CompletionHandler<void ()(WebCore::FloatRect)> &&)>(a2, a3, this);
            goto LABEL_4;
          }

          if (v9 == 2677)
          {
            IPC::handleMessageAsync<Messages::WebPage::RequestDragStart,IPC::Connection,WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<WebKit::DragInitiationResult> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>)>(a2, a3, this);
            goto LABEL_4;
          }
        }

        else
        {
          if (v9 == 2668)
          {
            IPC::handleMessageAsync<Messages::WebPage::ReplaceMatches,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(unsigned long long)> &&)>(a2, a3, this);
            goto LABEL_4;
          }

          if (v9 == 2672)
          {
            IPC::handleMessageAsync<Messages::WebPage::RequestAdditionalItemsForDragSession,IPC::Connection,WebKit::WebPage,WebKit::WebPage,WTF::Awaitable<WebKit::DragInitiationResult> ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragSourceAction>)>(a2, a3, this);
            goto LABEL_4;
          }
        }
      }

      else if (*(a3 + 25) > 0xAADu)
      {
        switch(v9)
        {
          case 2735:
            *v133 = IPC::Decoder::decode<std::tuple<WebCore::IntSize>>(a3);
            v133[8] = v94;
            if (v94)
            {
              WebKit::WebPage::setFixedLayoutSize(this, v133);
            }

            goto LABEL_4;
          case 2734:
            if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
            {
              WebKit::WebPage::setEnableVerticalRubberBanding(this);
            }

            goto LABEL_4;
          case 2739:
            v65 = IPC::Decoder::decode<std::tuple<double>>(a3);
            if (v66)
            {
              WebKit::WebPage::setGapBetweenPages(this, *&v65);
            }

            goto LABEL_4;
        }
      }

      else
      {
        if (v9 == 2730)
        {
          *v133 = IPC::Decoder::decode<std::tuple<WebCore::FloatSize>>(a3);
          v133[8] = v37;
          if (v37)
          {
            WebKit::WebPage::setDefaultUnobscuredSize(this, v133);
          }

          goto LABEL_4;
        }

        if (v9 == 2733)
        {
          if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
          {
            WebKit::WebPage::setEnableHorizontalRubberBanding(this);
          }

          goto LABEL_4;
        }
      }
    }

    else
    {
      if (*(a3 + 25) <= 0x9E1u)
      {
        if (*(a3 + 25) <= 0x9C0u)
        {
          if (*(a3 + 25) <= 0x9AEu)
          {
            if (*(a3 + 25) > 0x999u)
            {
              if (v9 == 2460)
              {
                WebKit::WebPage::clearAllDecoratedFoundText(this, v6);
                goto LABEL_4;
              }

              if (v9 == 2458)
              {
                IPC::handleMessage<Messages::WebPage::ChangeSpellingToWord,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(a3, this);
                goto LABEL_4;
              }
            }

            else
            {
              switch(v9)
              {
                case 2432:
                  IPC::handleMessageAsync<Messages::WebPage::AddLayerForFindOverlay,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>)> &&)>(a2, a3, this);
                  goto LABEL_4;
                case 2434:
                  if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) != 0)
                  {
                    WTF::isIntegralOrPointerType(this);
                  }

                  goto LABEL_4;
                case 2453:
                  WebKit::WebPage::captureDevicesChanged(this);
                  goto LABEL_4;
              }
            }
          }

          else if (*(a3 + 25) <= 0x9BBu)
          {
            if (v9 == 2479)
            {
              IPC::handleMessageAsync<Messages::WebPage::CountStringMatches,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::OptionSet<WebKit::FindOptions>,unsigned int,WTF::CompletionHandler<void ()> &&)>(a2, a3, this);
              goto LABEL_4;
            }

            if (v9 == 2487)
            {
              IPC::handleMessage<Messages::WebPage::DecorateTextRangeWithStyle,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::WebFoundTextRange const&,WebKit::FindDecorationStyle)>(a3, this);
              goto LABEL_4;
            }
          }

          else
          {
            switch(v9)
            {
              case 2492:
                WebKit::WebPage::didBeginTextSearchOperation(this);
                goto LABEL_4;
              case 2496:
                WebKit::WebPage::didCancelForOpenPanel(this);
                goto LABEL_4;
              case 2495:
                v60 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
                if (v61)
                {
                  WebKit::WebPage::didCancelCheckingText(this, v60);
                }

                goto LABEL_4;
            }
          }

          goto LABEL_136;
        }

        if (*(a3 + 25) <= 0x9D0u)
        {
          if (*(a3 + 25) <= 0x9C4u)
          {
            if (v9 == 2497)
            {
              v107 = IPC::Decoder::decode<std::tuple<int>>(a3);
              if ((v107 & 0x100000000) != 0)
              {
                WebKit::WebPage::didChangeSelectedIndexForActivePopupMenu(this, v107);
              }

              goto LABEL_4;
            }

            if (v9 == 2500)
            {
              IPC::handleMessage<Messages::WebPage::DidChooseFilesForOpenPanel,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(a3, this);
              goto LABEL_4;
            }
          }

          else
          {
            switch(v9)
            {
              case 2503:
                WebKit::WebPage::didConcludeDrop(this);
                goto LABEL_4;
              case 2501:
                IPC::handleMessage<Messages::WebPage::DidChooseFilesForOpenPanelWithDisplayStringAndIcon,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::String const&,std::span<unsigned char const,18446744073709551615ul>)>(a3, this);
                goto LABEL_4;
              case 2509:
                IPC::handleMessage<Messages::WebPage::DidFinishCheckingText,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebKit::TextCheckerRequestType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(a3, this);
                goto LABEL_4;
            }
          }

          goto LABEL_136;
        }

        if (*(a3 + 25) <= 0x9D8u)
        {
          if (v9 == 2520)
          {
            IPC::Decoder::decode<std::tuple<double,WebCore::IntPoint>>(v133, a3);
            if (v133[16] == 1)
            {
              WebKit::WebPage::didScalePageRelativeToScrollPosition(this, *v133, &v133[8]);
            }
          }

          else
          {
            IPC::handleMessage<Messages::WebPage::DidReceiveGeolocationPermissionDecision,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebKit::GeolocationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)>(a3, this);
          }

          goto LABEL_4;
        }

        if (v9 == 2521)
        {
          v97 = IPC::Decoder::decode<std::tuple<double>>(a3);
          if (v98)
          {
            WebKit::WebPage::didScaleView(this, *&v97);
          }

          goto LABEL_4;
        }

        if (v9 == 2525)
        {
          WebKit::WebPage::didStartDrag(this);
          goto LABEL_4;
        }

        if (v9 != 2529)
        {
          goto LABEL_136;
        }

        WebKit::WebPage::dragCancelled(this);
LABEL_4:
        CFRelease(this[1]);
        return;
      }

      if (*(a3 + 25) <= 0xA2Cu)
      {
        if (*(a3 + 25) > 0x9F7u)
        {
          if (*(a3 + 25) <= 0xA0Bu)
          {
            if (v9 == 2552)
            {
              IPC::handleMessageAsync<Messages::WebPage::FindStringMatches,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::OptionSet<WebKit::FindOptions>,unsigned int,WTF::CompletionHandler<void ()(WTF::Vector<WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,int)> &&)>(a2, a3, this);
              goto LABEL_4;
            }

            if (v9 == 2553)
            {
              IPC::handleMessageAsync<Messages::WebPage::FindTextRangesForStringMatches,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::OptionSet<WebKit::FindOptions>,unsigned int,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebFoundTextRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(a2, a3, this);
              goto LABEL_4;
            }
          }

          else
          {
            if (v9 == 2572)
            {
              v103 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
              if ((v103 & 0x100000000) != 0)
              {
                WebKit::WebPage::getImageForFindMatch(this, v103);
              }

              goto LABEL_4;
            }

            if (v9 == 2603)
            {
              WebKit::WebPage::hideFindUI(this, v6);
              goto LABEL_4;
            }
          }
        }

        else
        {
          if (*(a3 + 25) > 0x9F5u)
          {
            if (v9 == 2550)
            {
              IPC::handleMessageAsync<Messages::WebPage::FindString,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::OptionSet<WebKit::FindOptions>,unsigned int,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned int,int,BOOL)> &&)>(a2, a3, this);
            }

            else
            {
              IPC::handleMessageAsync<Messages::WebPage::FindStringIncludingImages,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::OptionSet<WebKit::FindOptions>,unsigned int,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,unsigned int,int,BOOL)> &&)>(a2, a3, this);
            }

            goto LABEL_4;
          }

          switch(v9)
          {
            case 2549:
              IPC::handleMessageAsync<Messages::WebPage::FindRectsForStringMatches,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::OptionSet<WebKit::FindOptions>,unsigned int,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(a2, a3, this);
              goto LABEL_4;
            case 2530:
              IPC::handleMessageAsync<Messages::WebPage::DragEnded,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::IntPoint,WebCore::IntPoint,WTF::OptionSet<WebCore::DragOperation>,WTF::CompletionHandler<void ()(std::optional<WebCore::RemoteUserInputEventData>)> &&)>(a2, a3, this);
              goto LABEL_4;
            case 2546:
              IPC::handleMessage<Messages::WebPage::ExtendSandboxForFilesFromOpenPanel,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(a3, this);
              goto LABEL_4;
          }
        }
      }

      else if (*(a3 + 25) <= 0xA38u)
      {
        switch(v9)
        {
          case 2605:
            v105 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
            if ((v105 & 0x100000000) != 0)
            {
              WebKit::WebPage::indicateFindMatch(this, v105);
            }

            goto LABEL_4;
          case 2608:
            IPC::handleMessageAsync<Messages::WebPage::InsertDroppedImagePlaceholders,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::optional<WebCore::TextIndicatorData>)> &&)>(a2, a3, this);
            goto LABEL_4;
          case 2611:
            IPC::handleMessageAsync<Messages::WebPage::InsertTextPlaceholder,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntSize const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ElementContext> const&)> &&)>(a2, a3, this);
            goto LABEL_4;
        }
      }

      else if (v9 == 2617)
      {
        if (IPC::Decoder::decode<std::tuple<WTF::OptionSet<WebCore::LayoutMilestone>>>(a3) >= 0x10000)
        {
          WebKit::WebPage::listenForLayoutMilestones(this);
        }

        goto LABEL_4;
      }
    }

LABEL_136:
    if (*(a3 + 25) > 0xA6Au)
    {
      if (*(a3 + 25) > 0xAA4u)
      {
        if (*(a3 + 25) <= 0xAE7u)
        {
          if (*(a3 + 25) > 0xAC5u)
          {
            if (*(a3 + 25) <= 0xAD4u)
            {
              if (v9 == 2758)
              {
                IPC::handleMessageAsync<Messages::WebPage::SetMuted,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::OptionSet<WebCore::MediaProducerMutedState>,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
                goto LABEL_4;
              }

              if (v9 == 2772)
              {
                v77 = IPC::Decoder::decode<std::tuple<WebKit::CacheModel>>(a3);
                if (v77 >= 0x100u)
                {
                  WebKit::WebPage::setScrollPinningBehavior(this, v77);
                }

                goto LABEL_4;
              }
            }

            else
            {
              switch(v9)
              {
                case 2782:
                  IPC::handleMessage<Messages::WebPage::SetTextAsync,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(a3, this);
                  goto LABEL_4;
                case 2779:
                  *v133 = IPC::Decoder::decode<std::tuple<WebCore::IntSize>>(a3);
                  v133[8] = v118;
                  if (v118)
                  {
                    WebKit::WebPage::setSizeToContentAutoSizeMaximumSize(this, v133);
                  }

                  goto LABEL_4;
                case 2773:
                  v70 = IPC::Decoder::decode<std::tuple<std::optional<WebCore::ScrollbarOverlayStyle>>>(a3);
                  if (v70 >= 0x10000)
                  {
                    WebKit::WebPage::setScrollbarOverlayStyle(this, v70);
                  }

                  goto LABEL_4;
              }
            }
          }

          else
          {
            if (*(a3 + 25) > 0xAC2u)
            {
              if (v9 == 2755)
              {
                IPC::handleMessage<Messages::WebPage::SetMediaVolume,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(float)>(a3, this);
              }

              else
              {
                *v133 = IPC::Decoder::decode<std::tuple<WebCore::IntSize>>(a3);
                v133[8] = v76;
                if (v76)
                {
                  WebKit::WebPage::setMinimumSizeForAutoLayout(this, v133);
                }
              }

              goto LABEL_4;
            }

            switch(v9)
            {
              case 2753:
                v113 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
                if ((v113 & 0x100) != 0)
                {
                  WebKit::WebPage::setMayStartMediaWhenInWindow(this, v113 & 1);
                }

                goto LABEL_4;
              case 2751:
                v114 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
                if ((v114 & 0x100) != 0)
                {
                  WebKit::WebPage::setMainFrameIsScrollable(this, v114 & 1);
                }

                goto LABEL_4;
              case 2725:
                IPC::handleMessage<Messages::WebPage::SetCompositionAsync,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&,WebKit::EditingRange const&,WebKit::EditingRange const&)>(a3, this);
                goto LABEL_4;
            }
          }
        }

        else if (*(a3 + 25) <= 0xAFFu)
        {
          if (*(a3 + 25) > 0xAF9u)
          {
            if (v9 == 2815)
            {
              IPC::handleMessageAsync<Messages::WebPage::SuspendAllMediaPlayback,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
              goto LABEL_4;
            }

            if (v9 == 2810)
            {
              IPC::handleMessageAsync<Messages::WebPage::StopMediaCapture,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::MediaProducerMediaCaptureKind,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
              goto LABEL_4;
            }
          }

          else
          {
            switch(v9)
            {
              case 2793:
                IPC::handleMessage<Messages::WebPage::SetWritingSuggestion,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WebKit::EditingRange const&)>(a3, this);
                goto LABEL_4;
              case 2794:
                IPC::handleMessageAsync<Messages::WebPage::ShouldAllowRemoveBackground,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ElementContext const&,WTF::CompletionHandler<void ()(BOOL)> &&)const>(a2, a3, this);
                goto LABEL_4;
              case 2792:
                v68 = IPC::Decoder::decode<std::tuple<std::optional<WebCore::FloatSize>>>(a3);
                if ((v69 & 0x100000000) != 0)
                {
                  WebKit::WebPage::setViewportSizeForCSSViewportUnits(this, v68, v69);
                }

                goto LABEL_4;
            }
          }
        }

        else if (*(a3 + 25) <= 0xB18u)
        {
          if (v9 == 2817)
          {
            WebKit::WebPage::swipeAnimationDidStart(this);
            goto LABEL_4;
          }

          if (v9 == 2816)
          {
            WebKit::WebPage::swipeAnimationDidEnd(this);
            goto LABEL_4;
          }
        }

        else
        {
          switch(v9)
          {
            case 2841:
              IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntPoint>>(a3, v133);
              if (v133[16] == 1)
              {
                WebKit::WebPage::updateRemotePageAccessibilityOffset(this);
              }

              goto LABEL_4;
            case 2865:
              IPC::handleMessage<Messages::WebPage::WindowAndViewFramesChanged,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::ViewWindowCoordinates const&)>(a3, this);
              goto LABEL_4;
            case 2864:
              WebKit::WebPage::willStartUserTriggeredZooming(this);
              goto LABEL_4;
          }
        }
      }

      else if (*(a3 + 25) <= 0xA9Cu)
      {
        if (*(a3 + 25) <= 0xA80u)
        {
          switch(v9)
          {
            case 2682:
              IPC::handleMessageAsync<Messages::WebPage::RequestMediaPlaybackState,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WebKit::MediaPlaybackState)> &&)>(a2, a3, this);
              goto LABEL_4;
            case 2670:
              IPC::handleMessage<Messages::WebPage::ReplaceSelectionWithPasteboardData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::span<unsigned char const,18446744073709551615ul>)>(a3, this);
              goto LABEL_4;
            case 2667:
              IPC::handleMessage<Messages::WebPage::ReplaceImageForRemoveBackground,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ElementContext const&,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,std::span<unsigned char const,18446744073709551615ul>)>(a3, this);
              goto LABEL_4;
          }
        }

        else if (*(a3 + 25) > 0xA99u)
        {
          if (v9 == 2714)
          {
            v115 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
            if ((v115 & 0x100) != 0)
            {
              WebKit::WebPage::setAlwaysShowsHorizontalScroller(this, v115 & 1);
            }

            goto LABEL_4;
          }

          if (v9 == 2715)
          {
            v75 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
            if ((v75 & 0x100) != 0)
            {
              WebKit::WebPage::setAlwaysShowsVerticalScroller(this, v75 & 1);
            }

            goto LABEL_4;
          }
        }

        else
        {
          if (v9 == 2694)
          {
            IPC::handleMessageAsync<Messages::WebPage::ResumeAllMediaPlayback,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
            goto LABEL_4;
          }

          if (v9 == 2689)
          {
            IPC::handleMessageAsync<Messages::WebPage::ResolveAccessibilityHitTestForTesting,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::IntPoint const&,WTF::CompletionHandler<void ()(WTF::String)> &&)>(a2, a3, this);
            goto LABEL_4;
          }
        }
      }

      else
      {
        switch(v9)
        {
          case 2721:
            v73 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
            if ((v73 & 0x100) != 0)
            {
              *(this + 768) = v73 & 1;
            }

            goto LABEL_4;
          case 2722:
            v74 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
            if ((v74 & 0x100) != 0)
            {
              *(this + 769) = v74 & 1;
            }

            goto LABEL_4;
          case 2717:
            v48 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
            if ((v48 & 0x100) != 0)
            {
              WebKit::WebPage::setAutoSizingShouldExpandToViewHeight(this, v48 & 1);
            }

            goto LABEL_4;
        }
      }
    }

    else
    {
      if (*(a3 + 25) <= 0xA4Eu)
      {
        if (*(a3 + 25) > 0x9E7u)
        {
          if (*(a3 + 25) > 0xA0Fu)
          {
            if (*(a3 + 25) <= 0xA2Eu)
            {
              if (*(a3 + 25) > 0xA23u)
              {
                if (v9 == 2602)
                {
                  IPC::handleMessageAsync<Messages::WebPage::HasMarkedText,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
                  goto LABEL_4;
                }

                if (v9 == 2596)
                {
                  IPC::handleMessage<Messages::WebPage::HandleAlternativeTextUIResult,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(a3, this);
                  goto LABEL_4;
                }
              }

              else
              {
                if (v9 == 2576)
                {
                  IPC::handleMessageAsync<Messages::WebPage::GetMarkedRangeAsync,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WebKit::EditingRange const&)> &&)>(a2, a3, this);
                  goto LABEL_4;
                }

                if (v9 == 2584)
                {
                  IPC::handleMessageAsync<Messages::WebPage::GetSelectedRangeAsync,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WebKit::EditingRange const&,WebKit::EditingRange const&)> &&)>(a2, a3, this);
                  goto LABEL_4;
                }
              }
            }

            else
            {
              if (*(a3 + 25) <= 0xA31u)
              {
                if (v9 == 2609)
                {
                  IPC::handleMessage<Messages::WebPage::InsertMultiRepresentationHEIC,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::span<unsigned char const,18446744073709551615ul>,WTF::String const&)>(a3, this);
                }

                else
                {
                  IPC::handleMessage<Messages::WebPage::InsertDictatedTextAsync,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WebKit::EditingRange const&,WTF::Vector<WebCore::DictationAlternative,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebKit::InsertTextOptions &&)>(a3, this);
                }

                goto LABEL_4;
              }

              if (v9 == 2627)
              {
                IPC::handleMessage<Messages::WebPage::MediaKeySystemWasDenied,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::MediaKeySystemRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&)>(a3, this);
                goto LABEL_4;
              }

              if (v9 == 2610)
              {
                IPC::handleMessage<Messages::WebPage::InsertTextAsync,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WebKit::EditingRange const&,WebKit::InsertTextOptions &&)>(a3, this);
                goto LABEL_4;
              }
            }
          }

          else
          {
            if (*(a3 + 25) <= 0x9ECu)
            {
              if (*(a3 + 25) > 0x9E9u)
              {
                if (v9 == 2538)
                {
                  IPC::handleMessageAsync<Messages::WebPage::DrawToPDFiOS,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo const&,unsigned long long,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)>(a2, a3, this);
                }

                else
                {
                  WebKit::WebPage::enableAccessibility(this);
                }
              }

              else if (v9 == 2536)
              {
                IPC::handleMessageAsync<Messages::WebPage::DrawToImage,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)> &&)>(a2, a3, this);
              }

              else
              {
                IPC::handleMessageAsync<Messages::WebPage::DrawToPDF,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::FloatRect> const&,BOOL,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)>(a2, a3, this);
              }

              goto LABEL_4;
            }

            if (*(a3 + 25) <= 0x9F9u)
            {
              if (v9 == 2541)
              {
                IPC::handleMessageAsync<Messages::WebPage::EndPrinting,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
              }

              else
              {
                IPC::handleMessageAsync<Messages::WebPage::EndPrintingDuringDOMPrintOperation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
              }

              goto LABEL_4;
            }

            if (v9 == 2554)
            {
              IPC::handleMessageAsync<Messages::WebPage::FirstRectForCharacterRangeAsync,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::EditingRange const&,WTF::CompletionHandler<void ()(WebCore::IntRect const&,WebKit::EditingRange const&)> &&)>(a2, a3, this);
              goto LABEL_4;
            }

            if (v9 == 2568)
            {
              IPC::handleMessageAsync<Messages::WebPage::GetBytecodeProfile,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::String const&)> &&)>(a2, a3, this);
              goto LABEL_4;
            }
          }

          goto LABEL_286;
        }

        if (*(a3 + 25) > 0x9ADu)
        {
          if (*(a3 + 25) > 0x9E3u)
          {
            if (*(a3 + 25) > 0x9E5u)
            {
              if (v9 == 2534)
              {
                IPC::handleMessageAsync<Messages::WebPage::DrawRectToImageDuringDOMPrintOperation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo const&,WebCore::IntRect const&,WebCore::IntSize const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)> &&)>(a2, a3, this);
              }

              else
              {
                IPC::handleMessage<Messages::WebPage::DrawRemoteToPDF,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::FloatRect> const&,BOOL,WTF::ObjectIdentifierGeneric<WebCore::SnapshotIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)>(a3, this);
              }
            }

            else if (v9 == 2533)
            {
              IPC::handleMessageAsync<Messages::WebPage::DrawRectToImage,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo const&,WebCore::IntRect const&,WebCore::IntSize const&,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)> &&)>(a2, a3, this);
            }

            else
            {
              IPC::handleMessageAsync<Messages::WebPage::DrawPagesToPDFDuringDOMPrintOperation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo const&,unsigned int,unsigned int,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)>(a2, a3, this);
            }

            goto LABEL_4;
          }

          if (*(a3 + 25) > 0x9CAu)
          {
            if (v9 == 2531)
            {
              IPC::handleMessageAsync<Messages::WebPage::DrawPagesToPDF,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo const&,unsigned int,unsigned int,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)> &&)>(a2, a3, this);
              goto LABEL_4;
            }

            if (v9 == 2507)
            {
              WebKit::WebPage::didEndUserTriggeredZooming(this);
              goto LABEL_4;
            }
          }

          else
          {
            if (v9 == 2478)
            {
              WebKit::WebPage::copyLinkWithHighlight(this);
              goto LABEL_4;
            }

            if (v9 == 2491)
            {
              IPC::handleMessageAsync<Messages::WebPage::DictationAlternativesAtSelection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(a2, a3, this);
              goto LABEL_4;
            }
          }

          goto LABEL_286;
        }

        if (*(a3 + 25) > 0x99Cu)
        {
          if (*(a3 + 25) > 0x9A7u)
          {
            if (v9 == 2472)
            {
              IPC::handleMessageAsync<Messages::WebPage::ComputePagesForPrintingDuringDOMPrintOperation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,double,WebCore::RectEdges<float> const&)> &&)>(a2, a3, this);
              goto LABEL_4;
            }

            if (v9 == 2473)
            {
              WebKit::WebPage::confirmCompositionAsync(this);
              goto LABEL_4;
            }
          }

          else
          {
            if (v9 == 2471)
            {
              IPC::handleMessageAsync<Messages::WebPage::ComputePagesForPrinting,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::IntRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,double,WebCore::RectEdges<float> const&)> &&)>(a2, a3, this);
              goto LABEL_4;
            }

            if (v9 == 2461)
            {
              IPC::handleMessage<Messages::WebPage::ClearDictationAlternatives,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(a3, this);
              goto LABEL_4;
            }
          }

          goto LABEL_286;
        }

        if (*(a3 + 25) > 0x98Du)
        {
          if (v9 != 2446)
          {
            if (v9 == 2459)
            {
              IPC::handleMessageAsync<Messages::WebPage::CharacterIndexForPointAsync,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntPoint const&,WTF::CompletionHandler<void ()(unsigned long long)> &&)>(a2, a3, this);
              goto LABEL_4;
            }

            goto LABEL_286;
          }

          IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo>>(v133, a3);
          if (v135 != 1)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v9 != 2445)
          {
            if (v9 == 2431)
            {
              IPC::handleMessageAsync<Messages::WebPage::AddDictationAlternative,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
              goto LABEL_4;
            }

            goto LABEL_286;
          }

          IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::PrintInfo>>(v133, a3);
          if (v135 != 1)
          {
            goto LABEL_4;
          }
        }

        WebKit::WebPage::beginPrinting(this, *v133, &v133[8]);
        goto LABEL_4;
      }

      if (v9 == 2657)
      {
        IPC::handleMessage<Messages::WebPage::RegisterUIProcessAccessibilityTokens,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::span<unsigned char const,18446744073709551615ul>,std::span<unsigned char const,18446744073709551615ul>)>(a3, this);
        goto LABEL_4;
      }

      if (v9 == 2639)
      {
        IPC::handleMessageAsync<Messages::WebPage::PauseAllMediaPlayback,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
        goto LABEL_4;
      }
    }

LABEL_286:
    if (*(a3 + 25) > 0xA81u)
    {
      if (*(a3 + 25) > 0xAECu)
      {
        if (*(a3 + 25) <= 0xB21u)
        {
          switch(*(a3 + 25))
          {
            case 0xAED:
              IPC::handleMessage<Messages::WebPage::SimulateDeviceOrientationChange,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(double,double,double)>(a3, this);
              break;
            case 0xAEE:
              WebKit::WebPage::speakingErrorOccurred(this);
              break;
            case 0xAF0:
              WebKit::WebPage::startDeferringResizeEvents(this);
              break;
            case 0xAF1:
              WebKit::WebPage::startDeferringScrollEvents(this);
              break;
            case 0xAF5:
              IPC::handleMessageAsync<Messages::WebPage::StartTextManipulations,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WebCore::TextManipulationControllerExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this, v7);
              break;
            case 0xAF6:
              IPC::handleMessage<Messages::WebPage::StartVisualTranslation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::String const&)>(a3, this);
              break;
            case 0xB02:
              IPC::handleMessage<Messages::WebPage::SystemPreviewActionTriggered,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::SystemPreviewInfo,WTF::String const&)>(a3, this);
              break;
            case 0xB03:
              IPC::handleMessageAsync<Messages::WebPage::TakeSnapshot,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::IntRect,WebCore::IntSize,WTF::OptionSet<WebKit::SnapshotOption>,WTF::CompletionHandler<void ()(std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>> &&,WebCore::Headroom)> &&)>(a2, a3, this);
              break;
            case 0xB0C:
              IPC::handleMessage<Messages::WebPage::URLSchemeTaskDidComplete,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceError const&)>(a3, this);
              break;
            case 0xB0D:
              IPC::handleMessage<Messages::WebPage::URLSchemeTaskDidPerformRedirection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceResponse &&,WebCore::ResourceRequest &&)>(a3, this);
              break;
            case 0xB0E:
              IPC::handleMessage<Messages::WebPage::URLSchemeTaskDidReceiveData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&)>(a3, this);
              break;
            case 0xB0F:
              IPC::handleMessage<Messages::WebPage::URLSchemeTaskDidReceiveResponse,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceResponse &&)>(a3, this);
              break;
            case 0xB10:
              IPC::handleMessageAsync<Messages::WebPage::URLSchemeTaskWillPerformRedirection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::ResourceResponse &&,WebCore::ResourceRequest &&,WTF::CompletionHandler<void ()(WebCore::ResourceRequest)> &&)>(a2, a3, this);
              break;
            case 0xB12:
              IPC::handleMessageAsync<Messages::WebPage::UpdateAttachmentAttributes,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,std::optional<unsigned long long> &&,WTF::String const&,WTF::String const&,IPC::SharedBufferReference const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
              break;
            case 0xB13:
              IPC::handleMessage<Messages::WebPage::UpdateAttachmentIcon,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,std::optional<WebCore::ShareableBitmapHandle> &&,WebCore::FloatSize const&)>(a3, this);
              break;
            case 0xB14:
              IPC::handleMessage<Messages::WebPage::UpdateCORSDisablingPatterns,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(a3, this);
              break;
            case 0xB15:
              if (IPC::Decoder::decode<std::tuple<WTF::OptionSet<WebCore::PlatformEventModifier>>>(a3) >= 0x100u)
              {
                WebKit::WebPage::updateCurrentModifierState();
              }

              break;
            default:
              goto LABEL_617;
          }

          goto LABEL_4;
        }

        switch(v9)
        {
          case 2858:
            WebKit::WebPage::voicesDidChange(this);
            goto LABEL_4;
          case 2859:
            WebKit::WebPage::wasLoadedWithDataTransferFromPrevalentResource(this);
            goto LABEL_4;
          case 2850:
            IPC::handleMessageAsync<Messages::WebPage::UpdateWithTextRecognitionResult,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::TextRecognitionResult const&,WebCore::ElementContext const&,WebCore::FloatPoint const&,WTF::CompletionHandler<void ()(WebKit::TextRecognitionUpdateResult)> &&)>(a2, a3, this);
            goto LABEL_4;
        }
      }

      else if (*(a3 + 25) <= 0xAE1u)
      {
        if (*(a3 + 25) > 0xABBu)
        {
          if (*(a3 + 25) <= 0xACBu)
          {
            if (v9 == 2748)
            {
              v86 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
              if ((v86 & 0x100) != 0)
              {
                WebKit::WebPage::setIsWindowResizingEnabled(this, v86 & 1);
              }

              goto LABEL_4;
            }

            if (v9 == 2759)
            {
              WebKit::WebPage::setNeedsDOMWindowResizeEvent(this);
              goto LABEL_4;
            }
          }

          else
          {
            switch(v9)
            {
              case 2775:
                v116 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
                if ((v116 & 0x100) != 0)
                {
                  *(this + 1745) = v116 & 1;
                }

                goto LABEL_4;
              case 2777:
                v117 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
                if ((v117 & 0x100) != 0)
                {
                  WebKit::WebPage::setShouldScaleViewToFitDocument(this, v117 & 1);
                }

                goto LABEL_4;
              case 2764:
                IPC::handleMessage<Messages::WebPage::SetOverriddenMediaType,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(a3, this);
                goto LABEL_4;
            }
          }
        }

        else if (*(a3 + 25) <= 0xAA3u)
        {
          if (*(a3 + 25) > 0xA9Bu)
          {
            if (v9 == 2723)
            {
              IPC::handleMessage<Messages::WebPage::SetCanShowPlaceholder,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ElementContext const&,BOOL)>(a3, this);
              goto LABEL_4;
            }

            if (v9 == 2716)
            {
              v106 = IPC::Decoder::decode<std::tuple<WebCore::HighlightVisibility>>(a3);
              if (v106 >= 0x100u)
              {
                WebKit::WebPage::setAppHighlightsVisibility(this, v106 & 1);
              }

              goto LABEL_4;
            }
          }

          else
          {
            switch(v9)
            {
              case 2690:
                IPC::handleMessage<Messages::WebPage::RestoreAppHighlightsAndScrollToIndex,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WebCore::SharedMemoryHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,std::optional<unsigned int>)>(a3, this, v7);
                goto LABEL_4;
              case 2700:
                IPC::handleMessage<Messages::WebPage::ScrollToRect,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::FloatRect const&,WebCore::FloatPoint const&)>(a3, this);
                goto LABEL_4;
              case 2699:
                if ((IPC::Decoder::decode<std::tuple<WebCore::RectEdges<BOOL>,WebCore::ScrollIsAnimated>>(a3) >> 32) >> 8)
                {
                  WebKit::WebPage::scrollToEdge(this);
                }

                goto LABEL_4;
            }
          }
        }

        else
        {
          if (*(a3 + 25) > 0xAB9u)
          {
            if (v9 == 2746)
            {
              IPC::handleMessageAsync<Messages::WebPage::SetIsSuspended,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(BOOL,WTF::CompletionHandler<void ()(std::optional<BOOL>)> &&)>(a2, a3, this);
            }

            else
            {
              v102 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
              if ((v102 & 0x100) != 0)
              {
                WebKit::WebPage::setIsTakingSnapshotsForApplicationSuspension(this, v102 & 1);
              }
            }

            goto LABEL_4;
          }

          switch(v9)
          {
            case 2741:
              v122 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
              if ((v122 & 0x100) != 0)
              {
                WebKit::WebPage::setHasResourceLoadClient(this, v122 & 1);
              }

              goto LABEL_4;
            case 2724:
              v123 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
              if ((v123 & 0x100) != 0)
              {
                WebKit::WebPage::setCanUseCredentialStorage(this, v123 & 1);
              }

              goto LABEL_4;
            case 2726:
              IPC::handleMessage<Messages::WebPage::SetContentOffset,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::optional<int>,std::optional<int>,WebCore::ScrollIsAnimated)>(a3, this);
              goto LABEL_4;
          }
        }
      }

      else
      {
        switch(v9)
        {
          case 2786:
            v72 = IPC::Decoder::decode<std::tuple<BOOL,BOOL>>(a3);
            if ((v72 & 0x10000) != 0)
            {
              WebKit::WebPage::setUseColorAppearance(this, v72 & 1);
            }

            goto LABEL_4;
          case 2788:
            v59 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
            if ((v59 & 0x100) != 0)
            {
              WebKit::WebPage::setUseIconLoadingClient(this, v59 & 1);
            }

            goto LABEL_4;
          case 2790:
            v121 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
            if ((v121 & 0x100000000) != 0)
            {
              WebKit::WebPage::setUserInterfaceLayoutDirection(this, v121);
            }

            goto LABEL_4;
        }
      }
    }

    else if (*(a3 + 25) > 0xA37u)
    {
      if (*(a3 + 25) <= 0xA61u)
      {
        if (*(a3 + 25) > 0xA49u)
        {
          if (v9 == 2645)
          {
            IPC::handleMessageAsync<Messages::WebPage::PerformHitTestForMouseEvent,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::WebMouseEvent const&,WTF::CompletionHandler<void ()(WebKit::WebHitTestResultData &&,WTF::OptionSet<WebKit::WebEventModifier>,WebKit::UserData &&)> &&)>(a2, a3, this);
            goto LABEL_4;
          }

          if (v9 == 2634)
          {
            IPC::handleMessageAsync<Messages::WebPage::NavigateServiceWorkerClient,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ProcessQualified<WTF::UUID>,WTF::URL const&,WTF::CompletionHandler<void ()(WebCore::ScheduleLocationChangeResult)> &&)>(a2, a3, this);
            goto LABEL_4;
          }
        }

        else
        {
          switch(v9)
          {
            case 2616:
              IPC::handleMessageAsync<Messages::WebPage::LastNavigationWasAppInitiated,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
              goto LABEL_4;
            case 2630:
              IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v133, a3);
              if (v133[16] == 1)
              {
                WebKit::WebPage::modelInlinePreviewDidLoad(this, *v133, *&v133[8]);
              }

              goto LABEL_4;
            case 2629:
              IPC::handleMessage<Messages::WebPage::ModelInlinePreviewDidFailToLoad,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceError const&)>(a3, this);
              goto LABEL_4;
          }
        }
      }

      else
      {
        if (v9 == 2658)
        {
          IPC::handleMessage<Messages::WebPage::RegisterURLSchemeHandler,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebKit::WebURLSchemeHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)>(a3, this);
          goto LABEL_4;
        }

        if (v9 == 2671)
        {
          IPC::handleMessageAsync<Messages::WebPage::RequestActiveNowPlayingSessionInfo,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(BOOL,WebCore::NowPlayingInfo &&)> &&)>(a2, a3, this);
          goto LABEL_4;
        }
      }
    }

    else if (*(a3 + 25) > 0x9DFu)
    {
      if (*(a3 + 25) > 0xA0Du)
      {
        if (*(a3 + 25) <= 0xA1Cu)
        {
          switch(v9)
          {
            case 2583:
              IPC::handleMessageAsync<Messages::WebPage::GetSamplingProfilerOutput,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::String const&)> &&)>(a2, a3, this);
              goto LABEL_4;
            case 2574:
              IPC::handleMessageAsync<Messages::WebPage::GetLoadedSubresourceDomains,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)>(a2, a3, this);
              goto LABEL_4;
            case 2578:
              IPC::handleMessageAsync<Messages::WebPage::GetProcessDisplayName,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::String &&)> &&)>(a2, a3, this);
              goto LABEL_4;
          }
        }

        else if (*(a3 + 25) <= 0xA27u)
        {
          if (v9 == 2589)
          {
            IPC::handleMessageAsync<Messages::WebPage::GetTextFragmentMatch,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::String const&)> &&)>(a2, a3, this);
            goto LABEL_4;
          }

          if (v9 == 2590)
          {
            IPC::handleMessageAsync<Messages::WebPage::GetTextFragmentRanges,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::EditingRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&&)> &&)>(a2, a3, this);
            goto LABEL_4;
          }
        }

        else
        {
          if (v9 == 2606)
          {
            IPC::handleMessageAsync<Messages::WebPage::InsertAttachment,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,std::optional<unsigned long long> &&,WTF::String const&,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
            goto LABEL_4;
          }

          if (v9 == 2600)
          {
            IPC::handleMessageAsync<Messages::WebPage::HandleWheelEvent,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebWheelEvent const&,WTF::OptionSet<WebCore::WheelEventProcessingSteps> const&,std::optional<BOOL>,WTF::CompletionHandler<void ()(std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,std::optional<WebCore::WheelScrollGestureState>,BOOL,std::optional<WebCore::RemoteUserInputEventData>)> &&)>(a2, a3, this);
            goto LABEL_4;
          }
        }
      }

      else
      {
        if (*(a3 + 25) <= 0x9FCu)
        {
          if (v9 == 2556)
          {
            WebKit::WebPage::flushDeferredResizeEvents(this);
          }

          else if (v9 == 2555)
          {
            WebKit::WebPage::flushDeferredDidReceiveMouseEvent(this);
          }

          else
          {
            IPC::handleMessageAsync<Messages::WebPage::DispatchWheelEventWithoutScrolling,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebWheelEvent const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
          }

          goto LABEL_4;
        }

        switch(v9)
        {
          case 2557:
            WebKit::WebPage::flushDeferredScrollEvents(this);
            goto LABEL_4;
          case 2563:
            IPC::handleMessage<Messages::WebPage::GamepadActivity,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<std::optional<WebKit::GamepadData>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebCore::EventMakesGamepadsVisible)>(a3, this, v7.n128_f64[0], v8);
            goto LABEL_4;
          case 2567:
            IPC::handleMessageAsync<Messages::WebPage::GetApplicationManifest,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(std::optional<WebCore::ApplicationManifest> const&)> &&)>(a2, a3, this);
            goto LABEL_4;
        }
      }
    }

    else if (*(a3 + 25) <= 0x9AFu)
    {
      switch(v9)
      {
        case 2449:
          v119 = IPC::Decoder::decode<std::tuple<BOOL,unsigned int,unsigned int>>(a3);
          if ((v120 & 0x100000000) != 0)
          {
            WebKit::WebPage::boundaryEventOccurred(this, v119 & 1, HIDWORD(v119), v120);
          }

          goto LABEL_4;
        case 2462:
          WebKit::WebPage::clearLoadedSubresourceDomains(this, v6);
          goto LABEL_4;
        case 2469:
          IPC::handleMessageAsync<Messages::WebPage::CompleteTextManipulation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WebCore::TextManipulationItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WebCore::TextManipulationControllerManipulationResult const&)> &&)>(a2, a3, this, v7.n128_f64[0], v8);
          goto LABEL_4;
      }
    }

    else
    {
      switch(v9)
      {
        case 2511:
          IPC::handleMessageAsync<Messages::WebPage::DidGetLoadDecisionForIcon,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(BOOL,WebKit::CallbackID,WTF::CompletionHandler<void ()(IPC::SharedBufferReference const&)> &&)>(a2, a3, this);
          goto LABEL_4;
        case 2480:
          IPC::handleMessageAsync<Messages::WebPage::CreateAppHighlightInSelectedRange,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::CreateNewGroupForHighlight,WebCore::HighlightRequestOriginatedInApp,WTF::CompletionHandler<void ()(WebCore::AppHighlight &&)> &&)>(a2, a3, this);
          goto LABEL_4;
        case 2483:
          IPC::handleMessageAsync<Messages::WebPage::CreateTextFragmentDirectiveFromSelection,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::URL &&)> &&)>(a2, a3, this);
          goto LABEL_4;
      }
    }

LABEL_617:
    if (*(a3 + 25) <= 0xAC1u)
    {
      if (*(a3 + 25) <= 0xA71u)
      {
        if (*(a3 + 25) <= 0xA04u)
        {
          if (*(a3 + 25) > 0x9B7u)
          {
            if (*(a3 + 25) <= 0x9DEu)
            {
              if (*(a3 + 25) > 0x9C8u)
              {
                if (v9 == 2508)
                {
                  IPC::Decoder::decode<std::tuple<WebCore::WritingTools::Session,BOOL>>(v133, a3);
                  if (v136 == 1)
                  {
                    WebKit::WebPage::didEndWritingToolsSession(this);
                  }
                }

                else
                {
                  WebKit::WebPage::didEndContextMenuInteraction(this);
                }

                goto LABEL_4;
              }

              if (v9 == 2494)
              {
                IPC::handleMessage<Messages::WebPage::DidBeginWritingToolsSession,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::WritingTools::Session const&,WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)>(a3, this);
                goto LABEL_4;
              }

              if (v9 == 2488)
              {
                IPC::handleMessageAsync<Messages::WebPage::DecorateTextReplacementsForActiveWritingToolsSession,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::CharacterRange const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
                goto LABEL_4;
              }
            }

            else
            {
              switch(v9)
              {
                case 2527:
                  v125 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a3);
                  if (v126)
                  {
                    WebKit::WebPage::dispatchLoadEventToFrameOwnerElement(this, v125);
                  }

                  goto LABEL_4;
                case 2561:
                  v109 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a3);
                  if (v110)
                  {
                    WebKit::WebPage::frameWasFocusedInAnotherProcess(this, v109);
                  }

                  goto LABEL_4;
                case 2560:
                  IPC::handleMessage<Messages::WebPage::FrameNameWasChangedInAnotherProcess,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)>(a3, this);
                  goto LABEL_4;
              }
            }
          }

          else
          {
            if (*(a3 + 25) > 0x9B3u)
            {
              if (v9 == 2486)
              {
                IPC::handleMessageAsync<Messages::WebPage::DecodeImageData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,std::optional<WebCore::FloatSize>,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>> &&)> &&)>(a2, a3, this);
              }

              else if (v9 == 2485)
              {
                IPC::handleMessageAsync<Messages::WebPage::CreateTextIndicatorForTextAnimationID,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::UUID const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)> &&)>(a2, a3, this);
              }

              else
              {
                IPC::handleMessageAsync<Messages::WebPage::CreateTextIndicatorForElementWithID,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WebCore::TextIndicatorData> &&)> &&)>(a2, a3, this);
              }

              goto LABEL_4;
            }

            if (*(a3 + 25) > 0x9ABu)
            {
              switch(v9)
              {
                case 2481:
                  IPC::handleMessageAsync<Messages::WebPage::CreateBitmapsFromImageData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&,WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>> &&<WTF::Ref<WebCore::ShareableBitmap,WTF::RawPtrTraits<WTF::CompletionHandler>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler>>,0ul,WTF::Vector,16ul,WTF::CrashOnOverflow> &&)> &&)>(a2, a3, this);
                  goto LABEL_4;
                case 2477:
                  IPC::handleMessageAsync<Messages::WebPage::ContentsToRootViewRect,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WTF::CompletionHandler<void ()(WebCore::FloatRect)> &&)>(a2, a3, this);
                  goto LABEL_4;
                case 2476:
                  IPC::handleMessageAsync<Messages::WebPage::ContentsToRootViewPoint,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatPoint,WTF::CompletionHandler<void ()(WebCore::FloatPoint)> &&)>(a2, a3, this);
                  goto LABEL_4;
              }
            }

            else
            {
              switch(v9)
              {
                case 2470:
                  IPC::handleMessageAsync<Messages::WebPage::CompositionSessionDidReceiveTextWithReplacementRange,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::WritingTools::Session const&,WebCore::AttributedString const&,WebCore::CharacterRange const&,WebCore::WritingTools::Context const&,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
                  goto LABEL_4;
                case 2433:
                  IPC::handleMessageAsync<Messages::WebPage::AdjustVisibilityForTargetedElements,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WebCore::TargetedElementAdjustment,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this, v7);
                  goto LABEL_4;
                case 2467:
                  WebKit::WebPage::closeCurrentTypingCommand(this);
                  goto LABEL_4;
              }
            }
          }
        }

        else
        {
          if (*(a3 + 25) > 0xA55u)
          {
            if (*(a3 + 25) <= 0xA5Eu)
            {
              if (v9 == 2646)
              {
                IPC::handleMessageAsync<Messages::WebPage::PlayAllAnimations,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
              }

              else if (v9 == 2653)
              {
                IPC::handleMessageAsync<Messages::WebPage::ProofreadingSessionDidReceiveSuggestions,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::WritingTools::Session const&,WTF::Vector<WebCore::WritingTools::TextSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WebCore::CharacterRange const&,WebCore::WritingTools::Context const&,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
              }

              else
              {
                IPC::handleMessage<Messages::WebPage::ProofreadingSessionDidUpdateStateForSuggestion,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::WritingTools::Session const&,WebCore::WritingTools::TextSuggestionState,WebCore::WritingTools::TextSuggestion const&,WebCore::WritingTools::Context const&)>(a3, this);
              }
            }

            else if (*(a3 + 25) > 0xA70u)
            {
              IPC::handleMessageAsync<Messages::WebPage::RequestAllTargetableElements,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(float,WTF::CompletionHandler<void ()(WTF::Vector<WTF::Vector<WebCore::TargetedElementInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(a2, a3, this);
            }

            else if (v9 == 2661)
            {
              IPC::handleMessage<Messages::WebPage::RemotePostMessage,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::SecurityOriginData> &&,WebCore::MessageWithMessagePorts const&)>(a3, this);
            }

            else if (v9 == 2655)
            {
              IPC::handleMessageAsync<Messages::WebPage::ProofreadingSessionSuggestionTextRectsInRootViewCoordinates,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::CharacterRange const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)const>(a2, a3, this);
            }

            else
            {
              IPC::handleMessageAsync<Messages::WebPage::RemoteDictionaryPopupInfoToRootView,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::DictionaryPopupInfo,WTF::CompletionHandler<void ()(WebCore::DictionaryPopupInfo)> &&)>(a2, a3, this);
            }

            goto LABEL_4;
          }

          if (*(a3 + 25) > 0xA35u)
          {
            if (*(a3 + 25) <= 0xA4Du)
            {
              switch(v9)
              {
                case 2614:
                  WebKit::WebPage::intelligenceTextAnimationsDidComplete(this);
                  goto LABEL_4;
                case 2637:
                  IPC::handleMessageAsync<Messages::WebPage::NumberOfVisibilityAdjustmentRects,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(unsigned long long)> &&)>(a2, a3, this);
                  goto LABEL_4;
                case 2619:
                  IPC::handleMessageAsync<Messages::WebPage::LoadAndDecodeImage,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ResourceRequest &&,std::optional<WebCore::FloatSize>,unsigned long long,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::FloatSize>::Ref<WebCore::ShareableBitmap,std::optional<WebCore::FloatSize>::RawPtrTraits<std::optional<WebCore::FloatSize>::Ref>,std::optional<WebCore::FloatSize>::DefaultRefDerefTraits<std::optional<WebCore::FloatSize>::Ref>>,WebCore::ResourceError> &&)> &&)>(a2, a3, this);
                  goto LABEL_4;
              }
            }

            else if (v9 == 2638)
            {
              IPC::handleMessageAsync<Messages::WebPage::PauseAllAnimations,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
              goto LABEL_4;
            }
          }

          else
          {
            if (v9 == 2573)
            {
              IPC::handleMessageAsync<Messages::WebPage::GetInformationFromImageData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError> &&)> &&)>(a2, a3, this);
              goto LABEL_4;
            }

            if (v9 == 2565)
            {
              IPC::handleMessage<Messages::WebPage::GenerateTestReport,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String &&,WTF::String &)>(a3, this);
              goto LABEL_4;
            }
          }
        }
      }

      else if (*(a3 + 25) > 0xA7Fu)
      {
        switch(v9)
        {
          case 2712:
            IPC::handleMessage<Messages::WebPage::SetAllowedQueryParametersForAdvancedPrivacyProtections,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(a3, this);
            goto LABEL_4;
          case 2750:
            IPC::handleMessage<Messages::WebPage::SetLinkDecorationFilteringData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<WebCore::LinkDecorationFilteringData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(a3, this);
            goto LABEL_4;
          case 2688:
            IPC::handleMessageAsync<Messages::WebPage::ResetVisibilityAdjustmentsForTargetedElements,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
            goto LABEL_4;
        }
      }

      else
      {
        switch(v9)
        {
          case 2674:
            IPC::handleMessageAsync<Messages::WebPage::RequestAllTextAndRects,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::Vector<std::pair<WTF::String,WebCore::FloatRect>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(a2, a3, this);
            goto LABEL_4;
          case 2686:
            IPC::handleMessageAsync<Messages::WebPage::RequestTargetedElement,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::TargetedElementRequest &&,WTF::CompletionHandler<void ()(WebCore::TargetedElementRequest &&::Vector<WebCore::TargetedElementInfo,0ul,WebCore::TargetedElementRequest &&::CrashOnOverflow,16ul,WebCore::TargetedElementRequest &&::FastMalloc> &&)> &&)>(a2, a3, this);
            goto LABEL_4;
          case 2687:
            IPC::handleMessageAsync<Messages::WebPage::RequestTextExtraction,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::optional<WebCore::FloatRect> &&,WTF::CompletionHandler<void ()(WebCore::TextExtraction::Item &&)> &&)>(a2, a3, this);
            goto LABEL_4;
        }
      }
    }

    else
    {
      if (*(a3 + 25) <= 0xAC9u)
      {
        IPC::handleMessage<Messages::WebPage::SetMediaEnvironment,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(a3, this);
        goto LABEL_4;
      }

      if (*(a3 + 25) > 0xB17u)
      {
        if (*(a3 + 25) <= 0xB2Cu)
        {
          if (*(a3 + 25) <= 0xB22u)
          {
            if (v9 == 2847)
            {
              IPC::handleMessageAsync<Messages::WebPage::UpdateTextVisibilityForActiveWritingToolsSession,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::CharacterRange const&,BOOL,WTF::UUID const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
            }

            else if (v9 == 2848)
            {
              IPC::handleMessageAsync<Messages::WebPage::UpdateUnderlyingTextVisibilityForTextAnimationID,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::UUID const&,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
            }

            else
            {
              IPC::handleMessage<Messages::WebPage::UpdateOpener,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(a3, this);
            }
          }

          else if (v9 == 2851)
          {
            IPC::handleMessage<Messages::WebPage::UseRedirectionForCurrentNavigation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ResourceResponse &&)>(a3, this);
          }

          else
          {
            WebKit::WebPage::willBeginContextMenuInteraction(this);
          }

          goto LABEL_4;
        }

        switch(v9)
        {
          case 2861:
            IPC::handleMessageAsync<Messages::WebPage::WillBeginWritingToolsSession,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::optional<WebCore::WritingTools::Session> const&,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::WritingTools::Context,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)>(a2, a3, this);
            goto LABEL_4;
          case 2862:
            IPC::handleMessageAsync<Messages::WebPage::WillEndWritingToolsSession,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::WritingTools::Session const&,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
            goto LABEL_4;
          case 2867:
            IPC::handleMessage<Messages::WebPage::WritingToolsSessionDidReceiveAction,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::WritingTools::Session const&,WebCore::WritingTools::Action)>(a3, this);
            goto LABEL_4;
        }
      }

      else
      {
        if (*(a3 + 25) <= 0xAEBu)
        {
          if (*(a3 + 25) <= 0xAD5u)
          {
            if (v9 == 2762)
            {
              v124 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
              if ((v124 & 0x100) != 0)
              {
                *(this + 903) = v124 & 1;
              }
            }

            else
            {
              IPC::handleMessage<Messages::WebPage::SetPresentingApplicationAuditTokenAndBundleIdentifier,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::CoreIPCAuditToken &&,WTF::String &&)>(a3, this);
            }
          }

          else if (v9 == 2795)
          {
            IPC::handleMessageAsync<Messages::WebPage::ShouldDismissKeyboardAfterTapAtPoint,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::FloatPoint,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
          }

          else
          {
            IPC::handleMessageAsync<Messages::WebPage::SetSelectionForActiveWritingToolsSession,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::CharacterRange const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
          }

          goto LABEL_4;
        }

        if (*(a3 + 25) > 0xB15u)
        {
          IPC::handleMessage<Messages::WebPage::UpdateFrameScrollingMode,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ScrollbarMode)>(a3, this);
          goto LABEL_4;
        }

        if (*(a3 + 25) <= 0xB03u)
        {
          if (*(a3 + 25) <= 0xAF3u)
          {
            if (v9 == 2803)
            {
              WebKit::WebPage::startObservingNowPlayingMetadata(this);
              goto LABEL_4;
            }

            if (v9 == 2796)
            {
              IPC::handleMessageAsync<Messages::WebPage::SimulateClickOverFirstMatchingTextInViewportWithUserInteraction,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
              goto LABEL_4;
            }
          }

          else
          {
            if (v9 == 2811)
            {
              WebKit::WebPage::stopObservingNowPlayingMetadata(this);
              goto LABEL_4;
            }

            if (v9 == 2804)
            {
              IPC::handleMessageAsync<Messages::WebPage::StartPlayingPredominantVideo,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
              goto LABEL_4;
            }
          }
        }

        else
        {
          if (v9 == 2823)
          {
            IPC::handleMessageAsync<Messages::WebPage::TextPreviewDataForActiveWritingToolsSession,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::CharacterRange const&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>> &&)> &&)>(a2, a3, this);
            goto LABEL_4;
          }

          if (v9 == 2820)
          {
            IPC::handleMessageAsync<Messages::WebPage::TakeSnapshotForTargetedElement,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>,WTF::CompletionHandler<void ()(std::optional<WebCore::ShareableBitmapHandle> &&)> &&)>(a2, a3, this);
            goto LABEL_4;
          }
        }
      }
    }

    if ((WebKit::WebPage::dispatchMessage(this, a2, a3) & 1) == 0)
    {
      v129 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v130 = *(a3 + 25);
        if (v130 >= 0x107F)
        {
          v130 = 4223;
        }

        v131 = (&IPC::Detail::messageDescriptions)[3 * v130];
        v132 = *(a3 + 7);
        *v133 = 136315394;
        *&v133[4] = v131;
        *&v133[12] = 2048;
        *&v133[14] = v132;
        _os_log_error_impl(&dword_19D52D000, v129, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", v133, 0x16u);
      }

      IPC::Decoder::markInvalid(a3);
    }

    goto LABEL_4;
  }

  if (*(a3 + 25) > 0xAB3u)
  {
    if (*(a3 + 25) <= 0xAF7u)
    {
      switch(v9)
      {
        case 2789:
          IPC::handleMessage<Messages::WebPage::SetUserAgent,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String &&)>(a3, this);
          goto LABEL_4;
        case 2740:
          v54 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
          if ((v54 & 0x100) != 0)
          {
            WebKit::WebPage::setHasCustomUserAgent(this, v54 & 1);
          }

          goto LABEL_4;
        case 2761:
          v35 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
          if ((v35 & 0x100) != 0)
          {
            WebKit::WebPage::setNeedsFontAttributes(this, v35 & 1);
          }

          goto LABEL_4;
      }
    }

    else if (*(a3 + 25) <= 0xB20u)
    {
      if (*(a3 + 25) < 0xAF9u)
      {
        WebKit::WebPage::stopLoading(this);
        goto LABEL_4;
      }

      if (*(a3 + 25) <= 0xB07u)
      {
        switch(v9)
        {
          case 2809:
            WebKit::WebPage::stopLoadingDueToProcessSwap(this);
            goto LABEL_4;
          case 2814:
            WebKit::WebPage::suspendActiveDOMObjectsAndAnimations(this);
            goto LABEL_4;
          case 2813:
            IPC::handleMessageAsync<Messages::WebPage::Suspend,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
            goto LABEL_4;
        }
      }

      else if (*(a3 + 25) > 0xB16u)
      {
        if (v9 == 2839)
        {
          IPC::handleMessage<Messages::WebPage::UpdateFrameTreeSyncData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::FrameTreeSyncData,WTF::RawPtrTraits<WebCore::FrameTreeSyncData>,WTF::DefaultRefDerefTraits<WebCore::FrameTreeSyncData>> &&)>(a3, this);
          goto LABEL_4;
        }

        if (v9 == 2842)
        {
          IPC::handleMessageAsync<Messages::WebPage::UpdateRenderingWithForcedRepaint,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
          goto LABEL_4;
        }
      }

      else
      {
        switch(v9)
        {
          case 2824:
            IPC::handleMessage<Messages::WebPage::TopDocumentSyncDataChangedInAnotherProcess,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Ref<WebCore::DocumentSyncData,WTF::RawPtrTraits<WebCore::DocumentSyncData>,WTF::DefaultRefDerefTraits<WebCore::DocumentSyncData>> &&)>(a3, this);
            goto LABEL_4;
          case 2826:
            IPC::handleMessageAsync<Messages::WebPage::TryClose,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
            goto LABEL_4;
          case 2833:
            v52 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
            if (v53)
            {
              WebKit::WebPage::unapplyEditCommand(this, v52);
            }

            goto LABEL_4;
        }
      }
    }

    else
    {
      switch(v9)
      {
        case 2866:
          *v133 = IPC::Decoder::decode<std::tuple<unsigned int,std::optional<unsigned int>>>(a3);
          *&v133[8] = v25;
          v133[12] = BYTE4(v25);
          if ((v25 & 0x100000000) != 0)
          {
            WebKit::WebPage::windowScreenDidChange(this);
          }

          goto LABEL_4;
        case 2849:
          IPC::handleMessage<Messages::WebPage::UpdateWebsitePolicies,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::WebsitePoliciesData &&)>(a3, this);
          goto LABEL_4;
        case 2854:
          IPC::handleMessageAsync<Messages::WebPage::ValidateCommand,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::CompletionHandler<void ()(BOOL,int)> &&)>(a2, a3, this);
          goto LABEL_4;
      }
    }

    goto LABEL_117;
  }

  if (*(a3 + 25) > 0xA2Bu)
  {
    if (*(a3 + 25) > 0xA86u)
    {
      if (*(a3 + 25) > 0xA9Fu)
      {
        if (*(a3 + 25) > 0xAA8u)
        {
          if (v9 == 2729)
          {
            IPC::handleMessage<Messages::WebPage::SetCustomTextEncodingName,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&)>(a3, this);
            goto LABEL_4;
          }

          if (v9 == 2732)
          {
            v67 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
            if ((v67 & 0x100) != 0)
            {
              WebKit::WebPage::setEditable(this, v67 & 1);
            }

            goto LABEL_4;
          }
        }

        else
        {
          if (v9 == 2728)
          {
            IPC::handleMessage<Messages::WebPage::SetCurrentHistoryItemForReattach,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>> &&)>(a3, this);
            goto LABEL_4;
          }

          if (v9 == 2720)
          {
            if (IPC::Decoder::decode<std::tuple<WebCore::WritingDirection>>(a3) >= 0x100u)
            {
              WebKit::WebPage::setBaseWritingDirection(this);
            }

            goto LABEL_4;
          }
        }
      }

      else
      {
        switch(v9)
        {
          case 2695:
            IPC::handleMessageAsync<Messages::WebPage::RunJavaScriptInFrameInScriptWorld,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::RunJavaScriptParameters &&,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,std::optional::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebKit::ContentWorldData const&,BOOL,std::optional::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,std::__1<WTF::ObjectIdentifierGeneric::ExceptionDetails>>)> &&)>(a2, a3, this);
            goto LABEL_4;
          case 2701:
            WebKit::WebPage::selectAll(this);
            goto LABEL_4;
          case 2696:
            WebKit::WebPage::scheduleFullEditorStateUpdate(this);
            goto LABEL_4;
        }
      }
    }

    else if (*(a3 + 25) <= 0xA5Fu)
    {
      if (*(a3 + 25) <= 0xA58u)
      {
        switch(v9)
        {
          case 2635:
            IPC::handleMessage<Messages::WebPage::NavigateToPDFLinkWithSimulatedClick,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WebCore::IntPoint,WebCore::IntPoint)>(a3, this);
            goto LABEL_4;
          case 2642:
            *v133 = IPC::Decoder::decode<std::tuple<WebCore::FloatPoint>>(a3);
            v133[8] = v91;
            if (v91)
            {
              WebKit::WebPage::performDictionaryLookupAtLocation(this, v133);
            }

            goto LABEL_4;
          case 2604:
            WebKit::WebPage::increaseListLevel(this);
            goto LABEL_4;
        }
      }

      else
      {
        if (v9 == 2652)
        {
          IPC::handleMessage<Messages::WebPage::ProcessSyncDataChangedInAnotherProcess,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebCore::ProcessSyncData const&)>(a3, this);
          goto LABEL_4;
        }

        if (v9 == 2649 || v9 == 2650)
        {
          IPC::handleMessage<Messages::WebPage::PreferencesDidChange,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WebKit::WebPreferencesStore const&,std::optional<unsigned long long>)>(a3, this, v7.n128_f64[0], v8);
          goto LABEL_4;
        }
      }
    }

    else if (*(a3 + 25) > 0xA82u)
    {
      switch(v9)
      {
        case 2691:
          WebKit::WebPage::restoreSelectionInFocusedEditableElement(this);
          goto LABEL_4;
        case 2693:
          WebKit::WebPage::resumeActiveDOMObjectsAndAnimations(this);
          goto LABEL_4;
        case 2692:
          IPC::handleMessageAsync<Messages::WebPage::Resume,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
          goto LABEL_4;
      }
    }

    else if (*(a3 + 25) > 0xA65u)
    {
      if (v9 == 2662)
      {
        IPC::handleMessageAsync<Messages::WebPage::RemoveDataDetectedLinks,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WebKit::DataDetectionResult &&)> &&)>(a2, a3, this);
        goto LABEL_4;
      }

      if (v9 == 2680)
      {
        IPC::handleMessageAsync<Messages::WebPage::RequestFontAttributesAtSelectionStart,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WebCore::FontAttributes const&)> &&)>(a2, a3, this);
        goto LABEL_4;
      }
    }

    else
    {
      if (v9 == 2659)
      {
        IPC::handleMessage<Messages::WebPage::Reload,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebCore::ReloadOption>,WebKit::SandboxExtensionHandle &&)>(a3, this);
        goto LABEL_4;
      }

      if (v9 == 2656)
      {
        v38 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
        if (v39)
        {
          WebKit::WebPage::reapplyEditCommand(this, v38);
        }

        goto LABEL_4;
      }
    }

    goto LABEL_117;
  }

  if (*(a3 + 25) <= 0xA01u)
  {
    if (*(a3 + 25) <= 0x9DAu)
    {
      switch(v9)
      {
        case 2517:
          v92 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
          if (v93)
          {
            WebKit::WebPage::didRemoveEditCommand(this, v92);
          }

          goto LABEL_4;
        case 2518:
          IPC::Decoder::decode<std::tuple<double,WebCore::IntPoint>>(v133, a3);
          if (v133[16] == 1)
          {
            WebKit::WebPage::didScalePage(this, *v133, &v133[8]);
          }

          goto LABEL_4;
        case 2519:
          IPC::Decoder::decode<std::tuple<double,WebCore::IntPoint>>(v133, a3);
          if (v133[16] == 1)
          {
            WebKit::WebPage::didScalePageInViewCoordinates(this, *v133, &v133[8]);
          }

          goto LABEL_4;
      }
    }

    else
    {
      switch(v9)
      {
        case 2544:
          IPC::handleMessage<Messages::WebPage::ExecuteEditCommand,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::String const&,WTF::String const&)>(a3, this);
          goto LABEL_4;
        case 2523:
          v95 = IPC::Decoder::decode<std::tuple<double>>(a3);
          if (v96)
          {
            WebKit::WebPage::didSetPageZoomFactor(this, *&v95);
          }

          goto LABEL_4;
        case 2524:
          v55 = IPC::Decoder::decode<std::tuple<double>>(a3);
          if (v56)
          {
            WebKit::WebPage::didSetTextZoomFactor(this, *&v55);
          }

          goto LABEL_4;
      }
    }

    goto LABEL_117;
  }

  switch(*(a3 + 25))
  {
    case 0xA02:
      v89 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a3);
      if (v90)
      {
        WebKit::WebPage::frameWasRemovedInAnotherProcess(this, v89);
      }

      goto LABEL_4;
    case 0xA06:
      IPC::handleMessageAsync<Messages::WebPage::GetAccessibilityTreeData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(std::optional<IPC::SharedBufferReference> const&)> &&)>(a2, a3, this);
      goto LABEL_4;
    case 0xA09:
      IPC::handleMessageAsync<Messages::WebPage::GetContentsAsAttributedString,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WebCore::AttributedString const&)> &&)>(a2, a3, this);
      goto LABEL_4;
    case 0xA0A:
      v28 = *(a3 + 2);
      if (*(a3 + 1) <= &v28[-*a3])
      {
        IPC::Decoder::markInvalid(a3);
        goto LABEL_1038;
      }

      *(a3 + 2) = v28 + 1;
      if (!v28)
      {
LABEL_1038:
        IPC::Decoder::markInvalid(a3);
        goto LABEL_1039;
      }

      v29 = *v28;
      if (v29 >= 2)
      {
LABEL_1039:
        IPC::Decoder::markInvalid(a3);
        IPC::Decoder::markInvalid(a3);
        IPC::Decoder::markInvalid(a3);
        goto LABEL_4;
      }

      v30 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v31 & 1) == 0)
      {
        goto LABEL_4;
      }

      v32 = v30;
      while (1)
      {
        v33 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v128 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v128, v33 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v128 == v33)
        {
          goto LABEL_77;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_77:
      v34 = WTF::fastMalloc(0x18);
      *v34 = &unk_1F10F5158;
      v34[1] = v32;
      v34[2] = a2;
      *v133 = v34;
      WebKit::WebPage::getContentsAsString(this, (v29 & 1), v133);
      v24 = *v133;
      *v133 = 0;
      if (!v24)
      {
        goto LABEL_20;
      }

LABEL_19:
      (*(*v24 + 8))(v24);
LABEL_20:
      if (this)
      {
        goto LABEL_4;
      }

      return;
    case 0xA0F:
      IPC::handleMessageAsync<Messages::WebPage::GetMainResourceDataOfFrame,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<IPC::SharedBufferReference> const&)> &&)>(a2, a3, this);
      goto LABEL_4;
    case 0xA11:
      IPC::handleMessageAsync<Messages::WebPage::GetPDFFirstPageSize,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::FloatSize)> &&)>(a2, a3, this);
      goto LABEL_4;
    case 0xA15:
      IPC::handleMessageAsync<Messages::WebPage::GetRenderTreeExternalRepresentation,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::String const&)> &&)>(a2, a3, this);
      goto LABEL_4;
    case 0xA16:
      IPC::handleMessageAsync<Messages::WebPage::GetResourceDataFromFrame,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<IPC::SharedBufferReference> const&)> &&)>(a2, a3, this);
      goto LABEL_4;
    case 0xA19:
      IPC::handleMessageAsync<Messages::WebPage::GetSelectionAsWebArchiveData,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(std::optional<IPC::SharedBufferReference> const&)> &&)>(a2, a3, this);
      goto LABEL_4;
    case 0xA1B:
      IPC::handleMessageAsync<Messages::WebPage::GetSelectionOrContentsAsString,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::String const&)> &&)>(a2, a3, this);
      goto LABEL_4;
    case 0xA1C:
      IPC::handleMessageAsync<Messages::WebPage::GetSourceForFrame,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WTF::String const&)> &&)>(a2, a3, this);
      goto LABEL_4;
    case 0xA1F:
      IPC::handleMessageAsync<Messages::WebPage::GetWebArchiveOfFrame,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(std::optional<IPC::SharedBufferReference> const&)> &&)>(a2, a3, this);
      goto LABEL_4;
    case 0xA20:
      IPC::handleMessageAsync<Messages::WebPage::GetWebArchiveOfFrameWithFileName,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WebCore::MarkupExclusionRule,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<IPC::SharedBufferReference> const&)> &&)>(a2, a3, this);
      goto LABEL_4;
    case 0xA21:
      IPC::handleMessageAsync<Messages::WebPage::GetWebArchives,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(WTF::CompletionHandler<void ()(WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::LegacyWebArchive,WTF::RawPtrTraits<WebCore::LegacyWebArchive>,WTF::DefaultRefDerefTraits<WebCore::LegacyWebArchive>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)> &&)>(a2, a3, this);
      goto LABEL_4;
    default:
      goto LABEL_117;
  }
}

void IPC::handleMessageAsync<Messages::WebPage::SetInitialFocus,IPC::Connection,WebKit::WebPage,WebKit::WebPage,void ()(BOOL,BOOL,std::optional<WebKit::WebKeyboardEvent> const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = a2[2];
  v7 = *a2;
  v8 = a2[1];
  if (v8 <= &v6[-v7])
  {
    *a2 = 0;
    a2[1] = 0;
    v27 = a2[3];
    if (v27)
    {
      if (v8)
      {
        (*(*v27 + 16))(v27);
        v7 = *a2;
        v8 = a2[1];
LABEL_46:
        *a2 = 0;
        a2[1] = 0;
        v28 = a2[3];
        if (v28)
        {
          if (v8)
          {
            (*(*v28 + 16))(v28, v7);
LABEL_78:
            v7 = *a2;
            v8 = a2[1];
            goto LABEL_54;
          }

LABEL_53:
          v7 = 0;
          goto LABEL_54;
        }

LABEL_52:
        v8 = 0;
        goto LABEL_53;
      }
    }

    else
    {
      v8 = 0;
    }

    v7 = 0;
    goto LABEL_46;
  }

  v9 = v6 + 1;
  a2[2] = (v6 + 1);
  if (!v6)
  {
    goto LABEL_46;
  }

  v10 = *v6;
  if (v10 >= 2)
  {
LABEL_54:
    *a2 = 0;
    a2[1] = 0;
    v33 = a2[3];
    if (v33 && v8)
    {
      (*(*v33 + 16))(v33, v7);
    }

    goto LABEL_64;
  }

  if (v8 <= &v9[-v7])
  {
    v29 = 0;
    v30 = 0;
    *a2 = 0;
    a2[1] = 0;
    v31 = a2[3];
    if (v31)
    {
      (*(*v31 + 16))(v31);
      v30 = *a2;
      v29 = a2[1];
    }

LABEL_51:
    *a2 = 0;
    a2[1] = 0;
    v32 = a2[3];
    if (v32 && v29)
    {
      (*(*v32 + 16))(v32, v30, v29);
      goto LABEL_78;
    }

    goto LABEL_52;
  }

  v11 = v6 + 2;
  a2[2] = (v6 + 2);
  if (v6 == -1)
  {
    v29 = v8;
    v30 = v7;
    goto LABEL_51;
  }

  v12 = *v9;
  if (v12 >= 2)
  {
    goto LABEL_54;
  }

  if (v8 <= &v11[-v7])
  {
    v34 = 0;
    v35 = 0;
    *a2 = 0;
    a2[1] = 0;
    v36 = a2[3];
    if (v36)
    {
      (*(*v36 + 16))(v36);
      v35 = *a2;
      v34 = a2[1];
    }

    goto LABEL_59;
  }

  a2[2] = (v6 + 3);
  if (v6 == -2)
  {
    v34 = v8;
    v35 = v7;
LABEL_59:
    *a2 = 0;
    a2[1] = 0;
    v37 = a2[3];
    if (v37 && v34)
    {
      (*(*v37 + 16))(v37, v35, v34);
      v7 = *a2;
      v8 = a2[1];
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

LABEL_61:
    *a2 = 0;
    a2[1] = 0;
    v38 = a2[3];
    if (v38 && v8)
    {
      (*(*v38 + 16))(v38, v7);
    }

    goto LABEL_62;
  }

  if (*v11 >= 2u)
  {
    goto LABEL_61;
  }

  if (!*v11)
  {
    v44 = 0;
    v54 = 0;
    std::optional<WebKit::WebKeyboardEvent>::optional[abi:sn200100](&v57, &v44);
    v69 = 1;
    goto LABEL_26;
  }

  IPC::Decoder::decode<WebKit::WebKeyboardEvent>(&v44, a2);
  if (v54 == 1)
  {
    v59 = v46[0];
    v60 = v46[1];
    v58 = 0;
    v61 = v47;
    v57 = &unk_1F110E540;
    v14 = v48;
    if (v48)
    {
      atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
    }

    v62 = v14;
    v15 = v49;
    if (v49)
    {
      atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
    }

    v63 = v15;
    v16 = v50;
    if (v50)
    {
      atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
    }

    v64 = v16;
    v17 = v51;
    if (v51)
    {
      atomic_fetch_add_explicit(v51, 2u, memory_order_relaxed);
    }

    v65 = v17;
    v18 = v52;
    if (v52)
    {
      atomic_fetch_add_explicit(v52, 2u, memory_order_relaxed);
    }

    v66 = v18;
    v67 = v53;
    v68 = 1;
    v69 = 1;
    if ((v54 & 1) == 0)
    {
      goto LABEL_26;
    }

    WebKit::WebKeyboardEvent::~WebKeyboardEvent(&v44, v13);
    if (v69)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

LABEL_62:
  LOBYTE(v57) = 0;
  v69 = 0;
LABEL_63:
  v39 = *a2;
  v40 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v41 = a2[3];
  if (!v41 || !v40 || ((*(*v41 + 16))(v41, v39), (v69 & 1) == 0))
  {
LABEL_64:
    v44 = 0;
    v56 = 0;
    goto LABEL_65;
  }

LABEL_26:
  v44 = v10;
  v45 = v12;
  std::optional<WebKit::WebKeyboardEvent>::optional[abi:sn200100](v46 + 4, &v57);
  v56 = 1;
  if (v69 & 1) != 0 && (v68)
  {
    WebKit::WebKeyboardEvent::~WebKeyboardEvent(&v57, v19);
    if ((v56 & 1) == 0)
    {
LABEL_65:
      v21 = *a2;
      v42 = a2[1];
      *a2 = 0;
      a2[1] = 0;
      v43 = a2[3];
      if (!v43)
      {
        goto LABEL_38;
      }

      if (!v42)
      {
        goto LABEL_38;
      }

      (*(*v43 + 16))(v43, v21);
      if ((v56 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  v20 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v21)
  {
    v22 = v20;
    while (1)
    {
      v23 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v24 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v24, v23 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v24 == v23)
      {
        goto LABEL_35;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_35:
    v25 = WTF::fastMalloc(0x18);
    *v25 = &unk_1F10F4B90;
    v25[1] = v22;
    v25[2] = a1;
    v57 = v25;
    if ((v56 & 1) == 0)
    {
      __break(1u);
    }

    WebKit::WebPage::setInitialFocus(a3, v44, v45, (v46 + 4), &v57);
    v26 = v57;
    v57 = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }
  }

LABEL_38:
  if (v56 == 1 && v55 == 1)
  {
    WebKit::WebKeyboardEvent::~WebKeyboardEvent((v46 + 4), v21);
  }
}
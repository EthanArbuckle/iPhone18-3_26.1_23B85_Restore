uint64_t WebKit::RemotePipelineLayout::didReceiveStreamMessage(WebKit::RemotePipelineLayout *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 5) + 8);
  if (v3)
  {
    if ((*(v3 + 56) & 0x4000) != 0)
    {
      atomic_fetch_add(this + 2, 1u);
      v10 = *(a3 + 25);
      if (v10 == 1507)
      {
        IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, v19);
        if (v19[8] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v19[8]))
        {
          result = WebKit::RemotePipelineLayout::setLabel(this, v19);
          if (v19[8])
          {
            result = *v19;
            *v19 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v11);
              }
            }
          }
        }
      }

      else if (v10 == 1506)
      {
        result = WebKit::RemoteCompositorIntegration::destruct(this);
      }

      else
      {
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
          *v19 = 136315394;
          *&v19[4] = v17;
          v20 = 2048;
          v21 = v18;
          _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", v19, 0x16u);
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
        *v19 = 136315138;
        *&v19[4] = v15;
        _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemotePipelineLayout", v19, 0xCu);
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

uint64_t WebKit::RemotePresentationContext::didReceiveStreamMessage(WebKit::RemotePresentationContext *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 8) + 8);
  if (!v3)
  {
    result = 92;
    __break(0xC471u);
    return result;
  }

  if ((*(v3 + 56) & 0x4000) == 0)
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
      *buf = 136315138;
      *&buf[4] = v15;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemotePresentationContext", buf, 0xCu);
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

  atomic_fetch_add(this + 2, 1u);
  v10 = *(a3 + 25);
  if (v10 > 0x5E5)
  {
    if (v10 == 1510)
    {
      result = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
      if ((result & 0x100000000) != 0)
      {
        result = WebKit::RemotePresentationContext::present(this, result);
      }

      goto LABEL_25;
    }

    if (v10 != 1511)
    {
LABEL_15:
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
        *buf = 136315394;
        *&buf[4] = v17;
        v26 = 2048;
        *v27 = v18;
        _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
      }

      v11 = *a3;
      v12 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = *(a3 + 3);
      if (!result)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    result = WebKit::RemotePresentationContext::unconfigure(this);
  }

  else
  {
    if (v10 != 1508)
    {
      if (v10 == 1509)
      {
        IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned int>,void>::decode<IPC::Decoder>(a3, buf);
        if (v27[2] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v27[2]))
        {
          result = WebKit::RemotePresentationContext::getCurrentTexture(this, *buf, *&buf[8]);
        }

        goto LABEL_25;
      }

      goto LABEL_15;
    }

    IPC::ArgumentCoder<WebKit::WebGPU::CanvasConfiguration,void>::decode(a3, buf);
    if (v30)
    {
LABEL_20:
      v19 = *buf;
      v20 = *&buf[8];
      v21 = *&v27[2];
      v22 = v28;
      v23 = v29;
      v24 = 1;
      result = WebKit::RemotePresentationContext::configure(this, &v19);
      if (v24)
      {
        result = v21;
        if (v21)
        {
          v21 = 0;
          LODWORD(v22) = 0;
          result = WTF::fastFree(result, v11);
        }
      }

      goto LABEL_25;
    }

    v11 = *a3;
    v12 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result && v12)
    {
      (*(*result + 16))(result, v11);
      if (v30)
      {
        goto LABEL_20;
      }

      v11 = *a3;
      v12 = *(a3 + 1);
      result = *(a3 + 3);
      *a3 = 0;
      *(a3 + 1) = 0;
      if (result)
      {
LABEL_17:
        if (v12)
        {
          result = (*(*result + 16))(result, v11);
        }
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 1) = 0;
    }
  }

LABEL_25:
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 2);
    return (*(*this + 8))(this, v11, v12);
  }

  return result;
}

uint64_t WebKit::RemoteQuerySet::didReceiveStreamMessage(WebKit::RemoteQuerySet *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 5) + 8);
  if (v3)
  {
    if ((*(v3 + 56) & 0x4000) != 0)
    {
      atomic_fetch_add(this + 2, 1u);
      v10 = *(a3 + 25);
      switch(v10)
      {
        case 0x5EAu:
          IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, v19);
          if (v19[8] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v19[8]))
          {
            result = WebKit::RemoteQuerySet::setLabel(this, v19);
            if (v19[8])
            {
              result = *v19;
              *v19 = 0;
              if (result)
              {
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v11);
                }
              }
            }
          }

          break;
        case 0x5E9u:
          result = WebKit::RemoteQuerySet::destruct(this);
          break;
        case 0x5E8u:
          result = WebKit::RemoteQuerySet::destroy(this);
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
            *v19 = 136315394;
            *&v19[4] = v17;
            v20 = 2048;
            v21 = v18;
            _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", v19, 0x16u);
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
        *v19 = 136315138;
        *&v19[4] = v15;
        _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteQuerySet", v19, 0xCu);
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

void WebKit::RemoteQueue::didReceiveStreamMessage(WebKit::RemoteQueue *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v124 = *MEMORY[0x1E69E9840];
  v6 = *(*(this + 5) + 8);
  if (!v6)
  {
    v14 = "T *WTF::WeakRef<WebKit::RemoteGPU>::ptr() const [T = WebKit::RemoteGPU, WeakPtrImpl = WTF::DefaultWeakPtrImpl]";
    v13 = 92;
    __break(0xC471u);
    goto LABEL_240;
  }

  v4 = a3;
  if ((*(v6 + 56) & 0x4000) == 0)
  {
    v7 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v48 = *(v4 + 25);
      if (v48 >= 0x107F)
      {
        v48 = 4223;
      }

      v49 = (&IPC::Detail::messageDescriptions)[3 * v48];
      *buf = 136315138;
      *&buf[4] = v49;
      _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteQueue", buf, 0xCu);
    }

    v8 = *v4;
    v9 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v10 = *(v4 + 3);
    if (v10)
    {
      if (v9)
      {
        (*(*v10 + 16))(v10, v8);
      }
    }

    return;
  }

  v5 = a2;
  v3 = this;
  atomic_fetch_add(this + 2, 1u);
  v11 = *(a3 + 25);
  if (v11 <= 0x5EE)
  {
    if (*(a3 + 25) > 0x5ECu)
    {
      if (v11 == 1517)
      {
        v32 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v17)
        {
          v33 = v32;
          atomic_fetch_add(v5 + 2, 1u);
          v34 = WTF::fastMalloc(0x18);
          *v34 = &unk_1F10EDA48;
          v34[1] = v33;
          v34[2] = v5;
          *buf = v34;
          WebKit::RemoteQueue::onSubmittedWorkDone(v3, buf);
          v35 = *buf;
          *buf = 0;
          if (v35)
          {
            (*(*v35 + 8))(v35);
          }
        }

        goto LABEL_172;
      }

      if (v11 == 1518)
      {
        IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
        if (buf[8] & 1) != 0 || (v17 = *v4, v18 = *(v4 + 1), *v4 = 0, *(v4 + 1) = 0, (v71 = *(v4 + 3)) != 0) && v18 && ((*(*v71 + 16))(v71, v17), (buf[8]))
        {
          WebKit::RemoteQueue::setLabel(v3, buf);
          if (buf[8])
          {
            v19 = *buf;
            *buf = 0;
            if (v19)
            {
              if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v19, v17);
              }
            }
          }
        }

        goto LABEL_172;
      }

      goto LABEL_97;
    }

    if (v11 != 1515)
    {
      if (v11 == 1516)
      {
        WebKit::RemoteQuerySet::destruct(this);
        goto LABEL_172;
      }

      goto LABEL_97;
    }

    IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyExternalImage,void>::decode(a3, &v93);
    if (v98 & 1) != 0 || (v72 = *v4, v73 = *(v4 + 1), *v4 = 0, *(v4 + 1) = 0, (v74 = *(v4 + 3)) != 0) && v73 && ((*(*v74 + 16))(v74, v72), (v98))
    {
      IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTextureTagged,void>::decode(v4, &v99);
      if (v107 & 1) != 0 || (v30 = *v4, v78 = *(v4 + 1), *v4 = 0, *(v4 + 1) = 0, (v79 = *(v4 + 3)) != 0) && v78 && ((*(*v79 + 16))(v79, v30), (v107))
      {
        v13 = IPC::Decoder::decode<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict>>(v4, v108);
        if (v110 == 1)
        {
          if ((v98 & 1) == 0 || (v107 & 1) == 0)
          {
            goto LABEL_240;
          }

          buf[0] = 0;
          LOBYTE(v112) = 0;
          if (v96 == 1)
          {
            mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,(mpark::detail::Trait)1>::move_assignment(buf, &v93);
            LOBYTE(v112) = 1;
          }

          v113 = v97;
          v114 = v99;
          v115 = v100;
          LOBYTE(v116) = 0;
          v118[8] = 0;
          if (v104 == 1)
          {
            mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,(mpark::detail::Trait)1>::move_assignment(&v116, &v101);
            v118[8] = 1;
          }

          v118[16] = v105;
          *&v118[17] = v106;
          mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,(mpark::detail::Trait)1>::move_assignment(&v119, v108);
          v122 = 1;
          if ((v110 & 1) != 0 && !v109)
          {
            v31 = v108[0];
            if (v108[0])
            {
              v108[0] = 0;
              LODWORD(v108[1]) = 0;
              WTF::fastFree(v31, v30);
            }
          }
        }

        else
        {
          buf[0] = 0;
          v122 = 0;
        }

        if ((v107 & 1) != 0 && v104 == 1 && !v103)
        {
          v50 = v101;
          if (v101)
          {
            v101 = 0;
            v102 = 0;
            WTF::fastFree(v50, v30);
          }
        }
      }

      else
      {
        buf[0] = 0;
        v122 = 0;
      }

      if ((v98 & 1) != 0 && v96 == 1 && !v95)
      {
        v51 = v93;
        if (v93)
        {
          v93 = 0;
          v94 = 0;
          WTF::fastFree(v51, v30);
        }
      }
    }

    else
    {
      buf[0] = 0;
      v122 = 0;
    }

    if ((v122 & 1) == 0)
    {
      v17 = *v4;
      v18 = *(v4 + 1);
      *v4 = 0;
      *(v4 + 1) = 0;
      v77 = *(v4 + 3);
      if (!v77)
      {
        goto LABEL_172;
      }

      if (!v18)
      {
        goto LABEL_172;
      }

      (*(*v77 + 16))(v77, v17);
      if ((v122 & 1) == 0)
      {
        goto LABEL_172;
      }
    }

    WebKit::RemoteQueue::copyExternalImageToTexture(v3, buf, &v114, &v119);
    if ((v122 & 1) == 0)
    {
      goto LABEL_172;
    }

    if (!v121)
    {
      v52 = v119;
      if (v119)
      {
        v119 = 0;
        LODWORD(v120) = 0;
        WTF::fastFree(v52, v17);
      }
    }

    LOBYTE(v121) = -1;
    if (v118[8] == 1)
    {
      if (!v118[0])
      {
        v53 = v116;
        if (v116)
        {
          v116 = 0;
          LODWORD(v117) = 0;
          WTF::fastFree(v53, v17);
        }
      }

      v118[0] = -1;
    }

    if (v112 != 1 || buf[16])
    {
      goto LABEL_172;
    }

LABEL_129:
    v54 = *buf;
    if (!*buf)
    {
      goto LABEL_172;
    }

    *buf = 0;
    *&buf[8] = 0;
LABEL_171:
    WTF::fastFree(v54, v17);
    goto LABEL_172;
  }

  if (*(a3 + 25) <= 0x5F0u)
  {
    if (v11 != 1519)
    {
      if (v11 == 1520)
      {
        v20 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v21 & 1) == 0)
        {
          goto LABEL_206;
        }

        v14 = *(v4 + 1);
        v22 = ((*(v4 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
        v23 = v22 - *v4;
        v24 = v14 >= v23;
        v25 = &v14[-v23];
        if (!v24 || v25 <= 7)
        {
          *v4 = 0;
          *(v4 + 1) = 0;
          v13 = *(v4 + 3);
          if (v13)
          {
            goto LABEL_241;
          }

          v14 = 0;
          goto LABEL_231;
        }

        *(v4 + 2) = v22 + 1;
        if (!v22)
        {
          goto LABEL_231;
        }

        v26 = v20;
        v27 = *v22;
        IPC::ArgumentCoder<std::optional<WebCore::SharedMemoryHandle>,void>::decode<IPC::Decoder>(v4, &v99);
        if ((v102 & 1) == 0)
        {
          v80 = *v4;
          v81 = *(v4 + 1);
          *v4 = 0;
          *(v4 + 1) = 0;
          v82 = *(v4 + 3);
          if (!v82)
          {
            goto LABEL_206;
          }

          if (!v81)
          {
            goto LABEL_206;
          }

          (*(*v82 + 16))(v82, v80);
          if ((v102 & 1) == 0)
          {
            goto LABEL_206;
          }
        }

        *buf = v26;
        *&buf[8] = v27;
        buf[16] = 0;
        v113 = 0;
        if (v101 == 1)
        {
          WTF::MachSendRight::MachSendRight();
          v112 = v100;
          v113 = 1;
          LOBYTE(v114) = 1;
          if (v102 & 1) != 0 && (v101)
          {
            WTF::MachSendRight::~MachSendRight(&v99);
            if ((v114 & 1) == 0)
            {
              goto LABEL_207;
            }
          }
        }

        else
        {
          LOBYTE(v114) = 1;
        }

        goto LABEL_48;
      }

LABEL_97:
      v46 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v11 >= 0x107F)
        {
          v63 = 4223;
        }

        else
        {
          v63 = v11;
        }

        v64 = (&IPC::Detail::messageDescriptions)[3 * v63];
        v65 = *(v4 + 7);
        *buf = 136315394;
        *&buf[4] = v64;
        *&buf[12] = 2048;
        *&buf[14] = v65;
        _os_log_error_impl(&dword_19D52D000, v46, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
      }

      goto LABEL_98;
    }

    IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(buf, a3);
    if (buf[16] != 1)
    {
      goto LABEL_172;
    }

    WebKit::RemoteQueue::submit(v3, buf);
    if ((buf[16] & 1) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_129;
  }

  if (v11 != 1521)
  {
    if (v11 == 1522)
    {
      IPC::Decoder::decode<WebKit::WebGPU::ImageCopyTexture>(a3, &v99);
      if (v107 == 1)
      {
        IPC::ArgumentCoder<std::optional<WebCore::SharedMemoryHandle>,void>::decode<IPC::Decoder>(v4, &v89);
        if (v92 & 1) != 0 || (v44 = *v4, v84 = *(v4 + 1), *v4 = 0, *(v4 + 1) = 0, (v85 = *(v4 + 3)) != 0) && v84 && ((*(*v85 + 16))(v85, v44), (v92))
        {
          IPC::Decoder::decode<WebKit::WebGPU::ImageDataLayout>(v108, v4);
          if ((v110 & 1) != 0 && (v13 = IPC::Decoder::decode<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict>>(v4, &v93), v96 == 1))
          {
            if ((v107 & 1) == 0 || (v92 & 1) == 0 || (v110 & 1) == 0)
            {
              goto LABEL_240;
            }

            *buf = v99;
            *&buf[8] = v100;
            buf[16] = 0;
            LOBYTE(v114) = 0;
            if (v104 == 1)
            {
              mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,(mpark::detail::Trait)1>::move_assignment(&buf[16], &v101);
              LOBYTE(v114) = 1;
            }

            LOBYTE(v115) = v105;
            LOBYTE(v116) = 0;
            v118[0] = 0;
            if (v91 == 1)
            {
              WTF::MachSendRight::MachSendRight();
              v117 = v90;
              v118[0] = 1;
            }

            *&v118[8] = *v108;
            v119 = v109;
            mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,(mpark::detail::Trait)1>::move_assignment(&v120, &v93);
            v123 = 1;
            if ((v96 & 1) != 0 && !v95)
            {
              v45 = v93;
              if (v93)
              {
                v93 = 0;
                v94 = 0;
                WTF::fastFree(v45, v44);
              }
            }
          }

          else
          {
            buf[0] = 0;
            v123 = 0;
          }

          if ((v92 & 1) != 0 && v91 == 1)
          {
            WTF::MachSendRight::~MachSendRight(&v89);
          }
        }

        else
        {
          buf[0] = 0;
          v123 = 0;
        }

        if ((v107 & 1) != 0 && v104 == 1 && !v103)
        {
          v55 = v101;
          if (v101)
          {
            v101 = 0;
            v102 = 0;
            WTF::fastFree(v55, v44);
          }
        }
      }

      else
      {
        buf[0] = 0;
        v123 = 0;
      }

      if (v123 & 1) != 0 || (v17 = *v4, v18 = *(v4 + 1), *v4 = 0, *(v4 + 1) = 0, (v76 = *(v4 + 3)) != 0) && v18 && ((*(*v76 + 16))(v76, v17), (v123))
      {
        v56 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
        if (v17)
        {
          v4 = v56;
          atomic_fetch_add(v5 + 2, 1u);
          v13 = WTF::fastMalloc(0x18);
          *v13 = &unk_1F10EDA98;
          *(v13 + 8) = v4;
          *(v13 + 16) = v5;
          v99 = v13;
          if ((v123 & 1) == 0)
          {
LABEL_240:
            while (1)
            {
              __break(1u);
LABEL_241:
              if (v14)
              {
                (*(*v13 + 16))(v13);
                v14 = *(v4 + 1);
              }

LABEL_231:
              *v4 = 0;
              *(v4 + 1) = 0;
              v86 = *(v4 + 3);
              if (v86 && v14)
              {
                (*(*v86 + 16))(v86);
              }

LABEL_206:
              buf[0] = 0;
              LOBYTE(v114) = 0;
LABEL_207:
              v17 = *v4;
              v18 = *(v4 + 1);
              *v4 = 0;
              *(v4 + 1) = 0;
              v83 = *(v4 + 3);
              if (!v83)
              {
                break;
              }

              if (!v18)
              {
                break;
              }

              (*(*v83 + 16))(v83, v17);
              if ((v114 & 1) == 0)
              {
                break;
              }

LABEL_48:
              v28 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
              if ((v17 & 1) == 0)
              {
                break;
              }

              v4 = v28;
              atomic_fetch_add(v5 + 2, 1u);
              v13 = WTF::fastMalloc(0x18);
              *v13 = &unk_1F10EDA70;
              *(v13 + 8) = v4;
              *(v13 + 16) = v5;
              v99 = v13;
              if (v114)
              {
                WebKit::RemoteQueue::writeBuffer(v3, *buf, *&buf[8], &buf[16], &v99);
                v29 = v99;
                v99 = 0;
                if (v29)
                {
                  (*(*v29 + 8))(v29);
                }

                break;
              }
            }

            if (v114 == 1 && v113 == 1)
            {
              WTF::MachSendRight::~MachSendRight(&buf[16]);
            }

            goto LABEL_172;
          }

          WebKit::RemoteQueue::writeTexture(v3, buf, &v116, &v118[8], &v120, &v99);
          v57 = v99;
          v99 = 0;
          if (v57)
          {
            (*(*v57 + 8))(v57);
          }
        }
      }

      if (v123 != 1)
      {
        goto LABEL_172;
      }

      if (!v122)
      {
        v58 = v120;
        if (v120)
        {
          v120 = 0;
          v121 = 0;
          WTF::fastFree(v58, v17);
        }
      }

      v122 = -1;
      if (v118[0] == 1)
      {
        WTF::MachSendRight::~MachSendRight(&v116);
      }

      goto LABEL_167;
    }

    if (v11 == 1523)
    {
      IPC::Decoder::decode<WebKit::WebGPU::ImageCopyTexture>(a3, &v99);
      if (v107 == 1)
      {
        IPC::VectorArgumentCoder<true,unsigned char,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v4, &v89);
        if (v91 & 1) != 0 || (v12 = *v4, v69 = *(v4 + 1), *v4 = 0, *(v4 + 1) = 0, (v70 = *(v4 + 3)) != 0) && v69 && ((*(*v70 + 16))(v70, v12), (v91))
        {
          IPC::Decoder::decode<WebKit::WebGPU::ImageDataLayout>(v108, v4);
          if ((v110 & 1) != 0 && (v13 = IPC::Decoder::decode<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict>>(v4, &v93), v96 == 1))
          {
            if ((v107 & 1) == 0 || (v91 & 1) == 0 || (v110 & 1) == 0)
            {
              goto LABEL_240;
            }

            *buf = v99;
            *&buf[8] = v100;
            buf[16] = 0;
            LOBYTE(v114) = 0;
            if (v104 == 1)
            {
              mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,(mpark::detail::Trait)1>::move_assignment(&buf[16], &v101);
              LOBYTE(v114) = 1;
            }

            LOBYTE(v115) = v105;
            v116 = v89;
            v15 = v90;
            v89 = 0;
            v90 = 0;
            v117 = v15;
            *v118 = *v108;
            *&v118[16] = v109;
            mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,(mpark::detail::Trait)1>::move_assignment(&v119, &v93);
            v122 = 1;
            if ((v96 & 1) != 0 && !v95)
            {
              v16 = v93;
              if (v93)
              {
                v93 = 0;
                v94 = 0;
                WTF::fastFree(v16, v12);
              }
            }
          }

          else
          {
            buf[0] = 0;
            v122 = 0;
          }

          if (v91)
          {
            v59 = v89;
            if (v89)
            {
              v89 = 0;
              LODWORD(v90) = 0;
              WTF::fastFree(v59, v12);
            }
          }
        }

        else
        {
          buf[0] = 0;
          v122 = 0;
        }

        if ((v107 & 1) != 0 && v104 == 1 && !v103)
        {
          v60 = v101;
          if (v101)
          {
            v101 = 0;
            v102 = 0;
            WTF::fastFree(v60, v12);
          }
        }
      }

      else
      {
        buf[0] = 0;
        v122 = 0;
      }

      if ((v122 & 1) == 0)
      {
        v17 = *v4;
        v18 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v75 = *(v4 + 3);
        if (!v75)
        {
          goto LABEL_172;
        }

        if (!v18)
        {
          goto LABEL_172;
        }

        (*(*v75 + 16))(v75, v17);
        if ((v122 & 1) == 0)
        {
          goto LABEL_172;
        }
      }

      WebKit::RemoteQueue::writeTextureWithCopy(v3, buf, &v116, v118, &v119);
      if ((v122 & 1) == 0)
      {
        goto LABEL_172;
      }

      if (!v121)
      {
        v61 = v119;
        if (v119)
        {
          v119 = 0;
          LODWORD(v120) = 0;
          WTF::fastFree(v61, v17);
        }
      }

      LOBYTE(v121) = -1;
      v62 = v116;
      if (v116)
      {
        v116 = 0;
        LODWORD(v117) = 0;
        WTF::fastFree(v62, v17);
      }

LABEL_167:
      if (v114 == 1 && !v113)
      {
        goto LABEL_169;
      }

      goto LABEL_172;
    }

    goto LABEL_97;
  }

  v36 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
  if ((v37 & 1) == 0)
  {
LABEL_98:
    v17 = *v4;
    v18 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v47 = *(v4 + 3);
    if (v47 && v18)
    {
      (*(*v47 + 16))(v47, v17);
    }

    goto LABEL_172;
  }

  v38 = *(v4 + 1);
  v39 = ((*(v4 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v40 = v39 - *v4;
  v24 = v38 >= v40;
  v41 = v38 - v40;
  if (!v24 || v41 <= 7)
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    v87 = *(v4 + 3);
    if (v87)
    {
      if (v38)
      {
        (*(*v87 + 16))(v87);
        v38 = *(v4 + 1);
      }
    }

    else
    {
      v38 = 0;
    }

    goto LABEL_236;
  }

  *(v4 + 2) = v39 + 1;
  if (!v39)
  {
LABEL_236:
    *v4 = 0;
    *(v4 + 1) = 0;
    v88 = *(v4 + 3);
    if (v88 && v38)
    {
      (*(*v88 + 16))(v88);
    }

    goto LABEL_98;
  }

  v42 = v36;
  v43 = *v39;
  IPC::VectorArgumentCoder<true,unsigned char,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v4, &v99);
  if ((v101 & 1) == 0)
  {
    v66 = *v4;
    v67 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v68 = *(v4 + 3);
    if (!v68)
    {
      goto LABEL_98;
    }

    if (!v67)
    {
      goto LABEL_98;
    }

    (*(*v68 + 16))(v68, v66);
    if ((v101 & 1) == 0)
    {
      goto LABEL_98;
    }
  }

  *buf = v42;
  *&buf[8] = v43;
  *&buf[16] = v99;
  v112 = v100;
  v113 = 1;
  WebKit::RemoteQueue::writeBufferWithCopy(v3, v42, v43, &buf[16]);
  if (v113)
  {
LABEL_169:
    v54 = *&buf[16];
    if (!*&buf[16])
    {
      goto LABEL_172;
    }

    *&buf[16] = 0;
    LODWORD(v112) = 0;
    goto LABEL_171;
  }

LABEL_172:
  if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3, v17, v18);
  }
}

void WebKit::RemoteRenderBundleEncoder::didReceiveStreamMessage(WebKit::RemoteRenderBundleEncoder *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 8) + 8);
  if (v3)
  {
    if ((*(v3 + 56) & 0x4000) != 0)
    {
      atomic_fetch_add(this + 2, 1u);
      v10 = *(a3 + 25);
      switch(*(a3 + 25))
      {
        case 0x5F6:
          WebKit::RemoteRenderBundleEncoder::destruct(this);
          break;
        case 0x5F7:
          IPC::Decoder::decode<std::tuple<unsigned int,std::optional<unsigned int>,std::optional<unsigned int>,std::optional<unsigned int>>>(buf, a3);
          if (BYTE4(v35) == 1)
          {
            WebKit::RemoteRenderBundleEncoder::draw(this);
          }

          break;
        case 0x5F8:
          IPC::Decoder::decode<std::tuple<unsigned int,std::optional<unsigned int>,std::optional<unsigned int>,std::optional<int>,std::optional<unsigned int>>>(buf, a3);
          if (BYTE4(v36) == 1)
          {
            WebKit::RemoteRenderBundleEncoder::drawIndexed(this);
          }

          break;
        case 0x5F9:
          IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>(buf, a3);
          if (buf[16] == 1)
          {
            WebKit::RemoteRenderBundleEncoder::drawIndexedIndirect(this, *buf, *&buf[8]);
          }

          break;
        case 0x5FA:
          IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>(buf, a3);
          if (buf[16] == 1)
          {
            WebKit::RemoteRenderBundleEncoder::drawIndirect(this, *buf, *&buf[8]);
          }

          break;
        case 0x5FB:
          IPC::ArgumentCoder<WebCore::ApplePayAMSUIRequest,void>::decode(a3, &v32);
          if ((v33 & 1) == 0)
          {
            v29 = *a3;
            v30 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v31 = *(a3 + 3);
            if (v31 && v30)
            {
              (*(*v31 + 16))(v31, v29);
            }

            goto LABEL_56;
          }

          v19 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if ((v20 & 1) == 0)
          {
            v24 = v32;
            if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v24, v20);
            }

            goto LABEL_56;
          }

          *buf = v32;
          *&buf[8] = v19;
          buf[16] = 1;
          WebKit::RemoteRenderBundleEncoder::finish(this, buf, v19);
          if (buf[16])
          {
            goto LABEL_47;
          }

          break;
        case 0x5FC:
          IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
          if (buf[8] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v27 = *(a3 + 3)) != 0) && v12 && ((*(*v27 + 16))(v27, v11), (buf[8]))
          {
            WebKit::RemoteRenderBundleEncoder::insertDebugMarker(this);
            goto LABEL_46;
          }

          break;
        case 0x5FD:
          WebKit::RemoteRenderBundleEncoder::popDebugGroup(this);
          break;
        case 0x5FE:
          IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
          if (buf[8] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v28 = *(a3 + 3)) != 0) && v12 && ((*(*v28 + 16))(v28, v11), (buf[8]))
          {
            WebKit::RemoteRenderBundleEncoder::pushDebugGroup(this);
            goto LABEL_46;
          }

          break;
        case 0x5FF:
          IPC::Decoder::decode<std::tuple<unsigned int,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>(buf, a3);
          if (v38 == 1)
          {
            WebKit::RemoteRenderBundleEncoder::setBindGroup(this, *buf, *&buf[8], buf[16], &v35);
            if ((v38 & 1) != 0 && v37 == 1)
            {
              v14 = v35;
              if (v35)
              {
                v35 = 0;
                LODWORD(v36) = 0;
                WTF::fastFree(v14, v11);
              }
            }
          }

          break;
        case 0x600:
          IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::WebGPU::IndexFormat,std::optional<unsigned long long>,std::optional<unsigned long long>>>(buf, a3);
          if (v38 == 1)
          {
            WebKit::RemoteRenderBundleEncoder::setIndexBuffer(this, *buf, buf[8], *&buf[16], v35, v36, v37);
          }

          break;
        case 0x601:
          IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
          if (buf[8] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v26 = *(a3 + 3)) != 0) && v12 && ((*(*v26 + 16))(v26, v11), (buf[8]))
          {
            WebKit::RemoteRenderBundleEncoder::setLabel(this, buf);
LABEL_46:
            if (buf[8])
            {
LABEL_47:
              v21 = *buf;
              *buf = 0;
              if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v21, v11);
              }
            }
          }

          break;
        case 0x602:
          v13 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
          if (v11)
          {
            WebKit::RemoteRenderBundleEncoder::setPipeline(this, v13);
          }

          break;
        case 0x603:
          IPC::Decoder::decode<std::tuple<unsigned int,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<unsigned long long>,std::optional<unsigned long long>>>(buf, a3);
          if (v38 == 1)
          {
            WebKit::RemoteRenderBundleEncoder::setVertexBuffer(this, *buf, *&buf[8], *&buf[16], v35, v36, v37);
          }

          break;
        case 0x604:
          IPC::Decoder::decode<std::tuple<unsigned int,std::optional<unsigned long long>,std::optional<unsigned long long>>>(buf, a3);
          if (v37 == 1)
          {
            WebKit::RemoteRenderBundleEncoder::unsetVertexBuffer(this, *buf, *&buf[8], *&buf[16], v35, v36);
          }

          break;
        default:
          v15 = qword_1ED6416C8;
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
            *buf = 136315394;
            *&buf[4] = v17;
            *&buf[12] = 2048;
            *&buf[14] = v18;
            _os_log_error_impl(&dword_19D52D000, v15, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
          }

LABEL_56:
          v11 = *a3;
          v12 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v25 = *(a3 + 3);
          if (v25 && v12)
          {
            (*(*v25 + 16))(v25, v11);
          }

          break;
      }

      if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this + 2);
        (*(*this + 8))(this, v11, v12);
      }
    }

    else
    {
      v5 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a3 + 25);
        if (v22 >= 0x107F)
        {
          v22 = 4223;
        }

        v23 = (&IPC::Detail::messageDescriptions)[3 * v22];
        *buf = 136315138;
        *&buf[4] = v23;
        _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteRenderBundleEncoder", buf, 0xCu);
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
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebKit::RemoteRenderBundle::didReceiveStreamMessage(WebKit::RemoteRenderBundle *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 5) + 8);
  if (v3)
  {
    if ((*(v3 + 56) & 0x4000) != 0)
    {
      atomic_fetch_add(this + 2, 1u);
      v10 = *(a3 + 25);
      if (v10 == 1542)
      {
        IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, v19);
        if (v19[8] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v19[8]))
        {
          result = WebKit::RemoteRenderBundle::setLabel(this, v19);
          if (v19[8])
          {
            result = *v19;
            *v19 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v11);
              }
            }
          }
        }
      }

      else if (v10 == 1541)
      {
        result = WebKit::RemoteQuerySet::destruct(this);
      }

      else
      {
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
          *v19 = 136315394;
          *&v19[4] = v17;
          v20 = 2048;
          v21 = v18;
          _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", v19, 0x16u);
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
        *v19 = 136315138;
        *&v19[4] = v15;
        _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteRenderBundle", v19, 0xCu);
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

void WebKit::RemoteRenderPassEncoder::didReceiveStreamMessage(WebKit::RemoteRenderPassEncoder *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 5) + 8);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19D94F058);
  }

  if ((*(v3 + 56) & 0x4000) == 0)
  {
    v5 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a3 + 25);
      if (v13 >= 0x107F)
      {
        v13 = 4223;
      }

      v14 = (&IPC::Detail::messageDescriptions)[3 * v13];
      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = v14;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteRenderPassEncoder", buf, 0xCu);
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

    return;
  }

  atomic_fetch_add(this + 2, 1u);
  v10 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0x607:
      if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) != 0)
      {
        WebKit::RemoteRenderPassEncoder::beginOcclusionQuery(this);
      }

      goto LABEL_110;
    case 0x608:
      WebKit::RemoteQuerySet::destruct(this);
      goto LABEL_110;
    case 0x609:
      IPC::Decoder::decode<std::tuple<unsigned int,std::optional<unsigned int>,std::optional<unsigned int>,std::optional<unsigned int>>>(buf, a3);
      if (BYTE4(v63) == 1)
      {
        WebKit::RemoteRenderPassEncoder::draw(this);
      }

      goto LABEL_110;
    case 0x60A:
      IPC::Decoder::decode<std::tuple<unsigned int,std::optional<unsigned int>,std::optional<unsigned int>,std::optional<int>,std::optional<unsigned int>>>(buf, a3);
      if (BYTE4(v64) == 1)
      {
        WebKit::RemoteRenderPassEncoder::drawIndexed(this);
      }

      goto LABEL_110;
    case 0x60B:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>(buf, a3);
      if (LOBYTE(buf[2]) == 1)
      {
        WebKit::RemoteRenderPassEncoder::drawIndexedIndirect(this, buf[0], buf[1]);
      }

      goto LABEL_110;
    case 0x60C:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>(buf, a3);
      if (LOBYTE(buf[2]) == 1)
      {
        WebKit::RemoteRenderPassEncoder::drawIndirect(this, buf[0], buf[1]);
      }

      goto LABEL_110;
    case 0x60D:
      WebKit::RemoteRenderPassEncoder::end(this);
      goto LABEL_110;
    case 0x60E:
      WebKit::RemoteRenderPassEncoder::endOcclusionQuery(this);
      goto LABEL_110;
    case 0x60F:
      IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(buf, a3);
      if (LOBYTE(buf[2]) == 1)
      {
        WebKit::RemoteRenderPassEncoder::executeBundles(this, buf);
        if (buf[2])
        {
          v16 = buf[0];
          if (buf[0])
          {
            buf[0] = 0;
            LODWORD(buf[1]) = 0;
            goto LABEL_103;
          }
        }
      }

      goto LABEL_110;
    case 0x610:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if (buf[1] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v49 = *(a3 + 3)) != 0) && v12 && ((*(*v49 + 16))(v49, v11), (buf[1]))
      {
        WebKit::RemoteRenderPassEncoder::insertDebugMarker(this);
        goto LABEL_32;
      }

      goto LABEL_110;
    case 0x611:
      WebKit::RemoteRenderPassEncoder::popDebugGroup(this);
      goto LABEL_110;
    case 0x612:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if (buf[1] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v48 = *(a3 + 3)) != 0) && v12 && ((*(*v48 + 16))(v48, v11), (buf[1]))
      {
        WebKit::RemoteRenderPassEncoder::pushDebugGroup(this);
        goto LABEL_32;
      }

      goto LABEL_110;
    case 0x613:
      IPC::Decoder::decode<std::tuple<unsigned int,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>(buf, a3);
      if (v66 == 1)
      {
        WebKit::RemoteRenderPassEncoder::setBindGroup(this, LODWORD(buf[0]), buf[1], buf[2], &v63);
        if ((v66 & 1) != 0 && v65 == 1)
        {
          v16 = v63;
          if (v63)
          {
            v63 = 0;
            LODWORD(v64) = 0;
            goto LABEL_103;
          }
        }
      }

      goto LABEL_110;
    case 0x614:
      IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::decode<IPC::Decoder>(a3, buf);
      if (v65 & 1) != 0 || (v52 = *a3, v53 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v54 = *(a3 + 3)) != 0) && v53 && ((*(*v54 + 16))(v54, v52), (v65))
      {
        mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,(mpark::detail::Trait)1>::move_assignment(&v58, buf);
        v61 = 1;
        if ((v65 & 1) == 0)
        {
          goto LABEL_88;
        }

        if (v64)
        {
          goto LABEL_88;
        }

        v41 = buf[0];
        if (!buf[0])
        {
          goto LABEL_88;
        }

        buf[0] = 0;
        LODWORD(buf[1]) = 0;
        WTF::fastFree(v41, v40);
        if (v61)
        {
          goto LABEL_88;
        }
      }

      else
      {
        LOBYTE(v58) = 0;
        v61 = 0;
      }

      v11 = *a3;
      v12 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v55 = *(a3 + 3);
      if (!v55)
      {
        goto LABEL_110;
      }

      if (!v12)
      {
        goto LABEL_110;
      }

      (*(*v55 + 16))(v55, v11);
      if ((v61 & 1) == 0)
      {
        goto LABEL_110;
      }

LABEL_88:
      mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,(mpark::detail::Trait)1>::move_assignment(buf, &v58);
      WebKit::RemoteRenderPassEncoder::setBlendConstant(this, buf);
      if (!v64)
      {
        v42 = buf[0];
        if (buf[0])
        {
          buf[0] = 0;
          LODWORD(buf[1]) = 0;
          WTF::fastFree(v42, v11);
        }
      }

      if ((v61 & 1) != 0 && !v60)
      {
        v16 = v58;
        if (v58)
        {
          v58 = 0;
          v59 = 0;
LABEL_103:
          WTF::fastFree(v16, v11);
        }
      }

      goto LABEL_110;
    case 0x615:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::WebGPU::IndexFormat,std::optional<unsigned long long>,std::optional<unsigned long long>>>(buf, a3);
      if (v66 == 1)
      {
        WebKit::RemoteRenderPassEncoder::setIndexBuffer(this, buf[0], LOBYTE(buf[1]), buf[2], v63, v64, v65);
      }

      goto LABEL_110;
    case 0x616:
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if (buf[1] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v50 = *(a3 + 3)) != 0) && v12 && ((*(*v50 + 16))(v50, v11), (buf[1]))
      {
        WebKit::RemoteRenderPassEncoder::setLabel(this, buf);
LABEL_32:
        if (buf[1])
        {
          v17 = buf[0];
          buf[0] = 0;
          if (v17)
          {
            if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v11);
            }
          }
        }
      }

      goto LABEL_110;
    case 0x617:
      v15 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v11)
      {
        WebKit::RemoteRenderPassEncoder::setPipeline(this, v15);
      }

      goto LABEL_110;
    case 0x618:
      IPC::ArgumentCoder<std::tuple<unsigned int,unsigned int,unsigned int,unsigned int>,void>::decode<IPC::Decoder>(a3, buf);
      if (buf[2] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v51 = *(a3 + 3)) != 0) && v12 && ((*(*v51 + 16))(v51, v11), (buf[2]))
      {
        WebKit::RemoteRenderPassEncoder::setScissorRect(this);
      }

      goto LABEL_110;
    case 0x619:
      if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) != 0)
      {
        WebKit::RemoteRenderPassEncoder::setStencilReference(this);
      }

      goto LABEL_110;
    case 0x61A:
      IPC::Decoder::decode<std::tuple<unsigned int,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<unsigned long long>,std::optional<unsigned long long>>>(buf, a3);
      if (v66 == 1)
      {
        WebKit::RemoteRenderPassEncoder::setVertexBuffer(this, LODWORD(buf[0]), buf[1], buf[2], v63, v64, v65);
      }

      goto LABEL_110;
    case 0x61B:
      v18 = *(a3 + 1);
      v19 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v20 = *a3;
      v21 = v19 - *a3;
      v22 = v18 >= v21;
      v23 = v18 - v21;
      if (!v22 || v23 <= 3)
      {
        goto LABEL_143;
      }

      *(a3 + 2) = v19 + 1;
      if (!v19)
      {
        goto LABEL_145;
      }

      v25 = *v19;
      v26 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v18 < v26 - v20 || v18 - (v26 - v20) <= 3)
      {
        goto LABEL_143;
      }

      *(a3 + 2) = v26 + 1;
      if (!v26)
      {
        goto LABEL_145;
      }

      v28 = *v26;
      v29 = ((v26 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v18 < v29 - v20 || v18 - (v29 - v20) <= 3)
      {
        goto LABEL_143;
      }

      *(a3 + 2) = v29 + 1;
      if (!v29)
      {
        goto LABEL_145;
      }

      v31 = *v29;
      v32 = ((v29 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v18 < v32 - v20 || v18 - (v32 - v20) <= 3)
      {
        goto LABEL_143;
      }

      *(a3 + 2) = v32 + 1;
      if (!v32)
      {
        goto LABEL_145;
      }

      v34 = *v32;
      v35 = ((v32 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v18 < v35 - v20 || v18 - (v35 - v20) <= 3)
      {
        goto LABEL_143;
      }

      *(a3 + 2) = v35 + 1;
      if (!v35)
      {
        goto LABEL_145;
      }

      v37 = *v35;
      v38 = ((v35 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v18 < v38 - v20 || v18 - (v38 - v20) <= 3)
      {
LABEL_143:
        *a3 = 0;
        *(a3 + 1) = 0;
        v56 = *(a3 + 3);
        if (v56)
        {
          if (v18)
          {
            (*(*v56 + 16))(v56);
            v18 = *(a3 + 1);
          }
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_145;
      }

      *(a3 + 2) = v38 + 1;
      if (!v38)
      {
LABEL_145:
        *a3 = 0;
        *(a3 + 1) = 0;
        v57 = *(a3 + 3);
        if (v57 && v18)
        {
          (*(*v57 + 16))(v57);
        }

        goto LABEL_105;
      }

      WebKit::RemoteRenderPassEncoder::setViewport(this, v25, v28, v31, v34, v37, *v38);
LABEL_110:
      if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, this + 2);
        (*(*this + 8))(this, v11, v12);
      }

      return;
    case 0x61C:
      IPC::Decoder::decode<std::tuple<unsigned int,std::optional<unsigned long long>,std::optional<unsigned long long>>>(buf, a3);
      if (v65 == 1)
      {
        WebKit::RemoteRenderPassEncoder::unsetVertexBuffer(this, LODWORD(buf[0]), buf[1], buf[2], v63, v64);
      }

      goto LABEL_110;
    default:
      v43 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v10 >= 0x107F)
        {
          v45 = 4223;
        }

        else
        {
          v45 = v10;
        }

        v46 = (&IPC::Detail::messageDescriptions)[3 * v45];
        v47 = *(a3 + 7);
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = v46;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = v47;
        _os_log_error_impl(&dword_19D52D000, v43, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
      }

LABEL_105:
      v11 = *a3;
      v12 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v44 = *(a3 + 3);
      if (v44 && v12)
      {
        (*(*v44 + 16))(v44, v11);
      }

      goto LABEL_110;
  }
}

WTF *IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a2, v8);
  if (v9)
  {
    goto LABEL_2;
  }

  v5 = *a2;
  v6 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    if (v6)
    {
      result = (*(*result + 16))(result, v5);
      if (v9)
      {
LABEL_2:
        *a1 = v8[0];
        *(a1 + 8) = v8[1];
        *(a1 + 16) = 1;
        return result;
      }

      v6 = a2[1];
      result = a2[3];
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  *a2 = 0;
  a2[1] = 0;
  if (result && v6)
  {
    v7 = *(*result + 16);

    return v7();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages11RemoteQueue19OnSubmittedWorkDoneENS2_22StreamServerConnectionEN6WebKit11RemoteQueueES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EDA48;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages11RemoteQueue19OnSubmittedWorkDoneENS2_22StreamServerConnectionEN6WebKit11RemoteQueueES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EDA48;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages11RemoteQueue19OnSubmittedWorkDoneENS2_22StreamServerConnectionEN6WebKit11RemoteQueueES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(*(a1 + 16) + 40);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3525;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v3, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages11RemoteQueue11WriteBufferENS2_22StreamServerConnectionEN6WebKit11RemoteQueueES9_FvNS_23ObjectIdentifierGenericINS8_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEyONSt3__18optionalIN7WebCore18SharedMemoryHandleEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EDA70;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages11RemoteQueue11WriteBufferENS2_22StreamServerConnectionEN6WebKit11RemoteQueueES9_FvNS_23ObjectIdentifierGenericINS8_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEyONSt3__18optionalIN7WebCore18SharedMemoryHandleEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EDA70;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages11RemoteQueue11WriteBufferENS2_22StreamServerConnectionEN6WebKit11RemoteQueueES9_FvNS_23ObjectIdentifierGenericINS8_20WebGPUIdentifierTypeENS_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEyONSt3__18optionalIN7WebCore18SharedMemoryHandleEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v2 = *(a1 + 8);
  v3 = *(*(a1 + 16) + 40);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3526;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::WebGPU::ImageDataLayout>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::WebGPU::ImageDataLayout,void>::decode(a2, a1);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages11RemoteQueue12WriteTextureENS2_22StreamServerConnectionEN6WebKit11RemoteQueueES9_FvRKNS8_6WebGPU16ImageCopyTextureEONSt3__18optionalIN7WebCore18SharedMemoryHandleEEERKNSA_15ImageDataLayoutERKN5mpark7variantIJNS_6VectorIjLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSA_12Extent3DDictEEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1)
{
  *a1 = &unk_1F10EDA98;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages11RemoteQueue12WriteTextureENS2_22StreamServerConnectionEN6WebKit11RemoteQueueES9_FvRKNS8_6WebGPU16ImageCopyTextureEONSt3__18optionalIN7WebCore18SharedMemoryHandleEEERKNSA_15ImageDataLayoutERKN5mpark7variantIJNS_6VectorIjLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSA_12Extent3DDictEEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EDA98;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages11RemoteQueue12WriteTextureENS2_22StreamServerConnectionEN6WebKit11RemoteQueueES9_FvRKNS8_6WebGPU16ImageCopyTextureEONSt3__18optionalIN7WebCore18SharedMemoryHandleEEERKNSA_15ImageDataLayoutERKN5mpark7variantIJNS_6VectorIjLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENSA_12Extent3DDictEEEEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v2 = *(a1 + 8);
  v3 = *(*(a1 + 16) + 40);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3527;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v2;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin2DDict>,(mpark::detail::Trait)1>::move_assignment(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  if (*(a2 + 16) != 255)
  {
    if (*(a2 + 16))
    {
      *a1 = *a2;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1, a2);
    }

    *(a1 + 16) = *(a2 + 16);
  }

  return a1;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::WebGPU::IndexFormat,std::optional<unsigned long long>,std::optional<unsigned long long>>>(uint64_t a1, uint64_t *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5 & 1) != 0 && (v6 = v4, v7 = IPC::Decoder::decode<WebCore::TextManipulationControllerExclusionRule::Type>(a2), (v7 & 0x100) != 0) && (v8 = v7, IPC::Decoder::decode<std::optional<unsigned long long>>(a2, &v14), (v15) && (result = IPC::Decoder::decode<std::optional<unsigned long long>>(a2, &v16), v17 == 1))
  {
    if (v15)
    {
      *a1 = v6;
      *(a1 + 8) = v8;
      v10 = v16;
      *(a1 + 16) = v14;
      *(a1 + 32) = v10;
      *(a1 + 48) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 48) = 0;
    v11 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
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
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned int,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<unsigned long long>,std::optional<unsigned long long>>>(uint64_t a1, uint64_t *a2)
{
  v4 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 3)
  {
LABEL_13:
    *a2 = 0;
    a2[1] = 0;
    v14 = a2[3];
    if (v14)
    {
      if (v6)
      {
        (*(*v14 + 16))(v14);
        v5 = *a2;
        v6 = a2[1];
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
    a2[1] = 0;
    v15 = a2[3];
    if (v15 && v6)
    {
      (*(*v15 + 16))(v15, v5);
    }

    goto LABEL_17;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_16;
  }

  v8 = *v4;
  v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v10)
  {
    v11 = v9;
    IPC::Decoder::decode<std::optional<unsigned long long>>(a2, &v18);
    if (v19)
    {
      result = IPC::Decoder::decode<std::optional<unsigned long long>>(a2, &v20);
      if (v21 == 1)
      {
        if (v19)
        {
          *a1 = v8;
          *(a1 + 8) = v11;
          v13 = v20;
          *(a1 + 16) = v18;
          *(a1 + 32) = v13;
          *(a1 + 48) = 1;
          return result;
        }

        __break(1u);
        goto LABEL_13;
      }
    }
  }

LABEL_17:
  *a1 = 0;
  *(a1 + 48) = 0;
  v16 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result && v16)
  {
    v17 = *(*result + 16);

    return v17();
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned int,std::optional<unsigned long long>,std::optional<unsigned long long>>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 3)
  {
LABEL_12:
    *a2 = 0;
    *(a2 + 1) = 0;
    v10 = *(a2 + 3);
    if (v10)
    {
      if (v6)
      {
        (*(*v10 + 16))(v10);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_15;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_15:
    *a2 = 0;
    *(a2 + 1) = 0;
    v11 = *(a2 + 3);
    if (v11 && v6)
    {
      (*(*v11 + 16))(v11, v5);
    }

    goto LABEL_16;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_15;
  }

  v8 = *v4;
  IPC::Decoder::decode<std::optional<unsigned long long>>(a2, &v14);
  if (v15)
  {
    result = IPC::Decoder::decode<std::optional<unsigned long long>>(a2, &v16);
    if (v17 == 1)
    {
      if (v15)
      {
        *a1 = v8;
        *(a1 + 8) = v14;
        *(a1 + 24) = v16;
        *(a1 + 40) = 1;
        return result;
      }

      __break(1u);
      goto LABEL_12;
    }
  }

LABEL_16:
  *a1 = 0;
  *(a1 + 40) = 0;
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

uint64_t IPC::Decoder::decode<std::tuple<unsigned int,std::optional<unsigned int>,std::optional<unsigned int>,std::optional<unsigned int>>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v17 = *(a2 + 3);
    if (v17)
    {
      if (v6)
      {
        (*(*v17 + 16))(v17);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_14;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_14:
    *a2 = 0;
    *(a2 + 1) = 0;
    v18 = *(a2 + 3);
    if (v18 && v6)
    {
      (*(*v18 + 16))(v18, v5);
    }

    goto LABEL_15;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_14;
  }

  v8 = *v4;
  v9 = IPC::Decoder::decode<std::optional<unsigned int>>(a2);
  if (v10)
  {
    v11 = v9;
    v12 = IPC::Decoder::decode<std::optional<unsigned int>>(a2);
    if (v13)
    {
      v14 = v12;
      result = IPC::Decoder::decode<std::optional<unsigned int>>(a2);
      if (v16)
      {
        *a1 = v8;
        *(a1 + 4) = v11;
        *(a1 + 12) = v14;
        *(a1 + 20) = result;
        *(a1 + 28) = 1;
        return result;
      }
    }
  }

LABEL_15:
  *a1 = 0;
  *(a1 + 28) = 0;
  v19 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v19)
  {
    v20 = *(*result + 16);

    return v20();
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<unsigned int,std::optional<unsigned int>,std::optional<unsigned int>,std::optional<int>,std::optional<unsigned int>>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 3)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v20 = *(a2 + 3);
    if (v20)
    {
      if (v6)
      {
        (*(*v20 + 16))(v20);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_15;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_15:
    *a2 = 0;
    *(a2 + 1) = 0;
    v21 = *(a2 + 3);
    if (v21 && v6)
    {
      (*(*v21 + 16))(v21, v5);
    }

    goto LABEL_16;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_15;
  }

  v8 = *v4;
  v9 = IPC::Decoder::decode<std::optional<unsigned int>>(a2);
  if (v10)
  {
    v11 = v9;
    v12 = IPC::Decoder::decode<std::optional<unsigned int>>(a2);
    if (v13)
    {
      v14 = v12;
      v15 = IPC::Decoder::decode<std::optional<int>>(a2);
      if (v16)
      {
        v17 = v15;
        result = IPC::Decoder::decode<std::optional<unsigned int>>(a2);
        if (v19)
        {
          *a1 = v8;
          *(a1 + 4) = v11;
          *(a1 + 12) = v14;
          *(a1 + 20) = v17;
          *(a1 + 28) = result;
          *(a1 + 36) = 1;
          return result;
        }
      }
    }
  }

LABEL_16:
  *a1 = 0;
  *(a1 + 36) = 0;
  v22 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v22)
  {
    v23 = *(*result + 16);

    return v23();
  }

  return result;
}

uint64_t *IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>(_BYTE *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[16] & 1) == 0)
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

void IPC::Decoder::decode<std::tuple<unsigned int,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>(_BYTE *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<std::tuple<unsigned int,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[48] & 1) == 0)
  {
    v4 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v5 = a2[3];
    if (v5 && v4 != 0)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

uint64_t mpark::detail::move_assignment<mpark::detail::traits<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,(mpark::detail::Trait)1>::move_assignment(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  if (*(a2 + 32) != 255)
  {
    if (*(a2 + 32))
    {
      v4 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v4;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
    }

    *(a1 + 32) = *(a2 + 32);
  }

  return a1;
}

WebKit::NetworkTaskCocoa *WebKit::NetworkTaskCocoa::NetworkTaskCocoa(WebKit::NetworkTaskCocoa *this, WebKit::NetworkSession *a2)
{
  *this = &unk_1F10EDA00;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v4 = *(a2 + 1);
  atomic_fetch_add(v4, 1u);
  *(this + 1) = v4;
  *(this + 16) = 0;
  *(this + 3) = 0x4122750000000000;
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  v12 = v6;
  v9 = *(v5 + 232);
  v7 = (v5 + 232);
  v8 = v9;
  if (v9)
  {
    v8 = WTF::HashTable<PAL::SessionID,PAL::SessionID,WTF::IdentityExtractor,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<PAL::SessionID>,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(v7, &v12) != 0;
    v6 = *(a2 + 3);
  }

  v10 = v6 > -2 || v8;
  *(this + 32) = v10;
  return this;
}

uint64_t WebKit::NetworkTaskCocoa::shouldApplyCookiePolicyForThirdPartyCloaking(WebKit::NetworkTaskCocoa *this)
{
  v1 = *(this + 1);
  if (!v1 || (v2 = *(v1 + 8)) == 0)
  {
    __break(0xC471u);
    goto LABEL_13;
  }

  v4 = *(v2 + 16);
  v3 = (v2 + 16);
  *v3 = v4 + 1;
  v5 = *(v3 + 2);
  v10 = *(v3 + 1);
  v6 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v5 + 248), &v10);
  if (!v6)
  {
    v9 = *v3;
    if (*v3)
    {
      result = 0;
      goto LABEL_7;
    }

LABEL_11:
    __break(0xC471u);
    JUMPOUT(0x19D95029CLL);
  }

  v7 = v6 + 2;
  ++v6[2];
  if (!*v3)
  {
    goto LABEL_11;
  }

  --*v3;
  result = WebCore::NetworkStorageSession::trackingPreventionEnabled(v6);
  v9 = *v7;
  if (!*v7)
  {
    __break(0xC471u);
LABEL_13:
    JUMPOUT(0x19D95027CLL);
  }

  v3 = v7;
LABEL_7:
  *v3 = v9 - 1;
  return result;
}

void sub_19D9502C0(_Unwind_Exception *a1)
{
  if (*v1)
  {
    --*v1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

uint64_t WebKit::NetworkTaskCocoa::statelessCookieStorage(WebKit::NetworkTaskCocoa *this)
{
  if (_MergedGlobals_57)
  {
    result = qword_1ED641C38;
    if (qword_1ED641C38)
    {
      return result;
    }
  }

  else
  {
    qword_1ED641C38 = 0;
    _MergedGlobals_57 = 1;
  }

  v2 = [objc_alloc(MEMORY[0x1E695AC00]) _initWithIdentifier:0 private:1];
  v3 = qword_1ED641C38;
  qword_1ED641C38 = v2;
  if (v3)
  {

    v2 = qword_1ED641C38;
  }

  [v2 setCookieAcceptPolicy:1];
  return qword_1ED641C38;
}

uint64_t WebKit::NetworkTaskCocoa::lastCNAMEDomain@<X0>(WTF::StringImpl **a1@<X0>, WTF::StringImpl **a2@<X8>)
{
  if (*a1 && WTF::StringImpl::endsWith())
  {
    v4 = *a1 ? *(*a1 + 1) - 1 : -1;
    WTF::String::left(a1, v4, &v10);
    v6 = v10;
    v10 = 0;
    v7 = *a1;
    *a1 = v6;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v5);
      }

      v8 = v10;
      v10 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v5);
      }
    }
  }

  return WebCore::RegistrableDomain::uncheckedCreateFromHost(a1, a2);
}

WTF::StringImpl *WTF::String::left@<X0>(WTF::StringImpl **this@<X0>, unsigned int a2@<W1>, WTF::StringImpl **a3@<X8>)
{
  result = *this;
  if (result)
  {
    if (*(result + 1) > a2)
    {
      return WTF::StringImpl::substring(result);
    }

    else
    {
      atomic_fetch_add_explicit(result, 2u, memory_order_relaxed);
      *a3 = result;
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t WebCore::RegistrableDomain::uncheckedCreateFromHost@<X0>(WebCore::RegistrableDomain *this@<X0>, WTF::StringImpl **a2@<X8>)
{
  WebCore::PublicSuffixStore::singleton(this);
  result = WebCore::PublicSuffixStore::topPrivatelyControlledDomain();
  if (v7 && *(v7 + 1))
  {
    *a2 = v7;
  }

  else
  {
    WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(this, a2);
    result = v7;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v7, v6);
      }
    }
  }

  return result;
}

void sub_19D95050C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WebKit::NetworkTaskCocoa::setCookieTransformForThirdPartyRequest(void *a1, WebCore::ResourceRequestBase *this)
{
  result = WebCore::ResourceRequestBase::isThirdParty(this);
  if (result)
  {
    [(*(*a1 + 40))(a1) set_cookieTransformCallback:0];
    result = WebCore::Quirks::needsPartitionedCookies(this, v5);
    if (result)
    {
      v6 = a1[1];
      if (v6 && (v7 = *(v6 + 8)) != 0)
      {
        v8 = *(v7 + 32);
        v26 = *(v7 + 24);
        result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v8 + 248), &v26);
        if (!result)
        {
          return result;
        }

        v10 = result;
        v11 = *(result + 8) + 1;
        *(result + 8) = v11;
        if (*(result + 104) == 1)
        {
          WebCore::NetworkStorageSession::cookiePartitionIdentifier(&v25, this, v9);
          WebCore::ResourceRequestBase::url(this);
          WTF::URL::isolatedCopy();
          v12 = (*(*a1 + 40))(a1);
          v23 = 0;
          objc_initWeak(&v23, v12);
          WTF::String::isolatedCopy();
          v26 = v20;
          v27 = v21;
          v28 = v22;
          v29 = 0;
          objc_moveWeak(&v29, &v23);
          v13 = v24;
          v24 = 0;
          v30 = v13;
          v14 = malloc_type_malloc(0x58uLL, 0x10E0040E3AAA1FEuLL);
          *v14 = MEMORY[0x1E69E9818];
          *(v14 + 1) = 50331650;
          *(v14 + 2) = WTF::BlockPtr<NSArray<NSHTTPCookie *> * ()(NSArray<NSHTTPCookie *> *)>::fromCallable<WebKit::NetworkTaskCocoa::setCookieTransformForThirdPartyRequest(WebCore::ResourceRequest const&,WebKit::NetworkTaskCocoa::IsRedirect)::$_0>(WebKit::NetworkTaskCocoa::setCookieTransformForThirdPartyRequest(WebCore::ResourceRequest const&,WebKit::NetworkTaskCocoa::IsRedirect)::$_0)::{lambda(void *,NSArray<NSHTTPCookie *> *)#1}::__invoke;
          *(v14 + 3) = &WTF::BlockPtr<NSArray<NSHTTPCookie *> * ()(NSArray<NSHTTPCookie *> *)>::fromCallable<WebKit::NetworkTaskCocoa::setCookieTransformForThirdPartyRequest(WebCore::ResourceRequest const&,WebKit::NetworkTaskCocoa::IsRedirect)::$_0>(WebKit::NetworkTaskCocoa::setCookieTransformForThirdPartyRequest(WebCore::ResourceRequest const&,WebKit::NetworkTaskCocoa::IsRedirect)::$_0)::descriptor;
          WTF::URL::URL(v14 + 32, &v26);
          *(v14 + 9) = 0;
          objc_moveWeak(v14 + 9, &v29);
          *(v14 + 10) = v30;
          v30 = 0;
          objc_destroyWeak(&v29);
          v16 = v26;
          v26 = 0;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v15);
          }

          [(*(*a1 + 40))(a1) set_cookieTransformCallback:v14];
          _Block_release(v14);
          v18 = v24;
          v24 = 0;
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v17);
          }

          objc_destroyWeak(&v23);
          result = v25;
          v25 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v19);
            }
          }

          v11 = *(v10 + 8);
        }

        if (v11)
        {
          *(v10 + 8) = v11 - 1;
          return result;
        }

        __break(0xC471u);
      }

      else
      {
        __break(0xC471u);
      }

      JUMPOUT(0x19D950824);
    }
  }

  return result;
}

void sub_19D950848(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, WTF::StringImpl *a17, WTF::StringImpl *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, WTF::StringImpl *a24)
{
  v29 = *(v25 + 32);
  *(v25 + 32) = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, a2);
  }

  if (a24 && atomic_fetch_add_explicit(a24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a24, a2);
  }

  objc_destroyWeak((v27 + 40));
  if (a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, v30);
  }

  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, v30);
  }

  objc_destroyWeak((v26 + 40));
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v31);
  }

  if (a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, v31);
  }

  v32 = *(v24 + 8);
  if (v32)
  {
    *(v24 + 8) = v32 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

uint64_t WebKit::NetworkTaskCocoa::setCookieTransformForFirstPartyRequest(WebCore::ResourceRequest const&)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  objc_destroyWeak((a1 + 144));
  if (*(a1 + 128) == 1)
  {
    v8 = *(a1 + 120);
    *(a1 + 120) = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v4);
      }
    }
  }

  if (*(a1 + 88) == 1)
  {
    v9 = *(a1 + 80);
    *(a1 + 80) = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v4);
      }
    }
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  return a1;
}

void WebKit::NetworkTaskCocoa::setCookieTransform(WebKit::NetworkTaskCocoa *a1, WebCore::ResourceRequestBase *this)
{
  if (WebCore::ResourceRequestBase::isThirdParty(this))
  {

    WebKit::NetworkTaskCocoa::setCookieTransformForThirdPartyRequest(a1, this);
  }

  else
  {
    if (!WebKit::NetworkTaskCocoa::shouldApplyCookiePolicyForThirdPartyCloaking(a1))
    {
      return;
    }

    if (!WebCore::ResourceRequestBase::isThirdParty(this))
    {
      PartyForCookies = WebCore::ResourceRequestBase::firstPartyForCookies(this);
      v5 = *PartyForCookies;
      if (*PartyForCookies)
      {
        atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
      }

      v54 = v5;
      v6 = *(PartyForCookies + 24);
      v55 = *(PartyForCookies + 8);
      v56 = v6;
      WTF::URL::host(&v54);
      if ((v7 & 0x100000000) != 0)
      {
        WTF::String::String();
      }

      else
      {
        WTF::String::String();
      }

      v8 = *(a1 + 1);
      if (v8)
      {
        v9 = *(v8 + 8);
        if (v9)
        {
          v10 = 0;
          ++*(v9 + 16);
          goto LABEL_11;
        }
      }

      else
      {
        v9 = 0;
      }

      v10 = 1;
LABEL_11:
      WebCore::ResourceRequestBase::url(this);
      WTF::URL::isolatedCopy();
      WTF::URL::isolatedCopy();
      if (v10)
      {
        __break(0xC471u);
        JUMPOUT(0x19D950F74);
      }

      WebKit::NetworkSession::firstPartyHostCNAMEDomain(v9, &v53, v11, &v41);
      if (v42)
      {
        WebCore::RegistrableDomain::isolatedCopy(&v44);
        v13 = 1;
      }

      else
      {
        v13 = 0;
        LOBYTE(v44) = 0;
      }

      v45 = v13;
      WebKit::NetworkSession::firstPartyHostIPAddress(v9, &v53, v12, v40);
      if (v40[20])
      {
        WebCore::IPAddress::isolatedCopy(&v46, v40);
        v14 = 1;
      }

      else
      {
        v14 = 0;
        LOBYTE(v46) = 0;
      }

      v47 = v14;
      v15 = *(a1 + 1);
      if (v15 && (v16 = *(v15 + 8)) != 0)
      {
        LOBYTE(v38) = 0;
        v39 = 0;
        if (*(v16 + 144) == 1)
        {
          v35 = *(v16 + 136);
          if (v35)
          {
            atomic_fetch_add_explicit(v35, 2u, memory_order_relaxed);
          }

          v38 = v35;
          v17 = 1;
          v39 = 1;
          WebCore::RegistrableDomain::isolatedCopy(&v48);
        }

        else
        {
          v17 = 0;
          LOBYTE(v48) = 0;
        }

        v49 = v17;
        v50 = *(a1 + 3);
        v18 = (*(*a1 + 40))(a1);
        v51 = 0;
        objc_initWeak(&v51, v18);
        WebCore::RegistrableDomain::RegistrableDomain(&v37, &v54);
        WTF::String::isolatedCopy();
        v19 = *(v9 + 32);
        v57[0] = *(v9 + 24);
        v52 = *(WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v19 + 248), v57) + 153);
        WebKit::NetworkTaskCocoa::setCookieTransformForFirstPartyRequest(WebCore::ResourceRequest const&)::$_0::$_0(v57, v43);
        v20 = malloc_type_malloc(0xC8uLL, 0x10E20402A754DFAuLL);
        *v20 = MEMORY[0x1E69E9818];
        v20[1] = 50331650;
        v20[2] = WTF::BlockPtr<NSArray<NSHTTPCookie *> * ()(NSArray<NSHTTPCookie *> *)>::fromCallable<WebKit::NetworkTaskCocoa::setCookieTransformForFirstPartyRequest(WebCore::ResourceRequest const&)::$_0>(WebKit::NetworkTaskCocoa::setCookieTransformForFirstPartyRequest(WebCore::ResourceRequest const&)::$_0)::{lambda(void *,NSArray<NSHTTPCookie *> *)#1}::__invoke;
        v20[3] = &WTF::BlockPtr<NSArray<NSHTTPCookie *> * ()(NSArray<NSHTTPCookie *> *)>::fromCallable<WebKit::NetworkTaskCocoa::setCookieTransformForFirstPartyRequest(WebCore::ResourceRequest const&)::$_0>(WebKit::NetworkTaskCocoa::setCookieTransformForFirstPartyRequest(WebCore::ResourceRequest const&)::$_0)::descriptor;
        WebKit::NetworkTaskCocoa::setCookieTransformForFirstPartyRequest(WebCore::ResourceRequest const&)::$_0::$_0((v20 + 4), v57);
        WebKit::NetworkTaskCocoa::setCookieTransformForFirstPartyRequest(WebCore::ResourceRequest const&)::$_0::~$_0(v57, v21);
        v22 = (*(*a1 + 40))(a1);
        v23 = v22;
        if (v22)
        {
          v24 = v22;
        }

        [v23 set_cookieTransformCallback:v20];
        if (v23)
        {
        }

        _Block_release(v20);
        WebKit::NetworkTaskCocoa::setCookieTransformForFirstPartyRequest(WebCore::ResourceRequest const&)::$_0::~$_0(v43, v25);
        v27 = v37;
        v37 = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v26);
        }

        if (v39 == 1)
        {
          v31 = v38;
          v38 = 0;
          if (v31)
          {
            if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v31, v26);
            }
          }
        }

        if (v42 == 1)
        {
          v32 = v41;
          v41 = 0;
          if (v32)
          {
            if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v32, v26);
            }
          }
        }

        v28 = *(v9 + 16);
        if (v28)
        {
          *(v9 + 16) = v28 - 1;
          v29 = v53;
          v53 = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v26);
          }

          v30 = v54;
          v54 = 0;
          if (v30)
          {
            if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v30, v26);
            }
          }

          return;
        }

        __break(0xC471u);
      }

      else
      {
        __break(0xC471u);
      }

      JUMPOUT(0x19D950F54);
    }

    v33 = (*(*a1 + 40))(a1);
    v36 = v33;
    if (v33)
    {
      v34 = v33;
      v33 = v36;
    }

    [v33 set_cookieTransformCallback:0];
    if (v36)
    {
    }
  }
}

uint64_t sub_19D950F98(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, WTF::StringImpl *a11, WTF::StringImpl *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, char a18, WTF::StringImpl *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, WTF::StringImpl *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, WTF::StringImpl *a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, WTF::StringImpl *a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, WTF::StringImpl *a40, WTF::StringImpl *a41)
{
  if (a18 == 1 && a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  if (a24 && atomic_fetch_add_explicit(a24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a24, a2);
  }

  if (a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, a2);
  }

  if (v42)
  {
LABEL_14:
    if (a40 && atomic_fetch_add_explicit(a40, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a40, a2);
    }

    if (a41)
    {
      if (atomic_fetch_add_explicit(a41, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a41, a2);
      }
    }

    _Unwind_Resume(exception_object);
  }

  v44 = *(v41 + 16);
  if (v44)
  {
    *(v41 + 16) = v44 - 1;
    goto LABEL_14;
  }

  result = 290;
  __break(0xC471u);
  return result;
}

void WebKit::NetworkTaskCocoa::blockCookies(WebKit::NetworkTaskCocoa *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    v2 = (*(*this + 40))(this);
    v3 = v2;
    if (v2)
    {
      v2 = v2;
    }

    v4 = WebKit::NetworkTaskCocoa::statelessCookieStorage(v2);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    [v3 _setExplicitCookieStorage:{objc_msgSend(v5, "_cookieStorage")}];
    if (v5)
    {
    }

    if (v3)
    {
    }

    *(this + 16) = 1;
  }
}

void sub_19D9512BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::NetworkTaskCocoa::requestThirdPartyCookieBlockingDecision(WebKit::NetworkTaskCocoa *this, const WebCore::ResourceRequest *a2)
{
  v4 = (*(*this + 48))(this);
  v5 = v4 == 2;
  v6 = *(this + 1);
  if (!v6 || (v7 = *(v6 + 8)) == 0)
  {
    __break(0xC471u);
    goto LABEL_20;
  }

  v8 = v4;
  v10 = *(v7 + 16);
  v9 = v7 + 16;
  *v9 = v10 + 1;
  v11 = *(v9 + 16);
  v20 = *(v9 + 8);
  v12 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v11 + 248), &v20);
  if (!v12)
  {
    v16 = *v9;
    if (*v9)
    {
      goto LABEL_10;
    }

LABEL_18:
    __break(0xC471u);
    JUMPOUT(0x19D951500);
  }

  v13 = (v12 + 8);
  ++*(v12 + 8);
  if (!*v9)
  {
    goto LABEL_18;
  }

  --*v9;
  if (v8 == 2)
  {
    v16 = *v13;
    if (!*v13)
    {
      goto LABEL_19;
    }

    v5 = 1;
    v9 = v12 + 8;
LABEL_10:
    *v9 = v16 - 1;
    return v5;
  }

  (*(*this + 16))(this);
  (*(*this + 24))(this);
  WebKit::NetworkTaskCocoa::shouldRelaxThirdPartyCookieBlocking(this);
  v14 = WebCore::NetworkStorageSession::thirdPartyCookieBlockingDecisionForRequest();
  if (!*v13)
  {
LABEL_19:
    __break(0xC471u);
LABEL_20:
    JUMPOUT(0x19D9514E0);
  }

  v5 = v14;
  --*v13;
  if (v14 == 2)
  {
    if (WebCore::ResourceRequestBase::isThirdParty(a2) && (v17 = WebCore::ResourceRequestBase::url(a2), v18 = WTF::URL::host(v17), (WebKit::isKnownTrackerAddressOrDomain(v18, v19 & 0xFFFFFFFFFFLL) & 1) != 0))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return v5;
}

void sub_19D951524(_Unwind_Exception *a1)
{
  if (*v1)
  {
    --*v1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

BOOL WebKit::NetworkTaskCocoa::shouldRelaxThirdPartyCookieBlocking(WebKit::NetworkTaskCocoa *this)
{
  v1 = *(this + 1);
  if (!v1 || (v2 = *(v1 + 8)) == 0)
  {
    __break(0xC471u);
    goto LABEL_11;
  }

  ++*(v2 + 16);
  v3 = *(v2 + 32);
  v7[0] = (*(*this + 32))(this);
  v7[1] = v4;
  result = (v4 & 1) != 0 && *(v3 + 384) && WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((v3 + 384), v7) != 0;
  v6 = *(v2 + 16);
  if (!v6)
  {
    __break(0xC471u);
LABEL_11:
    JUMPOUT(0x19D95161CLL);
  }

  *(v2 + 16) = v6 - 1;
  return result;
}

void sub_19D951640(_Unwind_Exception *a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    *(v1 + 16) = v2 - 1;
    _Unwind_Resume(a1);
  }

  __break(0xC471u);
}

uint64_t WebKit::NetworkTaskCocoa::isOptInCookiePartitioningEnabled(WebKit::NetworkTaskCocoa *this)
{
  v1 = *(this + 1);
  if (!v1 || (v2 = *(v1 + 8)) == 0)
  {
    __break(0xC471u);
    goto LABEL_10;
  }

  v3 = *(v2 + 32);
  v8 = *(v2 + 24);
  v4 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v3 + 248), &v8);
  if (!v4)
  {
    v6 = 0;
    return v6 & 1;
  }

  v5 = *(v4 + 8);
  *(v4 + 8) = v5 + 1;
  if (v5 == -1)
  {
    __break(0xC471u);
LABEL_10:
    JUMPOUT(0x19D9516F8);
  }

  v6 = *(v4 + 104);
  *(v4 + 8) = v5;
  return v6 & 1;
}

void *WebKit::NetworkTaskCocoa::updateTaskWithFirstPartyForSameSiteCookies(void *this, NSURLSessionTask *a2, const WebCore::ResourceRequest *a3)
{
  if (BYTE1(a2[18].super.isa))
  {
    v4 = this;
    isSameSite = WebCore::ResourceRequestBase::isSameSite(a2);
    if (isSameSite)
    {
      v6 = [objc_msgSend(v4 "currentRequest")];
    }

    else
    {
      v6 = WTF::URL::emptyNSURL(isSameSite);
    }

    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    [v4 set_siteForCookies:v7];
    if (v7)
    {
    }

    isTopSite = WebCore::ResourceRequestBase::isTopSite(a2);

    return [v4 set_isTopLevelNavigation:isTopSite];
  }

  return this;
}

void sub_19D9517C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::NetworkTaskCocoa::updateTaskWithStoragePartitionIdentifier(WebKit::NetworkTaskCocoa *this, const WebCore::ResourceRequest *a2)
{
  result = WebKit::NetworkTaskCocoa::isOptInCookiePartitioningEnabled(this);
  if (result)
  {
    v5 = *(this + 1);
    if (v5 && (v6 = *(v5 + 8)) != 0)
    {
      v7 = *(v6 + 32);
      v14 = *(v6 + 24);
      result = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v7 + 248), &v14);
      if (!result)
      {
        return result;
      }

      v8 = result;
      ++*(result + 8);
      (*(*this + 40))(this);
      result = objc_opt_respondsToSelector();
      if (result)
      {
        WebCore::NetworkStorageSession::cookiePartitionIdentifier(&v13, a2, v9);
        WTF::String::createNSString(&v13, &v14);
        [(*(*this + 40))(this) set_storagePartitionIdentifier:v14];
        v11 = v14;
        v14 = 0;
        if (v11)
        {
        }

        result = v13;
        v13 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v10);
          }
        }
      }

      v12 = *(v8 + 8);
      if (v12)
      {
        *(v8 + 8) = v12 - 1;
        return result;
      }

      __break(0xC471u);
    }

    else
    {
      __break(0xC471u);
    }

    JUMPOUT(0x19D951930);
  }

  return result;
}

void sub_19D951954(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  v12 = *(v10 + 8);
  if (v12)
  {
    *(v10 + 8) = v12 - 1;
    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
}

uint64_t WebKit::NetworkTaskCocoa::willPerformHTTPRedirection(uint64_t a1, WebCore::ResourceResponseBase *a2, uint64_t a3, uint64_t *a4)
{
  v113 = *MEMORY[0x1E69E9840];
  [WebCore::ResourceRequest::nsURLRequest() attribution];
  WebCore::ResourceRequestBase::setIsAppInitiated(a3);
  WebKit::NetworkTaskCocoa::setCookieTransform(a1, a3);
  if ((*(a1 + 16) & 1) == 0)
  {
    v25 = WebKit::NetworkTaskCocoa::requestThirdPartyCookieBlockingDecision(a1, a3);
    if (v25 == 1)
    {
      WebKit::NetworkTaskCocoa::blockCookies(a1);
    }

    else
    {
      v26 = v25;
      v27 = [WebCore::ResourceRequest::nsURLRequest() mutableCopy];
      if (WebKit::NetworkTaskCocoa::isOptInCookiePartitioningEnabled(a1) && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v27 _setAllowOnlyPartitionedCookies:v26 == 2];
        MEMORY[0x19EB06210](buf, v27);
        WebCore::ResourceRequestBase::RequestData::operator=(a3, buf);
        v29 = v107;
        v107 = 0;
        v30 = *(a3 + 152);
        *(a3 + 152) = v29;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v28);
        }

        v31 = v108;
        v108 = 0;
        v32 = *(a3 + 160);
        *(a3 + 160) = v31;
        if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v32, v28);
        }

        v33 = v109;
        v109 = 0;
        v34 = *(a3 + 168);
        *(a3 + 168) = v33;
        if (v34)
        {
          WTF::RefCounted<WebCore::FormData>::deref(v34);
        }

        *(a3 + 176) = v110;
        *(a3 + 184) = v111;
        v35 = v112;
        v112 = 0;
        v36 = *(a3 + 192);
        *(a3 + 192) = v35;
        if (v36)
        {
        }

        WebCore::ResourceRequest::~ResourceRequest(buf);
      }

      if (v27)
      {
      }
    }

    goto LABEL_62;
  }

  if ((*(*a1 + 48))(a1) == 2)
  {
    goto LABEL_62;
  }

  PartyForCookies = WebCore::ResourceRequestBase::firstPartyForCookies(a3);
  v9 = WebCore::ResourceRequestBase::url(a3);
  v10 = WebCore::ResourceResponseBase::url(a2);
  if ((byte_1ED641C31 & 1) == 0)
  {
    v91 = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v94 = *buf;
    WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v94, &v95);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v92 = *buf;
    WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v92, &v93);
    WTF::HashMap<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebCore::RegistrableDomain>(buf, &v91, &v95, &v93);
    v77 = v93;
    v93 = 0;
    if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v77, v76);
    }

    v78 = v92;
    v92 = 0;
    if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v78, v76);
    }

    v79 = v95;
    v95 = 0;
    if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v79, v76);
    }

    v80 = v94;
    v94 = 0;
    if (v80 && atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v80, v76);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v94 = *buf;
    WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v94, &v95);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v92 = *buf;
    WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v92, &v93);
    WTF::HashMap<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebCore::RegistrableDomain>(buf, &v91, &v95, &v93);
    v82 = v93;
    v93 = 0;
    if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v82, v81);
    }

    v83 = v92;
    v92 = 0;
    if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v83, v81);
    }

    v84 = v95;
    v95 = 0;
    if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v84, v81);
    }

    v85 = v94;
    v94 = 0;
    if (v85 && atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v85, v81);
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v94 = *buf;
    WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v94, &v95);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v92 = *buf;
    WebCore::RegistrableDomain::uncheckedCreateFromRegistrableDomainString(&v92, &v93);
    WTF::HashMap<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebCore::RegistrableDomain>(buf, &v91, &v95, &v93);
    v87 = v93;
    v93 = 0;
    if (v87 && atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v87, v86);
    }

    v88 = v92;
    v92 = 0;
    if (v88 && atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v88, v86);
    }

    v89 = v95;
    v95 = 0;
    if (v89 && atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v89, v86);
    }

    v90 = v94;
    v94 = 0;
    if (v90 && atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v90, v86);
    }

    qword_1ED641C40 = v91;
    byte_1ED641C31 = 1;
  }

  WebCore::RegistrableDomain::RegistrableDomain(buf, PartyForCookies);
  WebCore::RegistrableDomain::RegistrableDomain(&v95, v9);
  if (WTF::equal(*buf, v95, v11))
  {
    WebCore::RegistrableDomain::RegistrableDomain(&v94, v10);
    if (!qword_1ED641C40)
    {
      goto LABEL_37;
    }

    if (WTF::equal(v94, 0, v13))
    {
      __break(0xC471u);
      JUMPOUT(0x19D952484);
    }

    v14 = v94;
    if (v94 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19D9524A4);
    }

    v15 = qword_1ED641C40;
    if (!qword_1ED641C40)
    {
      v24 = 0;
      goto LABEL_40;
    }

    v16 = *(qword_1ED641C40 - 8);
    v17 = WTF::ASCIICaseInsensitiveHash::hash(v94, v12) & v16;
    v18 = (v15 + 16 * v17);
    if (WTF::equal(*v18, 0, v19))
    {
LABEL_14:
      v22 = qword_1ED641C40;
      if (!qword_1ED641C40)
      {
        goto LABEL_37;
      }

      v23 = *(qword_1ED641C40 - 4);
      v18 = (qword_1ED641C40 + 16 * v23);
    }

    else
    {
      v21 = 1;
      while (*v18 == -1 || (WTF::equalIgnoringASCIICase(*v18, v94, v20) & 1) == 0)
      {
        v17 = (v17 + v21) & v16;
        v18 = (v15 + 16 * v17);
        ++v21;
        if (WTF::equal(*v18, 0, v20))
        {
          goto LABEL_14;
        }
      }

      v22 = qword_1ED641C40;
      if (!qword_1ED641C40)
      {
LABEL_17:
        if (v22 != v18)
        {
          v24 = WTF::equal(v18[1], v95, v20);
LABEL_38:
          v14 = v94;
LABEL_40:
          v94 = 0;
          if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v12);
          }

          goto LABEL_43;
        }

LABEL_37:
        v24 = 0;
        goto LABEL_38;
      }

      v23 = *(qword_1ED641C40 - 4);
    }

    v22 += 16 * v23;
    goto LABEL_17;
  }

  v24 = 0;
LABEL_43:
  v37 = v95;
  v95 = 0;
  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v37, v12);
  }

  v38 = *buf;
  *buf = 0;
  if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v38, v12);
    if (!v24)
    {
      goto LABEL_62;
    }
  }

  else if (!v24)
  {
    goto LABEL_62;
  }

  if (*(a1 + 16) == 1)
  {
    v39 = *(a1 + 8);
    if (!v39 || (v40 = *(v39 + 8)) == 0)
    {
LABEL_135:
      __break(0xC471u);
      JUMPOUT(0x19D952464);
    }

    v42 = *(v40 + 16);
    v41 = (v40 + 16);
    *v41 = v42 + 1;
    v43 = *(v41 + 2);
    *buf = *(v41 + 1);
    v44 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v43 + 248), buf);
    if (v44)
    {
      v45 = v44;
      v46 = (v44 + 8);
      ++*(v44 + 8);
      if (*v41)
      {
        --*v41;
        v47 = (*(*a1 + 40))(a1);
        v48 = v47;
        if (v47)
        {
          v49 = v47;
        }

        WebCore::NetworkStorageSession::nsCookieStorage(buf, v45);
        [v48 _setExplicitCookieStorage:{objc_msgSend(*buf, "_cookieStorage")}];
        v50 = *buf;
        *buf = 0;
        if (v50)
        {
        }

        if (v48)
        {
        }

        *(a1 + 16) = 0;
        v51 = *v46;
        if (*v46)
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      v51 = *v41;
      v46 = v41;
      if (*v41)
      {
LABEL_61:
        *v46 = v51 - 1;
        goto LABEL_62;
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19D95212CLL);
  }

LABEL_62:
  v52 = *(a1 + 8);
  if (!v52 || (v53 = *(v52 + 8)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19D952424);
  }

  ++v53[4];
  v54 = (*(*v53 + 88))(v53);
  v55 = v53[4];
  if (!v55)
  {
    __break(0xC471u);
    goto LABEL_134;
  }

  v53[4] = v55 - 1;
  if (!v54)
  {
    goto LABEL_83;
  }

  if (*(a1 + 32) != 1)
  {
    goto LABEL_83;
  }

  v56 = qword_1ED6416F0;
  if (!os_log_type_enabled(qword_1ED6416F0, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_83;
  }

  (*(*a1 + 24))(a1);
  if (v57)
  {
    v58 = (*(*a1 + 24))(a1);
    if (v59)
    {
      v60 = v58;
      goto LABEL_72;
    }

LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v60 = 0;
LABEL_72:
  (*(*a1 + 16))(a1);
  if ((v61 & 1) == 0)
  {
    v64 = 0;
    goto LABEL_76;
  }

  v62 = (*(*a1 + 16))(a1);
  if ((v63 & 1) == 0)
  {
    goto LABEL_134;
  }

  v64 = v62;
LABEL_76:
  v65 = [(*(*a1 + 40))(a1) taskIdentifier];
  v66 = *(a1 + 16);
  WebCore::ResourceRequestBase::url(a3);
  WTF::String::utf8();
  v67 = v95 + 16;
  v68 = "Not blocking";
  *buf = 134219266;
  if (!v95)
  {
    v67 = 0;
  }

  *&buf[4] = a1;
  v97 = 2048;
  if (v66)
  {
    v68 = "Blocking";
  }

  v98 = v60;
  v99 = 2048;
  v100 = v64;
  v101 = 2048;
  v102 = v65;
  v103 = 2080;
  v104 = v68;
  v105 = 2080;
  v106 = v67;
  _os_log_impl(&dword_19D52D000, v56, OS_LOG_TYPE_DEFAULT, "%p - NetworkTaskCocoa::willPerformHTTPRedirection::logCookieInformation: pageID=%llu, frameID=%llu, taskID=%lu: %s cookies for redirect URL %s", buf, 0x3Eu);
  v70 = v95;
  v95 = 0;
  if (v70)
  {
    if (*v70 == 1)
    {
      WTF::fastFree(v70, v69);
    }

    else
    {
      --*v70;
    }
  }

LABEL_83:
  v71 = (*(*a1 + 40))(a1);
  v73 = v71;
  if (v71)
  {
    v74 = v71;
  }

  WebKit::NetworkTaskCocoa::updateTaskWithFirstPartyForSameSiteCookies(v73, a3, v72);
  if (v73)
  {
  }

  WebKit::NetworkTaskCocoa::updateTaskWithStoragePartitionIdentifier(a1, a3);
  return WTF::CompletionHandler<void ()(WebCore::ResourceRequest &&)>::operator()(a4);
}

void sub_19D9524C8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a10)
  {
    v16 = *(a10 - 4);
    if (v16)
    {
      v17 = a10;
      do
      {
        if (*v17 != -1)
        {
          v18 = *(v17 + 8);
          *(v17 + 8) = 0;
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, a2);
          }

          v19 = *v17;
          *v17 = 0;
          if (v19)
          {
            if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, a2);
            }
          }
        }

        v17 += 16;
        --v16;
      }

      while (v16);
    }

    WTF::fastFree((a10 - 16), a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D9529AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D952EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  (*(*v68 + 8))(v68);
  _Block_release(0);
  v71 = a67;
  a67 = 0;
  if (v71)
  {
  }

  v72 = a66;
  a66 = 0;
  if (v72)
  {
  }

  WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&a13, v70);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v67);
  _Unwind_Resume(a1);
}

void sub_19D95332C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_release(v69);
  WebCore::ResourceRequest::~ResourceRequest(&a9);
  v72 = a68;
  a68 = 0;
  if (v72)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(&a37, v71);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v68);
  _Unwind_Resume(a1);
}

void sub_19D953748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44)
{
  (*(*v45 + 8))(v45);
  _Block_release(0);
  v48 = a44;
  a44 = 0;
  if (v48)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(&a13, v47);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v44);
  _Unwind_Resume(a1);
}

void sub_19D953A3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::NetworkConnectionToWebProcess::paymentCoordinator(WebKit::NetworkConnectionToWebProcess *this, void *a2)
{
  result = *(this + 33);
  if (!result)
  {
    WebKit::WebPaymentCoordinatorProxy::create(this, a2, &v5);
    result = v5;
    v4 = *(this + 33);
    *(this + 33) = v5;
    if (v4)
    {
      WTF::RefCounted<WebKit::WebPaymentCoordinatorProxy>::deref((v4 + 40));
      return *(this + 33);
    }
  }

  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::getPaymentCoordinatorEmbeddingUserAgent(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(*(a1 + 88) + 40);
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10EE098;
  v6[1] = v5;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v9 = IPC::Encoder::operator new(0x238, v8);
    *v9 = 538;
    *(v9 + 68) = 0;
    *(v9 + 70) = 0;
    *(v9 + 69) = 0;
    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    *(v9 + 1) = 0;
    IPC::Encoder::encodeHeader(v9);
    v16 = v9;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, a2);
    v15[0] = v6;
    v15[1] = IdentifierInternal;
    IPC::Connection::sendMessageWithAsyncReply(v4, &v16, v15, 0, 0);
    v11 = v15[0];
    v15[0] = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    result = v16;
    v16 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v10);
      return bmalloc::api::tzoneFree(v13, v14);
    }
  }

  return result;
}

void sub_19D953FE0(_Unwind_Exception *a1, void *a2)
{
  IPC::Encoder::~Encoder(v3, a2);
  bmalloc::api::tzoneFree(v5, v6);
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_19D95402C()
{
  if (v0)
  {
    (*(*v0 + 8))(v0);
  }

  JUMPOUT(0x19D954024);
}

__n128 WebKit::NetworkConnectionToWebProcess::sharedPreferencesForWebPaymentMessages@<Q0>(WebKit::NetworkConnectionToWebProcess *this@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u64[0] = *(this + 43);
  result = *(this + 328);
  *a2 = result;
  a2[1].n128_u8[8] = 1;
  return result;
}

uint64_t WebKit::NetworkConnectionToWebProcess::paymentCoordinatorBoundInterfaceIdentifier(uint64_t a1)
{
  v1 = *(a1 + 88);
  v4 = *(a1 + 96);
  v2 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v1 + 240), &v4);
  if (v2)
  {
    return v2 + 1160;
  }

  else
  {
    return MEMORY[0x1E696EBA8];
  }
}

uint64_t WebKit::NetworkConnectionToWebProcess::paymentCoordinatorCTDataConnectionServiceType(uint64_t a1)
{
  v1 = *(a1 + 88);
  v4 = *(a1 + 96);
  v2 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v1 + 240), &v4);
  if (v2)
  {
    return v2 + 1224;
  }

  else
  {
    return MEMORY[0x1E696EBA8];
  }
}

uint64_t WebKit::NetworkConnectionToWebProcess::paymentCoordinatorSourceApplicationBundleIdentifier(uint64_t a1)
{
  v1 = *(a1 + 88);
  v4 = *(a1 + 96);
  v2 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v1 + 240), &v4);
  if (v2)
  {
    return v2 + 1168;
  }

  else
  {
    return MEMORY[0x1E696EBA8];
  }
}

uint64_t WebKit::NetworkConnectionToWebProcess::paymentCoordinatorSourceApplicationSecondaryIdentifier(uint64_t a1)
{
  v1 = *(a1 + 88);
  v4 = *(a1 + 96);
  v2 = WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,std::unique_ptr<WebKit::NetworkSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,PAL::SessionID>((v1 + 240), &v4);
  if (v2)
  {
    return v2 + 1176;
  }

  else
  {
    return MEMORY[0x1E696EBA8];
  }
}

void WebKit::NetworkProcess::platformInitializeNetworkProcess(WebKit *a1, WebKit::NetworkProcess *a2)
{
  WebKit::initializeSecItemShim(a1, a2);

  WebKit::NetworkProcess::platformInitializeNetworkProcessCocoa(a1, a2);
}

uint64_t WebKit::NetworkProcess::parentProcessHasServiceWorkerEntitlement(WebKit::NetworkProcess *this)
{
  if (byte_1ED641C32)
  {
    v1 = 0;
  }

  else if (byte_1ED641C34 == 1)
  {
    v1 = byte_1ED641C33;
  }

  else
  {
    hasEntitlement = WTF::hasEntitlement();
    v1 = 1;
    if ((hasEntitlement & 1) == 0)
    {
      v1 = WTF::hasEntitlement();
    }

    byte_1ED641C33 = v1;
    byte_1ED641C34 = 1;
  }

  return v1 & 1;
}

uint64_t WebKit::NetworkRTCTCPSocketCocoa::createClientTCPSocket@<X0>(uint64_t a1@<X0>, void *a2@<X1>, std::string *a3@<X2>, unsigned int a4@<W3>, const WTF::String *a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, atomic_uint **a8@<X7>, uint64_t *a9@<X8>, uint64_t *a10)
{
  v18 = WebKit::NetworkRTCTCPSocketCocoa::operator new(0x30, a2);
  result = WebKit::NetworkRTCTCPSocketCocoa::NetworkRTCTCPSocketCocoa(v18, a1, a2, a3, a4, a5, a6, a7, a8, a10);
  *a9 = v18;
  return result;
}

uint64_t WebKit::NetworkRTCTCPSocketCocoa::NetworkRTCTCPSocketCocoa(uint64_t a1, uint64_t a2, atomic_uint *a3, std::string *this, unsigned int a5, const WTF::String *a6, uint64_t a7, int a8, atomic_uint **a9, uint64_t *a10)
{
  *a1 = &unk_1F10EDAC0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  atomic_fetch_add(a3 + 7, 1u);
  v17 = *a10;
  *a10 = 0;
  *(a1 + 24) = v17;
  *(a1 + 32) = 0;
  *(a1 + 40) = (a5 & 4) != 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v58, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    v58 = *this;
  }

  size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  v19 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v58.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v20 = webrtc::SocketAddress::ipaddr(this);
    webrtc::IPAddress::ToString(to, v20);
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    v58.__r_.__value_.__r.__words[2] = *&v50[0];
    *&v58.__r_.__value_.__l.__data_ = *to;
    v19 = BYTE7(v50[0]);
  }

  if (v19 >= 0)
  {
    v21 = &v58;
  }

  else
  {
    v21 = v58.__r_.__value_.__r.__words[0];
  }

  v22 = webrtc::SocketAddress::port(this);
  WTF::String::number(v22);
  WTF::String::utf8();
  if (location)
  {
    v23 = location + 16;
  }

  else
  {
    v23 = 0;
  }

  WebKit::createNWConnection(to, a3, v21, v23, (a5 >> 1) & 1, a6, a7, a8, a9);
  v25 = to[0];
  to[0] = 0;
  v26 = *(a1 + 32);
  *(a1 + 32) = v25;
  if (v26)
  {
  }

  v27 = location;
  location = 0;
  if (v27)
  {
    if (*v27 == 1)
    {
      WTF::fastFree(v27, v24);
    }

    else
    {
      --*v27;
    }
  }

  v28 = v57;
  v57 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v24);
  }

  v29 = *(a1 + 32);
  if (qword_1ED641C50 != -1)
  {
    dispatch_once(&qword_1ED641C50, &__block_literal_global_138);
  }

  nw_connection_set_queue(v29, qword_1ED641C48);
  v30 = *(a1 + 32);
  location = 0;
  objc_initWeak(&location, v30);
  v55 = *(a1 + 8);
  *&v56 = a3;
  atomic_fetch_add(a3 + 6, 1u);
  v31 = *(a1 + 24);
  while (1)
  {
    v32 = *v31;
    if ((*v31 & 1) == 0)
    {
      break;
    }

    v33 = *v31;
    atomic_compare_exchange_strong_explicit(v31, &v33, v32 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v33 == v32)
    {
      goto LABEL_31;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v31);
LABEL_31:
  *(&v56 + 1) = v31;
  to[0] = 0;
  objc_moveWeak(to, &location);
  to[1] = v55;
  v34 = v56;
  v56 = 0uLL;
  v50[0] = v34;
  v35 = malloc_type_malloc(0x40uLL, 0x10E0040ACE9CC49uLL);
  *v35 = MEMORY[0x1E69E9818];
  *(v35 + 1) = 50331650;
  *(v35 + 2) = WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCTCPSocketCocoa::NetworkRTCTCPSocketCocoa(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,int,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&)::$_0>(WebKit::NetworkRTCTCPSocketCocoa::NetworkRTCTCPSocketCocoa(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,int,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&)::$_0)::{lambda(void *,nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke;
  *(v35 + 3) = &WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCTCPSocketCocoa::NetworkRTCTCPSocketCocoa(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,int,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&)::$_0>(WebKit::NetworkRTCTCPSocketCocoa::NetworkRTCTCPSocketCocoa(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,int,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&)::$_0)::descriptor;
  *(v35 + 4) = 0;
  objc_moveWeak(v35 + 4, to);
  *(v35 + 5) = to[1];
  *(v35 + 3) = v50[0];
  v50[0] = 0uLL;
  objc_destroyWeak(to);
  nw_connection_set_state_changed_handler(v30, v35);
  _Block_release(v35);
  v36 = *(&v56 + 1);
  *(&v56 + 1) = 0;
  if (v36)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v36);
  }

  v37 = v56;
  *&v56 = 0;
  if (v37)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v37 + 24));
  }

  objc_destroyWeak(&location);
  v38 = *(a1 + 32);
  v57 = v38;
  if (v38)
  {
    v39 = v38;
  }

  to[0] = *(a1 + 8);
  v40 = *(a1 + 24);
  while (1)
  {
    v41 = *v40;
    if ((*v40 & 1) == 0)
    {
      break;
    }

    v42 = *v40;
    atomic_compare_exchange_strong_explicit(v40, &v42, v41 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v42 == v41)
    {
      goto LABEL_42;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v40);
LABEL_42:
  to[1] = v40;
  v43 = webrtc::SocketAddress::ipaddr(this);
  *&v50[0] = &off_1F10EE1B0;
  DWORD2(v50[0]) = *(v43 + 8);
  *(v50 + 12) = *(v43 + 12);
  v51 = webrtc::SocketAddress::port(this);
  v52 = *(a1 + 40);
  v44 = WTF::fastMalloc(0x40);
  *v44 = &unk_1F10EE0C0;
  *(v44 + 8) = to[0];
  v45 = to[1];
  to[1] = 0;
  *(v44 + 16) = v45;
  *(v44 + 24) = &off_1F10EE1B0;
  *(v44 + 32) = DWORD2(v50[0]);
  *(v44 + 36) = *(v50 + 12);
  *(v44 + 56) = v51;
  *(v44 + 58) = v52;
  v53 = v44;
  location = 0;
  v55 = 0;
  WebKit::processIncomingData(&v57, &v53, &location);
  if (location)
  {
    WTF::fastFree(location, v46);
  }

  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  v47 = to[1];
  to[1] = 0;
  if (v47)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v47);
  }

  if (v57)
  {
  }

  nw_connection_start(*(a1 + 32));
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_19D95486C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, uint64_t a21, WTF::StringImpl *a22)
{
  v24 = v22[4];
  v22[4] = 0;
  if (v24)
  {
  }

  v25 = v22[3];
  v22[3] = 0;
  if (v25)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v25);
  }

  v26 = v22[2];
  v22[2] = 0;
  if (!v26)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

  v27 = (v26 + 28);
  if (atomic_load(v27))
  {
    atomic_fetch_add(v27, 0xFFFFFFFF);
    goto LABEL_8;
  }

  __break(0xC471u);
}

void WebKit::createNWConnection(WebKit *this, WebKit::NetworkRTCProvider *a2, const char *hostname, const char *port, int a5, const WTF::String *a6, uint64_t a7, int a8, atomic_uint **a9)
{
  endpoint = nw_endpoint_create_host(hostname, port);
  v15 = MEMORY[0x1E6977EB8];
  if (!a5)
  {
    v15 = MEMORY[0x1E6977EC0];
  }

  secure_tcp = nw_parameters_create_secure_tcp(*v15, &__block_literal_global_7);
  v17 = secure_tcp;
  v18 = *(a2 + 18);
  if (v18)
  {
    v19 = (v18 + 16);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a2 + 120);
  v24[0] = *(a2 + 104);
  v24[1] = v20;
  v25 = *(a2 + 34);
  WebKit::setNWParametersApplicationIdentifiers(secure_tcp, v19, v24, a6);
  isKnownTracker = WebKit::isKnownTracker(a9, v21);
  WebKit::setNWParametersTrackerOptions(v17, a8, a7, isKnownTracker);
  *this = nw_connection_create(endpoint, v17);
  if (v17)
  {
  }

  if (endpoint)
  {
  }
}

void sub_19D954B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::processIncomingData(NSObject **a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  *a1 = 0;
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  v6 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v7 = malloc_type_malloc(0x40uLL, 0x10F004041E37161uLL);
  *v7 = MEMORY[0x1E69E9818];
  v7[1] = 50331650;
  v7[2] = WTF::BlockPtr<void ()(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)>::fromCallable<WebKit::processIncomingData(WTF::RetainPtr<NSObject {objcproto16OS_nw_connection}*> &&,WTF::Function<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> ()(WTF::FastMalloc&&)> &&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)::{lambda(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1}>(WebKit::processIncomingData(WTF::RetainPtr<NSObject {objcproto16OS_nw_connection}*> &&,WTF::Function<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> ()(WTF::FastMalloc&&)> &&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)::{lambda(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1})::{lambda(void *,NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1}::__invoke;
  v7[3] = &WTF::BlockPtr<void ()(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)>::fromCallable<WebKit::processIncomingData(WTF::RetainPtr<NSObject {objcproto16OS_nw_connection}*> &&,WTF::Function<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> ()(WTF::FastMalloc&&)> &&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)::{lambda(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1}>(WebKit::processIncomingData(WTF::RetainPtr<NSObject {objcproto16OS_nw_connection}*> &&,WTF::Function<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> ()(WTF::FastMalloc&&)> &&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)::{lambda(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1})::descriptor;
  v7[4] = v3;
  v7[5] = v4;
  v7[6] = v5;
  v7[7] = v6;
  nw_connection_receive(v3, 1u, 0xFFFFFFFF, v7);

  _Block_release(v7);
}

void sub_19D954C80(_Unwind_Exception *a1)
{
  v2 = v1;
  _Block_release(v2);
  _Unwind_Resume(a1);
}

void WebKit::NetworkRTCTCPSocketCocoa::~NetworkRTCTCPSocketCocoa(WebKit::NetworkRTCTCPSocketCocoa *this)
{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    v5 = (v4 + 28);
    if (atomic_load(v5))
    {
      atomic_fetch_add(v5, 0xFFFFFFFF);
    }

    else
    {
      __break(0xC471u);
    }
  }
}

{
  WebKit::NetworkRTCTCPSocketCocoa::~NetworkRTCTCPSocketCocoa(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::NetworkRTCTCPSocketCocoa::close(WebKit::NetworkRTCTCPSocketCocoa *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    nw_connection_cancel(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    v4 = (v3 + 24);
    atomic_fetch_add((v3 + 24), 1u);
    WebKit::NetworkRTCProvider::takeSocket(v3, *(this + 1), &v6);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    return WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref(v4);
  }

  else
  {
    result = 114;
    __break(0xC471u);
  }

  return result;
}

void WebKit::NetworkRTCTCPSocketCocoa::setOption(WebKit::NetworkRTCTCPSocketCocoa *this, int a2, int a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a2 != 5)
  {
    return;
  }

  if (a3 <= 33)
  {
    if (!a3 || a3 == 8)
    {
LABEL_9:

      nw_connection_reset_traffic_class();
      return;
    }
  }

  else if (a3 == 34 || a3 == 36 || a3 == 46)
  {
    goto LABEL_9;
  }

  v4 = qword_1ED641580;
  if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67109120;
    v5[1] = a3;
    _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "NetworkRTCTCPSocketCocoa has an unexpected DSCP value %d", v5, 8u);
  }
}

WTF *WebKit::NetworkRTCTCPSocketCocoa::sendTo(uint64_t a1, const void *a2, size_t a3)
{
  if (a3 >= 0xFFFF)
  {
    result = 0;
    v34 = 0;
    return result;
  }

  if (*(a1 + 40) != 1)
  {
    v10 = a3 + 2;
    v11 = WTF::fastMalloc((a3 + 2));
    LODWORD(v34) = v10;
    v33 = v11;
    *v11 = BYTE1(a3);
    *(v11 + 1) = a3;
    HIDWORD(v34) = 2;
    if (a3)
    {
      if (v10 <= v34)
      {
        v14 = 2;
      }

      else
      {
        if (v34 + (v34 >> 1) <= v34 + 1)
        {
          v12 = v34 + 1;
        }

        else
        {
          v12 = v34 + (v34 >> 1);
        }

        if (v12 <= v10)
        {
          v12 = a3 + 2;
        }

        if (v12 <= 0x10)
        {
          v13 = 16;
        }

        else
        {
          v13 = v12;
        }

        WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v33, v13);
        v14 = HIDWORD(v34);
        if (v10 < HIDWORD(v34))
        {
          __break(0xC471u);
          goto LABEL_55;
        }
      }

      memcpy(v33 + v14, a2, a3);
      HIDWORD(v34) = v10;
    }

LABEL_26:
    v15 = *(a1 + 32);
    WTF::makeDispatchData<unsigned char>(&v33, &v32);
    v16 = v32;
    v17 = *MEMORY[0x1E6977E88];
    v30 = *(a1 + 8);
    v18 = *(a1 + 24);
    while (1)
    {
      v19 = *v18;
      if ((*v18 & 1) == 0)
      {
        break;
      }

      v20 = *v18;
      atomic_compare_exchange_strong_explicit(v18, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v20 == v19)
      {
        goto LABEL_31;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v18);
LABEL_31:
    webrtc::AsyncSocketPacketOptions::AsyncSocketPacketOptions();
    v35 = v30;
    v36 = v18;
    webrtc::AsyncSocketPacketOptions::AsyncSocketPacketOptions();
    v21 = malloc_type_malloc(0xA0uLL, 0x10F004051FA7B4FuLL);
    *v21 = MEMORY[0x1E69E9818];
    v21[1] = 50331650;
    v21[2] = WTF::BlockPtr<void ()(NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCTCPSocketCocoa::sendTo(std::span<unsigned char const,18446744073709551615ul>,webrtc::SocketAddress const&,webrtc::AsyncSocketPacketOptions const&)::$_0>(WebKit::NetworkRTCTCPSocketCocoa::sendTo(std::span<unsigned char const,18446744073709551615ul>,webrtc::SocketAddress const&,webrtc::AsyncSocketPacketOptions const&)::$_0)::{lambda(void *,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke;
    v21[3] = &WTF::BlockPtr<void ()(NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCTCPSocketCocoa::sendTo(std::span<unsigned char const,18446744073709551615ul>,webrtc::SocketAddress const&,webrtc::AsyncSocketPacketOptions const&)::$_0>(WebKit::NetworkRTCTCPSocketCocoa::sendTo(std::span<unsigned char const,18446744073709551615ul>,webrtc::SocketAddress const&,webrtc::AsyncSocketPacketOptions const&)::$_0)::descriptor;
    v22 = v36;
    v36 = 0;
    v21[4] = v35;
    v21[5] = v22;
    webrtc::AsyncSocketPacketOptions::AsyncSocketPacketOptions();
    webrtc::AsyncSocketPacketOptions::~AsyncSocketPacketOptions(v37);
    v23 = v36;
    v36 = 0;
    if (v23)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v23);
    }

    nw_connection_send(v15, v16, v17, 1, v21);
    _Block_release(v21);
    webrtc::AsyncSocketPacketOptions::~AsyncSocketPacketOptions(&v31);
    v24 = v32;
    v32 = 0;
    if (v24)
    {
    }

    goto LABEL_35;
  }

  WebCore::WebRTC::getSTUNOrTURNMessageLengths();
  if (v37[0])
  {
    v33 = 0;
    v34 = 0;
    if (v36 >= a3)
    {
      if (!v36)
      {
        v7 = 0;
        if (a3)
        {
          goto LABEL_8;
        }

        goto LABEL_38;
      }

      if (!(v36 >> 32))
      {
        v7 = WTF::fastMalloc(v36);
        LODWORD(v34) = v36;
        v33 = v7;
        if (a3)
        {
LABEL_8:
          memcpy(v7, a2, a3);
          HIDWORD(v34) = a3;
          v8 = a3;
          goto LABEL_39;
        }

LABEL_38:
        v8 = 0;
LABEL_39:
        if (v37[0] == 1)
        {
          v25 = -1;
          while (++v25 < v36 - a3)
          {
            v26 = v8;
            if (v8 == v34)
            {
              v27 = v8 + (v8 >> 1);
              if (v27 <= v26 + 1)
              {
                v27 = v26 + 1;
              }

              if (v27 <= 0x10)
              {
                v28 = 16;
              }

              else
              {
                v28 = v27;
              }

              WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v33, v28);
              v29 = v33 + HIDWORD(v34);
            }

            else
            {
              v29 = v33 + v8;
            }

            *v29 = 0;
            v8 = ++HIDWORD(v34);
            if ((v37[0] & 1) == 0)
            {
              goto LABEL_51;
            }
          }
        }

        else
        {
LABEL_51:
          __break(1u);
        }

        if (!HIDWORD(v34))
        {
          goto LABEL_35;
        }

        goto LABEL_26;
      }

      __break(0xC471u);
LABEL_55:
      JUMPOUT(0x19D9550DCLL);
    }
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

LABEL_35:
  result = v33;
  if (v33)
  {
    v33 = 0;
    LODWORD(v34) = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

void WebKit::NetworkRTCTCPSocketCocoa::getInterfaceName(WebKit::NetworkRTCTCPSocketCocoa *this@<X0>, WebKit::NetworkRTCProvider *a2@<X1>, const WTF::URL *a3@<X2>, const WTF::String *a4@<X3>, int a5@<W4>, atomic_uint **a6@<X5>, WTF **a7@<X8>)
{
  v75 = *MEMORY[0x1E69E9840];
  v15 = WTF::URL::protocolIs();
  v16 = WTF::URL::port(a2);
  if (v15)
  {
    v17 = 443;
  }

  else
  {
    v17 = 80;
  }

  if ((v16 & 0x10000) != 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  WTF::URL::host(a2);
  if ((v19 & 0x100000000) != 0)
  {
    WTF::String::String();
  }

  else
  {
    WTF::String::String();
  }

  WTF::String::utf8();
  if (*buf)
  {
    v20 = (*buf + 16);
  }

  else
  {
    v20 = 0;
  }

  WTF::String::number(v18);
  WTF::String::utf8();
  if (v64)
  {
    v21 = v64 + 16;
  }

  else
  {
    v21 = 0;
  }

  WebKit::createNWConnection(&connection, this, v20, v21, v15, a3, a4, a5, a6);
  v23 = v64;
  v64 = 0;
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

  v24 = v68[0];
  v68[0] = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v22);
  }

  v25 = *buf;
  *buf = 0;
  if (v25)
  {
    if (*v25 == 1)
    {
      WTF::fastFree(v25, v22);
    }

    else
    {
      --*v25;
    }
  }

  v26 = *v62;
  *v62 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v22);
  }

  *v62 = 0;
  *&v62[8] = 0;
  *&v62[16] = "getInterfaceName";
  *&v62[24] = 0;
  v27 = WTF::fastMalloc(0x80);
  *(v27 + 8) = 1;
  *v27 = &unk_1F10EE110;
  v28 = *&v62[16];
  *(v27 + 16) = *v62;
  *(v27 + 32) = v28;
  *(v27 + 48) = 0;
  v29 = (v27 + 48);
  *(v27 + 72) = 0;
  *(v27 + 80) = v27 + 96;
  *(v27 + 88) = 1;
  *(v27 + 104) = 0;
  *(v27 + 112) = 0;
  *(v27 + 120) = 0;
  v30 = WTF::NativePromiseBase::logChannel(v27);
  v31 = v30;
  if (*v30 && v30[16] >= 4u)
  {
    WTF::String::String(&v70, "creating ");
    WTF::LogArgument<WTF::NativePromise<WTF::String,void,0u>>::toString(v27, &v69);
    *buf = v70;
    v68[0] = v69;
    WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v68, &v71);
    if (!v71)
    {
      __break(0xC471u);
      return;
    }

    v33 = v69;
    v69 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v32);
    }

    v34 = v70;
    v70 = 0;
    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v32);
    }

    v35 = *(v31 + 4);
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    if (v36)
    {
      WTF::String::utf8();
      v38 = v68[0] ? v68[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v38;
      _os_log_impl(&dword_19D52D000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v36 = v68[0];
      v68[0] = 0;
      if (v36)
      {
        if (*v36 == 1)
        {
          v36 = WTF::fastFree(v36, v37);
        }

        else
        {
          --*v36;
        }
      }
    }

    if (*v31 && v31[16] >= 4u)
    {
      v39 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v40 = *v39;
        if (v40)
        {
          break;
        }

        v41 = *v39;
        atomic_compare_exchange_strong_explicit(v39, &v41, v40 | 1, memory_order_acquire, memory_order_acquire);
        if (v41 == v40)
        {
          v61 = a7;
          v42 = WTF::Logger::observers(v36);
          v43 = *(v42 + 12);
          if (v43)
          {
            v44 = *v42;
            v45 = *v42 + 8 * v43;
            do
            {
              v46 = *v44;
              *buf = 0;
              WTF::String::String(&buf[8], "creating ");
              *&buf[16] = 0;
              WTF::LogArgument<WTF::NativePromise<WTF::String,void,0u>>::toString(v27, &v73);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v68, buf, 2uLL);
              (*(*v46 + 16))(v46, v31, 4, v68);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v68, v47);
              for (i = 24; i != -8; i -= 16)
              {
                v49 = *&buf[i];
                *&buf[i] = 0;
                if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v49, v37);
                }
              }

              ++v44;
            }

            while (v44 != v45);
          }

          v50 = 1;
          atomic_compare_exchange_strong_explicit(v39, &v50, 0, memory_order_release, memory_order_relaxed);
          a7 = v61;
          if (v50 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v30 = v71;
    v71 = 0;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v30 = WTF::StringImpl::destroy(v30, v37);
    }
  }

  v51 = 0;
  v64 = v27;
  v65 = *v62;
  v66 = *&v62[16];
  atomic_fetch_add((v27 + 8), 1u);
  atomic_compare_exchange_strong_explicit((v27 + 48), &v51, 1u, memory_order_acquire, memory_order_acquire);
  if (v51)
  {
    v30 = MEMORY[0x19EB01E30](v29);
  }

  v52 = WTF::NativePromiseBase::logChannel(v30);
  if (*v52 && v52[16] >= 4u)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WTF::String,void,0u>>(v52, v62, " runSynchronouslyOnTarget ", v27);
  }

  atomic_store(0, (v27 + 121));
  v53 = 1;
  atomic_compare_exchange_strong_explicit((v27 + 48), &v53, 0, memory_order_release, memory_order_relaxed);
  if (v53 != 1)
  {
    WTF::Lock::unlockSlow(v29);
  }

  if (atomic_fetch_add((v27 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v27 + 8));
    (*(*v27 + 16))(v27);
  }

  v54 = v64;
  if (v64)
  {
    atomic_fetch_add(v64 + 2, 1u);
  }

  *a7 = v54;
  v55 = connection;
  if (qword_1ED641C50 != -1)
  {
    dispatch_once(&qword_1ED641C50, &__block_literal_global_138);
  }

  nw_connection_set_queue(v55, qword_1ED641C48);
  v56 = v64;
  v63 = v55;
  v64 = 0;
  *v62 = v56;
  *&v62[8] = v65;
  *&v62[24] = v66;
  if (v55)
  {
    v57 = v55;
    v56 = *v62;
    v58 = v63;
  }

  else
  {
    v58 = 0;
  }

  *buf = v56;
  *&buf[8] = *&v62[8];
  v73 = *&v62[24];
  *v62 = 0;
  v63 = 0;
  v59 = malloc_type_malloc(0x50uLL, 0x10F0040D8C3EB67uLL);
  *v59 = MEMORY[0x1E69E9818];
  *(v59 + 1) = 50331650;
  *(v59 + 2) = WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCTCPSocketCocoa::getInterfaceName(WebKit::NetworkRTCProvider &,WTF::URL const&,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0>(WebKit::NetworkRTCTCPSocketCocoa::getInterfaceName(WebKit::NetworkRTCProvider &,WTF::URL const&,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0)::{lambda(void *,nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke;
  *(v59 + 3) = &WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCTCPSocketCocoa::getInterfaceName(WebKit::NetworkRTCProvider &,WTF::URL const&,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0>(WebKit::NetworkRTCTCPSocketCocoa::getInterfaceName(WebKit::NetworkRTCProvider &,WTF::URL const&,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0)::descriptor;
  *(v59 + 4) = v56;
  *(v59 + 40) = *&buf[8];
  *(v59 + 56) = v73;
  *(v59 + 9) = v58;
  *buf = 0;
  v74 = 0;
  WTF::NativePromiseProducer<WTF::String,void,16u>::~NativePromiseProducer(buf);
  nw_connection_set_state_changed_handler(v55, v59);
  _Block_release(v59);
  v60 = v63;
  v63 = 0;
  if (v60)
  {
  }

  WTF::NativePromiseProducer<WTF::String,void,16u>::~NativePromiseProducer(v62);
  nw_connection_start(v55);
  WTF::NativePromiseProducer<WTF::String,void,16u>::~NativePromiseProducer(&v64);
  if (v55)
  {
  }
}

void sub_19D955B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, WTF::StringImpl *a26, uint64_t a27, WTF::StringImpl *a28, uint64_t a29, WTF::StringImpl *a30)
{
  if (atomic_fetch_add(v30 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v30 + 2);
    (*(*v30 + 16))(v30);
  }

  if (a20 && atomic_fetch_add(a20 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a20 + 2);
    (*(*a20 + 16))(a20);
  }

  if (a25)
  {
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::NetworkRTCUDPSocketCocoa::NetworkRTCUDPSocketCocoa(void *a1, uint64_t a2, uint64_t a3, nw_listener_t a4, uint64_t *a5, uint64_t *a6, char a7, char a8, atomic_uint **a9)
{
  *a1 = &unk_1F10EDB08;
  a1[1] = a3;
  atomic_fetch_add((a3 + 28), 1u);
  a1[2] = a2;
  v17 = WTF::fastMalloc(0xC0);
  *v17 = 3;
  *(v17 + 8) = a2;
  v18 = *a5;
  *a5 = 0;
  *(v17 + 16) = v18;
  *(v17 + 24) = a7;
  *(v17 + 25) = WebKit::isKnownTracker(a9, v19);
  *(v17 + 26) = a8;
  v20 = *(a3 + 144);
  if (v20)
  {
    v21 = (v20 + 16);
  }

  else
  {
    v21 = 0;
  }

  WTF::CString::CString((v17 + 32), v21);
  v22 = *(a3 + 104);
  v23 = *(a3 + 120);
  *(v17 + 72) = *(a3 + 136);
  *(v17 + 56) = v23;
  *(v17 + 40) = v22;
  v24 = *a6;
  *a6 = 0;
  *(v17 + 80) = v24;
  webrtc::SocketAddress::SocketAddress((v17 + 88));
  *(v17 + 160) = 0;
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;
  *(v17 + 184) = 0;
  *(v17 + 188) = 0;
  secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
  v26 = webrtc::SocketAddress::ipaddr(a4);
  if (webrtc::IPAddress::IsNil(v26))
  {
    if (SHIBYTE(a4[2].isa) < 0)
    {
      std::string::__init_copy_ctor_external(&v56, a4->isa, a4[1].isa);
    }

    else
    {
      v56 = *&a4->isa;
    }
  }

  else
  {
    if (*(webrtc::SocketAddress::ipaddr(a4) + 8) != 2)
    {
      goto LABEL_22;
    }

    v57 = 0;
    if (getifaddrs(&v57))
    {
      goto LABEL_9;
    }

    v27 = v57;
    if (!v57)
    {
      goto LABEL_22;
    }

    v28 = v57;
    while (1)
    {
      ifa_addr = v28->ifa_addr;
      if (ifa_addr && ifa_addr->sa_family == 2)
      {
        __p = &off_1F10EE1B0;
        v55 = 0;
        if (!webrtc::IPAddress::operator!=())
        {
          break;
        }
      }

      v28 = v28->ifa_next;
      if (!v28)
      {
        MEMORY[0x19EB14CF0](v27, 0x10B0C40815C8216);
        goto LABEL_22;
      }
    }

    if_nametoindex(v28->ifa_name);
    does_interface_index_support_nat64 = nw_nat64_does_interface_index_support_nat64();
    MEMORY[0x19EB14CF0](v27, 0x10B0C40815C8216);
    if (does_interface_index_support_nat64)
    {
LABEL_9:
      std::string::basic_string[abi:sn200100]<0>(&v56, "0.0.0.0");
    }

    else
    {
LABEL_22:
      v32 = webrtc::SocketAddress::ipaddr(a4);
      webrtc::IPAddress::ToString(&v56, v32);
    }
  }

  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
  hostname = nw_endpoint_get_hostname(host_with_numeric_port);
  if (hostname)
  {
    strlen(hostname);
    nw_endpoint_get_port(host_with_numeric_port);
    webrtc::SocketAddress::SocketAddress();
    webrtc::SocketAddress::operator=();
    if (v55 < 0)
    {
      operator delete(__p);
    }

    nw_parameters_set_local_endpoint(secure_udp, host_with_numeric_port);
    if (host_with_numeric_port)
    {
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (LODWORD(a4[4].isa) == 2)
    {
      v35 = 4;
    }

    else
    {
      v35 = 6;
    }

    WebKit::NetworkRTCUDPSocketCocoaConnections::configureParameters(v17, secure_udp, v35);
    a4 = nw_listener_create(secure_udp);
    v36 = *(v17 + 160);
    *(v17 + 160) = a4;
    if (v36)
    {

      a4 = *(v17 + 160);
    }

    if (qword_1ED641C60 == -1)
    {
      goto LABEL_36;
    }
  }

  else
  {
    __break(1u);
  }

  dispatch_once(&qword_1ED641C60, &__block_literal_global_159);
LABEL_36:
  nw_listener_set_queue(a4, qword_1ED641C58);
  v37 = *(v17 + 160);
  if (v37)
  {
    v38 = v37;
  }

  v39 = *(v17 + 16);
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
      goto LABEL_43;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v39);
LABEL_43:
  atomic_fetch_add((a3 + 24), 1u);
  v42 = *(v17 + 8);
  v43 = *v17;
  if (*v17)
  {
    v43 = WTF::fastMalloc(0x20);
    *v43 = 0;
    *(v43 + 8) = xmmword_19E7014F0;
    *(v43 + 24) = v17;
    while (1)
    {
      v52 = *v17;
      if ((*v17 & 1) == 0)
      {
        break;
      }

      *(v43 + 8) = v52 >> 1;
      v53 = v52;
      atomic_compare_exchange_strong_explicit(v17, &v53, v43, memory_order_release, memory_order_relaxed);
      if (v53 == v52)
      {
        goto LABEL_44;
      }
    }

    WTF::fastFree(v43, v51);
    v43 = *v17;
  }

LABEL_44:
  v44 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v43);
  v45 = malloc_type_malloc(0x50uLL, 0x10E00401FF6AD11uLL);
  *v45 = MEMORY[0x1E69E9818];
  v45[1] = 50331650;
  v45[2] = WTF::BlockPtr<void ()(nw_listener_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0>(WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0)::{lambda(void *,nw_listener_state_t,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke;
  v45[3] = &WTF::BlockPtr<void ()(nw_listener_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0>(WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0)::descriptor;
  v45[4] = v37;
  v45[5] = v39;
  v45[6] = a3;
  v45[7] = v42;
  v45[8] = v17;
  v45[9] = v44;
  nw_listener_set_state_changed_handler(v37, v45);
  _Block_release(v45);
  v46 = *(v17 + 160);
  while (1)
  {
    v47 = *v17;
    if ((*v17 & 1) == 0)
    {
      break;
    }

    v48 = *v17;
    atomic_compare_exchange_strong_explicit(v17, &v48, v47 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v48 == v47)
    {
      goto LABEL_49;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v17);
LABEL_49:
  v49 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v49 = MEMORY[0x1E69E9818];
  v49[1] = 50331650;
  v49[2] = WTF::BlockPtr<void ()(NSObject  {objcproto16OS_nw_connection}*)>::fromCallable<WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_1>(WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_1)::{lambda(void *,NSObject  {objcproto16OS_nw_connection}*)#1}::__invoke;
  v49[3] = &WTF::BlockPtr<void ()(NSObject  {objcproto16OS_nw_connection}*)>::fromCallable<WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_1>(WebKit::NetworkRTCUDPSocketCocoaConnections::NetworkRTCUDPSocketCocoaConnections(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WTF::String &&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_1)::descriptor;
  v49[4] = v17;
  nw_listener_set_new_connection_handler(v46, v49);
  _Block_release(v49);
  nw_listener_start(*(v17 + 160));
  if (secure_udp)
  {
  }

  a1[3] = v17;
  return a1;
}

uint64_t sub_19D956448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  MEMORY[0x19EB14CF0](v30, 0x10B0C40815C8216);
  if (v29)
  {
  }

  v33 = *(v28 + 176);
  if (v33)
  {
    WTF::HashTable<webrtc::SocketAddress,WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashMap<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashTraits<webrtc::SocketAddress>,WTF::HashTraits<std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<webrtc::SocketAddress>,WTF::FastMalloc>::deallocateTable(v33, v32);
  }

  v34 = *(v28 + 160);
  *(v28 + 160) = 0;
  if (v34)
  {
  }

  if (*(v28 + 111) < 0)
  {
    operator delete(*(v28 + 88));
  }

  v35 = *(v28 + 80);
  *(v28 + 80) = 0;
  if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v35, v32);
  }

  v36 = *(v28 + 32);
  *(v28 + 32) = 0;
  if (v36)
  {
    if (*v36 == 1)
    {
      WTF::fastFree(v36, v32);
    }

    else
    {
      --*v36;
    }
  }

  v37 = *(v28 + 16);
  *(v28 + 16) = 0;
  if (v37)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v37);
  }

  WTF::fastFree(v28, v32);
  v38 = *(v27 + 8);
  *(v27 + 8) = 0;
  if (!v38)
  {
LABEL_20:
    _Unwind_Resume(a1);
  }

  v39 = (v38 + 28);
  if (atomic_load(v39))
  {
    atomic_fetch_add(v39, 0xFFFFFFFF);
    goto LABEL_20;
  }

  result = 290;
  __break(0xC471u);
  return result;
}

void WebKit::NetworkRTCUDPSocketCocoa::~NetworkRTCUDPSocketCocoa(WebKit::NetworkRTCUDPSocketCocoa *this, void *a2)
{
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkRTCUDPSocketCocoaConnections,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    v5 = (v4 + 28);
    if (atomic_load(v5))
    {
      atomic_fetch_add(v5, 0xFFFFFFFF);
    }

    else
    {
      __break(0xC471u);
    }
  }
}

{
  WebKit::NetworkRTCUDPSocketCocoa::~NetworkRTCUDPSocketCocoa(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

uint64_t WebKit::NetworkRTCUDPSocketCocoa::close(WebKit::NetworkRTCUDPSocketCocoa *this)
{
  v2 = 0;
  v3 = *(this + 3);
  atomic_compare_exchange_strong_explicit((v3 + 168), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](v3 + 168);
  }

  *(v3 + 169) = 1;
  v5 = WTF::HashTable<webrtc::SocketAddress,WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashMap<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashTraits<webrtc::SocketAddress>,WTF::HashTraits<std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<webrtc::SocketAddress>,WTF::FastMalloc>::begin(*(v3 + 176));
  v6 = v4;
  v7 = *(v3 + 176);
  if (v7)
  {
    v8 = v7 + 88 * *(v7 - 4);
  }

  else
  {
    v8 = 0;
  }

  if (v8 != v5)
  {
    do
    {
      v9 = *(v5 + 72);
      *(*(v5 + 80) + 4) = 1;
      nw_connection_cancel(v9);
      do
      {
        v5 += 88;
        if (v5 == v6)
        {
          break;
        }

        v10 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<webrtc::SocketAddress>,false>::isEmptyValue<webrtc::SocketAddress>();
        v11 = *(v5 + 60) == 0x80000000 ? 1 : v10;
      }

      while (v11 == 1);
    }

    while (v5 != v8);
    v7 = *(v3 + 176);
  }

  if (v7)
  {
    *(v3 + 176) = 0;
    WTF::HashTable<webrtc::SocketAddress,WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashMap<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashTraits<webrtc::SocketAddress>,WTF::HashTraits<std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<webrtc::SocketAddress>,WTF::FastMalloc>::deallocateTable(v7, v4);
  }

  nw_listener_cancel(*(v3 + 160));
  v12 = *(v3 + 160);
  *(v3 + 160) = 0;
  if (v12)
  {
  }

  v13 = 1;
  atomic_compare_exchange_strong_explicit((v3 + 168), &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != 1)
  {
    WTF::Lock::unlockSlow((v3 + 168));
  }

  v14 = *(this + 1);
  if (v14)
  {
    v15 = (v14 + 24);
    atomic_fetch_add((v14 + 24), 1u);
    WebKit::NetworkRTCProvider::takeSocket(v14, *(this + 2), &v17);
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    return WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref(v15);
  }

  else
  {
    result = 114;
    __break(0xC471u);
  }

  return result;
}

void sub_19D956870(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NetworkRTCUDPSocketCocoa::setOption(WebKit::NetworkRTCUDPSocketCocoa *this, int a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2 != 5)
  {
    return;
  }

  v4 = *(this + 3);
  if (a3 <= 33)
  {
    if (!a3)
    {
      v6 = 0;
      v5 = 0x100000000;
      goto LABEL_12;
    }

    if (a3 == 8)
    {
      v6 = 0;
      v5 = 0x100000064;
      goto LABEL_12;
    }

LABEL_27:
    v17 = qword_1ED641580;
    if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
    {
      v18[0] = 67109120;
      v18[1] = a3;
      _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "NetworkRTCUDPSocketCocoaConnections has an unexpected DSCP value %d", v18, 8u);
    }

    return;
  }

  if (a3 == 34 || a3 == 36)
  {
    v5 = 0x1000000BCLL;
    v6 = 512;
    goto LABEL_12;
  }

  if (a3 != 46)
  {
    goto LABEL_27;
  }

  v5 = 0x100000020;
  v6 = 768;
LABEL_12:
  v7 = 0;
  *(v4 + 188) = BYTE4(v5);
  *(v4 + 184) = v6 | v5;
  atomic_compare_exchange_strong_explicit((v4 + 168), &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v8 = WTF::HashTable<webrtc::SocketAddress,WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashMap<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashTraits<webrtc::SocketAddress>,WTF::HashTraits<std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<webrtc::SocketAddress>,WTF::FastMalloc>::begin(*(v4 + 176));
    v9 = v8;
    v11 = v10;
    v12 = *(v4 + 176);
    v13 = v12 ? v12 + 88 * *(v12 - 4) : 0;
    if (v13 == v8)
    {
      break;
    }

    while ((*(v4 + 188) & 1) != 0)
    {
      nw_connection_reset_traffic_class();
      do
      {
        v9 += 88;
        if (v9 == v11)
        {
          break;
        }

        v14 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<webrtc::SocketAddress>,false>::isEmptyValue<webrtc::SocketAddress>();
        v15 = *(v9 + 60) == 0x80000000 ? 1 : v14;
      }

      while (v15 == 1);
      if (v9 == v13)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_30:
    MEMORY[0x19EB01E30](v4 + 168);
  }

LABEL_25:
  v16 = 1;
  atomic_compare_exchange_strong_explicit((v4 + 168), &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 != 1)
  {

    WTF::Lock::unlockSlow((v4 + 168));
  }
}

void sub_19D956AD8(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NetworkRTCUDPSocketCocoa::sendTo(uint64_t a1, const void *a2, size_t a3, webrtc::SocketAddress *a4)
{
  v5 = *(a1 + 24);
  webrtc::SocketAddress::SocketAddress(__p);
  if (webrtc::SocketAddress::operator==())
  {
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    return;
  }

  v6 = *(a4 + 15);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (v6 != 0x80000000)
  {
    v7 = 0;
    v48 = (v5 + 168);
    atomic_compare_exchange_strong_explicit((v5 + 168), &v7, 1u, memory_order_acquire, memory_order_acquire);
    if (v7)
    {
      MEMORY[0x19EB01E30](v48);
    }

    if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<webrtc::SocketAddress>,false>::isEmptyValue<webrtc::SocketAddress>() || *(a4 + 15) == 0x80000000)
    {
      __break(0xC471u);
      JUMPOUT(0x19D9570C8);
    }

    v8 = *(v5 + 176);
    if (v8 || (WTF::HashTable<webrtc::SocketAddress,WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashMap<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashTraits<webrtc::SocketAddress>,WTF::HashTraits<std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<webrtc::SocketAddress>,WTF::FastMalloc>::expand((v5 + 176), 0), (v8 = *(v5 + 176)) != 0))
    {
      v9 = *(v8 - 8);
    }

    else
    {
      v9 = 0;
    }

    v10 = webrtc::SocketAddress::Hash(a4);
    v11 = 0;
    for (i = 1; ; ++i)
    {
      v13 = v10 & v9;
      v14 = v8 + 88 * (v10 & v9);
      if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<webrtc::SocketAddress>,false>::isEmptyValue<webrtc::SocketAddress>())
      {
        break;
      }

      if (WTF::DefaultHash<webrtc::SocketAddress>::equal((v8 + 88 * v13), a4))
      {
        goto LABEL_64;
      }

      if (*(v14 + 60) == 0x80000000)
      {
        v11 = (v8 + 88 * v13);
      }

      v10 = i + v13;
    }

    if (v11)
    {
      webrtc::SocketAddress::SocketAddress(v11);
      *(v11 + 9) = 0;
      *(v11 + 10) = 0;
      --*(*(v5 + 176) - 16);
      v14 = v11;
    }

    webrtc::SocketAddress::operator=();
    secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
    v16 = webrtc::SocketAddress::ipaddr((v5 + 88));
    webrtc::IPAddress::ToString(__p, v16);
    v17 = webrtc::SocketAddress::ipaddr((v5 + 88));
    if (webrtc::IPAddress::IsNil(v17))
    {
      std::string::operator=(__p, (v5 + 88));
    }

    nw_parameters_allow_sharing_port_with_listener();
    webrtc::SocketAddress::port((v5 + 88));
    host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
    nw_parameters_set_local_endpoint(secure_udp, host_with_numeric_port);
    if (host_with_numeric_port)
    {
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (*(a4 + 8) == 2)
    {
      v19 = 4;
    }

    else
    {
      v19 = 6;
    }

    WebKit::NetworkRTCUDPSocketCocoaConnections::configureParameters(v5, secure_udp, v19);
    if (*(v5 + 188) == 1)
    {
      nw_parameters_set_traffic_class();
    }

    v20 = webrtc::SocketAddress::ipaddr(a4);
    webrtc::IPAddress::ToString(__p, v20);
    v21 = webrtc::SocketAddress::ipaddr(a4);
    if (webrtc::IPAddress::IsNil(v21))
    {
      std::string::operator=(__p, a4);
    }

    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0].__r_.__value_.__r.__words[0];
    }

    v23 = webrtc::SocketAddress::port(a4);
    WTF::String::number(v23);
    WTF::String::utf8();
    if (v51)
    {
      v24 = v51 + 16;
    }

    else
    {
      v24 = 0;
    }

    host = nw_endpoint_create_host(v22, v24);
    if (v51)
    {
      if (*v51 == 1)
      {
        WTF::fastFree(v51, v25);
      }

      else
      {
        --*v51;
      }
    }

    v27 = v55;
    v55 = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v25);
    }

    v28 = nw_connection_create(host, secure_udp);
    v29 = WTF::fastMalloc(8);
    *v29 = 1;
    WebKit::NetworkRTCUDPSocketCocoaConnections::setupNWConnection(v5, v28, v29, a4);
    if (host)
    {
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (secure_udp)
    {
    }

    v31 = *(v14 + 72);
    *(v14 + 72) = v28;
    if (v31)
    {
    }

    v32 = *(v14 + 80);
    *(v14 + 80) = v29;
    if (v32 && atomic_fetch_add(v32, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v32);
      WTF::fastFree(v32, v30);
    }

    v33 = *(v5 + 176);
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
      if (v36 > 2 * v35)
      {
        goto LABEL_64;
      }
    }

    else if (3 * v36 > 4 * v35)
    {
LABEL_64:
      v37 = *(v14 + 72);
      if (v37)
      {
        v38 = v37;
      }

      v39 = 1;
      atomic_compare_exchange_strong_explicit(v48, &v39, 0, memory_order_release, memory_order_relaxed);
      if (v39 != 1)
      {
        WTF::Lock::unlockSlow(v48);
      }

      v40 = dispatch_data_create(a2, a3, 0, 0);
      v41 = *MEMORY[0x1E6977E88];
      v42 = *(v5 + 16);
      v52 = *(v5 + 8);
      while (1)
      {
        v43 = *v42;
        if ((*v42 & 1) == 0)
        {
          break;
        }

        v44 = *v42;
        atomic_compare_exchange_strong_explicit(v42, &v44, v43 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v44 == v43)
        {
          goto LABEL_73;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v42);
LABEL_73:
      webrtc::AsyncSocketPacketOptions::AsyncSocketPacketOptions();
      __p[0].__r_.__value_.__r.__words[0] = v52;
      __p[0].__r_.__value_.__l.__size_ = v42;
      webrtc::AsyncSocketPacketOptions::AsyncSocketPacketOptions();
      v45 = malloc_type_malloc(0xA0uLL, 0x10F004051FA7B4FuLL);
      *v45 = MEMORY[0x1E69E9818];
      v45[1] = 50331650;
      v45[2] = WTF::BlockPtr<void ()(NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCUDPSocketCocoaConnections::sendTo(std::span<unsigned char const,18446744073709551615ul>,webrtc::SocketAddress const&,webrtc::AsyncSocketPacketOptions const&)::$_1>(WebKit::NetworkRTCUDPSocketCocoaConnections::sendTo(std::span<unsigned char const,18446744073709551615ul>,webrtc::SocketAddress const&,webrtc::AsyncSocketPacketOptions const&)::$_1)::{lambda(void *,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke;
      v45[3] = &WTF::BlockPtr<void ()(NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCUDPSocketCocoaConnections::sendTo(std::span<unsigned char const,18446744073709551615ul>,webrtc::SocketAddress const&,webrtc::AsyncSocketPacketOptions const&)::$_1>(WebKit::NetworkRTCUDPSocketCocoaConnections::sendTo(std::span<unsigned char const,18446744073709551615ul>,webrtc::SocketAddress const&,webrtc::AsyncSocketPacketOptions const&)::$_1)::descriptor;
      size = __p[0].__r_.__value_.__l.__size_;
      __p[0].__r_.__value_.__l.__size_ = 0;
      v45[4] = __p[0].__r_.__value_.__r.__words[0];
      v45[5] = size;
      webrtc::AsyncSocketPacketOptions::AsyncSocketPacketOptions();
      webrtc::AsyncSocketPacketOptions::~AsyncSocketPacketOptions(&__p[0].__r_.__value_.__r.__words[2]);
      v47 = __p[0].__r_.__value_.__l.__size_;
      __p[0].__r_.__value_.__l.__size_ = 0;
      if (v47)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v47);
      }

      nw_connection_send(v37, v40, v41, 1, v45);
      _Block_release(v45);
      webrtc::AsyncSocketPacketOptions::~AsyncSocketPacketOptions(&v53);
      if (v40)
      {

        if (!v37)
        {
          return;
        }
      }

      else if (!v37)
      {
        return;
      }

      return;
    }

    v14 = WTF::HashTable<webrtc::SocketAddress,WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashMap<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashTraits<webrtc::SocketAddress>,WTF::HashTraits<std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<webrtc::SocketAddress>,WTF::FastMalloc>::expand((v5 + 176), v14);
    goto LABEL_64;
  }
}

void sub_19D9570EC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::Lock *a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (atomic_fetch_add(v34, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v34);
    WTF::fastFree(v34, a2);
    if (!v37)
    {
LABEL_3:
      if (!v36)
      {
        goto LABEL_8;
      }

LABEL_7:

LABEL_8:
      if (a34 < 0)
      {
        operator delete(__p);
      }

      if (v35)
      {
      }

      v39 = 1;
      atomic_compare_exchange_strong_explicit(a9, &v39, 0, memory_order_release, memory_order_relaxed);
      if (v39 != 1)
      {
        WTF::Lock::unlockSlow(a9);
      }

      _Unwind_Resume(exception_object);
    }
  }

  else if (!v37)
  {
    goto LABEL_3;
  }

  if (!v36)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void WebKit::NetworkRTCUDPSocketCocoaConnections::configureParameters(uint64_t a1, nw_parameters_t parameters, uint64_t a3)
{
  v10 = nw_parameters_copy_default_protocol_stack(parameters);
  v6 = nw_protocol_stack_copy_internet_protocol(v10);
  MEMORY[0x19EB157F0](v6, a3);
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = (v7 + 16);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 56);
  v11[0] = *(a1 + 40);
  v11[1] = v9;
  v12 = *(a1 + 72);
  WebKit::setNWParametersApplicationIdentifiers(parameters, v8, v11, a1 + 80);
  WebKit::setNWParametersTrackerOptions(parameters, *(a1 + 26), *(a1 + 24), *(a1 + 25));
  nw_parameters_set_reuse_local_address(parameters, 1);
  if (v6)
  {
  }

  if (v10)
  {
  }
}

void sub_19D957398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::NetworkRTCUDPSocketCocoaConnections::~NetworkRTCUDPSocketCocoaConnections(WebKit::NetworkRTCUDPSocketCocoaConnections *this, void *a2)
{
  v3 = *(this + 22);
  if (v3)
  {
    WTF::HashTable<webrtc::SocketAddress,WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashMap<webrtc::SocketAddress,std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>,WTF::DefaultHash<webrtc::SocketAddress>,WTF::HashTraits<webrtc::SocketAddress>,WTF::HashTraits<std::pair<WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*>,WTF::RefPtr<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<webrtc::SocketAddress>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 20);
  *(this + 20) = 0;
  if (v4)
  {
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    if (*v6 == 1)
    {
      WTF::fastFree(v6, a2);
    }

    else
    {
      --*v6;
    }
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7);
  }
}

void WebKit::NetworkRTCUDPSocketCocoaConnections::setupNWConnection(uint64_t a1, nw_connection_t connection, atomic_uint *a3, webrtc::SocketAddress *a4)
{
  if (qword_1ED641C60 != -1)
  {
    dispatch_once(&qword_1ED641C60, &__block_literal_global_159);
  }

  nw_connection_set_queue(connection, qword_1ED641C58);
  atomic_fetch_add(a3, 1u);
  v8 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v8 = MEMORY[0x1E69E9818];
  v8[1] = 50331650;
  v8[2] = WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCUDPSocketCocoaConnections::setupNWConnection(NSObject {objcproto16OS_nw_connection}*,WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker &,webrtc::SocketAddress const&)::$_0>(WebKit::NetworkRTCUDPSocketCocoaConnections::setupNWConnection(NSObject {objcproto16OS_nw_connection}*,WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker &,webrtc::SocketAddress const&)::$_0)::{lambda(void *,nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke;
  v8[3] = &WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCUDPSocketCocoaConnections::setupNWConnection(NSObject {objcproto16OS_nw_connection}*,WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker &,webrtc::SocketAddress const&)::$_0>(WebKit::NetworkRTCUDPSocketCocoaConnections::setupNWConnection(NSObject {objcproto16OS_nw_connection}*,WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker &,webrtc::SocketAddress const&)::$_0)::descriptor;
  v8[4] = a3;
  nw_connection_set_state_changed_handler(connection, v8);
  _Block_release(v8);
  v23 = connection;
  if (connection)
  {
    v9 = connection;
  }

  atomic_fetch_add(a3, 1u);
  v22 = a3;
  v10 = *(a1 + 16);
  v17 = *(a1 + 8);
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
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_10:
  v13 = webrtc::SocketAddress::ipaddr(a4);
  v18 = *(v13 + 8);
  v19 = *(v13 + 12);
  v20 = webrtc::SocketAddress::port(a4);
  v14 = WTF::fastMalloc(0x40);
  *v14 = &unk_1F10EE138;
  *(v14 + 8) = v17;
  *(v14 + 16) = v10;
  *(v14 + 24) = &off_1F10EE1B0;
  *(v14 + 32) = v18;
  *(v14 + 36) = v19;
  *(v14 + 56) = v20;
  v21 = v14;
  WebKit::processUDPData(&v23, &v22, 0, &v21);
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v16 = v22;
  v22 = 0;
  if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v16);
    WTF::fastFree(v16, v15);
  }

  if (v23)
  {
  }

  nw_connection_start(connection);
}

void sub_19D9576F0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_ullong *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF *a17)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(a10);
  }

  if (a17 && atomic_fetch_add(a17, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a17);
    WTF::fastFree(a17, a2);
  }

  v19 = *(v17 - 56);
  if (v19)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::processUDPData(NSObject **a1, uint64_t *a2, int a3, uint64_t *a4)
{
  v5 = *a1;
  *a1 = 0;
  v6 = *a4;
  *a4 = 0;
  v7 = *a2;
  *a2 = 0;
  v8 = malloc_type_malloc(0x40uLL, 0x10E00405DB5D7DDuLL);
  *v8 = MEMORY[0x1E69E9818];
  v8[1] = 50331650;
  v8[2] = WTF::BlockPtr<void ()(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)>::fromCallable<WebKit::processUDPData(WTF::RetainPtr<NSObject {objcproto16OS_nw_connection}*> &&,WTF::Ref<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections>>,int,WTF::Function<void ()(std::span<unsigned char const,18446744073709551615ul>,WebKit::WebRTCNetwork::EcnMarking)> &&)::{lambda(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1}>(WebKit::processUDPData(WTF::RetainPtr<NSObject {objcproto16OS_nw_connection}*> &&,WTF::Ref<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections>>,int,WTF::Function<void ()(std::span<unsigned char const,18446744073709551615ul>,WebKit::WebRTCNetwork::EcnMarking)> &&)::{lambda(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1})::{lambda(void *,NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1}::__invoke;
  v8[3] = &WTF::BlockPtr<void ()(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)>::fromCallable<WebKit::processUDPData(WTF::RetainPtr<NSObject {objcproto16OS_nw_connection}*> &&,WTF::Ref<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections>>,int,WTF::Function<void ()(std::span<unsigned char const,18446744073709551615ul>,WebKit::WebRTCNetwork::EcnMarking)> &&)::{lambda(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1}>(WebKit::processUDPData(WTF::RetainPtr<NSObject {objcproto16OS_nw_connection}*> &&,WTF::Ref<WebKit::NetworkRTCUDPSocketCocoaConnections::ConnectionStateTracker,WTF::RawPtrTraits<WebKit::NetworkRTCUDPSocketCocoaConnections>,WTF::DefaultRefDerefTraits<WebKit::NetworkRTCUDPSocketCocoaConnections>>,int,WTF::Function<void ()(std::span<unsigned char const,18446744073709551615ul>,WebKit::WebRTCNetwork::EcnMarking)> &&)::{lambda(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1})::descriptor;
  v8[4] = v5;
  v8[5] = v6;
  *(v8 + 12) = a3;
  v8[7] = v7;
  nw_connection_receive(v5, 1u, 0xFFFFFFFF, v8);

  _Block_release(v8);
}

void WebKit::NetworkTransportSession::initialize(unsigned int *a1, uint64_t *a2, uint64_t *a3, __int128 *a4, uint64_t *a5)
{
  v83 = *MEMORY[0x1E69E9840];
  WTF::String::utf8();
  if (v68)
  {
    v10 = v68 + 16;
  }

  else
  {
    v10 = 0;
  }

  url = nw_endpoint_create_url(v10);
  v13 = v68;
  v68 = 0;
  if (!v13)
  {
LABEL_7:
    if (url)
    {
      goto LABEL_8;
    }

    goto LABEL_77;
  }

  if (*v13 != 1)
  {
    --*v13;
    goto LABEL_7;
  }

  WTF::fastFree(v13, v11);
  if (url)
  {
LABEL_8:
    WebCore::SecurityOriginData::toString(&v56, (a4 + 2));
    ++a1[5];
    v57 = a1;
    WTF::URL::URL(&v58, a2);
    v61 = *a3;
    LOBYTE(v62) = 0;
    v64 = -1;
    v14 = *(a4 + 24);
    if (*(a4 + 24))
    {
      if (v14 == 255)
      {
LABEL_11:
        LOBYTE(v65) = 0;
        v67 = -1;
        v16 = *(a4 + 56);
        if (*(a4 + 56))
        {
          if (v16 == 255)
          {
LABEL_14:
            v68 = MEMORY[0x1E69E9820];
            v69 = 3321888768;
            v70 = ___ZZN6WebKitL16createParametersERNS_29NetworkConnectionToWebProcessEON3WTF3URLEONS2_23ObjectIdentifierGenericINS_26WebPageProxyIdentifierTypeENS2_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore12ClientOriginEENK3__1cvU13block_pointerFvPU33objcproto22OS_nw_protocol_options8NSObjectEEv_block_invoke;
            v71 = &__block_descriptor_40_e8_32c225_ZTSKZN6WebKitL16createParametersERNS_29NetworkConnectionToWebProcessEON3WTF3URLEONS2_23ObjectIdentifierGenericINS_26WebPageProxyIdentifierTypeENS2_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore12ClientOriginEE3__1_e42_v16__0__NSObject_OS_nw_protocol_options__8l;
            v18 = v56;
            if (v56)
            {
              atomic_fetch_add_explicit(v56, 2u, memory_order_relaxed);
            }

            v72 = v18;
            [objc_msgSend(&v68 "copy")];
            v20 = v72;
            v72 = 0;
            if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v20, v19);
            }

            v68 = MEMORY[0x1E69E9820];
            v69 = 3321888768;
            v70 = ___ZZN6WebKitL16createParametersERNS_29NetworkConnectionToWebProcessEON3WTF3URLEONS2_23ObjectIdentifierGenericINS_26WebPageProxyIdentifierTypeENS2_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore12ClientOriginEENK3__0cvU13block_pointerFvPU33objcproto22OS_nw_protocol_options8NSObjectEEv_block_invoke;
            v71 = &__block_descriptor_152_e8_32c225_ZTSKZN6WebKitL16createParametersERNS_29NetworkConnectionToWebProcessEON3WTF3URLEONS2_23ObjectIdentifierGenericINS_26WebPageProxyIdentifierTypeENS2_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore12ClientOriginEE3__0_e42_v16__0__NSObject_OS_nw_protocol_options__8l;
            v22 = v57;
            v21 = v58;
            ++*(v57 + 5);
            v72 = v22;
            if (v21)
            {
              atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
            }

            v73 = v21;
            v74 = v59;
            v75 = v60;
            v76 = v61;
            LOBYTE(v77) = 0;
            v79 = -1;
            v23 = v64;
            if (v64)
            {
              if (v64 == 255)
              {
LABEL_28:
                LOBYTE(v80) = 0;
                v82 = -1;
                v26 = v67;
                if (v67)
                {
                  if (v67 == 255)
                  {
                    goto LABEL_35;
                  }

                  v80 = v65;
                }

                else
                {
                  v27 = v65;
                  if (v65)
                  {
                    atomic_fetch_add_explicit(v65, 2u, memory_order_relaxed);
                  }

                  *&v80 = v27;
                  v28 = *(&v65 + 1);
                  if (*(&v65 + 1))
                  {
                    atomic_fetch_add_explicit(*(&v65 + 1), 2u, memory_order_relaxed);
                  }

                  *(&v80 + 1) = v28;
                  v81 = v66;
                  v26 = v67;
                }

                v82 = v26;
LABEL_35:
                [objc_msgSend(&v68 "copy")];
                mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v80);
                mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v77);
                v30 = v73;
                v73 = 0;
                if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v30, v29);
                }

                v31 = v72;
                v72 = 0;
                if (v31)
                {
                  if (*(v31 + 5) == 1)
                  {
                    (*(*v31 + 8))(v31);
                  }

                  else
                  {
                    --*(v31 + 5);
                  }
                }

                v68 = MEMORY[0x1E69E9820];
                v69 = 3321888768;
                v70 = ___ZZN6WebKitL16createParametersERNS_29NetworkConnectionToWebProcessEON3WTF3URLEONS2_23ObjectIdentifierGenericINS_26WebPageProxyIdentifierTypeENS2_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore12ClientOriginEENK3__2cvU13block_pointerFvPU33objcproto22OS_nw_protocol_options8NSObjectEEv_block_invoke;
                v71 = &__block_descriptor_33_e8_32c225_ZTSKZN6WebKitL16createParametersERNS_29NetworkConnectionToWebProcessEON3WTF3URLEONS2_23ObjectIdentifierGenericINS_26WebPageProxyIdentifierTypeENS2_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEON7WebCore12ClientOriginEE3__2_e42_v16__0__NSObject_OS_nw_protocol_options__8l;
                [objc_msgSend(&v68 "copy")];
                webtransport_http = nw_parameters_create_webtransport_http();
                mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v65);
                mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v62);
                v34 = v58;
                v58 = 0;
                if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v34, v33);
                }

                v35 = v57;
                v57 = 0;
                if (v35)
                {
                  if (*(v35 + 5) == 1)
                  {
                    (*(*v35 + 8))(v35);
                  }

                  else
                  {
                    --*(v35 + 5);
                  }
                }

                v36 = v56;
                v56 = 0;
                if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v36, v33);
                  if (webtransport_http)
                  {
                    goto LABEL_50;
                  }
                }

                else if (webtransport_http)
                {
LABEL_50:
                  multiplex = nw_group_descriptor_create_multiplex(url);
                  v38 = multiplex;
                  if (multiplex)
                  {
                    v40 = nw_connection_group_create(multiplex, webtransport_http);
                    if (v40)
                    {
                      if (WebKit::NetworkTransportSession::s_heapRef)
                      {
                        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkTransportSession::s_heapRef, v39);
                      }

                      else
                      {
                        NonCompact = WebKit::NetworkTransportSession::operatorNewSlow(0x50);
                      }

                      v42 = NonCompact;
                      *(NonCompact + 16) = 1;
                      *(NonCompact + 8) = 0;
                      v43 = (NonCompact + 8);
                      *NonCompact = &unk_1F10EA5E0;
                      *(NonCompact + 24) = &unk_1F1147570;
                      IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
                      *v42 = &unk_1F110CA10;
                      v42[3] = &unk_1F110CA68;
                      v42[4] = IdentifierInternal;
                      v42[5] = 0;
                      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1 + 16, (a1 + 14));
                      v45 = *(a1 + 8);
                      atomic_fetch_add(v45, 1u);
                      v42[6] = v45;
                      v42[7] = v40;
                      v46 = v40;
                      v42[8] = url;
                      v47 = url;
                      v42[9] = 0;
                      v48 = v42[7];
                      WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v43, v42);
                      v49 = *v43;
                      atomic_fetch_add(*v43, 1u);
                      v50 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
                      *v50 = MEMORY[0x1E69E9818];
                      v50[1] = 50331650;
                      v50[2] = WTF::BlockPtr<void ()(NSObject  {objcproto16OS_nw_connection}*)>::fromCallable<WebKit::NetworkTransportSession::setupConnectionHandler(void)::$_0>(WebKit::NetworkTransportSession::setupConnectionHandler(void)::$_0)::{lambda(void *,NSObject  {objcproto16OS_nw_connection}*)#1}::__invoke;
                      v50[3] = &WTF::BlockPtr<void ()(NSObject  {objcproto16OS_nw_connection}*)>::fromCallable<WebKit::NetworkTransportSession::setupConnectionHandler(void)::$_0>(WebKit::NetworkTransportSession::setupConnectionHandler(void)::$_0)::descriptor;
                      v50[4] = v49;
                      nw_connection_group_set_new_connection_handler(v48, v50);
                      _Block_release(v50);
                      v51 = *a5;
                      *a5 = 0;
                      v52 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
                      *v52 = MEMORY[0x1E69E9818];
                      v52[1] = 50331650;
                      v52[2] = WTF::BlockPtr<void ()(nw_connection_group_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::initialize(WebKit::NetworkConnectionToWebProcess &,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)> &&)::$_0>(WebKit::NetworkTransportSession::initialize(WebKit::NetworkConnectionToWebProcess &,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)> &&)::$_0)::{lambda(void *,nw_connection_group_state_t,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke;
                      v52[3] = &WTF::BlockPtr<void ()(nw_connection_group_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::initialize(WebKit::NetworkConnectionToWebProcess &,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)> &&)::$_0>(WebKit::NetworkTransportSession::initialize(WebKit::NetworkConnectionToWebProcess &,WTF::URL &&,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long> &&,WebCore::ClientOrigin &&,WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)> &&)::$_0)::descriptor;
                      v52[4] = v42;
                      v52[5] = v51;
                      nw_connection_group_set_state_changed_handler(v40, v52);
                      _Block_release(v52);
                      nw_connection_group_set_queue(v40, MEMORY[0x1E69E96A0]);
                      nw_connection_group_start(v40);
                    }

                    else
                    {
                      v68 = 0;
                      WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)>::operator()(a5);
                      v54 = v68;
                      v68 = 0;
                      if (v54)
                      {
                        if (*(v54 + 4) == 1)
                        {
                          (*(*v54 + 24))(v54);
                        }

                        else
                        {
                          --*(v54 + 4);
                        }
                      }
                    }
                  }

                  else
                  {
                    v68 = 0;
                    WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)>::operator()(a5);
                    v53 = v68;
                    v68 = 0;
                    if (v53)
                    {
                      if (*(v53 + 4) == 1)
                      {
                        (*(*v53 + 24))(v53);
                      }

                      else
                      {
                        --*(v53 + 4);
                      }
                    }
                  }

LABEL_67:
                  return;
                }

                v68 = 0;
                WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)>::operator()(a5);
                v55 = v68;
                v68 = 0;
                if (v55)
                {
                  if (*(v55 + 4) == 1)
                  {
                    (*(*v55 + 24))(v55);
                  }

                  else
                  {
                    --*(v55 + 4);
                  }
                }

                goto LABEL_67;
              }

              v77 = v62;
            }

            else
            {
              v24 = v62;
              if (v62)
              {
                atomic_fetch_add_explicit(v62, 2u, memory_order_relaxed);
              }

              *&v77 = v24;
              v25 = *(&v62 + 1);
              if (*(&v62 + 1))
              {
                atomic_fetch_add_explicit(*(&v62 + 1), 2u, memory_order_relaxed);
              }

              *(&v77 + 1) = v25;
              v78 = v63;
              v23 = v64;
            }

            v79 = v23;
            goto LABEL_28;
          }

          v65 = a4[2];
        }

        else
        {
          v17 = a4[2];
          *(a4 + 4) = 0;
          *(a4 + 5) = 0;
          v65 = v17;
          v66 = *(a4 + 12);
        }

        v67 = v16;
        goto LABEL_14;
      }

      v62 = *a4;
    }

    else
    {
      v15 = *a4;
      *a4 = 0;
      *(a4 + 1) = 0;
      v62 = v15;
      v63 = *(a4 + 4);
    }

    v64 = v14;
    goto LABEL_11;
  }

LABEL_77:
  WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)>::operator()(a5);
  v68 = 0;
}

void sub_19D958198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF *a26, uint64_t a27, uint64_t a28, uint64_t a29, WTF::StringImpl *a30, WTF::StringImpl *a31)
{
  if (a26)
  {
    if (*(a26 + 4) == 1)
    {
      (*(*a26 + 24))(a26);
    }

    else
    {
      --*(a26 + 4);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(WTF::RefPtr<WebKit::NetworkTransportSession,WTF::RawPtrTraits<WebKit::NetworkTransportSession>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportSession>> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebKit::NetworkTransportSession::createStream(uint64_t a1, int a2, uint64_t *a3)
{
  options = nw_webtransport_create_options();
  if (options)
  {
    protocol_options = options;
    nw_webtransport_options_set_is_unidirectional();
    nw_webtransport_options_set_is_datagram();
    connection = nw_connection_group_extract_connection(*(a1 + 56), 0, protocol_options);
    if (connection)
    {
      v8 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
      v9 = *(a1 + 8);
      atomic_fetch_add(v9, 1u);
      v10 = *a3;
      *a3 = 0;
      v12 = WebKit::NetworkTransportStream::operator new(v8, v11);
      WebKit::NetworkTransportStream::NetworkTransportStream(v12, a1, connection, a2);
      v13 = malloc_type_malloc(0x38uLL, 0x10E004099C88F60uLL);
      *v13 = MEMORY[0x1E69E9818];
      v13[1] = 50331650;
      v13[2] = WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::createStream(WebKit::NetworkTransportStreamType,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_0>(WebKit::NetworkTransportSession::createStream(WebKit::NetworkTransportStreamType,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_0)::{lambda(void *,nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke;
      v13[3] = &WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::createStream(WebKit::NetworkTransportStreamType,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_0>(WebKit::NetworkTransportSession::createStream(WebKit::NetworkTransportStreamType,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)> &&)::$_0)::descriptor;
      v13[4] = v9;
      v13[5] = v10;
      v13[6] = v12;
      nw_connection_set_state_changed_handler(connection, v13);
      _Block_release(v13);
      nw_connection_set_queue(connection, MEMORY[0x1E69E96A0]);
      nw_connection_start(connection);
    }

    else
    {
      WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)>::operator()(a3);
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)>::operator()(a3);
  }
}

WTF *WebKit::NetworkTransportSession::sendDatagram(WTF *result, char *a2, WTF *this, uint64_t *a4)
{
  v5 = this;
  v6 = *(result + 9);
  v16 = 0;
  v17 = 0;
  v18 = this;
  if (this)
  {
    if (this >> 32)
    {
      __break(0xC471u);
      return result;
    }

    v8 = WTF::fastMalloc(this);
    v17 = v5;
    v16 = v8;
    do
    {
      v9 = *a2++;
      *v8 = v9;
      v8 = (v8 + 1);
      v5 = (v5 - 1);
    }

    while (v5);
  }

  WTF::makeDispatchData<unsigned char>(&v16, &v19);
  v10 = v19;
  v11 = *a4;
  *a4 = 0;
  v12 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  v13 = *MEMORY[0x1E6977E88];
  *v12 = MEMORY[0x1E69E9818];
  v12[1] = 50331650;
  v12[2] = WTF::BlockPtr<void ()(NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::sendDatagram(std::span<unsigned char const,18446744073709551615ul>,WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)> &&)::$_0>(WebKit::NetworkTransportSession::sendDatagram(std::span<unsigned char const,18446744073709551615ul>,WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)> &&)::$_0)::{lambda(void *,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke;
  v12[3] = &WTF::BlockPtr<void ()(NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::sendDatagram(std::span<unsigned char const,18446744073709551615ul>,WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)> &&)::$_0>(WebKit::NetworkTransportSession::sendDatagram(std::span<unsigned char const,18446744073709551615ul>,WTF::CompletionHandler<void ()(std::optional<WebCore::Exception> &&)> &&)::$_0)::descriptor;
  v12[4] = v11;
  nw_connection_send(v6, v10, v13, 1, v12);
  _Block_release(v12);
  v15 = v19;
  v19 = 0;
  if (v15)
  {
  }

  result = v16;
  if (v16)
  {
    v16 = 0;
    v17 = 0;
    return WTF::fastFree(result, v14);
  }

  return result;
}

void sub_19D958A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, void *a12)
{
  _Block_release(v12);
  if (a12)
  {
  }

  if (a10)
  {
    WTF::fastFree(a10, v14);
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebKit::NetworkTransportSession::receiveDatagramLoop(WebKit::NetworkTransportSession *this)
{
  v2 = *(this + 9);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
  v3 = *(this + 1);
  atomic_fetch_add(v3, 1u);
  v4 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v4 = MEMORY[0x1E69E9818];
  v4[1] = 50331650;
  v4[2] = WTF::BlockPtr<void ()(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::receiveDatagramLoop(void)::$_0>(WebKit::NetworkTransportSession::receiveDatagramLoop(void)::$_0)::{lambda(void *,NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1}::__invoke;
  v4[3] = &WTF::BlockPtr<void ()(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkTransportSession::receiveDatagramLoop(void)::$_0>(WebKit::NetworkTransportSession::receiveDatagramLoop(void)::$_0)::descriptor;
  v4[4] = v3;
  nw_connection_receive(v2, 1u, 0xFFFFFFFF, v4);

  _Block_release(v4);
}

void WebKit::NetworkTransportSession::terminate(void *a1, uint64_t a2, void *a3)
{
  v6 = a1[7];
  v7 = nw_protocol_copy_webtransport_definition();
  v8 = nw_connection_group_copy_protocol_metadata(v6, v7);
  v10 = v8;
  if (v8)
  {
    v11 = v8;
  }

  if (v7)
  {
  }

  if (v10)
  {
    (*MEMORY[0x1E69E2478])(v10, a2);
    if (*a3)
    {
      v12 = *a3 + 16;
    }

    else
    {
      v12 = 0;
    }

    (*MEMORY[0x1E69E2488])(v10, v12);
  }

  v13 = a1[9];
  if (v13)
  {
    nw_connection_cancel(v13);
  }

  v14 = a1[5];
  a1[5] = 0;
  if (!v14)
  {
    v16 = 0;
    v15 = 0;
LABEL_21:
    v18 = v16;
    v16 = (v14 + 16 * v15);
    if (!v14)
    {
      v20 = 0;
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  v15 = *(v14 - 4);
  v16 = (v14 + 16 * v15);
  if (!*(v14 - 12))
  {
    goto LABEL_21;
  }

  if (!v15)
  {
    v19 = 0;
    v18 = v14;
    goto LABEL_24;
  }

  v17 = 16 * v15;
  v18 = v14;
  while ((*v18 + 1) <= 1)
  {
    v18 += 2;
    v17 -= 16;
    if (!v17)
    {
      v18 = v16;
      break;
    }
  }

LABEL_19:
  v19 = *(v14 - 4);
LABEL_24:
  v20 = (v14 + 16 * v19);
LABEL_28:
  while (v18 != v20)
  {
    nw_connection_cancel(*(v18[1] + 32));
    do
    {
      v18 += 2;
    }

    while (v18 != v16 && (*v18 + 1) <= 1);
  }

  if (v14)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::NetworkTransportStream,WTF::RawPtrTraits<WebKit::NetworkTransportStream>,WTF::DefaultRefDerefTraits<WebKit::NetworkTransportStream>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::WebTransportStreamIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v14, v9);
  }

  v21 = a1[7];

  nw_connection_group_cancel(v21);
}

WTF::StringImpl **WTF::HashMap<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebCore::RegistrableDomain>(uint64_t a1, uint64_t *a2, WTF **a3, WTF::StringImpl **a4)
{
  if (WTF::equal(*a3, 0, a3) || *a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D95909CLL);
  }

  v9 = *a2;
  if (*a2 || (WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebCore::RegistrableDomain>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(a2, 0), (v9 = *a2) != 0))
  {
    v10 = *(v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = WTF::ASCIICaseInsensitiveHash::hash(*a3, v8) & v10;
  v12 = (v9 + 16 * v11);
  if ((WTF::equal(*v12, 0, v13) & 1) == 0)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (*v12 == -1)
      {
        v16 = v12;
      }

      else
      {
        result = WTF::equalIgnoringASCIICase(*v12, *a3, v15);
        if (result)
        {
          v26 = *a2;
          if (*a2)
          {
            v27 = *(v26 - 4);
          }

          else
          {
            v27 = 0;
          }

          v29 = 0;
          v28 = v26 + 16 * v27;
          goto LABEL_32;
        }
      }

      v11 = (v11 + v17) & v10;
      v12 = (v9 + 16 * v11);
      ++v17;
    }

    while (!WTF::equal(*v12, 0, v15));
    if (v16)
    {
      *v16 = 0;
      v16[1] = 0;
      --*(*a2 - 16);
      v12 = v16;
    }
  }

  v19 = *a3;
  *a3 = 0;
  v20 = *v12;
  *v12 = v19;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v14);
  }

  v21 = *a4;
  *a4 = 0;
  result = v12[1];
  v12[1] = v21;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v14);
  }

  v22 = *a2;
  if (*a2)
  {
    v23 = *(v22 - 12) + 1;
  }

  else
  {
    v23 = 1;
  }

  *(v22 - 12) = v23;
  v24 = (*(v22 - 16) + v23);
  v25 = *(v22 - 4);
  if (v25 > 0x400)
  {
    if (v25 <= 2 * v24)
    {
LABEL_26:
      result = WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebCore::RegistrableDomain>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(a2, v12);
      v12 = result;
      v22 = *a2;
      if (*a2)
      {
        v25 = *(v22 - 4);
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else if (3 * v25 <= 4 * v24)
  {
    goto LABEL_26;
  }

  v28 = v22 + 16 * v25;
  v29 = 1;
LABEL_32:
  *a1 = v12;
  *(a1 + 8) = v28;
  *(a1 + 16) = v29;
  return result;
}

WTF::StringImpl **WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WebCore::RegistrableDomain>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WebCore::RegistrableDomain>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::StringImpl **a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 4);
    v4 = *(v2 - 12);
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
  *a1 = (v6 + 4);
  v6[2] = v5 - 1;
  v6[3] = v5;
  *v6 = 0;
  v6[1] = v4;
  if (v3)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = (v2 + 16 * v9);
      if (*v11 != -1)
      {
        if (WTF::equal(*v11, 0, v8))
        {
          v12 = v11[1];
          v11[1] = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v7);
          }

          v13 = *v11;
          *v11 = 0;
          if (v13)
          {
            if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, v7);
            }
          }
        }

        else
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

          v16 = WTF::ASCIICaseInsensitiveHash::hash(*v11, v7);
          v17 = 0;
          do
          {
            v18 = v16 & v15;
            v19 = WTF::equal(*(v14 + 16 * v18), 0, v8);
            v16 = ++v17 + v18;
          }

          while (!v19);
          v20 = (v14 + 16 * v18);
          v21 = v20[1];
          v20[1] = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v7);
          }

          v22 = *v20;
          *v20 = 0;
          if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v7);
          }

          v23 = *v11;
          *v11 = 0;
          *v20 = v23;
          v24 = v11[1];
          v11[1] = 0;
          v20[1] = v24;
          v25 = v11[1];
          v11[1] = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v7);
          }

          v26 = *v11;
          *v11 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v7);
          }

          if (v11 == a2)
          {
            v10 = v20;
          }
        }
      }

      ++v9;
    }

    while (v9 != v3);
  }

  else
  {
    v10 = 0;
    result = 0;
    if (!v2)
    {
      return result;
    }
  }

  WTF::fastFree((v2 - 16), v7);
  return v10;
}

WTF::StringImpl *WTF::BlockPtr<NSArray<NSHTTPCookie *> * ()(NSArray<NSHTTPCookie *> *)>::fromCallable<WebKit::NetworkTaskCocoa::setCookieTransformForThirdPartyRequest(WebCore::ResourceRequest const&,WebKit::NetworkTaskCocoa::IsRedirect)::$_0>(WebKit::NetworkTaskCocoa::setCookieTransformForThirdPartyRequest(WebCore::ResourceRequest const&,WebKit::NetworkTaskCocoa::IsRedirect)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  objc_destroyWeak((a1 + 72));
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(result, v4);
  }

  return result;
}

void *WTF::BlockPtr<NSArray<NSHTTPCookie *> * ()(NSArray<NSHTTPCookie *> *)>::fromCallable<WebKit::NetworkTaskCocoa::setCookieTransformForThirdPartyRequest(WebCore::ResourceRequest const&,WebKit::NetworkTaskCocoa::IsRedirect)::$_0>(WebKit::NetworkTaskCocoa::setCookieTransformForThirdPartyRequest(WebCore::ResourceRequest const&,WebKit::NetworkTaskCocoa::IsRedirect)::$_0)::{lambda(void *,NSArray<NSHTTPCookie *> *)#1}::__invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if ([a2 count] && (v6 = *(a1 + 80)) != 0 && v6[1])
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v21, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }

      v8 = v21;
      v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a2, "count")}];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = [a2 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        v14 = *v23;
        do
        {
          v15 = 0;
          do
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(a2);
            }

            v16 = WebCore::NetworkStorageSession::setCookiePartition(*(*(&v22 + 1) + 8 * v15), v8, v12);
            v17 = v16;
            if (v16)
            {
              v18 = v16;
              [v10 addObject:v17];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [a2 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v13);
      }

      if (v10)
      {
      }

      v19 = v21;
      v21 = 0;
      if (v19)
      {
      }
    }

    else
    {
      v10 = a2;
    }

    return v10;
  }

  return a2;
}

void sub_19D959520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v11)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::NetworkTaskCocoa::setCookieTransformForFirstPartyRequest(WebCore::ResourceRequest const&)::$_0::$_0(uint64_t a1, uint64_t a2)
{
  WTF::URL::URL(a1, a2);
  WTF::URL::URL(v4 + 40, (a2 + 40));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v9 = *(a2 + 80);
    *(a2 + 80) = 0;
    *(a1 + 80) = v9;
    *(a1 + 88) = 1;
  }

  v5 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v5;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v10 = *(a2 + 120);
    *(a2 + 120) = 0;
    *(a1 + 120) = v10;
    *(a1 + 128) = 1;
  }

  v6 = *(a2 + 136);
  *(a1 + 144) = 0;
  *(a1 + 136) = v6;
  objc_moveWeak((a1 + 144), (a2 + 144));
  v7 = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a1 + 152) = v7;
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

void sub_19D95965C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 128) == 1)
  {
    v5 = *(v2 + 120);
    *(v2 + 120) = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  if (*(v2 + 88) == 1)
  {
    v6 = *(v2 + 80);
    *(v2 + 80) = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }
  }

  v4 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::BlockPtr<NSArray<NSHTTPCookie *> * ()(NSArray<NSHTTPCookie *> *)>::fromCallable<WebKit::NetworkTaskCocoa::setCookieTransformForFirstPartyRequest(WebCore::ResourceRequest const&)::$_0>(WebKit::NetworkTaskCocoa::setCookieTransformForFirstPartyRequest(WebCore::ResourceRequest const&)::$_0)::{lambda(void *,NSArray<NSHTTPCookie *> *)#1}::__invoke(uint64_t a1, id a2)
{
  v63 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 176));
  if (!WeakRetained)
  {
    return a2;
  }

  v6 = WeakRetained;
  if (![a2 count])
  {
LABEL_82:

    return a2;
  }

  v7 = [objc_msgSend(v6 "_resolvedCNAMEChain")];
  v9 = v7;
  if (v7)
  {
    v10 = v7;
    MEMORY[0x19EB02040](v58, v9);
    WebKit::NetworkTaskCocoa::lastCNAMEDomain(v58, &v56);
    v12 = v58[0];
    v58[0] = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    if (v56 && *(v56 + 1) && !MEMORY[0x19EB01EF0]())
    {
      goto LABEL_17;
    }
  }

  else
  {
    v56 = 0;
  }

  if (*(a1 + 160) != 1)
  {
LABEL_17:
    v13 = v56;
    goto LABEL_18;
  }

  v13 = *(a1 + 152);
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  v14 = v56;
  v56 = v13;
  if (v14)
  {
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v8);
    }

    goto LABEL_17;
  }

LABEL_18:
  if (v13 && v13[1] && !MEMORY[0x19EB01EF0]())
  {
    v34 = WTF::URL::host((a1 + 72));
    if (WebCore::RegistrableDomain::matches(&v56, v34, v35 & 0xFFFFFFFFFFLL) & 1) != 0 || *(a1 + 120) == 1 && (WTF::equal(v56, *(a1 + 112), v36))
    {
      goto LABEL_79;
    }

    WebKit::cookiesByCappingExpiry(v58, a2);
    a2 = v58[0];
    if (v58[0])
    {
      v37 = v58[0];
      v38 = a2;
    }

    if (*(a1 + 192) == 1)
    {
      v53 = 0u;
      v54 = 0u;
      *v51 = 0u;
      v52 = 0u;
      v39 = [a2 countByEnumeratingWithState:v51 objects:v58 count:16];
      if (v39)
      {
        v40 = *v52;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v52 != v40)
            {
              objc_enumerationMutation(a2);
            }

            v42 = qword_1ED640B30;
            if (os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO))
            {
              v43 = [*(v51[1] + i) name];
              *v59 = 138543362;
              v60 = v43;
              _os_log_impl(&dword_19D52D000, v42, OS_LOG_TYPE_INFO, "Capped the expiry of third-party CNAME cloaked cookie named %{public}@.", v59, 0xCu);
            }
          }

          v39 = [a2 countByEnumeratingWithState:v51 objects:v58 count:16];
        }

        while (v39);
      }
    }

    if (!a2)
    {
      goto LABEL_79;
    }

LABEL_78:
    v44 = a2;
    goto LABEL_79;
  }

  if (*(a1 + 148) != 1)
  {
    goto LABEL_79;
  }

  MEMORY[0x19EB02040](v58, [objc_msgSend(objc_msgSend(objc_msgSend(v6 "_incompleteTaskMetrics")]);
  WebCore::IPAddress::fromString(v59, v58, v15);
  v17 = v58[0];
  v58[0] = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v8);
  }

  if ((v62 & 1) == 0)
  {
    goto LABEL_79;
  }

  v18 = *(a1 + 148);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_85;
  }

  v19 = WebCore::IPAddress::matchingNetMaskLength(v59, (a1 + 128));
  if (v61 == 1)
  {
    v20 = 16;
  }

  else
  {
    v20 = 64;
  }

  if (v19 >= v20)
  {
    goto LABEL_79;
  }

  v21 = WTF::URL::host((a1 + 32));
  v9 = v21;
  v2 = v8;
  v18 = "accounts.google.com";
  v16 = v8;
  if (v21 == "accounts.google.com" || v8 != 19)
  {
LABEL_85:
    if (v9 == v18 && v16 == 19)
    {
      goto LABEL_79;
    }

    goto LABEL_36;
  }

  if ((v8 & 0x100000000) != 0)
  {
    if (*v21 != 97)
    {
      goto LABEL_36;
    }

    v22 = vandq_s8(vceqq_s8(*(v21 + 3), xmmword_19E703320), vceqq_s8(*(v21 + 1), xmmword_19E703310));
    v22.i8[0] = vminvq_u8(v22);
    if (!v22.i32[0])
    {
      goto LABEL_36;
    }

LABEL_79:
    v45 = v56;
    v56 = 0;
    if (v45)
    {
      if (atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v45, v8);
      }
    }

    goto LABEL_82;
  }

  if (*v21 == 97)
  {
    v46 = vceqq_s16(*(v21 + 2), xmmword_19E703330);
    v46.i16[0] = vminvq_u16(v46);
    if (v46.i32[0])
    {
      v47 = (v21 + 6);
      v48 = 3u;
      while (1)
      {
        v49 = vceqq_s16(*v47, vmovl_u8(*&aAccountsGoogle[v48]));
        v49.i16[0] = vminvq_u16(v49);
        if (!v49.i32[0])
        {
          break;
        }

        v50 = v48 - 1;
        v48 += 8;
        ++v47;
        if (v50 > 9)
        {
          goto LABEL_79;
        }
      }
    }
  }

LABEL_36:
  v23 = *(a1 + 184);
  if (v23)
  {
    if (WTF::StringImpl::startsWith())
    {
      goto LABEL_40;
    }

    v23 = *(a1 + 184);
  }

  if ((MEMORY[0x19EB01EF0](v23, "youtube.com", 11) & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_40:
  v24 = *(a1 + 184);
  if (v24)
  {
    atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
  }

  *buf = v24;
  v58[0] = "consent.";
  v58[1] = 9;
  result = WTF::tryMakeString<WTF::ASCIILiteral,WTF::String>(v58, buf, v51);
  if (v51[0])
  {
    v26 = WTF::operator==(v9, v2 & 0xFFFFFFFFFFLL, *(v51[0] + 1), *(v51[0] + 1) | (((*(v51[0] + 4) >> 2) & 1) << 32));
    v27 = v51[0];
    v51[0] = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v8);
    }

    v28 = *buf;
    *buf = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v8);
    }

    if (v26)
    {
      goto LABEL_79;
    }

LABEL_50:
    WebKit::cookiesByCappingExpiry(&v55, a2);
    a2 = v55;
    if (*(a1 + 192) == 1)
    {
      v53 = 0u;
      v54 = 0u;
      *v51 = 0u;
      v52 = 0u;
      v29 = [v55 countByEnumeratingWithState:v51 objects:v58 count:16];
      if (v29)
      {
        v30 = *v52;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v52 != v30)
            {
              objc_enumerationMutation(a2);
            }

            v32 = qword_1ED640B30;
            if (os_log_type_enabled(qword_1ED640B30, OS_LOG_TYPE_INFO))
            {
              v33 = [*(v51[1] + j) name];
              *buf = 138543362;
              *&buf[4] = v33;
              _os_log_impl(&dword_19D52D000, v32, OS_LOG_TYPE_INFO, "Capped the expiry of third-party IP address cookie named %{public}@.", buf, 0xCu);
            }
          }

          v29 = [a2 countByEnumeratingWithState:v51 objects:v58 count:16];
        }

        while (v29);
      }
    }

    if (!a2)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  __break(0xC471u);
  return result;
}

void sub_19D959D74(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, uint64_t a21, uint64_t a22, WTF::StringImpl *a23)
{
  if (v24)
  {
  }

  if (a20)
  {
    if (atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a20, a2);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::cookiesByCappingExpiry(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a2, "count")}];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  v8 = result;
  if (result)
  {
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(a2);
        }

        WebCore::NetworkStorageSession::capExpiryOfPersistentCookie();
        [v5 addObject:v12];
        v11 = v12;
        v12 = 0;
        if (v11)
        {
        }

        ++v10;
      }

      while (v8 != v10);
      result = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v8 = result;
    }

    while (result);
  }

  *a1 = v5;
  return result;
}

void sub_19D959FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebCore::RegistrableDomain::isolatedCopy@<X0>(WTF::StringImpl **a1@<X8>)
{
  result = WTF::String::isolatedCopy();
  if (v4 && *(v4 + 1))
  {
    *a1 = v4;
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    result = v4;
    *a1 = v5;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(v4, v3);
      }
    }
  }

  return result;
}

void sub_19D95A094(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::NetworkRTCTCPSocketCocoa::operator new(WebKit::NetworkRTCTCPSocketCocoa *this, void *a2)
{
  if (this == 48 && WebKit::NetworkRTCTCPSocketCocoa::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkRTCTCPSocketCocoa::s_heapRef, a2);
  }

  else
  {
    return WebKit::NetworkRTCTCPSocketCocoa::operatorNewSlow(this);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

LABEL_11:
    std::string::__throw_length_error[abi:sn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;
  if (this <= __s && this + v3 > __s)
  {
    __break(1u);
    goto LABEL_11;
  }

  memmove(this, __s, v3);
}

dispatch_queue_t ___ZN6WebKitL14tcpSocketQueueEv_block_invoke()
{
  result = dispatch_queue_create("WebRTC TCP socket queue", MEMORY[0x1E69E96A8]);
  qword_1ED641C48 = result;
  return result;
}

void WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCTCPSocketCocoa::NetworkRTCTCPSocketCocoa(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,int,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&)::$_0>(WebKit::NetworkRTCTCPSocketCocoa::NetworkRTCTCPSocketCocoa(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,int,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v3 + 24));
  }

  objc_destroyWeak((a1 + 32));
}

IPC::Encoder *WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCTCPSocketCocoa::NetworkRTCTCPSocketCocoa(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,int,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&)::$_0>(WebKit::NetworkRTCTCPSocketCocoa::NetworkRTCTCPSocketCocoa(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,int,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&)::$_0)::{lambda(void *,nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke(IPC::Encoder *result, int a2)
{
  v2 = result;
  if (a2 == 4)
  {
    v7 = *(result + 6);
    atomic_fetch_add((v7 + 24), 1u);
    v8 = *(result + 5);
    v9 = WTF::fastMalloc(0x18);
    *v9 = &unk_1F10EDC18;
    *(v9 + 1) = v7;
    *(v9 + 2) = v8;
    v23 = v9;
    (*(**(v7 + 152) + 48))(*(v7 + 152), &v23);
    v10 = v23;
    v23 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = *(v2 + 7);
    LODWORD(v26) = -1;
    v23 = (v2 + 40);
    v24 = &v26;
    return IPC::Connection::send<Messages::LibWebRTCNetwork::SignalClose>(v11, &v23, 0, 0, 0);
  }

  else if (a2 == 3)
  {
    v3 = *(result + 6);
    v23 = 0;
    objc_copyWeak(&v23, result + 4);
    v4 = *(v2 + 7);
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
        goto LABEL_11;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_11:
    v12 = *(v2 + 5);
    v24 = v4;
    v25 = v12;
    v13 = WTF::fastMalloc(0x20);
    *v13 = &unk_1F10EDBF0;
    *(v13 + 8) = 0;
    objc_moveWeak((v13 + 8), &v23);
    v14 = v24;
    v24 = 0;
    *(v13 + 16) = v14;
    *(v13 + 24) = v25;
    v26 = v13;
    (*(**(v3 + 152) + 48))(*(v3 + 152), &v26);
    v15 = v26;
    v26 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v24;
    v24 = 0;
    if (v16)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v16);
    }

    objc_destroyWeak(&v23);
    v17 = *(v2 + 7);
    v19 = IPC::Encoder::operator new(0x238, v18);
    *v19 = 145;
    *(v19 + 68) = 0;
    *(v19 + 70) = 0;
    *(v19 + 69) = 0;
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    *(v19 + 1) = 0;
    IPC::Encoder::encodeHeader(v19);
    v23 = v19;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v19, *(v2 + 5));
    IPC::Connection::sendMessageImpl(v17, &v23, 0, 0);
    result = v23;
    v23 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v20);
      return bmalloc::api::tzoneFree(v21, v22);
    }
  }

  return result;
}

void sub_19D95A4C4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  IPC::Encoder::~Encoder(v10, a2);
  bmalloc::api::tzoneFree(v12, v13);
  _Unwind_Resume(a1);
}

void sub_19D95A514()
{
  if (v1)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref(v0);
  }

  JUMPOUT(0x19D95A50CLL);
}

uint64_t IPC::Connection::send<Messages::LibWebRTCNetwork::SignalClose>(uint64_t *a1, int **a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 144;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, **a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v10, *a2[1]);
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

void sub_19D95A5F4(_Unwind_Exception *a1, void *a2)
{
  IPC::Encoder::~Encoder(v2, a2);
  bmalloc::api::tzoneFree(v4, v5);
  _Unwind_Resume(a1);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCTCPSocketCocoa::NetworkRTCTCPSocketCocoa(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,int,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&)::$_0::operator() const(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)::{lambda(void)#1},void>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10EDBF0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  objc_destroyWeak((a1 + 8));
  return a1;
}

{
  *a1 = &unk_1F10EDBF0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  objc_destroyWeak((a1 + 8));

  return WTF::fastFree(a1, v3);
}

void WTF::Detail::CallableWrapper<WebKit::NetworkRTCTCPSocketCocoa::NetworkRTCTCPSocketCocoa(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,int,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&)::$_0::operator() const(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)::{lambda(void)#1},void>::call(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (!WeakRetained)
  {
    return;
  }

  v3 = WeakRetained;
  v4 = nw_connection_copy_current_path(WeakRetained);
  v5 = nw_path_copy_interface();
  name = nw_interface_get_name(v5);
  WTF::String::fromUTF8(&v16, name, v7);
  if (v16)
  {
    v9 = *(a1 + 16);
    v10 = IPC::Encoder::operator new(0x238, v8);
    *v10 = 148;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = 0;
    IPC::Encoder::encodeHeader(v10);
    v17 = v10;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, *(a1 + 24));
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v10, &v16);
    IPC::Connection::sendMessageImpl(v9, &v17, 0, 0);
    v12 = v17;
    v17 = 0;
    if (v12)
    {
      IPC::Encoder::~Encoder(v12, v11);
      bmalloc::api::tzoneFree(v14, v15);
    }

    v13 = v16;
    v16 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v11);
        if (!v5)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }
  }

  if (v5)
  {
LABEL_8:
  }

LABEL_9:
  if (v4)
  {
  }
}

void sub_19D95A7EC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  IPC::Encoder::~Encoder(v12, a2);
  bmalloc::api::tzoneFree(v14, v15);
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, v16);
  }

  if (v11)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkRTCTCPSocketCocoa::NetworkRTCTCPSocketCocoa(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,int,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&)::$_0::operator() const(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)::{lambda(void)#2},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10EDC18;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v2 + 24));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkRTCTCPSocketCocoa::NetworkRTCTCPSocketCocoa(WTF::ObjectIdentifierGeneric<WebCore::LibWebRTCSocketIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::NetworkRTCProvider &,webrtc::SocketAddress const&,int,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&)::$_0::operator() const(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)::{lambda(void)#2},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10EDC18;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v3 + 24));
  }

  return WTF::fastFree(this, a2);
}

void WTF::BlockPtr<void ()(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)>::fromCallable<WebKit::processIncomingData(WTF::RetainPtr<NSObject {objcproto16OS_nw_connection}*> &&,WTF::Function<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> ()(WTF::FastMalloc&&)> &&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)::{lambda(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1}>(WebKit::processIncomingData(WTF::RetainPtr<NSObject {objcproto16OS_nw_connection}*> &&,WTF::Function<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> ()(WTF::FastMalloc&&)> &&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)::{lambda(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1})::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v5)
  {
  }
}

void WTF::BlockPtr<void ()(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)>::fromCallable<WebKit::processIncomingData(WTF::RetainPtr<NSObject {objcproto16OS_nw_connection}*> &&,WTF::Function<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> ()(WTF::FastMalloc&&)> &&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)::{lambda(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1}>(WebKit::processIncomingData(WTF::RetainPtr<NSObject {objcproto16OS_nw_connection}*> &&,WTF::Function<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> ()(WTF::FastMalloc&&)> &&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)::{lambda(NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1})::{lambda(void *,NSObject  {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1}::__invoke(uint64_t a1, uint64_t a2, nw_content_context_t context, int a4, NSObject *a5)
{
  v15[3] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v9 = a1 + 48;
    v10 = WTF::fastMalloc(0x10);
    *v10 = &unk_1F10EDC60;
    v10[1] = v9;
    v15[0] = v10;
    dispatch_data_apply_span();
    if (v15[0])
    {
      (*(*v15[0] + 8))(v15[0]);
    }

    (*(**(a1 + 40) + 16))(v15);
    v12 = *(a1 + 48);
    if (v12)
    {
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      WTF::fastFree(v12, v11);
    }

    *(a1 + 48) = v15[0];
    *(a1 + 56) = v15[1];
  }

  if (!context || !a4 || !nw_content_context_get_is_final(context))
  {
    if (a5)
    {
      v13 = qword_1ED641580;
      if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_ERROR))
      {
        error_code = nw_error_get_error_code(a5);
        LODWORD(v15[0]) = 67109120;
        HIDWORD(v15[0]) = error_code;
        _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "NetworkRTCTCPSocketCocoa processIncomingData failed with error %d", v15, 8u);
      }
    }

    else
    {
      WebKit::processIncomingData(a1 + 32, a1 + 40, a1 + 48);
    }
  }
}

void sub_19D95AB50(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::processIncomingData(WTF::RetainPtr<NSObject  {objcproto16OS_nw_connection}*> &&,WTF::Function<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> ()(WTF::FastMalloc&&)> &&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)::{lambda(NSObject {objcproto16OS_dispatch_data}*,NSObject {objcproto21OS_nw_content_context}*,BOOL,NSObject {objcproto11OS_nw_error}*)#1}::operator()(WTF::Function<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> ()(WTF::FastMalloc&&)> &,NSObject {objcproto16OS_dispatch_data},BOOL,NSObject {objcproto21OS_nw_content_context})::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1},BOOL,std::__1>::call(uint64_t result, void *__src, size_t __n)
{
  if (!__n)
  {
    return 1;
  }

  v5 = *(result + 8);
  v7 = *(v5 + 8);
  v6 = *(v5 + 12);
  v8 = __n + v6;
  if (__n + v6 > v7)
  {
    v9 = v7 + (v7 >> 1);
    if (v9 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v9 <= v8)
    {
      v9 = v8;
    }

    if (v9 <= 0x10)
    {
      v10 = 16;
    }

    else
    {
      v10 = v9;
    }

    result = WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(*(result + 8), v10);
    v6 = *(v5 + 12);
  }

  if (v8 >= v6)
  {
    memcpy((*v5 + v6), __src, __n);
    *(v5 + 12) = v8;
    return 1;
  }

  __break(0xC471u);
  return result;
}

atomic_ullong *WTF::BlockPtr<void ()(NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCTCPSocketCocoa::sendTo(std::span<unsigned char const,18446744073709551615ul>,webrtc::SocketAddress const&,webrtc::AsyncSocketPacketOptions const&)::$_0>(WebKit::NetworkRTCTCPSocketCocoa::sendTo(std::span<unsigned char const,18446744073709551615ul>,webrtc::SocketAddress const&,webrtc::AsyncSocketPacketOptions const&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  webrtc::AsyncSocketPacketOptions::~AsyncSocketPacketOptions((a1 + 48));
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  return result;
}

IPC::Encoder *WTF::BlockPtr<void ()(NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCTCPSocketCocoa::sendTo(std::span<unsigned char const,18446744073709551615ul>,webrtc::SocketAddress const&,webrtc::AsyncSocketPacketOptions const&)::$_0>(WebKit::NetworkRTCTCPSocketCocoa::sendTo(std::span<unsigned char const,18446744073709551615ul>,webrtc::SocketAddress const&,webrtc::AsyncSocketPacketOptions const&)::$_0)::{lambda(void *,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke(webrtc *a1)
{
  v1 = *(a1 + 5);
  v2 = *(a1 + 7);
  v4[0] = a1 + 32;
  v4[1] = v2;
  v4[2] = webrtc::TimeMillis(a1);
  return IPC::Connection::send<Messages::LibWebRTCNetwork::SignalSentPacket>(v1, v4);
}

IPC::Encoder *IPC::Connection::send<Messages::LibWebRTCNetwork::SignalSentPacket>(uint64_t *a1, uint64_t *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 147;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v4, **a2);
  IPC::ArgumentCoder<API::Int64,void>::encode(v4, a2[1]);
  IPC::ArgumentCoder<API::Int64,void>::encode(v4, a2[2]);
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

void sub_19D95ADC0(_Unwind_Exception *a1, void *a2)
{
  IPC::Encoder::~Encoder(v2, a2);
  bmalloc::api::tzoneFree(v4, v5);
  _Unwind_Resume(a1);
}

uint64_t WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCTCPSocketCocoa::getInterfaceName(WebKit::NetworkRTCProvider &,WTF::URL const&,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0>(WebKit::NetworkRTCTCPSocketCocoa::getInterfaceName(WebKit::NetworkRTCProvider &,WTF::URL const&,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
  }

  return WTF::NativePromiseProducer<WTF::String,void,16u>::~NativePromiseProducer((a1 + 32));
}

void WTF::BlockPtr<void ()(nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)>::fromCallable<WebKit::NetworkRTCTCPSocketCocoa::getInterfaceName(WebKit::NetworkRTCProvider &,WTF::URL const&,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0>(WebKit::NetworkRTCTCPSocketCocoa::getInterfaceName(WebKit::NetworkRTCProvider &,WTF::URL const&,WTF::String const&,BOOL,BOOL,WebCore::RegistrableDomain const&)::$_0)::{lambda(void *,nw_connection_state_t,NSObject  {objcproto11OS_nw_error}*)#1}::__invoke(uint64_t a1, unsigned int a2)
{
  if (a2 <= 5)
  {
    if (((1 << a2) & 0x1B) != 0)
    {
      if (!*(a1 + 72))
      {
        return;
      }

      v25 = 0;
      v26 = 0;
      v27 = "operator()";
      v28 = 0;
      WTF::NativePromiseProducer<WTF::String,void,16u>::reject<std::enable_if<true,void>>((a1 + 32), &v25);
      v3 = *(a1 + 72);
      *(a1 + 72) = 0;
      nw_connection_cancel(v3);
      goto LABEL_48;
    }

    if (a2 != 2)
    {
      if (!*(a1 + 72))
      {
        return;
      }

      v25 = 0;
      v26 = 0;
      v27 = "operator()";
      v28 = 0;
      WTF::NativePromiseProducer<WTF::String,void,16u>::reject<std::enable_if<true,void>>((a1 + 32), &v25);
      v3 = *(a1 + 72);
      *(a1 + 72) = 0;
      goto LABEL_48;
    }

    v4 = *(a1 + 72);
    if (!v4)
    {
      return;
    }

    v3 = nw_connection_copy_current_path(v4);
    v5 = nw_path_copy_interface();
    name = nw_interface_get_name(v5);
    if (name)
    {
      strlen(name);
      WTF::String::fromUTF8();
    }

    else
    {
      v29 = 0;
    }

    v25 = 0;
    v26 = 0;
    v27 = "operator()";
    v28 = 0;
    isNothing = WTF::NativePromiseProducer<WTF::String,void,16u>::isNothing(*(a1 + 32));
    v11 = *(a1 + 32);
    if (isNothing)
    {
      if (v11)
      {
        atomic_fetch_add((v11 + 8), 1u);
      }

      v12 = 0;
      v13 = (v11 + 48);
      v31 = (v11 + 48);
      v32 = 1;
      atomic_compare_exchange_strong_explicit((v11 + 48), &v12, 1u, memory_order_acquire, memory_order_acquire);
      if (v12)
      {
        v13 = MEMORY[0x19EB01E30](v13, v8, v9, v10);
      }

      v14 = WTF::NativePromiseBase::logChannel(v13);
      if (*v14 && v14[16] >= 4u)
      {
        WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<WTF::String,void,0u>>(v14, &v25, " resolving ", v11);
      }

      WTF::String::isolatedCopy();
      if (*(v11 + 72) > 1u)
      {
        if (*(v11 + 72) == 2)
        {
          v18 = *(v11 + 56);
          *(v11 + 56) = 0;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }
      }

      else if (*(v11 + 72))
      {
        mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor(v11 + 56, v15);
      }

      v19 = v30;
      v30 = 0;
      *(v11 + 56) = v19;
      *(v11 + 64) = 0;
      *(v11 + 72) = 1;
      WTF::NativePromise<WTF::String,void,0u>::dispatchAll(v11, &v31);
      v20 = v30;
      v30 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v17);
      }

      v21 = v32;
      if (v32 == 1)
      {
        v22 = v31;
        atomic_compare_exchange_strong_explicit(v31, &v21, 0, memory_order_release, memory_order_relaxed);
        if (v21 != 1)
        {
          WTF::Lock::unlockSlow(v22);
        }
      }
    }

    else
    {
      if (v11)
      {
        atomic_fetch_add((v11 + 8), 1u);
      }

      v16 = WTF::NativePromiseBase::logChannel(isNothing);
      if (*v16 && v16[16] >= 4u)
      {
        WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [39],WTF::NativePromise<WTF::String,void,0u>>(v16, &v25, v11);
      }

      if (!v11)
      {
        goto LABEL_41;
      }
    }

    if (atomic_fetch_add((v11 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v11 + 8));
      (*(*v11 + 16))(v11);
    }

LABEL_41:
    v23 = v29;
    v29 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v17);
    }

    v24 = *(a1 + 72);
    *(a1 + 72) = 0;
    nw_connection_cancel(v24);
    if (v24)
    {
    }

    if (v5)
    {
    }

LABEL_48:
    if (v3)
    {
    }
  }
}

void sub_19D95B138(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::Lock *a15, char a16)
{
  if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v18 + 2);
    (*(*v18 + 16))(v18);
  }

  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (v17)
  {
  }

  if (v16)
  {
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *WTF::NativePromiseProducer<WTF::String,void,16u>::reject<std::enable_if<true,void>>(atomic_uint **a1, WTF::Logger::LogSiteIdentifier *a2)
{
  isNothing = WTF::NativePromiseProducer<WTF::String,void,16u>::isNothing(*a1);
  v5 = *a1;
  if (isNothing)
  {
    if (v5)
    {
      atomic_fetch_add(v5 + 2, 1u);
    }

    v6 = 0;
    v7 = (v5 + 12);
    v14 = (v5 + 12);
    v15 = 1;
    atomic_compare_exchange_strong_explicit(v5 + 48, &v6, 1u, memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      v7 = MEMORY[0x19EB01E30]();
    }

    v8 = WTF::NativePromiseBase::logChannel(v7);
    if (*v8 && v8[16] >= 4u)
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<WTF::String,void,0u>>(v8, a2, " rejecting ", v5);
    }

    if (*(v5 + 72) > 1u)
    {
      if (*(v5 + 72) == 2)
      {
        v11 = *(v5 + 7);
        *(v5 + 7) = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }
      }
    }

    else if (*(v5 + 72))
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::RouterSourceDict,WebCore::RouterSourceEnum>,(mpark::detail::Trait)1>::~move_constructor((v5 + 14), v9);
    }

    *(v5 + 64) = 1;
    *(v5 + 72) = 1;
    result = WTF::NativePromise<WTF::String,void,0u>::dispatchAll(v5, &v14);
    v12 = v15;
    if (v15 == 1)
    {
      result = v14;
      atomic_compare_exchange_strong_explicit(v14, &v12, 0, memory_order_release, memory_order_relaxed);
      if (v12 != 1)
      {
        result = WTF::Lock::unlockSlow(result);
      }
    }

LABEL_25:
    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5 + 2);
      v13 = *(*v5 + 16);

      return v13(v5);
    }

    return result;
  }

  if (v5)
  {
    atomic_fetch_add(v5 + 2, 1u);
  }

  result = WTF::NativePromiseBase::logChannel(isNothing);
  if (*result && result[16] >= 4u)
  {
    result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [39],WTF::NativePromise<WTF::String,void,0u>>(result, a2, v5);
  }

  if (v5)
  {
    goto LABEL_25;
  }

  return result;
}

void sub_19D95B424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::Lock *a9, char a10)
{
  if (v10)
  {
    if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10 + 2);
      (*(*v10 + 16))(v10);
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL WTF::NativePromiseProducer<WTF::String,void,16u>::isNothing(atomic_uint *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1 + 2;
  atomic_fetch_add(a1 + 2, 1u);
  v3 = !WTF::NativePromise<WTF::String,void,0u>::isSettled(a1);
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a1 + 2);
    (*(*a1 + 16))(a1);
  }

  return v3;
}

void sub_19D95B540(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL WTF::NativePromise<WTF::String,void,0u>::isSettled(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 48);
  v4 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](a1 + 48);
  }

  v5 = *(a1 + 72);
  atomic_compare_exchange_strong_explicit(v3, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }

  return v5 != 0;
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [39],WTF::NativePromise<WTF::String,void,0u>>(uint64_t a1, WTF::Logger::LogSiteIdentifier *this, uint64_t a3)
{
  v36[2] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v30, this);
  WTF::String::String(&v29, " ignored already resolved or rejected ");
  WTF::LogArgument<WTF::NativePromise<WTF::String,void,0u>>::toString(a3, &v28);
  WTF::makeString<WTF::String,WTF::String,WTF::String>(&v30, &v29, &v28, &v31);
  v6 = v28;
  v28 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  v7 = v29;
  v29 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  v8 = v30;
  v30 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

  v9 = *(a1 + 32);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    WTF::String::utf8();
    v12 = v27[0] ? v27[0] + 16 : 0;
    *buf = 136446210;
    v33 = v12;
    _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    v10 = v27[0];
    v27[0] = 0;
    if (v10)
    {
      if (*v10 == 1)
      {
        v10 = WTF::fastFree(v10, v11);
      }

      else
      {
        --*v10;
      }
    }
  }

  if (*a1 && *(a1 + 16) >= 4u)
  {
    v13 = MEMORY[0x1E696EBC0];
    while (1)
    {
      v14 = *v13;
      if (v14)
      {
        break;
      }

      v15 = *v13;
      atomic_compare_exchange_strong_explicit(v13, &v15, v14 | 1, memory_order_acquire, memory_order_acquire);
      if (v15 == v14)
      {
        v16 = WTF::Logger::observers(v10);
        v17 = *(v16 + 12);
        if (v17)
        {
          v18 = *v16;
          v19 = *v16 + 8 * v17;
          do
          {
            v20 = *v18;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString((&v33 + 4), this);
            v34 = 0;
            WTF::String::String(v35, " ignored already resolved or rejected ");
            v35[2] = 0;
            WTF::LogArgument<WTF::NativePromise<WTF::String,void,0u>>::toString(a3, v36);
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v27, buf, 3uLL);
            (*(*v20 + 16))(v20, a1, 4, v27);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, v21);
            for (i = 40; i != -8; i -= 16)
            {
              v23 = *&buf[i];
              *&buf[i] = 0;
              if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v23, v11);
              }
            }

            ++v18;
          }

          while (v18 != v19);
        }

        v24 = 1;
        atomic_compare_exchange_strong_explicit(v13, &v24, 0, memory_order_release, memory_order_relaxed);
        if (v24 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
        }

        break;
      }
    }
  }

  result = v31;
  v31 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v11);
    }
  }

  return result;
}
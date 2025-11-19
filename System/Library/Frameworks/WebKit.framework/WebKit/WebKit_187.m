void WebKit::WebGPU::RemoteDeviceProxy::importExternalTexture(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_93;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v7 = IdentifierInternal;
  v8 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v9 = *(a2 + 24);
  if (*(a2 + 24))
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v11 = *(a2 + 8);
    LODWORD(v55) = *(a2 + 9);
    *(&v55 + 3) = *(a2 + 12);
    v10 = *(a2 + 16);
  }

  v12 = *(a2 + 32);
  v60 = v8;
  v61 = v11;
  *v62 = v55;
  *&v62[3] = *(&v55 + 3);
  v63 = v10;
  v64 = v12;
  LOBYTE(v65) = 0;
  v69 = 0;
  v70 = 1;
  if (v9 != 1)
  {
    goto LABEL_37;
  }

  if (v10)
  {
    goto LABEL_37;
  }

  v13 = *(a2 + 8);
  if (!v13)
  {
    goto LABEL_37;
  }

  ++*(a1 + 16);
  v14 = WTF::fastMalloc(0x18);
  *v14 = &unk_1F1125FC0;
  v14[1] = a1;
  v14[2] = a1;
  v54 = v14;
  ++*(a1 + 16);
  v15 = WTF::fastMalloc(0x18);
  *v15 = &unk_1F1125FE8;
  v15[1] = a1;
  v15[2] = a1;
  v53 = v15;
  WebKit::SharedVideoFrameWriter::write(a1 + 80, v13, &v54, &v53, &v55);
  if ((v70 & 1) == 0)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (v69 != v59)
  {
    if (v69)
    {
      if (v68 == 2)
      {
        WTF::MachSendRight::~MachSendRight(&v67);
      }

      v68 = -1;
      v69 = 0;
      goto LABEL_32;
    }

    v65 = v55;
    v66 = v56;
    LOBYTE(v67) = 0;
    v68 = -1;
    if (v58 <= 1u)
    {
      if (v58)
      {
        v67 = v57;
        v16 = 1;
      }

      else
      {
        v16 = 0;
        *&v67 = 0;
      }
    }

    else if (v58 == 2)
    {
      WTF::MachSendRight::MachSendRight();
      v16 = v58;
    }

    else
    {
      if (v58 != 3)
      {
LABEL_31:
        v69 = 1;
        goto LABEL_32;
      }

      *&v67 = v57;
      v16 = 3;
    }

    v68 = v16;
    goto LABEL_31;
  }

  if (!v69)
  {
    goto LABEL_32;
  }

  *&v65 = v55;
  *(&v65 + 5) = *(&v55 + 5);
  v66 = v56;
  if (v68 == 255)
  {
    if (v58 == 255)
    {
      goto LABEL_32;
    }

LABEL_25:
    v71 = &v67;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJDnN3IPC29ObjectIdentifierReadReferenceIN3WTF23ObjectIdentifierGenericIN6WebKit30RemoteVideoFrameIdentifierTypeENS8_38ObjectIdentifierThreadSafeAccessTraitsIyEEyEEEENS8_13MachSendRightEN7WebCore7IntSizeEEEEE14generic_assignINS0_15move_assignmentISJ_LNS0_5TraitE1EEEEEvOT_EUlRSP_OT0_E_JRSK_SO_EEEDcmSQ_DpOT0_(v58, &v71, &v67, &v57);
    goto LABEL_32;
  }

  if (v58 != 255)
  {
    goto LABEL_25;
  }

  if (v68 == 2)
  {
    WTF::MachSendRight::~MachSendRight(&v67);
  }

  v68 = -1;
LABEL_32:
  if (v59 == 1)
  {
    if (v58 == 2)
    {
      WTF::MachSendRight::~MachSendRight(&v57);
    }

    v58 = -1;
  }

  (*(*v15 + 8))(v15);
  IdentifierInternal = (*(*v14 + 8))(v14);
  if ((v70 & 1) == 0)
  {
    goto LABEL_93;
  }

LABEL_37:
  v17 = *(*(*(a1 + 64) + 72) + 80);
  atomic_fetch_add(v17, 1u);
  v18 = *(a1 + 48);
  v19 = *(v17 + 128);
  v20 = INFINITY;
  if (fabs(v19) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v20 = v19 + v21;
  }

  if (*(v17 + 64) != v18)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v17 + 72, &v55, v20);
    if (v56 != 1)
    {
      goto LABEL_70;
    }

    v35 = *(&v55 + 1);
    if (*(&v55 + 1) <= 1uLL)
    {
      goto LABEL_94;
    }

    v36 = v55;
    *v55 = 3198;
    v37 = v36 + 2;
    if (v35 - 2 < (-v37 & 7 | 8uLL))
    {
LABEL_70:
      v32 = 0;
      goto LABEL_71;
    }

    v38 = -v37 & 7;
    *(v37 + v38) = v18;
    v39 = 6;
    if (v38 > 6)
    {
      v39 = v38;
    }

    v40 = v39 + 10;
    v41 = (*(v17 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v42 = *(v17 + 72);
    if (v41 + 16 >= v42)
    {
      v41 = 0;
    }

    v43 = v40 + v41;
    if (v42 <= v43)
    {
      v43 = 0;
    }

    *(v17 + 88) = v43;
    v44 = *(v17 + 80);
    if (*(v44 + 8) <= 0xFFuLL)
    {
      goto LABEL_93;
    }

    v45 = atomic_exchange((*(v44 + 16) + 128), v43);
    v46 = *(v17 + 124);
    if (v45 == 0x80000000 || v46 != 0)
    {
      v48 = v46 + 1;
      *(v17 + 124) = v48;
      if (v48 >= *(v17 + 120))
      {
        if (*(v17 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v17 + 100));
        }

        *(v17 + 124) = 0;
      }
    }

    *(v17 + 64) = v18;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v17 + 72, &v55, v20);
  if (v56 != 1)
  {
    goto LABEL_70;
  }

  if (*(&v55 + 1) <= 1uLL)
  {
LABEL_94:
    __break(0xC471u);
    JUMPOUT(0x19E2588ACLL);
  }

  *v55 = 3197;
  v23 = (*(v17 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(v17 + 72);
  if (v23 + 16 >= v24)
  {
    v23 = 0;
  }

  v25 = v23 + 16;
  if (v24 <= v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  *(v17 + 88) = v26;
  v27 = *(v17 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_93;
  }

  atomic_exchange((*(v27 + 16) + 128), v26);
  *(v17 + 124) = 0;
  v28 = *(v17 + 8);
  v29 = IPC::Encoder::operator new(0x238, v22);
  *v29 = 1037;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = v18;
  *(v29 + 68) = 0;
  *(v29 + 70) = 0;
  *(v29 + 69) = 0;
  IPC::Encoder::encodeHeader(v29);
  v71 = v29;
  IPC::ArgumentCoder<WebKit::WebGPU::ExternalTextureDescriptor,void>::encode(v29, &v60);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v29, v7);
  v30 = IPC::Connection::sendMessageImpl(v28, &v71, 1, 0);
  v31 = v71;
  v71 = 0;
  if (v31)
  {
    IPC::Encoder::~Encoder(v31, v22);
    bmalloc::api::tzoneFree(v33, v34);
  }

  v32 = v30 == 0;
LABEL_71:
  if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17);
    IPC::StreamClientConnection::operator delete(v17);
    if (v32)
    {
LABEL_73:
      v49 = *(a1 + 56);
      if (WebKit::WebGPU::RemoteExternalTextureProxy::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteExternalTextureProxy::s_heapRef, v22);
      }

      else
      {
        NonCompact = WebKit::WebGPU::RemoteExternalTextureProxy::operatorNewSlow(0);
      }

      v51 = NonCompact;
      NonCompact[1] = 3;
      NonCompact[2] = 0;
      *NonCompact = &unk_1F11259E8;
      NonCompact[3] = v7;
      ++*(v49 + 8);
      NonCompact[4] = v49;
      ++*(a1 + 16);
      NonCompact[5] = a1;
      if (v70)
      {
        WebCore::WebGPU::ExternalTexture::setLabel(NonCompact, &v60);
        goto LABEL_79;
      }

      goto LABEL_93;
    }
  }

  else if (v32)
  {
    goto LABEL_73;
  }

  v51 = 0;
LABEL_79:
  *a3 = v51;
  if (v70 == 1)
  {
    if (v69 == 1)
    {
      if (v68 == 2)
      {
        WTF::MachSendRight::~MachSendRight(&v67);
      }

      v68 = -1;
    }

    v52 = v60;
    v60 = 0;
    if (v52)
    {
      if (atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v52, v22);
      }
    }
  }
}

void WebKit::WebGPU::RemoteDeviceProxy::updateExternalTexture(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = (*(**(a1 + 56) + 104))(*(a1 + 56));
  v6 = v5;
  v7 = *(*(*(a1 + 64) + 72) + 80);
  atomic_fetch_add(v7, 1u);
  v8 = *(a1 + 48);
  v9 = *(v7 + 128);
  v10 = INFINITY;
  if (fabs(v9) != INFINITY)
  {
    WTF::ApproximateTime::now(v5);
    v10 = v9 + v11;
  }

  if (*(v7 + 64) == v8)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v50, v10);
  if (v52 == 1)
  {
    v25 = v51;
    if (v51 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E258CD4);
    }

    v26 = v50;
    *v50 = 3198;
    v27 = v26 + 1;
    if (v25 - 2 >= (-v27 & 7 | 8uLL))
    {
      v28 = -v27 & 7;
      *(v27 + v28) = v8;
      if (v28 != 7)
      {
        v28 = 6;
      }

      v29 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v31 = *(v7 + 72);
      v30 = *(v7 + 80);
      v32 = v28 + 10;
      if (v29 + 16 >= v31)
      {
        v29 = 0;
      }

      v33 = v32 + v29;
      if (v31 <= v33)
      {
        v33 = 0;
      }

      *(v7 + 88) = v33;
      if (*(v30 + 8) <= 0xFFuLL)
      {
        goto LABEL_55;
      }

      v34 = atomic_exchange((*(v30 + 16) + 128), v33);
      v35 = *(v7 + 124);
      if (v34 == 0x80000000 || v35 != 0)
      {
        v37 = v35 + 1;
        *(v7 + 124) = v37;
        if (v37 >= *(v7 + 120))
        {
          if (*(v7 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v7 + 100));
          }

          *(v7 + 124) = 0;
        }
      }

      *(v7 + 64) = v8;
LABEL_4:
      IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v50, v10);
      if (v52 != 1)
      {
        goto LABEL_20;
      }

      v13 = v51;
      if (v51 <= 1)
      {
        __break(0xC471u);
        goto LABEL_56;
      }

      v14 = v50;
      *v50 = 1046;
      v15 = v14 + 1;
      v16 = -v15 & 7 | 8;
      v17 = v13 - 2 - v16;
      if (v13 - 2 >= v16)
      {
        *(v15 + (-v15 & 7)) = v6;
        v18 = v15 + v16;
        v19 = -v18 & 7 | 8;
        if (v17 >= v19)
        {
          *(v18 + (-v18 & 7)) = *a3;
          v20 = v13 - v17 + v19;
          if (v20 <= 0x10)
          {
            v20 = 16;
          }

          v21 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v22 = *(v7 + 72);
          if (v21 + 16 >= v22)
          {
            v21 = 0;
          }

          v23 = v21 + v20;
          if (v22 <= v23)
          {
            v23 = 0;
          }

          *(v7 + 88) = v23;
          v24 = *(v7 + 80);
          if (*(v24 + 8) > 0xFFuLL)
          {
            if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(v7 + 124))
            {
              if (*(v7 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v7 + 100));
              }

              *(v7 + 124) = 0;
            }

            goto LABEL_20;
          }

          goto LABEL_55;
        }
      }

      v49 = v8;
      if (v52)
      {
        if (v51 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v50 = 3197;
          v38 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v39 = *(v7 + 72);
          if (v38 + 16 >= v39)
          {
            v38 = 0;
          }

          v40 = v38 + 16;
          if (v39 <= v40)
          {
            v41 = 0;
          }

          else
          {
            v41 = v40;
          }

          *(v7 + 88) = v41;
          v42 = *(v7 + 80);
          if (*(v42 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v42 + 16) + 128), v41);
            *(v7 + 124) = 0;
            v43 = *(v7 + 8);
            v44 = IPC::Encoder::operator new(0x238, v12);
            *v44 = 1046;
            *(v44 + 2) = 0;
            *(v44 + 3) = 0;
            *(v44 + 1) = v49;
            *(v44 + 68) = 0;
            *(v44 + 70) = 0;
            *(v44 + 69) = 0;
            IPC::Encoder::encodeHeader(v44);
            v53 = v44;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, v6);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, *a3);
            IPC::Connection::sendMessageImpl(v43, &v53, 1, 0);
            v46 = v53;
            v53 = 0;
            if (v46)
            {
              IPC::Encoder::~Encoder(v46, v45);
              bmalloc::api::tzoneFree(v47, v48);
            }

            goto LABEL_20;
          }
        }
      }

LABEL_55:
      __break(1u);
LABEL_56:
      JUMPOUT(0x19E258CACLL);
    }
  }

LABEL_20:
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }
}

void WebKit::WebGPU::RemoteDeviceProxy::createPipelineLayout(uint64_t a1@<X0>, atomic_uint **a2@<X1>, uint64_t *a3@<X8>)
{
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(*(a1 + 56), a2, &v54);
  if (v58 != 1)
  {
    *a3 = 0;
    return;
  }

  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_74;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if ((v58 & 1) == 0)
  {
LABEL_74:
    __break(1u);
    goto LABEL_77;
  }

  v6 = IdentifierInternal;
  v7 = *(*(*(a1 + 64) + 72) + 80);
  atomic_fetch_add(v7, 1u);
  v8 = *(a1 + 48);
  v9 = *(v7 + 128);
  v10 = INFINITY;
  if (fabs(v9) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v10 = v9 + v11;
  }

  if (*(v7 + 64) != v8)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v62, v10);
    if (v64 != 1)
    {
      goto LABEL_41;
    }

    v23 = v63;
    if (v63 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E259254);
    }

    v24 = v62;
    *v62 = 3198;
    v25 = v24 + 2;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      goto LABEL_41;
    }

    v26 = -v25 & 7;
    *&v25[v26] = v8;
    v27 = 6;
    if (v26 > 6)
    {
      v27 = v26;
    }

    v28 = v27 + 10;
    v29 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(v7 + 72);
    if (v29 + 16 >= v30)
    {
      v29 = 0;
    }

    v31 = v28 + v29;
    if (v30 <= v31)
    {
      v31 = 0;
    }

    *(v7 + 88) = v31;
    v32 = *(v7 + 80);
    if (*(v32 + 8) <= 0xFFuLL)
    {
      goto LABEL_74;
    }

    v33 = atomic_exchange((*(v32 + 16) + 128), v31);
    v34 = *(v7 + 124);
    if (v33 == 0x80000000 || v34 != 0)
    {
      v36 = v34 + 1;
      *(v7 + 124) = v36;
      if (v36 >= *(v7 + 120))
      {
        if (*(v7 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v7 + 100));
        }

        *(v7 + 124) = 0;
      }
    }

    *(v7 + 64) = v8;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v59, v10);
  if (v61 != 1)
  {
LABEL_41:
    v22 = 0;
    goto LABEL_42;
  }

  v13 = v59;
  v14 = v60;
  v64 = v60;
  if (v60 <= 1)
  {
    goto LABEL_77;
  }

  *v59 = 1026;
  v62 = (v13 + 1);
  v63 = v14 - 2;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v62, &v54);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(&v62, &v55);
  v15 = -v62 & 7 | 8;
  if (v63 >= v15)
  {
    *(v62 + (-v62 & 7)) = v6;
    v16 = v63 - v15;
    if (v63 >= v15)
    {
      v62 = (v62 + v15);
      v63 -= v15;
      v17 = v64 - v16;
      if (v17 <= 0x10)
      {
        v17 = 16;
      }

      v18 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(v7 + 72);
      if (v18 + 16 >= v19)
      {
        v18 = 0;
      }

      v20 = v18 + v17;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(v7 + 88) = v20;
      v21 = *(v7 + 80);
      if (*(v21 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(v7 + 124))
        {
          if (*(v7 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v7 + 100));
          }

          *(v7 + 124) = 0;
        }

        v22 = 1;
        goto LABEL_42;
      }
    }

    goto LABEL_74;
  }

  v53 = v8;
  if ((v61 & 1) == 0)
  {
    goto LABEL_74;
  }

  if (v60 <= 1)
  {
LABEL_77:
    __break(0xC471u);
    JUMPOUT(0x19E25922CLL);
  }

  *v59 = 3197;
  v42 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v43 = *(v7 + 72);
  if (v42 + 16 >= v43)
  {
    v42 = 0;
  }

  v44 = v42 + 16;
  if (v43 <= v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v44;
  }

  *(v7 + 88) = v45;
  v46 = *(v7 + 80);
  if (*(v46 + 8) <= 0xFFuLL)
  {
    goto LABEL_74;
  }

  atomic_exchange((*(v46 + 16) + 128), v45);
  *(v7 + 124) = 0;
  v47 = *(v7 + 8);
  v48 = IPC::Encoder::operator new(0x238, v12);
  *v48 = 1026;
  *(v48 + 2) = 0;
  *(v48 + 3) = 0;
  *(v48 + 1) = v53;
  *(v48 + 68) = 0;
  *(v48 + 70) = 0;
  *(v48 + 69) = 0;
  IPC::Encoder::encodeHeader(v48);
  v62 = v48;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v48, &v54);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(v48, &v55);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v48, v6);
  v49 = IPC::Connection::sendMessageImpl(v47, &v62, 1, 0);
  v50 = v62;
  v62 = 0;
  if (v50)
  {
    IPC::Encoder::~Encoder(v50, v12);
    bmalloc::api::tzoneFree(v51, v52);
  }

  v22 = v49 == 0;
LABEL_42:
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
    if (v22)
    {
LABEL_44:
      v37 = *(a1 + 56);
      if (WebKit::WebGPU::RemotePipelineLayoutProxy::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemotePipelineLayoutProxy::s_heapRef, v12);
      }

      else
      {
        NonCompact = WebKit::WebGPU::RemotePipelineLayoutProxy::operatorNewSlow(0);
      }

      v39 = NonCompact;
      *(NonCompact + 16) = 1;
      *(NonCompact + 24) = 0;
      *(NonCompact + 32) = v6;
      *NonCompact = &unk_1F1125C08;
      *(NonCompact + 8) = 0;
      ++*(v37 + 8);
      *(NonCompact + 40) = v37;
      ++*(a1 + 16);
      *(NonCompact + 48) = a1;
      if (v58)
      {
        WebCore::WebGPU::PipelineLayout::setLabel(NonCompact, &v54);
        goto LABEL_50;
      }

      goto LABEL_74;
    }
  }

  else if (v22)
  {
    goto LABEL_44;
  }

  v39 = 0;
LABEL_50:
  *a3 = v39;
  if (v58)
  {
    if (v57 == 1)
    {
      v40 = v55;
      if (v55)
      {
        v55 = 0;
        v56 = 0;
        WTF::fastFree(v40, v12);
      }
    }

    v41 = v54;
    v54 = 0;
    if (v41)
    {
      if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v41, v12);
      }
    }
  }
}

void WebKit::WebGPU::RemoteDeviceProxy::createBindGroup(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(*(a1 + 56), a2, v54);
  if (v57 != 1)
  {
    *a3 = 0;
    return;
  }

  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_73;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if ((v57 & 1) == 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_76;
  }

  v6 = IdentifierInternal;
  v7 = *(*(*(a1 + 64) + 72) + 80);
  atomic_fetch_add(v7, 1u);
  v8 = *(a1 + 48);
  v9 = *(v7 + 128);
  v10 = INFINITY;
  if (fabs(v9) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v10 = v9 + v11;
  }

  if (*(v7 + 64) != v8)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v61, v10);
    if (v63 != 1)
    {
      goto LABEL_41;
    }

    v23 = v62;
    if (v62 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2597ACLL);
    }

    v24 = v61;
    *v61 = 3198;
    v25 = v24 + 2;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      goto LABEL_41;
    }

    v26 = -v25 & 7;
    *&v25[v26] = v8;
    v27 = 6;
    if (v26 > 6)
    {
      v27 = v26;
    }

    v28 = v27 + 10;
    v29 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(v7 + 72);
    if (v29 + 16 >= v30)
    {
      v29 = 0;
    }

    v31 = v28 + v29;
    if (v30 <= v31)
    {
      v31 = 0;
    }

    *(v7 + 88) = v31;
    v32 = *(v7 + 80);
    if (*(v32 + 8) <= 0xFFuLL)
    {
      goto LABEL_73;
    }

    v33 = atomic_exchange((*(v32 + 16) + 128), v31);
    v34 = *(v7 + 124);
    if (v33 == 0x80000000 || v34 != 0)
    {
      v36 = v34 + 1;
      *(v7 + 124) = v36;
      if (v36 >= *(v7 + 120))
      {
        if (*(v7 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v7 + 100));
        }

        *(v7 + 124) = 0;
      }
    }

    *(v7 + 64) = v8;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v58, v10);
  if (v60 != 1)
  {
LABEL_41:
    v22 = 0;
    goto LABEL_42;
  }

  v13 = v58;
  v14 = v59;
  v63 = v59;
  if (v59 <= 1)
  {
    goto LABEL_76;
  }

  *v58 = 1020;
  v61 = (v13 + 1);
  v62 = v14 - 2;
  IPC::ArgumentCoder<WebKit::WebGPU::BindGroupDescriptor,void>::encode(&v61, v54);
  v15 = -v61 & 7 | 8;
  if (v62 >= v15)
  {
    *(v61 + (-v61 & 7)) = v6;
    v16 = v62 - v15;
    if (v62 >= v15)
    {
      v61 = (v61 + v15);
      v62 -= v15;
      v17 = v63 - v16;
      if (v17 <= 0x10)
      {
        v17 = 16;
      }

      v18 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(v7 + 72);
      if (v18 + 16 >= v19)
      {
        v18 = 0;
      }

      v20 = v18 + v17;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(v7 + 88) = v20;
      v21 = *(v7 + 80);
      if (*(v21 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(v7 + 124))
        {
          if (*(v7 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v7 + 100));
          }

          *(v7 + 124) = 0;
        }

        v22 = 1;
        goto LABEL_42;
      }
    }

    goto LABEL_73;
  }

  v53 = v8;
  if ((v60 & 1) == 0)
  {
    goto LABEL_73;
  }

  if (v59 <= 1)
  {
LABEL_76:
    __break(0xC471u);
    JUMPOUT(0x19E259784);
  }

  *v58 = 3197;
  v42 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v43 = *(v7 + 72);
  if (v42 + 16 >= v43)
  {
    v42 = 0;
  }

  v44 = v42 + 16;
  if (v43 <= v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v44;
  }

  *(v7 + 88) = v45;
  v46 = *(v7 + 80);
  if (*(v46 + 8) <= 0xFFuLL)
  {
    goto LABEL_73;
  }

  atomic_exchange((*(v46 + 16) + 128), v45);
  *(v7 + 124) = 0;
  v47 = *(v7 + 8);
  v48 = IPC::Encoder::operator new(0x238, v12);
  *v48 = 1020;
  *(v48 + 2) = 0;
  *(v48 + 3) = 0;
  *(v48 + 1) = v53;
  *(v48 + 68) = 0;
  *(v48 + 70) = 0;
  *(v48 + 69) = 0;
  IPC::Encoder::encodeHeader(v48);
  v61 = v48;
  IPC::ArgumentCoder<WebKit::WebGPU::BindGroupDescriptor,void>::encode(v48, v54);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v48, v6);
  v49 = IPC::Connection::sendMessageImpl(v47, &v61, 1, 0);
  v50 = v61;
  v61 = 0;
  if (v50)
  {
    IPC::Encoder::~Encoder(v50, v12);
    bmalloc::api::tzoneFree(v51, v52);
  }

  v22 = v49 == 0;
LABEL_42:
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
    if (v22)
    {
LABEL_44:
      v37 = *(a1 + 56);
      if (WebKit::WebGPU::RemoteBindGroupProxy::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteBindGroupProxy::s_heapRef, v12);
      }

      else
      {
        NonCompact = WebKit::WebGPU::RemoteBindGroupProxy::operatorNewSlow(0x38);
      }

      v39 = NonCompact;
      *(NonCompact + 16) = 1;
      *(NonCompact + 24) = 0;
      *(NonCompact + 32) = v6;
      *NonCompact = &unk_1F1125380;
      *(NonCompact + 8) = 0;
      ++*(v37 + 8);
      *(NonCompact + 40) = v37;
      ++*(a1 + 16);
      *(NonCompact + 48) = a1;
      if (v57)
      {
        WebCore::WebGPU::BindGroup::setLabel(NonCompact, v54);
        goto LABEL_50;
      }

      goto LABEL_73;
    }
  }

  else if (v22)
  {
    goto LABEL_44;
  }

  v39 = 0;
LABEL_50:
  *a3 = v39;
  if (v57)
  {
    v40 = v55;
    if (v55)
    {
      v55 = 0;
      v56 = 0;
      WTF::fastFree(v40, v12);
    }

    v41 = v54[0];
    v54[0] = 0;
    if (v41)
    {
      if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v41, v12);
      }
    }
  }
}

void WebKit::WebGPU::RemoteDeviceProxy::createShaderModule(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, __n128 a4@<Q0>)
{
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(*(a1 + 56), a2, &v56, a4);
  if (v58 != 1)
  {
    *a3 = 0;
    return;
  }

  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_74;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if ((v58 & 1) == 0)
  {
LABEL_74:
    __break(1u);
    goto LABEL_77;
  }

  v7 = IdentifierInternal;
  v8 = *(*(*(a1 + 64) + 72) + 80);
  atomic_fetch_add(v8, 1u);
  v9 = *(a1 + 48);
  v10 = *(v8 + 128);
  v11 = INFINITY;
  if (fabs(v10) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v11 = v10 + v12;
  }

  if (*(v8 + 64) != v9)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v62, v11);
    if (v64 != 1)
    {
      goto LABEL_41;
    }

    v24 = v63;
    if (v63 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E259D1CLL);
    }

    v25 = v62;
    *v62 = 3198;
    v26 = v25 + 2;
    if (v24 - 2 < (-v26 & 7 | 8uLL))
    {
      goto LABEL_41;
    }

    v27 = -v26 & 7;
    *&v26[v27] = v9;
    v28 = 6;
    if (v27 > 6)
    {
      v28 = v27;
    }

    v29 = v28 + 10;
    v30 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v31 = *(v8 + 72);
    if (v30 + 16 >= v31)
    {
      v30 = 0;
    }

    v32 = v29 + v30;
    if (v31 <= v32)
    {
      v32 = 0;
    }

    *(v8 + 88) = v32;
    v33 = *(v8 + 80);
    if (*(v33 + 8) <= 0xFFuLL)
    {
      goto LABEL_74;
    }

    v34 = atomic_exchange((*(v33 + 16) + 128), v32);
    v35 = *(v8 + 124);
    if (v34 == 0x80000000 || v35 != 0)
    {
      v37 = v35 + 1;
      *(v8 + 124) = v37;
      if (v37 >= *(v8 + 120))
      {
        if (*(v8 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v8 + 100));
        }

        *(v8 + 124) = 0;
      }
    }

    *(v8 + 64) = v9;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v59, v11);
  if (v61 != 1)
  {
LABEL_41:
    v23 = 0;
    goto LABEL_42;
  }

  v14 = v59;
  v15 = v60;
  v64 = v60;
  if (v60 <= 1)
  {
    goto LABEL_77;
  }

  *v59 = 1032;
  v62 = (v14 + 1);
  v63 = v15 - 2;
  IPC::ArgumentCoder<WebKit::WebGPU::ShaderModuleDescriptor,void>::encode(&v62, &v56);
  v16 = -v62 & 7 | 8;
  if (v63 >= v16)
  {
    *(v62 + (-v62 & 7)) = v7;
    v17 = v63 - v16;
    if (v63 >= v16)
    {
      v62 = (v62 + v16);
      v63 -= v16;
      v18 = v64 - v17;
      if (v18 <= 0x10)
      {
        v18 = 16;
      }

      v19 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v20 = *(v8 + 72);
      if (v19 + 16 >= v20)
      {
        v19 = 0;
      }

      v21 = v19 + v18;
      if (v20 <= v21)
      {
        v21 = 0;
      }

      *(v8 + 88) = v21;
      v22 = *(v8 + 80);
      if (*(v22 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v22 + 16) + 128), v21) == 0x80000000 || *(v8 + 124))
        {
          if (*(v8 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v8 + 100));
          }

          *(v8 + 124) = 0;
        }

        v23 = 1;
        goto LABEL_42;
      }
    }

    goto LABEL_74;
  }

  v55 = v9;
  if ((v61 & 1) == 0)
  {
    goto LABEL_74;
  }

  if (v60 <= 1)
  {
LABEL_77:
    __break(0xC471u);
    JUMPOUT(0x19E259CF4);
  }

  *v59 = 3197;
  v44 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v45 = *(v8 + 72);
  if (v44 + 16 >= v45)
  {
    v44 = 0;
  }

  v46 = v44 + 16;
  if (v45 <= v46)
  {
    v47 = 0;
  }

  else
  {
    v47 = v46;
  }

  *(v8 + 88) = v47;
  v48 = *(v8 + 80);
  if (*(v48 + 8) <= 0xFFuLL)
  {
    goto LABEL_74;
  }

  atomic_exchange((*(v48 + 16) + 128), v47);
  *(v8 + 124) = 0;
  v49 = *(v8 + 8);
  v50 = IPC::Encoder::operator new(0x238, v13);
  *v50 = 1032;
  *(v50 + 2) = 0;
  *(v50 + 3) = 0;
  *(v50 + 1) = v55;
  *(v50 + 68) = 0;
  *(v50 + 70) = 0;
  *(v50 + 69) = 0;
  IPC::Encoder::encodeHeader(v50);
  v62 = v50;
  IPC::ArgumentCoder<WebKit::WebGPU::ShaderModuleDescriptor,void>::encode(v50, &v56);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v50, v7);
  v51 = IPC::Connection::sendMessageImpl(v49, &v62, 1, 0);
  v52 = v62;
  v62 = 0;
  if (v52)
  {
    IPC::Encoder::~Encoder(v52, v13);
    bmalloc::api::tzoneFree(v53, v54);
  }

  v23 = v51 == 0;
LABEL_42:
  if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    IPC::StreamClientConnection::operator delete(v8);
    if (v23)
    {
LABEL_44:
      v38 = *(a1 + 56);
      if (WebKit::WebGPU::RemoteShaderModuleProxy::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteShaderModuleProxy::s_heapRef, v13);
      }

      else
      {
        NonCompact = WebKit::WebGPU::RemoteShaderModuleProxy::operatorNewSlow(0x38);
      }

      v40 = NonCompact;
      *(NonCompact + 16) = 1;
      *(NonCompact + 24) = 0;
      *(NonCompact + 32) = v7;
      *NonCompact = &unk_1F1126460;
      *(NonCompact + 8) = 0;
      ++*(v38 + 8);
      *(NonCompact + 40) = v38;
      ++*(a1 + 16);
      *(NonCompact + 48) = a1;
      if (v58)
      {
        WebCore::WebGPU::ShaderModule::setLabel(NonCompact, &v56);
        goto LABEL_50;
      }

      goto LABEL_74;
    }
  }

  else if (v23)
  {
    goto LABEL_44;
  }

  v40 = 0;
LABEL_50:
  *a3 = v40;
  if (v58)
  {
    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v57, v13);
    v42 = v56.n128_u64[1];
    v56.n128_u64[1] = 0;
    if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v42, v41);
    }

    v43 = v56.n128_u64[0];
    v56.n128_u64[0] = 0;
    if (v43)
    {
      if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, v41);
      }
    }
  }
}

void WebKit::WebGPU::RemoteDeviceProxy::createComputePipeline(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(*(a1 + 56), a2, v55);
  if (v59 != 1)
  {
    *a3 = 0;
    return;
  }

  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_72;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if ((v59 & 1) == 0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_75;
  }

  v6 = IdentifierInternal;
  v7 = *(*(*(a1 + 64) + 72) + 80);
  atomic_fetch_add(v7, 1u);
  v8 = *(a1 + 48);
  v9 = *(v7 + 128);
  v10 = INFINITY;
  if (fabs(v9) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v10 = v9 + v11;
  }

  if (*(v7 + 64) != v8)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v63, v10);
    if (v65 != 1)
    {
      goto LABEL_41;
    }

    v23 = v64;
    if (v64 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E25A280);
    }

    v24 = v63;
    *v63 = 3198;
    v25 = (v24 + 2);
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      goto LABEL_41;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = v8;
    v27 = 6;
    if (v26 > 6)
    {
      v27 = v26;
    }

    v28 = v27 + 10;
    v29 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(v7 + 72);
    if (v29 + 16 >= v30)
    {
      v29 = 0;
    }

    v31 = v28 + v29;
    if (v30 <= v31)
    {
      v31 = 0;
    }

    *(v7 + 88) = v31;
    v32 = *(v7 + 80);
    if (*(v32 + 8) <= 0xFFuLL)
    {
      goto LABEL_72;
    }

    v33 = atomic_exchange((*(v32 + 16) + 128), v31);
    v34 = *(v7 + 124);
    if (v33 == 0x80000000 || v34 != 0)
    {
      v36 = v34 + 1;
      *(v7 + 124) = v36;
      if (v36 >= *(v7 + 120))
      {
        if (*(v7 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v7 + 100));
        }

        *(v7 + 124) = 0;
      }
    }

    *(v7 + 64) = v8;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v60, v10);
  if (v62 != 1)
  {
LABEL_41:
    v22 = 0;
    goto LABEL_42;
  }

  v13 = v60;
  v14 = v61;
  v65 = v61;
  if (v61 <= 1)
  {
    goto LABEL_75;
  }

  *v60 = 1024;
  v63 = (v13 + 1);
  v64 = v14 - 2;
  IPC::ArgumentCoder<WebKit::WebGPU::ComputePipelineDescriptor,void>::encode(&v63, v55);
  v15 = -v63 & 7 | 8;
  if (v64 >= v15)
  {
    *(v63 + (-v63 & 7)) = v6;
    v16 = v64 - v15;
    if (v64 >= v15)
    {
      v63 = (v63 + v15);
      v64 -= v15;
      v17 = v65 - v16;
      if (v17 <= 0x10)
      {
        v17 = 16;
      }

      v18 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(v7 + 72);
      if (v18 + 16 >= v19)
      {
        v18 = 0;
      }

      v20 = v18 + v17;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(v7 + 88) = v20;
      v21 = *(v7 + 80);
      if (*(v21 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(v7 + 124))
        {
          if (*(v7 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v7 + 100));
          }

          *(v7 + 124) = 0;
        }

        v22 = 1;
        goto LABEL_42;
      }
    }

    goto LABEL_72;
  }

  v54 = v8;
  if ((v62 & 1) == 0)
  {
    goto LABEL_72;
  }

  if (v61 <= 1)
  {
LABEL_75:
    __break(0xC471u);
    JUMPOUT(0x19E25A258);
  }

  *v60 = 3197;
  v43 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v44 = *(v7 + 72);
  if (v43 + 16 >= v44)
  {
    v43 = 0;
  }

  v45 = v43 + 16;
  if (v44 <= v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v45;
  }

  *(v7 + 88) = v46;
  v47 = *(v7 + 80);
  if (*(v47 + 8) <= 0xFFuLL)
  {
    goto LABEL_72;
  }

  atomic_exchange((*(v47 + 16) + 128), v46);
  *(v7 + 124) = 0;
  v48 = *(v7 + 8);
  v49 = IPC::Encoder::operator new(0x238, v12);
  *v49 = 1024;
  *(v49 + 2) = 0;
  *(v49 + 3) = 0;
  *(v49 + 1) = v54;
  *(v49 + 68) = 0;
  *(v49 + 70) = 0;
  *(v49 + 69) = 0;
  IPC::Encoder::encodeHeader(v49);
  v63 = v49;
  IPC::ArgumentCoder<WebKit::WebGPU::ComputePipelineDescriptor,void>::encode(v49, v55);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, v6);
  v50 = IPC::Connection::sendMessageImpl(v48, &v63, 1, 0);
  v51 = v63;
  v63 = 0;
  if (v51)
  {
    IPC::Encoder::~Encoder(v51, v12);
    bmalloc::api::tzoneFree(v52, v53);
  }

  v22 = v50 == 0;
LABEL_42:
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
    if (v22)
    {
LABEL_44:
      v37 = *(a1 + 56);
      v38 = WebKit::WebGPU::RemoteComputePipelineProxy::operator new(0x38, v12);
      *(v38 + 16) = 1;
      *(v38 + 24) = 0;
      *(v38 + 32) = v6;
      *v38 = &unk_1F11258A0;
      *(v38 + 8) = 0;
      ++*(v37 + 8);
      *(v38 + 40) = v37;
      ++*(a1 + 16);
      *(v38 + 48) = a1;
      if (v59)
      {
        v39 = v38;
        WebCore::WebGPU::ComputePipeline::setLabel(v38, v55);
        goto LABEL_48;
      }

      goto LABEL_72;
    }
  }

  else if (v22)
  {
    goto LABEL_44;
  }

  v39 = 0;
LABEL_48:
  *a3 = v39;
  if (v59)
  {
    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v58, v12);
    if (v57 == 1)
    {
      v41 = v56;
      v56 = 0;
      if (v41)
      {
        if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v41, v40);
        }
      }
    }

    v42 = v55[0];
    v55[0] = 0;
    if (v42)
    {
      if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, v40);
      }
    }
  }
}

void WebKit::WebGPU::RemoteDeviceProxy::createRenderPipeline(WebKit::WebGPU::ConvertToBackingContext **this@<X0>, const WebCore::WebGPU::RenderPipelineDescriptor *a2@<X1>, uint64_t *a3@<X8>)
{
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(this[7], a2, v52);
  if (v53 != 1)
  {
    *a3 = 0;
    return;
  }

  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_66;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if ((v53 & 1) == 0)
  {
LABEL_66:
    __break(1u);
    goto LABEL_69;
  }

  v6 = IdentifierInternal;
  v7 = *(*(this[8] + 9) + 80);
  atomic_fetch_add(v7, 1u);
  v8 = this[6];
  v9 = *(v7 + 128);
  v10 = INFINITY;
  if (fabs(v9) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v10 = v9 + v11;
  }

  if (*(v7 + 64) != v8)
  {
    v12 = IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v57, v10);
    if (v59 != 1)
    {
      goto LABEL_41;
    }

    v24 = v58;
    if (v58 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E25A798);
    }

    v25 = v57;
    *v57 = 3198;
    v26 = (v25 + 2);
    if (v24 - 2 < (-v26 & 7 | 8uLL))
    {
      goto LABEL_41;
    }

    v27 = -v26 & 7;
    *(v26 + v27) = v8;
    v28 = 6;
    if (v27 > 6)
    {
      v28 = v27;
    }

    v29 = v28 + 10;
    v30 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v31 = *(v7 + 72);
    if (v30 + 16 >= v31)
    {
      v30 = 0;
    }

    v32 = v29 + v30;
    if (v31 <= v32)
    {
      v32 = 0;
    }

    *(v7 + 88) = v32;
    v33 = *(v7 + 80);
    if (*(v33 + 8) <= 0xFFuLL)
    {
      goto LABEL_66;
    }

    v34 = atomic_exchange((*(v33 + 16) + 128), v32);
    v35 = *(v7 + 124);
    if (v34 == 0x80000000 || v35 != 0)
    {
      v37 = v35 + 1;
      *(v7 + 124) = v37;
      if (v37 >= *(v7 + 120))
      {
        if (*(v7 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v7 + 100));
        }

        *(v7 + 124) = 0;
      }
    }

    *(v7 + 64) = v8;
  }

  v12 = IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v54, v10);
  if (v56 != 1)
  {
LABEL_41:
    v23 = 0;
    goto LABEL_42;
  }

  v14 = v54;
  v15 = v55;
  v59 = v55;
  if (v55 <= 1)
  {
    goto LABEL_69;
  }

  *v54 = 1029;
  v57 = (v14 + 1);
  v58 = v15 - 2;
  v12 = IPC::ArgumentCoder<WebKit::WebGPU::RenderPipelineDescriptor,void>::encode(&v57, v52);
  v16 = -v57 & 7 | 8;
  if (v58 >= v16)
  {
    *(v57 + (-v57 & 7)) = v6;
    v17 = v58 - v16;
    if (v58 >= v16)
    {
      v57 = (v57 + v16);
      v58 -= v16;
      v18 = v59 - v17;
      if (v18 <= 0x10)
      {
        v18 = 16;
      }

      v19 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v20 = *(v7 + 72);
      if (v19 + 16 >= v20)
      {
        v19 = 0;
      }

      v21 = v19 + v18;
      if (v20 <= v21)
      {
        v21 = 0;
      }

      *(v7 + 88) = v21;
      v22 = *(v7 + 80);
      if (*(v22 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v22 + 16) + 128), v21) == 0x80000000 || *(v7 + 124))
        {
          if (*(v7 + 112) == 1)
          {
            v12 = MEMORY[0x19EB16320](*(v7 + 100));
          }

          *(v7 + 124) = 0;
        }

        v23 = 1;
        goto LABEL_42;
      }
    }

    goto LABEL_66;
  }

  v51 = v8;
  if ((v56 & 1) == 0)
  {
    goto LABEL_66;
  }

  if (v55 <= 1)
  {
LABEL_69:
    __break(0xC471u);
    JUMPOUT(0x19E25A770);
  }

  *v54 = 3197;
  v41 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(v7 + 72);
  if (v41 + 16 >= v42)
  {
    v41 = 0;
  }

  v43 = v41 + 16;
  if (v42 <= v43)
  {
    v44 = 0;
  }

  else
  {
    v44 = v43;
  }

  *(v7 + 88) = v44;
  v45 = *(v7 + 80);
  if (*(v45 + 8) <= 0xFFuLL)
  {
    goto LABEL_66;
  }

  atomic_exchange((*(v45 + 16) + 128), v44);
  *(v7 + 124) = 0;
  v46 = *(v7 + 8);
  v47 = IPC::Encoder::operator new(0x238, v13);
  *v47 = 1029;
  *(v47 + 2) = 0;
  *(v47 + 3) = 0;
  *(v47 + 1) = v51;
  *(v47 + 68) = 0;
  *(v47 + 70) = 0;
  *(v47 + 69) = 0;
  IPC::Encoder::encodeHeader(v47);
  v57 = v47;
  IPC::ArgumentCoder<WebKit::WebGPU::RenderPipelineDescriptor,void>::encode(v47, v52);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v47, v6);
  v48 = IPC::Connection::sendMessageImpl(v46, &v57, 1, 0);
  v12 = v57;
  v57 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v13);
    v12 = bmalloc::api::tzoneFree(v49, v50);
  }

  v23 = v48 == 0;
LABEL_42:
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
    if (v23)
    {
LABEL_44:
      v38 = this[7];
      v39 = WebKit::WebGPU::RemoteRenderPipelineProxy::operator new(v12, v13);
      *(v39 + 16) = 1;
      *(v39 + 24) = 0;
      *(v39 + 32) = v6;
      *v39 = &unk_1F1126408;
      *(v39 + 8) = 0;
      ++*(v38 + 2);
      *(v39 + 40) = v38;
      ++*(this + 4);
      *(v39 + 48) = this;
      if (v53)
      {
        v40 = v39;
        WebCore::WebGPU::RenderPipeline::setLabel(v39, v52);
        goto LABEL_48;
      }

      goto LABEL_66;
    }
  }

  else if (v23)
  {
    goto LABEL_44;
  }

  v40 = 0;
LABEL_48:
  *a3 = v40;
  if (v53)
  {
    WebKit::WebGPU::RenderPipelineDescriptor::~RenderPipelineDescriptor(v52, v13);
  }
}

void WebKit::WebGPU::RemoteDeviceProxy::createComputePipelineAsync(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1;
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(*(a1 + 56), a2, v70);
  if ((v74 & 1) == 0)
  {
    v81 = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v18 = *a3;
    *a3 = 0;
    (*(*v18 + 16))(v18, &v81, &v78);
    (*(*v18 + 8))(v18);
    v19 = v78;
    v78 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v14);
    }

    v20 = v81;
    v81 = 0;
    if (v20)
    {
      if (*(v20 + 4) == 1)
      {
        (*(*v20 + 8))(v20);
      }

      else
      {
        --*(v20 + 4);
      }
    }

    goto LABEL_51;
  }

  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_101;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if ((v74 & 1) == 0)
  {
    goto LABEL_101;
  }

  v6 = IdentifierInternal;
  v7 = *a3;
  *a3 = 0;
  ++*(v4 + 16);
  v8 = v70[0];
  v70[0] = 0;
  v9 = *(*(*(v4 + 64) + 72) + 80);
  atomic_fetch_add(v9, 1u);
  v10 = *(v4 + 48);
  v11 = *(v9 + 128);
  v12 = INFINITY;
  if (fabs(v11) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v12 = v11 + v13;
  }

  if (*(v9 + 64) == v10)
  {
LABEL_7:
    IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v78, v12);
    if ((v80 & 1) == 0)
    {
      goto LABEL_42;
    }

    v15 = *(v9 + 8);
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
        goto LABEL_19;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v15);
LABEL_19:
    v21 = WTF::fastMalloc(0x28);
    *v21 = &unk_1F1126010;
    v21[1] = v6;
    v21[2] = v7;
    v21[3] = v4;
    v21[4] = v8;
    v77[0] = v21;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      goto LABEL_106;
    }

    v22 = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v77[1] = v22;
    if (!v22)
    {
      __break(0xC471u);
      JUMPOUT(0x19E25AFBCLL);
    }

    v23 = v22;
    IPC::Connection::addAsyncReplyHandler(v15, v77);
    if (v80)
    {
      v24 = v78;
      v25 = v79;
      v83 = v79;
      if (v79 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E25AFDCLL);
      }

      *v78 = 1025;
      v81 = (v24 + 2);
      v82 = v25 - 2;
      IPC::ArgumentCoder<WebKit::WebGPU::ComputePipelineDescriptor,void>::encode(&v81, v70);
      v27 = -v81 & 7 | 8;
      if (v82 >= v27)
      {
        *(v81 + (-v81 & 7)) = v6;
        v28 = v82 - v27;
        if (v82 < v27)
        {
          goto LABEL_101;
        }

        v29 = (v81 + v27);
        v81 = v29;
        v82 = v28;
        v30 = -v29 & 7 | 8;
        if (v28 >= v30)
        {
          *(v29 + (-v29 & 7)) = v23;
          v31 = v82 - v30;
          if (v82 >= v30)
          {
            v81 = (v81 + v30);
            v82 -= v30;
            v32 = v83 - v31;
            if (v83 - v31 <= 0x10)
            {
              v32 = 16;
            }

            v33 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v34 = *(v9 + 72);
            if (v33 + 16 >= v34)
            {
              v33 = 0;
            }

            v35 = v33 + v32;
            if (v34 <= v35)
            {
              v35 = 0;
            }

            *(v9 + 88) = v35;
            v36 = *(v9 + 80);
            if (*(v36 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v36 + 16) + 128), v35) == 0x80000000 || *(v9 + 124))
              {
                if (*(v9 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v9 + 100));
                }

                *(v9 + 124) = 0;
              }

LABEL_39:
              v37 = v77[0];
              v77[0] = 0;
              if (v37)
              {
                (*(*v37 + 8))(v37);
              }

              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v15);
              v4 = 0;
              v7 = 0;
              v8 = 0;
              goto LABEL_42;
            }
          }

          goto LABEL_101;
        }
      }

      if (v80)
      {
        if (v79 > 1)
        {
          *v78 = 3197;
          v55 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v56 = *(v9 + 72);
          if (v55 + 16 >= v56)
          {
            v55 = 0;
          }

          v57 = v55 + 16;
          if (v56 <= v57)
          {
            v58 = 0;
          }

          else
          {
            v58 = v57;
          }

          *(v9 + 88) = v58;
          v59 = *(v9 + 80);
          if (*(v59 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v59 + 16) + 128), v58);
            *(v9 + 124) = 0;
            v60 = IPC::Encoder::operator new(0x238, v26);
            *v60 = 1025;
            *(v60 + 2) = 0;
            *(v60 + 3) = 0;
            *(v60 + 1) = v10;
            *(v60 + 68) = 0;
            *(v60 + 70) = 0;
            *(v60 + 69) = 0;
            IPC::Encoder::encodeHeader(v60);
            v81 = v60;
            IPC::ArgumentCoder<WebKit::WebGPU::ComputePipelineDescriptor,void>::encode(v60, v70);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v60, v6);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v60, v23);
            if (IPC::Connection::sendMessageImpl(v15, &v81, 1, 0))
            {
              IPC::Connection::takeAsyncReplyHandler(v15, v23, &v76);
              if (v76)
              {
                WTF::RunLoop::mainSingleton(v62);
                v63 = v76;
                v76 = 0;
                v64 = WTF::fastMalloc(0x10);
                *v64 = &unk_1F1126038;
                v64[1] = v63;
                v75 = v64;
                WTF::RunLoop::dispatch();
                v65 = v75;
                v75 = 0;
                if (v65)
                {
                  (*(*v65 + 8))(v65);
                }

                v66 = v76;
                v76 = 0;
                if (v66)
                {
                  (*(*v66 + 8))(v66);
                }
              }
            }

            v67 = v81;
            v81 = 0;
            if (v67)
            {
              IPC::Encoder::~Encoder(v67, v61);
              bmalloc::api::tzoneFree(v68, v69);
            }

            goto LABEL_39;
          }

          goto LABEL_101;
        }

LABEL_106:
        __break(0xC471u);
        JUMPOUT(0x19E25AF9CLL);
      }
    }

LABEL_101:
    __break(1u);
    goto LABEL_106;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v81, v12);
  if (v83 == 1)
  {
    v41 = v82;
    if (v82 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E25B004);
    }

    v42 = v81;
    *v81 = 3198;
    v43 = (v42 + 2);
    if (v41 - 2 >= (-v43 & 7 | 8uLL))
    {
      v44 = -v43 & 7;
      *(v43 + v44) = v10;
      v45 = 6;
      if (v44 > 6)
      {
        v45 = v44;
      }

      v46 = v45 + 10;
      v47 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v48 = *(v9 + 72);
      if (v47 + 16 >= v48)
      {
        v47 = 0;
      }

      v49 = v46 + v47;
      if (v48 <= v49)
      {
        v49 = 0;
      }

      *(v9 + 88) = v49;
      v50 = *(v9 + 80);
      if (*(v50 + 8) <= 0xFFuLL)
      {
        goto LABEL_101;
      }

      v51 = atomic_exchange((*(v50 + 16) + 128), v49);
      v52 = *(v9 + 124);
      if (v51 == 0x80000000 || v52 != 0)
      {
        v54 = v52 + 1;
        *(v9 + 124) = v54;
        if (v54 >= *(v9 + 120))
        {
          if (*(v9 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v9 + 100));
          }

          *(v9 + 124) = 0;
        }
      }

      *(v9 + 64) = v10;
      goto LABEL_7;
    }
  }

LABEL_42:
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    IPC::StreamClientConnection::operator delete(v9);
    if (v8)
    {
LABEL_44:
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v14);
      }
    }
  }

  else if (v8)
  {
    goto LABEL_44;
  }

  if (!v4)
  {
    goto LABEL_49;
  }

  if (*(v4 + 16) != 1)
  {
    --*(v4 + 16);
LABEL_49:
    if (!v7)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  (*(*v4 + 8))(v4);
  if (v7)
  {
LABEL_50:
    (*(*v7 + 8))(v7);
  }

LABEL_51:
  if (v74 == 1)
  {
    WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v73, v14);
    if (v72 == 1)
    {
      v39 = v71;
      v71 = 0;
      if (v39)
      {
        if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v39, v38);
        }
      }
    }

    v40 = v70[0];
    v70[0] = 0;
    if (v40)
    {
      if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v40, v38);
      }
    }
  }
}

void WebKit::WebGPU::RemoteDeviceProxy::createRenderPipelineAsync(uint64_t a1, const WebCore::WebGPU::RenderPipelineDescriptor *a2, uint64_t *a3)
{
  v4 = a1;
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(*(a1 + 56), a2, v67);
  if ((v68 & 1) == 0)
  {
    v75 = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v18 = *a3;
    *a3 = 0;
    (*(*v18 + 16))(v18, &v75, &v72);
    (*(*v18 + 8))(v18);
    v19 = v72;
    v72 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v14);
    }

    v20 = v75;
    v75 = 0;
    if (v20)
    {
      if (*(v20 + 4) == 1)
      {
        (*(*v20 + 8))(v20);
      }

      else
      {
        --*(v20 + 4);
      }
    }

    goto LABEL_51;
  }

  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_95;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if ((v68 & 1) == 0)
  {
    goto LABEL_95;
  }

  v6 = IdentifierInternal;
  v7 = *a3;
  *a3 = 0;
  ++*(v4 + 16);
  v8 = v67[0];
  v67[0] = 0;
  v9 = *(*(*(v4 + 64) + 72) + 80);
  atomic_fetch_add(v9, 1u);
  v10 = *(v4 + 48);
  v11 = *(v9 + 128);
  v12 = INFINITY;
  if (fabs(v11) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v12 = v11 + v13;
  }

  if (*(v9 + 64) == v10)
  {
LABEL_7:
    IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v72, v12);
    if ((v74 & 1) == 0)
    {
      goto LABEL_42;
    }

    v15 = *(v9 + 8);
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
        goto LABEL_19;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v15);
LABEL_19:
    v21 = WTF::fastMalloc(0x28);
    *v21 = &unk_1F1126060;
    v21[1] = v6;
    v21[2] = v7;
    v21[3] = v4;
    v21[4] = v8;
    v71[0] = v21;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      goto LABEL_100;
    }

    v22 = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v71[1] = v22;
    if (!v22)
    {
      __break(0xC471u);
      JUMPOUT(0x19E25B7D8);
    }

    v23 = v22;
    IPC::Connection::addAsyncReplyHandler(v15, v71);
    if (v74)
    {
      v24 = v72;
      v25 = v73;
      v77 = v73;
      if (v73 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E25B7F8);
      }

      *v72 = 1030;
      v75 = (v24 + 2);
      v76 = v25 - 2;
      IPC::ArgumentCoder<WebKit::WebGPU::RenderPipelineDescriptor,void>::encode(&v75, v67);
      v27 = -v75 & 7 | 8;
      if (v76 >= v27)
      {
        *(v75 + (-v75 & 7)) = v6;
        v28 = v76 - v27;
        if (v76 < v27)
        {
          goto LABEL_95;
        }

        v29 = (v75 + v27);
        v75 = v29;
        v76 = v28;
        v30 = -v29 & 7 | 8;
        if (v28 >= v30)
        {
          *(v29 + (-v29 & 7)) = v23;
          v31 = v76 - v30;
          if (v76 >= v30)
          {
            v75 = (v75 + v30);
            v76 -= v30;
            v32 = v77 - v31;
            if (v77 - v31 <= 0x10)
            {
              v32 = 16;
            }

            v33 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v34 = *(v9 + 72);
            if (v33 + 16 >= v34)
            {
              v33 = 0;
            }

            v35 = v33 + v32;
            if (v34 <= v35)
            {
              v35 = 0;
            }

            *(v9 + 88) = v35;
            v36 = *(v9 + 80);
            if (*(v36 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v36 + 16) + 128), v35) == 0x80000000 || *(v9 + 124))
              {
                if (*(v9 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v9 + 100));
                }

                *(v9 + 124) = 0;
              }

LABEL_39:
              v37 = v71[0];
              v71[0] = 0;
              if (v37)
              {
                (*(*v37 + 8))(v37);
              }

              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v15);
              v4 = 0;
              v7 = 0;
              v8 = 0;
              goto LABEL_42;
            }
          }

          goto LABEL_95;
        }
      }

      if (v74)
      {
        if (v73 > 1)
        {
          *v72 = 3197;
          v52 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v53 = *(v9 + 72);
          if (v52 + 16 >= v53)
          {
            v52 = 0;
          }

          v54 = v52 + 16;
          if (v53 <= v54)
          {
            v55 = 0;
          }

          else
          {
            v55 = v54;
          }

          *(v9 + 88) = v55;
          v56 = *(v9 + 80);
          if (*(v56 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v56 + 16) + 128), v55);
            *(v9 + 124) = 0;
            v57 = IPC::Encoder::operator new(0x238, v26);
            *v57 = 1030;
            *(v57 + 2) = 0;
            *(v57 + 3) = 0;
            *(v57 + 1) = v10;
            *(v57 + 68) = 0;
            *(v57 + 70) = 0;
            *(v57 + 69) = 0;
            IPC::Encoder::encodeHeader(v57);
            v75 = v57;
            IPC::ArgumentCoder<WebKit::WebGPU::RenderPipelineDescriptor,void>::encode(v57, v67);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v57, v6);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v57, v23);
            if (IPC::Connection::sendMessageImpl(v15, &v75, 1, 0))
            {
              IPC::Connection::takeAsyncReplyHandler(v15, v23, &v70);
              if (v70)
              {
                WTF::RunLoop::mainSingleton(v59);
                v60 = v70;
                v70 = 0;
                v61 = WTF::fastMalloc(0x10);
                *v61 = &unk_1F1126088;
                v61[1] = v60;
                v69 = v61;
                WTF::RunLoop::dispatch();
                v62 = v69;
                v69 = 0;
                if (v62)
                {
                  (*(*v62 + 8))(v62);
                }

                v63 = v70;
                v70 = 0;
                if (v63)
                {
                  (*(*v63 + 8))(v63);
                }
              }
            }

            v64 = v75;
            v75 = 0;
            if (v64)
            {
              IPC::Encoder::~Encoder(v64, v58);
              bmalloc::api::tzoneFree(v65, v66);
            }

            goto LABEL_39;
          }

          goto LABEL_95;
        }

LABEL_100:
        __break(0xC471u);
        JUMPOUT(0x19E25B7B8);
      }
    }

LABEL_95:
    __break(1u);
    goto LABEL_100;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v75, v12);
  if (v77 == 1)
  {
    v38 = v76;
    if (v76 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E25B820);
    }

    v39 = v75;
    *v75 = 3198;
    v40 = (v39 + 2);
    if (v38 - 2 >= (-v40 & 7 | 8uLL))
    {
      v41 = -v40 & 7;
      *(v40 + v41) = v10;
      v42 = 6;
      if (v41 > 6)
      {
        v42 = v41;
      }

      v43 = v42 + 10;
      v44 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v45 = *(v9 + 72);
      if (v44 + 16 >= v45)
      {
        v44 = 0;
      }

      v46 = v43 + v44;
      if (v45 <= v46)
      {
        v46 = 0;
      }

      *(v9 + 88) = v46;
      v47 = *(v9 + 80);
      if (*(v47 + 8) <= 0xFFuLL)
      {
        goto LABEL_95;
      }

      v48 = atomic_exchange((*(v47 + 16) + 128), v46);
      v49 = *(v9 + 124);
      if (v48 == 0x80000000 || v49 != 0)
      {
        v51 = v49 + 1;
        *(v9 + 124) = v51;
        if (v51 >= *(v9 + 120))
        {
          if (*(v9 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v9 + 100));
          }

          *(v9 + 124) = 0;
        }
      }

      *(v9 + 64) = v10;
      goto LABEL_7;
    }
  }

LABEL_42:
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    IPC::StreamClientConnection::operator delete(v9);
    if (v8)
    {
LABEL_44:
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v14);
      }
    }
  }

  else if (v8)
  {
    goto LABEL_44;
  }

  if (!v4)
  {
    goto LABEL_49;
  }

  if (*(v4 + 16) != 1)
  {
    --*(v4 + 16);
LABEL_49:
    if (!v7)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  (*(*v4 + 8))(v4);
  if (v7)
  {
LABEL_50:
    (*(*v7 + 8))(v7);
  }

LABEL_51:
  if (v68 == 1)
  {
    WebKit::WebGPU::RenderPipelineDescriptor::~RenderPipelineDescriptor(v67, v14);
  }
}

void WebKit::WebGPU::RemoteDeviceProxy::createRenderBundleEncoder(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(a2, &v49);
  if (v52 != 1)
  {
    *a3 = 0;
    return;
  }

  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
LABEL_75:
    __break(0xC471u);
    JUMPOUT(0x19E25BD2CLL);
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v6 = IdentifierInternal;
  v7 = *(*(*(a1 + 64) + 72) + 80);
  atomic_fetch_add(v7, 1u);
  v8 = *(a1 + 48);
  v9 = *(v7 + 128);
  v10 = INFINITY;
  if (fabs(v9) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v10 = v9 + v11;
  }

  if (*(v7 + 64) != v8)
  {
    NonCompact = IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v56, v10);
    if (v58 != 1)
    {
      goto LABEL_40;
    }

    v24 = v57;
    if (v57 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E25BD74);
    }

    v25 = v56;
    *v56 = 3198;
    v26 = v25 + 2;
    if (v24 - 2 < (-v26 & 7 | 8uLL))
    {
      goto LABEL_40;
    }

    v27 = -v26 & 7;
    *&v26[v27] = v8;
    v28 = 6;
    if (v27 > 6)
    {
      v28 = v27;
    }

    v29 = v28 + 10;
    v30 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v31 = *(v7 + 72);
    if (v30 + 16 >= v31)
    {
      v30 = 0;
    }

    v32 = v29 + v30;
    if (v31 <= v32)
    {
      v32 = 0;
    }

    *(v7 + 88) = v32;
    v33 = *(v7 + 80);
    if (*(v33 + 8) <= 0xFFuLL)
    {
      goto LABEL_70;
    }

    v34 = atomic_exchange((*(v33 + 16) + 128), v32);
    v35 = *(v7 + 124);
    if (v34 == 0x80000000 || v35 != 0)
    {
      v37 = v35 + 1;
      *(v7 + 124) = v37;
      if (v37 >= *(v7 + 120))
      {
        if (*(v7 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v7 + 100));
        }

        *(v7 + 124) = 0;
      }
    }

    *(v7 + 64) = v8;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v53, v10);
  if (v55 != 1)
  {
LABEL_40:
    v23 = 0;
    goto LABEL_41;
  }

  v13 = v53;
  v14 = v54;
  v58 = v54;
  if (v54 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E25BD4CLL);
  }

  *v53 = 1028;
  v56 = (v13 + 1);
  v57 = v14 - 2;
  NonCompact = IPC::ArgumentCoder<WebKit::WebGPU::RenderBundleEncoderDescriptor,void>::encode(&v56, &v49);
  v16 = -v56 & 7 | 8;
  if (v57 < v16)
  {
    v48 = v8;
    if ((v55 & 1) == 0)
    {
      goto LABEL_70;
    }

    if (v54 > 1)
    {
      *v53 = 3197;
      v40 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v41 = *(v7 + 72);
      if (v40 + 16 >= v41)
      {
        v40 = 0;
      }

      v42 = v40 + 16;
      if (v41 <= v42)
      {
        v43 = 0;
      }

      else
      {
        v43 = v42;
      }

      *(v7 + 88) = v43;
      v44 = *(v7 + 80);
      if (*(v44 + 8) <= 0xFFuLL)
      {
        goto LABEL_70;
      }

      atomic_exchange((*(v44 + 16) + 128), v43);
      *(v7 + 124) = 0;
      v8 = *(v7 + 8);
      v45 = IPC::Encoder::operator new(0x238, v12);
      *v45 = 1028;
      *(v45 + 2) = 0;
      *(v45 + 3) = 0;
      *(v45 + 1) = v48;
      *(v45 + 68) = 0;
      *(v45 + 70) = 0;
      *(v45 + 69) = 0;
      IPC::Encoder::encodeHeader(v45);
      v56 = v45;
      IPC::ArgumentCoder<WebKit::WebGPU::RenderBundleEncoderDescriptor,void>::encode(v45, &v49);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v45, v6);
      LODWORD(v8) = IPC::Connection::sendMessageImpl(v8, &v56, 1, 0);
      NonCompact = v56;
      v56 = 0;
      if (NonCompact)
      {
        goto LABEL_71;
      }

      goto LABEL_69;
    }

    goto LABEL_75;
  }

  *(v56 + (-v56 & 7)) = v6;
  v17 = v57 - v16;
  if (v57 < v16)
  {
    goto LABEL_70;
  }

  v56 = (v56 + v16);
  v57 -= v16;
  v18 = v58 - v17;
  if (v18 <= 0x10)
  {
    v18 = 16;
  }

  v19 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(v7 + 72);
  if (v19 + 16 >= v20)
  {
    v19 = 0;
  }

  v21 = v19 + v18;
  if (v20 <= v21)
  {
    v21 = 0;
  }

  *(v7 + 88) = v21;
  v22 = *(v7 + 80);
  if (*(v22 + 8) <= 0xFFuLL)
  {
    goto LABEL_70;
  }

  if (atomic_exchange((*(v22 + 16) + 128), v21) == 0x80000000 || *(v7 + 124))
  {
    if (*(v7 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v7 + 100));
    }

    *(v7 + 124) = 0;
  }

  v23 = 1;
LABEL_41:
  while (atomic_fetch_add(v7, 0xFFFFFFFF) != 1)
  {
    if (!v23)
    {
      goto LABEL_48;
    }

LABEL_43:
    v8 = *(a1 + 56);
    if (WebKit::WebGPU::RemoteRenderBundleEncoderProxy::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteRenderBundleEncoderProxy::s_heapRef, v12);
    }

    else
    {
      NonCompact = WebKit::WebGPU::RemoteRenderBundleEncoderProxy::operatorNewSlow(0x38);
    }

    v7 = NonCompact;
    *(NonCompact + 16) = 1;
    *(NonCompact + 24) = 0;
    *(NonCompact + 32) = v6;
    *NonCompact = &unk_1F1126288;
    *(NonCompact + 8) = 0;
    ++*(v8 + 8);
    *(NonCompact + 40) = v8;
    ++*(a1 + 16);
    *(NonCompact + 48) = a1;
    if (v52)
    {
      WebCore::WebGPU::RenderBundleEncoder::setLabel(NonCompact, &v49);
      goto LABEL_49;
    }

LABEL_70:
    __break(1u);
LABEL_71:
    IPC::Encoder::~Encoder(NonCompact, v12);
    bmalloc::api::tzoneFree(v46, v47);
LABEL_69:
    v23 = v8 == 0;
  }

  atomic_store(1u, v7);
  IPC::StreamClientConnection::operator delete(v7);
  if (v23)
  {
    goto LABEL_43;
  }

LABEL_48:
  v7 = 0;
LABEL_49:
  *a3 = v7;
  if (v52)
  {
    v38 = v50;
    if (v50)
    {
      v50 = 0;
      v51 = 0;
      WTF::fastFree(v38, v12);
    }

    v39 = v49;
    v49 = 0;
    if (v39)
    {
      if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v12);
      }
    }
  }
}

void WebKit::WebGPU::RemoteDeviceProxy::createQuerySet(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  v6 = (*(a2 + 8) | (*(a2 + 12) << 32));
  v55[0] = v5;
  v55[1] = v6;
  v56 = 1;
  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_74;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v8 = IdentifierInternal;
  v9 = *(*(*(a1 + 64) + 72) + 80);
  atomic_fetch_add(v9, 1u);
  v10 = *(a1 + 48);
  v11 = *(v9 + 128);
  v12 = INFINITY;
  if (fabs(v11) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v12 = v11 + v13;
  }

  if (*(v9 + 64) != v10)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v60, v12);
    if (v62 != 1)
    {
      goto LABEL_40;
    }

    v25 = v61;
    if (v61 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E25C2B4);
    }

    v26 = v60;
    *v60 = 3198;
    v27 = v26 + 2;
    if (v25 - 2 < (-v27 & 7 | 8uLL))
    {
      goto LABEL_40;
    }

    v28 = -v27 & 7;
    *&v27[v28] = v10;
    v29 = 6;
    if (v28 > 6)
    {
      v29 = v28;
    }

    v30 = v29 + 10;
    v31 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(v9 + 72);
    if (v31 + 16 >= v32)
    {
      v31 = 0;
    }

    v33 = v30 + v31;
    if (v32 <= v33)
    {
      v33 = 0;
    }

    *(v9 + 88) = v33;
    v34 = *(v9 + 80);
    if (*(v34 + 8) <= 0xFFuLL)
    {
      goto LABEL_73;
    }

    v35 = atomic_exchange((*(v34 + 16) + 128), v33);
    v36 = *(v9 + 124);
    if (v35 == 0x80000000 || v36 != 0)
    {
      v38 = v36 + 1;
      *(v9 + 124) = v38;
      if (v38 >= *(v9 + 120))
      {
        if (*(v9 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v9 + 100));
        }

        *(v9 + 124) = 0;
      }
    }

    *(v9 + 64) = v10;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v57, v12);
  if (v59 != 1)
  {
LABEL_40:
    v24 = 0;
    goto LABEL_41;
  }

  v15 = v57;
  v16 = v58;
  v62 = v58;
  if (v58 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E25C28CLL);
  }

  *v57 = 1027;
  v60 = (v15 + 1);
  v61 = v16 - 2;
  IPC::ArgumentCoder<WebKit::WebGPU::QuerySetDescriptor,void>::encode(&v60, v55);
  v17 = -v60 & 7 | 8;
  if (v61 < v17)
  {
    v54 = v10;
    if (v59)
    {
      if (v58 > 1)
      {
        *v57 = 3197;
        v43 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v44 = *(v9 + 72);
        if (v43 + 16 >= v44)
        {
          v43 = 0;
        }

        v45 = v43 + 16;
        if (v44 <= v45)
        {
          v46 = 0;
        }

        else
        {
          v46 = v45;
        }

        *(v9 + 88) = v46;
        v47 = *(v9 + 80);
        if (*(v47 + 8) <= 0xFFuLL)
        {
          goto LABEL_73;
        }

        atomic_exchange((*(v47 + 16) + 128), v46);
        *(v9 + 124) = 0;
        v48 = *(v9 + 8);
        v49 = IPC::Encoder::operator new(0x238, v14);
        *v49 = 1027;
        *(v49 + 2) = 0;
        *(v49 + 3) = 0;
        *(v49 + 1) = v54;
        *(v49 + 68) = 0;
        *(v49 + 70) = 0;
        *(v49 + 69) = 0;
        IPC::Encoder::encodeHeader(v49);
        v60 = v49;
        IPC::ArgumentCoder<WebKit::WebGPU::QuerySetDescriptor,void>::encode(v49, v55);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, v8);
        v50 = IPC::Connection::sendMessageImpl(v48, &v60, 1, 0);
        v51 = v60;
        v60 = 0;
        if (v51)
        {
          IPC::Encoder::~Encoder(v51, v14);
          bmalloc::api::tzoneFree(v52, v53);
        }

        v24 = v50 == 0;
        goto LABEL_41;
      }

      __break(0xC471u);
    }

LABEL_73:
    __break(1u);
LABEL_74:
    JUMPOUT(0x19E25C26CLL);
  }

  *(v60 + (-v60 & 7)) = v8;
  v18 = v61 - v17;
  if (v61 < v17)
  {
    goto LABEL_73;
  }

  v60 = (v60 + v17);
  v61 -= v17;
  v19 = v62 - v18;
  if (v19 <= 0x10)
  {
    v19 = 16;
  }

  v20 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v9 + 72);
  if (v20 + 16 >= v21)
  {
    v20 = 0;
  }

  v22 = v20 + v19;
  if (v21 <= v22)
  {
    v22 = 0;
  }

  *(v9 + 88) = v22;
  v23 = *(v9 + 80);
  if (*(v23 + 8) <= 0xFFuLL)
  {
    goto LABEL_73;
  }

  if (atomic_exchange((*(v23 + 16) + 128), v22) == 0x80000000 || *(v9 + 124))
  {
    if (*(v9 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v9 + 100));
    }

    *(v9 + 124) = 0;
  }

  v24 = 1;
LABEL_41:
  if (atomic_fetch_add(v9, 0xFFFFFFFF) != 1)
  {
    if (v24)
    {
      goto LABEL_43;
    }

LABEL_48:
    v41 = 0;
    goto LABEL_49;
  }

  atomic_store(1u, v9);
  IPC::StreamClientConnection::operator delete(v9);
  if (!v24)
  {
    goto LABEL_48;
  }

LABEL_43:
  v39 = *(a1 + 56);
  if (WebKit::WebGPU::RemoteQuerySetProxy::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteQuerySetProxy::s_heapRef, v14);
  }

  else
  {
    NonCompact = WebKit::WebGPU::RemoteQuerySetProxy::operatorNewSlow(0x38);
  }

  v41 = NonCompact;
  *(NonCompact + 16) = 1;
  *(NonCompact + 24) = 0;
  *(NonCompact + 32) = v8;
  *NonCompact = &unk_1F11261F0;
  *(NonCompact + 8) = 0;
  ++*(v39 + 8);
  *(NonCompact + 40) = v39;
  ++*(a1 + 16);
  *(NonCompact + 48) = a1;
  if ((v56 & 1) == 0)
  {
    goto LABEL_73;
  }

  WebCore::WebGPU::QuerySet::setLabel(NonCompact, v55);
LABEL_49:
  *a3 = v41;
  if (v56)
  {
    v42 = v55[0];
    v55[0] = 0;
    if (v42)
    {
      if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, v14);
      }
    }
  }
}

void WebKit::WebGPU::RemoteDeviceProxy::pushErrorScope(WTF::ApproximateTime *a1, char a2)
{
  v3 = *(*(*(a1 + 8) + 72) + 80);
  atomic_fetch_add(v3, 1u);
  v4 = *(a1 + 6);
  v5 = *(v3 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v6 = v5 + v7;
  }

  if (*(v3 + 64) == v4)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v38, v6);
  if (v40 == 1)
  {
    v15 = v39;
    if (v39 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E25C638);
    }

    v16 = v38;
    *v38 = 3198;
    v17 = v16 + 1;
    if (v15 - 2 >= (-v17 & 7 | 8uLL))
    {
      v18 = -v17 & 7;
      *(v17 + v18) = v4;
      if (v18 != 7)
      {
        v18 = 6;
      }

      v19 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v21 = *(v3 + 72);
      v20 = *(v3 + 80);
      v22 = v18 + 10;
      if (v19 + 16 >= v21)
      {
        v19 = 0;
      }

      v23 = v22 + v19;
      if (v21 <= v23)
      {
        v23 = 0;
      }

      *(v3 + 88) = v23;
      if (*(v20 + 8) <= 0xFFuLL)
      {
        goto LABEL_51;
      }

      v24 = atomic_exchange((*(v20 + 16) + 128), v23);
      v25 = *(v3 + 124);
      if (v24 == 0x80000000 || v25 != 0)
      {
        v27 = v25 + 1;
        *(v3 + 124) = v27;
        if (v27 >= *(v3 + 120))
        {
          if (*(v3 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v3 + 100));
          }

          *(v3 + 124) = 0;
        }
      }

      *(v3 + 64) = v4;
LABEL_4:
      IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v38, v6);
      if (v40 != 1)
      {
        goto LABEL_17;
      }

      v9 = v39;
      if (v39 <= 1)
      {
        __break(0xC471u);
        goto LABEL_52;
      }

      v10 = v38;
      *v38 = 1040;
      if (v9 != 2)
      {
        *(v10 + 2) = a2;
        v11 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v13 = *(v3 + 72);
        v12 = *(v3 + 80);
        if (v11 + 16 >= v13)
        {
          v11 = 0;
        }

        v14 = v11 + 16;
        if (v13 <= v14)
        {
          v14 = 0;
        }

        *(v3 + 88) = v14;
        if (*(v12 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v12 + 16) + 128), v14) == 0x80000000 || *(v3 + 124))
          {
            if (*(v3 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v3 + 100));
            }

            *(v3 + 124) = 0;
          }

          goto LABEL_17;
        }

        goto LABEL_51;
      }

      if (v40)
      {
        if (v39 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v38 = 3197;
          v28 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v30 = *(v3 + 72);
          v29 = *(v3 + 80);
          if (v28 + 16 >= v30)
          {
            v28 = 0;
          }

          v31 = v28 + 16;
          if (v30 <= v31)
          {
            v31 = 0;
          }

          *(v3 + 88) = v31;
          if (*(v29 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v29 + 16) + 128), v31);
            *(v3 + 124) = 0;
            v32 = *(v3 + 8);
            v33 = IPC::Encoder::operator new(0x238, v8);
            *v33 = 1040;
            *(v33 + 2) = 0;
            *(v33 + 3) = 0;
            *(v33 + 1) = v4;
            *(v33 + 68) = 0;
            *(v33 + 70) = 0;
            *(v33 + 69) = 0;
            IPC::Encoder::encodeHeader(v33);
            v41 = v33;
            v42 = a2;
            IPC::Encoder::operator<<<unsigned char>(v33, &v42);
            IPC::Connection::sendMessageImpl(v32, &v41, 1, 0);
            v35 = v41;
            v41 = 0;
            if (v35)
            {
              IPC::Encoder::~Encoder(v35, v34);
              bmalloc::api::tzoneFree(v36, v37);
            }

            goto LABEL_17;
          }
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      JUMPOUT(0x19E25C618);
    }
  }

LABEL_17:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

void WebKit::WebGPU::RemoteDeviceProxy::popErrorScope(WTF::ApproximateTime *a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(*(*(a1 + 8) + 72) + 80);
  atomic_fetch_add(v3, 1u);
  v4 = *(a1 + 6);
  v5 = *(v3 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v6 = v5 + v7;
  }

  if (*(v3 + 64) != v4)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v58, v6);
    if (v60 != 1)
    {
      goto LABEL_30;
    }

    v26 = v59;
    if (v59 <= 1)
    {
      __break(0xC471u);
      goto LABEL_75;
    }

    v27 = v58;
    *v58 = 3198;
    v28 = v27 + 1;
    if (v26 - 2 < (-v28 & 7 | 8uLL))
    {
      goto LABEL_30;
    }

    v29 = -v28 & 7;
    *(v28 + v29) = v4;
    if (v29 != 7)
    {
      v29 = 6;
    }

    v30 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(v3 + 72);
    v31 = *(v3 + 80);
    v33 = v29 + 10;
    if (v30 + 16 >= v32)
    {
      v30 = 0;
    }

    v34 = v33 + v30;
    if (v32 <= v34)
    {
      v34 = 0;
    }

    *(v3 + 88) = v34;
    if (*(v31 + 8) <= 0xFFuLL)
    {
      goto LABEL_75;
    }

    v35 = atomic_exchange((*(v31 + 16) + 128), v34);
    v36 = *(v3 + 124);
    if (v35 == 0x80000000 || v36 != 0)
    {
      v38 = v36 + 1;
      *(v3 + 124) = v38;
      if (v38 >= *(v3 + 120))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }
    }

    *(v3 + 64) = v4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v58, v6);
  if ((v60 & 1) == 0)
  {
    goto LABEL_30;
  }

  v8 = *(v3 + 8);
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
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_10:
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F11260B0;
  v11[1] = v2;
  v57[0] = v11;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_77;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v57[1] = IdentifierInternal;
  if (!IdentifierInternal)
  {
    __break(0xC471u);
    JUMPOUT(0x19E25CBA8);
  }

  v13 = IdentifierInternal;
  IPC::Connection::addAsyncReplyHandler(v8, v57);
  if ((v60 & 1) == 0)
  {
    goto LABEL_75;
  }

  v15 = v59;
  if (v59 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E25CBC8);
  }

  v16 = v58;
  *v58 = 1039;
  v17 = v16 + 1;
  if (v15 - 2 < (-v17 & 7 | 8uLL))
  {
    v53 = v4;
    if (v60)
    {
      if (v59 <= 1)
      {
LABEL_76:
        __break(0xC471u);
LABEL_77:
        JUMPOUT(0x19E25CB88);
      }

      *v58 = 3197;
      v39 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v40 = *(v3 + 72);
      if (v39 + 16 >= v40)
      {
        v39 = 0;
      }

      v41 = v39 + 16;
      if (v40 <= v41)
      {
        v42 = 0;
      }

      else
      {
        v42 = v41;
      }

      *(v3 + 88) = v42;
      v43 = *(v3 + 80);
      if (*(v43 + 8) > 0xFFuLL)
      {
        atomic_exchange((*(v43 + 16) + 128), v42);
        *(v3 + 124) = 0;
        v44 = IPC::Encoder::operator new(0x238, v14);
        *v44 = 1039;
        *(v44 + 2) = 0;
        *(v44 + 3) = 0;
        *(v44 + 1) = v53;
        *(v44 + 68) = 0;
        *(v44 + 70) = 0;
        *(v44 + 69) = 0;
        IPC::Encoder::encodeHeader(v44);
        v56 = v44;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, v13);
        if (IPC::Connection::sendMessageImpl(v8, &v56, 1, 0))
        {
          IPC::Connection::takeAsyncReplyHandler(v8, v13, &v55);
          if (v55)
          {
            WTF::RunLoop::mainSingleton(v46);
            v47 = v55;
            v55 = 0;
            v48 = WTF::fastMalloc(0x10);
            *v48 = &unk_1F11260D8;
            v48[1] = v47;
            v54 = v48;
            WTF::RunLoop::dispatch();
            if (v54)
            {
              (*(*v54 + 8))(v54);
            }

            v49 = v55;
            v55 = 0;
            if (v49)
            {
              (*(*v49 + 8))(v49);
            }
          }
        }

        v50 = v56;
        v56 = 0;
        if (v50)
        {
          IPC::Encoder::~Encoder(v50, v45);
          bmalloc::api::tzoneFree(v51, v52);
        }

        goto LABEL_27;
      }
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v18 = -v17 & 7;
  *(v17 + v18) = v13;
  v19 = 6;
  if (v18 > 6)
  {
    v19 = v18;
  }

  v20 = v19 + 10;
  v21 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v3 + 72);
  if (v21 + 16 >= v22)
  {
    v21 = 0;
  }

  v23 = v20 + v21;
  if (v22 <= v23)
  {
    v23 = 0;
  }

  *(v3 + 88) = v23;
  v24 = *(v3 + 80);
  if (*(v24 + 8) <= 0xFFuLL)
  {
    goto LABEL_75;
  }

  if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(v3 + 124))
  {
    if (*(v3 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v3 + 100));
    }

    *(v3 + 124) = 0;
  }

LABEL_27:
  v25 = v57[0];
  v57[0] = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
  v2 = 0;
LABEL_30:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) != 1)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_32;
  }

  atomic_store(1u, v3);
  IPC::StreamClientConnection::operator delete(v3);
  if (v2)
  {
LABEL_32:
    (*(*v2 + 8))(v2);
  }
}

void WebKit::WebGPU::RemoteDeviceProxy::resolveUncapturedErrorEvent(WTF::ApproximateTime *a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(*(*(a1 + 8) + 72) + 80);
  atomic_fetch_add(v3, 1u);
  v4 = *(a1 + 6);
  v5 = *(v3 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v6 = v5 + v7;
  }

  if (*(v3 + 64) != v4)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v58, v6);
    if (v60 != 1)
    {
      goto LABEL_30;
    }

    v26 = v59;
    if (v59 <= 1)
    {
      __break(0xC471u);
      goto LABEL_75;
    }

    v27 = v58;
    *v58 = 3198;
    v28 = v27 + 1;
    if (v26 - 2 < (-v28 & 7 | 8uLL))
    {
      goto LABEL_30;
    }

    v29 = -v28 & 7;
    *(v28 + v29) = v4;
    if (v29 != 7)
    {
      v29 = 6;
    }

    v30 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(v3 + 72);
    v31 = *(v3 + 80);
    v33 = v29 + 10;
    if (v30 + 16 >= v32)
    {
      v30 = 0;
    }

    v34 = v33 + v30;
    if (v32 <= v34)
    {
      v34 = 0;
    }

    *(v3 + 88) = v34;
    if (*(v31 + 8) <= 0xFFuLL)
    {
      goto LABEL_75;
    }

    v35 = atomic_exchange((*(v31 + 16) + 128), v34);
    v36 = *(v3 + 124);
    if (v35 == 0x80000000 || v36 != 0)
    {
      v38 = v36 + 1;
      *(v3 + 124) = v38;
      if (v38 >= *(v3 + 120))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }
    }

    *(v3 + 64) = v4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v58, v6);
  if ((v60 & 1) == 0)
  {
    goto LABEL_30;
  }

  v8 = *(v3 + 8);
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
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_10:
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F1126100;
  v11[1] = v2;
  v57[0] = v11;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_77;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v57[1] = IdentifierInternal;
  if (!IdentifierInternal)
  {
    __break(0xC471u);
    JUMPOUT(0x19E25D160);
  }

  v13 = IdentifierInternal;
  IPC::Connection::addAsyncReplyHandler(v8, v57);
  if ((v60 & 1) == 0)
  {
    goto LABEL_75;
  }

  v15 = v59;
  if (v59 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E25D180);
  }

  v16 = v58;
  *v58 = 1042;
  v17 = v16 + 1;
  if (v15 - 2 < (-v17 & 7 | 8uLL))
  {
    v53 = v4;
    if (v60)
    {
      if (v59 <= 1)
      {
LABEL_76:
        __break(0xC471u);
LABEL_77:
        JUMPOUT(0x19E25D140);
      }

      *v58 = 3197;
      v39 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v40 = *(v3 + 72);
      if (v39 + 16 >= v40)
      {
        v39 = 0;
      }

      v41 = v39 + 16;
      if (v40 <= v41)
      {
        v42 = 0;
      }

      else
      {
        v42 = v41;
      }

      *(v3 + 88) = v42;
      v43 = *(v3 + 80);
      if (*(v43 + 8) > 0xFFuLL)
      {
        atomic_exchange((*(v43 + 16) + 128), v42);
        *(v3 + 124) = 0;
        v44 = IPC::Encoder::operator new(0x238, v14);
        *v44 = 1042;
        *(v44 + 2) = 0;
        *(v44 + 3) = 0;
        *(v44 + 1) = v53;
        *(v44 + 68) = 0;
        *(v44 + 70) = 0;
        *(v44 + 69) = 0;
        IPC::Encoder::encodeHeader(v44);
        v56 = v44;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, v13);
        if (IPC::Connection::sendMessageImpl(v8, &v56, 1, 0))
        {
          IPC::Connection::takeAsyncReplyHandler(v8, v13, &v55);
          if (v55)
          {
            WTF::RunLoop::mainSingleton(v46);
            v47 = v55;
            v55 = 0;
            v48 = WTF::fastMalloc(0x10);
            *v48 = &unk_1F1126128;
            v48[1] = v47;
            v54 = v48;
            WTF::RunLoop::dispatch();
            if (v54)
            {
              (*(*v54 + 8))(v54);
            }

            v49 = v55;
            v55 = 0;
            if (v49)
            {
              (*(*v49 + 8))(v49);
            }
          }
        }

        v50 = v56;
        v56 = 0;
        if (v50)
        {
          IPC::Encoder::~Encoder(v50, v45);
          bmalloc::api::tzoneFree(v51, v52);
        }

        goto LABEL_27;
      }
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v18 = -v17 & 7;
  *(v17 + v18) = v13;
  v19 = 6;
  if (v18 > 6)
  {
    v19 = v18;
  }

  v20 = v19 + 10;
  v21 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v3 + 72);
  if (v21 + 16 >= v22)
  {
    v21 = 0;
  }

  v23 = v20 + v21;
  if (v22 <= v23)
  {
    v23 = 0;
  }

  *(v3 + 88) = v23;
  v24 = *(v3 + 80);
  if (*(v24 + 8) <= 0xFFuLL)
  {
    goto LABEL_75;
  }

  if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(v3 + 124))
  {
    if (*(v3 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v3 + 100));
    }

    *(v3 + 124) = 0;
  }

LABEL_27:
  v25 = v57[0];
  v57[0] = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
  v2 = 0;
LABEL_30:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) != 1)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_32;
  }

  atomic_store(1u, v3);
  IPC::StreamClientConnection::operator delete(v3);
  if (v2)
  {
LABEL_32:
    (*(*v2 + 8))(v2);
  }
}

void WebKit::WebGPU::RemoteDeviceProxy::setLabelInternal(WebKit::WebGPU::RemoteDeviceProxy *this, const WTF::String *a2)
{
  v3 = *(*(*(this + 8) + 72) + 80);
  atomic_fetch_add(v3, 1u);
  v4 = *(this + 6);
  v5 = *(v3 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v6 = v5 + v7;
  }

  if (*(v3 + 64) != v4)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v43, v6);
    if (v45 != 1)
    {
      goto LABEL_29;
    }

    v27 = v44;
    if (v44 <= 1)
    {
LABEL_54:
      __break(0xC471u);
      JUMPOUT(0x19E25D53CLL);
    }

    v28 = v43;
    *v43 = 3198;
    v29 = v28 + 2;
    if (v27 - 2 < (-v29 & 7 | 8uLL))
    {
      goto LABEL_29;
    }

    v30 = -v29 & 7;
    *&v29[v30] = v4;
    if (v30 != 7)
    {
      v30 = 6;
    }

    v31 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v33 = *(v3 + 72);
    v32 = *(v3 + 80);
    v34 = v30 + 10;
    if (v31 + 16 >= v33)
    {
      v31 = 0;
    }

    v35 = v34 + v31;
    if (v33 <= v35)
    {
      v35 = 0;
    }

    *(v3 + 88) = v35;
    if (*(v32 + 8) <= 0xFFuLL)
    {
      goto LABEL_53;
    }

    v36 = atomic_exchange((*(v32 + 16) + 128), v35);
    v37 = *(v3 + 124);
    if (v36 == 0x80000000 || v37 != 0)
    {
      v39 = v37 + 1;
      *(v3 + 124) = v39;
      if (v39 >= *(v3 + 120))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }
    }

    *(v3 + 64) = v4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v40, v6);
  if (v42 != 1)
  {
    goto LABEL_29;
  }

  v8 = v40;
  v9 = v41;
  v45 = v41;
  if (v41 <= 1)
  {
    goto LABEL_54;
  }

  *v40 = 1043;
  v43 = (v8 + 1);
  v44 = v9 - 2;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v43, a2);
  if (v43)
  {
    v11 = 16;
    if (v45 - v44 > 0x10)
    {
      v11 = v45 - v44;
    }

    v12 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v3 + 72);
    v13 = *(v3 + 80);
    if (v12 + 16 >= v14)
    {
      v12 = 0;
    }

    v15 = v12 + v11;
    if (v14 <= v15)
    {
      v15 = 0;
    }

    *(v3 + 88) = v15;
    if (*(v13 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v13 + 16) + 128), v15) == 0x80000000 || *(v3 + 124))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }

      goto LABEL_29;
    }

    goto LABEL_53;
  }

  if ((v42 & 1) == 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v41 <= 1)
  {
    __break(0xC471u);
    goto LABEL_53;
  }

  *v40 = 3197;
  v16 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v3 + 72);
  if (v16 + 16 >= v17)
  {
    v16 = 0;
  }

  v18 = v16 + 16;
  if (v17 <= v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  *(v3 + 88) = v19;
  v20 = *(v3 + 80);
  if (*(v20 + 8) <= 0xFFuLL)
  {
    goto LABEL_53;
  }

  atomic_exchange((*(v20 + 16) + 128), v19);
  *(v3 + 124) = 0;
  v21 = *(v3 + 8);
  v22 = IPC::Encoder::operator new(0x238, v10);
  *v22 = 1043;
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 1) = v4;
  *(v22 + 68) = 0;
  *(v22 + 70) = 0;
  *(v22 + 69) = 0;
  IPC::Encoder::encodeHeader(v22);
  v43 = v22;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v22, a2);
  IPC::Connection::sendMessageImpl(v21, &v43, 1, 0);
  v24 = v43;
  v43 = 0;
  if (v24)
  {
    IPC::Encoder::~Encoder(v24, v23);
    bmalloc::api::tzoneFree(v25, v26);
  }

LABEL_29:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

void WebKit::WebGPU::RemoteDeviceProxy::resolveDeviceLostPromise(WTF::ApproximateTime *a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(*(*(a1 + 8) + 72) + 80);
  atomic_fetch_add(v3, 1u);
  v4 = *(a1 + 6);
  v5 = *(v3 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v6 = v5 + v7;
  }

  if (*(v3 + 64) != v4)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v58, v6);
    if (v60 != 1)
    {
      goto LABEL_30;
    }

    v26 = v59;
    if (v59 <= 1)
    {
      __break(0xC471u);
      goto LABEL_75;
    }

    v27 = v58;
    *v58 = 3198;
    v28 = v27 + 1;
    if (v26 - 2 < (-v28 & 7 | 8uLL))
    {
      goto LABEL_30;
    }

    v29 = -v28 & 7;
    *(v28 + v29) = v4;
    if (v29 != 7)
    {
      v29 = 6;
    }

    v30 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(v3 + 72);
    v31 = *(v3 + 80);
    v33 = v29 + 10;
    if (v30 + 16 >= v32)
    {
      v30 = 0;
    }

    v34 = v33 + v30;
    if (v32 <= v34)
    {
      v34 = 0;
    }

    *(v3 + 88) = v34;
    if (*(v31 + 8) <= 0xFFuLL)
    {
      goto LABEL_75;
    }

    v35 = atomic_exchange((*(v31 + 16) + 128), v34);
    v36 = *(v3 + 124);
    if (v35 == 0x80000000 || v36 != 0)
    {
      v38 = v36 + 1;
      *(v3 + 124) = v38;
      if (v38 >= *(v3 + 120))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }
    }

    *(v3 + 64) = v4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v58, v6);
  if ((v60 & 1) == 0)
  {
    goto LABEL_30;
  }

  v8 = *(v3 + 8);
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
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_10:
  v11 = WTF::fastMalloc(0x10);
  *v11 = &unk_1F1126150;
  v11[1] = v2;
  v57[0] = v11;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_77;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v57[1] = IdentifierInternal;
  if (!IdentifierInternal)
  {
    __break(0xC471u);
    JUMPOUT(0x19E25DACCLL);
  }

  v13 = IdentifierInternal;
  IPC::Connection::addAsyncReplyHandler(v8, v57);
  if ((v60 & 1) == 0)
  {
    goto LABEL_75;
  }

  v15 = v59;
  if (v59 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E25DAECLL);
  }

  v16 = v58;
  *v58 = 1041;
  v17 = v16 + 1;
  if (v15 - 2 < (-v17 & 7 | 8uLL))
  {
    v53 = v4;
    if (v60)
    {
      if (v59 <= 1)
      {
LABEL_76:
        __break(0xC471u);
LABEL_77:
        JUMPOUT(0x19E25DAACLL);
      }

      *v58 = 3197;
      v39 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v40 = *(v3 + 72);
      if (v39 + 16 >= v40)
      {
        v39 = 0;
      }

      v41 = v39 + 16;
      if (v40 <= v41)
      {
        v42 = 0;
      }

      else
      {
        v42 = v41;
      }

      *(v3 + 88) = v42;
      v43 = *(v3 + 80);
      if (*(v43 + 8) > 0xFFuLL)
      {
        atomic_exchange((*(v43 + 16) + 128), v42);
        *(v3 + 124) = 0;
        v44 = IPC::Encoder::operator new(0x238, v14);
        *v44 = 1041;
        *(v44 + 2) = 0;
        *(v44 + 3) = 0;
        *(v44 + 1) = v53;
        *(v44 + 68) = 0;
        *(v44 + 70) = 0;
        *(v44 + 69) = 0;
        IPC::Encoder::encodeHeader(v44);
        v56 = v44;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, v13);
        if (IPC::Connection::sendMessageImpl(v8, &v56, 1, 0))
        {
          IPC::Connection::takeAsyncReplyHandler(v8, v13, &v55);
          if (v55)
          {
            WTF::RunLoop::mainSingleton(v46);
            v47 = v55;
            v55 = 0;
            v48 = WTF::fastMalloc(0x10);
            *v48 = &unk_1F1126178;
            v48[1] = v47;
            v54 = v48;
            WTF::RunLoop::dispatch();
            if (v54)
            {
              (*(*v54 + 8))(v54);
            }

            v49 = v55;
            v55 = 0;
            if (v49)
            {
              (*(*v49 + 8))(v49);
            }
          }
        }

        v50 = v56;
        v56 = 0;
        if (v50)
        {
          IPC::Encoder::~Encoder(v50, v45);
          bmalloc::api::tzoneFree(v51, v52);
        }

        goto LABEL_27;
      }
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v18 = -v17 & 7;
  *(v17 + v18) = v13;
  v19 = 6;
  if (v18 > 6)
  {
    v19 = v18;
  }

  v20 = v19 + 10;
  v21 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v3 + 72);
  if (v21 + 16 >= v22)
  {
    v21 = 0;
  }

  v23 = v20 + v21;
  if (v22 <= v23)
  {
    v23 = 0;
  }

  *(v3 + 88) = v23;
  v24 = *(v3 + 80);
  if (*(v24 + 8) <= 0xFFuLL)
  {
    goto LABEL_75;
  }

  if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(v3 + 124))
  {
    if (*(v3 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v3 + 100));
    }

    *(v3 + 124) = 0;
  }

LABEL_27:
  v25 = v57[0];
  v57[0] = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v8);
  v2 = 0;
LABEL_30:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) != 1)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_32;
  }

  atomic_store(1u, v3);
  IPC::StreamClientConnection::operator delete(v3);
  if (v2)
  {
LABEL_32:
    (*(*v2 + 8))(v2);
  }
}

double WebKit::WebGPU::RemoteDeviceProxy::send<Messages::RemoteDevice::PauseAllErrorReporting>(WTF::ApproximateTime *a1, char *a2)
{
  v3 = *(*(*(a1 + 8) + 72) + 80);
  atomic_fetch_add(v3, 1u);
  v4 = *(a1 + 6);
  v5 = *(v3 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v6 = v5 + v7;
  }

  if (*(v3 + 64) == v4)
  {
    while (1)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v39, v6);
      if (v41 != 1)
      {
        break;
      }

      v10 = v40;
      if (v40 <= 1)
      {
        goto LABEL_52;
      }

      v11 = v39;
      *v39 = 1038;
      if (v10 == 2)
      {
        if (v41)
        {
          if (v40 <= 1)
          {
LABEL_52:
            __break(0xC471u);
            JUMPOUT(0x19E25DEA0);
          }

          *v39 = 3197;
          v29 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v31 = *(v3 + 72);
          v30 = *(v3 + 80);
          if (v29 + 16 >= v31)
          {
            v29 = 0;
          }

          v32 = v29 + 16;
          if (v31 <= v32)
          {
            v32 = 0;
          }

          *(v3 + 88) = v32;
          if (*(v30 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v30 + 16) + 128), v32);
            *(v3 + 124) = 0;
            v33 = *(v3 + 8);
            v34 = IPC::Encoder::operator new(0x238, v8);
            *v34 = 1038;
            *(v34 + 2) = 0;
            *(v34 + 3) = 0;
            *(v34 + 1) = v4;
            *(v34 + 68) = 0;
            *(v34 + 70) = 0;
            *(v34 + 69) = 0;
            IPC::Encoder::encodeHeader(v34);
            v42 = v34;
            IPC::Encoder::operator<<<BOOL &>(v34, a2);
            IPC::Connection::sendMessageImpl(v33, &v42, 1, 0);
            v36 = v42;
            v42 = 0;
            if (v36)
            {
              IPC::Encoder::~Encoder(v36, v35);
              bmalloc::api::tzoneFree(v37, v38);
            }

            break;
          }
        }
      }

      else
      {
        *(v11 + 2) = *a2;
        v12 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v14 = *(v3 + 72);
        v13 = *(v3 + 80);
        if (v12 + 16 >= v14)
        {
          v12 = 0;
        }

        v15 = v12 + 16;
        if (v14 <= v15)
        {
          v15 = 0;
        }

        *(v3 + 88) = v15;
        if (*(v13 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v13 + 16) + 128), v15) == 0x80000000 || *(v3 + 124))
          {
            if (*(v3 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v3 + 100));
            }

            *(v3 + 124) = 0;
          }

          break;
        }
      }

LABEL_46:
      __break(1u);
LABEL_47:
      if (*(v3 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(v3 + 100));
      }

      *(v3 + 124) = 0;
LABEL_36:
      *(v3 + 64) = v4;
    }
  }

  else
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v39, v6);
    if (v41 == 1)
    {
      v16 = v40;
      if (v40 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E25DEC0);
      }

      v17 = v39;
      *v39 = 3198;
      v18 = v17 + 1;
      if (v16 - 2 >= (-v18 & 7 | 8uLL))
      {
        v19 = -v18 & 7;
        *(v18 + v19) = v4;
        if (v19 != 7)
        {
          v19 = 6;
        }

        v20 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v22 = *(v3 + 72);
        v21 = *(v3 + 80);
        v23 = v19 + 10;
        if (v20 + 16 >= v22)
        {
          v20 = 0;
        }

        v24 = v23 + v20;
        if (v22 <= v24)
        {
          v24 = 0;
        }

        *(v3 + 88) = v24;
        if (*(v21 + 8) <= 0xFFuLL)
        {
          goto LABEL_46;
        }

        v25 = atomic_exchange((*(v21 + 16) + 128), v24);
        v26 = *(v3 + 124);
        if (v25 == 0x80000000 || v26 != 0)
        {
          v28 = v26 + 1;
          *(v3 + 124) = v28;
          if (v28 >= *(v3 + 120))
          {
            goto LABEL_47;
          }
        }

        goto LABEL_36;
      }
    }
  }

  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);

    return IPC::StreamClientConnection::operator delete(v3);
  }

  return result;
}

uint64_t WebKit::WebGPU::RemoteDeviceProxy::invalidCommandEncoder@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 112);
  ++*(v2 + 16);
  *a2 = v2;
  return this;
}

uint64_t WebKit::WebGPU::RemoteDeviceProxy::invalidCommandBuffer@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 136);
  ++*(v2 + 16);
  *a2 = v2;
  return this;
}

uint64_t WebKit::WebGPU::RemoteDeviceProxy::invalidRenderPassEncoder@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 120);
  ++*(v2 + 16);
  *a2 = v2;
  return this;
}

uint64_t WebKit::WebGPU::RemoteDeviceProxy::invalidComputePassEncoder@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 128);
  ++*(v2 + 16);
  *a2 = v2;
  return this;
}

uint64_t WebKit::WebGPU::RemoteDeviceProxy::emptyBindGroupLayout@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 144);
  ++*(v2 + 16);
  *a2 = v2;
  return this;
}

void WebKit::WebGPU::RemoteExternalTextureProxy::~RemoteExternalTextureProxy(WebKit::WebGPU::RemoteExternalTextureProxy *this)
{
  v2 = *(*(*(*(this + 5) + 64) + 72) + 80);
  atomic_fetch_add(v2, 1u);
  v3 = *(this + 3);
  v4 = *(v2 + 128);
  v5 = INFINITY;
  if (fabs(v4) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v5 = v4 + v6;
  }

  if (*(v2 + 64) != v3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v29, v5);
    if (v31 != 1)
    {
      goto LABEL_16;
    }

    v16 = v30;
    if (v30 <= 1)
    {
LABEL_51:
      __break(0xC471u);
      return;
    }

    v17 = v29;
    *v29 = 3198;
    v18 = v17 + 1;
    if (v16 - 2 < (-v18 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v19 = -v18 & 7;
    *(v18 + v19) = v3;
    if (v19 != 7)
    {
      v19 = 6;
    }

    v20 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v22 = *(v2 + 72);
    v21 = *(v2 + 80);
    v23 = v19 + 10;
    if (v20 + 16 >= v22)
    {
      v20 = 0;
    }

    v24 = v23 + v20;
    if (v22 <= v24)
    {
      v24 = 0;
    }

    *(v2 + 88) = v24;
    if (*(v21 + 8) <= 0xFFuLL)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v25 = atomic_exchange((*(v21 + 16) + 128), v24);
    v26 = *(v2 + 124);
    if (v25 == 0x80000000 || v26 != 0)
    {
      v28 = v26 + 1;
      *(v2 + 124) = v28;
      if (v28 >= *(v2 + 120))
      {
        if (*(v2 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v2 + 100));
        }

        *(v2 + 124) = 0;
      }
    }

    *(v2 + 64) = v3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v29, v5);
  if (v31 == 1)
  {
    if (v30 <= 1)
    {
      __break(0xC471u);
    }

    else
    {
      *v29 = 1147;
      v9 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v11 = *(v2 + 72);
      v10 = *(v2 + 80);
      if (v9 + 16 >= v11)
      {
        v9 = 0;
      }

      v12 = v9 + 16;
      if (v11 <= v12)
      {
        v12 = 0;
      }

      *(v2 + 88) = v12;
      if (*(v10 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v10 + 16) + 128), v12) == 0x80000000 || *(v2 + 124))
        {
          if (*(v2 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v2 + 100));
          }

          *(v2 + 124) = 0;
        }

        goto LABEL_16;
      }
    }

    goto LABEL_50;
  }

LABEL_16:
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    v8.n128_f64[0] = IPC::StreamClientConnection::operator delete(v2);
  }

  v13 = *(this + 5);
  *(this + 5) = 0;
  if (v13)
  {
    if (v13[4] == 1)
    {
      (*(*v13 + 8))(v13, v8);
    }

    else
    {
      --v13[4];
    }
  }

  v14 = *(this + 4);
  *(this + 4) = 0;
  if (v14)
  {
    if (v14[2] == 1)
    {
      (*(*v14 + 8))(v14, v8);
    }

    else
    {
      --v14[2];
    }
  }

  *this = &unk_1F1125E30;
  v15 = *(this + 2);
  *(this + 2) = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v7);
    }
  }
}

{
  WebKit::WebGPU::RemoteExternalTextureProxy::~RemoteExternalTextureProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::WebGPU::RemoteExternalTextureProxy::setLabelInternal(WebKit::WebGPU::RemoteExternalTextureProxy *this, const WTF::String *a2)
{
  v3 = *(*(*(*(this + 5) + 64) + 72) + 80);
  atomic_fetch_add(v3, 1u);
  v4 = *(this + 3);
  v5 = *(v3 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v6 = v5 + v7;
  }

  if (*(v3 + 64) != v4)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v43, v6);
    if (v45 != 1)
    {
      goto LABEL_29;
    }

    v27 = v44;
    if (v44 <= 1)
    {
LABEL_54:
      __break(0xC471u);
      JUMPOUT(0x19E25E650);
    }

    v28 = v43;
    *v43 = 3198;
    v29 = v28 + 2;
    if (v27 - 2 < (-v29 & 7 | 8uLL))
    {
      goto LABEL_29;
    }

    v30 = -v29 & 7;
    *&v29[v30] = v4;
    if (v30 != 7)
    {
      v30 = 6;
    }

    v31 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v33 = *(v3 + 72);
    v32 = *(v3 + 80);
    v34 = v30 + 10;
    if (v31 + 16 >= v33)
    {
      v31 = 0;
    }

    v35 = v34 + v31;
    if (v33 <= v35)
    {
      v35 = 0;
    }

    *(v3 + 88) = v35;
    if (*(v32 + 8) <= 0xFFuLL)
    {
      goto LABEL_53;
    }

    v36 = atomic_exchange((*(v32 + 16) + 128), v35);
    v37 = *(v3 + 124);
    if (v36 == 0x80000000 || v37 != 0)
    {
      v39 = v37 + 1;
      *(v3 + 124) = v39;
      if (v39 >= *(v3 + 120))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }
    }

    *(v3 + 64) = v4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v40, v6);
  if (v42 != 1)
  {
    goto LABEL_29;
  }

  v8 = v40;
  v9 = v41;
  v45 = v41;
  if (v41 <= 1)
  {
    goto LABEL_54;
  }

  *v40 = 1148;
  v43 = (v8 + 1);
  v44 = v9 - 2;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v43, a2);
  if (v43)
  {
    v11 = 16;
    if (v45 - v44 > 0x10)
    {
      v11 = v45 - v44;
    }

    v12 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v3 + 72);
    v13 = *(v3 + 80);
    if (v12 + 16 >= v14)
    {
      v12 = 0;
    }

    v15 = v12 + v11;
    if (v14 <= v15)
    {
      v15 = 0;
    }

    *(v3 + 88) = v15;
    if (*(v13 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v13 + 16) + 128), v15) == 0x80000000 || *(v3 + 124))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }

      goto LABEL_29;
    }

    goto LABEL_53;
  }

  if ((v42 & 1) == 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v41 <= 1)
  {
    __break(0xC471u);
    goto LABEL_53;
  }

  *v40 = 3197;
  v16 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v3 + 72);
  if (v16 + 16 >= v17)
  {
    v16 = 0;
  }

  v18 = v16 + 16;
  if (v17 <= v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  *(v3 + 88) = v19;
  v20 = *(v3 + 80);
  if (*(v20 + 8) <= 0xFFuLL)
  {
    goto LABEL_53;
  }

  atomic_exchange((*(v20 + 16) + 128), v19);
  *(v3 + 124) = 0;
  v21 = *(v3 + 8);
  v22 = IPC::Encoder::operator new(0x238, v10);
  *v22 = 1148;
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 1) = v4;
  *(v22 + 68) = 0;
  *(v22 + 70) = 0;
  *(v22 + 69) = 0;
  IPC::Encoder::encodeHeader(v22);
  v43 = v22;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v22, a2);
  IPC::Connection::sendMessageImpl(v21, &v43, 1, 0);
  v24 = v43;
  v43 = 0;
  if (v24)
  {
    IPC::Encoder::~Encoder(v24, v23);
    bmalloc::api::tzoneFree(v25, v26);
  }

LABEL_29:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

void WebKit::WebGPU::RemoteExternalTextureProxy::destroy(WebKit::WebGPU::RemoteExternalTextureProxy *this)
{
  v1 = *(*(*(*(this + 5) + 64) + 72) + 80);
  atomic_fetch_add(v1, 1u);
  v2 = *(this + 3);
  v3 = *(v1 + 128);
  v4 = INFINITY;
  if (fabs(v3) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v4 = v3 + v5;
  }

  if (*(v1 + 64) != v2)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v1 + 72, &v23, v4);
    if (v25 != 1)
    {
      goto LABEL_16;
    }

    v10 = v24;
    if (v24 <= 1)
    {
LABEL_40:
      __break(0xC471u);
      return;
    }

    v11 = v23;
    *v23 = 3198;
    v12 = v11 + 1;
    if (v10 - 2 < (-v12 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v13 = -v12 & 7;
    *(v12 + v13) = v2;
    if (v13 != 7)
    {
      v13 = 6;
    }

    v14 = (*(v1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v1 + 72);
    v15 = *(v1 + 80);
    v17 = v13 + 10;
    if (v14 + 16 >= v16)
    {
      v14 = 0;
    }

    v18 = v17 + v14;
    if (v16 <= v18)
    {
      v18 = 0;
    }

    *(v1 + 88) = v18;
    if (*(v15 + 8) <= 0xFFuLL)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v19 = atomic_exchange((*(v15 + 16) + 128), v18);
    v20 = *(v1 + 124);
    if (v19 == 0x80000000 || v20 != 0)
    {
      v22 = v20 + 1;
      *(v1 + 124) = v22;
      if (v22 >= *(v1 + 120))
      {
        if (*(v1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v1 + 100));
        }

        *(v1 + 124) = 0;
      }
    }

    *(v1 + 64) = v2;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v1 + 72, &v23, v4);
  if (v25 == 1)
  {
    if (v24 <= 1)
    {
      __break(0xC471u);
    }

    else
    {
      *v23 = 1146;
      v6 = (*(v1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v8 = *(v1 + 72);
      v7 = *(v1 + 80);
      if (v6 + 16 >= v8)
      {
        v6 = 0;
      }

      v9 = v6 + 16;
      if (v8 <= v9)
      {
        v9 = 0;
      }

      *(v1 + 88) = v9;
      if (*(v7 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v7 + 16) + 128), v9) == 0x80000000 || *(v1 + 124))
        {
          if (*(v1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v1 + 100));
          }

          *(v1 + 124) = 0;
        }

        goto LABEL_16;
      }
    }

    goto LABEL_39;
  }

LABEL_16:
  if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1);
    IPC::StreamClientConnection::operator delete(v1);
  }
}

void WebKit::WebGPU::RemoteExternalTextureProxy::undestroy(WebKit::WebGPU::RemoteExternalTextureProxy *this)
{
  v1 = *(*(*(*(this + 5) + 64) + 72) + 80);
  atomic_fetch_add(v1, 1u);
  v2 = *(this + 3);
  v3 = *(v1 + 128);
  v4 = INFINITY;
  if (fabs(v3) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v4 = v3 + v5;
  }

  if (*(v1 + 64) != v2)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v1 + 72, &v23, v4);
    if (v25 != 1)
    {
      goto LABEL_16;
    }

    v10 = v24;
    if (v24 <= 1)
    {
LABEL_40:
      __break(0xC471u);
      return;
    }

    v11 = v23;
    *v23 = 3198;
    v12 = v11 + 1;
    if (v10 - 2 < (-v12 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v13 = -v12 & 7;
    *(v12 + v13) = v2;
    if (v13 != 7)
    {
      v13 = 6;
    }

    v14 = (*(v1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v1 + 72);
    v15 = *(v1 + 80);
    v17 = v13 + 10;
    if (v14 + 16 >= v16)
    {
      v14 = 0;
    }

    v18 = v17 + v14;
    if (v16 <= v18)
    {
      v18 = 0;
    }

    *(v1 + 88) = v18;
    if (*(v15 + 8) <= 0xFFuLL)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v19 = atomic_exchange((*(v15 + 16) + 128), v18);
    v20 = *(v1 + 124);
    if (v19 == 0x80000000 || v20 != 0)
    {
      v22 = v20 + 1;
      *(v1 + 124) = v22;
      if (v22 >= *(v1 + 120))
      {
        if (*(v1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v1 + 100));
        }

        *(v1 + 124) = 0;
      }
    }

    *(v1 + 64) = v2;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v1 + 72, &v23, v4);
  if (v25 == 1)
  {
    if (v24 <= 1)
    {
      __break(0xC471u);
    }

    else
    {
      *v23 = 1149;
      v6 = (*(v1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v8 = *(v1 + 72);
      v7 = *(v1 + 80);
      if (v6 + 16 >= v8)
      {
        v6 = 0;
      }

      v9 = v6 + 16;
      if (v8 <= v9)
      {
        v9 = 0;
      }

      *(v1 + 88) = v9;
      if (*(v7 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v7 + 16) + 128), v9) == 0x80000000 || *(v1 + 124))
        {
          if (*(v1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v1 + 100));
          }

          *(v1 + 124) = 0;
        }

        goto LABEL_16;
      }
    }

    goto LABEL_39;
  }

LABEL_16:
  if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1);
    IPC::StreamClientConnection::operator delete(v1);
  }
}

void WebKit::RemoteGPUProxy::create(WebKit::RemoteGPUProxy *this@<X0>, WebKit::WebGPU::ConvertToBackingContext *a2@<X1>, WebKit::RemoteGPUProxy **a3@<X8>)
{
  v6 = WebKit::WebPage::ensureRemoteRenderingBackendProxy(a2);
  ++*(v6 + 5);
  v7 = WTF::RunLoop::mainSingleton(v6);
  WebKit::RemoteGPUProxy::create(this, v6, v7, a3);
  if (*(v6 + 5) == 1)
  {
    v8 = *(*v6 + 24);

    v8(v6);
  }

  else
  {
    --*(v6 + 5);
  }
}

void WebKit::RemoteGPUProxy::create(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, WebKit::RemoteGPUProxy **a4@<X8>)
{
  {
    v8 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v16 = WebKit::WebProcess::operator new(0x370, a2);
    v8 = WebKit::WebProcess::WebProcess(v16);
    WebKit::WebProcess::singleton(void)::process = v8;
  }

  v9 = WebKit::WebProcess::gpuProcessTimeoutDuration(v8);
  IPC::StreamClientConnection::create(21, &v20, v9);
  if (v23 == 1)
  {
    v10 = v20;
    v20 = 0;
    v17 = v10;
    WTF::MachSendRight::MachSendRight();
    WTF::MachSendRight::MachSendRight();
    v19[1] = v22[1];
    v12 = WebKit::RemoteGPUProxy::operator new(0x68, v11);
    WebKit::RemoteGPUProxy::RemoteGPUProxy(v12, a1, a3);
    WebKit::RemoteRenderingBackendProxy::ensureGPUProcessConnection(a2, v13);
    WebKit::RemoteGPUProxy::initializeIPC(v12, &v17, a2[10], &v18);
    WebKit::RemoteGPUProxy::waitUntilInitialized(v12);
    *a4 = v12;
    WTF::MachSendRight::~MachSendRight(v19);
    WTF::MachSendRight::~MachSendRight(&v18);
    v14 = v17;
    v17 = 0;
    if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14);
      IPC::StreamClientConnection::operator delete(v14);
    }

    if (v23)
    {
      WTF::MachSendRight::~MachSendRight(v22);
      WTF::MachSendRight::~MachSendRight(&v21);
      v15 = v20;
      v20 = 0;
      if (v15)
      {
        if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v15);
          IPC::StreamClientConnection::operator delete(v15);
        }
      }
    }
  }

  else
  {
    *a4 = 0;
  }
}

uint64_t WebKit::RemoteGPUProxy::operator new(WebKit::RemoteGPUProxy *this, void *a2)
{
  if (this == 104 && WebKit::RemoteGPUProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteGPUProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteGPUProxy::operatorNewSlow(this);
  }
}

uint64_t WebKit::RemoteGPUProxy::initializeIPC(uint64_t a1, atomic_uint **a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v6 = *a2;
  *a2 = 0;
  v7 = *(a1 + 80);
  *(a1 + 80) = v6;
  if (v7)
  {
    if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v7);
      IPC::StreamClientConnection::operator delete(v7);
    }

    v6 = *(a1 + 80);
  }

  if (v6)
  {
    atomic_fetch_add(v6, 1u);
    IPC::StreamClientConnection::open(v6, a1 + 8, a1 + 32);
    if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      IPC::StreamClientConnection::operator delete(v6);
    }
  }

  else
  {
    IPC::StreamClientConnection::open(0, a1 + 8, a1 + 32);
  }

  v8 = WTF::fastMalloc(0x20);
  *v8 = &unk_1F11261A0;
  v8[1] = a1;
  v8[2] = &v11;
  v8[3] = a4;
  v10 = v8;
  WTF::callOnMainRunLoopAndWait();
  result = v10;
  if (v10)
  {
    return (*(*v10 + 8))(v10);
  }

  return result;
}

void WebKit::RemoteGPUProxy::waitUntilInitialized(WebKit::RemoteGPUProxy *this)
{
  if ((*(this + 96) & 1) == 0)
  {
    v2 = *(this + 10);
    if (v2)
    {
      atomic_fetch_add(v2, 1u);
      v3 = IPC::StreamClientConnection::waitForAndDispatchImmediately<Messages::RemoteGPUProxy::WasCreated,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, *(this + 11), 0);
      v4 = v3;
      if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2);
        IPC::StreamClientConnection::operator delete(v2);
        if (!v4)
        {
          return;
        }
      }

      else if (!v3)
      {
        return;
      }
    }

    else if (!IPC::StreamClientConnection::waitForAndDispatchImmediately<Messages::RemoteGPUProxy::WasCreated,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, *(this + 11), 0))
    {
      return;
    }

    WebKit::RemoteGPUProxy::abandonGPUProcess(this);
  }
}

uint64_t WebKit::RemoteGPUProxy::RemoteGPUProxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F1125E70;
  *(a1 + 8) = &unk_1F11251E8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x100000000;
  *(a1 + 40) = 3;
  WTF::FunctionDispatcher::FunctionDispatcher((a1 + 32));
  *a1 = &unk_1F1125A28;
  *(a1 + 8) = &unk_1F1125B78;
  *(a1 + 32) = &unk_1F1125BD8;
  ++*(a2 + 8);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((a3 + 8));
  v7 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v6);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = v7;
  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    *(a1 + 88) = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    *(a1 + 96) = 0;
    return a1;
  }

  return result;
}

void WebKit::RemoteGPUProxy::~RemoteGPUProxy(WebKit::RemoteGPUProxy *this, void *a2)
{
  if ((*(this + 97) & 1) == 0)
  {
    v3 = *(this + 10);
    if (v3)
    {
      atomic_fetch_add(v3, 1u);
      IPC::Connection::invalidate(*(v3 + 8));
      if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v3);
        IPC::StreamClientConnection::operator delete(v3);
      }
    }

    else
    {
      IPC::Connection::invalidate(MEMORY[8]);
    }

    v4 = *(this + 11);
    v5 = *(this + 9);
    *(this + 9) = 0;
    v6 = WTF::fastMalloc(0x18);
    *v6 = &unk_1F11261C8;
    v6[1] = v4;
    v6[2] = v5;
    v12 = v6;
    WTF::ensureOnMainRunLoop();
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    WTF::fastFree(v8, a2);
  }

  v9 = *(this + 8);
  *(this + 8) = 0;
  if (v9)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v9, a2);
  }

  v10 = *(this + 6);
  *(this + 6) = 0;
  if (v10)
  {
    if (v10[2] == 1)
    {
      (*(*v10 + 8))(v10);
    }

    else
    {
      --v10[2];
    }
  }

  WTF::FunctionDispatcher::~FunctionDispatcher((this + 32));
  *(this + 1) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 2, v11);
}

void non-virtual thunk toWebKit::RemoteGPUProxy::~RemoteGPUProxy(WebKit::RemoteGPUProxy *this, void *a2)
{
  WebKit::RemoteGPUProxy::~RemoteGPUProxy((this - 8), a2);
}

{
  WebKit::RemoteGPUProxy::~RemoteGPUProxy((this - 32), a2);
}

{
  WebKit::RemoteGPUProxy::operator delete((this - 8), a2);
}

{
  WebKit::RemoteGPUProxy::operator delete((this - 32), a2);
}

double WebKit::RemoteGPUProxy::operator delete(WebKit::RemoteGPUProxy *a1, void *a2)
{
  WebKit::RemoteGPUProxy::~RemoteGPUProxy(a1, a2);
  if (atomic_load((v2 + 24)))
  {
    *(v2 + 96) = 0;
    result = 0.0;
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

void WebKit::RemoteGPUProxy::abandonGPUProcess(WebKit::RemoteGPUProxy *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    IPC::Connection::invalidate(*(v2 + 8));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }
  }

  else
  {
    IPC::Connection::invalidate(MEMORY[8]);
  }

  *(this + 97) = 1;
}

atomic_uchar *WebKit::RemoteGPUProxy::dispatch(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 64);
  if (result)
  {
    v8[1] = v2;
    v8[2] = v3;
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(result, *(a1 + 56), v8);
    result = v8[0];
    if (v8[0])
    {
      result = (*(*v8[0] + 16))(v8[0], a2);
      v6 = v8[0];
      v8[0] = 0;
      if (v6)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v6 + 8));
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteGPUProxy::isCurrent(WebKit::RemoteGPUProxy *this)
{
  result = *(this + 8);
  if (result)
  {
    v7[1] = v1;
    v7[2] = v2;
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(result, *(this + 7), v7);
    result = v7[0];
    if (v7[0])
    {
      v6 = (*(*v7[0] + 24))(v7[0]);
      v5 = v7[0];
      v7[0] = 0;
      if (v5)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v5 + 8));
      }

      return v6;
    }
  }

  return result;
}

void WebKit::RemoteGPUProxy::wasCreated(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 96) = 1;
  if (a2)
  {
    v4 = *(a1 + 80);
    if (v4)
    {
      atomic_fetch_add(v4, 1u);
      IPC::StreamClientConnection::setSemaphores(v4, a3, a4);
      if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v4);

        IPC::StreamClientConnection::operator delete(v4);
      }
    }

    else
    {

      IPC::StreamClientConnection::setSemaphores(0, a3, a4);
    }
  }

  else
  {

    WebKit::RemoteGPUProxy::abandonGPUProcess(a1);
  }
}

uint64_t IPC::StreamClientConnection::waitForAndDispatchImmediately<Messages::RemoteGPUProxy::WasCreated,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  v9 = *(a1 + 8);

  return IPC::Connection::waitForAndDispatchImmediately<Messages::RemoteGPUProxy::WasCreated>(v9, a2, a3, v7);
}

WTF::StringImpl *WebKit::RemoteGPUProxy::requestAdapter(uint64_t a1, int *a2, uint64_t *a3)
{
  if (*(a1 + 97) == 1)
  {
    v135 = 0;
    v4 = *a3;
    *a3 = 0;
    (*(*v4 + 16))(v4, &v135);
    (*(*v4 + 8))(v4);
    result = v135;
    v135 = 0;
    if (result)
    {
      if (*(result + 4) == 1)
      {
        return (*(*result + 8))(result);
      }

      else
      {
        --*(result + 4);
      }
    }

    return result;
  }

  v7 = *a2;
  v134 = 1;
  v133 = v7;
  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_180;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v10 = IdentifierInternal;
  v11 = *(a1 + 80);
  atomic_fetch_add(v11, 1u);
  v12 = *(a1 + 88);
  v13 = *(v11 + 128);
  v14 = INFINITY;
  if (fabs(v13) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v14 = v13 + v15;
  }

  if (*(v11 + 64) != v12)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v135, v14);
    if (v137 != 1)
    {
      goto LABEL_126;
    }

    v80 = v136;
    if (v136 <= 1)
    {
      __break(0xC471u);
      goto LABEL_179;
    }

    v81 = v135;
    *v135 = 3198;
    v82 = v81 + 2;
    if (v80 - 2 < (-v82 & 7 | 8uLL))
    {
      v94 = 18;
      goto LABEL_127;
    }

    v83 = -v82 & 7;
    *&v82[v83] = v12;
    v84 = 6;
    if (v83 > 6)
    {
      v84 = v83;
    }

    v85 = v84 + 10;
    v86 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v87 = *(v11 + 72);
    if (v86 + 16 >= v87)
    {
      v86 = 0;
    }

    v88 = v85 + v86;
    if (v87 <= v88)
    {
      v88 = 0;
    }

    *(v11 + 88) = v88;
    v89 = *(v11 + 80);
    if (*(v89 + 8) <= 0xFFuLL)
    {
      goto LABEL_179;
    }

    v90 = atomic_exchange((*(v89 + 16) + 128), v88);
    v91 = *(v11 + 124);
    if (v90 == 0x80000000 || v91 != 0)
    {
      v93 = v91 + 1;
      *(v11 + 124) = v93;
      if (v93 >= *(v11 + 120))
      {
        if (*(v11 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v11 + 100));
        }

        *(v11 + 124) = 0;
      }
    }

    *(v11 + 64) = v12;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v157, v14);
  if ((v159 & 1) == 0)
  {
LABEL_126:
    v94 = 16;
LABEL_127:
    LOBYTE(v164) = v94;
    v168 = 1;
    goto LABEL_128;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E260498);
  }

  v16 = v157;
  v17 = v158;
  v18 = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if ((IPC::Connection::pushPendingSyncRequestID(*(v11 + 8), v18) & 1) == 0)
  {
    LOBYTE(v164) = 12;
    v168 = 1;
    mpark::detail::move_assignment<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::RemoteGPU::RequestAdapter>::ReplyData,IPC::Error>,(mpark::detail::Trait)1>::move_assignment(&v135, &v164);
    v156 = 1;
    if (v168)
    {
      goto LABEL_72;
    }

    if (v167 == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v166, v35);
      v37 = v165;
      v165 = 0;
      if (v37)
      {
        if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v37, v36);
        }
      }
    }

    v38 = v164;
    v164 = 0;
    if (!v38)
    {
      goto LABEL_72;
    }

LABEL_56:
    IPC::Decoder::~Decoder(v38);
    bmalloc::api::tzoneFree(v50, v51);
    goto LABEL_72;
  }

  v166[0] = v17;
  if (v17 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2604B8);
  }

  *v16 = 4028;
  v19 = (v16 + 1);
  v164 = v19;
  v165 = (v17 - 2);
  v20 = -v19 & 7 | 8;
  if (v17 - 2 < v20)
  {
    v165 = 0;
    v164 = 0;
  }

  else
  {
    *(v19 + (-v19 & 7)) = v18;
    if (v165 < v20)
    {
      goto LABEL_179;
    }

    v164 = (v164 + v20);
    v165 = (v165 - v20);
  }

  IPC::ArgumentCoder<WebKit::WebGPU::RequestAdapterOptions,void>::encode(&v164, &v133);
  v22 = -v164 & 7 | 8;
  if (v165 < v22)
  {
    IPC::Connection::popPendingSyncRequestID(*(v11 + 8));
    LOBYTE(v135) = 0;
    v156 = 0;
    goto LABEL_72;
  }

  *(v164 + (-v164 & 7)) = v10;
  v23 = v165 - v22;
  if (v165 < v22)
  {
    goto LABEL_179;
  }

  v164 = (v164 + v22);
  v165 = (v165 - v22);
  v24 = v166[0] - v23;
  if (v24 <= 0x10)
  {
    v24 = 16;
  }

  v25 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v11 + 72);
  if (v25 + 16 >= v26)
  {
    v25 = 0;
  }

  v27 = v25 + v24;
  if (v26 <= v27)
  {
    v27 = 0;
  }

  *(v11 + 88) = v27;
  v28 = *(v11 + 80);
  if (*(v28 + 8) <= 0xFFuLL)
  {
    goto LABEL_179;
  }

  if (atomic_exchange((*(v28 + 16) + 128), v27) == 0x80000000 || *(v11 + 124))
  {
    if (*(v11 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v11 + 100));
    }

    *(v11 + 124) = 0;
  }

  while (1)
  {
    v29 = *(v11 + 80);
    if (*(v29 + 8) <= 0xFFuLL)
    {
      goto LABEL_179;
    }

    v30 = atomic_exchange(*(v29 + 16), 0x80000000uLL);
    v31 = *(v11 + 80);
    if (*(v31 + 8) <= 0xFFuLL)
    {
      goto LABEL_179;
    }

    if (!(v30 | atomic_load_explicit((*(v31 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
    {
      break;
    }

    if (*(v11 + 112) == 1)
    {
      v32 = IPC::Semaphore::waitFor((v11 + 104), v14);
      if (v32)
      {
        WTF::ApproximateTime::now(v32);
        if (v33 < v14)
        {
          continue;
        }
      }
    }

    IPC::Connection::popPendingSyncRequestID(*(v11 + 8));
    v34 = 17;
    goto LABEL_51;
  }

  v39 = *(v11 + 80);
  if (*(v39 + 8) <= 0xFFuLL)
  {
    goto LABEL_179;
  }

  atomic_store(0, *(v39 + 16));
  *(v11 + 88) = 0;
  v40 = *(v11 + 80);
  v41 = *(v40 + 8);
  if (v41 <= 0xFF)
  {
    goto LABEL_179;
  }

  v42 = *(v11 + 72);
  v43 = *(v40 + 16);
  v44 = v41 - 256;
  if (v42)
  {
    v74 = v42 - 1;
    v75 = v44 >= v74;
    v44 = v74;
    if (!v75)
    {
      goto LABEL_179;
    }
  }

  v45 = IPC::Decoder::operator new(0x58, v21);
  if (*(IPC::Decoder::Decoder(v45, v43 + 256, v44, *(v11 + 64)) + 25) != 3197)
  {
LABEL_53:
    IPC::Connection::popPendingSyncRequestID(*(v11 + 8));
    v170 = v45;
    if (*(v45 + 25) == 3194)
    {
      LOBYTE(v135) = 11;
      v155 = 1;
      v156 = 1;
      v170 = 0;
    }

    else
    {
      LOBYTE(v160) = 0;
      v163 = 0;
      IPC::Decoder::operator>><std::tuple<std::optional<WebKit::RemoteGPURequestAdapterResponse>>>(v45, &v160);
      if (v163 == 1)
      {
        IPC::ConnectionSendSyncResult<Messages::RemoteGPU::RequestAdapter>::ConnectionSendSyncResult(&v164, &v170, &v160);
        mpark::detail::move_assignment<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::RemoteGPU::RequestAdapter>::ReplyData,IPC::Error>,(mpark::detail::Trait)1>::move_assignment(&v135, &v164);
        v156 = 1;
        if (!v168)
        {
          if (v167 == 1)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v166, v52);
            v53 = v165;
            v165 = 0;
            if (v53)
            {
              if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v53, v52);
              }
            }
          }

          v54 = v164;
          v164 = 0;
          if (v54)
          {
            IPC::Decoder::~Decoder(v54);
            bmalloc::api::tzoneFree(v122, v123);
          }
        }

        if ((v163 & 1) != 0 && v162 == 1)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v161, v52);
          v56 = v160;
          v160 = 0;
          if (v56)
          {
            if (atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v56, v55);
            }
          }
        }
      }

      else
      {
        LOBYTE(v135) = 14;
        v155 = 1;
        v156 = 1;
      }

      v45 = v170;
      v170 = 0;
      if (!v45)
      {
        goto LABEL_72;
      }
    }

    v38 = v45;
    goto LABEL_56;
  }

  IPC::Decoder::~Decoder(v45);
  bmalloc::api::tzoneFree(v46, v47);
  IPC::Connection::waitForSyncReply(*(v11 + 8), v18, 0xFBCu, &v160, v14);
  v48 = LOBYTE(v161[0]);
  if (!LOBYTE(v161[0]))
  {
    v45 = v160;
    goto LABEL_53;
  }

  if (LOBYTE(v161[0]) == 255)
  {
    v124 = IPC::Connection::popPendingSyncRequestID(*(v11 + 8));
    mpark::throw_bad_variant_access(v124);
  }

  v34 = v160;
  v49 = IPC::Connection::popPendingSyncRequestID(*(v11 + 8));
  if (v48 != 1)
  {
    goto LABEL_171;
  }

LABEL_51:
  LOBYTE(v135) = v34;
  v155 = 1;
  v156 = 1;
LABEL_72:
  if (v156 != 1)
  {
    if ((v159 & 1) == 0)
    {
      goto LABEL_179;
    }

    if (v158 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2604D8);
    }

    *v157 = 3197;
    v63 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v65 = *(v11 + 72);
    v64 = *(v11 + 80);
    if (v63 + 16 >= v65)
    {
      v63 = 0;
    }

    v66 = v63 + 16;
    if (v65 <= v66)
    {
      v66 = 0;
    }

    *(v11 + 88) = v66;
    if (*(v64 + 8) <= 0xFFuLL)
    {
      goto LABEL_179;
    }

    atomic_exchange((*(v64 + 16) + 128), v66);
    *(v11 + 124) = 0;
    v67 = *(v11 + 8);
    IPC::Connection::createSyncMessageEncoder(0xFBC, v12, &v160);
    v68 = v160;
    IPC::ArgumentCoder<WebKit::WebGPU::RequestAdapterOptions,void>::encode(v160, &v133);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v68, v10);
    v49 = IPC::Connection::sendSyncMessage(v67, v161[0], &v160, 0, &v170, v14);
    if (v171)
    {
      if (v171 == 1)
      {
        LOBYTE(v164) = v170;
        v168 = 1;
LABEL_107:
        v77 = v160;
        v160 = 0;
        if (!v77)
        {
          goto LABEL_128;
        }

        IPC::Encoder::~Encoder(v77, v69);
        goto LABEL_109;
      }

LABEL_171:
      mpark::throw_bad_variant_access(v49);
    }

    v70 = v170;
    v169 = v170;
    v170 = 0;
    if (*(v169 + 25) == 3194)
    {
      LOBYTE(v164) = 11;
      v168 = 1;
    }

    else
    {
      LOBYTE(v135) = 0;
      v154 = 0;
      IPC::Decoder::operator>><std::tuple<std::optional<WebKit::RemoteGPURequestAdapterResponse>>>(v70, &v135);
      if (v154 == 1)
      {
        IPC::ConnectionSendSyncResult<Messages::RemoteGPU::RequestAdapter>::ConnectionSendSyncResult(&v164, &v169, &v135);
        if ((v154 & 1) != 0 && v153 == 1)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v136, v69);
          v73 = v135;
          v135 = 0;
          if (v73)
          {
            if (atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v73, v69);
            }
          }
        }
      }

      else
      {
        LOBYTE(v164) = 14;
        v168 = 1;
      }

      v70 = v169;
      if (!v169)
      {
        goto LABEL_104;
      }
    }

    IPC::Decoder::~Decoder(v70);
    bmalloc::api::tzoneFree(v71, v72);
LABEL_104:
    if (!v171)
    {
      v76 = v170;
      v170 = 0;
      if (v76)
      {
        IPC::Decoder::~Decoder(v76);
        bmalloc::api::tzoneFree(v78, v79);
      }
    }

    goto LABEL_107;
  }

  mpark::detail::move_assignment<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::RemoteGPU::RequestAdapter>::ReplyData,IPC::Error>,(mpark::detail::Trait)1>::move_assignment(&v164, &v135);
  if (v156 == 1 && !v155)
  {
    if (v154 == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v137, v57);
      v59 = v136;
      v136 = 0;
      if (v59)
      {
        if (atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v59, v58);
        }
      }
    }

    v60 = v135;
    v135 = 0;
    if (v60)
    {
      IPC::Decoder::~Decoder(v60);
LABEL_109:
      bmalloc::api::tzoneFree(v61, v62);
    }
  }

LABEL_128:
  if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    IPC::StreamClientConnection::operator delete(v11);
  }

  if (!v168)
  {
    std::__optional_copy_assign_base<WebKit::RemoteGPURequestAdapterResponse,false>::__optional_copy_assign_base[abi:sn200100](&v135, &v165);
    if ((v153 & 1) == 0)
    {
      v160 = 0;
      v117 = *a3;
      *a3 = 0;
      (*(*v117 + 16))(v117, &v160);
      (*(*v117 + 8))(v117);
      result = v160;
      v160 = 0;
      if (result)
      {
        if (*(result + 4) == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
          --*(result + 4);
        }
      }

      goto LABEL_148;
    }

    v132 = v10;
    v97 = WTF::fastMalloc(0x18);
    *v97 = 1;
    *(v97 + 8) = 0;
    *(v97 + 16) = 0;
    v98 = v136;
    v136 = 0;
    *(v97 + 8) = v98;
    LODWORD(v98) = v137;
    v137 = 0;
    *(v97 + 16) = v98;
    LODWORD(v98) = v138;
    v138 = 0;
    *(v97 + 20) = v98;
    if (v153)
    {
      v99 = v97;
      v100 = v143;
      v101 = v144;
      v102 = v146;
      v103 = v147;
      v130 = v149;
      v131 = v148;
      v128 = v151;
      v129 = v150;
      v104 = v145;
      v126 = v140;
      v127 = v139;
      v125 = v141;
      v105 = v142;
      v106 = WTF::fastMalloc(0xA8);
      *v106 = 1;
      *(v106 + 4) = v127;
      *(v106 + 20) = v126;
      *(v106 + 36) = v125;
      *(v106 + 52) = v105;
      *(v106 + 64) = v100;
      *(v106 + 72) = v101;
      *(v106 + 80) = v104;
      *(v106 + 88) = v102;
      *(v106 + 96) = v103;
      *(v106 + 104) = v131;
      *(v106 + 120) = v130;
      *(v106 + 136) = v129;
      *(v106 + 152) = v128;
      if (v153)
      {
        v108 = v106;
        v109 = v152;
        v110 = *(a2 + 3);
        v111 = *(a1 + 48);
        if (WebKit::WebGPU::RemoteAdapterProxy::s_heapRef)
        {
          NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteAdapterProxy::s_heapRef, v107);
        }

        else
        {
          NonCompact = WebKit::WebGPU::RemoteAdapterProxy::operatorNewSlow(0x58);
        }

        *(NonCompact + 8) = 0;
        *(NonCompact + 16) = 1;
        v113 = v135;
        v135 = 0;
        *(NonCompact + 24) = v113;
        ++*v99;
        *(NonCompact + 32) = v99;
        ++*v108;
        *(NonCompact + 40) = v108;
        *(NonCompact + 48) = v109;
        *NonCompact = &unk_1F1125328;
        *(NonCompact + 56) = v132;
        ++*(v111 + 8);
        *(NonCompact + 64) = v111;
        atomic_fetch_add((a1 + 28), 1u);
        *(NonCompact + 72) = a1;
        *(NonCompact + 80) = v110;
        v160 = NonCompact;
        v114 = *a3;
        *a3 = 0;
        (*(*v114 + 16))(v114, &v160);
        (*(*v114 + 8))(v114);
        v116 = v160;
        v160 = 0;
        if (v116)
        {
          if (*(v116 + 4) == 1)
          {
            (*(*v116 + 8))(v116);
          }

          else
          {
            --*(v116 + 4);
          }
        }

        if (*v108 == 1)
        {
          WTF::fastFree(v108, v115);
        }

        else
        {
          --*v108;
        }

        result = WTF::RefCounted<WebCore::WebGPU::SupportedFeatures>::deref(v99, v115);
LABEL_148:
        if (v153 == 1)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v136, v96);
          result = v135;
          v135 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v96);
            }
          }
        }

        goto LABEL_152;
      }
    }

LABEL_179:
    __break(1u);
LABEL_180:
    JUMPOUT(0x19E260478);
  }

  WebKit::RemoteGPUProxy::abandonGPUProcess(a1);
  v135 = 0;
  v95 = *a3;
  *a3 = 0;
  (*(*v95 + 16))(v95, &v135);
  (*(*v95 + 8))(v95);
  result = v135;
  v135 = 0;
  if (result)
  {
    if (*(result + 4) == 1)
    {
      result = (*(*result + 8))(result);
    }

    else
    {
      --*(result + 4);
    }
  }

LABEL_152:
  if (!v168)
  {
    if (v167 == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v166, v96);
      v119 = v165;
      v165 = 0;
      if (v119)
      {
        if (atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v119, v118);
        }
      }
    }

    result = v164;
    v164 = 0;
    if (result)
    {
      IPC::Decoder::~Decoder(result);
      return bmalloc::api::tzoneFree(v120, v121);
    }
  }

  return result;
}

void WebKit::RemoteGPUProxy::createPresentationContext(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 48);
  v7 = *a2;
  v7[4] = *(*a2 + 16) + 1;
  v8 = (*(*v6 + 64))(v6, v7);
  ++*(v8 + 16);
  if (v7[4] == 1)
  {
    (*(*v7 + 8))(v7);
  }

  else
  {
    --v7[4];
  }

  v9 = (*(**(a1 + 48) + 72))(*(a1 + 48), *a2);
  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_75;
  }

  v10 = v9;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v12 = IdentifierInternal;
  v13 = *(a1 + 80);
  atomic_fetch_add(v13, 1u);
  v14 = *(a1 + 88);
  v15 = *(v13 + 128);
  v16 = INFINITY;
  if (fabs(v15) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v16 = v15 + v17;
  }

  if (*(v13 + 64) != v14)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v13 + 72, &v62, v16);
    if (v64 != 1)
    {
      goto LABEL_40;
    }

    v32 = v63;
    if (v63 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E260AF0);
    }

    v33 = v62;
    *v62 = 3198;
    v34 = v33 + 1;
    if (v32 - 2 < (-v34 & 7 | 8uLL))
    {
      goto LABEL_40;
    }

    v35 = -v34 & 7;
    *(v34 + v35) = v14;
    v36 = 6;
    if (v35 > 6)
    {
      v36 = v35;
    }

    v37 = v36 + 10;
    v38 = (*(v13 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v39 = *(v13 + 72);
    if (v38 + 16 >= v39)
    {
      v38 = 0;
    }

    v40 = v37 + v38;
    if (v39 <= v40)
    {
      v40 = 0;
    }

    *(v13 + 88) = v40;
    v41 = *(v13 + 80);
    if (*(v41 + 8) <= 0xFFuLL)
    {
      goto LABEL_74;
    }

    v42 = atomic_exchange((*(v41 + 16) + 128), v40);
    v43 = *(v13 + 124);
    if (v42 == 0x80000000 || v43 != 0)
    {
      v45 = v43 + 1;
      *(v13 + 124) = v45;
      if (v45 >= *(v13 + 120))
      {
        if (*(v13 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v13 + 100));
        }

        *(v13 + 124) = 0;
      }
    }

    *(v13 + 64) = v14;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v13 + 72, &v62, v16);
  if (v64 != 1)
  {
LABEL_40:
    v31 = 0;
    goto LABEL_41;
  }

  v19 = v63;
  if (v63 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E260AC8);
  }

  v20 = v62;
  *v62 = 1153;
  v21 = v20 + 1;
  v22 = -v21 & 7 | 8;
  v23 = v19 - 2 - v22;
  if (v19 - 2 >= v22)
  {
    *(v21 + (-v21 & 7)) = v10;
    v24 = v21 + v22;
    v25 = -v24 & 7 | 8;
    if (v23 >= v25)
    {
      *(v24 + (-v24 & 7)) = v12;
      v26 = v19 - v23 + v25;
      if (v26 <= 0x10)
      {
        v26 = 16;
      }

      v27 = (*(v13 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v28 = *(v13 + 72);
      if (v27 + 16 >= v28)
      {
        v27 = 0;
      }

      v29 = v27 + v26;
      if (v28 <= v29)
      {
        v29 = 0;
      }

      *(v13 + 88) = v29;
      v30 = *(v13 + 80);
      if (*(v30 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v30 + 16) + 128), v29) == 0x80000000 || *(v13 + 124))
        {
          if (*(v13 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v13 + 100));
          }

          *(v13 + 124) = 0;
        }

        v31 = 1;
        goto LABEL_41;
      }

      goto LABEL_74;
    }
  }

  v61 = v14;
  if ((v64 & 1) == 0)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    JUMPOUT(0x19E260AA8);
  }

  if (v63 <= 1)
  {
    __break(0xC471u);
    goto LABEL_74;
  }

  *v62 = 3197;
  v50 = (*(v13 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v51 = *(v13 + 72);
  if (v50 + 16 >= v51)
  {
    v50 = 0;
  }

  v52 = v50 + 16;
  if (v51 <= v52)
  {
    v53 = 0;
  }

  else
  {
    v53 = v52;
  }

  *(v13 + 88) = v53;
  v54 = *(v13 + 80);
  if (*(v54 + 8) <= 0xFFuLL)
  {
    goto LABEL_74;
  }

  atomic_exchange((*(v54 + 16) + 128), v53);
  *(v13 + 124) = 0;
  v55 = *(v13 + 8);
  v56 = IPC::Encoder::operator new(0x238, v18);
  *v56 = 1153;
  *(v56 + 2) = 0;
  *(v56 + 3) = 0;
  *(v56 + 1) = v61;
  *(v56 + 68) = 0;
  *(v56 + 70) = 0;
  *(v56 + 69) = 0;
  IPC::Encoder::encodeHeader(v56);
  v65 = v56;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v56, v10);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v56, v12);
  v57 = IPC::Connection::sendMessageImpl(v55, &v65, 1, 0);
  v58 = v65;
  v65 = 0;
  if (v58)
  {
    IPC::Encoder::~Encoder(v58, v18);
    bmalloc::api::tzoneFree(v59, v60);
  }

  v31 = v57 == 0;
LABEL_41:
  if (atomic_fetch_add(v13, 0xFFFFFFFF) != 1)
  {
    if (v31)
    {
      goto LABEL_43;
    }

LABEL_49:
    v48 = 0;
    goto LABEL_50;
  }

  atomic_store(1u, v13);
  IPC::StreamClientConnection::operator delete(v13);
  if (!v31)
  {
    goto LABEL_49;
  }

LABEL_43:
  v46 = *(a1 + 48);
  if (WebKit::WebGPU::RemotePresentationContextProxy::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemotePresentationContextProxy::s_heapRef, v18);
  }

  else
  {
    NonCompact = WebKit::WebGPU::RemotePresentationContextProxy::operatorNewSlow(0);
  }

  v48 = NonCompact;
  *(NonCompact + 16) = 1;
  *NonCompact = &unk_1F1125C30;
  *(NonCompact + 8) = 0;
  *(NonCompact + 24) = v12;
  ++*(v46 + 8);
  *(NonCompact + 32) = v46;
  atomic_fetch_add((a1 + 28), 1u);
  *(NonCompact + 40) = a1;
  *(NonCompact + 48) = 0;
  *(NonCompact + 56) = 0;
  *(NonCompact + 64) = 0;
  ++*(NonCompact + 16);
  v49 = *(v8 + 48);
  *(v8 + 48) = v48;
  if (v49)
  {
    if (v49[4] == 1)
    {
      (*(*v49 + 8))(v49);
    }

    else
    {
      --v49[4];
    }
  }

LABEL_50:
  *a3 = v48;
  if (*(v8 + 16) == 1)
  {
    (*(*v8 + 8))(v8);
  }

  else
  {
    --*(v8 + 16);
  }
}

uint64_t WebKit::RemoteGPUProxy::createCompositorIntegration@<X0>(WebKit::RemoteGPUProxy *this@<X0>, void *a2@<X8>)
{
  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_66;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v5 = IdentifierInternal;
  v6 = *(this + 10);
  atomic_fetch_add(v6, 1u);
  v7 = *(this + 11);
  v8 = *(v6 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v9 = v8 + v10;
  }

  if (*(v6 + 64) != v7)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v51, v9);
    if (v53 != 1)
    {
      goto LABEL_37;
    }

    v23 = v52;
    if (v52 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E260F80);
    }

    v24 = v51;
    *v51 = 3198;
    v25 = v24 + 1;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      goto LABEL_37;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = v7;
    v27 = 6;
    if (v26 > 6)
    {
      v27 = v26;
    }

    v28 = v27 + 10;
    v29 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(v6 + 72);
    if (v29 + 16 >= v30)
    {
      v29 = 0;
    }

    v31 = v28 + v29;
    if (v30 <= v31)
    {
      v31 = 0;
    }

    *(v6 + 88) = v31;
    v32 = *(v6 + 80);
    if (*(v32 + 8) <= 0xFFuLL)
    {
      goto LABEL_65;
    }

    v33 = atomic_exchange((*(v32 + 16) + 128), v31);
    v34 = *(v6 + 124);
    if (v33 == 0x80000000 || v34 != 0)
    {
      v36 = v34 + 1;
      *(v6 + 124) = v36;
      if (v36 >= *(v6 + 120))
      {
        if (*(v6 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v6 + 100));
        }

        *(v6 + 124) = 0;
      }
    }

    *(v6 + 64) = v7;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v51, v9);
  if (v53 != 1)
  {
LABEL_37:
    v22 = 0;
    goto LABEL_38;
  }

  v12 = v52;
  if (v52 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E260F58);
  }

  v13 = v51;
  *v51 = 1152;
  v14 = v13 + 1;
  if (v12 - 2 >= (-v14 & 7 | 8uLL))
  {
    v15 = -v14 & 7;
    *(v14 + v15) = v5;
    v16 = 6;
    if (v15 > 6)
    {
      v16 = v15;
    }

    v17 = v16 + 10;
    v18 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(v6 + 72);
    if (v18 + 16 >= v19)
    {
      v18 = 0;
    }

    v20 = v17 + v18;
    if (v19 <= v20)
    {
      v20 = 0;
    }

    *(v6 + 88) = v20;
    v21 = *(v6 + 80);
    if (*(v21 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(v6 + 124))
      {
        if (*(v6 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v6 + 100));
        }

        *(v6 + 124) = 0;
      }

      v22 = 1;
      goto LABEL_38;
    }

    goto LABEL_65;
  }

  v50 = v7;
  if ((v53 & 1) == 0)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    JUMPOUT(0x19E260F38);
  }

  if (v52 <= 1)
  {
    __break(0xC471u);
    goto LABEL_65;
  }

  *v51 = 3197;
  v39 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v40 = *(v6 + 72);
  if (v39 + 16 >= v40)
  {
    v39 = 0;
  }

  v41 = v39 + 16;
  if (v40 <= v41)
  {
    v42 = 0;
  }

  else
  {
    v42 = v41;
  }

  *(v6 + 88) = v42;
  v43 = *(v6 + 80);
  if (*(v43 + 8) <= 0xFFuLL)
  {
    goto LABEL_65;
  }

  atomic_exchange((*(v43 + 16) + 128), v42);
  *(v6 + 124) = 0;
  v44 = *(v6 + 8);
  v45 = IPC::Encoder::operator new(0x238, v11);
  *v45 = 1152;
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  *(v45 + 1) = v50;
  *(v45 + 68) = 0;
  *(v45 + 70) = 0;
  *(v45 + 69) = 0;
  IPC::Encoder::encodeHeader(v45);
  v54 = v45;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v45, v5);
  v46 = IPC::Connection::sendMessageImpl(v44, &v54, 1, 0);
  v47 = v54;
  v54 = 0;
  if (v47)
  {
    IPC::Encoder::~Encoder(v47, v11);
    bmalloc::api::tzoneFree(v48, v49);
  }

  v22 = v46 == 0;
LABEL_38:
  if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    IPC::StreamClientConnection::operator delete(v6);
    if (v22)
    {
      goto LABEL_40;
    }

LABEL_44:
    result = 0;
    goto LABEL_45;
  }

  if (!v22)
  {
    goto LABEL_44;
  }

LABEL_40:
  v37 = *(this + 6);
  if (WebKit::WebGPU::RemoteCompositorIntegrationProxy::s_heapRef)
  {
    result = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteCompositorIntegrationProxy::s_heapRef, v11);
  }

  else
  {
    result = WebKit::WebGPU::RemoteCompositorIntegrationProxy::operatorNewSlow(0);
  }

  *(result + 16) = 1;
  *result = &unk_1F11257E8;
  *(result + 8) = 0;
  *(result + 24) = v5;
  ++*(v37 + 8);
  *(result + 32) = v37;
  atomic_fetch_add(this + 7, 1u);
  *(result + 40) = this;
  *(result + 48) = 0;
LABEL_45:
  *a2 = result;
  return result;
}

void WebKit::RemoteGPUProxy::isValid()
{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

{
  __break(0xC471u);
}

void WebKit::WebGPU::RemotePipelineLayoutProxy::~RemotePipelineLayoutProxy(WebKit::WebGPU::RemotePipelineLayoutProxy *this)
{
  v2 = *(*(*(*(this + 6) + 64) + 72) + 80);
  atomic_fetch_add(v2, 1u);
  v3 = *(this + 4);
  v4 = *(v2 + 128);
  v5 = INFINITY;
  if (fabs(v4) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v5 = v4 + v6;
  }

  if (*(v2 + 64) != v3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v31, v5);
    if (v33 != 1)
    {
      goto LABEL_16;
    }

    v18 = v32;
    if (v32 <= 1)
    {
LABEL_56:
      __break(0xC471u);
      JUMPOUT(0x19E261698);
    }

    v19 = v31;
    *v31 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = v3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(v2 + 72);
    v23 = *(v2 + 80);
    v25 = v21 + 10;
    if (v22 + 16 >= v24)
    {
      v22 = 0;
    }

    v26 = v25 + v22;
    if (v24 <= v26)
    {
      v26 = 0;
    }

    *(v2 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_55;
    }

    v27 = atomic_exchange((*(v23 + 16) + 128), v26);
    v28 = *(v2 + 124);
    if (v27 == 0x80000000 || v28 != 0)
    {
      v30 = v28 + 1;
      *(v2 + 124) = v30;
      if (v30 >= *(v2 + 120))
      {
        if (*(v2 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v2 + 100));
        }

        *(v2 + 124) = 0;
      }
    }

    *(v2 + 64) = v3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v31, v5);
  if (v33 != 1)
  {
    goto LABEL_16;
  }

  if (v32 <= 1)
  {
    goto LABEL_56;
  }

  *v31 = 1506;
  v9 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v11 = *(v2 + 72);
  v10 = *(v2 + 80);
  if (v9 + 16 >= v11)
  {
    v9 = 0;
  }

  v12 = v9 + 16;
  if (v11 <= v12)
  {
    v12 = 0;
  }

  *(v2 + 88) = v12;
  if (*(v10 + 8) <= 0xFFuLL)
  {
    goto LABEL_55;
  }

  if (atomic_exchange((*(v10 + 16) + 128), v12) == 0x80000000 || *(v2 + 124))
  {
    if (*(v2 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v2 + 100));
    }

    *(v2 + 124) = 0;
  }

LABEL_16:
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    v8.n128_f64[0] = IPC::StreamClientConnection::operator delete(v2);
  }

  v13 = *(this + 6);
  *(this + 6) = 0;
  if (v13)
  {
    if (v13[4] == 1)
    {
      (*(*v13 + 8))(v13, v8);
    }

    else
    {
      --v13[4];
    }
  }

  v14 = *(this + 5);
  *(this + 5) = 0;
  if (v14)
  {
    if (v14[2] == 1)
    {
      (*(*v14 + 8))(v14, v8);
    }

    else
    {
      --v14[2];
    }
  }

  *this = &unk_1F1125F98;
  v15 = *(this + 3);
  *(this + 3) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v7);
  }

  if (*(this + 4) != 1)
  {
    __break(0xC471u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v16 = *(this + 1);
  if (v16)
  {
    *(v16 + 8) = 0;
    v17 = *(this + 1);
    *(this + 1) = 0;
    if (v17)
    {
      if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v17);
        WTF::fastFree(v17, v7);
      }
    }
  }
}

{
  WebKit::WebGPU::RemotePipelineLayoutProxy::~RemotePipelineLayoutProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::WebGPU::RemotePipelineLayoutProxy::setLabelInternal(WebKit::WebGPU::RemotePipelineLayoutProxy *this, const WTF::String *a2)
{
  v3 = *(*(*(*(this + 6) + 64) + 72) + 80);
  atomic_fetch_add(v3, 1u);
  v4 = *(this + 4);
  v5 = *(v3 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v6 = v5 + v7;
  }

  if (*(v3 + 64) != v4)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v43, v6);
    if (v45 != 1)
    {
      goto LABEL_29;
    }

    v27 = v44;
    if (v44 <= 1)
    {
LABEL_54:
      __break(0xC471u);
      JUMPOUT(0x19E261A5CLL);
    }

    v28 = v43;
    *v43 = 3198;
    v29 = v28 + 2;
    if (v27 - 2 < (-v29 & 7 | 8uLL))
    {
      goto LABEL_29;
    }

    v30 = -v29 & 7;
    *&v29[v30] = v4;
    if (v30 != 7)
    {
      v30 = 6;
    }

    v31 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v33 = *(v3 + 72);
    v32 = *(v3 + 80);
    v34 = v30 + 10;
    if (v31 + 16 >= v33)
    {
      v31 = 0;
    }

    v35 = v34 + v31;
    if (v33 <= v35)
    {
      v35 = 0;
    }

    *(v3 + 88) = v35;
    if (*(v32 + 8) <= 0xFFuLL)
    {
      goto LABEL_53;
    }

    v36 = atomic_exchange((*(v32 + 16) + 128), v35);
    v37 = *(v3 + 124);
    if (v36 == 0x80000000 || v37 != 0)
    {
      v39 = v37 + 1;
      *(v3 + 124) = v39;
      if (v39 >= *(v3 + 120))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }
    }

    *(v3 + 64) = v4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v40, v6);
  if (v42 != 1)
  {
    goto LABEL_29;
  }

  v8 = v40;
  v9 = v41;
  v45 = v41;
  if (v41 <= 1)
  {
    goto LABEL_54;
  }

  *v40 = 1507;
  v43 = (v8 + 1);
  v44 = v9 - 2;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v43, a2);
  if (v43)
  {
    v11 = 16;
    if (v45 - v44 > 0x10)
    {
      v11 = v45 - v44;
    }

    v12 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v3 + 72);
    v13 = *(v3 + 80);
    if (v12 + 16 >= v14)
    {
      v12 = 0;
    }

    v15 = v12 + v11;
    if (v14 <= v15)
    {
      v15 = 0;
    }

    *(v3 + 88) = v15;
    if (*(v13 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v13 + 16) + 128), v15) == 0x80000000 || *(v3 + 124))
      {
        if (*(v3 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v3 + 100));
        }

        *(v3 + 124) = 0;
      }

      goto LABEL_29;
    }

    goto LABEL_53;
  }

  if ((v42 & 1) == 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v41 <= 1)
  {
    __break(0xC471u);
    goto LABEL_53;
  }

  *v40 = 3197;
  v16 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v3 + 72);
  if (v16 + 16 >= v17)
  {
    v16 = 0;
  }

  v18 = v16 + 16;
  if (v17 <= v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  *(v3 + 88) = v19;
  v20 = *(v3 + 80);
  if (*(v20 + 8) <= 0xFFuLL)
  {
    goto LABEL_53;
  }

  atomic_exchange((*(v20 + 16) + 128), v19);
  *(v3 + 124) = 0;
  v21 = *(v3 + 8);
  v22 = IPC::Encoder::operator new(0x238, v10);
  *v22 = 1507;
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 1) = v4;
  *(v22 + 68) = 0;
  *(v22 + 70) = 0;
  *(v22 + 69) = 0;
  IPC::Encoder::encodeHeader(v22);
  v43 = v22;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v22, a2);
  IPC::Connection::sendMessageImpl(v21, &v43, 1, 0);
  v24 = v43;
  v43 = 0;
  if (v24)
  {
    IPC::Encoder::~Encoder(v24, v23);
    bmalloc::api::tzoneFree(v25, v26);
  }

LABEL_29:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

void WebKit::WebGPU::RemotePresentationContextProxy::~RemotePresentationContextProxy(WebKit::WebGPU::RemotePresentationContextProxy *this, void *a2)
{
  for (i = 64; i != 40; i -= 8)
  {
    v4 = *(this + i);
    *(this + i) = 0;
    if (v4)
    {
      if (v4[4] == 1)
      {
        (*(*v4 + 8))(v4);
      }

      else
      {
        --v4[4];
      }
    }
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5 && atomic_fetch_add(v5 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 7);
    (*(*v5 + 24))(v5);
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    if (v6[2] == 1)
    {
      (*(*v6 + 8))(v6);
    }

    else
    {
      --v6[2];
    }
  }

  if (*(this + 4) == 1)
  {
    v7 = *(this + 1);
    if (v7)
    {
      *(v7 + 8) = 0;
      v8 = *(this + 1);
      *(this + 1) = 0;
      if (v8)
      {
        if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v8);
          WTF::fastFree(v8, a2);
        }
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::WebGPU::RemotePresentationContextProxy::~RemotePresentationContextProxy(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

BOOL WebKit::WebGPU::RemotePresentationContextProxy::configure(void *a1, uint64_t a2)
{
  v3 = WebKit::WebGPU::ConvertToBackingContext::convertToBacking(a1[4], a2, v45);
  if (v48 != 1)
  {
    return 0;
  }

  v4 = *(a1[5] + 80);
  atomic_fetch_add(v4, 1u);
  v5 = a1[3];
  v6 = *(v4 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(v3);
    v7 = v6 + v8;
  }

  if (*(v4 + 64) != v5)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, &v52, v7);
    if (v54 != 1)
    {
      goto LABEL_49;
    }

    v29 = v53;
    if (v53 <= 1)
    {
LABEL_62:
      __break(0xC471u);
      JUMPOUT(0x19E26201CLL);
    }

    v30 = v52;
    *v52 = 3198;
    v31 = v30 + 2;
    if (v29 - 2 < (-v31 & 7 | 8uLL))
    {
      goto LABEL_49;
    }

    v32 = -v31 & 7;
    *&v31[v32] = v5;
    v33 = 6;
    if (v32 > 6)
    {
      v33 = v32;
    }

    v34 = v33 + 10;
    v35 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v36 = *(v4 + 72);
    if (v35 + 16 >= v36)
    {
      v35 = 0;
    }

    v37 = v34 + v35;
    if (v36 <= v37)
    {
      v37 = 0;
    }

    *(v4 + 88) = v37;
    v38 = *(v4 + 80);
    if (*(v38 + 8) <= 0xFFuLL)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v39 = atomic_exchange((*(v38 + 16) + 128), v37);
    v40 = *(v4 + 124);
    if (v39 == 0x80000000 || v40 != 0)
    {
      v42 = v40 + 1;
      *(v4 + 124) = v42;
      if (v42 >= *(v4 + 120))
      {
        if (*(v4 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v4 + 100));
        }

        *(v4 + 124) = 0;
      }
    }

    *(v4 + 64) = v5;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, &v49, v7);
  if (v51 == 1)
  {
    v10 = v49;
    v11 = v50;
    v54 = v50;
    if (v50 <= 1)
    {
      goto LABEL_62;
    }

    *v49 = 1508;
    v52 = (v10 + 1);
    v53 = v11 - 2;
    IPC::ArgumentCoder<WebKit::WebGPU::CanvasConfiguration,void>::encode(&v52, v45);
    if (v52)
    {
      v12 = v54 - v53;
      if (v54 - v53 <= 0x10)
      {
        v12 = 16;
      }

      v13 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v14 = *(v4 + 72);
      if (v13 + 16 >= v14)
      {
        v13 = 0;
      }

      v15 = v13 + v12;
      if (v14 <= v15)
      {
        v15 = 0;
      }

      *(v4 + 88) = v15;
      v16 = *(v4 + 80);
      if (*(v16 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v16 + 16) + 128), v15) == 0x80000000 || *(v4 + 124))
        {
          if (*(v4 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v4 + 100));
          }

          *(v4 + 124) = 0;
        }

        v17 = 1;
        goto LABEL_50;
      }
    }

    else if (v51)
    {
      if (v50 <= 1)
      {
        __break(0xC471u);
      }

      else
      {
        *v49 = 3197;
        v18 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v19 = *(v4 + 72);
        if (v18 + 16 >= v19)
        {
          v18 = 0;
        }

        v20 = v18 + 16;
        if (v19 <= v20)
        {
          v21 = 0;
        }

        else
        {
          v21 = v20;
        }

        *(v4 + 88) = v21;
        v22 = *(v4 + 80);
        if (*(v22 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v22 + 16) + 128), v21);
          *(v4 + 124) = 0;
          v23 = *(v4 + 8);
          v24 = IPC::Encoder::operator new(0x238, v9);
          *v24 = 1508;
          *(v24 + 2) = 0;
          *(v24 + 3) = 0;
          *(v24 + 1) = v5;
          *(v24 + 68) = 0;
          *(v24 + 70) = 0;
          *(v24 + 69) = 0;
          IPC::Encoder::encodeHeader(v24);
          v52 = v24;
          IPC::ArgumentCoder<WebKit::WebGPU::CanvasConfiguration,void>::encode(v24, v45);
          v25 = IPC::Connection::sendMessageImpl(v23, &v52, 1, 0);
          v26 = v52;
          v52 = 0;
          if (v26)
          {
            IPC::Encoder::~Encoder(v26, v9);
            bmalloc::api::tzoneFree(v27, v28);
          }

          v17 = v25 == 0;
          goto LABEL_50;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_49:
  v17 = 0;
LABEL_50:
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    IPC::StreamClientConnection::operator delete(v4);
  }

  if (v48)
  {
    v43 = v46;
    if (v46)
    {
      v46 = 0;
      v47 = 0;
      WTF::fastFree(v43, v9);
    }
  }

  return v17;
}

void WebKit::WebGPU::RemotePresentationContextProxy::unconfigure(WebKit::WebGPU::RemotePresentationContextProxy *this)
{
  v2 = 0;
  v3 = this + 48;
  do
  {
    v4 = *&v3[v2];
    *&v3[v2] = 0;
    if (v4)
    {
      if (*(v4 + 4) == 1)
      {
        v4 = (*(*v4 + 8))(v4);
      }

      else
      {
        --*(v4 + 4);
      }
    }

    v2 += 8;
  }

  while (v2 != 24);
  v5 = *(*(this + 5) + 80);
  atomic_fetch_add(v5, 1u);
  v6 = *(this + 3);
  v7 = *(v5 + 128);
  v8 = INFINITY;
  if (fabs(v7) != INFINITY)
  {
    WTF::ApproximateTime::now(v4);
    v8 = v7 + v9;
  }

  if (*(v5 + 64) != v6)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, &v28, v8);
    if (v30 != 1)
    {
      goto LABEL_23;
    }

    v14 = v29;
    if (v29 <= 1)
    {
LABEL_47:
      __break(0xC471u);
      return;
    }

    v15 = v28;
    *v28 = 3198;
    v16 = v15 + 1;
    if (v14 - 2 < (-v16 & 7 | 8uLL))
    {
      goto LABEL_23;
    }

    v17 = -v16 & 7;
    *(v16 + v17) = v6;
    v18 = 6;
    if (v17 > 6)
    {
      v18 = v17;
    }

    v19 = v18 + 10;
    v20 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v21 = *(v5 + 72);
    if (v20 + 16 >= v21)
    {
      v20 = 0;
    }

    v22 = v19 + v20;
    if (v21 <= v22)
    {
      v22 = 0;
    }

    *(v5 + 88) = v22;
    v23 = *(v5 + 80);
    if (*(v23 + 8) <= 0xFFuLL)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v24 = atomic_exchange((*(v23 + 16) + 128), v22);
    v25 = *(v5 + 124);
    if (v24 == 0x80000000 || v25 != 0)
    {
      v27 = v25 + 1;
      *(v5 + 124) = v27;
      if (v27 >= *(v5 + 120))
      {
        if (*(v5 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v5 + 100));
        }

        *(v5 + 124) = 0;
      }
    }

    *(v5 + 64) = v6;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, &v28, v8);
  if (v30 == 1)
  {
    if (v29 <= 1)
    {
      __break(0xC471u);
    }

    else
    {
      *v28 = 1511;
      v10 = (*(v5 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v5 + 72);
      v11 = *(v5 + 80);
      if (v10 + 16 >= v12)
      {
        v10 = 0;
      }

      v13 = v10 + 16;
      if (v12 <= v13)
      {
        v13 = 0;
      }

      *(v5 + 88) = v13;
      if (*(v11 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v11 + 16) + 128), v13) == 0x80000000 || *(v5 + 124))
        {
          if (*(v5 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v5 + 100));
          }

          *(v5 + 124) = 0;
        }

        goto LABEL_23;
      }
    }

    goto LABEL_46;
  }

LABEL_23:
  if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    IPC::StreamClientConnection::operator delete(v5);
  }
}

uint64_t WebKit::WebGPU::RemotePresentationContextProxy::getCurrentTexture@<X0>(WebKit::WebGPU::RemotePresentationContextProxy *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  if (a2 > 2)
  {
    goto LABEL_2;
  }

  v7 = this + 48;
  v8 = *(this + a2 + 6);
  if (v8)
  {
    ++v8[4];
    WebKit::WebGPU::RemoteTextureProxy::send<Messages::RemoteTexture::Undestroy>(v8, &v60);
    if (v8[4] == 1)
    {
      (*(*v8 + 8))(v8);
    }

    else
    {
      --v8[4];
    }

    goto LABEL_50;
  }

  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_75;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v10 = IdentifierInternal;
  v11 = *(*(this + 5) + 80);
  atomic_fetch_add(v11, 1u);
  v12 = *(this + 3);
  v13 = *(v11 + 128);
  v14 = INFINITY;
  if (fabs(v13) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v14 = v13 + v15;
  }

  if (*(v11 + 64) != v12)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v60, v14);
    if (v62 != 1)
    {
      goto LABEL_44;
    }

    v30 = v61;
    if (v61 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2628B8);
    }

    v31 = v60;
    *v60 = 3198;
    v32 = v31 + 1;
    if (v30 - 2 < (-v32 & 7 | 8uLL))
    {
      goto LABEL_44;
    }

    v33 = -v32 & 7;
    *(v32 + v33) = v12;
    v34 = 6;
    if (v33 > 6)
    {
      v34 = v33;
    }

    v35 = v34 + 10;
    v36 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v37 = *(v11 + 72);
    if (v36 + 16 >= v37)
    {
      v36 = 0;
    }

    v38 = v35 + v36;
    if (v37 <= v38)
    {
      v38 = 0;
    }

    *(v11 + 88) = v38;
    v39 = *(v11 + 80);
    if (*(v39 + 8) <= 0xFFuLL)
    {
      goto LABEL_74;
    }

    v40 = atomic_exchange((*(v39 + 16) + 128), v38);
    v41 = *(v11 + 124);
    if (v40 == 0x80000000 || v41 != 0)
    {
      v43 = v41 + 1;
      *(v11 + 124) = v43;
      if (v43 >= *(v11 + 120))
      {
        if (*(v11 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v11 + 100));
        }

        *(v11 + 124) = 0;
      }
    }

    *(v11 + 64) = v12;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v60, v14);
  if (v62 != 1)
  {
LABEL_44:
    v29 = 0;
    goto LABEL_45;
  }

  v17 = v61;
  if (v61 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E262890);
  }

  v18 = v60;
  *v60 = 1509;
  v19 = v18 + 1;
  v20 = -v19 & 7 | 8;
  v21 = v17 - 2 - v20;
  if (v17 - 2 >= v20)
  {
    *(v19 + (-v19 & 7)) = v10;
    v22 = v19 + v20;
    v23 = -v22 & 3 | 4;
    if (v21 >= v23)
    {
      *(v22 + (-v22 & 3)) = a2;
      v24 = v17 - v21 + v23;
      if (v24 <= 0x10)
      {
        v24 = 16;
      }

      v25 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v26 = *(v11 + 72);
      if (v25 + 16 >= v26)
      {
        v25 = 0;
      }

      v27 = v25 + v24;
      if (v26 <= v27)
      {
        v27 = 0;
      }

      *(v11 + 88) = v27;
      v28 = *(v11 + 80);
      if (*(v28 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v28 + 16) + 128), v27) == 0x80000000 || *(v11 + 124))
        {
          if (*(v11 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v11 + 100));
          }

          *(v11 + 124) = 0;
        }

        v29 = 1;
        goto LABEL_45;
      }

      goto LABEL_74;
    }
  }

  v58 = v12;
  v59 = v7;
  if ((v62 & 1) == 0)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    JUMPOUT(0x19E262870);
  }

  if (v61 <= 1)
  {
    __break(0xC471u);
    goto LABEL_74;
  }

  *v60 = 3197;
  v47 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v48 = *(v11 + 72);
  if (v47 + 16 >= v48)
  {
    v47 = 0;
  }

  v49 = v47 + 16;
  if (v48 <= v49)
  {
    v50 = 0;
  }

  else
  {
    v50 = v49;
  }

  *(v11 + 88) = v50;
  v51 = *(v11 + 80);
  if (*(v51 + 8) <= 0xFFuLL)
  {
    goto LABEL_74;
  }

  atomic_exchange((*(v51 + 16) + 128), v50);
  *(v11 + 124) = 0;
  v52 = *(v11 + 8);
  v53 = IPC::Encoder::operator new(0x238, v16);
  *v53 = 1509;
  *(v53 + 2) = 0;
  *(v53 + 3) = 0;
  *(v53 + 1) = v58;
  *(v53 + 68) = 0;
  *(v53 + 70) = 0;
  *(v53 + 69) = 0;
  IPC::Encoder::encodeHeader(v53);
  v63 = v53;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v53, v10);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v53, a2);
  v54 = IPC::Connection::sendMessageImpl(v52, &v63, 1, 0);
  v55 = v63;
  v63 = 0;
  if (v55)
  {
    IPC::Encoder::~Encoder(v55, v16);
    bmalloc::api::tzoneFree(v56, v57);
  }

  v29 = v54 == 0;
  v7 = v59;
LABEL_45:
  if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    IPC::StreamClientConnection::operator delete(v11);
    if (v29)
    {
      goto LABEL_47;
    }
  }

  else if (v29)
  {
LABEL_47:
    v44 = *(this + 5);
    atomic_fetch_add((v44 + 28), 1u);
    v45 = *(this + 4);
    result = WebKit::WebGPU::RemoteTextureProxy::operator new(0x78, v16);
    *(result + 16) = 1;
    *(result + 24) = 0;
    *(result + 32) = v10;
    *result = &unk_1F11268C0;
    *(result + 8) = 0;
    ++*(v45 + 8);
    *(result + 40) = v45;
    *(result + 48) = v44;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 104) = 0;
    *(result + 112) = 1;
    v46 = *&v7[8 * a2];
    *&v7[8 * a2] = result;
    if (!v46)
    {
      goto LABEL_51;
    }

    if (v46[4] == 1)
    {
      (*(*v46 + 8))(v46);
    }

    else
    {
      --v46[4];
    }

LABEL_50:
    result = *&v7[8 * a2];
    if (!result)
    {
      goto LABEL_52;
    }

LABEL_51:
    ++*(result + 16);
    goto LABEL_52;
  }

LABEL_2:
  result = 0;
LABEL_52:
  *a3 = result;
  return result;
}

unsigned int *WebKit::RemoteGPUProxy::deref(unsigned int *this)
{
  if (atomic_fetch_add(this + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 7);
    return (*(*this + 24))();
  }

  return this;
}

uint64_t non-virtual thunk toWebKit::RemoteGPUProxy::deref(uint64_t this)
{
  if (atomic_fetch_add((this + 20), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (this + 20));
    return (*(*(this - 8) + 24))();
  }

  return this;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::RemoteCompositorIntegration::RecreateRenderBuffers>::ReplyData,IPC::Error>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, void *a2)
{
  if (!*(a1 + 24))
  {
    WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 8, a2);
    std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1, 0);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t WebKit::WebGPU::RemoteBindGroupLayoutProxy::operator new(WebKit::WebGPU::RemoteBindGroupLayoutProxy *this, void *a2)
{
  if (this == 56 && WebKit::WebGPU::RemoteBindGroupLayoutProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteBindGroupLayoutProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebGPU::RemoteBindGroupLayoutProxy::operatorNewSlow(this);
  }
}

uint64_t WebKit::WebGPU::RemoteTextureProxy::operator new(WebKit::WebGPU::RemoteTextureProxy *this, void *a2)
{
  if (this == 120 && WebKit::WebGPU::RemoteTextureProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteTextureProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebGPU::RemoteTextureProxy::operatorNewSlow(this);
  }
}

uint64_t WebKit::WebGPU::RemoteComputePipelineProxy::operator new(WebKit::WebGPU::RemoteComputePipelineProxy *this, void *a2)
{
  if (WebKit::WebGPU::RemoteComputePipelineProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteComputePipelineProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebGPU::RemoteComputePipelineProxy::operatorNewSlow(0x38);
  }
}

uint64_t WebKit::WebGPU::RemoteRenderPipelineProxy::operator new(WebKit::WebGPU::RemoteRenderPipelineProxy *this, void *a2)
{
  if (WebKit::WebGPU::RemoteRenderPipelineProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteRenderPipelineProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::WebGPU::RemoteRenderPipelineProxy::operatorNewSlow(0x38);
  }
}

uint64_t std::optional<IPC::ConnectionSendSyncResult<Messages::RemoteCompositorIntegration::RecreateRenderBuffers>>::optional[abi:sn200100]<IPC::ConnectionSendSyncResult<Messages::RemoteCompositorIntegration::RecreateRenderBuffers>,0>(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  v3 = *(a2 + 24);
  if (v3 != 255)
  {
    if (*(a2 + 24))
    {
      *a1 = *a2;
    }

    else
    {
      v5 = *a2;
      *a2 = 0;
      *a1 = v5;
      *(a1 + 16) = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 8, a2 + 2);
      LOBYTE(v3) = *(a2 + 24);
    }

    *(a1 + 24) = v3;
  }

  *(a1 + 32) = 1;
  return a1;
}

void IPC::Decoder::operator>><std::tuple<WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(IPC::Decoder *this, uint64_t a2)
{
  v6 = *(this + 1);
  v7 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *this;
  v9 = v7 - *this;
  v10 = v6 >= v9;
  v11 = v6 - v9;
  if (!v10 || v11 <= 7)
  {
    *this = 0;
    *(this + 1) = 0;
    v34 = *(this + 3);
    if (v34)
    {
      if (v6)
      {
        (*(*v34 + 16))(v34);
        v6 = *(this + 1);
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_68;
  }

  *(this + 2) = v7 + 1;
  if (!v7)
  {
LABEL_68:
    *this = 0;
    *(this + 1) = 0;
    v35 = *(this + 3);
    if (v35 && v6)
    {
      (*(*v35 + 16))(v35);
    }

LABEL_53:
    v26 = *this;
    v27 = *(this + 1);
    *this = 0;
    *(this + 1) = 0;
    v28 = *(this + 3);
    if (v28 && v27)
    {
      (*(*v28 + 16))(v28, v26);
    }

    LOBYTE(v37[0]) = 0;
    v38 = 0;
    v17 = *this;
    v29 = *(this + 1);
    *this = 0;
    *(this + 1) = 0;
    v30 = *(this + 3);
    if (v30 && v29)
    {
      (*(*v30 + 16))(v30, v17);
    }

    v15 = 0;
    v18 = 0;
    goto LABEL_22;
  }

  v2 = *v7;
  v37[0] = 0;
  v37[1] = 0;
  if (v2 >= 0x40000)
  {
    do
    {
      IPC::Decoder::takeLastAttachment(this, v41);
      v23 = v42;
      if (v42 == 1)
      {
        if (HIDWORD(v37[1]) == LODWORD(v37[1]))
        {
          WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::MachSendRight>(v37, v41);
        }

        else
        {
          WTF::MachSendRight::MachSendRight();
          ++HIDWORD(v37[1]);
        }
      }

      if (v42 == 1)
      {
        WTF::MachSendRight::~MachSendRight(v41);
      }

      if ((v23 & 1) == 0)
      {
        goto LABEL_52;
      }

      v2 = (v2 - 1);
    }

    while (v2);
    v24 = HIDWORD(v37[1]);
    v2 = v37[0];
    if (LODWORD(v37[1]) > HIDWORD(v37[1]))
    {
      v25 = v37[0];
      if (HIDWORD(v37[1]))
      {
        if (HIDWORD(v37[1]) >> 30)
        {
          __break(0xC471u);
          return;
        }

        v25 = WTF::fastMalloc((4 * HIDWORD(v37[1])));
        LODWORD(v37[1]) = v24;
        v37[0] = v25;
        if (v25 != v2)
        {
          WTF::VectorMover<false,WTF::MachSendRight>::move(v2, (v2 + 4 * v24), v25);
          v25 = v37[0];
        }
      }

      if (v2)
      {
        if (v25 == v2)
        {
          v37[0] = 0;
          LODWORD(v37[1]) = 0;
        }

        WTF::fastFree(v2, v8);
        v2 = v37[0];
      }

      else
      {
        v2 = v25;
      }
    }

    v36 = v37[1];
    v37[0] = 0;
    v37[1] = 0;
    goto LABEL_21;
  }

  if (v2)
  {
    LODWORD(v37[1]) = v2;
    v37[0] = WTF::fastMalloc((4 * v2));
    while (1)
    {
      IPC::Decoder::takeLastAttachment(this, v41);
      v14 = v42;
      if (v42 == 1)
      {
        if (HIDWORD(v37[1]) == LODWORD(v37[1]))
        {
          WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::MachSendRight>(v37, v41);
        }

        else
        {
          WTF::MachSendRight::MachSendRight();
          ++HIDWORD(v37[1]);
        }
      }

      if (v42 == 1)
      {
        WTF::MachSendRight::~MachSendRight(v41);
      }

      if ((v14 & 1) == 0)
      {
        break;
      }

      v2 = (v2 - 1);
      if (!v2)
      {
        v2 = v37[0];
        *&v13 = v37[1];
        goto LABEL_20;
      }
    }

LABEL_52:
    WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v37, v8);
    goto LABEL_53;
  }

  v13 = 0uLL;
LABEL_20:
  v36 = v13;
  *&v13 = 0;
  *v37 = v13;
LABEL_21:
  v15 = 1;
  v40 = 1;
  WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v37, v8);
  v39[0] = 0;
  v39[1] = 0;
  v37[0] = v2;
  v37[1] = v36;
  v38 = 1;
  WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v39, v16);
  LODWORD(v2) = v36;
  v3 = HIDWORD(v36);
  v18 = 1;
LABEL_22:
  if (*(a2 + 16) != v18)
  {
    if (!*(a2 + 16))
    {
      v22 = v37[0];
      v37[0] = 0;
      v37[1] = 0;
      *a2 = v22;
      *(a2 + 8) = v2;
      *(a2 + 12) = v3;
      *(a2 + 16) = 1;
      if (!v15)
      {
        return;
      }

LABEL_32:
      WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v37, v17);
      return;
    }

    WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a2, v17);
    *(a2 + 16) = 0;
LABEL_31:
    if (!v15)
    {
      return;
    }

    goto LABEL_32;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_31;
  }

  v19 = *(a2 + 12);
  if (v19)
  {
    v31 = *a2;
    v32 = 4 * v19;
    do
    {
      WTF::MachSendRight::~MachSendRight(v31);
      v31 = (v33 + 4);
      v32 -= 4;
    }

    while (v32);
  }

  v20 = *a2;
  if (*a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    WTF::fastFree(v20, v17);
  }

  v21 = v37[0];
  v37[0] = 0;
  v37[1] = 0;
  *a2 = v21;
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  if (v15)
  {
    goto LABEL_32;
  }
}

uint64_t IPC::ConnectionSendSyncResult<Messages::RemoteCompositorIntegration::RecreateRenderBuffers>::ConnectionSendSyncResult(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = 0;
  v8[0] = 0;
  *a1 = v4;
  *(a1 + 8) = v5;
  v8[1] = 0;
  v6 = a3[1];
  a3[1] = 0;
  *(a1 + 16) = v6;
  *(a1 + 24) = 0;
  WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v8, a2);
  return a1;
}

void *IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(void *result, uint64_t a2)
{
  v3 = result[1];
  if ((*(a2 + 16) & 1) == 0)
  {
    if (!v3)
    {
      *result = 0;
      result[1] = 0;
      return result;
    }

    **result = 0;
    v7 = result[1];
    if (v7)
    {
      ++*result;
      result[1] = v7 - 1;
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3)
  {
    **result = 1;
    v4 = result[1];
    if (v4)
    {
      ++*result;
      result[1] = v4 - 1;
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_13:
  *result = 0;
  result[1] = 0;
LABEL_5:
  if (*(a2 + 16))
  {
    v5 = *(a2 + 12);
    v6 = *a2;

    return IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(result, v6, v5);
  }

  else
  {
    v8 = std::__throw_bad_optional_access[abi:sn200100]();
    return IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(v8);
  }
}

void *IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 16))
    {
      return IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *a2, *(a2 + 12));
    }

    else
    {
      v5 = std::__throw_bad_optional_access[abi:sn200100]();
      return WTF::Detail::CallableWrapper<WebKit::WebGPU::RemoteDeviceProxy::importExternalTexture(WebCore::WebGPU::ExternalTextureDescriptor const&)::$_0,void,IPC::Semaphore &>::~CallableWrapper(v5);
    }
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebGPU::RemoteDeviceProxy::importExternalTexture(WebCore::WebGPU::ExternalTextureDescriptor const&)::$_0,void,IPC::Semaphore &>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1125FC0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebGPU::RemoteDeviceProxy::importExternalTexture(WebCore::WebGPU::ExternalTextureDescriptor const&)::$_0,void,IPC::Semaphore &>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1125FC0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebGPU::RemoteDeviceProxy::importExternalTexture(WebCore::WebGPU::ExternalTextureDescriptor const&)::$_0,void,IPC::Semaphore &>::call(WTF::ApproximateTime *a1, IPC::Semaphore *a2)
{
  v3 = *(a1 + 1);
  v4 = *(*(*(v3 + 64) + 72) + 80);
  atomic_fetch_add(v4, 1u);
  v5 = *(v3 + 48);
  v6 = *(v4 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(v4 + 64) != v5)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, &v33, v7);
    if (v35 != 1)
    {
      goto LABEL_13;
    }

    v20 = v34;
    if (v34 <= 1)
    {
LABEL_37:
      __break(0xC471u);
      return;
    }

    v21 = v33;
    *v33 = 3198;
    v22 = v21 + 1;
    if (v20 - 2 < (-v22 & 7 | 8uLL))
    {
      goto LABEL_13;
    }

    v23 = -v22 & 7;
    *(v22 + v23) = v5;
    if (v23 != 7)
    {
      v23 = 6;
    }

    v24 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v26 = *(v4 + 72);
    v25 = *(v4 + 80);
    v27 = v23 + 10;
    if (v24 + 16 >= v26)
    {
      v24 = 0;
    }

    v28 = v27 + v24;
    if (v26 <= v28)
    {
      v28 = 0;
    }

    *(v4 + 88) = v28;
    if (*(v25 + 8) <= 0xFFuLL)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v29 = atomic_exchange((*(v25 + 16) + 128), v28);
    v30 = *(v4 + 124);
    if (v29 == 0x80000000 || v30 != 0)
    {
      v32 = v30 + 1;
      *(v4 + 124) = v32;
      if (v32 >= *(v4 + 120))
      {
        if (*(v4 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v4 + 100));
        }

        *(v4 + 124) = 0;
      }
    }

    *(v4 + 64) = v5;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, &v33, v7);
  if (v35 == 1)
  {
    if (v34 <= 1)
    {
      __break(0xC471u);
    }

    else
    {
      *v33 = 3197;
      v10 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v4 + 72);
      v11 = *(v4 + 80);
      if (v10 + 16 >= v12)
      {
        v10 = 0;
      }

      v13 = v10 + 16;
      if (v12 <= v13)
      {
        v13 = 0;
      }

      *(v4 + 88) = v13;
      if (*(v11 + 8) > 0xFFuLL)
      {
        atomic_exchange((*(v11 + 16) + 128), v13);
        *(v4 + 124) = 0;
        v14 = *(v4 + 8);
        v15 = IPC::Encoder::operator new(0x238, v9);
        *v15 = 1045;
        *(v15 + 2) = 0;
        *(v15 + 3) = 0;
        *(v15 + 1) = v5;
        *(v15 + 68) = 0;
        *(v15 + 70) = 0;
        *(v15 + 69) = 0;
        IPC::Encoder::encodeHeader(v15);
        v36 = v15;
        IPC::ArgumentCoder<IPC::Semaphore,void>::encode(v15, a2);
        IPC::Connection::sendMessageImpl(v14, &v36, 1, 0);
        v17 = v36;
        v36 = 0;
        if (v17)
        {
          IPC::Encoder::~Encoder(v17, v16);
          bmalloc::api::tzoneFree(v18, v19);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_36;
  }

LABEL_13:
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    IPC::StreamClientConnection::operator delete(v4);
  }
}

void *WTF::Detail::CallableWrapper<WebKit::WebGPU::RemoteDeviceProxy::importExternalTexture(WebCore::WebGPU::ExternalTextureDescriptor const&)::$_1,void,WebCore::SharedMemoryHandle &&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1125FE8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    if (v2[4] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[4];
    }
  }

  return a1;
}
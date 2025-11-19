uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindBufferRange,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v54, v7);
    if (v56 != 1)
    {
      return 16;
    }

    v34 = v55;
    if (v55 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E22AE84);
    }

    v35 = v54;
    *v54 = 3198;
    v36 = v35 + 1;
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      return 18;
    }

    v37 = -v36 & 7;
    *(v36 + v37) = a3;
    if (v37 != 7)
    {
      v37 = 6;
    }

    v38 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v40 = *(a1 + 72);
    v39 = *(a1 + 80);
    v41 = v37 + 10;
    if (v38 + 16 >= v40)
    {
      v38 = 0;
    }

    v42 = v41 + v38;
    if (v40 <= v42)
    {
      v42 = 0;
    }

    *(a1 + 88) = v42;
    if (*(v39 + 8) <= 0xFFuLL)
    {
      goto LABEL_51;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v39 + 16) + 128), v42) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v54, v7);
  if (v56 != 1)
  {
    return 16;
  }

  v10 = v55;
  if (v55 <= 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  v11 = v54;
  *v54 = 1165;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    v17 = v14 >= v16;
    v18 = v14 - v16;
    if (v17)
    {
      *(v15 + (-v15 & 3)) = *(a2 + 4);
      v19 = v15 + v16;
      v20 = -v19 & 3 | 4;
      v21 = v18 - v20;
      if (v18 >= v20)
      {
        *(v19 + (-v19 & 3)) = *(a2 + 8);
        v22 = v19 + v20;
        v23 = -(v19 + v20);
        v24 = v23 & 7 | 8;
        v25 = v21 - v24;
        if (v21 >= v24)
        {
          *(v22 + (v23 & 7)) = *(a2 + 16);
          v26 = v22 + v24;
          v27 = -v26 & 7 | 8;
          if (v25 >= v27)
          {
            *(v26 + (-v26 & 7)) = *(a2 + 24);
            v28 = v10 - v25 + v27;
            if (v28 <= 0x10)
            {
              v28 = 16;
            }

            v29 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v30 = *(a1 + 72);
            if (v29 + 16 >= v30)
            {
              v29 = 0;
            }

            v31 = v29 + v28;
            if (v30 <= v31)
            {
              v31 = 0;
            }

            *(a1 + 88) = v31;
            v32 = *(a1 + 80);
            if (*(v32 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v32 + 16) + 128), v31) != 0x80000000 && !*(a1 + 124))
              {
                return 0;
              }

              if (*(a1 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(a1 + 100));
              }

              v33 = 0;
              *(a1 + 124) = 0;
              return v33;
            }

            goto LABEL_51;
          }
        }
      }
    }
  }

  if ((v56 & 1) == 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    JUMPOUT(0x19E22AE64);
  }

  if (v55 <= 1)
  {
    __break(0xC471u);
    goto LABEL_51;
  }

  *v54 = 3197;
  v44 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v46 = *(a1 + 72);
  v45 = *(a1 + 80);
  if (v44 + 16 >= v46)
  {
    v44 = 0;
  }

  v47 = v44 + 16;
  if (v46 <= v47)
  {
    v47 = 0;
  }

  *(a1 + 88) = v47;
  if (*(v45 + 8) <= 0xFFuLL)
  {
    goto LABEL_51;
  }

  atomic_exchange((*(v45 + 16) + 128), v47);
  *(a1 + 124) = 0;
  v48 = *(a1 + 8);
  v49 = IPC::Encoder::operator new(0x238, v9);
  *v49 = 1165;
  *(v49 + 2) = 0;
  *(v49 + 3) = 0;
  *(v49 + 1) = a3;
  *(v49 + 68) = 0;
  *(v49 + 70) = 0;
  *(v49 + 69) = 0;
  IPC::Encoder::encodeHeader(v49);
  v57 = v49;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v49, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v49, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v49, *(a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, *(a2 + 16));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, *(a2 + 24));
  v33 = IPC::Connection::sendMessageImpl(v48, &v57, 1, 0);
  v51 = v57;
  v57 = 0;
  if (v51)
  {
    IPC::Encoder::~Encoder(v51, v50);
    bmalloc::api::tzoneFree(v52, v53);
  }

  return v33;
}

IPC::Decoder *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetUniformIndices,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(a1 + 64) != a3)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v77, v9);
    if (v78 != 1)
    {
      goto LABEL_95;
    }

    v67 = *(&v77 + 1);
    if (*(&v77 + 1) <= 1uLL)
    {
      __break(0xC471u);
      goto LABEL_107;
    }

    v68 = v77;
    *v77 = 3198;
    v69 = v68 + 2;
    if (v67 - 2 < (-v69 & 7 | 8uLL))
    {
      v76 = 18;
      goto LABEL_96;
    }

    v70 = -v69 & 7;
    *(v69 + v70) = a3;
    if (v70 != 7)
    {
      v70 = 6;
    }

    v71 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v73 = *(a1 + 72);
    v72 = *(a1 + 80);
    v74 = v70 + 10;
    if (v71 + 16 >= v73)
    {
      v71 = 0;
    }

    v75 = v74 + v71;
    if (v73 <= v75)
    {
      v75 = 0;
    }

    *(a1 + 88) = v75;
    if (*(v72 + 8) <= 0xFFuLL)
    {
      goto LABEL_107;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v72 + 16) + 128), v75) == 0x80000000);
    *(a1 + 64) = a3;
  }

  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v81, v9);
  if ((v83 & 1) == 0)
  {
LABEL_95:
    v76 = 16;
LABEL_96:
    *a4 = v76;
    v47 = 1;
LABEL_97:
    *(a4 + 24) = v47;
    return result;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_108;
  }

  v12 = v81;
  v13 = v82;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if ((IPC::Connection::pushPendingSyncRequestID(*(a1 + 8), IdentifierInternal) & 1) == 0)
  {
    LOBYTE(v87) = 12;
    v90 = 1;
    goto LABEL_34;
  }

  v89 = v13;
  if (v13 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E22B5C8);
  }

  *v12 = 4075;
  v15 = (v12 + 1);
  v87 = v15;
  v88 = (v13 - 2);
  v16 = -v15 & 7 | 8;
  if (v13 - 2 < v16)
  {
    goto LABEL_99;
  }

  *(v15 + (-v15 & 7)) = IdentifierInternal;
  v17 = (v88 - v16);
  if (v88 < v16)
  {
    goto LABEL_107;
  }

  v18 = (v87 + v16);
  v87 = v18;
  v88 = v17;
  v19 = -v18 & 3 | 4;
  if (v17 < v19)
  {
LABEL_99:
    v87 = 0;
    v88 = 0;
  }

  else
  {
    *(v18 + (-v18 & 3)) = *a2;
    if (v88 < v19)
    {
      goto LABEL_107;
    }

    v87 = (v87 + v19);
    v88 = (v88 - v19);
  }

  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(&v87, *(a2 + 8));
  if (!v87)
  {
    result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
    LOBYTE(v77) = 0;
    v80 = 0;
    goto LABEL_56;
  }

  v21 = v89 - v88;
  if (v89 - v88 <= 0x10)
  {
    v21 = 16;
  }

  v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v23 = *(a1 + 72);
  if (v22 + 16 >= v23)
  {
    v22 = 0;
  }

  v24 = v22 + v21;
  if (v23 <= v24)
  {
    v24 = 0;
  }

  *(a1 + 88) = v24;
  v25 = *(a1 + 80);
  if (*(v25 + 8) <= 0xFFuLL)
  {
    goto LABEL_107;
  }

  if (atomic_exchange((*(v25 + 16) + 128), v24) == 0x80000000 || *(a1 + 124))
  {
    if (*(a1 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(a1 + 100));
    }

    *(a1 + 124) = 0;
  }

  while (1)
  {
    v26 = *(a1 + 80);
    if (*(v26 + 8) <= 0xFFuLL)
    {
      goto LABEL_107;
    }

    v27 = atomic_exchange(*(v26 + 16), 0x80000000uLL);
    v28 = *(a1 + 80);
    if (*(v28 + 8) <= 0xFFuLL)
    {
      goto LABEL_107;
    }

    if (!(v27 | atomic_load_explicit((*(v28 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
    {
      break;
    }

    if (*(a1 + 112) == 1)
    {
      v29 = IPC::Semaphore::waitFor((a1 + 104), v9);
      if (v29)
      {
        WTF::ApproximateTime::now(v29);
        if (v30 < v9)
        {
          continue;
        }
      }
    }

    result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
    v31 = 17;
    goto LABEL_46;
  }

  v34 = *(a1 + 80);
  if (*(v34 + 8) <= 0xFFuLL)
  {
    goto LABEL_107;
  }

  atomic_store(0, *(v34 + 16));
  *(a1 + 88) = 0;
  v35 = *(a1 + 80);
  v36 = *(v35 + 8);
  if (v36 <= 0xFF)
  {
    goto LABEL_107;
  }

  v37 = *(a1 + 72);
  v38 = *(v35 + 16);
  v39 = v36 - 256;
  if (v37)
  {
    v65 = v37 - 1;
    v66 = v39 >= v65;
    v39 = v65;
    if (!v66)
    {
      goto LABEL_107;
    }
  }

  v40 = IPC::Decoder::operator new(0x58, v20);
  if (*(IPC::Decoder::Decoder(v40, v38 + 256, v39, *(a1 + 64)) + 25) != 3197)
  {
LABEL_49:
    IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
    if (*(v40 + 25) == 3194)
    {
      v44 = 11;
LABEL_54:
      LOBYTE(v77) = v44;
      v79 = 1;
      v80 = 1;
      result = v40;
      goto LABEL_55;
    }

    LOBYTE(v84) = 0;
    v86 = 0;
    IPC::Decoder::operator>><std::tuple<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v40, &v84);
    if (v86 != 1)
    {
      v44 = 14;
      goto LABEL_54;
    }

    v87 = v40;
    v88 = v84;
    v89 = v85;
    v90 = 0;
LABEL_34:
    result = std::optional<IPC::ConnectionSendSyncResult<Messages::RemoteGraphicsContextGL::GetUniformIndices>>::optional[abi:sn200100]<IPC::ConnectionSendSyncResult<Messages::RemoteGraphicsContextGL::GetUniformIndices>,0>(&v77, &v87);
    if (v90)
    {
      goto LABEL_56;
    }

    v33 = v88;
    if (v88)
    {
      v88 = 0;
      LODWORD(v89) = 0;
      WTF::fastFree(v33, v32);
    }

    result = v87;
    v87 = 0;
    if (!result)
    {
      goto LABEL_56;
    }

LABEL_55:
    IPC::Decoder::~Decoder(result);
    result = bmalloc::api::tzoneFree(v45, v46);
    goto LABEL_56;
  }

  IPC::Decoder::~Decoder(v40);
  bmalloc::api::tzoneFree(v41, v42);
  IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFEBu, &v84, v9);
  v43 = v85;
  if (!v85)
  {
    v40 = v84;
    goto LABEL_49;
  }

  if (v85 == 255)
  {
    result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
    goto LABEL_101;
  }

  v31 = v84;
  result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if (v43 != 1)
  {
    goto LABEL_101;
  }

LABEL_46:
  LOBYTE(v77) = v31;
  v79 = 1;
  v80 = 1;
LABEL_56:
  if (v80 == 1)
  {
    *a4 = 0;
    *(a4 + 24) = -1;
    v47 = v79;
    if (v79)
    {
      if (v79 == 255)
      {
        return result;
      }

      *a4 = v77;
    }

    else
    {
      *a4 = v77;
      *(a4 + 16) = v78;
    }

    goto LABEL_97;
  }

  if ((v83 & 1) == 0)
  {
    goto LABEL_107;
  }

  if (v82 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E22B5E8);
  }

  *v81 = 3197;
  v48 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v50 = *(a1 + 72);
  v49 = *(a1 + 80);
  if (v48 + 16 >= v50)
  {
    v48 = 0;
  }

  v51 = v48 + 16;
  if (v50 <= v51)
  {
    v51 = 0;
  }

  *(a1 + 88) = v51;
  if (*(v49 + 8) <= 0xFFuLL)
  {
LABEL_107:
    __break(1u);
LABEL_108:
    JUMPOUT(0x19E22B5A8);
  }

  atomic_exchange((*(v49 + 16) + 128), v51);
  *(a1 + 124) = 0;
  v52 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFEB, a3, &v87);
  v53 = v87;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v87, *a2);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v53, *(a2 + 8));
  result = IPC::Connection::sendSyncMessage(v52, v88, &v87, 0, &v84, v9);
  if (v85)
  {
    if (v85 == 1)
    {
      *a4 = v84;
      *(a4 + 24) = 1;
      goto LABEL_77;
    }

LABEL_101:
    mpark::throw_bad_variant_access(result);
  }

  v55 = v84;
  v84 = 0;
  if (*(v55 + 25) == 3194)
  {
    v56 = 11;
  }

  else
  {
    LOBYTE(v77) = 0;
    LOBYTE(v78) = 0;
    v55 = IPC::Decoder::operator>><std::tuple<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v55, &v77);
    if (v78 == 1)
    {
      v57 = v77;
      *a4 = v55;
      *(a4 + 8) = __PAIR128__(*(&v77 + 1), v57);
      *(a4 + 24) = 0;
      goto LABEL_77;
    }

    v56 = 14;
  }

  *a4 = v56;
  *(a4 + 24) = 1;
  IPC::Decoder::~Decoder(v55);
  bmalloc::api::tzoneFree(v58, v59);
LABEL_77:
  if (!v85)
  {
    v60 = v84;
    v84 = 0;
    if (v60)
    {
      IPC::Decoder::~Decoder(v60);
      bmalloc::api::tzoneFree(v63, v64);
    }
  }

  result = v87;
  v87 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v54);
    return bmalloc::api::tzoneFree(v61, v62);
  }

  return result;
}

uint64_t std::optional<IPC::ConnectionSendSyncResult<Messages::RemoteGraphicsContextGL::GetUniformIndices>>::optional[abi:sn200100]<IPC::ConnectionSendSyncResult<Messages::RemoteGraphicsContextGL::GetUniformIndices>,0>(uint64_t a1, uint64_t *a2)
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
      WTF::VectorBuffer<unsigned short,0ul,WTF::FastMalloc>::adopt(a1 + 8, a2 + 2);
      LOBYTE(v3) = *(a2 + 24);
    }

    *(a1 + 24) = v3;
  }

  *(a1 + 32) = 1;
  return a1;
}

IPC::Decoder *IPC::Decoder::operator>><std::tuple<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, &v17);
  v5 = v19;
  if ((v19 & 1) == 0)
  {
    v4 = *a1;
    v14 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v15 = *(a1 + 3);
    if (v15 && v14 != 0)
    {
      (*(*v15 + 16))(v15, v4);
      v5 = v19;
    }
  }

  if (*(a2 + 16) == v5)
  {
    if (*(a2 + 16))
    {
      v6 = *a2;
      if (*a2)
      {
        *a2 = 0;
        *(a2 + 8) = 0;
        WTF::fastFree(v6, v4);
      }

      v7 = v17;
      v17 = 0;
      *a2 = v7;
      v8 = v18;
      HIDWORD(v18) = 0;
      *(a2 + 8) = v8;
    }
  }

  else if (*(a2 + 16))
  {
    v9 = *a2;
    if (*a2)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      WTF::fastFree(v9, v4);
    }

    *(a2 + 16) = 0;
  }

  else
  {
    v10 = v17;
    v17 = 0;
    *a2 = v10;
    v11 = v18;
    HIDWORD(v18) = 0;
    *(a2 + 8) = v11;
    *(a2 + 16) = 1;
  }

  if (v19 == 1)
  {
    v12 = v17;
    if (v17)
    {
      v17 = 0;
      LODWORD(v18) = 0;
      WTF::fastFree(v12, v4);
    }
  }

  return a1;
}

uint64_t IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniforms,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(a1 + 64) != a3)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v77, v9);
    if (v78 != 1)
    {
      goto LABEL_95;
    }

    v67 = *(&v77 + 1);
    if (*(&v77 + 1) <= 1uLL)
    {
LABEL_107:
      __break(0xC471u);
      JUMPOUT(0x19E22BEFCLL);
    }

    v68 = v77;
    *v77 = 3198;
    v69 = v68 + 2;
    if (v67 - 2 < (-v69 & 7 | 8uLL))
    {
      v76 = 18;
      goto LABEL_96;
    }

    v70 = -v69 & 7;
    *(v69 + v70) = a3;
    if (v70 != 7)
    {
      v70 = 6;
    }

    v71 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v73 = *(a1 + 72);
    v72 = *(a1 + 80);
    v74 = v70 + 10;
    if (v71 + 16 >= v73)
    {
      v71 = 0;
    }

    v75 = v74 + v71;
    if (v73 <= v75)
    {
      v75 = 0;
    }

    *(a1 + 88) = v75;
    if (*(v72 + 8) <= 0xFFuLL)
    {
      goto LABEL_76;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v72 + 16) + 128), v75) == 0x80000000);
    *(a1 + 64) = a3;
  }

  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v81, v9);
  if ((v83 & 1) == 0)
  {
LABEL_95:
    v76 = 16;
LABEL_96:
    *a4 = v76;
    v48 = 1;
LABEL_97:
    *(a4 + 24) = v48;
    return result;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_107;
  }

  v12 = v81;
  v13 = v82;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a1 + 8), IdentifierInternal);
  if ((result & 1) == 0)
  {
    LOBYTE(v87) = 12;
    v90 = 1;
    goto LABEL_35;
  }

  v89 = v13;
  if (v13 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E22BF1CLL);
  }

  *v12 = 4038;
  v15 = (v12 + 1);
  v87 = v15;
  v88 = (v13 - 2);
  v16 = -v15 & 7 | 8;
  if (v13 - 2 < v16)
  {
    goto LABEL_99;
  }

  *(v15 + (-v15 & 7)) = IdentifierInternal;
  v17 = (v88 - v16);
  if (v88 < v16)
  {
    goto LABEL_76;
  }

  v18 = (v87 + v16);
  v87 = v18;
  v88 = v17;
  v19 = -v18 & 3 | 4;
  if (v17 < v19)
  {
LABEL_99:
    v87 = 0;
    v88 = 0;
  }

  else
  {
    *(v18 + (-v18 & 3)) = *a2;
    if (v88 < v19)
    {
      goto LABEL_76;
    }

    v87 = (v87 + v19);
    v88 = (v88 - v19);
  }

  result = IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v87, **(a2 + 8), *(*(a2 + 8) + 12));
  v21 = -v87 & 3 | 4;
  if (v88 < v21)
  {
    result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
    LOBYTE(v77) = 0;
    v80 = 0;
    goto LABEL_56;
  }

  *(v87 + (-v87 & 3)) = *(a2 + 16);
  v22 = v88 - v21;
  if (v88 < v21)
  {
    goto LABEL_76;
  }

  v87 = (v87 + v21);
  v88 = (v88 - v21);
  v23 = v89 - v22;
  if (v23 <= 0x10)
  {
    v23 = 16;
  }

  v24 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v25 = *(a1 + 72);
  if (v24 + 16 >= v25)
  {
    v24 = 0;
  }

  v26 = v24 + v23;
  if (v25 <= v26)
  {
    v26 = 0;
  }

  *(a1 + 88) = v26;
  v27 = *(a1 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_76;
  }

  if (atomic_exchange((*(v27 + 16) + 128), v26) == 0x80000000 || *(a1 + 124))
  {
    if (*(a1 + 112) == 1)
    {
      result = MEMORY[0x19EB16320](*(a1 + 100));
    }

    *(a1 + 124) = 0;
  }

  while (1)
  {
    v28 = *(a1 + 80);
    if (*(v28 + 8) <= 0xFFuLL)
    {
      goto LABEL_76;
    }

    v29 = atomic_exchange(*(v28 + 16), 0x80000000uLL);
    v30 = *(a1 + 80);
    if (*(v30 + 8) <= 0xFFuLL)
    {
      goto LABEL_76;
    }

    if (!(v29 | atomic_load_explicit((*(v30 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
    {
      break;
    }

    if (*(a1 + 112) == 1)
    {
      v31 = IPC::Semaphore::waitFor((a1 + 104), v9);
      if (v31)
      {
        result = WTF::ApproximateTime::now(v31);
        if (v32 < v9)
        {
          continue;
        }
      }
    }

    result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
    v33 = 17;
    goto LABEL_47;
  }

  v35 = *(a1 + 80);
  if (*(v35 + 8) <= 0xFFuLL)
  {
    goto LABEL_76;
  }

  atomic_store(0, *(v35 + 16));
  *(a1 + 88) = 0;
  v36 = *(a1 + 80);
  v37 = *(v36 + 8);
  if (v37 <= 0xFF)
  {
    goto LABEL_76;
  }

  v38 = *(a1 + 72);
  v39 = *(v36 + 16);
  v40 = v37 - 256;
  if (v38)
  {
    v58 = v38 - 1;
    v59 = v40 >= v58;
    v40 = v58;
    if (!v59)
    {
      goto LABEL_76;
    }
  }

  v41 = IPC::Decoder::operator new(0x58, v20);
  if (*(IPC::Decoder::Decoder(v41, v39 + 256, v40, *(a1 + 64)) + 25) != 3197)
  {
LABEL_49:
    IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
    if (*(v41 + 25) == 3194)
    {
      v45 = 11;
LABEL_54:
      LOBYTE(v77) = v45;
      v79 = 1;
      v80 = 1;
      result = v41;
      goto LABEL_55;
    }

    LOBYTE(v84) = 0;
    v86 = 0;
    IPC::Decoder::operator>><std::tuple<WTF::Vector<int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v41, &v84);
    if (v86 != 1)
    {
      v45 = 14;
      goto LABEL_54;
    }

    v87 = v41;
    v88 = v84;
    v89 = v85;
    v90 = 0;
LABEL_35:
    result = std::optional<IPC::ConnectionSendSyncResult<Messages::RemoteGraphicsContextGL::GetActiveUniforms>>::optional[abi:sn200100]<IPC::ConnectionSendSyncResult<Messages::RemoteGraphicsContextGL::GetActiveUniforms>,0>(&v77, &v87);
    if (v90)
    {
      goto LABEL_56;
    }

    if (v88)
    {
      WTF::fastFree(v88, v34);
    }

    result = v87;
    if (!v87)
    {
      goto LABEL_56;
    }

LABEL_55:
    IPC::Decoder::~Decoder(result);
    result = bmalloc::api::tzoneFree(v46, v47);
    goto LABEL_56;
  }

  IPC::Decoder::~Decoder(v41);
  bmalloc::api::tzoneFree(v42, v43);
  IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFC6u, &v84, v9);
  v44 = v85;
  if (!v85)
  {
    v41 = v84;
    goto LABEL_49;
  }

  if (v85 == 255)
  {
    result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
    goto LABEL_102;
  }

  v33 = v84;
  result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if (v44 != 1)
  {
    goto LABEL_102;
  }

LABEL_47:
  LOBYTE(v77) = v33;
  v79 = 1;
  v80 = 1;
LABEL_56:
  if (v80 == 1)
  {
    *a4 = 0;
    *(a4 + 24) = -1;
    v48 = v79;
    if (v79)
    {
      if (v79 == 255)
      {
        return result;
      }

      *a4 = v77;
    }

    else
    {
      *a4 = v77;
      *(a4 + 16) = v78;
    }

    goto LABEL_97;
  }

  if ((v83 & 1) == 0)
  {
    goto LABEL_76;
  }

  if (v82 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E22BF3CLL);
  }

  *v81 = 3197;
  v49 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v51 = *(a1 + 72);
  v50 = *(a1 + 80);
  if (v49 + 16 >= v51)
  {
    v49 = 0;
  }

  v52 = v49 + 16;
  if (v51 <= v52)
  {
    v52 = 0;
  }

  *(a1 + 88) = v52;
  if (*(v50 + 8) <= 0xFFuLL)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    v56 = 14;
    goto LABEL_78;
  }

  atomic_exchange((*(v50 + 16) + 128), v52);
  *(a1 + 124) = 0;
  v53 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFC6, a3, &v87);
  v54 = v87;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v87, *a2);
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v54, **(a2 + 8), *(*(a2 + 8) + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, *(a2 + 16));
  result = IPC::Connection::sendSyncMessage(v53, v88, &v87, 0, &v84, v9);
  if (v85)
  {
    if (v85 == 1)
    {
      *a4 = v84;
      *(a4 + 24) = 1;
      goto LABEL_79;
    }

LABEL_102:
    mpark::throw_bad_variant_access(result);
  }

  result = v84;
  v84 = 0;
  if (*(result + 50) != 3194)
  {
    LOBYTE(v77) = 0;
    LOBYTE(v78) = 0;
    result = IPC::Decoder::operator>><std::tuple<WTF::Vector<int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(result, &v77);
    if (v78 == 1)
    {
      v57 = v77;
      *a4 = result;
      *(a4 + 8) = __PAIR128__(*(&v77 + 1), v57);
      *(a4 + 24) = 0;
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  v56 = 11;
LABEL_78:
  *a4 = v56;
  *(a4 + 24) = 1;
  IPC::Decoder::~Decoder(result);
  bmalloc::api::tzoneFree(v60, v61);
LABEL_79:
  if (!v85)
  {
    v62 = v84;
    v84 = 0;
    if (v62)
    {
      IPC::Decoder::~Decoder(v62);
      bmalloc::api::tzoneFree(v65, v66);
    }
  }

  result = v87;
  v87 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v55);
    return bmalloc::api::tzoneFree(v63, v64);
  }

  return result;
}

uint64_t std::optional<IPC::ConnectionSendSyncResult<Messages::RemoteGraphicsContextGL::GetActiveUniforms>>::optional[abi:sn200100]<IPC::ConnectionSendSyncResult<Messages::RemoteGraphicsContextGL::GetActiveUniforms>,0>(uint64_t a1, uint64_t *a2)
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
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 8, a2 + 2);
      LOBYTE(v3) = *(a2 + 24);
    }

    *(a1 + 24) = v3;
  }

  *(a1 + 32) = 1;
  return a1;
}

IPC::Decoder *IPC::Decoder::operator>><std::tuple<WTF::Vector<int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, v23);
  if (v24)
  {
    goto LABEL_2;
  }

  v6 = *a1;
  v14 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v15 = *(a1 + 3);
  if (v15 && v14)
  {
    (*(*v15 + 16))(v15, v6);
    if (v24)
    {
LABEL_2:
      WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v20, v23[0], v23[1]);
      v7 = 0;
      v2 = v21;
      v3 = v22;
      v8 = 1;
      v9 = v20;
      goto LABEL_3;
    }

    v16 = 0;
    v17 = *a1;
    v18 = *(a1 + 1);
    v19 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v19 && v18)
    {
      (*(*v19 + 16))(v19, v17, v18);
      v6 = *a1;
      v16 = *(a1 + 1);
      v19 = *(a1 + 3);
    }

    else
    {
      v6 = 0;
    }

    v9 = 0;
    v8 = 0;
    *a1 = 0;
    *(a1 + 1) = 0;
    v7 = 1;
    if (v19 && v16)
    {
      (*(*v19 + 16))(v19, v6);
      v8 = 0;
      v9 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    *a1 = 0;
    *(a1 + 1) = 0;
    v7 = 1;
  }

LABEL_3:
  if (*(a2 + 16) == v8)
  {
    if (*(a2 + 16))
    {
      v10 = *a2;
      if (*a2)
      {
        *a2 = 0;
        *(a2 + 8) = 0;
        WTF::fastFree(v10, v6);
      }

      *a2 = v9;
      *(a2 + 8) = v2;
      *(a2 + 12) = v3;
      return a1;
    }
  }

  else
  {
    if (!*(a2 + 16))
    {
      *a2 = v9;
      *(a2 + 8) = v2;
      *(a2 + 12) = v3;
      *(a2 + 16) = 1;
      return a1;
    }

    v11 = *a2;
    if (*a2)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      WTF::fastFree(v11, v6);
    }

    *(a2 + 16) = 0;
  }

  if (v9)
  {
    v12 = v7;
  }

  else
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    WTF::fastFree(v9, v6);
  }

  return a1;
}

uint64_t IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetUniformBlockIndex,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(a1 + 64) != a3)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v79, v9);
    if (v81 != 1)
    {
      goto LABEL_85;
    }

    v65 = v80;
    if (v80 <= 1)
    {
      __break(0xC471u);
      goto LABEL_98;
    }

    v66 = v79;
    *v79 = 3198;
    v67 = v66 + 2;
    if (v65 - 2 < (-v67 & 7 | 8uLL))
    {
      v74 = 18;
      goto LABEL_86;
    }

    v68 = -v67 & 7;
    *&v67[v68] = a3;
    if (v68 != 7)
    {
      v68 = 6;
    }

    v69 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v71 = *(a1 + 72);
    v70 = *(a1 + 80);
    v72 = v68 + 10;
    if (v69 + 16 >= v71)
    {
      v69 = 0;
    }

    v73 = v72 + v69;
    if (v71 <= v73)
    {
      v73 = 0;
    }

    *(a1 + 88) = v73;
    if (*(v70 + 8) <= 0xFFuLL)
    {
      goto LABEL_98;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v70 + 16) + 128), v73) == 0x80000000);
    *(a1 + 64) = a3;
  }

  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v76, v9);
  if ((v78 & 1) == 0)
  {
LABEL_85:
    v74 = 16;
LABEL_86:
    *a4 = v74;
    goto LABEL_87;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_99;
  }

  v12 = v76;
  v13 = v77;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a1 + 8), IdentifierInternal);
  if (!result)
  {
    v31 = 12;
LABEL_64:
    *a4 = v31;
LABEL_87:
    v52 = 1;
    goto LABEL_88;
  }

  v81 = v13;
  if (v13 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E22C804);
  }

  *v12 = 4074;
  v15 = (v12 + 1);
  v79 = v15;
  v80 = v13 - 2;
  v16 = -v15 & 7 | 8;
  if (v13 - 2 < v16)
  {
    goto LABEL_90;
  }

  *(v15 + (-v15 & 7)) = IdentifierInternal;
  v17 = v80 - v16;
  if (v80 < v16)
  {
    goto LABEL_98;
  }

  v18 = (v79 + v16);
  v79 = v18;
  v80 = v17;
  v19 = -v18 & 3 | 4;
  if (v17 < v19)
  {
LABEL_90:
    v79 = 0;
    v80 = 0;
  }

  else
  {
    *(v18 + (-v18 & 3)) = *a2;
    if (v80 < v19)
    {
      goto LABEL_98;
    }

    v79 = (v79 + v19);
    v80 -= v19;
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v79, *(a2 + 8));
  if (v79)
  {
    v21 = v81 - v80;
    if (v81 - v80 <= 0x10)
    {
      v21 = 16;
    }

    v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v23 = *(a1 + 72);
    if (v22 + 16 >= v23)
    {
      v22 = 0;
    }

    v24 = v22 + v21;
    if (v23 <= v24)
    {
      v24 = 0;
    }

    *(a1 + 88) = v24;
    v25 = *(a1 + 80);
    if (*(v25 + 8) <= 0xFFuLL)
    {
      goto LABEL_98;
    }

    if (atomic_exchange((*(v25 + 16) + 128), v24) == 0x80000000 || *(a1 + 124))
    {
      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      *(a1 + 124) = 0;
    }

    while (1)
    {
      v26 = *(a1 + 80);
      if (*(v26 + 8) <= 0xFFuLL)
      {
        goto LABEL_98;
      }

      v27 = atomic_exchange(*(v26 + 16), 0x80000000uLL);
      v28 = *(a1 + 80);
      if (*(v28 + 8) <= 0xFFuLL)
      {
        goto LABEL_98;
      }

      if (!(v27 | atomic_load_explicit((*(v28 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
      {
        break;
      }

      if (*(a1 + 112) == 1)
      {
        v29 = IPC::Semaphore::waitFor((a1 + 104), v9);
        if (v29)
        {
          WTF::ApproximateTime::now(v29);
          if (v30 < v9)
          {
            continue;
          }
        }
      }

      result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
      v31 = 17;
      goto LABEL_64;
    }

    v32 = *(a1 + 80);
    if (*(v32 + 8) <= 0xFFuLL)
    {
      goto LABEL_98;
    }

    atomic_store(0, *(v32 + 16));
    *(a1 + 88) = 0;
    v33 = *(a1 + 80);
    v34 = *(v33 + 8);
    if (v34 <= 0xFF)
    {
      goto LABEL_98;
    }

    v35 = *(a1 + 72);
    v36 = *(v33 + 16);
    v37 = v34 - 256;
    if (v35)
    {
      v56 = v35 - 1;
      v57 = v37 >= v56;
      v37 = v56;
      if (!v57)
      {
        goto LABEL_98;
      }
    }

    v38 = IPC::Decoder::operator new(0x58, v20);
    if (*(IPC::Decoder::Decoder(v38, v36 + 256, v37, *(a1 + 64)) + 25) == 3197)
    {
      IPC::Decoder::~Decoder(v38);
      bmalloc::api::tzoneFree(v39, v40);
      IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFEAu, &v82, v9);
      v41 = v83;
      if (v83)
      {
        if (v83 == 255)
        {
          v75 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
          mpark::throw_bad_variant_access(v75);
        }

        v31 = v82;
        result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
        if (v41 != 1)
        {
LABEL_91:
          mpark::throw_bad_variant_access(result);
        }

        goto LABEL_64;
      }

      v38 = v82;
    }

    IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
    if (*(v38 + 25) == 3194)
    {
      v31 = 11;
    }

    else
    {
      result = IPC::Decoder::decode<std::tuple<unsigned int>>(v38);
      if ((result & 0xFF00000000) != 0)
      {
        v52 = 0;
        *a4 = v38;
        *(a4 + 8) = result;
LABEL_88:
        *(a4 + 16) = v52;
        return result;
      }

      v31 = 14;
    }

    IPC::Decoder::~Decoder(v38);
    result = bmalloc::api::tzoneFree(v54, v55);
    goto LABEL_64;
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v78 & 1) == 0)
  {
    goto LABEL_98;
  }

  if (v77 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E22C824);
  }

  *v76 = 3197;
  v42 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v43 = *(a1 + 72);
  if (v42 + 16 >= v43)
  {
    v42 = 0;
  }

  v44 = v42 + 16;
  v45 = v43 <= v44 ? 0 : v44;
  *(a1 + 88) = v45;
  v46 = *(a1 + 80);
  if (*(v46 + 8) <= 0xFFuLL)
  {
LABEL_98:
    __break(1u);
LABEL_99:
    JUMPOUT(0x19E22C7E4);
  }

  atomic_exchange((*(v46 + 16) + 128), v45);
  *(a1 + 124) = 0;
  v47 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFEA, a3, &v79);
  v48 = v79;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v79, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v48, *(a2 + 8));
  result = IPC::Connection::sendSyncMessage(v47, v80, &v79, 0, &v82, v9);
  if (v83)
  {
    if (v83 != 1)
    {
      goto LABEL_91;
    }

    *a4 = v82;
    *(a4 + 16) = 1;
    goto LABEL_69;
  }

  v50 = v82;
  v82 = 0;
  if (*(v50 + 25) == 3194)
  {
    v51 = 11;
  }

  else
  {
    v53 = IPC::Decoder::decode<std::tuple<unsigned int>>(v50);
    if ((v53 & 0xFF00000000) != 0)
    {
      *a4 = v50;
      *(a4 + 8) = v53;
      *(a4 + 16) = 0;
      goto LABEL_69;
    }

    v51 = 14;
  }

  *a4 = v51;
  *(a4 + 16) = 1;
  IPC::Decoder::~Decoder(v50);
  bmalloc::api::tzoneFree(v58, v59);
LABEL_69:
  if (!v83)
  {
    v60 = v82;
    v82 = 0;
    if (v60)
    {
      IPC::Decoder::~Decoder(v60);
      bmalloc::api::tzoneFree(v63, v64);
    }
  }

  result = v79;
  v79 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v49);
    return bmalloc::api::tzoneFree(v61, v62);
  }

  return result;
}

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniformBlockName,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(a1 + 64) != a3)
  {
    goto LABEL_51;
  }

LABEL_4:
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v79, v9);
  if ((v81 & 1) == 0)
  {
LABEL_62:
    v59 = 16;
LABEL_63:
    *a4 = v59;
    goto LABEL_64;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_94;
  }

  v13 = v79;
  v12 = v80;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a1 + 8), IdentifierInternal);
  if (!result)
  {
    v35 = 12;
LABEL_48:
    *a4 = v35;
LABEL_64:
    v45 = 1;
    goto LABEL_65;
  }

  if (v12 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E22CE84);
  }

  *v13 = 4036;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  v18 = v12 - 2 - v17;
  if (v12 - 2 >= v17)
  {
    *(v16 + (-v16 & 7)) = IdentifierInternal;
    v19 = v16 + v17;
    v20 = -v19 & 3 | 4;
    v21 = v18 >= v20;
    v22 = v18 - v20;
    if (v21)
    {
      *&v19[-v19 & 3] = *a2;
      v23 = &v19[v20];
      v24 = -v23 & 3 | 4;
      if (v22 >= v24)
      {
        *&v23[-v23 & 3] = a2[1];
        v25 = v12 - v22 + v24;
        if (v25 <= 0x10)
        {
          v25 = 16;
        }

        v26 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v27 = *(a1 + 72);
        if (v26 + 16 >= v27)
        {
          v26 = 0;
        }

        v28 = v26 + v25;
        if (v27 <= v28)
        {
          v28 = 0;
        }

        *(a1 + 88) = v28;
        v29 = *(a1 + 80);
        if (*(v29 + 8) <= 0xFFuLL)
        {
          goto LABEL_50;
        }

        if (atomic_exchange((*(v29 + 16) + 128), v28) == 0x80000000 || *(a1 + 124))
        {
          if (*(a1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a1 + 100));
          }

          *(a1 + 124) = 0;
        }

        a2 = 0x80000000;
        while (1)
        {
          v30 = *(a1 + 80);
          if (*(v30 + 8) <= 0xFFuLL)
          {
            goto LABEL_50;
          }

          v31 = atomic_exchange(*(v30 + 16), 0x80000000uLL);
          v32 = *(a1 + 80);
          if (*(v32 + 8) <= 0xFFuLL)
          {
            goto LABEL_50;
          }

          if (!(v31 | atomic_load_explicit((*(v32 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
          {
            break;
          }

          if (*(a1 + 112) == 1)
          {
            v33 = IPC::Semaphore::waitFor((a1 + 104), v9);
            if (v33)
            {
              WTF::ApproximateTime::now(v33);
              if (v34 < v9)
              {
                continue;
              }
            }
          }

          result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
          v35 = 17;
          goto LABEL_48;
        }

        v36 = *(a1 + 80);
        if (*(v36 + 8) <= 0xFFuLL)
        {
          goto LABEL_50;
        }

        atomic_store(0, *(v36 + 16));
        *(a1 + 88) = 0;
        v37 = *(a1 + 80);
        v38 = *(v37 + 8);
        if (v38 <= 0xFF)
        {
          goto LABEL_50;
        }

        v39 = *(a1 + 72);
        v40 = *(v37 + 16);
        a3 = v38 - 256;
        if (v39)
        {
          v49 = v39 - 1;
          v21 = a3 >= v49;
          a3 = v49;
          if (!v21)
          {
            goto LABEL_50;
          }
        }

        v41 = IPC::Decoder::operator new(0x58, v15);
        if (*(IPC::Decoder::Decoder(v41, v40 + 256, a3, *(a1 + 64)) + 25) == 3197)
        {
          IPC::Decoder::~Decoder(v41);
          bmalloc::api::tzoneFree(v42, v43);
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFC4u, &v86, v9);
          v44 = v87;
          if (v87)
          {
            if (v87 == 255)
            {
              v78 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
              mpark::throw_bad_variant_access(v78);
            }

            v35 = v86;
            result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
            if (v44 != 1)
            {
LABEL_40:
              mpark::throw_bad_variant_access(result);
            }

            goto LABEL_48;
          }

          v41 = v86;
        }

        IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
        if (*(v41 + 25) == 3194)
        {
          v35 = 11;
        }

        else
        {
          LOBYTE(v86) = 0;
          LOBYTE(v87) = 0;
          result = IPC::Decoder::operator>><std::tuple<WTF::String>>(v41, &v86);
          if (v87)
          {
            v45 = 0;
            v46 = v86;
            *a4 = v41;
            *(a4 + 8) = v46;
LABEL_65:
            *(a4 + 16) = v45;
            return result;
          }

          v35 = 14;
        }

        IPC::Decoder::~Decoder(v41);
        result = bmalloc::api::tzoneFree(v47, v48);
        goto LABEL_48;
      }
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v81 & 1) == 0)
  {
    while (1)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v79, v9);
      if (v81 != 1)
      {
        goto LABEL_62;
      }

      v50 = v80;
      if (v80 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E22CEACLL);
      }

      v51 = v79;
      *v79 = 3198;
      v52 = v51 + 1;
      if (v50 - 2 < (-v52 & 7 | 8uLL))
      {
        break;
      }

      v53 = -v52 & 7;
      *(v52 + v53) = a3;
      if (v53 != 7)
      {
        v53 = 6;
      }

      v54 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v56 = *(a1 + 72);
      v55 = *(a1 + 80);
      v57 = v53 + 10;
      if (v54 + 16 >= v56)
      {
        v54 = 0;
      }

      v58 = v57 + v54;
      if (v56 <= v58)
      {
        v58 = 0;
      }

      *(a1 + 88) = v58;
      if (*(v55 + 8) > 0xFFuLL)
      {
        IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v55 + 16) + 128), v58) == 0x80000000);
        *(a1 + 64) = a3;
        goto LABEL_4;
      }
    }

    v59 = 18;
    goto LABEL_63;
  }

  if (v80 <= 1)
  {
LABEL_94:
    __break(0xC471u);
    JUMPOUT(0x19E22CE64);
  }

  *v79 = 3197;
  v60 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v61 = *(a1 + 72);
  if (v60 + 16 >= v61)
  {
    v60 = 0;
  }

  v62 = v60 + 16;
  if (v61 <= v62)
  {
    v63 = 0;
  }

  else
  {
    v63 = v62;
  }

  *(a1 + 88) = v63;
  v64 = *(a1 + 80);
  if (*(v64 + 8) <= 0xFFuLL)
  {
    goto LABEL_50;
  }

  atomic_exchange((*(v64 + 16) + 128), v63);
  *(a1 + 124) = 0;
  v65 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFC4, a3, &v86);
  v66 = v86;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v86, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v66, a2[1]);
  result = IPC::Connection::sendSyncMessage(v65, v87, &v86, 0, &v84, v9);
  if (v85)
  {
    if (v85 != 1)
    {
      goto LABEL_40;
    }

    *a4 = v84;
    *(a4 + 16) = 1;
    goto LABEL_84;
  }

  v68 = v84;
  v84 = 0;
  if (*(v68 + 25) == 3194)
  {
    v69 = 11;
  }

  else
  {
    LOBYTE(v82) = 0;
    v83 = 0;
    IPC::Decoder::operator>><std::tuple<WTF::String>>(v68, &v82);
    if (v83 == 1)
    {
      v70 = v82;
      *a4 = v68;
      *(a4 + 8) = v70;
      *(a4 + 16) = 0;
      goto LABEL_84;
    }

    v69 = 14;
  }

  *a4 = v69;
  *(a4 + 16) = 1;
  IPC::Decoder::~Decoder(v68);
  bmalloc::api::tzoneFree(v71, v72);
LABEL_84:
  if (!v85)
  {
    v73 = v84;
    v84 = 0;
    if (v73)
    {
      IPC::Decoder::~Decoder(v73);
      bmalloc::api::tzoneFree(v76, v77);
    }
  }

  result = v86;
  v86 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v67);
    return bmalloc::api::tzoneFree(v74, v75);
  }

  return result;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformBlockBinding,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v46, v7);
    if (v48 != 1)
    {
      return 16;
    }

    v26 = v47;
    if (v47 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E22D27CLL);
    }

    v27 = v46;
    *v46 = 3198;
    v28 = v27 + 1;
    if (v26 - 2 < (-v28 & 7 | 8uLL))
    {
      return 18;
    }

    v29 = -v28 & 7;
    *(v28 + v29) = a3;
    if (v29 != 7)
    {
      v29 = 6;
    }

    v30 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(a1 + 72);
    v31 = *(a1 + 80);
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

    *(a1 + 88) = v34;
    if (*(v31 + 8) <= 0xFFuLL)
    {
      goto LABEL_48;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v31 + 16) + 128), v34) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v46, v7);
  if (v48 != 1)
  {
    return 16;
  }

  v10 = v47;
  if (v47 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  v11 = v46;
  *v46 = 1341;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    v17 = v14 - v16;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v18 = v15 + v16;
      v19 = -v18 & 3 | 4;
      if (v17 >= v19)
      {
        *(v18 + (-v18 & 3)) = a2[2];
        v20 = v10 - v17 + v19;
        if (v20 <= 0x10)
        {
          v20 = 16;
        }

        v21 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v22 = *(a1 + 72);
        if (v21 + 16 >= v22)
        {
          v21 = 0;
        }

        v23 = v21 + v20;
        if (v22 <= v23)
        {
          v23 = 0;
        }

        *(a1 + 88) = v23;
        v24 = *(a1 + 80);
        if (*(v24 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v24 + 16) + 128), v23) != 0x80000000 && !*(a1 + 124))
          {
            return 0;
          }

          if (*(a1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a1 + 100));
          }

          v25 = 0;
          *(a1 + 124) = 0;
          return v25;
        }

        goto LABEL_48;
      }
    }
  }

  if ((v48 & 1) == 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    JUMPOUT(0x19E22D25CLL);
  }

  if (v47 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  *v46 = 3197;
  v36 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v38 = *(a1 + 72);
  v37 = *(a1 + 80);
  if (v36 + 16 >= v38)
  {
    v36 = 0;
  }

  v39 = v36 + 16;
  if (v38 <= v39)
  {
    v39 = 0;
  }

  *(a1 + 88) = v39;
  if (*(v37 + 8) <= 0xFFuLL)
  {
    goto LABEL_48;
  }

  atomic_exchange((*(v37 + 16) + 128), v39);
  *(a1 + 124) = 0;
  v40 = *(a1 + 8);
  v41 = IPC::Encoder::operator new(0x238, v9);
  *v41 = 1341;
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 1) = a3;
  *(v41 + 68) = 0;
  *(v41 + 70) = 0;
  *(v41 + 69) = 0;
  IPC::Encoder::encodeHeader(v41);
  v49 = v41;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, a2[1]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, a2[2]);
  v25 = IPC::Connection::sendMessageImpl(v40, &v49, 1, 0);
  v43 = v49;
  v49 = 0;
  if (v43)
  {
    IPC::Encoder::~Encoder(v43, v42);
    bmalloc::api::tzoneFree(v44, v45);
  }

  return v25;
}

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniformBlockiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(a1 + 64) != a3)
  {
    goto LABEL_53;
  }

LABEL_4:
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v84, v9);
  if ((v86 & 1) == 0)
  {
LABEL_64:
    v65 = 16;
LABEL_65:
    *a4 = v65;
    goto LABEL_66;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_96;
  }

  v13 = v84;
  v12 = v85;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a1 + 8), IdentifierInternal);
  if (!result)
  {
    v42 = 12;
LABEL_50:
    *a4 = v42;
LABEL_66:
    v52 = 1;
    goto LABEL_67;
  }

  if (v12 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E22D93CLL);
  }

  *v13 = 4037;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  v18 = v12 - 2 - v17;
  if (v12 - 2 >= v17)
  {
    *(v16 + (-v16 & 7)) = IdentifierInternal;
    v19 = v16 + v17;
    v20 = -v19 & 3 | 4;
    v21 = v18 >= v20;
    v22 = v18 - v20;
    if (v21)
    {
      *&v19[-v19 & 3] = *a2;
      v23 = &v19[v20];
      v24 = -v23 & 3 | 4;
      v25 = v22 - v24;
      if (v22 >= v24)
      {
        *&v23[-v23 & 3] = *(a2 + 4);
        v26 = &v23[v24];
        v27 = -(v23 + v24);
        v28 = v27 & 3 | 4;
        v29 = v25 - v28;
        if (v25 >= v28)
        {
          *&v26[v27 & 3] = *(a2 + 8);
          v30 = &v26[v28];
          v31 = -v30 & 7 | 8;
          if (v29 >= v31)
          {
            *&v30[-v30 & 7] = *(a2 + 16);
            v32 = v12 - v29 + v31;
            if (v32 <= 0x10)
            {
              v32 = 16;
            }

            v33 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v34 = *(a1 + 72);
            if (v33 + 16 >= v34)
            {
              v33 = 0;
            }

            v35 = v33 + v32;
            if (v34 <= v35)
            {
              v35 = 0;
            }

            *(a1 + 88) = v35;
            v36 = *(a1 + 80);
            if (*(v36 + 8) <= 0xFFuLL)
            {
              goto LABEL_52;
            }

            if (atomic_exchange((*(v36 + 16) + 128), v35) == 0x80000000 || *(a1 + 124))
            {
              if (*(a1 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(a1 + 100));
              }

              *(a1 + 124) = 0;
            }

            a2 = 0x80000000;
            while (1)
            {
              v37 = *(a1 + 80);
              if (*(v37 + 8) <= 0xFFuLL)
              {
                goto LABEL_52;
              }

              v38 = atomic_exchange(*(v37 + 16), 0x80000000uLL);
              v39 = *(a1 + 80);
              if (*(v39 + 8) <= 0xFFuLL)
              {
                goto LABEL_52;
              }

              if (!(v38 | atomic_load_explicit((*(v39 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
              {
                break;
              }

              if (*(a1 + 112) == 1)
              {
                v40 = IPC::Semaphore::waitFor((a1 + 104), v9);
                if (v40)
                {
                  WTF::ApproximateTime::now(v40);
                  if (v41 < v9)
                  {
                    continue;
                  }
                }
              }

              result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
              v42 = 17;
              goto LABEL_50;
            }

            v43 = *(a1 + 80);
            if (*(v43 + 8) <= 0xFFuLL)
            {
              goto LABEL_52;
            }

            atomic_store(0, *(v43 + 16));
            *(a1 + 88) = 0;
            v44 = *(a1 + 80);
            v45 = *(v44 + 8);
            if (v45 <= 0xFF)
            {
              goto LABEL_52;
            }

            v46 = *(a1 + 72);
            v47 = *(v44 + 16);
            a3 = v45 - 256;
            if (v46)
            {
              v55 = v46 - 1;
              v21 = a3 >= v55;
              a3 = v55;
              if (!v21)
              {
                goto LABEL_52;
              }
            }

            v48 = IPC::Decoder::operator new(0x58, v15);
            if (*(IPC::Decoder::Decoder(v48, v47 + 256, a3, *(a1 + 64)) + 25) == 3197)
            {
              IPC::Decoder::~Decoder(v48);
              bmalloc::api::tzoneFree(v49, v50);
              IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFC5u, &v87, v9);
              v51 = BYTE8(v87);
              if (BYTE8(v87))
              {
                if (BYTE8(v87) == 255)
                {
                  v83 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
                  mpark::throw_bad_variant_access(v83);
                }

                v42 = v87;
                result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
                if (v51 != 1)
                {
LABEL_42:
                  mpark::throw_bad_variant_access(result);
                }

                goto LABEL_50;
              }

              v48 = v87;
            }

            IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
            if (*(v48 + 25) == 3194)
            {
              v42 = 11;
            }

            else
            {
              LOBYTE(v87) = 0;
              v88 = 0;
              result = IPC::Decoder::operator>><std::tuple<std::span<int const,18446744073709551615ul>>>(v48, &v87);
              if (v88)
              {
                v52 = 0;
                *(a4 + 8) = v87;
                *a4 = v48;
LABEL_67:
                *(a4 + 24) = v52;
                return result;
              }

              v42 = 14;
            }

            IPC::Decoder::~Decoder(v48);
            result = bmalloc::api::tzoneFree(v53, v54);
            goto LABEL_50;
          }
        }
      }
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v86 & 1) == 0)
  {
    while (1)
    {
LABEL_52:
      __break(1u);
LABEL_53:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v87, v9);
      if (v88 != 1)
      {
        goto LABEL_64;
      }

      v56 = *(&v87 + 1);
      if (*(&v87 + 1) <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E22D964);
      }

      v57 = v87;
      *v87 = 3198;
      v58 = v57 + 2;
      if (v56 - 2 < (-v58 & 7 | 8uLL))
      {
        break;
      }

      v59 = -v58 & 7;
      *(v58 + v59) = a3;
      if (v59 != 7)
      {
        v59 = 6;
      }

      v60 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v62 = *(a1 + 72);
      v61 = *(a1 + 80);
      v63 = v59 + 10;
      if (v60 + 16 >= v62)
      {
        v60 = 0;
      }

      v64 = v63 + v60;
      if (v62 <= v64)
      {
        v64 = 0;
      }

      *(a1 + 88) = v64;
      if (*(v61 + 8) > 0xFFuLL)
      {
        IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v61 + 16) + 128), v64) == 0x80000000);
        *(a1 + 64) = a3;
        goto LABEL_4;
      }
    }

    v65 = 18;
    goto LABEL_65;
  }

  if (v85 <= 1)
  {
LABEL_96:
    __break(0xC471u);
    JUMPOUT(0x19E22D91CLL);
  }

  *v84 = 3197;
  v66 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v67 = *(a1 + 72);
  if (v66 + 16 >= v67)
  {
    v66 = 0;
  }

  v68 = v66 + 16;
  if (v67 <= v68)
  {
    v69 = 0;
  }

  else
  {
    v69 = v68;
  }

  *(a1 + 88) = v69;
  v70 = *(a1 + 80);
  if (*(v70 + 8) <= 0xFFuLL)
  {
    goto LABEL_52;
  }

  atomic_exchange((*(v70 + 16) + 128), v69);
  *(a1 + 124) = 0;
  v71 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFC5, a3, v91);
  v72 = v91[0];
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v91[0], *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v72, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v72, *(a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v72, *(a2 + 16));
  result = IPC::Connection::sendSyncMessage(v71, v91[1], v91, 0, &v89, v9);
  if (v90)
  {
    if (v90 != 1)
    {
      goto LABEL_42;
    }

    *a4 = v89;
    *(a4 + 24) = 1;
    goto LABEL_86;
  }

  v74 = v89;
  v89 = 0;
  if (*(v74 + 25) == 3194)
  {
    v75 = 11;
  }

  else
  {
    LOBYTE(v87) = 0;
    v88 = 0;
    v74 = IPC::Decoder::operator>><std::tuple<std::span<int const,18446744073709551615ul>>>(v74, &v87);
    if (v88 == 1)
    {
      *(a4 + 8) = v87;
      *a4 = v74;
      *(a4 + 24) = 0;
      goto LABEL_86;
    }

    v75 = 14;
  }

  *a4 = v75;
  *(a4 + 24) = 1;
  IPC::Decoder::~Decoder(v74);
  bmalloc::api::tzoneFree(v76, v77);
LABEL_86:
  if (!v90)
  {
    v78 = v89;
    v89 = 0;
    if (v78)
    {
      IPC::Decoder::~Decoder(v78);
      bmalloc::api::tzoneFree(v81, v82);
    }
  }

  result = v91[0];
  v91[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v73);
    return bmalloc::api::tzoneFree(v79, v80);
  }

  return result;
}

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetTranslatedShaderSourceANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(a1 + 64) != a3)
  {
    goto LABEL_49;
  }

LABEL_4:
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v75, v9);
  if ((v77 & 1) == 0)
  {
LABEL_60:
    v56 = 16;
LABEL_61:
    *a4 = v56;
    goto LABEL_62;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_92;
  }

  v13 = v75;
  v12 = v76;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a1 + 8), IdentifierInternal);
  if (!result)
  {
    v31 = 12;
LABEL_46:
    *a4 = v31;
LABEL_62:
    v41 = 1;
    goto LABEL_63;
  }

  if (v12 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E22DF90);
  }

  *v13 = 4073;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  v18 = v12 - 2 - v17;
  if (v12 - 2 >= v17)
  {
    *(v16 + (-v16 & 7)) = IdentifierInternal;
    v19 = v16 + v17;
    v20 = -v19 & 3 | 4;
    if (v18 >= v20)
    {
      *&v19[-v19 & 3] = *a2;
      v21 = v12 - v18 + v20;
      if (v21 <= 0x10)
      {
        v21 = 16;
      }

      v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v23 = *(a1 + 72);
      if (v22 + 16 >= v23)
      {
        v22 = 0;
      }

      v24 = v22 + v21;
      if (v23 <= v24)
      {
        v24 = 0;
      }

      *(a1 + 88) = v24;
      v25 = *(a1 + 80);
      if (*(v25 + 8) <= 0xFFuLL)
      {
        goto LABEL_48;
      }

      if (atomic_exchange((*(v25 + 16) + 128), v24) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      a2 = 0x80000000;
      while (1)
      {
        v26 = *(a1 + 80);
        if (*(v26 + 8) <= 0xFFuLL)
        {
          goto LABEL_48;
        }

        v27 = atomic_exchange(*(v26 + 16), 0x80000000uLL);
        v28 = *(a1 + 80);
        if (*(v28 + 8) <= 0xFFuLL)
        {
          goto LABEL_48;
        }

        if (!(v27 | atomic_load_explicit((*(v28 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
        {
          break;
        }

        if (*(a1 + 112) == 1)
        {
          v29 = IPC::Semaphore::waitFor((a1 + 104), v9);
          if (v29)
          {
            WTF::ApproximateTime::now(v29);
            if (v30 < v9)
            {
              continue;
            }
          }
        }

        result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
        v31 = 17;
        goto LABEL_46;
      }

      v32 = *(a1 + 80);
      if (*(v32 + 8) <= 0xFFuLL)
      {
        goto LABEL_48;
      }

      atomic_store(0, *(v32 + 16));
      *(a1 + 88) = 0;
      v33 = *(a1 + 80);
      v34 = *(v33 + 8);
      if (v34 <= 0xFF)
      {
        goto LABEL_48;
      }

      v35 = *(a1 + 72);
      v36 = *(v33 + 16);
      a3 = v34 - 256;
      if (v35)
      {
        v45 = v35 - 1;
        v46 = a3 >= v45;
        a3 = v45;
        if (!v46)
        {
          goto LABEL_48;
        }
      }

      v37 = IPC::Decoder::operator new(0x58, v15);
      if (*(IPC::Decoder::Decoder(v37, v36 + 256, a3, *(a1 + 64)) + 25) == 3197)
      {
        IPC::Decoder::~Decoder(v37);
        bmalloc::api::tzoneFree(v38, v39);
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFE9u, &v82, v9);
        v40 = v83;
        if (v83)
        {
          if (v83 == 255)
          {
            v74 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
            mpark::throw_bad_variant_access(v74);
          }

          v31 = v82;
          result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
          if (v40 != 1)
          {
LABEL_38:
            mpark::throw_bad_variant_access(result);
          }

          goto LABEL_46;
        }

        v37 = v82;
      }

      IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
      if (*(v37 + 25) == 3194)
      {
        v31 = 11;
      }

      else
      {
        LOBYTE(v82) = 0;
        LOBYTE(v83) = 0;
        result = IPC::Decoder::operator>><std::tuple<WTF::String>>(v37, &v82);
        if (v83)
        {
          v41 = 0;
          v42 = v82;
          *a4 = v37;
          *(a4 + 8) = v42;
LABEL_63:
          *(a4 + 16) = v41;
          return result;
        }

        v31 = 14;
      }

      IPC::Decoder::~Decoder(v37);
      result = bmalloc::api::tzoneFree(v43, v44);
      goto LABEL_46;
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v77 & 1) == 0)
  {
    while (1)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v75, v9);
      if (v77 != 1)
      {
        goto LABEL_60;
      }

      v47 = v76;
      if (v76 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E22DFB8);
      }

      v48 = v75;
      *v75 = 3198;
      v49 = v48 + 1;
      if (v47 - 2 < (-v49 & 7 | 8uLL))
      {
        break;
      }

      v50 = -v49 & 7;
      *(v49 + v50) = a3;
      if (v50 != 7)
      {
        v50 = 6;
      }

      v51 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v53 = *(a1 + 72);
      v52 = *(a1 + 80);
      v54 = v50 + 10;
      if (v51 + 16 >= v53)
      {
        v51 = 0;
      }

      v55 = v54 + v51;
      if (v53 <= v55)
      {
        v55 = 0;
      }

      *(a1 + 88) = v55;
      if (*(v52 + 8) > 0xFFuLL)
      {
        IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v52 + 16) + 128), v55) == 0x80000000);
        *(a1 + 64) = a3;
        goto LABEL_4;
      }
    }

    v56 = 18;
    goto LABEL_61;
  }

  if (v76 <= 1)
  {
LABEL_92:
    __break(0xC471u);
    JUMPOUT(0x19E22DF70);
  }

  *v75 = 3197;
  v57 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v58 = *(a1 + 72);
  if (v57 + 16 >= v58)
  {
    v57 = 0;
  }

  v59 = v57 + 16;
  if (v58 <= v59)
  {
    v60 = 0;
  }

  else
  {
    v60 = v59;
  }

  *(a1 + 88) = v60;
  v61 = *(a1 + 80);
  if (*(v61 + 8) <= 0xFFuLL)
  {
    goto LABEL_48;
  }

  atomic_exchange((*(v61 + 16) + 128), v60);
  *(a1 + 124) = 0;
  v62 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFE9, a3, &v82);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v82, *a2);
  result = IPC::Connection::sendSyncMessage(v62, v83, &v82, 0, &v80, v9);
  if (v81)
  {
    if (v81 != 1)
    {
      goto LABEL_38;
    }

    *a4 = v80;
    *(a4 + 16) = 1;
    goto LABEL_82;
  }

  v64 = v80;
  v80 = 0;
  if (*(v64 + 25) == 3194)
  {
    v65 = 11;
  }

  else
  {
    LOBYTE(v78) = 0;
    v79 = 0;
    IPC::Decoder::operator>><std::tuple<WTF::String>>(v64, &v78);
    if (v79 == 1)
    {
      v66 = v78;
      *a4 = v64;
      *(a4 + 8) = v66;
      *(a4 + 16) = 0;
      goto LABEL_82;
    }

    v65 = 14;
  }

  *a4 = v65;
  *(a4 + 16) = 1;
  IPC::Decoder::~Decoder(v64);
  bmalloc::api::tzoneFree(v67, v68);
LABEL_82:
  if (!v81)
  {
    v69 = v80;
    v80 = 0;
    if (v69)
    {
      IPC::Decoder::~Decoder(v69);
      bmalloc::api::tzoneFree(v72, v73);
    }
  }

  result = v82;
  v82 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v63);
    return bmalloc::api::tzoneFree(v70, v71);
  }

  return result;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateQueryEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
    if (v40 != 1)
    {
      return 16;
    }

    v18 = v39;
    if (v39 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E22E308);
    }

    v19 = v38;
    *v38 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      return 18;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = a3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(a1 + 72);
    v23 = *(a1 + 80);
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

    *(a1 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_44;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v23 + 16) + 128), v26) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
  if (v40 != 1)
  {
    return 16;
  }

  v10 = v39;
  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  v11 = v38;
  *v38 = 1213;
  v12 = v11 + 1;
  if (v10 - 2 >= (-v12 & 3 | 4uLL))
  {
    *(v12 + (-v12 & 3)) = *a2;
    v13 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v13 + 16 >= v15)
    {
      v13 = 0;
    }

    v16 = v13 + 16;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(a1 + 88) = v16;
    if (*(v14 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v14 + 16) + 128), v16) != 0x80000000 && !*(a1 + 124))
      {
        return 0;
      }

      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      v17 = 0;
      *(a1 + 124) = 0;
      return v17;
    }

    goto LABEL_44;
  }

  if ((v40 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    JUMPOUT(0x19E22E2E8);
  }

  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_44;
  }

  *v38 = 3197;
  v28 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v30 = *(a1 + 72);
  v29 = *(a1 + 80);
  if (v28 + 16 >= v30)
  {
    v28 = 0;
  }

  v31 = v28 + 16;
  if (v30 <= v31)
  {
    v31 = 0;
  }

  *(a1 + 88) = v31;
  if (*(v29 + 8) <= 0xFFuLL)
  {
    goto LABEL_44;
  }

  atomic_exchange((*(v29 + 16) + 128), v31);
  *(a1 + 124) = 0;
  v32 = *(a1 + 8);
  v33 = IPC::Encoder::operator new(0x238, v9);
  *v33 = 1213;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 1) = a3;
  *(v33 + 68) = 0;
  *(v33 + 70) = 0;
  *(v33 + 69) = 0;
  IPC::Encoder::encodeHeader(v33);
  v41 = v33;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v33, *a2);
  v17 = IPC::Connection::sendMessageImpl(v32, &v41, 1, 0);
  v35 = v41;
  v41 = 0;
  if (v35)
  {
    IPC::Encoder::~Encoder(v35, v34);
    bmalloc::api::tzoneFree(v36, v37);
  }

  return v17;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteQueryEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
    if (v40 != 1)
    {
      return 16;
    }

    v18 = v39;
    if (v39 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E22E658);
    }

    v19 = v38;
    *v38 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      return 18;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = a3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(a1 + 72);
    v23 = *(a1 + 80);
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

    *(a1 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_44;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v23 + 16) + 128), v26) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
  if (v40 != 1)
  {
    return 16;
  }

  v10 = v39;
  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  v11 = v38;
  *v38 = 1226;
  v12 = v11 + 1;
  if (v10 - 2 >= (-v12 & 3 | 4uLL))
  {
    *(v12 + (-v12 & 3)) = *a2;
    v13 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v13 + 16 >= v15)
    {
      v13 = 0;
    }

    v16 = v13 + 16;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(a1 + 88) = v16;
    if (*(v14 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v14 + 16) + 128), v16) != 0x80000000 && !*(a1 + 124))
      {
        return 0;
      }

      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      v17 = 0;
      *(a1 + 124) = 0;
      return v17;
    }

    goto LABEL_44;
  }

  if ((v40 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    JUMPOUT(0x19E22E638);
  }

  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_44;
  }

  *v38 = 3197;
  v28 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v30 = *(a1 + 72);
  v29 = *(a1 + 80);
  if (v28 + 16 >= v30)
  {
    v28 = 0;
  }

  v31 = v28 + 16;
  if (v30 <= v31)
  {
    v31 = 0;
  }

  *(a1 + 88) = v31;
  if (*(v29 + 8) <= 0xFFuLL)
  {
    goto LABEL_44;
  }

  atomic_exchange((*(v29 + 16) + 128), v31);
  *(a1 + 124) = 0;
  v32 = *(a1 + 8);
  v33 = IPC::Encoder::operator new(0x238, v9);
  *v33 = 1226;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 1) = a3;
  *(v33 + 68) = 0;
  *(v33 + 70) = 0;
  *(v33 + 69) = 0;
  IPC::Encoder::encodeHeader(v33);
  v41 = v33;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v33, *a2);
  v17 = IPC::Connection::sendMessageImpl(v32, &v41, 1, 0);
  v35 = v41;
  v41 = 0;
  if (v35)
  {
    IPC::Encoder::~Encoder(v35, v34);
    bmalloc::api::tzoneFree(v36, v37);
  }

  return v17;
}

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsQueryEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(a1 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(a1 + 64) != a3)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v74, v9);
    if (v76 != 1)
    {
      goto LABEL_60;
    }

    v46 = v75;
    if (v75 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E22EC98);
    }

    v47 = v74;
    *v74 = 3198;
    v48 = v47 + 1;
    if (v46 - 2 < (-v48 & 7 | 8uLL))
    {
      v55 = 18;
      goto LABEL_61;
    }

    v49 = -v48 & 7;
    *(v48 + v49) = a3;
    if (v49 != 7)
    {
      v49 = 6;
    }

    v50 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v52 = *(a1 + 72);
    v51 = *(a1 + 80);
    v53 = v49 + 10;
    if (v50 + 16 >= v52)
    {
      v50 = 0;
    }

    v54 = v53 + v50;
    if (v52 <= v54)
    {
      v54 = 0;
    }

    *(a1 + 88) = v54;
    if (*(v51 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v51 + 16) + 128), v54) == 0x80000000);
    *(a1 + 64) = a3;
  }

  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v74, v9);
  if ((v76 & 1) == 0)
  {
LABEL_60:
    v55 = 16;
LABEL_61:
    *a4 = v55;
    goto LABEL_62;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_92;
  }

  v13 = v74;
  v12 = v75;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a1 + 8), IdentifierInternal);
  if (!result)
  {
    v31 = 12;
LABEL_43:
    *a4 = v31;
LABEL_62:
    v43 = 1;
    goto LABEL_63;
  }

  if (v12 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E22EC70);
  }

  *v13 = 4086;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  v18 = v12 - 2 - v17;
  if (v12 - 2 >= v17)
  {
    *(v16 + (-v16 & 7)) = IdentifierInternal;
    v19 = v16 + v17;
    v20 = -v19 & 3 | 4;
    if (v18 >= v20)
    {
      *&v19[-v19 & 3] = *a2;
      v21 = v12 - v18 + v20;
      if (v21 <= 0x10)
      {
        v21 = 16;
      }

      v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v23 = *(a1 + 72);
      if (v22 + 16 >= v23)
      {
        v22 = 0;
      }

      v24 = v22 + v21;
      if (v23 <= v24)
      {
        v24 = 0;
      }

      *(a1 + 88) = v24;
      v25 = *(a1 + 80);
      if (*(v25 + 8) <= 0xFFuLL)
      {
        goto LABEL_47;
      }

      if (atomic_exchange((*(v25 + 16) + 128), v24) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      a2 = 0x80000000;
      while (1)
      {
        v26 = *(a1 + 80);
        if (*(v26 + 8) <= 0xFFuLL)
        {
          goto LABEL_47;
        }

        v27 = atomic_exchange(*(v26 + 16), 0x80000000uLL);
        v28 = *(a1 + 80);
        if (*(v28 + 8) <= 0xFFuLL)
        {
          goto LABEL_47;
        }

        if (!(v27 | atomic_load_explicit((*(v28 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
        {
          break;
        }

        if (*(a1 + 112) == 1)
        {
          v29 = IPC::Semaphore::waitFor((a1 + 104), v9);
          if (v29)
          {
            WTF::ApproximateTime::now(v29);
            if (v30 < v9)
            {
              continue;
            }
          }
        }

        result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
        v31 = 17;
        goto LABEL_43;
      }

      v32 = *(a1 + 80);
      if (*(v32 + 8) <= 0xFFuLL)
      {
        goto LABEL_47;
      }

      atomic_store(0, *(v32 + 16));
      *(a1 + 88) = 0;
      v33 = *(a1 + 80);
      v34 = *(v33 + 8);
      if (v34 <= 0xFF)
      {
        goto LABEL_47;
      }

      v35 = *(a1 + 72);
      v36 = *(v33 + 16);
      v37 = v34 - 256;
      if (v35)
      {
        v44 = v35 - 1;
        v45 = v37 >= v44;
        v37 = v44;
        if (!v45)
        {
          goto LABEL_47;
        }
      }

      a2 = IPC::Decoder::operator new(0x58, v15);
      if (*(IPC::Decoder::Decoder(a2, v36 + 256, v37, *(a1 + 64)) + 25) == 3197)
      {
        IPC::Decoder::~Decoder(a2);
        bmalloc::api::tzoneFree(v38, v39);
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFF6u, &v79, v9);
        v40 = v80;
        if (v80)
        {
          if (v80 == 255)
          {
            v73 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
            mpark::throw_bad_variant_access(v73);
          }

          v31 = v79;
          result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
          if (v40 == 1)
          {
            goto LABEL_43;
          }

LABEL_38:
          mpark::throw_bad_variant_access(result);
        }

        a2 = v79;
      }

      IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
      if (*(a2 + 50) == 3194)
      {
        v31 = 11;
LABEL_42:
        IPC::Decoder::~Decoder(a2);
        result = bmalloc::api::tzoneFree(v41, v42);
        goto LABEL_43;
      }

      result = IPC::Decoder::decode<std::tuple<BOOL>>(a2);
      if (result > 0xFFu)
      {
        v43 = 0;
        *a4 = a2;
        a4[8] = result;
LABEL_63:
        a4[16] = v43;
        return result;
      }

LABEL_48:
      v31 = 14;
      goto LABEL_42;
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v76 & 1) == 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v75 <= 1)
  {
LABEL_92:
    __break(0xC471u);
    JUMPOUT(0x19E22EC50);
  }

  *v74 = 3197;
  v56 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v57 = *(a1 + 72);
  if (v56 + 16 >= v57)
  {
    v56 = 0;
  }

  v58 = v56 + 16;
  if (v57 <= v58)
  {
    v59 = 0;
  }

  else
  {
    v59 = v58;
  }

  *(a1 + 88) = v59;
  v60 = *(a1 + 80);
  if (*(v60 + 8) <= 0xFFuLL)
  {
    goto LABEL_47;
  }

  atomic_exchange((*(v60 + 16) + 128), v59);
  *(a1 + 124) = 0;
  v61 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFF6, a3, &v79);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v79, *a2);
  result = IPC::Connection::sendSyncMessage(v61, v80, &v79, 0, &v77, v9);
  if (!v78)
  {
    v63 = v77;
    v77 = 0;
    if (*(v63 + 25) == 3194)
    {
      v64 = 11;
    }

    else
    {
      v67 = IPC::Decoder::decode<std::tuple<BOOL>>(v63);
      if (v67 >= 0x100u)
      {
        *a4 = v63;
        a4[8] = v67;
        a4[16] = 0;
        goto LABEL_81;
      }

      v64 = 14;
    }

    *a4 = v64;
    a4[16] = 1;
    IPC::Decoder::~Decoder(v63);
    bmalloc::api::tzoneFree(v65, v66);
    goto LABEL_81;
  }

  if (v78 != 1)
  {
    goto LABEL_38;
  }

  *a4 = v77;
  a4[16] = 1;
LABEL_81:
  if (!v78)
  {
    v68 = v77;
    v77 = 0;
    if (v68)
    {
      IPC::Decoder::~Decoder(v68);
      bmalloc::api::tzoneFree(v71, v72);
    }
  }

  result = v79;
  v79 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v62);
    return bmalloc::api::tzoneFree(v69, v70);
  }

  return result;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BeginQueryEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
    if (v45 != 1)
    {
      return 16;
    }

    v23 = v44;
    if (v44 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E22F038);
    }

    v24 = v43;
    *v43 = 3198;
    v25 = v24 + 1;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      return 18;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = a3;
    if (v26 != 7)
    {
      v26 = 6;
    }

    v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(a1 + 72);
    v28 = *(a1 + 80);
    v30 = v26 + 10;
    if (v27 + 16 >= v29)
    {
      v27 = 0;
    }

    v31 = v30 + v27;
    if (v29 <= v31)
    {
      v31 = 0;
    }

    *(a1 + 88) = v31;
    if (*(v28 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v28 + 16) + 128), v31) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
  if (v45 != 1)
  {
    return 16;
  }

  v10 = v44;
  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  v11 = v43;
  *v43 = 1160;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v17 = v10 - v14 + v16;
      if (v17 <= 0x10)
      {
        v17 = 16;
      }

      v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(a1 + 72);
      if (v18 + 16 >= v19)
      {
        v18 = 0;
      }

      v20 = v18 + v17;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(a1 + 88) = v20;
      v21 = *(a1 + 80);
      if (*(v21 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v21 + 16) + 128), v20) != 0x80000000 && !*(a1 + 124))
        {
          return 0;
        }

        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        v22 = 0;
        *(a1 + 124) = 0;
        return v22;
      }

      goto LABEL_47;
    }
  }

  if ((v45 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    JUMPOUT(0x19E22F018);
  }

  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_47;
  }

  *v43 = 3197;
  v33 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(a1 + 72);
  v34 = *(a1 + 80);
  if (v33 + 16 >= v35)
  {
    v33 = 0;
  }

  v36 = v33 + 16;
  if (v35 <= v36)
  {
    v36 = 0;
  }

  *(a1 + 88) = v36;
  if (*(v34 + 8) <= 0xFFuLL)
  {
    goto LABEL_47;
  }

  atomic_exchange((*(v34 + 16) + 128), v36);
  *(a1 + 124) = 0;
  v37 = *(a1 + 8);
  v38 = IPC::Encoder::operator new(0x238, v9);
  *v38 = 1160;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 1) = a3;
  *(v38 + 68) = 0;
  *(v38 + 70) = 0;
  *(v38 + 69) = 0;
  IPC::Encoder::encodeHeader(v38);
  v46 = v38;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, a2[1]);
  v22 = IPC::Connection::sendMessageImpl(v37, &v46, 1, 0);
  v40 = v46;
  v46 = 0;
  if (v40)
  {
    IPC::Encoder::~Encoder(v40, v39);
    bmalloc::api::tzoneFree(v41, v42);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::EndQueryEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
    if (v40 != 1)
    {
      return 16;
    }

    v18 = v39;
    if (v39 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E22F388);
    }

    v19 = v38;
    *v38 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      return 18;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = a3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(a1 + 72);
    v23 = *(a1 + 80);
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

    *(a1 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_44;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v23 + 16) + 128), v26) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
  if (v40 != 1)
  {
    return 16;
  }

  v10 = v39;
  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  v11 = v38;
  *v38 = 1254;
  v12 = v11 + 1;
  if (v10 - 2 >= (-v12 & 3 | 4uLL))
  {
    *(v12 + (-v12 & 3)) = *a2;
    v13 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v13 + 16 >= v15)
    {
      v13 = 0;
    }

    v16 = v13 + 16;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(a1 + 88) = v16;
    if (*(v14 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v14 + 16) + 128), v16) != 0x80000000 && !*(a1 + 124))
      {
        return 0;
      }

      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      v17 = 0;
      *(a1 + 124) = 0;
      return v17;
    }

    goto LABEL_44;
  }

  if ((v40 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    JUMPOUT(0x19E22F368);
  }

  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_44;
  }

  *v38 = 3197;
  v28 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v30 = *(a1 + 72);
  v29 = *(a1 + 80);
  if (v28 + 16 >= v30)
  {
    v28 = 0;
  }

  v31 = v28 + 16;
  if (v30 <= v31)
  {
    v31 = 0;
  }

  *(a1 + 88) = v31;
  if (*(v29 + 8) <= 0xFFuLL)
  {
    goto LABEL_44;
  }

  atomic_exchange((*(v29 + 16) + 128), v31);
  *(a1 + 124) = 0;
  v32 = *(a1 + 8);
  v33 = IPC::Encoder::operator new(0x238, v9);
  *v33 = 1254;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 1) = a3;
  *(v33 + 68) = 0;
  *(v33 + 70) = 0;
  *(v33 + 69) = 0;
  IPC::Encoder::encodeHeader(v33);
  v41 = v33;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v33, *a2);
  v17 = IPC::Connection::sendMessageImpl(v32, &v41, 1, 0);
  v35 = v41;
  v41 = 0;
  if (v35)
  {
    IPC::Encoder::~Encoder(v35, v34);
    bmalloc::api::tzoneFree(v36, v37);
  }

  return v17;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::QueryCounterEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
    if (v45 != 1)
    {
      return 16;
    }

    v23 = v44;
    if (v44 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E22F728);
    }

    v24 = v43;
    *v43 = 3198;
    v25 = v24 + 1;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      return 18;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = a3;
    if (v26 != 7)
    {
      v26 = 6;
    }

    v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(a1 + 72);
    v28 = *(a1 + 80);
    v30 = v26 + 10;
    if (v27 + 16 >= v29)
    {
      v27 = 0;
    }

    v31 = v30 + v27;
    if (v29 <= v31)
    {
      v31 = 0;
    }

    *(a1 + 88) = v31;
    if (*(v28 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v28 + 16) + 128), v31) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
  if (v45 != 1)
  {
    return 16;
  }

  v10 = v44;
  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  v11 = v43;
  *v43 = 1281;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v17 = v10 - v14 + v16;
      if (v17 <= 0x10)
      {
        v17 = 16;
      }

      v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(a1 + 72);
      if (v18 + 16 >= v19)
      {
        v18 = 0;
      }

      v20 = v18 + v17;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(a1 + 88) = v20;
      v21 = *(a1 + 80);
      if (*(v21 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v21 + 16) + 128), v20) != 0x80000000 && !*(a1 + 124))
        {
          return 0;
        }

        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        v22 = 0;
        *(a1 + 124) = 0;
        return v22;
      }

      goto LABEL_47;
    }
  }

  if ((v45 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    JUMPOUT(0x19E22F708);
  }

  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_47;
  }

  *v43 = 3197;
  v33 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(a1 + 72);
  v34 = *(a1 + 80);
  if (v33 + 16 >= v35)
  {
    v33 = 0;
  }

  v36 = v33 + 16;
  if (v35 <= v36)
  {
    v36 = 0;
  }

  *(a1 + 88) = v36;
  if (*(v34 + 8) <= 0xFFuLL)
  {
    goto LABEL_47;
  }

  atomic_exchange((*(v34 + 16) + 128), v36);
  *(a1 + 124) = 0;
  v37 = *(a1 + 8);
  v38 = IPC::Encoder::operator new(0x238, v9);
  *v38 = 1281;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 1) = a3;
  *(v38 + 68) = 0;
  *(v38 + 70) = 0;
  *(v38 + 69) = 0;
  IPC::Encoder::encodeHeader(v38);
  v46 = v38;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, a2[1]);
  v22 = IPC::Connection::sendMessageImpl(v37, &v46, 1, 0);
  v40 = v46;
  v46 = 0;
  if (v40)
  {
    IPC::Encoder::~Encoder(v40, v39);
    bmalloc::api::tzoneFree(v41, v42);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetQueryiEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(a1 + 64) != a3)
  {
    goto LABEL_51;
  }

LABEL_4:
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v78, v9);
  if ((v80 & 1) == 0)
  {
LABEL_62:
    v58 = 16;
LABEL_63:
    *a4 = v58;
    goto LABEL_64;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_94;
  }

  v13 = v78;
  v12 = v79;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a1 + 8), IdentifierInternal);
  if (!result)
  {
    v35 = 12;
LABEL_48:
    *a4 = v35;
LABEL_64:
    v45 = 1;
    goto LABEL_65;
  }

  if (v12 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E22FD6CLL);
  }

  *v13 = 4060;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  v18 = v12 - 2 - v17;
  if (v12 - 2 >= v17)
  {
    *(v16 + (-v16 & 7)) = IdentifierInternal;
    v19 = v16 + v17;
    v20 = -v19 & 3 | 4;
    v21 = v18 >= v20;
    v22 = v18 - v20;
    if (v21)
    {
      *&v19[-v19 & 3] = *a2;
      v23 = &v19[v20];
      v24 = -v23 & 3 | 4;
      if (v22 >= v24)
      {
        *&v23[-v23 & 3] = a2[1];
        v25 = v12 - v22 + v24;
        if (v25 <= 0x10)
        {
          v25 = 16;
        }

        v26 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v27 = *(a1 + 72);
        if (v26 + 16 >= v27)
        {
          v26 = 0;
        }

        v28 = v26 + v25;
        if (v27 <= v28)
        {
          v28 = 0;
        }

        *(a1 + 88) = v28;
        v29 = *(a1 + 80);
        if (*(v29 + 8) <= 0xFFuLL)
        {
          goto LABEL_50;
        }

        if (atomic_exchange((*(v29 + 16) + 128), v28) == 0x80000000 || *(a1 + 124))
        {
          if (*(a1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a1 + 100));
          }

          *(a1 + 124) = 0;
        }

        a2 = 0x80000000;
        while (1)
        {
          v30 = *(a1 + 80);
          if (*(v30 + 8) <= 0xFFuLL)
          {
            goto LABEL_50;
          }

          v31 = atomic_exchange(*(v30 + 16), 0x80000000uLL);
          v32 = *(a1 + 80);
          if (*(v32 + 8) <= 0xFFuLL)
          {
            goto LABEL_50;
          }

          if (!(v31 | atomic_load_explicit((*(v32 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
          {
            break;
          }

          if (*(a1 + 112) == 1)
          {
            v33 = IPC::Semaphore::waitFor((a1 + 104), v9);
            if (v33)
            {
              WTF::ApproximateTime::now(v33);
              if (v34 < v9)
              {
                continue;
              }
            }
          }

          result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
          v35 = 17;
          goto LABEL_48;
        }

        v36 = *(a1 + 80);
        if (*(v36 + 8) <= 0xFFuLL)
        {
          goto LABEL_50;
        }

        atomic_store(0, *(v36 + 16));
        *(a1 + 88) = 0;
        v37 = *(a1 + 80);
        v38 = *(v37 + 8);
        if (v38 <= 0xFF)
        {
          goto LABEL_50;
        }

        v39 = *(a1 + 72);
        v40 = *(v37 + 16);
        a3 = v38 - 256;
        if (v39)
        {
          v48 = v39 - 1;
          v21 = a3 >= v48;
          a3 = v48;
          if (!v21)
          {
            goto LABEL_50;
          }
        }

        v41 = IPC::Decoder::operator new(0x58, v15);
        if (*(IPC::Decoder::Decoder(v41, v40 + 256, a3, *(a1 + 64)) + 25) == 3197)
        {
          IPC::Decoder::~Decoder(v41);
          bmalloc::api::tzoneFree(v42, v43);
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFDCu, &v83, v9);
          v44 = v84;
          if (v84)
          {
            if (v84 == 255)
            {
              v77 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
              mpark::throw_bad_variant_access(v77);
            }

            v35 = v83;
            result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
            if (v44 != 1)
            {
LABEL_40:
              mpark::throw_bad_variant_access(result);
            }

            goto LABEL_48;
          }

          v41 = v83;
        }

        IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
        if (*(v41 + 25) == 3194)
        {
          v35 = 11;
        }

        else
        {
          result = IPC::Decoder::decode<std::tuple<int>>(v41);
          if ((result & 0xFF00000000) != 0)
          {
            v45 = 0;
            *a4 = v41;
            *(a4 + 8) = result;
LABEL_65:
            *(a4 + 16) = v45;
            return result;
          }

          v35 = 14;
        }

        IPC::Decoder::~Decoder(v41);
        result = bmalloc::api::tzoneFree(v46, v47);
        goto LABEL_48;
      }
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v80 & 1) == 0)
  {
    while (1)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v78, v9);
      if (v80 != 1)
      {
        goto LABEL_62;
      }

      v49 = v79;
      if (v79 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E22FD94);
      }

      v50 = v78;
      *v78 = 3198;
      v51 = v50 + 1;
      if (v49 - 2 < (-v51 & 7 | 8uLL))
      {
        break;
      }

      v52 = -v51 & 7;
      *(v51 + v52) = a3;
      if (v52 != 7)
      {
        v52 = 6;
      }

      v53 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v55 = *(a1 + 72);
      v54 = *(a1 + 80);
      v56 = v52 + 10;
      if (v53 + 16 >= v55)
      {
        v53 = 0;
      }

      v57 = v56 + v53;
      if (v55 <= v57)
      {
        v57 = 0;
      }

      *(a1 + 88) = v57;
      if (*(v54 + 8) > 0xFFuLL)
      {
        IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v54 + 16) + 128), v57) == 0x80000000);
        *(a1 + 64) = a3;
        goto LABEL_4;
      }
    }

    v58 = 18;
    goto LABEL_63;
  }

  if (v79 <= 1)
  {
LABEL_94:
    __break(0xC471u);
    JUMPOUT(0x19E22FD4CLL);
  }

  *v78 = 3197;
  v59 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v60 = *(a1 + 72);
  if (v59 + 16 >= v60)
  {
    v59 = 0;
  }

  v61 = v59 + 16;
  if (v60 <= v61)
  {
    v62 = 0;
  }

  else
  {
    v62 = v61;
  }

  *(a1 + 88) = v62;
  v63 = *(a1 + 80);
  if (*(v63 + 8) <= 0xFFuLL)
  {
    goto LABEL_50;
  }

  atomic_exchange((*(v63 + 16) + 128), v62);
  *(a1 + 124) = 0;
  v64 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFDC, a3, &v83);
  v65 = v83;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v83, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v65, a2[1]);
  result = IPC::Connection::sendSyncMessage(v64, v84, &v83, 0, &v81, v9);
  if (v82)
  {
    if (v82 != 1)
    {
      goto LABEL_40;
    }

    *a4 = v81;
    *(a4 + 16) = 1;
    goto LABEL_84;
  }

  v67 = v81;
  v81 = 0;
  if (*(v67 + 25) == 3194)
  {
    v68 = 11;
  }

  else
  {
    v69 = IPC::Decoder::decode<std::tuple<int>>(v67);
    if ((v69 & 0xFF00000000) != 0)
    {
      *a4 = v67;
      *(a4 + 8) = v69;
      *(a4 + 16) = 0;
      goto LABEL_84;
    }

    v68 = 14;
  }

  *a4 = v68;
  *(a4 + 16) = 1;
  IPC::Decoder::~Decoder(v67);
  bmalloc::api::tzoneFree(v70, v71);
LABEL_84:
  if (!v82)
  {
    v72 = v81;
    v81 = 0;
    if (v72)
    {
      IPC::Decoder::~Decoder(v72);
      bmalloc::api::tzoneFree(v75, v76);
    }
  }

  result = v83;
  v83 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v66);
    return bmalloc::api::tzoneFree(v73, v74);
  }

  return result;
}

uint64_t IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetQueryObjectiEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(a1 + 64) != a3)
  {
    goto LABEL_51;
  }

LABEL_4:
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v78, v9);
  if ((v80 & 1) == 0)
  {
LABEL_62:
    v58 = 16;
LABEL_63:
    *a4 = v58;
    goto LABEL_64;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_94;
  }

  v13 = v78;
  v12 = v79;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a1 + 8), IdentifierInternal);
  if (!result)
  {
    v35 = 12;
LABEL_48:
    *a4 = v35;
LABEL_64:
    v45 = 1;
    goto LABEL_65;
  }

  if (v12 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2303D8);
  }

  *v13 = 4057;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  v18 = v12 - 2 - v17;
  if (v12 - 2 >= v17)
  {
    *(v16 + (-v16 & 7)) = IdentifierInternal;
    v19 = v16 + v17;
    v20 = -v19 & 3 | 4;
    v21 = v18 >= v20;
    v22 = v18 - v20;
    if (v21)
    {
      *&v19[-v19 & 3] = *a2;
      v23 = &v19[v20];
      v24 = -v23 & 3 | 4;
      if (v22 >= v24)
      {
        *&v23[-v23 & 3] = a2[1];
        v25 = v12 - v22 + v24;
        if (v25 <= 0x10)
        {
          v25 = 16;
        }

        v26 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v27 = *(a1 + 72);
        if (v26 + 16 >= v27)
        {
          v26 = 0;
        }

        v28 = v26 + v25;
        if (v27 <= v28)
        {
          v28 = 0;
        }

        *(a1 + 88) = v28;
        v29 = *(a1 + 80);
        if (*(v29 + 8) <= 0xFFuLL)
        {
          goto LABEL_50;
        }

        if (atomic_exchange((*(v29 + 16) + 128), v28) == 0x80000000 || *(a1 + 124))
        {
          if (*(a1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a1 + 100));
          }

          *(a1 + 124) = 0;
        }

        a2 = 0x80000000;
        while (1)
        {
          v30 = *(a1 + 80);
          if (*(v30 + 8) <= 0xFFuLL)
          {
            goto LABEL_50;
          }

          v31 = atomic_exchange(*(v30 + 16), 0x80000000uLL);
          v32 = *(a1 + 80);
          if (*(v32 + 8) <= 0xFFuLL)
          {
            goto LABEL_50;
          }

          if (!(v31 | atomic_load_explicit((*(v32 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
          {
            break;
          }

          if (*(a1 + 112) == 1)
          {
            v33 = IPC::Semaphore::waitFor((a1 + 104), v9);
            if (v33)
            {
              WTF::ApproximateTime::now(v33);
              if (v34 < v9)
              {
                continue;
              }
            }
          }

          result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
          v35 = 17;
          goto LABEL_48;
        }

        v36 = *(a1 + 80);
        if (*(v36 + 8) <= 0xFFuLL)
        {
          goto LABEL_50;
        }

        atomic_store(0, *(v36 + 16));
        *(a1 + 88) = 0;
        v37 = *(a1 + 80);
        v38 = *(v37 + 8);
        if (v38 <= 0xFF)
        {
          goto LABEL_50;
        }

        v39 = *(a1 + 72);
        v40 = *(v37 + 16);
        a3 = v38 - 256;
        if (v39)
        {
          v48 = v39 - 1;
          v21 = a3 >= v48;
          a3 = v48;
          if (!v21)
          {
            goto LABEL_50;
          }
        }

        v41 = IPC::Decoder::operator new(0x58, v15);
        if (*(IPC::Decoder::Decoder(v41, v40 + 256, a3, *(a1 + 64)) + 25) == 3197)
        {
          IPC::Decoder::~Decoder(v41);
          bmalloc::api::tzoneFree(v42, v43);
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFD9u, &v83, v9);
          v44 = v84;
          if (v84)
          {
            if (v84 == 255)
            {
              v77 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
              mpark::throw_bad_variant_access(v77);
            }

            v35 = v83;
            result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
            if (v44 != 1)
            {
LABEL_40:
              mpark::throw_bad_variant_access(result);
            }

            goto LABEL_48;
          }

          v41 = v83;
        }

        IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
        if (*(v41 + 25) == 3194)
        {
          v35 = 11;
        }

        else
        {
          result = IPC::Decoder::decode<std::tuple<int>>(v41);
          if ((result & 0xFF00000000) != 0)
          {
            v45 = 0;
            *a4 = v41;
            *(a4 + 8) = result;
LABEL_65:
            *(a4 + 16) = v45;
            return result;
          }

          v35 = 14;
        }

        IPC::Decoder::~Decoder(v41);
        result = bmalloc::api::tzoneFree(v46, v47);
        goto LABEL_48;
      }
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v80 & 1) == 0)
  {
    while (1)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v78, v9);
      if (v80 != 1)
      {
        goto LABEL_62;
      }

      v49 = v79;
      if (v79 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E230400);
      }

      v50 = v78;
      *v78 = 3198;
      v51 = v50 + 1;
      if (v49 - 2 < (-v51 & 7 | 8uLL))
      {
        break;
      }

      v52 = -v51 & 7;
      *(v51 + v52) = a3;
      if (v52 != 7)
      {
        v52 = 6;
      }

      v53 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v55 = *(a1 + 72);
      v54 = *(a1 + 80);
      v56 = v52 + 10;
      if (v53 + 16 >= v55)
      {
        v53 = 0;
      }

      v57 = v56 + v53;
      if (v55 <= v57)
      {
        v57 = 0;
      }

      *(a1 + 88) = v57;
      if (*(v54 + 8) > 0xFFuLL)
      {
        IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v54 + 16) + 128), v57) == 0x80000000);
        *(a1 + 64) = a3;
        goto LABEL_4;
      }
    }

    v58 = 18;
    goto LABEL_63;
  }

  if (v79 <= 1)
  {
LABEL_94:
    __break(0xC471u);
    JUMPOUT(0x19E2303B8);
  }

  *v78 = 3197;
  v59 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v60 = *(a1 + 72);
  if (v59 + 16 >= v60)
  {
    v59 = 0;
  }

  v61 = v59 + 16;
  if (v60 <= v61)
  {
    v62 = 0;
  }

  else
  {
    v62 = v61;
  }

  *(a1 + 88) = v62;
  v63 = *(a1 + 80);
  if (*(v63 + 8) <= 0xFFuLL)
  {
    goto LABEL_50;
  }

  atomic_exchange((*(v63 + 16) + 128), v62);
  *(a1 + 124) = 0;
  v64 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFD9, a3, &v83);
  v65 = v83;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v83, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v65, a2[1]);
  result = IPC::Connection::sendSyncMessage(v64, v84, &v83, 0, &v81, v9);
  if (v82)
  {
    if (v82 != 1)
    {
      goto LABEL_40;
    }

    *a4 = v81;
    *(a4 + 16) = 1;
    goto LABEL_84;
  }

  v67 = v81;
  v81 = 0;
  if (*(v67 + 25) == 3194)
  {
    v68 = 11;
  }

  else
  {
    v69 = IPC::Decoder::decode<std::tuple<int>>(v67);
    if ((v69 & 0xFF00000000) != 0)
    {
      *a4 = v67;
      *(a4 + 8) = v69;
      *(a4 + 16) = 0;
      goto LABEL_84;
    }

    v68 = 14;
  }

  *a4 = v68;
  *(a4 + 16) = 1;
  IPC::Decoder::~Decoder(v67);
  bmalloc::api::tzoneFree(v70, v71);
LABEL_84:
  if (!v82)
  {
    v72 = v81;
    v81 = 0;
    if (v72)
    {
      IPC::Decoder::~Decoder(v72);
      bmalloc::api::tzoneFree(v75, v76);
    }
  }

  result = v83;
  v83 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v66);
    return bmalloc::api::tzoneFree(v73, v74);
  }

  return result;
}

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetQueryObjectui64EXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(a1 + 64) != a3)
  {
    goto LABEL_51;
  }

LABEL_4:
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v79, v9);
  if ((v81 & 1) == 0)
  {
LABEL_62:
    v59 = 16;
LABEL_63:
    *a4 = v59;
    goto LABEL_64;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_94;
  }

  v13 = v79;
  v12 = v80;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a1 + 8), IdentifierInternal);
  if (!result)
  {
    v35 = 12;
LABEL_48:
    *a4 = v35;
LABEL_64:
    v46 = 1;
    goto LABEL_65;
  }

  if (v12 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E230A3CLL);
  }

  *v13 = 4059;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  v18 = v12 - 2 - v17;
  if (v12 - 2 >= v17)
  {
    *(v16 + (-v16 & 7)) = IdentifierInternal;
    v19 = v16 + v17;
    v20 = -v19 & 3 | 4;
    v21 = v18 >= v20;
    v22 = v18 - v20;
    if (v21)
    {
      *&v19[-v19 & 3] = *a2;
      v23 = &v19[v20];
      v24 = -v23 & 3 | 4;
      if (v22 >= v24)
      {
        *&v23[-v23 & 3] = a2[1];
        v25 = v12 - v22 + v24;
        if (v25 <= 0x10)
        {
          v25 = 16;
        }

        v26 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v27 = *(a1 + 72);
        if (v26 + 16 >= v27)
        {
          v26 = 0;
        }

        v28 = v26 + v25;
        if (v27 <= v28)
        {
          v28 = 0;
        }

        *(a1 + 88) = v28;
        v29 = *(a1 + 80);
        if (*(v29 + 8) <= 0xFFuLL)
        {
          goto LABEL_50;
        }

        if (atomic_exchange((*(v29 + 16) + 128), v28) == 0x80000000 || *(a1 + 124))
        {
          if (*(a1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a1 + 100));
          }

          *(a1 + 124) = 0;
        }

        a2 = 0x80000000;
        while (1)
        {
          v30 = *(a1 + 80);
          if (*(v30 + 8) <= 0xFFuLL)
          {
            goto LABEL_50;
          }

          v31 = atomic_exchange(*(v30 + 16), 0x80000000uLL);
          v32 = *(a1 + 80);
          if (*(v32 + 8) <= 0xFFuLL)
          {
            goto LABEL_50;
          }

          if (!(v31 | atomic_load_explicit((*(v32 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
          {
            break;
          }

          if (*(a1 + 112) == 1)
          {
            v33 = IPC::Semaphore::waitFor((a1 + 104), v9);
            if (v33)
            {
              WTF::ApproximateTime::now(v33);
              if (v34 < v9)
              {
                continue;
              }
            }
          }

          result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
          v35 = 17;
          goto LABEL_48;
        }

        v36 = *(a1 + 80);
        if (*(v36 + 8) <= 0xFFuLL)
        {
          goto LABEL_50;
        }

        atomic_store(0, *(v36 + 16));
        *(a1 + 88) = 0;
        v37 = *(a1 + 80);
        v38 = *(v37 + 8);
        if (v38 <= 0xFF)
        {
          goto LABEL_50;
        }

        v39 = *(a1 + 72);
        v40 = *(v37 + 16);
        a3 = v38 - 256;
        if (v39)
        {
          v49 = v39 - 1;
          v21 = a3 >= v49;
          a3 = v49;
          if (!v21)
          {
            goto LABEL_50;
          }
        }

        v41 = IPC::Decoder::operator new(0x58, v15);
        if (*(IPC::Decoder::Decoder(v41, v40 + 256, a3, *(a1 + 64)) + 25) == 3197)
        {
          IPC::Decoder::~Decoder(v41);
          bmalloc::api::tzoneFree(v42, v43);
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFDBu, &v84, v9);
          v44 = v85;
          if (v85)
          {
            if (v85 == 255)
            {
              v78 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
              mpark::throw_bad_variant_access(v78);
            }

            v35 = v84;
            result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
            if (v44 != 1)
            {
LABEL_40:
              mpark::throw_bad_variant_access(result);
            }

            goto LABEL_48;
          }

          v41 = v84;
        }

        IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
        if (*(v41 + 25) == 3194)
        {
          v35 = 11;
        }

        else
        {
          result = IPC::Decoder::decode<std::tuple<unsigned long long>>(v41);
          if (v45)
          {
            v46 = 0;
            *a4 = v41;
            *(a4 + 8) = result;
LABEL_65:
            *(a4 + 16) = v46;
            return result;
          }

          v35 = 14;
        }

        IPC::Decoder::~Decoder(v41);
        result = bmalloc::api::tzoneFree(v47, v48);
        goto LABEL_48;
      }
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v81 & 1) == 0)
  {
    while (1)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v79, v9);
      if (v81 != 1)
      {
        goto LABEL_62;
      }

      v50 = v80;
      if (v80 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E230A64);
      }

      v51 = v79;
      *v79 = 3198;
      v52 = v51 + 1;
      if (v50 - 2 < (-v52 & 7 | 8uLL))
      {
        break;
      }

      v53 = -v52 & 7;
      *(v52 + v53) = a3;
      if (v53 != 7)
      {
        v53 = 6;
      }

      v54 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v56 = *(a1 + 72);
      v55 = *(a1 + 80);
      v57 = v53 + 10;
      if (v54 + 16 >= v56)
      {
        v54 = 0;
      }

      v58 = v57 + v54;
      if (v56 <= v58)
      {
        v58 = 0;
      }

      *(a1 + 88) = v58;
      if (*(v55 + 8) > 0xFFuLL)
      {
        IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v55 + 16) + 128), v58) == 0x80000000);
        *(a1 + 64) = a3;
        goto LABEL_4;
      }
    }

    v59 = 18;
    goto LABEL_63;
  }

  if (v80 <= 1)
  {
LABEL_94:
    __break(0xC471u);
    JUMPOUT(0x19E230A1CLL);
  }

  *v79 = 3197;
  v60 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v61 = *(a1 + 72);
  if (v60 + 16 >= v61)
  {
    v60 = 0;
  }

  v62 = v60 + 16;
  if (v61 <= v62)
  {
    v63 = 0;
  }

  else
  {
    v63 = v62;
  }

  *(a1 + 88) = v63;
  v64 = *(a1 + 80);
  if (*(v64 + 8) <= 0xFFuLL)
  {
    goto LABEL_50;
  }

  atomic_exchange((*(v64 + 16) + 128), v63);
  *(a1 + 124) = 0;
  v65 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFDB, a3, &v84);
  v66 = v84;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v84, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v66, a2[1]);
  result = IPC::Connection::sendSyncMessage(v65, v85, &v84, 0, &v82, v9);
  if (v83)
  {
    if (v83 != 1)
    {
      goto LABEL_40;
    }

    *a4 = v82;
    *(a4 + 16) = 1;
    goto LABEL_84;
  }

  v68 = v82;
  v82 = 0;
  if (*(v68 + 25) == 3194)
  {
    v69 = 11;
  }

  else
  {
    v70 = IPC::Decoder::decode<std::tuple<unsigned long long>>(v68);
    if (v67)
    {
      *a4 = v68;
      *(a4 + 8) = v70;
      *(a4 + 16) = 0;
      goto LABEL_84;
    }

    v69 = 14;
  }

  *a4 = v69;
  *(a4 + 16) = 1;
  IPC::Decoder::~Decoder(v68);
  bmalloc::api::tzoneFree(v71, v72);
LABEL_84:
  if (!v83)
  {
    v73 = v82;
    v82 = 0;
    if (v73)
    {
      IPC::Decoder::~Decoder(v73);
      bmalloc::api::tzoneFree(v76, v77);
    }
  }

  result = v84;
  v84 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v67);
    return bmalloc::api::tzoneFree(v74, v75);
  }

  return result;
}

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetInteger64EXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(a1 + 64) != a3)
  {
    goto LABEL_49;
  }

LABEL_4:
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v75, v9);
  if ((v77 & 1) == 0)
  {
LABEL_60:
    v56 = 16;
LABEL_61:
    *a4 = v56;
    goto LABEL_62;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_92;
  }

  v13 = v75;
  v12 = v76;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a1 + 8), IdentifierInternal);
  if (!result)
  {
    v31 = 12;
LABEL_46:
    *a4 = v31;
LABEL_62:
    v42 = 1;
    goto LABEL_63;
  }

  if (v12 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E23106CLL);
  }

  *v13 = 4049;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  v18 = v12 - 2 - v17;
  if (v12 - 2 >= v17)
  {
    *(v16 + (-v16 & 7)) = IdentifierInternal;
    v19 = v16 + v17;
    v20 = -v19 & 3 | 4;
    if (v18 >= v20)
    {
      *&v19[-v19 & 3] = *a2;
      v21 = v12 - v18 + v20;
      if (v21 <= 0x10)
      {
        v21 = 16;
      }

      v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v23 = *(a1 + 72);
      if (v22 + 16 >= v23)
      {
        v22 = 0;
      }

      v24 = v22 + v21;
      if (v23 <= v24)
      {
        v24 = 0;
      }

      *(a1 + 88) = v24;
      v25 = *(a1 + 80);
      if (*(v25 + 8) <= 0xFFuLL)
      {
        goto LABEL_48;
      }

      if (atomic_exchange((*(v25 + 16) + 128), v24) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      a2 = 0x80000000;
      while (1)
      {
        v26 = *(a1 + 80);
        if (*(v26 + 8) <= 0xFFuLL)
        {
          goto LABEL_48;
        }

        v27 = atomic_exchange(*(v26 + 16), 0x80000000uLL);
        v28 = *(a1 + 80);
        if (*(v28 + 8) <= 0xFFuLL)
        {
          goto LABEL_48;
        }

        if (!(v27 | atomic_load_explicit((*(v28 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
        {
          break;
        }

        if (*(a1 + 112) == 1)
        {
          v29 = IPC::Semaphore::waitFor((a1 + 104), v9);
          if (v29)
          {
            WTF::ApproximateTime::now(v29);
            if (v30 < v9)
            {
              continue;
            }
          }
        }

        result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
        v31 = 17;
        goto LABEL_46;
      }

      v32 = *(a1 + 80);
      if (*(v32 + 8) <= 0xFFuLL)
      {
        goto LABEL_48;
      }

      atomic_store(0, *(v32 + 16));
      *(a1 + 88) = 0;
      v33 = *(a1 + 80);
      v34 = *(v33 + 8);
      if (v34 <= 0xFF)
      {
        goto LABEL_48;
      }

      v35 = *(a1 + 72);
      v36 = *(v33 + 16);
      a3 = v34 - 256;
      if (v35)
      {
        v45 = v35 - 1;
        v46 = a3 >= v45;
        a3 = v45;
        if (!v46)
        {
          goto LABEL_48;
        }
      }

      v37 = IPC::Decoder::operator new(0x58, v15);
      if (*(IPC::Decoder::Decoder(v37, v36 + 256, a3, *(a1 + 64)) + 25) == 3197)
      {
        IPC::Decoder::~Decoder(v37);
        bmalloc::api::tzoneFree(v38, v39);
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFD1u, &v80, v9);
        v40 = v81;
        if (v81)
        {
          if (v81 == 255)
          {
            v74 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
            mpark::throw_bad_variant_access(v74);
          }

          v31 = v80;
          result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
          if (v40 != 1)
          {
LABEL_38:
            mpark::throw_bad_variant_access(result);
          }

          goto LABEL_46;
        }

        v37 = v80;
      }

      IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
      if (*(v37 + 25) == 3194)
      {
        v31 = 11;
      }

      else
      {
        result = IPC::Decoder::decode<std::tuple<long long>>(v37);
        if (v41)
        {
          v42 = 0;
          *a4 = v37;
          *(a4 + 8) = result;
LABEL_63:
          *(a4 + 16) = v42;
          return result;
        }

        v31 = 14;
      }

      IPC::Decoder::~Decoder(v37);
      result = bmalloc::api::tzoneFree(v43, v44);
      goto LABEL_46;
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v77 & 1) == 0)
  {
    while (1)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v75, v9);
      if (v77 != 1)
      {
        goto LABEL_60;
      }

      v47 = v76;
      if (v76 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E231094);
      }

      v48 = v75;
      *v75 = 3198;
      v49 = v48 + 1;
      if (v47 - 2 < (-v49 & 7 | 8uLL))
      {
        break;
      }

      v50 = -v49 & 7;
      *(v49 + v50) = a3;
      if (v50 != 7)
      {
        v50 = 6;
      }

      v51 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v53 = *(a1 + 72);
      v52 = *(a1 + 80);
      v54 = v50 + 10;
      if (v51 + 16 >= v53)
      {
        v51 = 0;
      }

      v55 = v54 + v51;
      if (v53 <= v55)
      {
        v55 = 0;
      }

      *(a1 + 88) = v55;
      if (*(v52 + 8) > 0xFFuLL)
      {
        IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v52 + 16) + 128), v55) == 0x80000000);
        *(a1 + 64) = a3;
        goto LABEL_4;
      }
    }

    v56 = 18;
    goto LABEL_61;
  }

  if (v76 <= 1)
  {
LABEL_92:
    __break(0xC471u);
    JUMPOUT(0x19E23104CLL);
  }

  *v75 = 3197;
  v57 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v58 = *(a1 + 72);
  if (v57 + 16 >= v58)
  {
    v57 = 0;
  }

  v59 = v57 + 16;
  if (v58 <= v59)
  {
    v60 = 0;
  }

  else
  {
    v60 = v59;
  }

  *(a1 + 88) = v60;
  v61 = *(a1 + 80);
  if (*(v61 + 8) <= 0xFFuLL)
  {
    goto LABEL_48;
  }

  atomic_exchange((*(v61 + 16) + 128), v60);
  *(a1 + 124) = 0;
  v62 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFD1, a3, &v80);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v80, *a2);
  result = IPC::Connection::sendSyncMessage(v62, v81, &v80, 0, &v78, v9);
  if (v79)
  {
    if (v79 != 1)
    {
      goto LABEL_38;
    }

    *a4 = v78;
    *(a4 + 16) = 1;
    goto LABEL_82;
  }

  v64 = v78;
  v78 = 0;
  if (*(v64 + 25) == 3194)
  {
    v65 = 11;
  }

  else
  {
    v66 = IPC::Decoder::decode<std::tuple<long long>>(v64);
    if (v63)
    {
      *a4 = v64;
      *(a4 + 8) = v66;
      *(a4 + 16) = 0;
      goto LABEL_82;
    }

    v65 = 14;
  }

  *a4 = v65;
  *(a4 + 16) = 1;
  IPC::Decoder::~Decoder(v64);
  bmalloc::api::tzoneFree(v67, v68);
LABEL_82:
  if (!v79)
  {
    v69 = v78;
    v78 = 0;
    if (v69)
    {
      IPC::Decoder::~Decoder(v69);
      bmalloc::api::tzoneFree(v72, v73);
    }
  }

  result = v80;
  v80 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v63);
    return bmalloc::api::tzoneFree(v70, v71);
  }

  return result;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::EnableiOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
    if (v45 != 1)
    {
      return 16;
    }

    v23 = v44;
    if (v44 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E231434);
    }

    v24 = v43;
    *v43 = 3198;
    v25 = v24 + 1;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      return 18;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = a3;
    if (v26 != 7)
    {
      v26 = 6;
    }

    v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(a1 + 72);
    v28 = *(a1 + 80);
    v30 = v26 + 10;
    if (v27 + 16 >= v29)
    {
      v27 = 0;
    }

    v31 = v30 + v27;
    if (v29 <= v31)
    {
      v31 = 0;
    }

    *(a1 + 88) = v31;
    if (*(v28 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v28 + 16) + 128), v31) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
  if (v45 != 1)
  {
    return 16;
  }

  v10 = v44;
  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  v11 = v43;
  *v43 = 1252;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v17 = v10 - v14 + v16;
      if (v17 <= 0x10)
      {
        v17 = 16;
      }

      v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(a1 + 72);
      if (v18 + 16 >= v19)
      {
        v18 = 0;
      }

      v20 = v18 + v17;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(a1 + 88) = v20;
      v21 = *(a1 + 80);
      if (*(v21 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v21 + 16) + 128), v20) != 0x80000000 && !*(a1 + 124))
        {
          return 0;
        }

        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        v22 = 0;
        *(a1 + 124) = 0;
        return v22;
      }

      goto LABEL_47;
    }
  }

  if ((v45 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    JUMPOUT(0x19E231414);
  }

  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_47;
  }

  *v43 = 3197;
  v33 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(a1 + 72);
  v34 = *(a1 + 80);
  if (v33 + 16 >= v35)
  {
    v33 = 0;
  }

  v36 = v33 + 16;
  if (v35 <= v36)
  {
    v36 = 0;
  }

  *(a1 + 88) = v36;
  if (*(v34 + 8) <= 0xFFuLL)
  {
    goto LABEL_47;
  }

  atomic_exchange((*(v34 + 16) + 128), v36);
  *(a1 + 124) = 0;
  v37 = *(a1 + 8);
  v38 = IPC::Encoder::operator new(0x238, v9);
  *v38 = 1252;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 1) = a3;
  *(v38 + 68) = 0;
  *(v38 + 70) = 0;
  *(v38 + 69) = 0;
  IPC::Encoder::encodeHeader(v38);
  v46 = v38;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, a2[1]);
  v22 = IPC::Connection::sendMessageImpl(v37, &v46, 1, 0);
  v40 = v46;
  v46 = 0;
  if (v40)
  {
    IPC::Encoder::~Encoder(v40, v39);
    bmalloc::api::tzoneFree(v41, v42);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DisableiOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
    if (v45 != 1)
    {
      return 16;
    }

    v23 = v44;
    if (v44 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2317D4);
    }

    v24 = v43;
    *v43 = 3198;
    v25 = v24 + 1;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      return 18;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = a3;
    if (v26 != 7)
    {
      v26 = 6;
    }

    v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(a1 + 72);
    v28 = *(a1 + 80);
    v30 = v26 + 10;
    if (v27 + 16 >= v29)
    {
      v27 = 0;
    }

    v31 = v30 + v27;
    if (v29 <= v31)
    {
      v31 = 0;
    }

    *(a1 + 88) = v31;
    if (*(v28 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v28 + 16) + 128), v31) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
  if (v45 != 1)
  {
    return 16;
  }

  v10 = v44;
  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  v11 = v43;
  *v43 = 1240;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v17 = v10 - v14 + v16;
      if (v17 <= 0x10)
      {
        v17 = 16;
      }

      v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(a1 + 72);
      if (v18 + 16 >= v19)
      {
        v18 = 0;
      }

      v20 = v18 + v17;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(a1 + 88) = v20;
      v21 = *(a1 + 80);
      if (*(v21 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v21 + 16) + 128), v20) != 0x80000000 && !*(a1 + 124))
        {
          return 0;
        }

        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        v22 = 0;
        *(a1 + 124) = 0;
        return v22;
      }

      goto LABEL_47;
    }
  }

  if ((v45 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    JUMPOUT(0x19E2317B4);
  }

  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_47;
  }

  *v43 = 3197;
  v33 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(a1 + 72);
  v34 = *(a1 + 80);
  if (v33 + 16 >= v35)
  {
    v33 = 0;
  }

  v36 = v33 + 16;
  if (v35 <= v36)
  {
    v36 = 0;
  }

  *(a1 + 88) = v36;
  if (*(v34 + 8) <= 0xFFuLL)
  {
    goto LABEL_47;
  }

  atomic_exchange((*(v34 + 16) + 128), v36);
  *(a1 + 124) = 0;
  v37 = *(a1 + 8);
  v38 = IPC::Encoder::operator new(0x238, v9);
  *v38 = 1240;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 1) = a3;
  *(v38 + 68) = 0;
  *(v38 + 70) = 0;
  *(v38 + 69) = 0;
  IPC::Encoder::encodeHeader(v38);
  v46 = v38;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, a2[1]);
  v22 = IPC::Connection::sendMessageImpl(v37, &v46, 1, 0);
  v40 = v46;
  v46 = 0;
  if (v40)
  {
    IPC::Encoder::~Encoder(v40, v39);
    bmalloc::api::tzoneFree(v41, v42);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendEquationiOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
    if (v45 != 1)
    {
      return 16;
    }

    v23 = v44;
    if (v44 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E231B74);
    }

    v24 = v43;
    *v43 = 3198;
    v25 = v24 + 1;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      return 18;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = a3;
    if (v26 != 7)
    {
      v26 = 6;
    }

    v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(a1 + 72);
    v28 = *(a1 + 80);
    v30 = v26 + 10;
    if (v27 + 16 >= v29)
    {
      v27 = 0;
    }

    v31 = v30 + v27;
    if (v29 <= v31)
    {
      v31 = 0;
    }

    *(a1 + 88) = v31;
    if (*(v28 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v28 + 16) + 128), v31) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
  if (v45 != 1)
  {
    return 16;
  }

  v10 = v44;
  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  v11 = v43;
  *v43 = 1176;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v17 = v10 - v14 + v16;
      if (v17 <= 0x10)
      {
        v17 = 16;
      }

      v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(a1 + 72);
      if (v18 + 16 >= v19)
      {
        v18 = 0;
      }

      v20 = v18 + v17;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(a1 + 88) = v20;
      v21 = *(a1 + 80);
      if (*(v21 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v21 + 16) + 128), v20) != 0x80000000 && !*(a1 + 124))
        {
          return 0;
        }

        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        v22 = 0;
        *(a1 + 124) = 0;
        return v22;
      }

      goto LABEL_47;
    }
  }

  if ((v45 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    JUMPOUT(0x19E231B54);
  }

  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_47;
  }

  *v43 = 3197;
  v33 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(a1 + 72);
  v34 = *(a1 + 80);
  if (v33 + 16 >= v35)
  {
    v33 = 0;
  }

  v36 = v33 + 16;
  if (v35 <= v36)
  {
    v36 = 0;
  }

  *(a1 + 88) = v36;
  if (*(v34 + 8) <= 0xFFuLL)
  {
    goto LABEL_47;
  }

  atomic_exchange((*(v34 + 16) + 128), v36);
  *(a1 + 124) = 0;
  v37 = *(a1 + 8);
  v38 = IPC::Encoder::operator new(0x238, v9);
  *v38 = 1176;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 1) = a3;
  *(v38 + 68) = 0;
  *(v38 + 70) = 0;
  *(v38 + 69) = 0;
  IPC::Encoder::encodeHeader(v38);
  v46 = v38;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, a2[1]);
  v22 = IPC::Connection::sendMessageImpl(v37, &v46, 1, 0);
  v40 = v46;
  v46 = 0;
  if (v40)
  {
    IPC::Encoder::~Encoder(v40, v39);
    bmalloc::api::tzoneFree(v41, v42);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendEquationSeparateiOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v46, v7);
    if (v48 != 1)
    {
      return 16;
    }

    v26 = v47;
    if (v47 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E231F44);
    }

    v27 = v46;
    *v46 = 3198;
    v28 = v27 + 1;
    if (v26 - 2 < (-v28 & 7 | 8uLL))
    {
      return 18;
    }

    v29 = -v28 & 7;
    *(v28 + v29) = a3;
    if (v29 != 7)
    {
      v29 = 6;
    }

    v30 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(a1 + 72);
    v31 = *(a1 + 80);
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

    *(a1 + 88) = v34;
    if (*(v31 + 8) <= 0xFFuLL)
    {
      goto LABEL_48;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v31 + 16) + 128), v34) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v46, v7);
  if (v48 != 1)
  {
    return 16;
  }

  v10 = v47;
  if (v47 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  v11 = v46;
  *v46 = 1175;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    v17 = v14 - v16;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v18 = v15 + v16;
      v19 = -v18 & 3 | 4;
      if (v17 >= v19)
      {
        *(v18 + (-v18 & 3)) = a2[2];
        v20 = v10 - v17 + v19;
        if (v20 <= 0x10)
        {
          v20 = 16;
        }

        v21 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v22 = *(a1 + 72);
        if (v21 + 16 >= v22)
        {
          v21 = 0;
        }

        v23 = v21 + v20;
        if (v22 <= v23)
        {
          v23 = 0;
        }

        *(a1 + 88) = v23;
        v24 = *(a1 + 80);
        if (*(v24 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v24 + 16) + 128), v23) != 0x80000000 && !*(a1 + 124))
          {
            return 0;
          }

          if (*(a1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a1 + 100));
          }

          v25 = 0;
          *(a1 + 124) = 0;
          return v25;
        }

        goto LABEL_48;
      }
    }
  }

  if ((v48 & 1) == 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    JUMPOUT(0x19E231F24);
  }

  if (v47 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  *v46 = 3197;
  v36 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v38 = *(a1 + 72);
  v37 = *(a1 + 80);
  if (v36 + 16 >= v38)
  {
    v36 = 0;
  }

  v39 = v36 + 16;
  if (v38 <= v39)
  {
    v39 = 0;
  }

  *(a1 + 88) = v39;
  if (*(v37 + 8) <= 0xFFuLL)
  {
    goto LABEL_48;
  }

  atomic_exchange((*(v37 + 16) + 128), v39);
  *(a1 + 124) = 0;
  v40 = *(a1 + 8);
  v41 = IPC::Encoder::operator new(0x238, v9);
  *v41 = 1175;
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 1) = a3;
  *(v41 + 68) = 0;
  *(v41 + 70) = 0;
  *(v41 + 69) = 0;
  IPC::Encoder::encodeHeader(v41);
  v49 = v41;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, a2[1]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, a2[2]);
  v25 = IPC::Connection::sendMessageImpl(v40, &v49, 1, 0);
  v43 = v49;
  v49 = 0;
  if (v43)
  {
    IPC::Encoder::~Encoder(v43, v42);
    bmalloc::api::tzoneFree(v44, v45);
  }

  return v25;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendFunciOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v46, v7);
    if (v48 != 1)
    {
      return 16;
    }

    v26 = v47;
    if (v47 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E232314);
    }

    v27 = v46;
    *v46 = 3198;
    v28 = v27 + 1;
    if (v26 - 2 < (-v28 & 7 | 8uLL))
    {
      return 18;
    }

    v29 = -v28 & 7;
    *(v28 + v29) = a3;
    if (v29 != 7)
    {
      v29 = 6;
    }

    v30 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(a1 + 72);
    v31 = *(a1 + 80);
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

    *(a1 + 88) = v34;
    if (*(v31 + 8) <= 0xFFuLL)
    {
      goto LABEL_48;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v31 + 16) + 128), v34) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v46, v7);
  if (v48 != 1)
  {
    return 16;
  }

  v10 = v47;
  if (v47 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  v11 = v46;
  *v46 = 1180;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    v17 = v14 - v16;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v18 = v15 + v16;
      v19 = -v18 & 3 | 4;
      if (v17 >= v19)
      {
        *(v18 + (-v18 & 3)) = a2[2];
        v20 = v10 - v17 + v19;
        if (v20 <= 0x10)
        {
          v20 = 16;
        }

        v21 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v22 = *(a1 + 72);
        if (v21 + 16 >= v22)
        {
          v21 = 0;
        }

        v23 = v21 + v20;
        if (v22 <= v23)
        {
          v23 = 0;
        }

        *(a1 + 88) = v23;
        v24 = *(a1 + 80);
        if (*(v24 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v24 + 16) + 128), v23) != 0x80000000 && !*(a1 + 124))
          {
            return 0;
          }

          if (*(a1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a1 + 100));
          }

          v25 = 0;
          *(a1 + 124) = 0;
          return v25;
        }

        goto LABEL_48;
      }
    }
  }

  if ((v48 & 1) == 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    JUMPOUT(0x19E2322F4);
  }

  if (v47 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  *v46 = 3197;
  v36 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v38 = *(a1 + 72);
  v37 = *(a1 + 80);
  if (v36 + 16 >= v38)
  {
    v36 = 0;
  }

  v39 = v36 + 16;
  if (v38 <= v39)
  {
    v39 = 0;
  }

  *(a1 + 88) = v39;
  if (*(v37 + 8) <= 0xFFuLL)
  {
    goto LABEL_48;
  }

  atomic_exchange((*(v37 + 16) + 128), v39);
  *(a1 + 124) = 0;
  v40 = *(a1 + 8);
  v41 = IPC::Encoder::operator new(0x238, v9);
  *v41 = 1180;
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 1) = a3;
  *(v41 + 68) = 0;
  *(v41 + 70) = 0;
  *(v41 + 69) = 0;
  IPC::Encoder::encodeHeader(v41);
  v49 = v41;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, a2[1]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, a2[2]);
  v25 = IPC::Connection::sendMessageImpl(v40, &v49, 1, 0);
  v43 = v49;
  v49 = 0;
  if (v43)
  {
    IPC::Encoder::~Encoder(v43, v42);
    bmalloc::api::tzoneFree(v44, v45);
  }

  return v25;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendFuncSeparateiOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v54, v7);
    if (v56 != 1)
    {
      return 16;
    }

    v34 = v55;
    if (v55 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E232744);
    }

    v35 = v54;
    *v54 = 3198;
    v36 = v35 + 1;
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      return 18;
    }

    v37 = -v36 & 7;
    *(v36 + v37) = a3;
    if (v37 != 7)
    {
      v37 = 6;
    }

    v38 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v40 = *(a1 + 72);
    v39 = *(a1 + 80);
    v41 = v37 + 10;
    if (v38 + 16 >= v40)
    {
      v38 = 0;
    }

    v42 = v41 + v38;
    if (v40 <= v42)
    {
      v42 = 0;
    }

    *(a1 + 88) = v42;
    if (*(v39 + 8) <= 0xFFuLL)
    {
      goto LABEL_51;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v39 + 16) + 128), v42) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v54, v7);
  if (v56 != 1)
  {
    return 16;
  }

  v10 = v55;
  if (v55 <= 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  v11 = v54;
  *v54 = 1179;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    v17 = v14 >= v16;
    v18 = v14 - v16;
    if (v17)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v19 = v15 + v16;
      v20 = -v19 & 3 | 4;
      v21 = v18 - v20;
      if (v18 >= v20)
      {
        *(v19 + (-v19 & 3)) = a2[2];
        v22 = v19 + v20;
        v23 = -(v19 + v20);
        v24 = v23 & 3 | 4;
        v25 = v21 - v24;
        if (v21 >= v24)
        {
          *(v22 + (v23 & 3)) = a2[3];
          v26 = v22 + v24;
          v27 = -v26 & 3 | 4;
          if (v25 >= v27)
          {
            *(v26 + (-v26 & 3)) = a2[4];
            v28 = v10 - v25 + v27;
            if (v28 <= 0x10)
            {
              v28 = 16;
            }

            v29 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v30 = *(a1 + 72);
            if (v29 + 16 >= v30)
            {
              v29 = 0;
            }

            v31 = v29 + v28;
            if (v30 <= v31)
            {
              v31 = 0;
            }

            *(a1 + 88) = v31;
            v32 = *(a1 + 80);
            if (*(v32 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v32 + 16) + 128), v31) != 0x80000000 && !*(a1 + 124))
              {
                return 0;
              }

              if (*(a1 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(a1 + 100));
              }

              v33 = 0;
              *(a1 + 124) = 0;
              return v33;
            }

            goto LABEL_51;
          }
        }
      }
    }
  }

  if ((v56 & 1) == 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    JUMPOUT(0x19E232724);
  }

  if (v55 <= 1)
  {
    __break(0xC471u);
    goto LABEL_51;
  }

  *v54 = 3197;
  v44 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v46 = *(a1 + 72);
  v45 = *(a1 + 80);
  if (v44 + 16 >= v46)
  {
    v44 = 0;
  }

  v47 = v44 + 16;
  if (v46 <= v47)
  {
    v47 = 0;
  }

  *(a1 + 88) = v47;
  if (*(v45 + 8) <= 0xFFuLL)
  {
    goto LABEL_51;
  }

  atomic_exchange((*(v45 + 16) + 128), v47);
  *(a1 + 124) = 0;
  v48 = *(a1 + 8);
  v49 = IPC::Encoder::operator new(0x238, v9);
  *v49 = 1179;
  *(v49 + 2) = 0;
  *(v49 + 3) = 0;
  *(v49 + 1) = a3;
  *(v49 + 68) = 0;
  *(v49 + 70) = 0;
  *(v49 + 69) = 0;
  IPC::Encoder::encodeHeader(v49);
  v57 = v49;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v49, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v49, a2[1]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v49, a2[2]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v49, a2[3]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v49, a2[4]);
  v33 = IPC::Connection::sendMessageImpl(v48, &v57, 1, 0);
  v51 = v57;
  v57 = 0;
  if (v51)
  {
    IPC::Encoder::~Encoder(v51, v50);
    bmalloc::api::tzoneFree(v52, v53);
  }

  return v33;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ColorMaskiOES,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v44, v7);
    if (v46 != 1)
    {
      return 16;
    }

    v24 = v45;
    if (v45 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E232B30);
    }

    v25 = v44;
    *v44 = 3198;
    v26 = v25 + 1;
    if (v24 - 2 < (-v26 & 7 | 8uLL))
    {
      return 18;
    }

    v27 = -v26 & 7;
    *(v26 + v27) = a3;
    if (v27 != 7)
    {
      v27 = 6;
    }

    v28 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(a1 + 72);
    v29 = *(a1 + 80);
    v31 = v27 + 10;
    if (v28 + 16 >= v30)
    {
      v28 = 0;
    }

    v32 = v31 + v28;
    if (v30 <= v32)
    {
      v32 = 0;
    }

    *(a1 + 88) = v32;
    if (*(v29 + 8) <= 0xFFuLL)
    {
      goto LABEL_50;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v29 + 16) + 128), v32) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v44, v7);
  if (v46 != 1)
  {
    return 16;
  }

  v10 = v45;
  if (v45 <= 1)
  {
    __break(0xC471u);
    goto LABEL_51;
  }

  v11 = v44;
  *v44 = 1195;
  v12 = v11 + 1;
  v13 = v10 - 2;
  v14 = -v12 & 3 | 4;
  if (v10 - 2 >= v14)
  {
    v15 = -v12 & 3;
    *(v12 + v15) = *a2;
    if (v13 != v14)
    {
      v16 = v12 + v14;
      *v16 = *(a2 + 4);
      v17 = (v15 ^ 0xFFFFFFFFFFFFFFFBLL) + v13;
      if (v17)
      {
        v16[1] = *(a2 + 5);
        if (v17 != 1)
        {
          v16[2] = *(a2 + 6);
          if (v17 != 2)
          {
            v16[3] = *(a2 + 7);
            v18 = v10 - v17 + 3;
            if (v18 <= 0x10)
            {
              v18 = 16;
            }

            v19 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v20 = *(a1 + 72);
            if (v19 + 16 >= v20)
            {
              v19 = 0;
            }

            v21 = v19 + v18;
            if (v20 <= v21)
            {
              v21 = 0;
            }

            *(a1 + 88) = v21;
            v22 = *(a1 + 80);
            if (*(v22 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v22 + 16) + 128), v21) != 0x80000000 && !*(a1 + 124))
              {
                return 0;
              }

              if (*(a1 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(a1 + 100));
              }

              v23 = 0;
              *(a1 + 124) = 0;
              return v23;
            }

            goto LABEL_50;
          }
        }
      }
    }
  }

  if ((v46 & 1) == 0)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    JUMPOUT(0x19E232B10);
  }

  if (v45 <= 1)
  {
    __break(0xC471u);
    goto LABEL_50;
  }

  *v44 = 3197;
  v34 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v36 = *(a1 + 72);
  v35 = *(a1 + 80);
  if (v34 + 16 >= v36)
  {
    v34 = 0;
  }

  v37 = v34 + 16;
  if (v36 <= v37)
  {
    v37 = 0;
  }

  *(a1 + 88) = v37;
  if (*(v35 + 8) <= 0xFFuLL)
  {
    goto LABEL_50;
  }

  atomic_exchange((*(v35 + 16) + 128), v37);
  *(a1 + 124) = 0;
  v38 = *(a1 + 8);
  v39 = IPC::Encoder::operator new(0x238, v9);
  *v39 = 1195;
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 1) = a3;
  *(v39 + 68) = 0;
  *(v39 + 70) = 0;
  *(v39 + 69) = 0;
  IPC::Encoder::encodeHeader(v39);
  v47 = v39;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v39, *a2);
  IPC::Encoder::operator<<<BOOL &>(v39, (a2 + 4));
  IPC::Encoder::operator<<<BOOL &>(v39, (a2 + 5));
  IPC::Encoder::operator<<<BOOL &>(v39, (a2 + 6));
  IPC::Encoder::operator<<<BOOL &>(v39, (a2 + 7));
  v23 = IPC::Connection::sendMessageImpl(v38, &v47, 1, 0);
  v41 = v47;
  v47 = 0;
  if (v41)
  {
    IPC::Encoder::~Encoder(v41, v40);
    bmalloc::api::tzoneFree(v42, v43);
  }

  return v23;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawArraysInstancedBaseInstanceANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v54, v7);
    if (v56 != 1)
    {
      return 16;
    }

    v44 = v55;
    if (v55 <= 1)
    {
LABEL_51:
      __break(0xC471u);
      JUMPOUT(0x19E232F40);
    }

    v45 = v54;
    *v54 = 3198;
    v46 = v45 + 1;
    if (v44 - 2 < (-v46 & 7 | 8uLL))
    {
      return 18;
    }

    v47 = -v46 & 7;
    *(v46 + v47) = a3;
    if (v47 != 7)
    {
      v47 = 6;
    }

    v48 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v50 = *(a1 + 72);
    v49 = *(a1 + 80);
    v51 = v47 + 10;
    if (v48 + 16 >= v50)
    {
      v48 = 0;
    }

    v52 = v51 + v48;
    if (v50 <= v52)
    {
      v52 = 0;
    }

    *(a1 + 88) = v52;
    if (*(v49 + 8) <= 0xFFuLL)
    {
      goto LABEL_50;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v49 + 16) + 128), v52) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v54, v7);
  if (v56 != 1)
  {
    return 16;
  }

  v10 = v55;
  if (v55 <= 1)
  {
    goto LABEL_51;
  }

  v11 = v54;
  *v54 = 1243;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    v17 = v14 >= v16;
    v18 = v14 - v16;
    if (v17)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v19 = v15 + v16;
      v20 = -v19 & 3 | 4;
      v21 = v18 - v20;
      if (v18 >= v20)
      {
        *(v19 + (-v19 & 3)) = a2[2];
        v22 = v19 + v20;
        v23 = -(v19 + v20);
        v24 = v23 & 3 | 4;
        v25 = v21 - v24;
        if (v21 >= v24)
        {
          *(v22 + (v23 & 3)) = a2[3];
          v26 = v22 + v24;
          v27 = -v26 & 3 | 4;
          if (v25 >= v27)
          {
            *(v26 + (-v26 & 3)) = a2[4];
            v28 = v10 - v25 + v27;
            if (v28 <= 0x10)
            {
              v28 = 16;
            }

            v29 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v30 = *(a1 + 72);
            if (v29 + 16 >= v30)
            {
              v29 = 0;
            }

            v31 = v29 + v28;
            if (v30 <= v31)
            {
              v31 = 0;
            }

            *(a1 + 88) = v31;
            v32 = *(a1 + 80);
            if (*(v32 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v32 + 16) + 128), v31) != 0x80000000 && !*(a1 + 124))
              {
                return 0;
              }

              if (*(a1 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(a1 + 100));
              }

              v33 = 0;
              *(a1 + 124) = 0;
              return v33;
            }

            goto LABEL_50;
          }
        }
      }
    }
  }

  if ((v56 & 1) == 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v55 <= 1)
  {
    __break(0xC471u);
    goto LABEL_50;
  }

  *v54 = 3197;
  v34 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v36 = *(a1 + 72);
  v35 = *(a1 + 80);
  if (v34 + 16 >= v36)
  {
    v34 = 0;
  }

  v37 = v34 + 16;
  if (v36 <= v37)
  {
    v37 = 0;
  }

  *(a1 + 88) = v37;
  if (*(v35 + 8) <= 0xFFuLL)
  {
    goto LABEL_50;
  }

  atomic_exchange((*(v35 + 16) + 128), v37);
  *(a1 + 124) = 0;
  v38 = *(a1 + 8);
  v39 = IPC::Encoder::operator new(0x238, v9);
  *v39 = 1243;
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 1) = a3;
  *(v39 + 68) = 0;
  *(v39 + 70) = 0;
  *(v39 + 69) = 0;
  IPC::Encoder::encodeHeader(v39);
  v57 = v39;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v39, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v39, a2[1]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v39, a2[2]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v39, a2[3]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v39, a2[4]);
  v33 = IPC::Connection::sendMessageImpl(v38, &v57, 1, 0);
  v41 = v57;
  v57 = 0;
  if (v41)
  {
    IPC::Encoder::~Encoder(v41, v40);
    bmalloc::api::tzoneFree(v42, v43);
  }

  return v33;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawElementsInstancedBaseVertexBaseInstanceANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v60, v7);
    if (v62 != 1)
    {
      return 16;
    }

    v50 = v61;
    if (v61 <= 1)
    {
LABEL_55:
      __break(0xC471u);
      JUMPOUT(0x19E2333D0);
    }

    v51 = v60;
    *v60 = 3198;
    v52 = v51 + 1;
    if (v50 - 2 < (-v52 & 7 | 8uLL))
    {
      return 18;
    }

    v53 = -v52 & 7;
    *(v52 + v53) = a3;
    if (v53 != 7)
    {
      v53 = 6;
    }

    v54 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v56 = *(a1 + 72);
    v55 = *(a1 + 80);
    v57 = v53 + 10;
    if (v54 + 16 >= v56)
    {
      v54 = 0;
    }

    v58 = v57 + v54;
    if (v56 <= v58)
    {
      v58 = 0;
    }

    *(a1 + 88) = v58;
    if (*(v55 + 8) <= 0xFFuLL)
    {
      goto LABEL_54;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v55 + 16) + 128), v58) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v60, v7);
  if (v62 != 1)
  {
    return 16;
  }

  v10 = v61;
  if (v61 <= 1)
  {
    goto LABEL_55;
  }

  v11 = v60;
  *v60 = 1248;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    v17 = v14 >= v16;
    v18 = v14 - v16;
    if (v17)
    {
      *(v15 + (-v15 & 3)) = *(a2 + 4);
      v19 = v15 + v16;
      v20 = -v19 & 3 | 4;
      v17 = v18 >= v20;
      v21 = v18 - v20;
      if (v17)
      {
        *(v19 + (-v19 & 3)) = *(a2 + 8);
        v22 = v19 + v20;
        v23 = -v22 & 7 | 8;
        v17 = v21 >= v23;
        v24 = v21 - v23;
        if (v17)
        {
          *(v22 + (-v22 & 7)) = *(a2 + 16);
          v25 = v22 + v23;
          v26 = -v25 & 3 | 4;
          v27 = v24 - v26;
          if (v24 >= v26)
          {
            *(v25 + (-v25 & 3)) = *(a2 + 24);
            v28 = v25 + v26;
            v29 = -(v25 + v26);
            v30 = v29 & 3 | 4;
            v31 = v27 - v30;
            if (v27 >= v30)
            {
              *(v28 + (v29 & 3)) = *(a2 + 28);
              v32 = v28 + v30;
              v33 = -v32 & 3 | 4;
              if (v31 >= v33)
              {
                *(v32 + (-v32 & 3)) = *(a2 + 32);
                v34 = v10 - v31 + v33;
                if (v34 <= 0x10)
                {
                  v34 = 16;
                }

                v35 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                v36 = *(a1 + 72);
                if (v35 + 16 >= v36)
                {
                  v35 = 0;
                }

                v37 = v35 + v34;
                if (v36 <= v37)
                {
                  v37 = 0;
                }

                *(a1 + 88) = v37;
                v38 = *(a1 + 80);
                if (*(v38 + 8) > 0xFFuLL)
                {
                  if (atomic_exchange((*(v38 + 16) + 128), v37) != 0x80000000 && !*(a1 + 124))
                  {
                    return 0;
                  }

                  if (*(a1 + 112) == 1)
                  {
                    MEMORY[0x19EB16320](*(a1 + 100));
                  }

                  v39 = 0;
                  *(a1 + 124) = 0;
                  return v39;
                }

                goto LABEL_54;
              }
            }
          }
        }
      }
    }
  }

  if ((v62 & 1) == 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v61 <= 1)
  {
    __break(0xC471u);
    goto LABEL_54;
  }

  *v60 = 3197;
  v40 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(a1 + 72);
  v41 = *(a1 + 80);
  if (v40 + 16 >= v42)
  {
    v40 = 0;
  }

  v43 = v40 + 16;
  if (v42 <= v43)
  {
    v43 = 0;
  }

  *(a1 + 88) = v43;
  if (*(v41 + 8) <= 0xFFuLL)
  {
    goto LABEL_54;
  }

  atomic_exchange((*(v41 + 16) + 128), v43);
  *(a1 + 124) = 0;
  v44 = *(a1 + 8);
  v45 = IPC::Encoder::operator new(0x238, v9);
  *v45 = 1248;
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  *(v45 + 1) = a3;
  *(v45 + 68) = 0;
  *(v45 + 70) = 0;
  *(v45 + 69) = 0;
  IPC::Encoder::encodeHeader(v45);
  v63 = v45;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v45, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v45, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v45, *(a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v45, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v45, *(a2 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v45, *(a2 + 28));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v45, *(a2 + 32));
  v39 = IPC::Connection::sendMessageImpl(v44, &v63, 1, 0);
  v47 = v63;
  v63 = 0;
  if (v47)
  {
    IPC::Encoder::~Encoder(v47, v46);
    bmalloc::api::tzoneFree(v48, v49);
  }

  return v39;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClipControlEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
    if (v45 != 1)
    {
      return 16;
    }

    v23 = v44;
    if (v44 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E233790);
    }

    v24 = v43;
    *v43 = 3198;
    v25 = v24 + 1;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      return 18;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = a3;
    if (v26 != 7)
    {
      v26 = 6;
    }

    v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(a1 + 72);
    v28 = *(a1 + 80);
    v30 = v26 + 10;
    if (v27 + 16 >= v29)
    {
      v27 = 0;
    }

    v31 = v30 + v27;
    if (v29 <= v31)
    {
      v31 = 0;
    }

    *(a1 + 88) = v31;
    if (*(v28 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v28 + 16) + 128), v31) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
  if (v45 != 1)
  {
    return 16;
  }

  v10 = v44;
  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  v11 = v43;
  *v43 = 1193;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v17 = v10 - v14 + v16;
      if (v17 <= 0x10)
      {
        v17 = 16;
      }

      v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(a1 + 72);
      if (v18 + 16 >= v19)
      {
        v18 = 0;
      }

      v20 = v18 + v17;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(a1 + 88) = v20;
      v21 = *(a1 + 80);
      if (*(v21 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v21 + 16) + 128), v20) != 0x80000000 && !*(a1 + 124))
        {
          return 0;
        }

        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        v22 = 0;
        *(a1 + 124) = 0;
        return v22;
      }

      goto LABEL_47;
    }
  }

  if ((v45 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    JUMPOUT(0x19E233770);
  }

  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_47;
  }

  *v43 = 3197;
  v33 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(a1 + 72);
  v34 = *(a1 + 80);
  if (v33 + 16 >= v35)
  {
    v33 = 0;
  }

  v36 = v33 + 16;
  if (v35 <= v36)
  {
    v36 = 0;
  }

  *(a1 + 88) = v36;
  if (*(v34 + 8) <= 0xFFuLL)
  {
    goto LABEL_47;
  }

  atomic_exchange((*(v34 + 16) + 128), v36);
  *(a1 + 124) = 0;
  v37 = *(a1 + 8);
  v38 = IPC::Encoder::operator new(0x238, v9);
  *v38 = 1193;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 1) = a3;
  *(v38 + 68) = 0;
  *(v38 + 70) = 0;
  *(v38 + 69) = 0;
  IPC::Encoder::encodeHeader(v38);
  v46 = v38;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, a2[1]);
  v22 = IPC::Connection::sendMessageImpl(v37, &v46, 1, 0);
  v40 = v46;
  v46 = 0;
  if (v40)
  {
    IPC::Encoder::~Encoder(v40, v39);
    bmalloc::api::tzoneFree(v41, v42);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ProvokingVertexANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
    if (v40 != 1)
    {
      return 16;
    }

    v18 = v39;
    if (v39 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E233AE0);
    }

    v19 = v38;
    *v38 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      return 18;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = a3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(a1 + 72);
    v23 = *(a1 + 80);
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

    *(a1 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_44;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v23 + 16) + 128), v26) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
  if (v40 != 1)
  {
    return 16;
  }

  v10 = v39;
  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  v11 = v38;
  *v38 = 1280;
  v12 = v11 + 1;
  if (v10 - 2 >= (-v12 & 3 | 4uLL))
  {
    *(v12 + (-v12 & 3)) = *a2;
    v13 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v13 + 16 >= v15)
    {
      v13 = 0;
    }

    v16 = v13 + 16;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(a1 + 88) = v16;
    if (*(v14 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v14 + 16) + 128), v16) != 0x80000000 && !*(a1 + 124))
      {
        return 0;
      }

      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      v17 = 0;
      *(a1 + 124) = 0;
      return v17;
    }

    goto LABEL_44;
  }

  if ((v40 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    JUMPOUT(0x19E233AC0);
  }

  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_44;
  }

  *v38 = 3197;
  v28 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v30 = *(a1 + 72);
  v29 = *(a1 + 80);
  if (v28 + 16 >= v30)
  {
    v28 = 0;
  }

  v31 = v28 + 16;
  if (v30 <= v31)
  {
    v31 = 0;
  }

  *(a1 + 88) = v31;
  if (*(v29 + 8) <= 0xFFuLL)
  {
    goto LABEL_44;
  }

  atomic_exchange((*(v29 + 16) + 128), v31);
  *(a1 + 124) = 0;
  v32 = *(a1 + 8);
  v33 = IPC::Encoder::operator new(0x238, v9);
  *v33 = 1280;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 1) = a3;
  *(v33 + 68) = 0;
  *(v33 + 70) = 0;
  *(v33 + 69) = 0;
  IPC::Encoder::encodeHeader(v33);
  v41 = v33;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v33, *a2);
  v17 = IPC::Connection::sendMessageImpl(v32, &v41, 1, 0);
  v35 = v41;
  v41 = 0;
  if (v35)
  {
    IPC::Encoder::~Encoder(v35, v34);
    bmalloc::api::tzoneFree(v36, v37);
  }

  return v17;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::PolygonModeANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
    if (v45 != 1)
    {
      return 16;
    }

    v23 = v44;
    if (v44 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E233E80);
    }

    v24 = v43;
    *v43 = 3198;
    v25 = v24 + 1;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      return 18;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = a3;
    if (v26 != 7)
    {
      v26 = 6;
    }

    v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(a1 + 72);
    v28 = *(a1 + 80);
    v30 = v26 + 10;
    if (v27 + 16 >= v29)
    {
      v27 = 0;
    }

    v31 = v30 + v27;
    if (v29 <= v31)
    {
      v31 = 0;
    }

    *(a1 + 88) = v31;
    if (*(v28 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v28 + 16) + 128), v31) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v43, v7);
  if (v45 != 1)
  {
    return 16;
  }

  v10 = v44;
  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  v11 = v43;
  *v43 = 1277;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v17 = v10 - v14 + v16;
      if (v17 <= 0x10)
      {
        v17 = 16;
      }

      v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(a1 + 72);
      if (v18 + 16 >= v19)
      {
        v18 = 0;
      }

      v20 = v18 + v17;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(a1 + 88) = v20;
      v21 = *(a1 + 80);
      if (*(v21 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v21 + 16) + 128), v20) != 0x80000000 && !*(a1 + 124))
        {
          return 0;
        }

        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        v22 = 0;
        *(a1 + 124) = 0;
        return v22;
      }

      goto LABEL_47;
    }
  }

  if ((v45 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    JUMPOUT(0x19E233E60);
  }

  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_47;
  }

  *v43 = 3197;
  v33 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(a1 + 72);
  v34 = *(a1 + 80);
  if (v33 + 16 >= v35)
  {
    v33 = 0;
  }

  v36 = v33 + 16;
  if (v35 <= v36)
  {
    v36 = 0;
  }

  *(a1 + 88) = v36;
  if (*(v34 + 8) <= 0xFFuLL)
  {
    goto LABEL_47;
  }

  atomic_exchange((*(v34 + 16) + 128), v36);
  *(a1 + 124) = 0;
  v37 = *(a1 + 8);
  v38 = IPC::Encoder::operator new(0x238, v9);
  *v38 = 1277;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 1) = a3;
  *(v38 + 68) = 0;
  *(v38 + 70) = 0;
  *(v38 + 69) = 0;
  IPC::Encoder::encodeHeader(v38);
  v46 = v38;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, a2[1]);
  v22 = IPC::Connection::sendMessageImpl(v37, &v46, 1, 0);
  v40 = v46;
  v46 = 0;
  if (v40)
  {
    IPC::Encoder::~Encoder(v40, v39);
    bmalloc::api::tzoneFree(v41, v42);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::PolygonOffsetClampEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, float *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v46, v7);
    if (v48 != 1)
    {
      return 16;
    }

    v26 = v47;
    if (v47 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E234250);
    }

    v27 = v46;
    *v46 = 3198;
    v28 = v27 + 1;
    if (v26 - 2 < (-v28 & 7 | 8uLL))
    {
      return 18;
    }

    v29 = -v28 & 7;
    *(v28 + v29) = a3;
    if (v29 != 7)
    {
      v29 = 6;
    }

    v30 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(a1 + 72);
    v31 = *(a1 + 80);
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

    *(a1 + 88) = v34;
    if (*(v31 + 8) <= 0xFFuLL)
    {
      goto LABEL_48;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v31 + 16) + 128), v34) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v46, v7);
  if (v48 != 1)
  {
    return 16;
  }

  v10 = v47;
  if (v47 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  v11 = v46;
  *v46 = 1279;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    v17 = v14 - v16;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v18 = v15 + v16;
      v19 = -v18 & 3 | 4;
      if (v17 >= v19)
      {
        *(v18 + (-v18 & 3)) = a2[2];
        v20 = v10 - v17 + v19;
        if (v20 <= 0x10)
        {
          v20 = 16;
        }

        v21 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v22 = *(a1 + 72);
        if (v21 + 16 >= v22)
        {
          v21 = 0;
        }

        v23 = v21 + v20;
        if (v22 <= v23)
        {
          v23 = 0;
        }

        *(a1 + 88) = v23;
        v24 = *(a1 + 80);
        if (*(v24 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v24 + 16) + 128), v23) != 0x80000000 && !*(a1 + 124))
          {
            return 0;
          }

          if (*(a1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a1 + 100));
          }

          v25 = 0;
          *(a1 + 124) = 0;
          return v25;
        }

        goto LABEL_48;
      }
    }
  }

  if ((v48 & 1) == 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    JUMPOUT(0x19E234230);
  }

  if (v47 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  *v46 = 3197;
  v36 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v38 = *(a1 + 72);
  v37 = *(a1 + 80);
  if (v36 + 16 >= v38)
  {
    v36 = 0;
  }

  v39 = v36 + 16;
  if (v38 <= v39)
  {
    v39 = 0;
  }

  *(a1 + 88) = v39;
  if (*(v37 + 8) <= 0xFFuLL)
  {
    goto LABEL_48;
  }

  atomic_exchange((*(v37 + 16) + 128), v39);
  *(a1 + 124) = 0;
  v40 = *(a1 + 8);
  v41 = IPC::Encoder::operator new(0x238, v9);
  *v41 = 1279;
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 1) = a3;
  *(v41 + 68) = 0;
  *(v41 + 70) = 0;
  *(v41 + 69) = 0;
  IPC::Encoder::encodeHeader(v41);
  v49 = v41;
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v41, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v41, a2[1]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v41, a2[2]);
  v25 = IPC::Connection::sendMessageImpl(v40, &v49, 1, 0);
  v43 = v49;
  v49 = 0;
  if (v43)
  {
    IPC::Encoder::~Encoder(v43, v42);
    bmalloc::api::tzoneFree(v44, v45);
  }

  return v25;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::RenderbufferStorageMultisampleANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v54, v7);
    if (v56 != 1)
    {
      return 16;
    }

    v44 = v55;
    if (v55 <= 1)
    {
LABEL_51:
      __break(0xC471u);
      JUMPOUT(0x19E234660);
    }

    v45 = v54;
    *v54 = 3198;
    v46 = v45 + 1;
    if (v44 - 2 < (-v46 & 7 | 8uLL))
    {
      return 18;
    }

    v47 = -v46 & 7;
    *(v46 + v47) = a3;
    if (v47 != 7)
    {
      v47 = 6;
    }

    v48 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v50 = *(a1 + 72);
    v49 = *(a1 + 80);
    v51 = v47 + 10;
    if (v48 + 16 >= v50)
    {
      v48 = 0;
    }

    v52 = v51 + v48;
    if (v50 <= v52)
    {
      v52 = 0;
    }

    *(a1 + 88) = v52;
    if (*(v49 + 8) <= 0xFFuLL)
    {
      goto LABEL_50;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v49 + 16) + 128), v52) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v54, v7);
  if (v56 != 1)
  {
    return 16;
  }

  v10 = v55;
  if (v55 <= 1)
  {
    goto LABEL_51;
  }

  v11 = v54;
  *v54 = 1286;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 4;
    v17 = v14 >= v16;
    v18 = v14 - v16;
    if (v17)
    {
      *(v15 + (-v15 & 3)) = a2[1];
      v19 = v15 + v16;
      v20 = -v19 & 3 | 4;
      v21 = v18 - v20;
      if (v18 >= v20)
      {
        *(v19 + (-v19 & 3)) = a2[2];
        v22 = v19 + v20;
        v23 = -(v19 + v20);
        v24 = v23 & 3 | 4;
        v25 = v21 - v24;
        if (v21 >= v24)
        {
          *(v22 + (v23 & 3)) = a2[3];
          v26 = v22 + v24;
          v27 = -v26 & 3 | 4;
          if (v25 >= v27)
          {
            *(v26 + (-v26 & 3)) = a2[4];
            v28 = v10 - v25 + v27;
            if (v28 <= 0x10)
            {
              v28 = 16;
            }

            v29 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v30 = *(a1 + 72);
            if (v29 + 16 >= v30)
            {
              v29 = 0;
            }

            v31 = v29 + v28;
            if (v30 <= v31)
            {
              v31 = 0;
            }

            *(a1 + 88) = v31;
            v32 = *(a1 + 80);
            if (*(v32 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v32 + 16) + 128), v31) != 0x80000000 && !*(a1 + 124))
              {
                return 0;
              }

              if (*(a1 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(a1 + 100));
              }

              v33 = 0;
              *(a1 + 124) = 0;
              return v33;
            }

            goto LABEL_50;
          }
        }
      }
    }
  }

  if ((v56 & 1) == 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v55 <= 1)
  {
    __break(0xC471u);
    goto LABEL_50;
  }

  *v54 = 3197;
  v34 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v36 = *(a1 + 72);
  v35 = *(a1 + 80);
  if (v34 + 16 >= v36)
  {
    v34 = 0;
  }

  v37 = v34 + 16;
  if (v36 <= v37)
  {
    v37 = 0;
  }

  *(a1 + 88) = v37;
  if (*(v35 + 8) <= 0xFFuLL)
  {
    goto LABEL_50;
  }

  atomic_exchange((*(v35 + 16) + 128), v37);
  *(a1 + 124) = 0;
  v38 = *(a1 + 8);
  v39 = IPC::Encoder::operator new(0x238, v9);
  *v39 = 1286;
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 1) = a3;
  *(v39 + 68) = 0;
  *(v39 + 70) = 0;
  *(v39 + 69) = 0;
  IPC::Encoder::encodeHeader(v39);
  v57 = v39;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v39, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v39, a2[1]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v39, a2[2]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v39, a2[3]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v39, a2[4]);
  v33 = IPC::Connection::sendMessageImpl(v38, &v57, 1, 0);
  v41 = v57;
  v57 = 0;
  if (v41)
  {
    IPC::Encoder::~Encoder(v41, v40);
    bmalloc::api::tzoneFree(v42, v43);
  }

  return v33;
}

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetInternalformativ,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(a1 + 64) != a3)
  {
    goto LABEL_53;
  }

LABEL_4:
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v84, v9);
  if ((v86 & 1) == 0)
  {
LABEL_64:
    v65 = 16;
LABEL_65:
    *a4 = v65;
    goto LABEL_66;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_96;
  }

  v13 = v84;
  v12 = v85;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a1 + 8), IdentifierInternal);
  if (!result)
  {
    v42 = 12;
LABEL_50:
    *a4 = v42;
LABEL_66:
    v52 = 1;
    goto LABEL_67;
  }

  if (v12 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E234D40);
  }

  *v13 = 4053;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  v18 = v12 - 2 - v17;
  if (v12 - 2 >= v17)
  {
    *(v16 + (-v16 & 7)) = IdentifierInternal;
    v19 = v16 + v17;
    v20 = -v19 & 3 | 4;
    v21 = v18 >= v20;
    v22 = v18 - v20;
    if (v21)
    {
      *&v19[-v19 & 3] = *a2;
      v23 = &v19[v20];
      v24 = -v23 & 3 | 4;
      v25 = v22 - v24;
      if (v22 >= v24)
      {
        *&v23[-v23 & 3] = *(a2 + 4);
        v26 = &v23[v24];
        v27 = -(v23 + v24);
        v28 = v27 & 3 | 4;
        v29 = v25 - v28;
        if (v25 >= v28)
        {
          *&v26[v27 & 3] = *(a2 + 8);
          v30 = &v26[v28];
          v31 = -v30 & 7 | 8;
          if (v29 >= v31)
          {
            *&v30[-v30 & 7] = *(a2 + 16);
            v32 = v12 - v29 + v31;
            if (v32 <= 0x10)
            {
              v32 = 16;
            }

            v33 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v34 = *(a1 + 72);
            if (v33 + 16 >= v34)
            {
              v33 = 0;
            }

            v35 = v33 + v32;
            if (v34 <= v35)
            {
              v35 = 0;
            }

            *(a1 + 88) = v35;
            v36 = *(a1 + 80);
            if (*(v36 + 8) <= 0xFFuLL)
            {
              goto LABEL_52;
            }

            if (atomic_exchange((*(v36 + 16) + 128), v35) == 0x80000000 || *(a1 + 124))
            {
              if (*(a1 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(a1 + 100));
              }

              *(a1 + 124) = 0;
            }

            a2 = 0x80000000;
            while (1)
            {
              v37 = *(a1 + 80);
              if (*(v37 + 8) <= 0xFFuLL)
              {
                goto LABEL_52;
              }

              v38 = atomic_exchange(*(v37 + 16), 0x80000000uLL);
              v39 = *(a1 + 80);
              if (*(v39 + 8) <= 0xFFuLL)
              {
                goto LABEL_52;
              }

              if (!(v38 | atomic_load_explicit((*(v39 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
              {
                break;
              }

              if (*(a1 + 112) == 1)
              {
                v40 = IPC::Semaphore::waitFor((a1 + 104), v9);
                if (v40)
                {
                  WTF::ApproximateTime::now(v40);
                  if (v41 < v9)
                  {
                    continue;
                  }
                }
              }

              result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
              v42 = 17;
              goto LABEL_50;
            }

            v43 = *(a1 + 80);
            if (*(v43 + 8) <= 0xFFuLL)
            {
              goto LABEL_52;
            }

            atomic_store(0, *(v43 + 16));
            *(a1 + 88) = 0;
            v44 = *(a1 + 80);
            v45 = *(v44 + 8);
            if (v45 <= 0xFF)
            {
              goto LABEL_52;
            }

            v46 = *(a1 + 72);
            v47 = *(v44 + 16);
            a3 = v45 - 256;
            if (v46)
            {
              v55 = v46 - 1;
              v21 = a3 >= v55;
              a3 = v55;
              if (!v21)
              {
                goto LABEL_52;
              }
            }

            v48 = IPC::Decoder::operator new(0x58, v15);
            if (*(IPC::Decoder::Decoder(v48, v47 + 256, a3, *(a1 + 64)) + 25) == 3197)
            {
              IPC::Decoder::~Decoder(v48);
              bmalloc::api::tzoneFree(v49, v50);
              IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFD5u, &v87, v9);
              v51 = BYTE8(v87);
              if (BYTE8(v87))
              {
                if (BYTE8(v87) == 255)
                {
                  v83 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
                  mpark::throw_bad_variant_access(v83);
                }

                v42 = v87;
                result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
                if (v51 != 1)
                {
LABEL_42:
                  mpark::throw_bad_variant_access(result);
                }

                goto LABEL_50;
              }

              v48 = v87;
            }

            IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
            if (*(v48 + 25) == 3194)
            {
              v42 = 11;
            }

            else
            {
              LOBYTE(v87) = 0;
              v88 = 0;
              result = IPC::Decoder::operator>><std::tuple<std::span<int const,18446744073709551615ul>>>(v48, &v87);
              if (v88)
              {
                v52 = 0;
                *(a4 + 8) = v87;
                *a4 = v48;
LABEL_67:
                *(a4 + 24) = v52;
                return result;
              }

              v42 = 14;
            }

            IPC::Decoder::~Decoder(v48);
            result = bmalloc::api::tzoneFree(v53, v54);
            goto LABEL_50;
          }
        }
      }
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v86 & 1) == 0)
  {
    while (1)
    {
LABEL_52:
      __break(1u);
LABEL_53:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v87, v9);
      if (v88 != 1)
      {
        goto LABEL_64;
      }

      v56 = *(&v87 + 1);
      if (*(&v87 + 1) <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E234D68);
      }

      v57 = v87;
      *v87 = 3198;
      v58 = v57 + 2;
      if (v56 - 2 < (-v58 & 7 | 8uLL))
      {
        break;
      }

      v59 = -v58 & 7;
      *(v58 + v59) = a3;
      if (v59 != 7)
      {
        v59 = 6;
      }

      v60 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v62 = *(a1 + 72);
      v61 = *(a1 + 80);
      v63 = v59 + 10;
      if (v60 + 16 >= v62)
      {
        v60 = 0;
      }

      v64 = v63 + v60;
      if (v62 <= v64)
      {
        v64 = 0;
      }

      *(a1 + 88) = v64;
      if (*(v61 + 8) > 0xFFuLL)
      {
        IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v61 + 16) + 128), v64) == 0x80000000);
        *(a1 + 64) = a3;
        goto LABEL_4;
      }
    }

    v65 = 18;
    goto LABEL_65;
  }

  if (v85 <= 1)
  {
LABEL_96:
    __break(0xC471u);
    JUMPOUT(0x19E234D20);
  }

  *v84 = 3197;
  v66 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v67 = *(a1 + 72);
  if (v66 + 16 >= v67)
  {
    v66 = 0;
  }

  v68 = v66 + 16;
  if (v67 <= v68)
  {
    v69 = 0;
  }

  else
  {
    v69 = v68;
  }

  *(a1 + 88) = v69;
  v70 = *(a1 + 80);
  if (*(v70 + 8) <= 0xFFuLL)
  {
    goto LABEL_52;
  }

  atomic_exchange((*(v70 + 16) + 128), v69);
  *(a1 + 124) = 0;
  v71 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFD5, a3, v91);
  v72 = v91[0];
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v91[0], *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v72, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v72, *(a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v72, *(a2 + 16));
  result = IPC::Connection::sendSyncMessage(v71, v91[1], v91, 0, &v89, v9);
  if (v90)
  {
    if (v90 != 1)
    {
      goto LABEL_42;
    }

    *a4 = v89;
    *(a4 + 24) = 1;
    goto LABEL_86;
  }

  v74 = v89;
  v89 = 0;
  if (*(v74 + 25) == 3194)
  {
    v75 = 11;
  }

  else
  {
    LOBYTE(v87) = 0;
    v88 = 0;
    v74 = IPC::Decoder::operator>><std::tuple<std::span<int const,18446744073709551615ul>>>(v74, &v87);
    if (v88 == 1)
    {
      *(a4 + 8) = v87;
      *a4 = v74;
      *(a4 + 24) = 0;
      goto LABEL_86;
    }

    v75 = 14;
  }

  *a4 = v75;
  *(a4 + 24) = 1;
  IPC::Decoder::~Decoder(v74);
  bmalloc::api::tzoneFree(v76, v77);
LABEL_86:
  if (!v90)
  {
    v78 = v89;
    v89 = 0;
    if (v78)
    {
      IPC::Decoder::~Decoder(v78);
      bmalloc::api::tzoneFree(v81, v82);
    }
  }

  result = v91[0];
  v91[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v73);
    return bmalloc::api::tzoneFree(v79, v80);
  }

  return result;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SetDrawingBufferColorSpace,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, CFTypeRef **a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v41, v7);
    if (v43 != 1)
    {
      return 16;
    }

    v28 = v42;
    if (v42 <= 1)
    {
LABEL_46:
      __break(0xC471u);
      JUMPOUT(0x19E23509CLL);
    }

    v29 = v41;
    *v41 = 3198;
    v30 = v29 + 2;
    if (v28 - 2 < (-v30 & 7 | 8uLL))
    {
      return 18;
    }

    v31 = -v30 & 7;
    *&v30[v31] = a3;
    if (v31 != 7)
    {
      v31 = 6;
    }

    v32 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(a1 + 72);
    v33 = *(a1 + 80);
    v35 = v31 + 10;
    if (v32 + 16 >= v34)
    {
      v32 = 0;
    }

    v36 = v35 + v32;
    if (v34 <= v36)
    {
      v36 = 0;
    }

    *(a1 + 88) = v36;
    if (*(v33 + 8) <= 0xFFuLL)
    {
      goto LABEL_45;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v33 + 16) + 128), v36) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
  if (v40 != 1)
  {
    return 16;
  }

  v9 = v38;
  v10 = v39;
  v43 = v39;
  if (v39 <= 1)
  {
    goto LABEL_46;
  }

  *v38 = 1293;
  v41 = (v9 + 1);
  v42 = v10 - 2;
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(&v41, *a2);
  if (v41)
  {
    v12 = 16;
    if (v43 - v42 > 0x10)
    {
      v12 = v43 - v42;
    }

    v13 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v13 + 16 >= v15)
    {
      v13 = 0;
    }

    v16 = v13 + v12;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(a1 + 88) = v16;
    if (*(v14 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v14 + 16) + 128), v16) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_45;
  }

  if ((v40 & 1) == 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  *v38 = 3197;
  v18 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(a1 + 72);
  v19 = *(a1 + 80);
  if (v18 + 16 >= v20)
  {
    v18 = 0;
  }

  v21 = v18 + 16;
  if (v20 <= v21)
  {
    v21 = 0;
  }

  *(a1 + 88) = v21;
  if (*(v19 + 8) <= 0xFFuLL)
  {
    goto LABEL_45;
  }

  atomic_exchange((*(v19 + 16) + 128), v21);
  *(a1 + 124) = 0;
  v22 = *(a1 + 8);
  v23 = IPC::Encoder::operator new(0x238, v11);
  *v23 = 1293;
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 1) = a3;
  *(v23 + 68) = 0;
  *(v23 + 70) = 0;
  *(v23 + 69) = 0;
  IPC::Encoder::encodeHeader(v23);
  v41 = v23;
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(v23, *a2);
  v17 = IPC::Connection::sendMessageImpl(v22, &v41, 1, 0);
  v25 = v41;
  v41 = 0;
  if (v25)
  {
    IPC::Encoder::~Encoder(v25, v24);
    bmalloc::api::tzoneFree(v26, v27);
  }

  return v17;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteExternalSync,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
    if (v40 != 1)
    {
      return 16;
    }

    v18 = v39;
    if (v39 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E23540CLL);
    }

    v19 = v38;
    *v38 = 3198;
    v20 = v19 + 1;
    if (v18 - 2 < (-v20 & 7 | 8uLL))
    {
      return 18;
    }

    v21 = -v20 & 7;
    *(v20 + v21) = a3;
    if (v21 != 7)
    {
      v21 = 6;
    }

    v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(a1 + 72);
    v23 = *(a1 + 80);
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

    *(a1 + 88) = v26;
    if (*(v23 + 8) <= 0xFFuLL)
    {
      goto LABEL_44;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v23 + 16) + 128), v26) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v38, v7);
  if (v40 != 1)
  {
    return 16;
  }

  v10 = v39;
  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  v11 = v38;
  *v38 = 1222;
  v12 = v11 + 1;
  if (v10 - 2 >= (-v12 & 3 | 4uLL))
  {
    *(v12 + (-v12 & 3)) = *a2;
    v13 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    if (v13 + 16 >= v15)
    {
      v13 = 0;
    }

    v16 = v13 + 16;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(a1 + 88) = v16;
    if (*(v14 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v14 + 16) + 128), v16) != 0x80000000 && !*(a1 + 124))
      {
        return 0;
      }

      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      v17 = 0;
      *(a1 + 124) = 0;
      return v17;
    }

    goto LABEL_44;
  }

  if ((v40 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    JUMPOUT(0x19E2353ECLL);
  }

  if (v39 <= 1)
  {
    __break(0xC471u);
    goto LABEL_44;
  }

  *v38 = 3197;
  v28 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v30 = *(a1 + 72);
  v29 = *(a1 + 80);
  if (v28 + 16 >= v30)
  {
    v28 = 0;
  }

  v31 = v28 + 16;
  if (v30 <= v31)
  {
    v31 = 0;
  }

  *(a1 + 88) = v31;
  if (*(v29 + 8) <= 0xFFuLL)
  {
    goto LABEL_44;
  }

  atomic_exchange((*(v29 + 16) + 128), v31);
  *(a1 + 124) = 0;
  v32 = *(a1 + 8);
  v33 = IPC::Encoder::operator new(0x238, v9);
  *v33 = 1222;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 1) = a3;
  *(v33 + 68) = 0;
  *(v33 + 70) = 0;
  *(v33 + 69) = 0;
  IPC::Encoder::encodeHeader(v33);
  v41 = v33;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v33, *a2);
  v17 = IPC::Connection::sendMessageImpl(v32, &v41, 1, 0);
  v35 = v41;
  v41 = 0;
  if (v35)
  {
    IPC::Encoder::~Encoder(v35, v34);
    bmalloc::api::tzoneFree(v36, v37);
  }

  return v17;
}

uint64_t WTF::ThreadSafeRefCounted<WebKit::RemoteImageBufferSetProxyFlushFence,(WTF::DestructionThread)0>::deref(uint64_t this, void *a2)
{
  add = atomic_fetch_add(this, 0xFFFFFFFF);
  if (add == 1)
  {
    v4 = this;
    atomic_store(add, this);
    if (*(this + 176) == 1 && *(this + 96) == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor((this + 8));
    }

    return bmalloc::api::tzoneFree(v4, a2);
  }

  return this;
}

void WebKit::RemoteRenderingBackendProxy::create(WebKit::RemoteRenderingBackendProxy *this@<X0>, WTF::RunLoop **a2@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = WTF::fastMalloc(0x138);
  v6 = WTF::RunLoop::mainSingleton(v5);
  v7 = WebKit::RemoteRenderingBackendProxy::RemoteRenderingBackendProxy(v5, v6);
  *a2 = v5;
  v8 = WebCore::logClient(v7);
  v9 = WTF::downcast<WebKit::LogClient,WebCore::LogClient>(*v8);
  if (v9)
  {
    v10 = *(v5 + 10);
    v11 = *(this + 229);
    v12 = *(this + 6);

    WebKit::LogClient::REMOTE_RENDERING_BACKEND_PROXY_CREATED_RENDERING_BACKEND(v9, v10, v11, v12);
  }

  else
  {
    v13 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v5 + 10);
      v15 = *(this + 229);
      v16 = *(this + 6);
      v17 = 134218496;
      v18 = v14;
      v19 = 2048;
      v20 = v15;
      v21 = 2048;
      v22 = v16;
      _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] Created rendering backend for pageProxyID=%llu, webPageID=%llu", &v17, 0x20u);
    }
  }
}

void WebKit::LogClient::REMOTE_RENDERING_BACKEND_PROXY_CREATED_RENDERING_BACKEND(WebKit::LogClient *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(this + 4);
  v8 = *(this + 1);
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  IPC::StreamClientConnection::send<Messages::LogStream::REMOTE_RENDERING_BACKEND_PROXY_CREATED_RENDERING_BACKEND,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v8, v9, *(this + 3));
  os_unfair_lock_unlock(this + 4);
}

void WebKit::RemoteRenderingBackendProxy::create(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = WTF::fastMalloc(0x138);
  *a2 = WebKit::RemoteRenderingBackendProxy::RemoteRenderingBackendProxy(v4, a1);
  v5 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v4 + 80);
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] Created rendering backend for a worker", &v7, 0xCu);
  }
}
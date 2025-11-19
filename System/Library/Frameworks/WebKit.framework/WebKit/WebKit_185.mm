uint64_t WebKit::WebGPU::RemoteBufferProxy::getMappedRange(WTF::ApproximateTime *a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v96 = a3;
  v97 = a4;
  v10 = *(*(*(*(a1 + 6) + 64) + 72) + 80);
  atomic_fetch_add(v10, 1u);
  v11 = *(a1 + 4);
  v12 = *(v10 + 128);
  v13 = INFINITY;
  if (fabs(v12) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v13 = v12 + v14;
  }

  if (*(v10 + 64) == v11)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, &v98, v13);
  if (v100 == 1)
  {
    v78 = v99;
    if (v99 <= 1)
    {
      __break(0xC471u);
      goto LABEL_153;
    }

    v79 = v98;
    *v98 = 3198;
    v80 = v79 + 2;
    if (v78 - 2 >= (-v80 & 7 | 8uLL))
    {
      v81 = -v80 & 7;
      *&v80[v81] = v11;
      v82 = 6;
      if (v81 > 6)
      {
        v82 = v81;
      }

      v83 = v82 + 10;
      v84 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v85 = *(v10 + 72);
      if (v84 + 16 >= v85)
      {
        v84 = 0;
      }

      v86 = v83 + v84;
      if (v85 <= v86)
      {
        v86 = 0;
      }

      *(v10 + 88) = v86;
      v87 = *(v10 + 80);
      if (*(v87 + 8) <= 0xFFuLL)
      {
        goto LABEL_153;
      }

      v88 = atomic_exchange((*(v87 + 16) + 128), v86);
      v89 = *(v10 + 124);
      if (v88 == 0x80000000 || v89 != 0)
      {
        v91 = v89 + 1;
        *(v10 + 124) = v91;
        if (v91 >= *(v10 + 120))
        {
          if (*(v10 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v10 + 100));
          }

          *(v10 + 124) = 0;
        }
      }

      *(v10 + 64) = v11;
LABEL_4:
      IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, &v105, v13);
      if (v107 != 1)
      {
        v31 = 1;
        v32 = 16;
LABEL_87:
        v59 = v31 == 0;
        v7 = v7;
        goto LABEL_88;
      }

      if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
      {
        __break(0xC471u);
        goto LABEL_154;
      }

      v6 = v105;
      v15 = v106;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      if (IPC::Connection::pushPendingSyncRequestID(*(v10 + 8), IdentifierInternal))
      {
        v114 = v15;
        if (v15 <= 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19E241744);
        }

        *v6 = 4019;
        v6 += 2;
        v112 = v6;
        v113 = (v15 - 2);
        v16 = -v6 & 7 | 8;
        if (v15 - 2 < v16)
        {
          goto LABEL_143;
        }

        *(v6 + (-v6 & 7)) = IdentifierInternal;
        v17 = (v113 - v16);
        if (v113 < v16)
        {
          goto LABEL_153;
        }

        v18 = (v112 + v16);
        v112 = v18;
        v113 = v17;
        v19 = -v18 & 7 | 8;
        if (v17 < v19)
        {
LABEL_143:
          v112 = 0;
          v113 = 0;
        }

        else
        {
          *(v18 + (-v18 & 7)) = a2;
          if (v113 < v19)
          {
            goto LABEL_153;
          }

          v112 = (v112 + v19);
          v113 = (v113 - v19);
        }

        IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(&v112, &v96);
        if (!v112)
        {
          IPC::Connection::popPendingSyncRequestID(*(v10 + 8));
          LOBYTE(v98) = 0;
          v104 = 0;
          goto LABEL_56;
        }

        v21 = v114 - v113;
        if (v114 - v113 <= 0x10)
        {
          v21 = 16;
        }

        v22 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v23 = *(v10 + 72);
        if (v22 + 16 >= v23)
        {
          v22 = 0;
        }

        v24 = v22 + v21;
        if (v23 <= v24)
        {
          v24 = 0;
        }

        *(v10 + 88) = v24;
        v25 = *(v10 + 80);
        if (*(v25 + 8) <= 0xFFuLL)
        {
          goto LABEL_153;
        }

        if (atomic_exchange((*(v25 + 16) + 128), v24) == 0x80000000 || *(v10 + 124))
        {
          if (*(v10 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v10 + 100));
          }

          *(v10 + 124) = 0;
        }

        while (1)
        {
          v26 = *(v10 + 80);
          if (*(v26 + 8) <= 0xFFuLL)
          {
            goto LABEL_153;
          }

          v27 = atomic_exchange(*(v26 + 16), 0x80000000uLL);
          v28 = *(v10 + 80);
          if (*(v28 + 8) <= 0xFFuLL)
          {
            goto LABEL_153;
          }

          if (!(v27 | atomic_load_explicit((*(v28 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
          {
            break;
          }

          if (*(v10 + 112) == 1)
          {
            v29 = IPC::Semaphore::waitFor((v10 + 104), v13);
            if (v29)
            {
              WTF::ApproximateTime::now(v29);
              if (v30 < v13)
              {
                continue;
              }
            }
          }

          IPC::Connection::popPendingSyncRequestID(*(v10 + 8));
          LOBYTE(v6) = 17;
          goto LABEL_45;
        }

        v35 = *(v10 + 80);
        if (*(v35 + 8) <= 0xFFuLL)
        {
          goto LABEL_153;
        }

        atomic_store(0, *(v35 + 16));
        *(v10 + 88) = 0;
        v36 = *(v10 + 80);
        v37 = *(v36 + 8);
        if (v37 <= 0xFF)
        {
          goto LABEL_153;
        }

        v38 = *(v10 + 72);
        v7 = *(v36 + 16);
        v39 = v37 - 256;
        if (v38)
        {
          v70 = v38 - 1;
          v71 = v39 >= v70;
          v39 = v70;
          if (!v71)
          {
            goto LABEL_153;
          }
        }

        v6 = IPC::Decoder::operator new(0x58, v20);
        if (*(IPC::Decoder::Decoder(v6, v7 + 256, v39, *(v10 + 64)) + 25) == 3197)
        {
          IPC::Decoder::~Decoder(v6);
          bmalloc::api::tzoneFree(v40, v41);
          IPC::Connection::waitForSyncReply(*(v10 + 8), IdentifierInternal, 0xFB3u, &v108, v13);
          v42 = v109;
          if (v109)
          {
            if (v109 == 255)
            {
              v95 = IPC::Connection::popPendingSyncRequestID(*(v10 + 8));
              mpark::throw_bad_variant_access(v95);
            }

            LOBYTE(v6) = v108;
            v43 = IPC::Connection::popPendingSyncRequestID(*(v10 + 8));
            if (v42 != 1)
            {
              goto LABEL_144;
            }

LABEL_45:
            LOBYTE(v98) = v6;
            v103 = 1;
            v104 = 1;
LABEL_56:
            if (v104 == 1)
            {
              v31 = v103;
              if (v103 == 255)
              {
                v32 = 0;
              }

              else if (v103)
              {
                v32 = v98;
              }

              else
              {
                v32 = v98;
                if (v102)
                {
                  IdentifierInternal = v99;
                  LOBYTE(v6) = 1;
                  LODWORD(v7) = v101;
                }

                else
                {
                  IdentifierInternal = 0;
                  LOBYTE(v6) = 0;
                }
              }

              goto LABEL_87;
            }

            if (v107)
            {
              if (v106 <= 1)
              {
                __break(0xC471u);
                JUMPOUT(0x19E241764);
              }

              *v105 = 3197;
              v49 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
              v51 = *(v10 + 72);
              v50 = *(v10 + 80);
              if (v49 + 16 >= v51)
              {
                v49 = 0;
              }

              v52 = v49 + 16;
              if (v51 <= v52)
              {
                v52 = 0;
              }

              *(v10 + 88) = v52;
              if (*(v50 + 8) > 0xFFuLL)
              {
                atomic_exchange((*(v50 + 16) + 128), v52);
                *(v10 + 124) = 0;
                IdentifierInternal = *(v10 + 8);
                IPC::Connection::createSyncMessageEncoder(0xFB3, v11, &v112);
                v53 = v112;
                IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v112, a2);
                IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v53, &v96);
                v43 = IPC::Connection::sendSyncMessage(IdentifierInternal, v113, &v112, 0, &v108, v13);
                if (v109)
                {
                  if (v109 == 1)
                  {
                    v32 = v108;
                    v31 = 1;
LABEL_85:
                    v58 = v112;
                    v112 = 0;
                    if (v58)
                    {
                      IPC::Encoder::~Encoder(v58, v54);
                      bmalloc::api::tzoneFree(v68, v69);
                    }

                    goto LABEL_87;
                  }

LABEL_144:
                  mpark::throw_bad_variant_access(v43);
                }

                v32 = v108;
                v108 = 0;
                if (*(v32 + 50) == 3194)
                {
                  v6 = 11;
                }

                else
                {
                  LOBYTE(v98) = 0;
                  v102 = 0;
                  IPC::Decoder::operator>><std::tuple<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>(v32, &v98);
                  if (v102 == 1)
                  {
                    v31 = 0;
                    LOBYTE(v6) = v100;
                    LODWORD(v7) = HIDWORD(v99);
                    if (v100)
                    {
                      IdentifierInternal = v98;
                    }

                    else
                    {
                      IdentifierInternal = 0;
                    }

LABEL_82:
                    if (!v109)
                    {
                      v57 = v108;
                      v108 = 0;
                      if (v57)
                      {
                        IPC::Decoder::~Decoder(v57);
                        bmalloc::api::tzoneFree(v76, v77);
                      }
                    }

                    goto LABEL_85;
                  }

                  v6 = 14;
                }

                IPC::Decoder::~Decoder(v32);
                bmalloc::api::tzoneFree(v55, v56);
                v31 = 1;
                v32 = v6;
                goto LABEL_82;
              }
            }

LABEL_153:
            __break(1u);
LABEL_154:
            JUMPOUT(0x19E241724);
          }

          v6 = v108;
        }

        IPC::Connection::popPendingSyncRequestID(*(v10 + 8));
        if (*(v6 + 50) == 3194)
        {
          v44 = 11;
        }

        else
        {
          LOBYTE(v108) = 0;
          v111 = 0;
          IPC::Decoder::operator>><std::tuple<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>(v6, &v108);
          if (v111 == 1)
          {
            if (v110 == 1)
            {
              v113 = v108;
              v45 = v109;
              v108 = 0;
              v109 = 0;
              v114 = v45;
              v46 = 1;
            }

            else
            {
              v46 = 0;
              LOBYTE(v113) = 0;
            }

            v112 = v6;
            v115 = v46;
            v116 = 0;
            std::optional<IPC::ConnectionSendSyncResult<Messages::RemoteBuffer::GetMappedRange>>::optional[abi:sn200100]<IPC::ConnectionSendSyncResult<Messages::RemoteBuffer::GetMappedRange>,0>(&v98, &v112);
            if (!v116)
            {
              if (v115 == 1)
              {
                v92 = v113;
                if (v113)
                {
                  v113 = 0;
                  LODWORD(v114) = 0;
                  WTF::fastFree(v92, v73);
                }
              }

              v74 = v112;
              v112 = 0;
              if (v74)
              {
                IPC::Decoder::~Decoder(v74);
                bmalloc::api::tzoneFree(v93, v94);
              }
            }

            if ((v111 & 1) != 0 && v110 == 1)
            {
              v75 = v108;
              if (v108)
              {
                v108 = 0;
                LODWORD(v109) = 0;
                WTF::fastFree(v75, v73);
              }
            }

            goto LABEL_56;
          }

          v44 = 14;
        }

        LOBYTE(v98) = v44;
        v103 = 1;
        v104 = 1;
        v34 = v6;
      }

      else
      {
        LOBYTE(v112) = 12;
        v116 = 1;
        std::optional<IPC::ConnectionSendSyncResult<Messages::RemoteBuffer::GetMappedRange>>::optional[abi:sn200100]<IPC::ConnectionSendSyncResult<Messages::RemoteBuffer::GetMappedRange>,0>(&v98, &v112);
        if (v116)
        {
          goto LABEL_56;
        }

        if (v115 == 1)
        {
          v72 = v113;
          if (v113)
          {
            v113 = 0;
            LODWORD(v114) = 0;
            WTF::fastFree(v72, v33);
          }
        }

        v34 = v112;
        v112 = 0;
        if (!v34)
        {
          goto LABEL_56;
        }
      }

      IPC::Decoder::~Decoder(v34);
      bmalloc::api::tzoneFree(v47, v48);
      goto LABEL_56;
    }

    v32 = 18;
  }

  else
  {
    v32 = 16;
  }

  v7 = 0;
  v59 = 0;
LABEL_88:
  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    IPC::StreamClientConnection::operator delete(v10);
    if (!v59)
    {
      goto LABEL_97;
    }
  }

  else if (!v59)
  {
LABEL_97:
    v63 = 0;
    v60 = 0;
    v62 = 1;
    v61 = IdentifierInternal;
    IdentifierInternal = 0;
    goto LABEL_98;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_97;
  }

  if (IdentifierInternal && (v60 = v7 - a2, v7 > a2) && ((v97 & 1) == 0 || v96 + a2 <= v7))
  {
    v61 = 0;
    v62 = 0;
    v63 = &IdentifierInternal[a2];
  }

  else
  {
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v60 = 0;
  }

LABEL_98:
  result = (*(**a5 + 16))(*a5, v63, v60);
  if ((v62 & 1) == 0 && IdentifierInternal)
  {
    result = WTF::fastFree(IdentifierInternal, v65);
    if (!v59)
    {
      return result;
    }
  }

  else if (!v59)
  {
    return result;
  }

  if ((v6 & (v61 != 0)) != 1)
  {
    if (!v32)
    {
      return result;
    }

LABEL_108:
    IPC::Decoder::~Decoder(v32);
    return bmalloc::api::tzoneFree(v66, v67);
  }

  result = WTF::fastFree(v61, v65);
  if (v32)
  {
    goto LABEL_108;
  }

  return result;
}

void WebKit::WebGPU::RemoteBufferProxy::copyFrom(_BYTE *a1, uint64_t a2, WTF *this, uint64_t a4)
{
  if ((a1[56] & 2) == 0)
  {
    return;
  }

  v7 = a1;
  if (this - a4 < 0x1000001)
  {
    if (this)
    {
      if (this >> 32)
      {
        __break(0xC471u);
        goto LABEL_133;
      }

      a1 = WTF::fastMalloc(this);
      v10 = a1;
      v11 = 0;
      do
      {
        *(v11 + a1) = *(v11 + a2);
        v11 = (v11 + 1);
      }

      while (this != v11);
    }

    else
    {
      v10 = 0;
    }

    v12 = *(*(*(*(v7 + 6) + 64) + 72) + 80);
    atomic_fetch_add(v12, 1u);
    v13 = *(v7 + 4);
    v14 = *(v12 + 128);
    v15 = INFINITY;
    if (fabs(v14) != INFINITY)
    {
      WTF::ApproximateTime::now(a1);
      v15 = v14 + v16;
    }

    if (*(v12 + 64) != v13)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, &v101, v15);
      if (v103 != 1)
      {
        goto LABEL_30;
      }

      v54 = v102;
      if (v102 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E242118);
      }

      v55 = v101;
      *v101 = 3198;
      v56 = v55 + 2;
      if (v54 - 2 < (-v56 & 7 | 8uLL))
      {
        goto LABEL_30;
      }

      v57 = -v56 & 7;
      *&v56[v57] = v13;
      v58 = 6;
      if (v57 > 6)
      {
        v58 = v57;
      }

      v59 = v58 + 10;
      v60 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v61 = *(v12 + 72);
      if (v60 + 16 >= v61)
      {
        v60 = 0;
      }

      v62 = v59 + v60;
      if (v61 <= v62)
      {
        v62 = 0;
      }

      *(v12 + 88) = v62;
      v63 = *(v12 + 80);
      if (*(v63 + 8) <= 0xFFuLL)
      {
        goto LABEL_131;
      }

      v64 = atomic_exchange((*(v63 + 16) + 128), v62);
      v65 = *(v12 + 124);
      if (v64 == 0x80000000 || v65 != 0)
      {
        v67 = v65 + 1;
        *(v12 + 124) = v67;
        if (v67 >= *(v12 + 120))
        {
          if (*(v12 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }
      }

      *(v12 + 64) = v13;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, &v98, v15);
    if (v100 == 1)
    {
      v18 = v98;
      v19 = v99;
      v103 = v99;
      if (v99 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E242090);
      }

      *v98 = 960;
      v101 = (v18 + 1);
      v102 = v19 - 2;
      IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v101, v10, this);
      v20 = -v101 & 7 | 8;
      if (v102 < v20)
      {
        if ((v100 & 1) == 0)
        {
          goto LABEL_131;
        }

        if (v99 <= 1)
        {
LABEL_132:
          __break(0xC471u);
LABEL_133:
          JUMPOUT(0x19E242070);
        }

        v82 = v13;
        *v98 = 3197;
        v83 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v84 = *(v12 + 72);
        if (v83 + 16 >= v84)
        {
          v83 = 0;
        }

        v85 = v83 + 16;
        v86 = v84 <= v85 ? 0 : v85;
        *(v12 + 88) = v86;
        v87 = *(v12 + 80);
        if (*(v87 + 8) <= 0xFFuLL)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        atomic_exchange((*(v87 + 16) + 128), v86);
        *(v12 + 124) = 0;
        v88 = *(v12 + 8);
        v89 = IPC::Encoder::operator new(0x238, v17);
        *v89 = 960;
        *(v89 + 2) = 0;
        *(v89 + 3) = 0;
        *(v89 + 1) = v82;
        *(v89 + 68) = 0;
        *(v89 + 70) = 0;
        *(v89 + 69) = 0;
        IPC::Encoder::encodeHeader(v89);
        v101 = v89;
        IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v89, v10, this);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v89, a4);
        IPC::Connection::sendMessageImpl(v88, &v101, 1, 0);
        v90 = v101;
        v101 = 0;
        if (v90)
        {
          IPC::Encoder::~Encoder(v90, v17);
          bmalloc::api::tzoneFree(v91, v92);
        }
      }

      else
      {
        *(v101 + (-v101 & 7)) = a4;
        v21 = v102 - v20;
        if (v102 < v20)
        {
          goto LABEL_131;
        }

        v101 = (v101 + v20);
        v102 -= v20;
        v22 = v103 - v21;
        if (v22 <= 0x10)
        {
          v22 = 16;
        }

        v23 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v24 = *(v12 + 72);
        if (v23 + 16 >= v24)
        {
          v23 = 0;
        }

        v25 = v23 + v22;
        if (v24 <= v25)
        {
          v25 = 0;
        }

        *(v12 + 88) = v25;
        v26 = *(v12 + 80);
        if (*(v26 + 8) <= 0xFFuLL)
        {
          goto LABEL_131;
        }

        if (atomic_exchange((*(v26 + 16) + 128), v25) == 0x80000000 || *(v12 + 124))
        {
          if (*(v12 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v12 + 100));
          }

          *(v12 + 124) = 0;
        }
      }
    }

LABEL_30:
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12);
      IPC::StreamClientConnection::operator delete(v12);
      if (!v10)
      {
        return;
      }
    }

    else if (!v10)
    {
      return;
    }

    WTF::fastFree(v10, v17);
    return;
  }

  WebCore::SharedMemory::copySpan();
  LOBYTE(v98) = 0;
  v100 = 0;
  v8 = v93;
  if (v93)
  {
    WebCore::SharedMemory::createHandle();
    std::__optional_storage_base<WebCore::SharedMemoryHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::SharedMemoryHandle,false>>(&v98, &v101);
    if (v103 == 1)
    {
      WTF::MachSendRight::~MachSendRight(&v101);
    }

    v9 = v93;
    atomic_fetch_add(v93, 1u);
  }

  else
  {
    v9 = 0;
  }

  v27 = v100;
  v28 = *(*(*(*(v7 + 6) + 64) + 72) + 80);
  atomic_fetch_add(v28, 1u);
  v29 = *(v7 + 4);
  v30 = *(v28 + 128);
  v31 = INFINITY;
  if (fabs(v30) != INFINITY)
  {
    WTF::ApproximateTime::now(v8);
    v31 = v30 + v32;
  }

  if (*(v28 + 64) == v29)
  {
    goto LABEL_37;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v28 + 72, &v101, v31);
  if (v103 != 1)
  {
    goto LABEL_63;
  }

  v68 = v102;
  if (v102 <= 1)
  {
    __break(0xC471u);
    goto LABEL_131;
  }

  v69 = v101;
  *v101 = 3198;
  v70 = v69 + 2;
  if (v68 - 2 < (-v70 & 7 | 8uLL))
  {
    goto LABEL_63;
  }

  v71 = -v70 & 7;
  *&v70[v71] = v29;
  v72 = 6;
  if (v71 > 6)
  {
    v72 = v71;
  }

  v73 = v72 + 10;
  v74 = (*(v28 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v75 = *(v28 + 72);
  if (v74 + 16 >= v75)
  {
    v74 = 0;
  }

  v76 = v73 + v74;
  if (v75 <= v76)
  {
    v76 = 0;
  }

  *(v28 + 88) = v76;
  v77 = *(v28 + 80);
  if (*(v77 + 8) <= 0xFFuLL)
  {
    goto LABEL_131;
  }

  v78 = atomic_exchange((*(v77 + 16) + 128), v76);
  v79 = *(v28 + 124);
  if (v78 == 0x80000000 || v79 != 0)
  {
    v81 = v79 + 1;
    *(v28 + 124) = v81;
    if (v81 >= *(v28 + 120))
    {
      if (*(v28 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(v28 + 100));
      }

      *(v28 + 124) = 0;
    }
  }

  *(v28 + 64) = v29;
LABEL_37:
  IPC::StreamClientConnectionBuffer::tryAcquire(v28 + 72, &v101, v31);
  if (v103 != 1)
  {
    goto LABEL_63;
  }

  v33 = *(v28 + 8);
  while (1)
  {
    v34 = *v33;
    if ((*v33 & 1) == 0)
    {
      break;
    }

    v35 = *v33;
    atomic_compare_exchange_strong_explicit(v33, &v35, v34 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v35 == v34)
    {
      goto LABEL_43;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v33);
LABEL_43:
  v36 = WTF::fastMalloc(0x18);
  *v36 = &unk_1F1125798;
  *(v36 + 8) = v9;
  *(v36 + 16) = v27;
  v97[0] = v36;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2420B0);
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v97[1] = IdentifierInternal;
  if (!IdentifierInternal)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2420D0);
  }

  v38 = IdentifierInternal;
  IPC::Connection::addAsyncReplyHandler(v33, v97);
  if ((v103 & 1) == 0)
  {
    goto LABEL_131;
  }

  if (v102 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2420F0);
  }

  *v101 = 3197;
  v40 = (*(v28 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(v28 + 72);
  v41 = *(v28 + 80);
  if (v40 + 16 >= v42)
  {
    v40 = 0;
  }

  v43 = v40 + 16;
  if (v42 <= v43)
  {
    v43 = 0;
  }

  *(v28 + 88) = v43;
  if (*(v41 + 8) <= 0xFFuLL)
  {
    goto LABEL_131;
  }

  atomic_exchange((*(v41 + 16) + 128), v43);
  *(v28 + 124) = 0;
  v44 = IPC::Encoder::operator new(0x238, v39);
  *v44 = 959;
  *(v44 + 2) = 0;
  *(v44 + 3) = 0;
  *(v44 + 1) = v29;
  *(v44 + 68) = 0;
  *(v44 + 70) = 0;
  *(v44 + 69) = 0;
  IPC::Encoder::encodeHeader(v44);
  v96 = v44;
  IPC::ArgumentCoder<std::optional<WebCore::SharedMemoryHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::SharedMemoryHandle>>(v44, &v98);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, a4);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, v38);
  if (IPC::Connection::sendMessageImpl(v33, &v96, 1, 0))
  {
    IPC::Connection::takeAsyncReplyHandler(v33, v38, &v95);
    if (v95)
    {
      WTF::RunLoop::mainSingleton(v46);
      v47 = v95;
      v95 = 0;
      v48 = WTF::fastMalloc(0x10);
      *v48 = &unk_1F11257C0;
      v48[1] = v47;
      v94 = v48;
      WTF::RunLoop::dispatch();
      if (v94)
      {
        (*(*v94 + 8))(v94);
      }

      v49 = v95;
      v95 = 0;
      if (v49)
      {
        (*(*v49 + 8))(v49);
      }
    }
  }

  v50 = v96;
  v96 = 0;
  if (v50)
  {
    IPC::Encoder::~Encoder(v50, v45);
    bmalloc::api::tzoneFree(v52, v53);
  }

  v51 = v97[0];
  v97[0] = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v33);
  v9 = 0;
LABEL_63:
  if (atomic_fetch_add(v28, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v28);
    IPC::StreamClientConnection::operator delete(v28);
    if (!v9)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if (v9)
  {
LABEL_65:
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v9);
  }

LABEL_66:
  if (v100 == 1)
  {
    WTF::MachSendRight::~MachSendRight(&v98);
  }

  if (v93)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v93);
  }
}

void WebKit::WebGPU::RemoteBufferProxy::unmap(WebKit::WebGPU::RemoteBufferProxy *this)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v24, v5);
    if (v26 != 1)
    {
      goto LABEL_16;
    }

    v11 = v25;
    if (v25 <= 1)
    {
LABEL_40:
      __break(0xC471u);
      return;
    }

    v12 = v24;
    *v24 = 3198;
    v13 = v12 + 1;
    if (v11 - 2 < (-v13 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v14 = -v13 & 7;
    *(v13 + v14) = v3;
    if (v14 != 7)
    {
      v14 = 6;
    }

    v15 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v2 + 72);
    v16 = *(v2 + 80);
    v18 = v14 + 10;
    if (v15 + 16 >= v17)
    {
      v15 = 0;
    }

    v19 = v18 + v15;
    if (v17 <= v19)
    {
      v19 = 0;
    }

    *(v2 + 88) = v19;
    if (*(v16 + 8) <= 0xFFuLL)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v20 = atomic_exchange((*(v16 + 16) + 128), v19);
    v21 = *(v2 + 124);
    if (v20 == 0x80000000 || v21 != 0)
    {
      v23 = v21 + 1;
      *(v2 + 124) = v23;
      if (v23 >= *(v2 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v24, v5);
  if (v26 == 1)
  {
    if (v25 <= 1)
    {
      __break(0xC471u);
    }

    else
    {
      *v24 = 965;
      v7 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v9 = *(v2 + 72);
      v8 = *(v2 + 80);
      if (v7 + 16 >= v9)
      {
        v7 = 0;
      }

      v10 = v7 + 16;
      if (v9 <= v10)
      {
        v10 = 0;
      }

      *(v2 + 88) = v10;
      if (*(v8 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v8 + 16) + 128), v10) == 0x80000000 || *(v2 + 124))
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

    goto LABEL_39;
  }

LABEL_16:
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    IPC::StreamClientConnection::operator delete(v2);
  }

  *(this + 56) = 0;
}

void WebKit::WebGPU::RemoteBufferProxy::destroy(WebKit::WebGPU::RemoteBufferProxy *this)
{
  v1 = *(*(*(*(this + 6) + 64) + 72) + 80);
  atomic_fetch_add(v1, 1u);
  v2 = *(this + 4);
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
      *v23 = 961;
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

void WebKit::WebGPU::RemoteBufferProxy::setLabelInternal(WebKit::WebGPU::RemoteBufferProxy *this, const WTF::String *a2)
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
      JUMPOUT(0x19E2429C0);
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

  *v40 = 964;
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
  *v22 = 964;
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

void WebKit::WebGPU::RemoteCommandBufferProxy::~RemoteCommandBufferProxy(WebKit::WebGPU::RemoteCommandBufferProxy *this)
{
  v2 = *(*(this + 6) + 80);
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
LABEL_55:
      __break(0xC471u);
      JUMPOUT(0x19E242D94);
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
      goto LABEL_54;
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
    goto LABEL_55;
  }

  *v31 = 988;
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
    goto LABEL_54;
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
  if (v13 && atomic_fetch_add(v13 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13 + 7);
    (*(*v13 + 24))(v13, v8);
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

  *this = &unk_1F11255F0;
  v15 = *(this + 3);
  *(this + 3) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v7);
  }

  if (*(this + 4) != 1)
  {
    __break(0xC471u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
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
  WebKit::WebGPU::RemoteCommandBufferProxy::~RemoteCommandBufferProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::WebGPU::RemoteCommandBufferProxy::setLabelInternal(WebKit::WebGPU::RemoteCommandBufferProxy *this, const WTF::String *a2)
{
  v3 = *(*(this + 6) + 80);
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
    IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v42, v6);
    if (v44 != 1)
    {
      goto LABEL_28;
    }

    v26 = v43;
    if (v43 <= 1)
    {
LABEL_53:
      __break(0xC471u);
      JUMPOUT(0x19E243144);
    }

    v27 = v42;
    *v42 = 3198;
    v28 = v27 + 2;
    if (v26 - 2 < (-v28 & 7 | 8uLL))
    {
      goto LABEL_28;
    }

    v29 = -v28 & 7;
    *&v28[v29] = v4;
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
      goto LABEL_52;
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v39, v6);
  if (v41 != 1)
  {
    goto LABEL_28;
  }

  v8 = v39;
  v9 = v40;
  v44 = v40;
  if (v40 <= 1)
  {
    goto LABEL_53;
  }

  *v39 = 989;
  v42 = (v8 + 1);
  v43 = v9 - 2;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v42, a2);
  if (v42)
  {
    v11 = 16;
    if (v44 - v43 > 0x10)
    {
      v11 = v44 - v43;
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

      goto LABEL_28;
    }

    goto LABEL_52;
  }

  if ((v41 & 1) == 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v40 <= 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  *v39 = 3197;
  v16 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v3 + 72);
  v17 = *(v3 + 80);
  if (v16 + 16 >= v18)
  {
    v16 = 0;
  }

  v19 = v16 + 16;
  if (v18 <= v19)
  {
    v19 = 0;
  }

  *(v3 + 88) = v19;
  if (*(v17 + 8) <= 0xFFuLL)
  {
    goto LABEL_52;
  }

  atomic_exchange((*(v17 + 16) + 128), v19);
  *(v3 + 124) = 0;
  v20 = *(v3 + 8);
  v21 = IPC::Encoder::operator new(0x238, v10);
  *v21 = 989;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 1) = v4;
  *(v21 + 68) = 0;
  *(v21 + 70) = 0;
  *(v21 + 69) = 0;
  IPC::Encoder::encodeHeader(v21);
  v42 = v21;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v21, a2);
  IPC::Connection::sendMessageImpl(v20, &v42, 1, 0);
  v23 = v42;
  v42 = 0;
  if (v23)
  {
    IPC::Encoder::~Encoder(v23, v22);
    bmalloc::api::tzoneFree(v24, v25);
  }

LABEL_28:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

void WebKit::WebGPU::RemoteCommandEncoderProxy::~RemoteCommandEncoderProxy(WebKit::WebGPU::RemoteCommandEncoderProxy *this)
{
  v2 = *(*(this + 6) + 80);
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
LABEL_55:
      __break(0xC471u);
      JUMPOUT(0x19E243514);
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
      goto LABEL_54;
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
    goto LABEL_55;
  }

  *v31 = 997;
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
    goto LABEL_54;
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
  if (v13 && atomic_fetch_add(v13 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13 + 7);
    (*(*v13 + 24))(v13, v8);
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

  *this = &unk_1F1125618;
  v15 = *(this + 3);
  *(this + 3) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v7);
  }

  if (*(this + 4) != 1)
  {
    __break(0xC471u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
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
  WebKit::WebGPU::RemoteCommandEncoderProxy::~RemoteCommandEncoderProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::WebGPU::RemoteCommandEncoderProxy::beginRenderPass(void *a1@<X0>, unint64_t a2@<X1>, __int16 a3@<W2>, char a4@<W3>, uint64_t *a5@<X8>, __n128 a6@<Q0>)
{
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(a1[5], a2, a3, a4, &v58, a6);
  if (v60 != 1)
  {
    *a5 = 0;
    return;
  }

  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_71;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if ((v60 & 1) == 0)
  {
LABEL_71:
    __break(1u);
    goto LABEL_74;
  }

  v9 = IdentifierInternal;
  v10 = *(a1[6] + 80);
  atomic_fetch_add(v10, 1u);
  v11 = a1[4];
  v12 = *(v10 + 128);
  v13 = INFINITY;
  if (fabs(v12) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v13 = v12 + v14;
  }

  if (*(v10 + 64) != v11)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, &v64, v13);
    if (v66 != 1)
    {
      goto LABEL_41;
    }

    v26 = v65;
    if (v65 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E243A98);
    }

    v27 = v64;
    *v64 = 3198;
    v28 = (v27 + 2);
    if (v26 - 2 < (-v28 & 7 | 8uLL))
    {
      goto LABEL_41;
    }

    v29 = -v28 & 7;
    *(v28 + v29) = v11;
    v30 = 6;
    if (v29 > 6)
    {
      v30 = v29;
    }

    v31 = v30 + 10;
    v32 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v33 = *(v10 + 72);
    if (v32 + 16 >= v33)
    {
      v32 = 0;
    }

    v34 = v31 + v32;
    if (v33 <= v34)
    {
      v34 = 0;
    }

    *(v10 + 88) = v34;
    v35 = *(v10 + 80);
    if (*(v35 + 8) <= 0xFFuLL)
    {
      goto LABEL_71;
    }

    v36 = atomic_exchange((*(v35 + 16) + 128), v34);
    v37 = *(v10 + 124);
    if (v36 == 0x80000000 || v37 != 0)
    {
      v39 = v37 + 1;
      *(v10 + 124) = v39;
      if (v39 >= *(v10 + 120))
      {
        if (*(v10 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v10 + 100));
        }

        *(v10 + 124) = 0;
      }
    }

    *(v10 + 64) = v11;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v10 + 72, &v61, v13);
  if (v63 != 1)
  {
LABEL_41:
    v25 = 0;
    goto LABEL_42;
  }

  v16 = v61;
  v17 = v62;
  v66 = v62;
  if (v62 <= 1)
  {
    goto LABEL_74;
  }

  *v61 = 991;
  v64 = (v16 + 1);
  v65 = v17 - 2;
  IPC::ArgumentCoder<WebKit::WebGPU::RenderPassDescriptor,void>::encode(&v64, &v58);
  v18 = -v64 & 7 | 8;
  if (v65 >= v18)
  {
    *(v64 + (-v64 & 7)) = v9;
    v19 = v65 - v18;
    if (v65 >= v18)
    {
      v64 = (v64 + v18);
      v65 -= v18;
      v20 = v66 - v19;
      if (v20 <= 0x10)
      {
        v20 = 16;
      }

      v21 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v22 = *(v10 + 72);
      if (v21 + 16 >= v22)
      {
        v21 = 0;
      }

      v23 = v21 + v20;
      if (v22 <= v23)
      {
        v23 = 0;
      }

      *(v10 + 88) = v23;
      v24 = *(v10 + 80);
      if (*(v24 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(v10 + 124))
        {
          if (*(v10 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v10 + 100));
          }

          *(v10 + 124) = 0;
        }

        v25 = 1;
        goto LABEL_42;
      }
    }

    goto LABEL_71;
  }

  v57 = v11;
  if ((v63 & 1) == 0)
  {
    goto LABEL_71;
  }

  if (v62 <= 1)
  {
LABEL_74:
    __break(0xC471u);
    JUMPOUT(0x19E243A70);
  }

  *v61 = 3197;
  v46 = (*(v10 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v47 = *(v10 + 72);
  if (v46 + 16 >= v47)
  {
    v46 = 0;
  }

  v48 = v46 + 16;
  if (v47 <= v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = v48;
  }

  *(v10 + 88) = v49;
  v50 = *(v10 + 80);
  if (*(v50 + 8) <= 0xFFuLL)
  {
    goto LABEL_71;
  }

  atomic_exchange((*(v50 + 16) + 128), v49);
  *(v10 + 124) = 0;
  v51 = *(v10 + 8);
  v52 = IPC::Encoder::operator new(0x238, v15);
  *v52 = 991;
  *(v52 + 2) = 0;
  *(v52 + 3) = 0;
  *(v52 + 1) = v57;
  *(v52 + 68) = 0;
  *(v52 + 70) = 0;
  *(v52 + 69) = 0;
  IPC::Encoder::encodeHeader(v52);
  v64 = v52;
  IPC::ArgumentCoder<WebKit::WebGPU::RenderPassDescriptor,void>::encode(v52, &v58);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v52, v9);
  v53 = IPC::Connection::sendMessageImpl(v51, &v64, 1, 0);
  v54 = v64;
  v64 = 0;
  if (v54)
  {
    IPC::Encoder::~Encoder(v54, v15);
    bmalloc::api::tzoneFree(v55, v56);
  }

  v25 = v53 == 0;
LABEL_42:
  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    IPC::StreamClientConnection::operator delete(v10);
    if (v25)
    {
LABEL_44:
      v40 = a1[5];
      if (WebKit::WebGPU::RemoteRenderPassEncoderProxy::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteRenderPassEncoderProxy::s_heapRef, v15);
      }

      else
      {
        NonCompact = WebKit::WebGPU::RemoteRenderPassEncoderProxy::operatorNewSlow(0x38);
      }

      v42 = NonCompact;
      *(NonCompact + 16) = 1;
      *(NonCompact + 24) = 0;
      *(NonCompact + 32) = v9;
      *NonCompact = &unk_1F1126340;
      *(NonCompact + 8) = 0;
      ++*(v40 + 8);
      *(NonCompact + 40) = v40;
      v43 = a1[6];
      atomic_fetch_add((v43 + 28), 1u);
      *(NonCompact + 48) = v43;
      if (v60 == 1)
      {
        WebCore::WebGPU::RenderPassEncoder::setLabel(NonCompact, &v58);
      }

      goto LABEL_50;
    }
  }

  else if (v25)
  {
    goto LABEL_44;
  }

  v42 = 0;
LABEL_50:
  *a5 = v42;
  if (v60)
  {
    WTF::Vector<std::optional<WebKit::WebGPU::RenderPassColorAttachment>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v59, v15);
    v45 = v58;
    v58 = 0;
    if (v45)
    {
      if (atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v45, v44);
      }
    }
  }
}

void WebKit::WebGPU::RemoteCommandEncoderProxy::beginComputePass(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  LOBYTE(v66) = 0;
  v69 = 0;
  if (*(a2 + 32) == 1)
  {
    WebKit::WebGPU::ConvertToBackingContext::convertToBacking(a1[5], a2, &v62);
    v6 = v65;
    if (v69 == v65)
    {
      if (v69)
      {
        v7 = v62;
        v62 = 0;
        v8 = v66;
        v66 = v7;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v5);
        }

        v67 = v63;
        LOBYTE(v68) = v64;
        if (!v6)
        {
LABEL_19:
          if (v69 != 1)
          {
            *a3 = 0;
            return;
          }

          goto LABEL_20;
        }

LABEL_15:
        v10 = v62;
        if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v5);
        }

        goto LABEL_19;
      }
    }

    else
    {
      if (!v69)
      {
        v11 = v62;
        v62 = 0;
        v66 = v11;
        v67 = v63;
        v68 = v64;
        v69 = 1;
        if (!v65)
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }

      v9 = v66;
      v66 = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v5);
      }

      v69 = 0;
    }

    if (!v6)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

LABEL_20:
  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
LABEL_103:
    __break(0xC471u);
    JUMPOUT(0x19E244118);
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v13 = IdentifierInternal;
  v14 = *(a1[6] + 80);
  atomic_fetch_add(v14, 1u);
  v15 = a1[4];
  v16 = *(v14 + 128);
  v17 = INFINITY;
  if (fabs(v16) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v17 = v16 + v18;
  }

  if (*(v14 + 64) != v15)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v14 + 72, &v62, v17);
    if (BYTE8(v63) == 1)
    {
      v32 = v63;
      if (v63 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E244158);
      }

      v33 = v62;
      *v62 = 3198;
      v34 = v33 + 2;
      if (v32 - 2 >= (-v34 & 7 | 8uLL))
      {
        v35 = -v34 & 7;
        *&v34[v35] = v15;
        v36 = 6;
        if (v35 > 6)
        {
          v36 = v35;
        }

        v37 = v36 + 10;
        v38 = (*(v14 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v39 = *(v14 + 72);
        if (v38 + 16 < v39)
        {
          goto LABEL_54;
        }

        goto LABEL_99;
      }
    }

LABEL_63:
    v31 = 0;
    goto LABEL_64;
  }

  while (1)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v14 + 72, &v70, v17);
    if (v72 != 1)
    {
      goto LABEL_63;
    }

    v20 = v70;
    v21 = v71;
    *(&v63 + 1) = v71;
    if (v71 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E244138);
    }

    *v70 = 990;
    if ((v69 & 1) == 0)
    {
      break;
    }

    if (v21 == 2)
    {
      goto LABEL_90;
    }

    *(v20 + 2) = 1;
    v62 = (v20 + 3);
    *&v63 = v21 - 3;
    if (v69)
    {
      goto LABEL_29;
    }

LABEL_98:
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_99:
    v38 = 0;
LABEL_54:
    v40 = v37 + v38;
    if (v39 <= v40)
    {
      v40 = 0;
    }

    *(v14 + 88) = v40;
    v41 = *(v14 + 80);
    if (*(v41 + 8) <= 0xFFuLL)
    {
LABEL_89:
      __break(1u);
LABEL_90:
      v62 = 0;
      *&v63 = 0;
LABEL_29:
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v62, &v66);
      IPC::ArgumentCoder<std::optional<WebKit::WebGPU::ComputePassTimestampWrites>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebKit::WebGPU::ComputePassTimestampWrites> const&>(&v62, &v67);
      v22 = v62;
      v23 = v63;
      goto LABEL_33;
    }

    v42 = atomic_exchange((*(v41 + 16) + 128), v40);
    v43 = *(v14 + 124);
    if (v42 == 0x80000000 || v43 != 0)
    {
      v45 = v43 + 1;
      *(v14 + 124) = v45;
      if (v45 >= *(v14 + 120))
      {
        if (*(v14 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v14 + 100));
        }

        *(v14 + 124) = 0;
      }
    }

    *(v14 + 64) = v15;
  }

  if (v21 == 2)
  {
    goto LABEL_78;
  }

  *(v20 + 2) = 0;
  v23 = v21 - 3;
  v22 = (v20 + 3);
  v62 = v22;
  *&v63 = v23;
LABEL_33:
  v24 = -v22 & 7 | 8;
  if (v23 >= v24)
  {
    *(v22 + (-v22 & 7)) = v13;
    v25 = v63 - v24;
    if (v63 >= v24)
    {
      v62 = (v62 + v24);
      *&v63 = v63 - v24;
      v26 = *(&v63 + 1) - v25;
      if (v26 <= 0x10)
      {
        v26 = 16;
      }

      v27 = (*(v14 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v28 = *(v14 + 72);
      if (v27 + 16 >= v28)
      {
        v27 = 0;
      }

      v29 = v27 + v26;
      if (v28 <= v29)
      {
        v29 = 0;
      }

      *(v14 + 88) = v29;
      v30 = *(v14 + 80);
      if (*(v30 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v30 + 16) + 128), v29) == 0x80000000 || *(v14 + 124))
        {
          if (*(v14 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v14 + 100));
          }

          *(v14 + 124) = 0;
        }

        v31 = 1;
        goto LABEL_64;
      }
    }

    goto LABEL_89;
  }

LABEL_78:
  if ((v72 & 1) == 0)
  {
    goto LABEL_89;
  }

  if (v71 <= 1)
  {
    goto LABEL_103;
  }

  *v70 = 3197;
  v51 = (*(v14 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v52 = *(v14 + 72);
  if (v51 + 16 >= v52)
  {
    v51 = 0;
  }

  v53 = v51 + 16;
  v54 = v52 <= v53 ? 0 : v53;
  *(v14 + 88) = v54;
  v55 = *(v14 + 80);
  if (*(v55 + 8) <= 0xFFuLL)
  {
    goto LABEL_89;
  }

  atomic_exchange((*(v55 + 16) + 128), v54);
  *(v14 + 124) = 0;
  v56 = *(v14 + 8);
  v57 = IPC::Encoder::operator new(0x238, v19);
  *v57 = 990;
  *(v57 + 2) = 0;
  *(v57 + 3) = 0;
  *(v57 + 1) = v15;
  *(v57 + 68) = 0;
  *(v57 + 70) = 0;
  *(v57 + 69) = 0;
  IPC::Encoder::encodeHeader(v57);
  v62 = v57;
  if (v69)
  {
    v73 = 1;
    IPC::Encoder::operator<<<BOOL>(v57, &v73);
    if (v69)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v57, &v66);
      IPC::ArgumentCoder<std::optional<WebCore::RemoteUserInputEventData>,void>::encode<IPC::Encoder,std::optional<WebCore::RemoteUserInputEventData> const&>(v57, &v67);
      goto LABEL_92;
    }

    goto LABEL_98;
  }

  v73 = 0;
  IPC::Encoder::operator<<<BOOL>(v57, &v73);
LABEL_92:
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v57, v13);
  v58 = IPC::Connection::sendMessageImpl(v56, &v62, 1, 0);
  v59 = v62;
  v62 = 0;
  if (v59)
  {
    IPC::Encoder::~Encoder(v59, v19);
    bmalloc::api::tzoneFree(v60, v61);
  }

  v31 = v58 == 0;
LABEL_64:
  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    IPC::StreamClientConnection::operator delete(v14);
    if (v31)
    {
      goto LABEL_66;
    }

    goto LABEL_71;
  }

  if (!v31)
  {
LABEL_71:
    v48 = 0;
    goto LABEL_72;
  }

LABEL_66:
  v46 = a1[5];
  if (WebKit::WebGPU::RemoteComputePassEncoderProxy::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteComputePassEncoderProxy::s_heapRef, v19);
  }

  else
  {
    NonCompact = WebKit::WebGPU::RemoteComputePassEncoderProxy::operatorNewSlow(0x38);
  }

  v48 = NonCompact;
  *(NonCompact + 16) = 1;
  *(NonCompact + 24) = 0;
  *(NonCompact + 32) = v13;
  *NonCompact = &unk_1F1125830;
  *(NonCompact + 8) = 0;
  ++*(v46 + 8);
  *(NonCompact + 40) = v46;
  v49 = a1[6];
  atomic_fetch_add((v49 + 28), 1u);
  *(NonCompact + 48) = v49;
  if (v69 == 1)
  {
    WebCore::WebGPU::ComputePassEncoder::setLabel(NonCompact, &v66);
  }

LABEL_72:
  *a3 = v48;
  if (v69)
  {
    v50 = v66;
    v66 = 0;
    if (v50)
    {
      if (atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v50, v19);
      }
    }
  }
}

void WebKit::WebGPU::RemoteCommandEncoderProxy::copyBufferToBuffer(WebKit::WebGPU::RemoteCommandEncoderProxy *this, const WebCore::WebGPU::Buffer *a2, uint64_t a3, const WebCore::WebGPU::Buffer *a4, uint64_t a5, uint64_t a6)
{
  v11 = (*(**(this + 5) + 40))(*(this + 5), a2);
  v12 = (*(**(this + 5) + 40))(*(this + 5), a4);
  v13 = v12;
  v14 = *(*(this + 6) + 80);
  atomic_fetch_add(v14, 1u);
  v15 = *(this + 4);
  v16 = *(v14 + 128);
  v17 = INFINITY;
  if (fabs(v16) != INFINITY)
  {
    WTF::ApproximateTime::now(v12);
    v17 = v16 + v18;
  }

  if (*(v14 + 64) == v15)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v14 + 72, &v69, v17);
  if (v71 == 1)
  {
    v43 = v70;
    if (v70 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E24464CLL);
    }

    v44 = v69;
    *v69 = 3198;
    v45 = v44 + 1;
    if (v43 - 2 >= (-v45 & 7 | 8uLL))
    {
      v46 = -v45 & 7;
      *(v45 + v46) = v15;
      v47 = 6;
      if (v46 > 6)
      {
        v47 = v46;
      }

      v48 = v47 + 10;
      v49 = (*(v14 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v50 = *(v14 + 72);
      if (v49 + 16 >= v50)
      {
        v49 = 0;
      }

      v51 = v48 + v49;
      if (v50 <= v51)
      {
        v51 = 0;
      }

      *(v14 + 88) = v51;
      v52 = *(v14 + 80);
      if (*(v52 + 8) <= 0xFFuLL)
      {
        goto LABEL_59;
      }

      v53 = atomic_exchange((*(v52 + 16) + 128), v51);
      v54 = *(v14 + 124);
      if (v53 == 0x80000000 || v54 != 0)
      {
        v56 = v54 + 1;
        *(v14 + 124) = v56;
        if (v56 >= *(v14 + 120))
        {
          if (*(v14 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v14 + 100));
          }

          *(v14 + 124) = 0;
        }
      }

      *(v14 + 64) = v15;
LABEL_4:
      IPC::StreamClientConnectionBuffer::tryAcquire(v14 + 72, &v69, v17);
      if (v71 != 1)
      {
        goto LABEL_24;
      }

      v20 = v70;
      if (v70 <= 1)
      {
        __break(0xC471u);
        goto LABEL_60;
      }

      v21 = v69;
      *v69 = 993;
      v22 = v21 + 1;
      v23 = -v22 & 7 | 8;
      v24 = v20 - 2 - v23;
      if (v20 - 2 >= v23)
      {
        *(v22 + (-v22 & 7)) = v11;
        v25 = v22 + v23;
        v26 = -v25 & 7 | 8;
        v27 = v24 >= v26;
        v28 = v24 - v26;
        if (v27)
        {
          *(v25 + (-v25 & 7)) = a3;
          v29 = v25 + v26;
          v30 = -v29 & 7 | 8;
          v31 = v28 - v30;
          if (v28 >= v30)
          {
            *(v29 + (-v29 & 7)) = v13;
            v32 = v29 + v30;
            v33 = -(v29 + v30);
            v34 = v33 & 7 | 8;
            v35 = v31 - v34;
            if (v31 >= v34)
            {
              *(v32 + (v33 & 7)) = a5;
              v36 = v32 + v34;
              v37 = -v36 & 7 | 8;
              if (v35 >= v37)
              {
                *(v36 + (-v36 & 7)) = a6;
                v38 = v20 - v35 + v37;
                if (v38 <= 0x10)
                {
                  v38 = 16;
                }

                v39 = (*(v14 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                v40 = *(v14 + 72);
                if (v39 + 16 >= v40)
                {
                  v39 = 0;
                }

                v41 = v39 + v38;
                if (v40 <= v41)
                {
                  v41 = 0;
                }

                *(v14 + 88) = v41;
                v42 = *(v14 + 80);
                if (*(v42 + 8) > 0xFFuLL)
                {
                  if (atomic_exchange((*(v42 + 16) + 128), v41) == 0x80000000 || *(v14 + 124))
                  {
                    if (*(v14 + 112) == 1)
                    {
                      MEMORY[0x19EB16320](*(v14 + 100));
                    }

                    *(v14 + 124) = 0;
                  }

                  goto LABEL_24;
                }

                goto LABEL_59;
              }
            }
          }
        }
      }

      v68 = v15;
      if (v71)
      {
        if (v70 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v69 = 3197;
          v57 = (*(v14 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v58 = *(v14 + 72);
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

          *(v14 + 88) = v60;
          v61 = *(v14 + 80);
          if (*(v61 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v61 + 16) + 128), v60);
            *(v14 + 124) = 0;
            v62 = *(v14 + 8);
            v63 = IPC::Encoder::operator new(0x238, v19);
            *v63 = 993;
            *(v63 + 2) = 0;
            *(v63 + 3) = 0;
            *(v63 + 1) = v68;
            *(v63 + 68) = 0;
            *(v63 + 70) = 0;
            *(v63 + 69) = 0;
            IPC::Encoder::encodeHeader(v63);
            v72 = v63;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v63, v11);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v63, a3);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v63, v13);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v63, a5);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v63, a6);
            IPC::Connection::sendMessageImpl(v62, &v72, 1, 0);
            v65 = v72;
            v72 = 0;
            if (v65)
            {
              IPC::Encoder::~Encoder(v65, v64);
              bmalloc::api::tzoneFree(v66, v67);
            }

            goto LABEL_24;
          }
        }
      }

LABEL_59:
      __break(1u);
LABEL_60:
      JUMPOUT(0x19E244624);
    }
  }

LABEL_24:
  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    IPC::StreamClientConnection::operator delete(v14);
  }
}

void WebKit::WebGPU::RemoteCommandEncoderProxy::copyBufferToTexture(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(a1[5], a2, v58);
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(a1[5], a3, v52);
  v7 = WebKit::WebGPU::ConvertToBackingContext::convertToBacking(a1[5], a4, &v48);
  if (v59 != 1 || v57 != 1 || v51 != 1)
  {
    goto LABEL_34;
  }

  v9 = *(a1[6] + 80);
  atomic_fetch_add(v9, 1u);
  v10 = a1[4];
  v11 = *(v9 + 128);
  v12 = INFINITY;
  if (fabs(v11) != INFINITY)
  {
    WTF::ApproximateTime::now(v7);
    v12 = v11 + v13;
  }

  if (*(v9 + 64) != v10)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v63, v12);
    if (v65 != 1)
    {
      goto LABEL_32;
    }

    v34 = v64;
    if (v64 <= 1)
    {
LABEL_69:
      __break(0xC471u);
      JUMPOUT(0x19E244AF8);
    }

    v35 = v63;
    *v63 = 3198;
    v36 = (v35 + 2);
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      goto LABEL_32;
    }

    v37 = -v36 & 7;
    *(v36 + v37) = v10;
    v38 = 6;
    if (v37 > 6)
    {
      v38 = v37;
    }

    v39 = v38 + 10;
    v40 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v41 = *(v9 + 72);
    if (v40 + 16 >= v41)
    {
      v40 = 0;
    }

    v42 = v39 + v40;
    if (v41 <= v42)
    {
      v42 = 0;
    }

    *(v9 + 88) = v42;
    v43 = *(v9 + 80);
    if (*(v43 + 8) <= 0xFFuLL)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v44 = atomic_exchange((*(v43 + 16) + 128), v42);
    v45 = *(v9 + 124);
    if (v44 == 0x80000000 || v45 != 0)
    {
      v47 = v45 + 1;
      *(v9 + 124) = v47;
      if (v47 >= *(v9 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v60, v12);
  if (v62 == 1)
  {
    v14 = v60;
    v15 = v61;
    v65 = v61;
    if (v61 <= 1)
    {
      goto LABEL_69;
    }

    *v60 = 994;
    v63 = (v14 + 1);
    v64 = v15 - 2;
    IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyBuffer,void>::encode(&v63, v58);
    IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTexture,void>::encode(&v63, v52);
    IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&>(&v63, &v48);
    if (v63)
    {
      v16 = v65 - v64;
      if (v65 - v64 <= 0x10)
      {
        v16 = 16;
      }

      v17 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v9 + 72);
      if (v17 + 16 >= v18)
      {
        v17 = 0;
      }

      v19 = v17 + v16;
      if (v18 <= v19)
      {
        v19 = 0;
      }

      *(v9 + 88) = v19;
      v20 = *(v9 + 80);
      if (*(v20 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v20 + 16) + 128), v19) == 0x80000000 || *(v9 + 124))
        {
          if (*(v9 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v9 + 100));
          }

          *(v9 + 124) = 0;
        }

        goto LABEL_32;
      }
    }

    else if (v62)
    {
      if (v61 <= 1)
      {
        __break(0xC471u);
      }

      else
      {
        *v60 = 3197;
        v21 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v22 = *(v9 + 72);
        if (v21 + 16 >= v22)
        {
          v21 = 0;
        }

        v23 = v21 + 16;
        if (v22 <= v23)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        *(v9 + 88) = v24;
        v25 = *(v9 + 80);
        if (*(v25 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v25 + 16) + 128), v24);
          *(v9 + 124) = 0;
          v26 = *(v9 + 8);
          v27 = IPC::Encoder::operator new(0x238, v8);
          *v27 = 994;
          *(v27 + 2) = 0;
          *(v27 + 3) = 0;
          *(v27 + 1) = v10;
          *(v27 + 68) = 0;
          *(v27 + 70) = 0;
          *(v27 + 69) = 0;
          IPC::Encoder::encodeHeader(v27);
          v63 = v27;
          IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyBuffer,void>::encode(v27, v58);
          IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTexture,void>::encode(v27, v52);
          v66 = v50;
          IPC::Encoder::operator<<<BOOL>(v27, &v66);
          IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&>(v27, &v48, v66);
          IPC::Connection::sendMessageImpl(v26, &v63, 1, 0);
          v28 = v63;
          v63 = 0;
          if (v28)
          {
            IPC::Encoder::~Encoder(v28, v8);
            bmalloc::api::tzoneFree(v32, v33);
          }

          goto LABEL_32;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_32:
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    IPC::StreamClientConnection::operator delete(v9);
  }

LABEL_34:
  if (v51 == 1 && v50 == 0)
  {
    v30 = v48;
    if (v48)
    {
      v48 = 0;
      v49 = 0;
      WTF::fastFree(v30, v8);
    }
  }

  if (v57 == 1 && v56 == 1 && !v55)
  {
    v31 = v53;
    if (v53)
    {
      v53 = 0;
      v54 = 0;
      WTF::fastFree(v31, v8);
    }
  }
}

void WebKit::WebGPU::RemoteCommandEncoderProxy::copyTextureToBuffer(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(a1[5], a2, v54);
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(a1[5], a3, v52);
  v7 = WebKit::WebGPU::ConvertToBackingContext::convertToBacking(a1[5], a4, &v48);
  if (v59 != 1 || v53 != 1 || v51 != 1)
  {
    goto LABEL_34;
  }

  v9 = *(a1[6] + 80);
  atomic_fetch_add(v9, 1u);
  v10 = a1[4];
  v11 = *(v9 + 128);
  v12 = INFINITY;
  if (fabs(v11) != INFINITY)
  {
    WTF::ApproximateTime::now(v7);
    v12 = v11 + v13;
  }

  if (*(v9 + 64) != v10)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v63, v12);
    if (v65 != 1)
    {
      goto LABEL_32;
    }

    v34 = v64;
    if (v64 <= 1)
    {
LABEL_69:
      __break(0xC471u);
      JUMPOUT(0x19E244FC4);
    }

    v35 = v63;
    *v63 = 3198;
    v36 = (v35 + 2);
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      goto LABEL_32;
    }

    v37 = -v36 & 7;
    *(v36 + v37) = v10;
    v38 = 6;
    if (v37 > 6)
    {
      v38 = v37;
    }

    v39 = v38 + 10;
    v40 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v41 = *(v9 + 72);
    if (v40 + 16 >= v41)
    {
      v40 = 0;
    }

    v42 = v39 + v40;
    if (v41 <= v42)
    {
      v42 = 0;
    }

    *(v9 + 88) = v42;
    v43 = *(v9 + 80);
    if (*(v43 + 8) <= 0xFFuLL)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v44 = atomic_exchange((*(v43 + 16) + 128), v42);
    v45 = *(v9 + 124);
    if (v44 == 0x80000000 || v45 != 0)
    {
      v47 = v45 + 1;
      *(v9 + 124) = v47;
      if (v47 >= *(v9 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v60, v12);
  if (v62 == 1)
  {
    v14 = v60;
    v15 = v61;
    v65 = v61;
    if (v61 <= 1)
    {
      goto LABEL_69;
    }

    *v60 = 995;
    v63 = (v14 + 1);
    v64 = v15 - 2;
    IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTexture,void>::encode(&v63, v54);
    IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyBuffer,void>::encode(&v63, v52);
    IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&>(&v63, &v48);
    if (v63)
    {
      v16 = v65 - v64;
      if (v65 - v64 <= 0x10)
      {
        v16 = 16;
      }

      v17 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v9 + 72);
      if (v17 + 16 >= v18)
      {
        v17 = 0;
      }

      v19 = v17 + v16;
      if (v18 <= v19)
      {
        v19 = 0;
      }

      *(v9 + 88) = v19;
      v20 = *(v9 + 80);
      if (*(v20 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v20 + 16) + 128), v19) == 0x80000000 || *(v9 + 124))
        {
          if (*(v9 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v9 + 100));
          }

          *(v9 + 124) = 0;
        }

        goto LABEL_32;
      }
    }

    else if (v62)
    {
      if (v61 <= 1)
      {
        __break(0xC471u);
      }

      else
      {
        *v60 = 3197;
        v21 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v22 = *(v9 + 72);
        if (v21 + 16 >= v22)
        {
          v21 = 0;
        }

        v23 = v21 + 16;
        if (v22 <= v23)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        *(v9 + 88) = v24;
        v25 = *(v9 + 80);
        if (*(v25 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v25 + 16) + 128), v24);
          *(v9 + 124) = 0;
          v26 = *(v9 + 8);
          v27 = IPC::Encoder::operator new(0x238, v8);
          *v27 = 995;
          *(v27 + 2) = 0;
          *(v27 + 3) = 0;
          *(v27 + 1) = v10;
          *(v27 + 68) = 0;
          *(v27 + 70) = 0;
          *(v27 + 69) = 0;
          IPC::Encoder::encodeHeader(v27);
          v63 = v27;
          IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTexture,void>::encode(v27, v54);
          IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyBuffer,void>::encode(v27, v52);
          v66 = v50;
          IPC::Encoder::operator<<<BOOL>(v27, &v66);
          IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&>(v27, &v48, v66);
          IPC::Connection::sendMessageImpl(v26, &v63, 1, 0);
          v28 = v63;
          v63 = 0;
          if (v28)
          {
            IPC::Encoder::~Encoder(v28, v8);
            bmalloc::api::tzoneFree(v32, v33);
          }

          goto LABEL_32;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_32:
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    IPC::StreamClientConnection::operator delete(v9);
  }

LABEL_34:
  if (v51 == 1 && v50 == 0)
  {
    v30 = v48;
    if (v48)
    {
      v48 = 0;
      v49 = 0;
      WTF::fastFree(v30, v8);
    }
  }

  if (v59 == 1 && v58 == 1 && !v57)
  {
    v31 = v55;
    if (v55)
    {
      v55 = 0;
      v56 = 0;
      WTF::fastFree(v31, v8);
    }
  }
}

void WebKit::WebGPU::RemoteCommandEncoderProxy::copyTextureToTexture(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(a1[5], a2, v59);
  WebKit::WebGPU::ConvertToBackingContext::convertToBacking(a1[5], a3, v53);
  v7 = WebKit::WebGPU::ConvertToBackingContext::convertToBacking(a1[5], a4, &v49);
  if (v64 != 1 || v58 != 1 || v52 != 1)
  {
    goto LABEL_34;
  }

  v9 = *(a1[6] + 80);
  atomic_fetch_add(v9, 1u);
  v10 = a1[4];
  v11 = *(v9 + 128);
  v12 = INFINITY;
  if (fabs(v11) != INFINITY)
  {
    WTF::ApproximateTime::now(v7);
    v12 = v11 + v13;
  }

  if (*(v9 + 64) != v10)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v68, v12);
    if (v70 != 1)
    {
      goto LABEL_32;
    }

    v35 = v69;
    if (v69 <= 1)
    {
LABEL_74:
      __break(0xC471u);
      JUMPOUT(0x19E2454C8);
    }

    v36 = v68;
    *v68 = 3198;
    v37 = (v36 + 2);
    if (v35 - 2 < (-v37 & 7 | 8uLL))
    {
      goto LABEL_32;
    }

    v38 = -v37 & 7;
    *(v37 + v38) = v10;
    v39 = 6;
    if (v38 > 6)
    {
      v39 = v38;
    }

    v40 = v39 + 10;
    v41 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v42 = *(v9 + 72);
    if (v41 + 16 >= v42)
    {
      v41 = 0;
    }

    v43 = v40 + v41;
    if (v42 <= v43)
    {
      v43 = 0;
    }

    *(v9 + 88) = v43;
    v44 = *(v9 + 80);
    if (*(v44 + 8) <= 0xFFuLL)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v45 = atomic_exchange((*(v44 + 16) + 128), v43);
    v46 = *(v9 + 124);
    if (v45 == 0x80000000 || v46 != 0)
    {
      v48 = v46 + 1;
      *(v9 + 124) = v48;
      if (v48 >= *(v9 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v65, v12);
  if (v67 == 1)
  {
    v14 = v65;
    v15 = v66;
    v70 = v66;
    if (v66 <= 1)
    {
      goto LABEL_74;
    }

    *v65 = 996;
    v68 = (v14 + 1);
    v69 = v15 - 2;
    IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTexture,void>::encode(&v68, v59);
    IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTexture,void>::encode(&v68, v53);
    IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&>(&v68, &v49);
    if (v68)
    {
      v16 = v70 - v69;
      if (v70 - v69 <= 0x10)
      {
        v16 = 16;
      }

      v17 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v9 + 72);
      if (v17 + 16 >= v18)
      {
        v17 = 0;
      }

      v19 = v17 + v16;
      if (v18 <= v19)
      {
        v19 = 0;
      }

      *(v9 + 88) = v19;
      v20 = *(v9 + 80);
      if (*(v20 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v20 + 16) + 128), v19) == 0x80000000 || *(v9 + 124))
        {
          if (*(v9 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v9 + 100));
          }

          *(v9 + 124) = 0;
        }

        goto LABEL_32;
      }
    }

    else if (v67)
    {
      if (v66 <= 1)
      {
        __break(0xC471u);
      }

      else
      {
        *v65 = 3197;
        v21 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v22 = *(v9 + 72);
        if (v21 + 16 >= v22)
        {
          v21 = 0;
        }

        v23 = v21 + 16;
        if (v22 <= v23)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        *(v9 + 88) = v24;
        v25 = *(v9 + 80);
        if (*(v25 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v25 + 16) + 128), v24);
          *(v9 + 124) = 0;
          v26 = *(v9 + 8);
          v27 = IPC::Encoder::operator new(0x238, v8);
          *v27 = 996;
          *(v27 + 2) = 0;
          *(v27 + 3) = 0;
          *(v27 + 1) = v10;
          *(v27 + 68) = 0;
          *(v27 + 70) = 0;
          *(v27 + 69) = 0;
          IPC::Encoder::encodeHeader(v27);
          v68 = v27;
          IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTexture,void>::encode(v27, v59);
          IPC::ArgumentCoder<WebKit::WebGPU::ImageCopyTexture,void>::encode(v27, v53);
          v71 = v51;
          IPC::Encoder::operator<<<BOOL>(v27, &v71);
          IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&>(v27, &v49, v71);
          IPC::Connection::sendMessageImpl(v26, &v68, 1, 0);
          v28 = v68;
          v68 = 0;
          if (v28)
          {
            IPC::Encoder::~Encoder(v28, v8);
            bmalloc::api::tzoneFree(v33, v34);
          }

          goto LABEL_32;
        }
      }
    }

    goto LABEL_73;
  }

LABEL_32:
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    IPC::StreamClientConnection::operator delete(v9);
  }

LABEL_34:
  if (v52 == 1 && v51 == 0)
  {
    v30 = v49;
    if (v49)
    {
      v49 = 0;
      v50 = 0;
      WTF::fastFree(v30, v8);
    }
  }

  if (v58 == 1 && v57 == 1 && !v56)
  {
    v31 = v54;
    if (v54)
    {
      v54 = 0;
      v55 = 0;
      WTF::fastFree(v31, v8);
    }
  }

  if (v64 == 1 && v63 == 1 && !v62)
  {
    v32 = v60;
    if (v60)
    {
      v60 = 0;
      v61 = 0;
      WTF::fastFree(v32, v8);
    }
  }
}

void WebKit::WebGPU::RemoteCommandEncoderProxy::clearBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54[0] = a4;
  v54[1] = a5;
  v7 = (*(**(a1 + 40) + 40))(*(a1 + 40));
  v8 = v7;
  v9 = *(*(a1 + 48) + 80);
  atomic_fetch_add(v9, 1u);
  v10 = *(a1 + 32);
  v11 = *(v9 + 128);
  v12 = INFINITY;
  if (fabs(v11) != INFINITY)
  {
    WTF::ApproximateTime::now(v7);
    v12 = v11 + v13;
  }

  if (*(v9 + 64) != v10)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v58, v12);
    if (v60 != 1)
    {
      goto LABEL_34;
    }

    v41 = v59;
    if (v59 <= 1)
    {
      goto LABEL_60;
    }

    v42 = v58;
    *v58 = 3198;
    v43 = v42 + 2;
    if (v41 - 2 < (-v43 & 7 | 8uLL))
    {
      goto LABEL_34;
    }

    v44 = -v43 & 7;
    *&v43[v44] = v10;
    if (v44 != 7)
    {
      v44 = 6;
    }

    v45 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v47 = *(v9 + 72);
    v46 = *(v9 + 80);
    v48 = v44 + 10;
    if (v45 + 16 >= v47)
    {
      v45 = 0;
    }

    v49 = v48 + v45;
    if (v47 <= v49)
    {
      v49 = 0;
    }

    *(v9 + 88) = v49;
    if (*(v46 + 8) <= 0xFFuLL)
    {
      goto LABEL_59;
    }

    v50 = atomic_exchange((*(v46 + 16) + 128), v49);
    v51 = *(v9 + 124);
    if (v50 == 0x80000000 || v51 != 0)
    {
      v53 = v51 + 1;
      *(v9 + 124) = v53;
      if (v53 >= *(v9 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v55, v12);
  if (v57 != 1)
  {
    goto LABEL_34;
  }

  v14 = v55;
  v15 = v56;
  v60 = v56;
  if (v56 <= 1)
  {
    __break(0xC471u);
    goto LABEL_61;
  }

  *v55 = 992;
  v16 = v14 + 1;
  v17 = v15 - 2;
  v18 = -v16 & 7 | 8;
  v19 = v17 >= v18;
  v20 = v17 - v18;
  if (v19 && (*(v16 + (-v16 & 7)) = v8, v21 = v16 + v18, v22 = -v21 & 7 | 8, v19 = v20 >= v22, v23 = v20 - v22, v19))
  {
    *(v21 + (-v21 & 7)) = a3;
    v58 = (v21 + v22);
    v59 = v23;
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(&v58, v54);
  if (v58)
  {
    v25 = v60 - v59;
    if (v60 - v59 <= 0x10)
    {
      v25 = 16;
    }

    v26 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(v9 + 72);
    if (v26 + 16 >= v27)
    {
      v26 = 0;
    }

    v28 = v26 + v25;
    if (v27 <= v28)
    {
      v28 = 0;
    }

    *(v9 + 88) = v28;
    v29 = *(v9 + 80);
    if (*(v29 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v29 + 16) + 128), v28) == 0x80000000 || *(v9 + 124))
      {
        if (*(v9 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v9 + 100));
        }

        *(v9 + 124) = 0;
      }

      goto LABEL_34;
    }

    goto LABEL_59;
  }

  if ((v57 & 1) == 0)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(0xC471u);
LABEL_61:
    JUMPOUT(0x19E245918);
  }

  if (v56 <= 1)
  {
    __break(0xC471u);
    goto LABEL_59;
  }

  *v55 = 3197;
  v30 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v31 = *(v9 + 72);
  if (v30 + 16 >= v31)
  {
    v30 = 0;
  }

  v32 = v30 + 16;
  if (v31 <= v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  *(v9 + 88) = v33;
  v34 = *(v9 + 80);
  if (*(v34 + 8) <= 0xFFuLL)
  {
    goto LABEL_59;
  }

  atomic_exchange((*(v34 + 16) + 128), v33);
  *(v9 + 124) = 0;
  v35 = *(v9 + 8);
  v36 = IPC::Encoder::operator new(0x238, v24);
  *v36 = 992;
  *(v36 + 2) = 0;
  *(v36 + 3) = 0;
  *(v36 + 1) = v10;
  *(v36 + 68) = 0;
  *(v36 + 70) = 0;
  *(v36 + 69) = 0;
  IPC::Encoder::encodeHeader(v36);
  v58 = v36;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v36, v8);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v36, a3);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(v36, v54);
  IPC::Connection::sendMessageImpl(v35, &v58, 1, 0);
  v38 = v58;
  v58 = 0;
  if (v38)
  {
    IPC::Encoder::~Encoder(v38, v37);
    bmalloc::api::tzoneFree(v39, v40);
  }

LABEL_34:
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    IPC::StreamClientConnection::operator delete(v9);
  }
}

void WebKit::WebGPU::RemoteCommandEncoderProxy::pushDebugGroup(WTF::ApproximateTime *a1, uint64_t *a2)
{
  v3 = *(*(a1 + 6) + 80);
  atomic_fetch_add(v3, 1u);
  v4 = *(a1 + 4);
  v5 = *(v3 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v6 = v5 + v7;
  }

  if (*(v3 + 64) != v4)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v42, v6);
    if (v44 != 1)
    {
      goto LABEL_28;
    }

    v26 = v43;
    if (v43 <= 1)
    {
LABEL_53:
      __break(0xC471u);
      JUMPOUT(0x19E245CBCLL);
    }

    v27 = v42;
    *v42 = 3198;
    v28 = v27 + 2;
    if (v26 - 2 < (-v28 & 7 | 8uLL))
    {
      goto LABEL_28;
    }

    v29 = -v28 & 7;
    *&v28[v29] = v4;
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
      goto LABEL_52;
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v39, v6);
  if (v41 != 1)
  {
    goto LABEL_28;
  }

  v8 = v39;
  v9 = v40;
  v44 = v40;
  if (v40 <= 1)
  {
    goto LABEL_53;
  }

  *v39 = 1001;
  v42 = (v8 + 1);
  v43 = v9 - 2;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v42, a2);
  if (v42)
  {
    v11 = 16;
    if (v44 - v43 > 0x10)
    {
      v11 = v44 - v43;
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

      goto LABEL_28;
    }

    goto LABEL_52;
  }

  if ((v41 & 1) == 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v40 <= 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  *v39 = 3197;
  v16 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v3 + 72);
  v17 = *(v3 + 80);
  if (v16 + 16 >= v18)
  {
    v16 = 0;
  }

  v19 = v16 + 16;
  if (v18 <= v19)
  {
    v19 = 0;
  }

  *(v3 + 88) = v19;
  if (*(v17 + 8) <= 0xFFuLL)
  {
    goto LABEL_52;
  }

  atomic_exchange((*(v17 + 16) + 128), v19);
  *(v3 + 124) = 0;
  v20 = *(v3 + 8);
  v21 = IPC::Encoder::operator new(0x238, v10);
  *v21 = 1001;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 1) = v4;
  *(v21 + 68) = 0;
  *(v21 + 70) = 0;
  *(v21 + 69) = 0;
  IPC::Encoder::encodeHeader(v21);
  v42 = v21;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v21, a2);
  IPC::Connection::sendMessageImpl(v20, &v42, 1, 0);
  v23 = v42;
  v42 = 0;
  if (v23)
  {
    IPC::Encoder::~Encoder(v23, v22);
    bmalloc::api::tzoneFree(v24, v25);
  }

LABEL_28:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

void WebKit::WebGPU::RemoteCommandEncoderProxy::popDebugGroup(WebKit::WebGPU::RemoteCommandEncoderProxy *this)
{
  v1 = *(*(this + 6) + 80);
  atomic_fetch_add(v1, 1u);
  v2 = *(this + 4);
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
      *v23 = 1000;
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

void WebKit::WebGPU::RemoteCommandEncoderProxy::insertDebugMarker(WTF::ApproximateTime *a1, uint64_t *a2)
{
  v3 = *(*(a1 + 6) + 80);
  atomic_fetch_add(v3, 1u);
  v4 = *(a1 + 4);
  v5 = *(v3 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v6 = v5 + v7;
  }

  if (*(v3 + 64) != v4)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v42, v6);
    if (v44 != 1)
    {
      goto LABEL_28;
    }

    v26 = v43;
    if (v43 <= 1)
    {
LABEL_53:
      __break(0xC471u);
      JUMPOUT(0x19E2462C8);
    }

    v27 = v42;
    *v42 = 3198;
    v28 = v27 + 2;
    if (v26 - 2 < (-v28 & 7 | 8uLL))
    {
      goto LABEL_28;
    }

    v29 = -v28 & 7;
    *&v28[v29] = v4;
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
      goto LABEL_52;
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v39, v6);
  if (v41 != 1)
  {
    goto LABEL_28;
  }

  v8 = v39;
  v9 = v40;
  v44 = v40;
  if (v40 <= 1)
  {
    goto LABEL_53;
  }

  *v39 = 999;
  v42 = (v8 + 1);
  v43 = v9 - 2;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v42, a2);
  if (v42)
  {
    v11 = 16;
    if (v44 - v43 > 0x10)
    {
      v11 = v44 - v43;
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

      goto LABEL_28;
    }

    goto LABEL_52;
  }

  if ((v41 & 1) == 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v40 <= 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  *v39 = 3197;
  v16 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v3 + 72);
  v17 = *(v3 + 80);
  if (v16 + 16 >= v18)
  {
    v16 = 0;
  }

  v19 = v16 + 16;
  if (v18 <= v19)
  {
    v19 = 0;
  }

  *(v3 + 88) = v19;
  if (*(v17 + 8) <= 0xFFuLL)
  {
    goto LABEL_52;
  }

  atomic_exchange((*(v17 + 16) + 128), v19);
  *(v3 + 124) = 0;
  v20 = *(v3 + 8);
  v21 = IPC::Encoder::operator new(0x238, v10);
  *v21 = 999;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 1) = v4;
  *(v21 + 68) = 0;
  *(v21 + 70) = 0;
  *(v21 + 69) = 0;
  IPC::Encoder::encodeHeader(v21);
  v42 = v21;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v21, a2);
  IPC::Connection::sendMessageImpl(v20, &v42, 1, 0);
  v23 = v42;
  v42 = 0;
  if (v23)
  {
    IPC::Encoder::~Encoder(v23, v22);
    bmalloc::api::tzoneFree(v24, v25);
  }

LABEL_28:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

void WebKit::WebGPU::RemoteCommandEncoderProxy::writeTimestamp(WebKit::WebGPU::RemoteCommandEncoderProxy *this, const WebCore::WebGPU::QuerySet *a2, int a3)
{
  v5 = (*(**(this + 5) + 136))(*(this + 5), a2);
  v6 = v5;
  v7 = *(*(this + 6) + 80);
  atomic_fetch_add(v7, 1u);
  v8 = *(this + 4);
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
      JUMPOUT(0x19E246708);
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
      *v50 = 1004;
      v15 = v14 + 1;
      v16 = -v15 & 7 | 8;
      v17 = v13 - 2 - v16;
      if (v13 - 2 >= v16)
      {
        *(v15 + (-v15 & 7)) = v6;
        v18 = v15 + v16;
        v19 = -v18 & 3 | 4;
        if (v17 >= v19)
        {
          *(v18 + (-v18 & 3)) = a3;
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
            *v44 = 1004;
            *(v44 + 2) = 0;
            *(v44 + 3) = 0;
            *(v44 + 1) = v49;
            *(v44 + 68) = 0;
            *(v44 + 70) = 0;
            *(v44 + 69) = 0;
            IPC::Encoder::encodeHeader(v44);
            v53 = v44;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, v6);
            IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v44, a3);
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
      JUMPOUT(0x19E2466E0);
    }
  }

LABEL_20:
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }
}

void WebKit::WebGPU::RemoteCommandEncoderProxy::resolveQuerySet(WebKit::WebGPU::RemoteCommandEncoderProxy *this, const WebCore::WebGPU::QuerySet *a2, int a3, int a4, const WebCore::WebGPU::Buffer *a5, uint64_t a6)
{
  v11 = (*(**(this + 5) + 136))(*(this + 5), a2);
  v12 = (*(**(this + 5) + 40))(*(this + 5), a5);
  v13 = v12;
  v14 = *(*(this + 6) + 80);
  atomic_fetch_add(v14, 1u);
  v15 = *(this + 4);
  v16 = *(v14 + 128);
  v17 = INFINITY;
  if (fabs(v16) != INFINITY)
  {
    WTF::ApproximateTime::now(v12);
    v17 = v16 + v18;
  }

  if (*(v14 + 64) == v15)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v14 + 72, &v69, v17);
  if (v71 == 1)
  {
    v43 = v70;
    if (v70 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E246BFCLL);
    }

    v44 = v69;
    *v69 = 3198;
    v45 = v44 + 1;
    if (v43 - 2 >= (-v45 & 7 | 8uLL))
    {
      v46 = -v45 & 7;
      *(v45 + v46) = v15;
      v47 = 6;
      if (v46 > 6)
      {
        v47 = v46;
      }

      v48 = v47 + 10;
      v49 = (*(v14 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v50 = *(v14 + 72);
      if (v49 + 16 >= v50)
      {
        v49 = 0;
      }

      v51 = v48 + v49;
      if (v50 <= v51)
      {
        v51 = 0;
      }

      *(v14 + 88) = v51;
      v52 = *(v14 + 80);
      if (*(v52 + 8) <= 0xFFuLL)
      {
        goto LABEL_59;
      }

      v53 = atomic_exchange((*(v52 + 16) + 128), v51);
      v54 = *(v14 + 124);
      if (v53 == 0x80000000 || v54 != 0)
      {
        v56 = v54 + 1;
        *(v14 + 124) = v56;
        if (v56 >= *(v14 + 120))
        {
          if (*(v14 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v14 + 100));
          }

          *(v14 + 124) = 0;
        }
      }

      *(v14 + 64) = v15;
LABEL_4:
      IPC::StreamClientConnectionBuffer::tryAcquire(v14 + 72, &v69, v17);
      if (v71 != 1)
      {
        goto LABEL_24;
      }

      v20 = v70;
      if (v70 <= 1)
      {
        __break(0xC471u);
        goto LABEL_60;
      }

      v21 = v69;
      *v69 = 1002;
      v22 = v21 + 1;
      v23 = -v22 & 7 | 8;
      v24 = v20 - 2 - v23;
      if (v20 - 2 >= v23)
      {
        *(v22 + (-v22 & 7)) = v11;
        v25 = v22 + v23;
        v26 = -v25 & 3 | 4;
        v27 = v24 >= v26;
        v28 = v24 - v26;
        if (v27)
        {
          *(v25 + (-v25 & 3)) = a3;
          v29 = v25 + v26;
          v30 = -v29 & 3 | 4;
          v31 = v28 - v30;
          if (v28 >= v30)
          {
            *(v29 + (-v29 & 3)) = a4;
            v32 = v29 + v30;
            v33 = -(v29 + v30);
            v34 = v33 & 7 | 8;
            v35 = v31 - v34;
            if (v31 >= v34)
            {
              *(v32 + (v33 & 7)) = v13;
              v36 = v32 + v34;
              v37 = -v36 & 7 | 8;
              if (v35 >= v37)
              {
                *(v36 + (-v36 & 7)) = a6;
                v38 = v20 - v35 + v37;
                if (v38 <= 0x10)
                {
                  v38 = 16;
                }

                v39 = (*(v14 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                v40 = *(v14 + 72);
                if (v39 + 16 >= v40)
                {
                  v39 = 0;
                }

                v41 = v39 + v38;
                if (v40 <= v41)
                {
                  v41 = 0;
                }

                *(v14 + 88) = v41;
                v42 = *(v14 + 80);
                if (*(v42 + 8) > 0xFFuLL)
                {
                  if (atomic_exchange((*(v42 + 16) + 128), v41) == 0x80000000 || *(v14 + 124))
                  {
                    if (*(v14 + 112) == 1)
                    {
                      MEMORY[0x19EB16320](*(v14 + 100));
                    }

                    *(v14 + 124) = 0;
                  }

                  goto LABEL_24;
                }

                goto LABEL_59;
              }
            }
          }
        }
      }

      v68 = v15;
      if (v71)
      {
        if (v70 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v69 = 3197;
          v57 = (*(v14 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v58 = *(v14 + 72);
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

          *(v14 + 88) = v60;
          v61 = *(v14 + 80);
          if (*(v61 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v61 + 16) + 128), v60);
            *(v14 + 124) = 0;
            v62 = *(v14 + 8);
            v63 = IPC::Encoder::operator new(0x238, v19);
            *v63 = 1002;
            *(v63 + 2) = 0;
            *(v63 + 3) = 0;
            *(v63 + 1) = v68;
            *(v63 + 68) = 0;
            *(v63 + 70) = 0;
            *(v63 + 69) = 0;
            IPC::Encoder::encodeHeader(v63);
            v72 = v63;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v63, v11);
            IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v63, a3);
            IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v63, a4);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v63, v13);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v63, a6);
            IPC::Connection::sendMessageImpl(v62, &v72, 1, 0);
            v65 = v72;
            v72 = 0;
            if (v65)
            {
              IPC::Encoder::~Encoder(v65, v64);
              bmalloc::api::tzoneFree(v66, v67);
            }

            goto LABEL_24;
          }
        }
      }

LABEL_59:
      __break(1u);
LABEL_60:
      JUMPOUT(0x19E246BD4);
    }
  }

LABEL_24:
  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    IPC::StreamClientConnection::operator delete(v14);
  }
}

void WebKit::WebGPU::RemoteCommandEncoderProxy::finish(void *a1@<X0>, atomic_uint **a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  v55 = v5;
  v56 = 1;
  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_74;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v7 = IdentifierInternal;
  v8 = *(a1[6] + 80);
  atomic_fetch_add(v8, 1u);
  v9 = a1[4];
  v10 = *(v8 + 128);
  v11 = INFINITY;
  if (fabs(v10) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v11 = v10 + v12;
  }

  if (*(v8 + 64) != v9)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v60, v11);
    if (v62 != 1)
    {
      goto LABEL_40;
    }

    v24 = v61;
    if (v61 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E247124);
    }

    v25 = v60;
    *v60 = 3198;
    v26 = v25 + 2;
    if (v24 - 2 < (-v26 & 7 | 8uLL))
    {
      goto LABEL_40;
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
      goto LABEL_73;
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v57, v11);
  if (v59 != 1)
  {
LABEL_40:
    v23 = 0;
    goto LABEL_41;
  }

  v14 = v57;
  v15 = v58;
  v62 = v58;
  if (v58 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2470FCLL);
  }

  *v57 = 998;
  v60 = (v14 + 1);
  v61 = v15 - 2;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v60, &v55);
  v16 = -v60 & 7 | 8;
  if (v61 < v16)
  {
    v54 = v9;
    if (v59)
    {
      if (v58 > 1)
      {
        *v57 = 3197;
        v43 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v44 = *(v8 + 72);
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

        *(v8 + 88) = v46;
        v47 = *(v8 + 80);
        if (*(v47 + 8) <= 0xFFuLL)
        {
          goto LABEL_73;
        }

        atomic_exchange((*(v47 + 16) + 128), v46);
        *(v8 + 124) = 0;
        v48 = *(v8 + 8);
        v49 = IPC::Encoder::operator new(0x238, v13);
        *v49 = 998;
        *(v49 + 2) = 0;
        *(v49 + 3) = 0;
        *(v49 + 1) = v54;
        *(v49 + 68) = 0;
        *(v49 + 70) = 0;
        *(v49 + 69) = 0;
        IPC::Encoder::encodeHeader(v49);
        v60 = v49;
        IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v49, &v55);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, v7);
        v50 = IPC::Connection::sendMessageImpl(v48, &v60, 1, 0);
        v51 = v60;
        v60 = 0;
        if (v51)
        {
          IPC::Encoder::~Encoder(v51, v13);
          bmalloc::api::tzoneFree(v52, v53);
        }

        v23 = v50 == 0;
        goto LABEL_41;
      }

      __break(0xC471u);
    }

LABEL_73:
    __break(1u);
LABEL_74:
    JUMPOUT(0x19E2470DCLL);
  }

  *(v60 + (-v60 & 7)) = v7;
  v17 = v61 - v16;
  if (v61 < v16)
  {
    goto LABEL_73;
  }

  v60 = (v60 + v16);
  v61 -= v16;
  v18 = v62 - v17;
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
  if (*(v22 + 8) <= 0xFFuLL)
  {
    goto LABEL_73;
  }

  if (atomic_exchange((*(v22 + 16) + 128), v21) == 0x80000000 || *(v8 + 124))
  {
    if (*(v8 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v8 + 100));
    }

    *(v8 + 124) = 0;
  }

  v23 = 1;
LABEL_41:
  if (atomic_fetch_add(v8, 0xFFFFFFFF) != 1)
  {
    if (v23)
    {
      goto LABEL_43;
    }

LABEL_48:
    v41 = 0;
    goto LABEL_49;
  }

  atomic_store(1u, v8);
  IPC::StreamClientConnection::operator delete(v8);
  if (!v23)
  {
    goto LABEL_48;
  }

LABEL_43:
  v39 = a1[5];
  v38 = a1[6];
  if (WebKit::WebGPU::RemoteCommandBufferProxy::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteCommandBufferProxy::s_heapRef, v13);
  }

  else
  {
    NonCompact = WebKit::WebGPU::RemoteCommandBufferProxy::operatorNewSlow(0);
  }

  v41 = NonCompact;
  *(NonCompact + 16) = 1;
  *(NonCompact + 24) = 0;
  *(NonCompact + 32) = v7;
  *NonCompact = &unk_1F1125408;
  *(NonCompact + 8) = 0;
  ++*(v39 + 8);
  *(NonCompact + 40) = v39;
  atomic_fetch_add((v38 + 28), 1u);
  *(NonCompact + 48) = v38;
  if ((v56 & 1) == 0)
  {
    goto LABEL_73;
  }

  WebCore::WebGPU::CommandBuffer::setLabel(NonCompact, &v55);
LABEL_49:
  *a3 = v41;
  if (v56)
  {
    v42 = v55;
    v55 = 0;
    if (v42)
    {
      if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, v13);
      }
    }
  }
}

void WebKit::WebGPU::RemoteCommandEncoderProxy::setLabelInternal(WebKit::WebGPU::RemoteCommandEncoderProxy *this, const WTF::String *a2)
{
  v3 = *(*(this + 6) + 80);
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
    IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v42, v6);
    if (v44 != 1)
    {
      goto LABEL_28;
    }

    v26 = v43;
    if (v43 <= 1)
    {
LABEL_53:
      __break(0xC471u);
      JUMPOUT(0x19E2474A8);
    }

    v27 = v42;
    *v42 = 3198;
    v28 = v27 + 2;
    if (v26 - 2 < (-v28 & 7 | 8uLL))
    {
      goto LABEL_28;
    }

    v29 = -v28 & 7;
    *&v28[v29] = v4;
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
      goto LABEL_52;
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v39, v6);
  if (v41 != 1)
  {
    goto LABEL_28;
  }

  v8 = v39;
  v9 = v40;
  v44 = v40;
  if (v40 <= 1)
  {
    goto LABEL_53;
  }

  *v39 = 1003;
  v42 = (v8 + 1);
  v43 = v9 - 2;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v42, a2);
  if (v42)
  {
    v11 = 16;
    if (v44 - v43 > 0x10)
    {
      v11 = v44 - v43;
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

      goto LABEL_28;
    }

    goto LABEL_52;
  }

  if ((v41 & 1) == 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v40 <= 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  *v39 = 3197;
  v16 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v3 + 72);
  v17 = *(v3 + 80);
  if (v16 + 16 >= v18)
  {
    v16 = 0;
  }

  v19 = v16 + 16;
  if (v18 <= v19)
  {
    v19 = 0;
  }

  *(v3 + 88) = v19;
  if (*(v17 + 8) <= 0xFFuLL)
  {
    goto LABEL_52;
  }

  atomic_exchange((*(v17 + 16) + 128), v19);
  *(v3 + 124) = 0;
  v20 = *(v3 + 8);
  v21 = IPC::Encoder::operator new(0x238, v10);
  *v21 = 1003;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 1) = v4;
  *(v21 + 68) = 0;
  *(v21 + 70) = 0;
  *(v21 + 69) = 0;
  IPC::Encoder::encodeHeader(v21);
  v42 = v21;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v21, a2);
  IPC::Connection::sendMessageImpl(v20, &v42, 1, 0);
  v23 = v42;
  v42 = 0;
  if (v23)
  {
    IPC::Encoder::~Encoder(v23, v22);
    bmalloc::api::tzoneFree(v24, v25);
  }

LABEL_28:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

_DWORD *WebKit::RemoteRenderingBackendProxy::deref(_DWORD *this)
{
  if (this[5] == 1)
  {
    return (*(*this + 24))();
  }

  --this[5];
  return this;
}

uint64_t IPC::StreamClientConnection::send<Messages::LogStream::REMOTE_RENDERING_BACKEND_PROXY_CREATED_RENDERING_BACKEND,WebKit::LogStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  result = IPC::StreamClientConnection::trySendDestinationIDIfNeeded(a1, a3, v7);
  if (!result)
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v10, v7);
    if (v12 == 1)
    {
      result = IPC::StreamClientConnection::trySendStream<Messages::LogStream::REMOTE_RENDERING_BACKEND_PROXY_CREATED_RENDERING_BACKEND>(a1, v10, v11, a2);
      if ((result & 1) == 0)
      {
        if (v12)
        {
          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(a1, v10, v11);
          return IPC::Connection::send<Messages::LogStream::REMOTE_RENDERING_BACKEND_PROXY_CREATED_RENDERING_BACKEND>(*(a1 + 8), a2, a3);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::StreamClientConnection::trySendStream<Messages::LogStream::REMOTE_RENDERING_BACKEND_PROXY_CREATED_RENDERING_BACKEND>(uint64_t a1, _WORD *a2, unint64_t a3, void *a4)
{
  v9 = a3;
  if (a3 <= 1)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *a2 = 256;
    v7 = a2 + 1;
    v8 = a3 - 2;
    Messages::LogStream::REMOTE_RENDERING_BACKEND_PROXY_CREATED_RENDERING_BACKEND::encode<IPC::StreamConnectionEncoder>(a4, &v7);
    v5 = v7;
    if (v7 && ((IPC::StreamClientConnectionBuffer::release((a1 + 72), v9 - v8) & 1) != 0 || *(a1 + 124)))
    {
      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      *(a1 + 124) = 0;
    }

    return v5 != 0;
  }

  return result;
}

uint64_t Messages::LogStream::REMOTE_RENDERING_BACKEND_PROXY_CREATED_RENDERING_BACKEND::encode<IPC::StreamConnectionEncoder>(void *a1, uint64_t a2)
{
  IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a2, a1);
  IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a2, a1 + 1);

  return IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a2, a1 + 2);
}

uint64_t IPC::Connection::send<Messages::LogStream::REMOTE_RENDERING_BACKEND_PROXY_CREATED_RENDERING_BACKEND>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 256;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, a2[2]);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(BOOL)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::MarkSurfacesAsVolatileRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::CreateImageBuffer,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(WebKit::RemoteRenderingBackendProxy *a1, _DWORD **a2, uint64_t a3)
{
  v54 = *MEMORY[0x1E69E9840];
  WebKit::RemoteRenderingBackendProxy::connection(a1, a2, &v48);
  v7 = v48;
  if (!v48)
  {
    return;
  }

  v8 = *(v48 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(v6);
    v9 = v8 + v10;
  }

  if (*(v7 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v9);
    if (buf[16] != 1)
    {
      goto LABEL_46;
    }

    v35 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      goto LABEL_55;
    }

    v36 = *buf;
    **buf = 3198;
    v37 = v36 + 2;
    if (v35 - 2 < (-v37 & 7 | 8uLL))
    {
      goto LABEL_46;
    }

    v38 = -v37 & 7;
    *(v37 + v38) = a3;
    v39 = 6;
    if (v38 > 6)
    {
      v39 = v38;
    }

    v40 = v39 + 10;
    v41 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v42 = *(v7 + 72);
    if (v41 + 16 >= v42)
    {
      v41 = 0;
    }

    v43 = v40 + v41;
    if (v42 <= v43)
    {
      v43 = 0;
    }

    *(v7 + 88) = v43;
    v44 = *(v7 + 80);
    if (*(v44 + 8) <= 0xFFuLL)
    {
      goto LABEL_52;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(v7, atomic_exchange((*(v44 + 16) + 128), v43) == 0x80000000);
    *(v7 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v49, v9);
  if (v51)
  {
    v11 = v49;
    v12 = v50;
    *&buf[16] = v50;
    if (v50 > 1)
    {
      *v49 = 1577;
      *buf = v11 + 1;
      *&buf[8] = v12 - 2;
      IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(buf, *a2);
      v13 = *&buf[8];
      if (*&buf[8])
      {
        v14 = *buf;
        **buf = *a2[1];
        if (v13 != 1)
        {
          *(v14 + 1) = *a2[2];
          v15 = v13 - 2;
          v16 = v14 + 2;
          v17 = -(v14 + 2);
          v18 = v17 & 3 | 4;
          v19 = v15 >= v18;
          v20 = v15 - v18;
          if (v19)
          {
            *(v16 + (v17 & 3)) = *(a2 + 6);
            *buf = v16 + v18;
            *&buf[8] = v20;
            goto LABEL_12;
          }
        }
      }

      while (1)
      {
        *buf = 0;
        *&buf[8] = 0;
LABEL_12:
        IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(buf, a2[4]);
        if (!*&buf[8])
        {
          goto LABEL_49;
        }

        v21 = a2[5];
        **buf = *v21;
        if (!*&buf[8])
        {
          goto LABEL_52;
        }

        v22 = *&buf[8] == 1;
        v23 = ++*buf;
        --*&buf[8];
        if (v22)
        {
          goto LABEL_49;
        }

        *v23 = v21[1];
        if (!*&buf[8])
        {
          goto LABEL_52;
        }

        v24 = *buf + 1;
        *buf = v24;
        --*&buf[8];
        v25 = -v24 & 7 | 8;
        if (*&buf[8] < v25)
        {
          goto LABEL_49;
        }

        *(v24 + (-v24 & 7)) = *a2[6];
        v26 = *&buf[8] - v25;
        if (*&buf[8] < v25)
        {
          goto LABEL_52;
        }

        v27 = *buf + v25;
        *buf = v27;
        *&buf[8] = v26;
        v28 = -v27 & 7 | 8;
        if (v26 < v28)
        {
LABEL_49:
          if (v51)
          {
            IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v7, v49, v50);
            if (!IPC::Connection::send<Messages::RemoteRenderingBackend::CreateImageBuffer>(*(v7 + 8), a2, a3))
            {
              goto LABEL_29;
            }

            goto LABEL_46;
          }
        }

        else
        {
          *(v27 + (-v27 & 7)) = *a2[7];
          v29 = *&buf[8] - v28;
          if (*&buf[8] >= v28)
          {
            *buf += v28;
            *&buf[8] -= v28;
            v30 = *&buf[16] - v29;
            if (*&buf[16] - v29 <= 0x10)
            {
              v30 = 16;
            }

            v31 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v32 = *(v7 + 72);
            if (v31 + 16 >= v32)
            {
              v31 = 0;
            }

            v33 = v31 + v30;
            if (v32 <= v33)
            {
              v33 = 0;
            }

            *(v7 + 88) = v33;
            v34 = *(v7 + 80);
            if (*(v34 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v34 + 16) + 128), v33) == 0x80000000 || *(v7 + 124))
              {
                if (*(v7 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v7 + 100));
                }

                *(v7 + 124) = 0;
              }

              goto LABEL_29;
            }
          }
        }

LABEL_52:
        __break(1u);
      }
    }

LABEL_55:
    __break(0xC471u);
    JUMPOUT(0x19E247D04);
  }

LABEL_46:
  v45 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v46 = *(a1 + 10);
    v47 = IPC::errorAsString();
    *buf = 134218498;
    *&buf[4] = v46;
    *&buf[12] = 2082;
    *&buf[14] = "RemoteRenderingBackend_CreateImageBuffer";
    *&buf[22] = 2082;
    v53 = v47;
    _os_log_impl(&dword_19D52D000, v45, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
  }

  WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(a1);
LABEL_29:
  v48 = 0;
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }
}

uint64_t IPC::Connection::send<Messages::RemoteRenderingBackend::CreateImageBuffer>(uint64_t *a1, float **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1577;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v20 = v6;
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v6, *a2);
  v7 = *a2[1];
  v8 = IPC::Encoder::grow(v6, 1uLL, 1);
  if (!v9 || (*v8 = v7, v10 = *a2[2], v11 = IPC::Encoder::grow(v6, 1uLL, 1), !v12))
  {
    __break(0xC471u);
    JUMPOUT(0x19E247E88);
  }

  *v11 = v10;
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v6, *(a2 + 6));
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(v6, a2[4]);
  v13 = a2[5];
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v6, *v13);
  v21 = v13[1];
  IPC::Encoder::operator<<<BOOL>(v6, &v21);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2[6]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2[7]);
  v15 = IPC::Connection::sendMessageImpl(a1, &v20, 1, 0);
  v16 = v20;
  v20 = 0;
  if (v16)
  {
    IPC::Encoder::~Encoder(v16, v14);
    bmalloc::api::tzoneFree(v18, v19);
  }

  return v15;
}

uint64_t WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::CreateImageBufferSet,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(WebKit::RemoteRenderingBackendProxy *a1, void **a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  WebKit::RemoteRenderingBackendProxy::connection(a1, a2, &v42);
  v7 = v42;
  if (!v42)
  {
    return 1;
  }

  v8 = *(v42 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(v6);
    v9 = v8 + v10;
  }

  if (*(v7 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v9);
    if (buf[16] != 1)
    {
      goto LABEL_46;
    }

    v25 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      goto LABEL_55;
    }

    v26 = *buf;
    **buf = 3198;
    v27 = v26 + 2;
    if (v25 - 2 < (-v27 & 7 | 8uLL))
    {
      ImageBuffer = 18;
      goto LABEL_47;
    }

    v28 = -v27 & 7;
    *(v27 + v28) = a3;
    v29 = 6;
    if (v28 > 6)
    {
      v29 = v28;
    }

    v30 = v29 + 10;
    v31 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(v7 + 72);
    if (v31 + 16 >= v32)
    {
      v31 = 0;
    }

    v33 = v30 + v31;
    if (v32 <= v33)
    {
      v33 = 0;
    }

    *(v7 + 88) = v33;
    v34 = *(v7 + 80);
    if (*(v34 + 8) <= 0xFFuLL)
    {
      goto LABEL_53;
    }

    v35 = atomic_exchange((*(v34 + 16) + 128), v33);
    v36 = *(v7 + 124);
    if (v35 == 0x80000000 || v36 != 0)
    {
      v38 = v36 + 1;
      *(v7 + 124) = v38;
      if (v38 >= *(v7 + 120))
      {
        if (*(v7 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v7 + 100));
        }

        *(v7 + 124) = 0;
      }
    }

    *(v7 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v9);
  if ((buf[16] & 1) == 0)
  {
LABEL_46:
    ImageBuffer = 16;
    goto LABEL_47;
  }

  v11 = *&buf[8];
  if (*&buf[8] <= 1uLL)
  {
LABEL_55:
    __break(0xC471u);
    JUMPOUT(0x19E248284);
  }

  v12 = *buf;
  **buf = 1578;
  v13 = v12 + 2;
  v14 = -v13 & 7 | 8;
  v15 = v11 - 2 - v14;
  if (v11 - 2 >= v14)
  {
    *(v13 + (-v13 & 7)) = **a2;
    v16 = v13 + v14;
    v17 = -v16 & 7 | 8;
    if (v15 >= v17)
    {
      *(v16 + (-v16 & 7)) = *a2[1];
      v18 = v11 - v15 + v17;
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
            MEMORY[0x19EB16320](*(v7 + 100));
          }

          *(v7 + 124) = 0;
        }

        ImageBuffer = 0;
        goto LABEL_19;
      }

LABEL_53:
      __break(1u);
    }
  }

  if ((buf[16] & 1) == 0)
  {
    goto LABEL_53;
  }

  IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v7, *buf, *&buf[8]);
  ImageBuffer = IPC::Connection::send<Messages::RemoteRenderingBackend::CreateImageBufferSet>(*(v7 + 8), a2, a3);
  if (ImageBuffer)
  {
LABEL_47:
    v39 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(a1 + 10);
      v41 = IPC::errorAsString();
      *buf = 134218498;
      *&buf[4] = v40;
      *&buf[12] = 2082;
      *&buf[14] = "RemoteRenderingBackend_CreateImageBufferSet";
      v44 = 2082;
      v45 = v41;
      _os_log_impl(&dword_19D52D000, v39, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
    }

    WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(a1);
  }

LABEL_19:
  v42 = 0;
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }

  return ImageBuffer;
}

uint64_t IPC::Connection::send<Messages::RemoteRenderingBackend::CreateImageBufferSet>(uint64_t *a1, uint64_t **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1578;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, **a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, *a2[1]);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

uint64_t WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::ReleaseImageBuffer,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(WebKit::RemoteRenderingBackendProxy *a1, void **a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  WebKit::RemoteRenderingBackendProxy::connection(a1, a2, &v36);
  v7 = v36;
  if (!v36)
  {
    return 1;
  }

  v8 = *(v36 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(v6);
    v9 = v8 + v10;
  }

  if (*(v7 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v9);
    if (buf[16] != 1)
    {
      goto LABEL_36;
    }

    v23 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      goto LABEL_45;
    }

    v24 = *buf;
    **buf = 3198;
    v25 = v24 + 2;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      v21 = 18;
      goto LABEL_37;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = a3;
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
      goto LABEL_43;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(v7, atomic_exchange((*(v32 + 16) + 128), v31) == 0x80000000);
    *(v7 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v9);
  if ((buf[16] & 1) == 0)
  {
LABEL_36:
    v21 = 16;
    goto LABEL_37;
  }

  v11 = *&buf[8];
  if (*&buf[8] <= 1uLL)
  {
LABEL_45:
    __break(0xC471u);
    JUMPOUT(0x19E2486E0);
  }

  v12 = *buf;
  **buf = 1596;
  v13 = v12 + 2;
  if (v11 - 2 >= (-v13 & 7 | 8uLL))
  {
    v14 = -v13 & 7;
    *(v13 + v14) = **a2;
    v15 = 6;
    if (v14 > 6)
    {
      v15 = v14;
    }

    v16 = v15 + 10;
    v17 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v18 = *(v7 + 72);
    if (v17 + 16 >= v18)
    {
      v17 = 0;
    }

    v19 = v16 + v17;
    if (v18 <= v19)
    {
      v19 = 0;
    }

    *(v7 + 88) = v19;
    v20 = *(v7 + 80);
    if (*(v20 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v20 + 16) + 128), v19) == 0x80000000 || *(v7 + 124))
      {
        if (*(v7 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v7 + 100));
        }

        *(v7 + 124) = 0;
      }

      v21 = 0;
      goto LABEL_18;
    }

LABEL_43:
    __break(1u);
  }

  if ((buf[16] & 1) == 0)
  {
    goto LABEL_43;
  }

  IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v7, *buf, *&buf[8]);
  v21 = IPC::Connection::send<Messages::RemoteRenderingBackend::ReleaseImageBuffer>(*(v7 + 8), a2, a3);
  if (v21)
  {
LABEL_37:
    v33 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 10);
      v35 = IPC::errorAsString();
      *buf = 134218498;
      *&buf[4] = v34;
      *&buf[12] = 2082;
      *&buf[14] = "RemoteRenderingBackend_ReleaseImageBuffer";
      v38 = 2082;
      v39 = v35;
      _os_log_impl(&dword_19D52D000, v33, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
    }

    WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(a1);
  }

LABEL_18:
  v36 = 0;
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }

  return v21;
}

uint64_t IPC::Connection::send<Messages::RemoteRenderingBackend::ReleaseImageBuffer>(uint64_t *a1, void **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1596;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, **a2);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

uint64_t WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::ReleaseImageBufferSet,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(WebKit::RemoteRenderingBackendProxy *a1, void **a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  WebKit::RemoteRenderingBackendProxy::connection(a1, a2, &v40);
  v7 = v40;
  if (!v40)
  {
    return 1;
  }

  v8 = *(v40 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(v6);
    v9 = v8 + v10;
  }

  if (*(v7 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v9);
    if (buf[16] != 1)
    {
      goto LABEL_45;
    }

    v23 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      goto LABEL_54;
    }

    v24 = *buf;
    **buf = 3198;
    v25 = v24 + 2;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      v21 = 18;
      goto LABEL_46;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = a3;
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
      goto LABEL_52;
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

    *(v7 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v9);
  if ((buf[16] & 1) == 0)
  {
LABEL_45:
    v21 = 16;
    goto LABEL_46;
  }

  v11 = *&buf[8];
  if (*&buf[8] <= 1uLL)
  {
LABEL_54:
    __break(0xC471u);
    JUMPOUT(0x19E248B5CLL);
  }

  v12 = *buf;
  **buf = 1597;
  v13 = v12 + 2;
  if (v11 - 2 >= (-v13 & 7 | 8uLL))
  {
    v14 = -v13 & 7;
    *(v13 + v14) = **a2;
    v15 = 6;
    if (v14 > 6)
    {
      v15 = v14;
    }

    v16 = v15 + 10;
    v17 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v18 = *(v7 + 72);
    if (v17 + 16 >= v18)
    {
      v17 = 0;
    }

    v19 = v16 + v17;
    if (v18 <= v19)
    {
      v19 = 0;
    }

    *(v7 + 88) = v19;
    v20 = *(v7 + 80);
    if (*(v20 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v20 + 16) + 128), v19) == 0x80000000 || *(v7 + 124))
      {
        if (*(v7 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v7 + 100));
        }

        *(v7 + 124) = 0;
      }

      v21 = 0;
      goto LABEL_18;
    }

LABEL_52:
    __break(1u);
  }

  if ((buf[16] & 1) == 0)
  {
    goto LABEL_52;
  }

  IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v7, *buf, *&buf[8]);
  v21 = IPC::Connection::send<Messages::RemoteRenderingBackend::ReleaseImageBufferSet>(*(v7 + 8), a2, a3);
  if (v21)
  {
LABEL_46:
    v37 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(a1 + 10);
      v39 = IPC::errorAsString();
      *buf = 134218498;
      *&buf[4] = v38;
      *&buf[12] = 2082;
      *&buf[14] = "RemoteRenderingBackend_ReleaseImageBufferSet";
      v42 = 2082;
      v43 = v39;
      _os_log_impl(&dword_19D52D000, v37, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
    }

    WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(a1);
  }

LABEL_18:
  v40 = 0;
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }

  return v21;
}

uint64_t IPC::Connection::send<Messages::RemoteRenderingBackend::ReleaseImageBufferSet>(uint64_t *a1, void **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1597;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, **a2);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

uint64_t WebKit::RemoteSerializedImageBufferProxy::operator new(WebKit::RemoteSerializedImageBufferProxy *this, void *a2)
{
  if (this == 120 && WebKit::RemoteSerializedImageBufferProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteSerializedImageBufferProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteSerializedImageBufferProxy::operatorNewSlow(this);
  }
}

uint64_t WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::MoveToSerializedBuffer,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(WebKit::RemoteRenderingBackendProxy *a1, uint64_t **a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  WebKit::RemoteRenderingBackendProxy::connection(a1, a2, &v54);
  v7 = v54;
  if (!v54)
  {
    return 1;
  }

  v8 = *(v54 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(v6);
    v9 = v8 + v10;
  }

  if (*(v7 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v9);
    if (buf[16] != 1)
    {
      goto LABEL_38;
    }

    v25 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E249114);
    }

    v26 = *buf;
    **buf = 3198;
    v27 = v26 + 2;
    if (v25 - 2 < (-v27 & 7 | 8uLL))
    {
      v24 = 18;
      goto LABEL_39;
    }

    v28 = -v27 & 7;
    *(v27 + v28) = a3;
    v29 = 6;
    if (v28 > 6)
    {
      v29 = v28;
    }

    v30 = v29 + 10;
    v31 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(v7 + 72);
    if (v31 + 16 >= v32)
    {
      v31 = 0;
    }

    v33 = v30 + v31;
    if (v32 <= v33)
    {
      v33 = 0;
    }

    *(v7 + 88) = v33;
    v34 = *(v7 + 80);
    if (*(v34 + 8) <= 0xFFuLL)
    {
      goto LABEL_60;
    }

    v35 = atomic_exchange((*(v34 + 16) + 128), v33);
    v36 = *(v7 + 124);
    if (v35 == 0x80000000 || v36 != 0)
    {
      v38 = v36 + 1;
      *(v7 + 124) = v38;
      if (v38 >= *(v7 + 120))
      {
        if (*(v7 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v7 + 100));
        }

        *(v7 + 124) = 0;
      }
    }

    *(v7 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v9);
  if ((buf[16] & 1) == 0)
  {
LABEL_38:
    v24 = 16;
LABEL_39:
    v39 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(a1 + 10);
      v41 = IPC::errorAsString();
      *buf = 134218498;
      *&buf[4] = v40;
      *&buf[12] = 2082;
      *&buf[14] = "RemoteRenderingBackend_MoveToSerializedBuffer";
      v57 = 2082;
      v58 = v41;
      _os_log_impl(&dword_19D52D000, v39, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
    }

    WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(a1);
    goto LABEL_42;
  }

  v12 = *&buf[8];
  if (*&buf[8] <= 1uLL)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2490ECLL);
  }

  v13 = *buf;
  **buf = 1589;
  v14 = v13 + 2;
  v15 = -v14 & 7 | 8;
  v16 = v12 - 2 - v15;
  if (v12 - 2 >= v15)
  {
    *(v14 + (-v14 & 7)) = **a2;
    v17 = v14 + v15;
    v18 = -v17 & 7 | 8;
    if (v16 >= v18)
    {
      *(v17 + (-v17 & 7)) = *a2[1];
      v19 = v12 - v16 + v18;
      if (v19 <= 0x10)
      {
        v19 = 16;
      }

      v20 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v21 = *(v7 + 72);
      if (v20 + 16 >= v21)
      {
        v20 = 0;
      }

      v22 = v20 + v19;
      if (v21 <= v22)
      {
        v22 = 0;
      }

      *(v7 + 88) = v22;
      v23 = *(v7 + 80);
      if (*(v23 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v23 + 16) + 128), v22) == 0x80000000 || *(v7 + 124))
        {
          if (*(v7 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v7 + 100));
          }

          *(v7 + 124) = 0;
        }

        v24 = 0;
        goto LABEL_42;
      }

LABEL_60:
      __break(1u);
    }
  }

  if ((buf[16] & 1) == 0)
  {
    goto LABEL_60;
  }

  if (*&buf[8] <= 1uLL)
  {
    __break(0xC471u);
    JUMPOUT(0x19E249134);
  }

  **buf = 3197;
  v43 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v44 = *(v7 + 72);
  if (v43 + 16 >= v44)
  {
    v43 = 0;
  }

  v45 = v43 + 16;
  v46 = v44 <= v45 ? 0 : v45;
  *(v7 + 88) = v46;
  v47 = *(v7 + 80);
  if (*(v47 + 8) <= 0xFFuLL)
  {
    goto LABEL_60;
  }

  atomic_exchange((*(v47 + 16) + 128), v46);
  *(v7 + 124) = 0;
  v48 = *(v7 + 8);
  v49 = IPC::Encoder::operator new(0x238, v11);
  *v49 = 1589;
  *(v49 + 2) = 0;
  *(v49 + 3) = 0;
  *(v49 + 1) = a3;
  *(v49 + 68) = 0;
  *(v49 + 70) = 0;
  *(v49 + 69) = 0;
  IPC::Encoder::encodeHeader(v49);
  v55 = v49;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, **a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, *a2[1]);
  v24 = IPC::Connection::sendMessageImpl(v48, &v55, 1, 0);
  v51 = v55;
  v55 = 0;
  if (v51)
  {
    IPC::Encoder::~Encoder(v51, v50);
    bmalloc::api::tzoneFree(v52, v53);
    if (v24)
    {
      goto LABEL_39;
    }
  }

  else if (v24)
  {
    goto LABEL_39;
  }

LABEL_42:
  v54 = 0;
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }

  return v24;
}

uint64_t WebKit::RemoteImageBufferProxy::operator new(WebKit::RemoteImageBufferProxy *this, void *a2)
{
  if (this == 3736 && WebKit::RemoteImageBufferProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteImageBufferProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::RemoteImageBufferProxy::operatorNewSlow(this);
  }
}

uint64_t WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::MoveToImageBuffer,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(WebKit::RemoteRenderingBackendProxy *a1, uint64_t **a2, uint64_t a3)
{
  v62 = *MEMORY[0x1E69E9840];
  WebKit::RemoteRenderingBackendProxy::connection(a1, a2, &v57);
  v7 = v57;
  if (!v57)
  {
    return 1;
  }

  v8 = *(v57 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(v6);
    v9 = v8 + v10;
  }

  if (*(v7 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v9);
    if (buf[16] != 1)
    {
      goto LABEL_39;
    }

    v28 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E249658);
    }

    v29 = *buf;
    **buf = 3198;
    v30 = v29 + 2;
    if (v28 - 2 < (-v30 & 7 | 8uLL))
    {
      v27 = 18;
      goto LABEL_40;
    }

    v31 = -v30 & 7;
    *(v30 + v31) = a3;
    v32 = 6;
    if (v31 > 6)
    {
      v32 = v31;
    }

    v33 = v32 + 10;
    v34 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v35 = *(v7 + 72);
    if (v34 + 16 >= v35)
    {
      v34 = 0;
    }

    v36 = v33 + v34;
    if (v35 <= v36)
    {
      v36 = 0;
    }

    *(v7 + 88) = v36;
    v37 = *(v7 + 80);
    if (*(v37 + 8) <= 0xFFuLL)
    {
      goto LABEL_61;
    }

    v38 = atomic_exchange((*(v37 + 16) + 128), v36);
    v39 = *(v7 + 124);
    if (v38 == 0x80000000 || v39 != 0)
    {
      v41 = v39 + 1;
      *(v7 + 124) = v41;
      if (v41 >= *(v7 + 120))
      {
        if (*(v7 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v7 + 100));
        }

        *(v7 + 124) = 0;
      }
    }

    *(v7 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v9);
  if ((buf[16] & 1) == 0)
  {
LABEL_39:
    v27 = 16;
LABEL_40:
    v42 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(a1 + 10);
      v44 = IPC::errorAsString();
      *buf = 134218498;
      *&buf[4] = v43;
      *&buf[12] = 2082;
      *&buf[14] = "RemoteRenderingBackend_MoveToImageBuffer";
      v60 = 2082;
      v61 = v44;
      _os_log_impl(&dword_19D52D000, v42, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
    }

    WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(a1);
    goto LABEL_43;
  }

  v12 = *&buf[8];
  if (*&buf[8] <= 1uLL)
  {
    goto LABEL_67;
  }

  v13 = *buf;
  **buf = 1588;
  v14 = v13 + 2;
  v15 = -v14 & 7 | 8;
  v16 = v12 - 2 - v15;
  if (v12 - 2 >= v15)
  {
    *(v14 + (-v14 & 7)) = **a2;
    v17 = v14 + v15;
    v18 = -v17 & 7 | 8;
    v19 = v16 - v18;
    if (v16 >= v18)
    {
      *(v17 + (-v17 & 7)) = *a2[1];
      v20 = v17 + v18;
      v21 = -v20 & 7 | 8;
      if (v19 >= v21)
      {
        *(v20 + (-v20 & 7)) = *a2[2];
        v22 = v12 - v19 + v21;
        if (v22 <= 0x10)
        {
          v22 = 16;
        }

        v23 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v24 = *(v7 + 72);
        if (v23 + 16 >= v24)
        {
          v23 = 0;
        }

        v25 = v23 + v22;
        if (v24 <= v25)
        {
          v25 = 0;
        }

        *(v7 + 88) = v25;
        v26 = *(v7 + 80);
        if (*(v26 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v26 + 16) + 128), v25) == 0x80000000 || *(v7 + 124))
          {
            if (*(v7 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v7 + 100));
            }

            *(v7 + 124) = 0;
          }

          v27 = 0;
          goto LABEL_43;
        }

LABEL_61:
        __break(1u);
      }
    }
  }

  if ((buf[16] & 1) == 0)
  {
    goto LABEL_61;
  }

  if (*&buf[8] <= 1uLL)
  {
LABEL_67:
    __break(0xC471u);
    JUMPOUT(0x19E249630);
  }

  **buf = 3197;
  v46 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v47 = *(v7 + 72);
  if (v46 + 16 >= v47)
  {
    v46 = 0;
  }

  v48 = v46 + 16;
  if (v47 <= v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = v48;
  }

  *(v7 + 88) = v49;
  v50 = *(v7 + 80);
  if (*(v50 + 8) <= 0xFFuLL)
  {
    goto LABEL_61;
  }

  atomic_exchange((*(v50 + 16) + 128), v49);
  *(v7 + 124) = 0;
  v51 = *(v7 + 8);
  v52 = IPC::Encoder::operator new(0x238, v11);
  *v52 = 1588;
  *(v52 + 2) = 0;
  *(v52 + 3) = 0;
  *(v52 + 1) = a3;
  *(v52 + 68) = 0;
  *(v52 + 70) = 0;
  *(v52 + 69) = 0;
  IPC::Encoder::encodeHeader(v52);
  v58 = v52;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v52, **a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v52, *a2[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v52, *a2[2]);
  v27 = IPC::Connection::sendMessageImpl(v51, &v58, 1, 0);
  v54 = v58;
  v58 = 0;
  if (v54)
  {
    IPC::Encoder::~Encoder(v54, v53);
    bmalloc::api::tzoneFree(v55, v56);
    if (v27)
    {
      goto LABEL_40;
    }
  }

  else if (v27)
  {
    goto LABEL_40;
  }

LABEL_43:
  v57 = 0;
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }

  return v27;
}

uint64_t WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::DidDrawRemoteToPDF,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(WebKit::RemoteRenderingBackendProxy *a1, uint64_t **a2, uint64_t a3)
{
  v62 = *MEMORY[0x1E69E9840];
  WebKit::RemoteRenderingBackendProxy::connection(a1, a2, &v57);
  v7 = v57;
  if (!v57)
  {
    return 1;
  }

  v8 = *(v57 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(v6);
    v9 = v8 + v10;
  }

  if (*(v7 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v9);
    if (buf[16] != 1)
    {
      goto LABEL_39;
    }

    v28 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E249B7CLL);
    }

    v29 = *buf;
    **buf = 3198;
    v30 = v29 + 2;
    if (v28 - 2 < (-v30 & 7 | 8uLL))
    {
      v27 = 18;
      goto LABEL_40;
    }

    v31 = -v30 & 7;
    *(v30 + v31) = a3;
    v32 = 6;
    if (v31 > 6)
    {
      v32 = v31;
    }

    v33 = v32 + 10;
    v34 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v35 = *(v7 + 72);
    if (v34 + 16 >= v35)
    {
      v34 = 0;
    }

    v36 = v33 + v34;
    if (v35 <= v36)
    {
      v36 = 0;
    }

    *(v7 + 88) = v36;
    v37 = *(v7 + 80);
    if (*(v37 + 8) <= 0xFFuLL)
    {
      goto LABEL_61;
    }

    v38 = atomic_exchange((*(v37 + 16) + 128), v36);
    v39 = *(v7 + 124);
    if (v38 == 0x80000000 || v39 != 0)
    {
      v41 = v39 + 1;
      *(v7 + 124) = v41;
      if (v41 >= *(v7 + 120))
      {
        if (*(v7 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v7 + 100));
        }

        *(v7 + 124) = 0;
      }
    }

    *(v7 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v9);
  if ((buf[16] & 1) == 0)
  {
LABEL_39:
    v27 = 16;
LABEL_40:
    v42 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(a1 + 10);
      v44 = IPC::errorAsString();
      *buf = 134218498;
      *&buf[4] = v43;
      *&buf[12] = 2082;
      *&buf[14] = "RemoteRenderingBackend_DidDrawRemoteToPDF";
      v60 = 2082;
      v61 = v44;
      _os_log_impl(&dword_19D52D000, v42, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
    }

    WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(a1);
    goto LABEL_43;
  }

  v12 = *&buf[8];
  if (*&buf[8] <= 1uLL)
  {
    goto LABEL_67;
  }

  v13 = *buf;
  **buf = 1583;
  v14 = v13 + 2;
  v15 = -v14 & 7 | 8;
  v16 = v12 - 2 - v15;
  if (v12 - 2 >= v15)
  {
    *(v14 + (-v14 & 7)) = **a2;
    v17 = v14 + v15;
    v18 = -v17 & 7 | 8;
    v19 = v16 - v18;
    if (v16 >= v18)
    {
      *(v17 + (-v17 & 7)) = *a2[1];
      v20 = v17 + v18;
      v21 = -v20 & 7 | 8;
      if (v19 >= v21)
      {
        *(v20 + (-v20 & 7)) = *a2[2];
        v22 = v12 - v19 + v21;
        if (v22 <= 0x10)
        {
          v22 = 16;
        }

        v23 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v24 = *(v7 + 72);
        if (v23 + 16 >= v24)
        {
          v23 = 0;
        }

        v25 = v23 + v22;
        if (v24 <= v25)
        {
          v25 = 0;
        }

        *(v7 + 88) = v25;
        v26 = *(v7 + 80);
        if (*(v26 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v26 + 16) + 128), v25) == 0x80000000 || *(v7 + 124))
          {
            if (*(v7 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v7 + 100));
            }

            *(v7 + 124) = 0;
          }

          v27 = 0;
          goto LABEL_43;
        }

LABEL_61:
        __break(1u);
      }
    }
  }

  if ((buf[16] & 1) == 0)
  {
    goto LABEL_61;
  }

  if (*&buf[8] <= 1uLL)
  {
LABEL_67:
    __break(0xC471u);
    JUMPOUT(0x19E249B54);
  }

  **buf = 3197;
  v46 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v47 = *(v7 + 72);
  if (v46 + 16 >= v47)
  {
    v46 = 0;
  }

  v48 = v46 + 16;
  if (v47 <= v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = v48;
  }

  *(v7 + 88) = v49;
  v50 = *(v7 + 80);
  if (*(v50 + 8) <= 0xFFuLL)
  {
    goto LABEL_61;
  }

  atomic_exchange((*(v50 + 16) + 128), v49);
  *(v7 + 124) = 0;
  v51 = *(v7 + 8);
  v52 = IPC::Encoder::operator new(0x238, v11);
  *v52 = 1583;
  *(v52 + 2) = 0;
  *(v52 + 3) = 0;
  *(v52 + 1) = a3;
  *(v52 + 68) = 0;
  *(v52 + 70) = 0;
  *(v52 + 69) = 0;
  IPC::Encoder::encodeHeader(v52);
  v58 = v52;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v52, **a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v52, *a2[1]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v52, *a2[2]);
  v27 = IPC::Connection::sendMessageImpl(v51, &v58, 1, 0);
  v54 = v58;
  v58 = 0;
  if (v54)
  {
    IPC::Encoder::~Encoder(v54, v53);
    bmalloc::api::tzoneFree(v55, v56);
    if (v27)
    {
      goto LABEL_40;
    }
  }

  else if (v27)
  {
    goto LABEL_40;
  }

LABEL_43:
  v57 = 0;
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }

  return v27;
}

IPC::Encoder *IPC::StreamClientConnection::sendSync<Messages::RemoteImageBuffer::GetPixelBufferWithNewMemory,WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(WTF::ApproximateTime *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  result = IPC::StreamClientConnection::trySendDestinationIDIfNeeded(a2, a4, v9);
  if (result)
  {
    *a1 = result;
  }

  else
  {
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, v12, v9);
    if (v13)
    {
      IPC::StreamClientConnection::sendProcessOutOfStreamMessage(a2, v12[0], v12[1]);
      return IPC::Connection::sendSync<Messages::RemoteImageBuffer::GetPixelBufferWithNewMemory>(a1, *(a2 + 8), a3, a4, v9);
    }

    *a1 = 16;
  }

  *(a1 + 16) = 1;
  return result;
}

IPC::Encoder *IPC::Connection::sendSync<Messages::RemoteImageBuffer::GetPixelBufferWithNewMemory>(_BYTE *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, double a5)
{
  IPC::Connection::createSyncMessageEncoder(0x1005, a4, v22);
  Messages::RemoteImageBuffer::GetPixelBufferWithNewMemory::encode<IPC::Encoder>(a3, v22[0]);
  v9 = IPC::Connection::sendSyncMessage(a2, v22[1], v22, 0, &v20, a5);
  if (v21)
  {
    if (v21 != 1)
    {
      mpark::throw_bad_variant_access(v9);
    }

    *a1 = v20;
    a1[16] = 1;
  }

  else
  {
    v11 = v20;
    v20 = 0;
    if (*(v11 + 25) == 3194)
    {
      *a1 = 11;
      a1[16] = 1;
      IPC::Decoder::~Decoder(v11);
      bmalloc::api::tzoneFree(v13, v14);
      if (!v21)
      {
        v15 = v20;
        v20 = 0;
        if (v15)
        {
          IPC::Decoder::~Decoder(v15);
          bmalloc::api::tzoneFree(v16, v17);
        }
      }
    }

    else
    {
      *a1 = v11;
      a1[16] = 0;
    }
  }

  result = v22[0];
  v22[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v18, v19);
  }

  return result;
}

uint64_t Messages::RemoteImageBuffer::GetPixelBufferWithNewMemory::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::encode(a2, *a1);
  IPC::ArgumentCoder<WebCore::PixelBufferFormat,void>::encode(a2, *(a1 + 8));
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(a2, *(a1 + 16));
  v4 = *(a1 + 24);

  return IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(a2, v4);
}

IPC::Decoder *mpark::detail::constructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::GetPixelBufferWithNewMemory>::ReplyData,IPC::Error>>::generic_construct<mpark::detail::move_constructor<mpark::detail::traits<IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::GetPixelBufferWithNewMemory>::ReplyData,IPC::Error>,(mpark::detail::Trait)1>>(IPC::Decoder *result, _BYTE *a2)
{
  v3 = result;
  if (!*(result + 16))
  {
    result = std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](result, 0);
  }

  *(v3 + 16) = -1;
  v4 = a2[16];
  if (v4 != 255)
  {
    if (a2[16])
    {
      *v3 = *a2;
    }

    else
    {
      v5 = *a2;
      *a2 = 0;
      *v3 = v5;
    }

    *(v3 + 16) = v4;
  }

  return result;
}

IPC::Encoder *IPC::Connection::sendSync<Messages::RemoteImageBuffer::GetPixelBuffer>(_BYTE *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, double a5)
{
  IPC::Connection::createSyncMessageEncoder(0x1004, a4, v23);
  v9 = v23[0];
  IPC::ArgumentCoder<WebCore::PixelBufferFormat,void>::encode(v23[0], *a3);
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v9, *(a3 + 8));
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v9, *(a3 + 16));
  v10 = IPC::Connection::sendSyncMessage(a2, v23[1], v23, 0, &v21, a5);
  if (v22)
  {
    if (v22 != 1)
    {
      mpark::throw_bad_variant_access(v10);
    }

    *a1 = v21;
    a1[16] = 1;
  }

  else
  {
    v12 = v21;
    v21 = 0;
    if (*(v12 + 25) == 3194)
    {
      *a1 = 11;
      a1[16] = 1;
      IPC::Decoder::~Decoder(v12);
      bmalloc::api::tzoneFree(v13, v14);
      if (!v22)
      {
        v15 = v21;
        v21 = 0;
        if (v15)
        {
          IPC::Decoder::~Decoder(v15);
          bmalloc::api::tzoneFree(v16, v17);
        }
      }
    }

    else
    {
      *a1 = v12;
      a1[16] = 0;
    }
  }

  result = v23[0];
  v23[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v11);
    return bmalloc::api::tzoneFree(v19, v20);
  }

  return result;
}

double WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::DestroyGetPixelBufferSharedMemory,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(WebKit::RemoteRenderingBackendProxy *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  result = WebKit::RemoteRenderingBackendProxy::connection(a1, a2, &v9);
  v5 = v9;
  if (v9)
  {
    if (IPC::StreamClientConnection::send<Messages::RemoteRenderingBackend::DestroyGetPixelBufferSharedMemory,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v9, a2))
    {
      v6 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 10);
        v8 = IPC::errorAsString();
        *buf = 134218498;
        v11 = v7;
        v12 = 2082;
        v13 = "RemoteRenderingBackend_DestroyGetPixelBufferSharedMemory";
        v14 = 2082;
        v15 = v8;
        _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
      }

      WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(a1);
    }

    v9 = 0;
    if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5);
      return IPC::StreamClientConnection::operator delete(v5);
    }
  }

  return result;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteRenderingBackend::DestroyGetPixelBufferSharedMemory,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(double *a1, uint64_t a2)
{
  v4 = a1[16];
  v5 = INFINITY;
  if (fabs(v4) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v5 = v4 + v6;
  }

  result = IPC::StreamClientConnection::trySendDestinationIDIfNeeded(a1, a2, v5);
  if (!result)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire((a1 + 9), v8, v5);
    if (v9 == 1)
    {
      IPC::StreamClientConnection::trySendStream<Messages::RemoteRenderingBackend::DestroyGetPixelBufferSharedMemory>(a1, v8[0], v8[1]);
      return 0;
    }

    else
    {
      return 16;
    }
  }

  return result;
}

uint64_t IPC::StreamClientConnection::trySendStream<Messages::RemoteRenderingBackend::DestroyGetPixelBufferSharedMemory>(uint64_t a1, _WORD *a2, unint64_t a3)
{
  if (a3 <= 1)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *a2 = 1582;
    result = IPC::StreamClientConnectionBuffer::release((a1 + 72), 2uLL);
    if ((result & 1) != 0 || *(a1 + 124))
    {
      if (*(a1 + 112) == 1)
      {
        result = MEMORY[0x19EB16320](*(a1 + 100));
      }

      *(a1 + 124) = 0;
    }
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::RemoteRenderingBackend::ReleaseNativeImage>(uint64_t *a1, void **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1599;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, **a2);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

uint64_t WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::CacheFont,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(WebKit::RemoteRenderingBackendProxy *a1, uint64_t *a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  WebKit::RemoteRenderingBackendProxy::connection(a1, a2, &v37);
  v7 = v37;
  if (!v37)
  {
    return 1;
  }

  v8 = *(v37 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(v6);
    v9 = v8 + v10;
  }

  if (*(v7 + 64) == a3)
  {
LABEL_5:
    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v9);
    if (buf[16])
    {
      if (*&buf[8] > 1uLL)
      {
        **buf = 3197;
        v12 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v14 = *(v7 + 72);
        v13 = *(v7 + 80);
        if (v12 + 16 >= v14)
        {
          v12 = 0;
        }

        v15 = v12 + 16;
        if (v14 <= v15)
        {
          v15 = 0;
        }

        *(v7 + 88) = v15;
        if (*(v13 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v13 + 16) + 128), v15);
          *(v7 + 124) = 0;
          v16 = *(v7 + 8);
          v17 = IPC::Encoder::operator new(0x238, v11);
          *v17 = 1573;
          *(v17 + 2) = 0;
          *(v17 + 3) = 0;
          *(v17 + 1) = a3;
          *(v17 + 68) = 0;
          *(v17 + 70) = 0;
          *(v17 + 69) = 0;
          IPC::Encoder::encodeHeader(v17);
          v38 = v17;
          IPC::ArgumentCoder<WebCore::FontInternalAttributes,void>::encode(v17, *a2);
          IPC::ArgumentCoder<WebCore::FontPlatformDataAttributes,void>::encode(v17, a2[1]);
          IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v17, a2[2]);
          v19 = IPC::Connection::sendMessageImpl(v16, &v38, 1, 0);
          v20 = v38;
          v38 = 0;
          if (v20)
          {
            IPC::Encoder::~Encoder(v20, v18);
            bmalloc::api::tzoneFree(v22, v23);
          }

          if (!v19)
          {
            goto LABEL_15;
          }

          goto LABEL_32;
        }

        goto LABEL_29;
      }

LABEL_36:
      __break(0xC471u);
      JUMPOUT(0x19E24A5E4);
    }

    goto LABEL_31;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v9);
  if (buf[16] == 1)
  {
    v24 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      goto LABEL_36;
    }

    v25 = *buf;
    **buf = 3198;
    v26 = v25 + 2;
    if (v24 - 2 < (-v26 & 7 | 8uLL))
    {
      v19 = 18;
      goto LABEL_32;
    }

    v27 = -v26 & 7;
    *(v26 + v27) = a3;
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
LABEL_29:
      __break(1u);
      return 1;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(v7, atomic_exchange((*(v33 + 16) + 128), v32) == 0x80000000);
    *(v7 + 64) = a3;
    goto LABEL_5;
  }

LABEL_31:
  v19 = 16;
LABEL_32:
  v34 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v35 = *(a1 + 10);
    v36 = IPC::errorAsString();
    *buf = 134218498;
    *&buf[4] = v35;
    *&buf[12] = 2082;
    *&buf[14] = "RemoteRenderingBackend_CacheFont";
    v40 = 2082;
    v41 = v36;
    _os_log_impl(&dword_19D52D000, v34, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
  }

  WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(a1);
LABEL_15:
  v37 = 0;
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }

  return v19;
}

uint64_t IPC::Connection::send<Messages::RemoteRenderingBackend::ReleaseFont>(uint64_t *a1, void **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1593;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, **a2);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

uint64_t WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::CacheDecomposedGlyphs,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(WebKit::RemoteRenderingBackendProxy *a1, void *a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  WebKit::RemoteRenderingBackendProxy::connection(a1, a2, &v40);
  v7 = v40;
  if (!v40)
  {
    return 1;
  }

  v8 = *(v40 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(v6);
    v9 = v8 + v10;
  }

  if (*(v7 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v9);
    if (buf[16] != 1)
    {
      goto LABEL_51;
    }

    v23 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      goto LABEL_57;
    }

    v24 = *buf;
    **buf = 3198;
    v25 = v24 + 2;
    if (v23 - 2 < (-v25 & 7 | 8uLL))
    {
      v21 = 18;
      goto LABEL_52;
    }

    v26 = -v25 & 7;
    *(v25 + v26) = a3;
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
      goto LABEL_50;
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

    *(v7 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v41, v9);
  if ((v43 & 1) == 0)
  {
LABEL_51:
    v21 = 16;
LABEL_52:
    v37 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(a1 + 10);
      v39 = IPC::errorAsString();
      *buf = 134218498;
      *&buf[4] = v38;
      *&buf[12] = 2082;
      *&buf[14] = "RemoteRenderingBackend_CacheDecomposedGlyphs";
      *&buf[22] = 2082;
      v45 = v39;
      _os_log_impl(&dword_19D52D000, v37, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
    }

    WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(a1);
    goto LABEL_21;
  }

  v11 = v41;
  v12 = v42;
  *&buf[16] = v42;
  if (v42 <= 1)
  {
LABEL_57:
    __break(0xC471u);
    JUMPOUT(0x19E24AAC4);
  }

  *v41 = 1571;
  *buf = v11 + 1;
  *&buf[8] = v12 - 2;
  IPC::ArgumentCoder<IPC::ArrayReferenceTuple<unsigned short,WebCore::FloatSize>,void>::encode<IPC::StreamConnectionEncoder,0ul,1ul>(buf, *a2);
  IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(buf, a2[1]);
  if (*&buf[8])
  {
    **buf = *(a2 + 16);
    if (!*&buf[8])
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v13 = *buf + 1;
    *buf = v13;
    --*&buf[8];
    v14 = -v13 & 7 | 8;
    if (*&buf[8] >= v14)
    {
      *(v13 + (-v13 & 7)) = *a2[3];
      v15 = *&buf[8] - v14;
      if (*&buf[8] >= v14)
      {
        *buf += v14;
        *&buf[8] -= v14;
        v16 = *&buf[16] - v15;
        if (*&buf[16] - v15 <= 0x10)
        {
          v16 = 16;
        }

        v17 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v18 = *(v7 + 72);
        if (v17 + 16 >= v18)
        {
          v17 = 0;
        }

        v19 = v17 + v16;
        if (v18 <= v19)
        {
          v19 = 0;
        }

        *(v7 + 88) = v19;
        v20 = *(v7 + 80);
        if (*(v20 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v20 + 16) + 128), v19) == 0x80000000 || *(v7 + 124))
          {
            if (*(v7 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v7 + 100));
            }

            *(v7 + 124) = 0;
          }

          v21 = 0;
          goto LABEL_21;
        }
      }

      goto LABEL_50;
    }
  }

  if ((v43 & 1) == 0)
  {
    goto LABEL_50;
  }

  IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v7, v41, v42);
  v21 = IPC::Connection::send<Messages::RemoteRenderingBackend::CacheDecomposedGlyphs>(*(v7 + 8), a2, a3);
  if (v21)
  {
    goto LABEL_52;
  }

LABEL_21:
  v40 = 0;
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }

  return v21;
}

uint64_t IPC::Connection::send<Messages::RemoteRenderingBackend::CacheDecomposedGlyphs>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1571;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  Messages::RemoteRenderingBackend::CacheDecomposedGlyphs::encode<IPC::Encoder>(a2, v6);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

uint64_t Messages::RemoteRenderingBackend::CacheDecomposedGlyphs::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<IPC::ArrayReferenceTuple<unsigned short,WebCore::FloatSize>,void>::encode<IPC::Encoder,0ul,1ul>(a2, *a1);
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(a2, *(a1 + 8));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a2, *(a1 + 16));
  v4 = **(a1 + 24);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, v4);
}

uint64_t IPC::Connection::send<Messages::RemoteRenderingBackend::ReleaseDecomposedGlyphs>(uint64_t *a1, void **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1591;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, **a2);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

uint64_t IPC::Connection::send<Messages::RemoteRenderingBackend::CacheGradient>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1575;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  Messages::RemoteRenderingBackend::CacheGradient::encode<IPC::Encoder>(a2, v6);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

uint64_t Messages::RemoteRenderingBackend::CacheGradient::encode<IPC::Encoder>(uint64_t **a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WebCore::Gradient,void>::encode(a2, **a1);
  v4 = *a1[1];

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, v4);
}

uint64_t IPC::Connection::send<Messages::RemoteRenderingBackend::ReleaseGradient>(uint64_t *a1, void **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1595;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, **a2);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

uint64_t WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::CacheFilter,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(WebKit::RemoteRenderingBackendProxy *a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  WebKit::RemoteRenderingBackendProxy::connection(a1, a2, &v12);
  v6 = v12;
  if (!v12)
  {
    return 1;
  }

  v7 = IPC::StreamClientConnection::send<Messages::RemoteRenderingBackend::CacheFilter,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v12, a2, a3);
  if (v7)
  {
    v9 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 10);
      v11 = IPC::errorAsString();
      *buf = 134218498;
      v14 = v10;
      v15 = 2082;
      v16 = "RemoteRenderingBackend_CacheFilter";
      v17 = 2082;
      v18 = v11;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
    }

    WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(a1);
  }

  v12 = 0;
  if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    IPC::StreamClientConnection::operator delete(v6);
  }

  return v7;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteRenderingBackend::CacheFilter,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  result = IPC::StreamClientConnection::trySendDestinationIDIfNeeded(a1, a3, v7);
  if (!result)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, v10, v7);
    if (v11 == 1)
    {
      IPC::StreamClientConnection::sendProcessOutOfStreamMessage(a1, v10[0], v10[1]);
      return IPC::Connection::send<Messages::RemoteRenderingBackend::CacheFilter>(*(a1 + 8), a2, a3);
    }

    else
    {
      return 16;
    }
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::RemoteRenderingBackend::CacheFilter>(uint64_t *a1, void **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1572;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::Filter,void>::encode(v6, **a2);
  v8 = IPC::Connection::sendMessageImpl(a1, &v13, 1, 0);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    IPC::Encoder::~Encoder(v9, v7);
    bmalloc::api::tzoneFree(v11, v12);
  }

  return v8;
}

uint64_t WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::ReleaseMemory,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(WebKit::RemoteRenderingBackendProxy *a1, void *a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  WebKit::RemoteRenderingBackendProxy::connection(a1, a2, &v33);
  v6 = v33;
  if (!v33)
  {
    return 1;
  }

  v7 = *(v33 + 128);
  v8 = INFINITY;
  if (fabs(v7) != INFINITY)
  {
    WTF::ApproximateTime::now(v5);
    v8 = v7 + v9;
  }

  if (*(v6 + 64) == a3)
  {
    while (1)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v8);
      if (buf[16] != 1)
      {
        goto LABEL_34;
      }

      if (*&buf[8] <= 1uLL)
      {
        goto LABEL_47;
      }

      **buf = 1598;
      v10 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v6 + 72);
      v11 = *(v6 + 80);
      if (v10 + 16 >= v12)
      {
        v10 = 0;
      }

      v13 = v10 + 16;
      if (v12 <= v13)
      {
        v13 = 0;
      }

      *(v6 + 88) = v13;
      if (*(v11 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v11 + 16) + 128), v13) == 0x80000000 || *(v6 + 124))
        {
          if (*(v6 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v6 + 100));
          }

          *(v6 + 124) = 0;
        }

        v14 = 0;
        goto LABEL_38;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      if (*(v6 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(v6 + 100));
      }

      *(v6 + 124) = 0;
LABEL_33:
      *(v6 + 64) = a3;
    }
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v8);
  if (buf[16] != 1)
  {
LABEL_34:
    v14 = 16;
    goto LABEL_35;
  }

  v15 = *&buf[8];
  if (*&buf[8] <= 1uLL)
  {
LABEL_47:
    __break(0xC471u);
    JUMPOUT(0x19E24B41CLL);
  }

  v16 = *buf;
  **buf = 3198;
  v17 = v16 + 2;
  if (v15 - 2 >= (-v17 & 7 | 8uLL))
  {
    v18 = -v17 & 7;
    *(v17 + v18) = a3;
    v19 = 6;
    if (v18 > 6)
    {
      v19 = v18;
    }

    v20 = v19 + 10;
    v21 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v22 = *(v6 + 72);
    if (v21 + 16 >= v22)
    {
      v21 = 0;
    }

    v23 = v20 + v21;
    if (v22 <= v23)
    {
      v23 = 0;
    }

    *(v6 + 88) = v23;
    v24 = *(v6 + 80);
    if (*(v24 + 8) <= 0xFFuLL)
    {
      goto LABEL_42;
    }

    v25 = atomic_exchange((*(v24 + 16) + 128), v23);
    v26 = *(v6 + 124);
    if (v25 == 0x80000000 || v26 != 0)
    {
      v28 = v26 + 1;
      *(v6 + 124) = v28;
      if (v28 >= *(v6 + 120))
      {
        goto LABEL_43;
      }
    }

    goto LABEL_33;
  }

  v14 = 18;
LABEL_35:
  v29 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 10);
    v31 = IPC::errorAsString();
    *buf = 134218498;
    *&buf[4] = v30;
    *&buf[12] = 2082;
    *&buf[14] = "RemoteRenderingBackend_ReleaseMemory";
    v35 = 2082;
    v36 = v31;
    _os_log_impl(&dword_19D52D000, v29, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
  }

  WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(a1);
LABEL_38:
  v33 = 0;
  if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    IPC::StreamClientConnection::operator delete(v6);
  }

  return v14;
}

uint64_t WebKit::RemoteRenderingBackendProxy::send<Messages::RemoteRenderingBackend::ReleaseNativeImages,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(WebKit::RemoteRenderingBackendProxy *a1, void *a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  WebKit::RemoteRenderingBackendProxy::connection(a1, a2, &v33);
  v6 = v33;
  if (!v33)
  {
    return 1;
  }

  v7 = *(v33 + 128);
  v8 = INFINITY;
  if (fabs(v7) != INFINITY)
  {
    WTF::ApproximateTime::now(v5);
    v8 = v7 + v9;
  }

  if (*(v6 + 64) == a3)
  {
    while (1)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v8);
      if (buf[16] != 1)
      {
        goto LABEL_34;
      }

      if (*&buf[8] <= 1uLL)
      {
        goto LABEL_47;
      }

      **buf = 1600;
      v10 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v6 + 72);
      v11 = *(v6 + 80);
      if (v10 + 16 >= v12)
      {
        v10 = 0;
      }

      v13 = v10 + 16;
      if (v12 <= v13)
      {
        v13 = 0;
      }

      *(v6 + 88) = v13;
      if (*(v11 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v11 + 16) + 128), v13) == 0x80000000 || *(v6 + 124))
        {
          if (*(v6 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v6 + 100));
          }

          *(v6 + 124) = 0;
        }

        v14 = 0;
        goto LABEL_38;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      if (*(v6 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(v6 + 100));
      }

      *(v6 + 124) = 0;
LABEL_33:
      *(v6 + 64) = a3;
    }
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v8);
  if (buf[16] != 1)
  {
LABEL_34:
    v14 = 16;
    goto LABEL_35;
  }

  v15 = *&buf[8];
  if (*&buf[8] <= 1uLL)
  {
LABEL_47:
    __break(0xC471u);
    JUMPOUT(0x19E24B774);
  }

  v16 = *buf;
  **buf = 3198;
  v17 = v16 + 2;
  if (v15 - 2 >= (-v17 & 7 | 8uLL))
  {
    v18 = -v17 & 7;
    *(v17 + v18) = a3;
    v19 = 6;
    if (v18 > 6)
    {
      v19 = v18;
    }

    v20 = v19 + 10;
    v21 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v22 = *(v6 + 72);
    if (v21 + 16 >= v22)
    {
      v21 = 0;
    }

    v23 = v20 + v21;
    if (v22 <= v23)
    {
      v23 = 0;
    }

    *(v6 + 88) = v23;
    v24 = *(v6 + 80);
    if (*(v24 + 8) <= 0xFFuLL)
    {
      goto LABEL_42;
    }

    v25 = atomic_exchange((*(v24 + 16) + 128), v23);
    v26 = *(v6 + 124);
    if (v25 == 0x80000000 || v26 != 0)
    {
      v28 = v26 + 1;
      *(v6 + 124) = v28;
      if (v28 >= *(v6 + 120))
      {
        goto LABEL_43;
      }
    }

    goto LABEL_33;
  }

  v14 = 18;
LABEL_35:
  v29 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 10);
    v31 = IPC::errorAsString();
    *buf = 134218498;
    *&buf[4] = v30;
    *&buf[12] = 2082;
    *&buf[14] = "RemoteRenderingBackend_ReleaseNativeImages";
    v35 = 2082;
    v36 = v31;
    _os_log_impl(&dword_19D52D000, v29, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
  }

  WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(a1);
LABEL_38:
  v33 = 0;
  if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    IPC::StreamClientConnection::operator delete(v6);
  }

  return v14;
}

void WebKit::RemoteRenderingBackendProxy::sendSync<Messages::RemoteRenderingBackend::PrepareImageBufferSetsForDisplaySync,WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, WebKit::RemoteRenderingBackendProxy *this, uint64_t *a3, uint64_t a4)
{
  v96 = *MEMORY[0x1E69E9840];
  WebKit::RemoteRenderingBackendProxy::connection(this, this, &v82);
  v9 = v82;
  if (!v82)
  {
    *a1 = 1;
    *(a1 + 24) = 1;
    return;
  }

  v10 = *(v82 + 128);
  v11 = INFINITY;
  if (fabs(v10) != INFINITY)
  {
    WTF::ApproximateTime::now(v8);
    v11 = v10 + v12;
  }

  if (*(v9 + 64) == a4)
  {
    goto LABEL_5;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, buf, v11);
  if (buf[16] != 1)
  {
    LOBYTE(v31) = 16;
    goto LABEL_121;
  }

  v68 = *&buf[8];
  if (*&buf[8] <= 1uLL)
  {
    __break(0xC471u);
    goto LABEL_126;
  }

  v69 = *buf;
  **buf = 3198;
  v70 = v69 + 2;
  if (v68 - 2 < (-v70 & 7 | 8uLL))
  {
    LOBYTE(v31) = 18;
LABEL_121:
    v30 = 1;
    goto LABEL_34;
  }

  v71 = -v70 & 7;
  *(v70 + v71) = a4;
  v72 = 6;
  if (v71 > 6)
  {
    v72 = v71;
  }

  v73 = v72 + 10;
  v74 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v75 = *(v9 + 72);
  if (v74 + 16 >= v75)
  {
    v74 = 0;
  }

  v76 = v73 + v74;
  if (v75 <= v76)
  {
    v76 = 0;
  }

  *(v9 + 88) = v76;
  v77 = *(v9 + 80);
  if (*(v77 + 8) <= 0xFFuLL)
  {
    goto LABEL_126;
  }

  v78 = atomic_exchange((*(v77 + 16) + 128), v76);
  v79 = *(v9 + 124);
  if (v78 == 0x80000000 || v79 != 0)
  {
    v81 = v79 + 1;
    *(v9 + 124) = v81;
    if (v81 >= *(v9 + 120))
    {
      if (*(v9 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(v9 + 100));
      }

      *(v9 + 124) = 0;
    }
  }

  *(v9 + 64) = a4;
LABEL_5:
  IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v83, v11);
  if ((v85 & 1) == 0)
  {
    v30 = 1;
    LOBYTE(v31) = 16;
    goto LABEL_34;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_127;
  }

  v13 = v83;
  v14 = v84;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  if ((IPC::Connection::pushPendingSyncRequestID(*(v9 + 8), IdentifierInternal) & 1) == 0)
  {
    LOBYTE(v89) = 12;
    v92 = 1;
    goto LABEL_40;
  }

  v91 = v14;
  if (v14 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E24BFD0);
  }

  *v13 = 4123;
  v16 = (v13 + 1);
  v89 = v16;
  v90 = (v14 - 2);
  v17 = -v16 & 7 | 8;
  if (v14 - 2 < v17)
  {
    v89 = 0;
    v90 = 0;
  }

  else
  {
    *(v16 + (-v16 & 7)) = IdentifierInternal;
    if (v90 < v17)
    {
      goto LABEL_126;
    }

    v89 = (v89 + v17);
    v90 = (v90 - v17);
  }

  IPC::VectorArgumentCoder<false,WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(&v89, *a3);
  if (!v89)
  {
    IPC::Connection::popPendingSyncRequestID(*(v9 + 8));
    buf[0] = 0;
    v95 = 0;
    goto LABEL_62;
  }

  v19 = v91 - v90;
  if (v91 - v90 <= 0x10)
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
    goto LABEL_126;
  }

  if (atomic_exchange((*(v23 + 16) + 128), v22) == 0x80000000 || *(v9 + 124))
  {
    if (*(v9 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(v9 + 100));
    }

    *(v9 + 124) = 0;
  }

  while (1)
  {
    v24 = *(v9 + 80);
    if (*(v24 + 8) <= 0xFFuLL)
    {
      goto LABEL_126;
    }

    v25 = atomic_exchange(*(v24 + 16), 0x80000000uLL);
    v26 = *(v9 + 80);
    if (*(v26 + 8) <= 0xFFuLL)
    {
      goto LABEL_126;
    }

    if (!(v25 | atomic_load_explicit((*(v26 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
    {
      break;
    }

    if (*(v9 + 112) == 1)
    {
      v27 = IPC::Semaphore::waitFor((v9 + 104), v11);
      if (v27)
      {
        WTF::ApproximateTime::now(v27);
        if (v28 < v11)
        {
          continue;
        }
      }
    }

    IPC::Connection::popPendingSyncRequestID(*(v9 + 8));
    v29 = 17;
    goto LABEL_52;
  }

  v38 = *(v9 + 80);
  if (*(v38 + 8) <= 0xFFuLL)
  {
    goto LABEL_126;
  }

  atomic_store(0, *(v38 + 16));
  *(v9 + 88) = 0;
  v39 = *(v9 + 80);
  v40 = *(v39 + 8);
  if (v40 <= 0xFF)
  {
    goto LABEL_126;
  }

  v41 = *(v9 + 72);
  v42 = *(v39 + 16);
  v43 = v40 - 256;
  if (v41)
  {
    v64 = v41 - 1;
    v65 = v43 >= v64;
    v43 = v64;
    if (!v65)
    {
      goto LABEL_126;
    }
  }

  v44 = IPC::Decoder::operator new(0x58, v18);
  if (*(IPC::Decoder::Decoder(v44, v42 + 256, v43, *(v9 + 64)) + 25) != 3197)
  {
LABEL_55:
    IPC::Connection::popPendingSyncRequestID(*(v9 + 8));
    if (*(v44 + 25) == 3194)
    {
      v48 = 11;
LABEL_60:
      buf[0] = v48;
      LOBYTE(v94) = 1;
      v95 = 1;
      v37 = v44;
      goto LABEL_61;
    }

    LOBYTE(v86) = 0;
    v88 = 0;
    IPC::Decoder::operator>><std::tuple<WTF::Vector<WebKit::SwapBuffersDisplayRequirement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v44, &v86);
    if (v88 != 1)
    {
      v48 = 14;
      goto LABEL_60;
    }

    v89 = v44;
    v90 = v86;
    v91 = v87;
    v92 = 0;
LABEL_40:
    std::optional<IPC::ConnectionSendSyncResult<Messages::RemoteGraphicsContextGL::GetActiveUniforms>>::optional[abi:sn200100]<IPC::ConnectionSendSyncResult<Messages::RemoteGraphicsContextGL::GetActiveUniforms>,0>(buf, &v89);
    if (v92)
    {
      goto LABEL_62;
    }

    if (v90)
    {
      WTF::fastFree(v90, v36);
    }

    v37 = v89;
    if (!v89)
    {
      goto LABEL_62;
    }

LABEL_61:
    IPC::Decoder::~Decoder(v37);
    bmalloc::api::tzoneFree(v49, v50);
    goto LABEL_62;
  }

  IPC::Decoder::~Decoder(v44);
  bmalloc::api::tzoneFree(v45, v46);
  IPC::Connection::waitForSyncReply(*(v9 + 8), IdentifierInternal, 0x101Bu, &v86, v11);
  v47 = v87;
  if (!v87)
  {
    v44 = v86;
    goto LABEL_55;
  }

  if (v87 == 255)
  {
    v33 = IPC::Connection::popPendingSyncRequestID(*(v9 + 8));
    goto LABEL_118;
  }

  v29 = v86;
  v33 = IPC::Connection::popPendingSyncRequestID(*(v9 + 8));
  if (v47 != 1)
  {
    goto LABEL_118;
  }

LABEL_52:
  buf[0] = v29;
  LOBYTE(v94) = 1;
  v95 = 1;
LABEL_62:
  if (v95 != 1)
  {
    if (v85)
    {
      if (v84 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E24BFF0);
      }

      *v83 = 3197;
      v51 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v53 = *(v9 + 72);
      v52 = *(v9 + 80);
      if (v51 + 16 >= v53)
      {
        v51 = 0;
      }

      v54 = v51 + 16;
      if (v53 <= v54)
      {
        v54 = 0;
      }

      *(v9 + 88) = v54;
      if (*(v52 + 8) > 0xFFuLL)
      {
        atomic_exchange((*(v52 + 16) + 128), v54);
        *(v9 + 124) = 0;
        v55 = *(v9 + 8);
        IPC::Connection::createSyncMessageEncoder(0x101B, a4, &v89);
        IPC::VectorArgumentCoder<false,WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v89, *a3);
        v33 = IPC::Connection::sendSyncMessage(v55, v90, &v89, 0, &v86, v11);
        if (v87)
        {
          if (v87 != 1)
          {
            goto LABEL_118;
          }

          v31 = v86;
          v30 = 1;
LABEL_87:
          v61 = v89;
          v89 = 0;
          if (v61)
          {
            IPC::Encoder::~Encoder(v61, v56);
            bmalloc::api::tzoneFree(v62, v63);
            if (!v30)
            {
              goto LABEL_89;
            }
          }

          else if (!v30)
          {
            goto LABEL_89;
          }

LABEL_34:
          v32 = qword_1ED6410D0;
          v33 = os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT);
          if (!v33)
          {
            WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(this);
            *a1 = 0;
            *(a1 + 24) = -1;
            if (v30 == 255)
            {
              goto LABEL_90;
            }

            goto LABEL_38;
          }

          if (v30 == 1)
          {
            v34 = *(this + 10);
            v35 = IPC::errorAsString();
            *buf = 134218498;
            *&buf[4] = v34;
            *&buf[12] = 2082;
            *&buf[14] = "RemoteRenderingBackend_PrepareImageBufferSetsForDisplaySync";
            *&buf[22] = 2082;
            v94 = v35;
            _os_log_impl(&dword_19D52D000, v32, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackendProxy::sendSync - failed, name:%{public}s, error:%{public}s", buf, 0x20u);
            WebKit::RemoteRenderingBackendProxy::didBecomeUnresponsive(this);
LABEL_38:
            *a1 = v31;
            *(a1 + 24) = v30;
            goto LABEL_90;
          }

LABEL_118:
          mpark::throw_bad_variant_access(v33);
        }

        v31 = v86;
        v86 = 0;
        if (*(v31 + 50) == 3194)
        {
          v57 = 11;
        }

        else
        {
          buf[0] = 0;
          buf[16] = 0;
          IPC::Decoder::operator>><std::tuple<WTF::Vector<WebKit::SwapBuffersDisplayRequirement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v31, buf);
          if (buf[16] == 1)
          {
            v30 = 0;
            a4 = *buf;
            v11 = *&buf[8];
LABEL_84:
            if (!v87)
            {
              v60 = v86;
              v86 = 0;
              if (v60)
              {
                IPC::Decoder::~Decoder(v60);
                bmalloc::api::tzoneFree(v66, v67);
              }
            }

            goto LABEL_87;
          }

          v57 = 14;
        }

        IPC::Decoder::~Decoder(v31);
        bmalloc::api::tzoneFree(v58, v59);
        v30 = 1;
        v31 = v57;
        goto LABEL_84;
      }
    }

LABEL_126:
    __break(1u);
LABEL_127:
    JUMPOUT(0x19E24BFB0);
  }

  v30 = v94;
  if (v94)
  {
    if (v94 == 255)
    {
      LOBYTE(v31) = 0;
    }

    else
    {
      LOBYTE(v31) = buf[0];
    }

    goto LABEL_34;
  }

  v31 = *buf;
  v11 = *&buf[16];
  a4 = *&buf[8];
LABEL_89:
  *a1 = v31;
  *(a1 + 8) = a4;
  *(a1 + 16) = v11;
  *(a1 + 24) = 0;
LABEL_90:
  v82 = 0;
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    IPC::StreamClientConnection::operator delete(v9);
  }
}

IPC::Decoder *IPC::Decoder::operator>><std::tuple<WTF::Vector<WebKit::SwapBuffersDisplayRequirement,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(IPC::Decoder *a1, uint64_t a2)
{
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
    v33 = *(a1 + 3);
    if (v33)
    {
      if (v6)
      {
        (*(*v33 + 16))(v33);
        v6 = *(a1 + 1);
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_54;
  }

  *(a1 + 2) = v7 + 1;
  if (!v7)
  {
LABEL_54:
    *a1 = 0;
    *(a1 + 1) = 0;
    v34 = *(a1 + 3);
    if (v34 && v6)
    {
      (*(*v34 + 16))(v34);
    }

LABEL_25:
    v8 = *a1;
    v25 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v26 = *(a1 + 3);
    if (v26 && v25)
    {
      (*(*v26 + 16))(v26, v8);
      v13 = 0;
      v18 = 0;
      v8 = *a1;
      v31 = *(a1 + 1);
      v32 = *(a1 + 3);
      v17 = 1;
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v32 && v31)
      {
        (*(*v32 + 16))(v32, v8);
        v18 = 0;
        v13 = 0;
      }
    }

    else
    {
      v18 = 0;
      v13 = 0;
      v17 = 1;
    }

    goto LABEL_27;
  }

  v13 = *v7;
  v36 = 0;
  v37 = 0;
  if (v13 >= 0x100000)
  {
    while (1)
    {
      v23 = IPC::Decoder::decode<WebCore::GradientSpreadMethod>(a1);
      v35 = v23;
      if ((v23 & 0x100) == 0)
      {
        goto LABEL_23;
      }

      v19 = HIDWORD(v37);
      if (HIDWORD(v37) == v37)
      {
        v20 = WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v36, HIDWORD(v37) + 1, &v35);
        v19 = HIDWORD(v37);
        v21 = v36;
        *(v36 + HIDWORD(v37)) = *v20;
      }

      else
      {
        v22 = v23;
        v21 = v36;
        *(v36 + HIDWORD(v37)) = v22;
      }

      v8 = (v19 + 1);
      HIDWORD(v37) = v19 + 1;
      v13 = (v13 - 1);
      if (!v13)
      {
        if (v37 > v8)
        {
          if (v19 == -1)
          {
            v36 = 0;
            LODWORD(v37) = 0;
            WTF::fastFree(v21, v8);
          }

          else
          {
            LODWORD(v37) = v19 + 1;
            v36 = WTF::fastRealloc(v21, v8);
          }
        }

        v13 = v36;
        v3 = v37;
        v2 = HIDWORD(v37);
        goto LABEL_17;
      }
    }
  }

  if (v13)
  {
    LODWORD(v37) = v13;
    v36 = WTF::fastMalloc(v13);
    while (1)
    {
      v14 = IPC::Decoder::decode<WebCore::GradientSpreadMethod>(a1);
      v35 = v14;
      if ((v14 & 0x100) == 0)
      {
        break;
      }

      v15 = HIDWORD(v37);
      if (HIDWORD(v37) == v37)
      {
        v16 = WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v36, HIDWORD(v37) + 1, &v35);
        v15 = HIDWORD(v37);
        *(v36 + HIDWORD(v37)) = *v16;
      }

      else
      {
        *(v36 + HIDWORD(v37)) = v14;
      }

      v2 = v15 + 1;
      HIDWORD(v37) = v15 + 1;
      v13 = (v13 - 1);
      if (!v13)
      {
        v13 = v36;
        v3 = v37;
        goto LABEL_17;
      }
    }

LABEL_23:
    v24 = v36;
    if (v36)
    {
      v36 = 0;
      LODWORD(v37) = 0;
      WTF::fastFree(v24, v8);
    }

    goto LABEL_25;
  }

  v2 = 0;
  v3 = 0;
LABEL_17:
  v17 = 0;
  v18 = 1;
LABEL_27:
  if (*(a2 + 16) == v18)
  {
    if (*(a2 + 16))
    {
      v27 = *a2;
      if (*a2)
      {
        *a2 = 0;
        *(a2 + 8) = 0;
        WTF::fastFree(v27, v8);
      }

      *a2 = v13;
      *(a2 + 8) = v3;
      *(a2 + 12) = v2;
      return a1;
    }
  }

  else
  {
    if (!*(a2 + 16))
    {
      *a2 = v13;
      *(a2 + 8) = v3;
      *(a2 + 12) = v2;
      *(a2 + 16) = 1;
      return a1;
    }

    v28 = *a2;
    if (*a2)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      WTF::fastFree(v28, v8);
    }

    *(a2 + 16) = 0;
  }

  if (v13)
  {
    v29 = v17;
  }

  else
  {
    v29 = 1;
  }

  if ((v29 & 1) == 0)
  {
    WTF::fastFree(v13, v8);
  }

  return a1;
}

WTF *IPC::VectorArgumentCoder<false,WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(WTF *result, uint64_t a2)
{
  v2 = result;
  v3 = -*result;
  v4 = v3 & 7 | 8;
  if (*(result + 1) >= v4)
  {
    *(*result + (v3 & 7)) = *(a2 + 12);
    v5 = *(result + 1);
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (v6)
    {
      *result += v4;
      *(result + 1) = v7;
      goto LABEL_5;
    }

    __break(1u);
  }

  *result = 0;
  *(result + 1) = 0;
LABEL_5:
  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = *a2;
    v10 = 40 * v8;
    do
    {
      result = IPC::ArgumentCoder<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,void>::encode(v2, v9);
      v9 += 40;
      v10 -= 40;
    }

    while (v10);
  }

  return result;
}

uint64_t IPC::VectorArgumentCoder<false,WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 40 * v5;
    do
    {
      result = IPC::ArgumentCoder<WebKit::ImageBufferSetPrepareBufferForDisplayInputData,void>::encode(a1, v6);
      v6 += 40;
      v7 -= 40;
    }

    while (v7);
  }

  return result;
}

uint64_t IPC::ConnectionSendSyncResult<Messages::RemoteRenderingBackend::PrepareImageBufferSetsForDisplaySync>::~ConnectionSendSyncResult(uint64_t a1, void *a2)
{
  if (!*(a1 + 24))
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      WTF::fastFree(v3, a2);
    }

    std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1, 0);
  }

  *(a1 + 24) = -1;
  return a1;
}
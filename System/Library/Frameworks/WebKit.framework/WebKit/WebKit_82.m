uint64_t WebKit::NetworkProcessProxy::didReceiveSyncMessage(uint64_t a1, atomic_ullong *a2, uint64_t a3, uint64_t *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = (a1 + 16);
  atomic_fetch_add((a1 + 16), 1u);
  if (*(a3 + 50) == 4009)
  {
    v9 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
    if (v10)
    {
      v11 = v9;
      v12 = *a4;
      *a4 = 0;
      while (1)
      {
        v13 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v14 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v14 == v13)
        {
          goto LABEL_13;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_13:
      v20 = WTF::fastMalloc(0x18);
      *v20 = &unk_1F10F11C8;
      v20[1] = v12;
      v20[2] = a2;
      *v26 = v20;
      WebKit::NetworkProcessProxy::testProcessIncomingSyncMessagesWhenWaitingForSyncReply(a1, v11, v26);
      v21 = *v26;
      *v26 = 0;
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }
    }
  }

  else if ((IPC::MessageReceiverMap::dispatchSyncMessage(a1 + 96, a2, a3, a4) & 1) == 0)
  {
    v15 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a3 + 50);
      if (v23 >= 0x107F)
      {
        v23 = 4223;
      }

      v24 = (&IPC::Detail::messageDescriptions)[3 * v23];
      v25 = *(a3 + 56);
      *v26 = 136315394;
      *&v26[4] = v24;
      v27 = 2048;
      v28 = v25;
      _os_log_error_impl(&dword_19D52D000, v15, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", v26, 0x16u);
    }

    v16 = *a3;
    v17 = *(a3 + 8);
    *a3 = 0;
    *(a3 + 8) = 0;
    v18 = *(a3 + 24);
    if (v18 && v17)
    {
      (*(*v18 + 16))(v18, v16);
    }

    v19 = 0;
    if (a1)
    {
      goto LABEL_16;
    }

    return v19;
  }

  v19 = 1;
  if (a1)
  {
LABEL_16:
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8);
  }

  return v19;
}

unsigned int *WebKit::NetworkRTCMonitor::didReceiveMessage(WebKit::NetworkRTCMonitor *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(this + 1);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_18;
  }

  atomic_fetch_add((v3 + 24), 1u);
  v6 = *(a3 + 25);
  if (v6 == 735)
  {
    WebKit::NetworkRTCMonitor::stopUpdating(this);
  }

  else if (v6 == 734)
  {
    WebKit::NetworkRTCMonitor::startUpdatingIfNeeded(this);
  }

  else
  {
    v7 = qword_1ED6416C8;
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
      _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &v16, 0x16u);
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

  v11 = *(this + 1);
  if (!v11)
  {
    __break(0xC471u);
LABEL_18:
    JUMPOUT(0x19D9D2054);
  }

  return WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref((v11 + 24));
}

void WebKit::NetworkRTCProvider::didReceiveMessage(atomic_uint *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v172 = *MEMORY[0x1E69E9840];
  v10 = (this + 6);
  atomic_fetch_add(this + 6, 1u);
  v11 = *(a3 + 25);
  if (*(a3 + 25) <= 0x2E3u)
  {
    if (*(a3 + 25) <= 0x2E1u)
    {
      if (v11 == 736)
      {
        v49 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
        if (v50)
        {
          WebKit::NetworkRTCProvider::closeSocket(this, v49);
        }

        goto LABEL_240;
      }

      if (v11 == 737)
      {
        v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v13)
        {
          v4 = v12;
          IPC::Decoder::decode<WebKit::WebRTCNetwork::SocketAddress>(&v147, a3);
          if (v151 == 1)
          {
            IPC::Decoder::decode<WebKit::WebRTCNetwork::SocketAddress>(&v152, a3);
            if (v156 != 1)
            {
              v28 = 0;
              buf[0] = 0;
              v170 = 0;
              goto LABEL_224;
            }

            IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v143);
            if ((v144 & 1) == 0)
            {
              v14 = *a3;
              v96 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v97 = *(a3 + 3);
              if (!v97 || !v96 || ((*(*v97 + 16))(v97, v14), (v144 & 1) == 0))
              {
                v28 = 0;
                buf[0] = 0;
                v170 = 0;
LABEL_221:
                if (v156)
                {
                  v134 = v153[0];
                  if (v153[0])
                  {
                    v153[0] = 0;
                    LODWORD(v153[1]) = 0;
                    WTF::fastFree(v134, v14);
                  }
                }

LABEL_224:
                if (v151)
                {
                  v135 = v148[0];
                  if (v148[0])
                  {
                    v148[0] = 0;
                    LODWORD(v148[1]) = 0;
                    WTF::fastFree(v135, v14);
                  }
                }

                if (v28)
                {
                  WebKit::NetworkRTCProvider::createClientTCPSocket(this, *buf, &buf[8], (&v160 + 8), &v164, v11, v3, v5 & 1, v6 & 1, &v169);
                  if ((v170 & 1) == 0)
                  {
                    goto LABEL_240;
                  }

                  v136 = v169;
                  v169 = 0;
                  if (v136 && atomic_fetch_add_explicit(v136, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v136, v77);
                  }

                  v137 = v164;
                  v164 = 0;
                  if (v137 && atomic_fetch_add_explicit(v137, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v137, v77);
                  }

                  v138 = v161;
                  if (v161)
                  {
                    v161 = 0;
                    LODWORD(v162) = 0;
                    WTF::fastFree(v138, v77);
                  }

                  goto LABEL_237;
                }

                goto LABEL_100;
              }
            }

            v15 = *(a3 + 1);
            v16 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
            v14 = *a3;
            v17 = v16 - *a3;
            v18 = v15 >= v17;
            v19 = v15 - v17;
            if (v18 && v19 > 3)
            {
              *(a3 + 2) = v16 + 1;
              if (!v16)
              {
                goto LABEL_215;
              }

              v11 = *v16;
              v20 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
              if ((v14 & 1) == 0)
              {
LABEL_216:
                v28 = 0;
                buf[0] = 0;
                v170 = 0;
                goto LABEL_217;
              }

              v15 = *(a3 + 1);
              v21 = *(a3 + 2);
              v14 = *a3;
              if (v15 <= &v21[-*a3])
              {
                *a3 = 0;
                *(a3 + 1) = 0;
                v130 = *(a3 + 3);
                if (v130)
                {
                  if (v15)
                  {
                    (*(*v130 + 16))(v130);
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
                v22 = v21 + 1;
                *(a3 + 2) = v21 + 1;
                if (v21)
                {
                  v5 = *v21;
                  if (v5 < 2)
                  {
                    if (v15 <= &v22[-v14])
                    {
                      v139 = 0;
                      v140 = 0;
                      *a3 = 0;
                      *(a3 + 1) = 0;
                      v141 = *(a3 + 3);
                      if (v141)
                      {
                        (*(*v141 + 16))(v141);
                        v140 = *a3;
                        v139 = *(a3 + 1);
                      }
                    }

                    else
                    {
                      *(a3 + 2) = v21 + 2;
                      if (v21 != -1)
                      {
                        v6 = *v22;
                        if (v6 < 2)
                        {
                          v3 = v20;
                          IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a3, &v145);
                          if ((BYTE8(v145) & 1) == 0)
                          {
                            v14 = *a3;
                            v88 = *(a3 + 1);
                            *a3 = 0;
                            *(a3 + 1) = 0;
                            v89 = *(a3 + 3);
                            if (v89 && v88)
                            {
                              (*(*v89 + 16))(v89, v14);
                            }

                            v28 = 0;
                            buf[0] = 0;
                            goto LABEL_25;
                          }

                          if (v151 & 1) != 0 && (v156 & 1) != 0 && (v144)
                          {
                            *&v23 = 0;
                            *buf = v4;
                            *&buf[8] = v147;
                            *&buf[16] = v148[0];
                            v24 = v153[0];
                            *&v160 = v150;
                            *(&v160 + 1) = v152;
                            v25 = v148[1];
                            *v148 = v23;
                            *v159 = v25;
                            *&v159[8] = v149;
                            v153[0] = 0;
                            v161 = v24;
                            v26 = v153[1];
                            v153[1] = 0;
                            v162 = v26;
                            *v163 = v154;
                            v27 = v143;
                            v143 = 0;
                            v163[2] = v155;
                            v164 = v27;
                            v165 = v11;
                            v166 = v3;
                            v167 = v5;
                            v168 = v6;
                            v28 = 1;
                            v169 = v145;
LABEL_25:
                            v170 = v28;
LABEL_217:
                            if (v144)
                            {
                              v133 = v143;
                              v143 = 0;
                              if (v133)
                              {
                                if (atomic_fetch_add_explicit(v133, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v133, v14);
                                }
                              }
                            }

                            goto LABEL_221;
                          }

                          goto LABEL_113;
                        }

                        goto LABEL_215;
                      }

                      v139 = v15;
                      v140 = v14;
                    }

                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v142 = *(a3 + 3);
                    if (v142 && v139)
                    {
                      (*(*v142 + 16))(v142, v140, v139);
LABEL_257:
                      v14 = *a3;
                      v15 = *(a3 + 1);
                      goto LABEL_215;
                    }

                    goto LABEL_213;
                  }

LABEL_215:
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v132 = *(a3 + 3);
                  if (v132 && v15)
                  {
                    (*(*v132 + 16))(v132);
                  }

                  goto LABEL_216;
                }
              }
            }

            *a3 = 0;
            *(a3 + 1) = 0;
            v131 = *(a3 + 3);
            if (v131)
            {
              if (v15)
              {
                (*(*v131 + 16))(v131);
                goto LABEL_257;
              }

              goto LABEL_214;
            }

LABEL_213:
            v15 = 0;
LABEL_214:
            v14 = 0;
            goto LABEL_215;
          }
        }

LABEL_100:
        v74 = *a3;
        v75 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v76 = *(a3 + 3);
        if (v76 && v75)
        {
          (*(*v76 + 16))(v76, v74);
        }

        goto LABEL_240;
      }

      goto LABEL_99;
    }

    if (v11 == 738)
    {
      v57 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v58)
      {
        v59 = v57;
        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, &v152);
        if (v153[0] & 1) != 0 || (v93 = *a3, v94 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v95 = *(a3 + 3)) != 0) && v94 && ((*(*v95 + 16))(v95, v93), (v153[0]))
        {
          *buf = v59;
          *&buf[8] = v152;
          buf[16] = 1;
          WebKit::NetworkRTCProvider::createResolver(this, v59, &buf[8]);
          if ((buf[16] & 1) == 0)
          {
            goto LABEL_240;
          }

          v61 = *&buf[8];
          *&buf[8] = 0;
          if (!v61)
          {
            goto LABEL_240;
          }

          goto LABEL_182;
        }
      }

      goto LABEL_100;
    }

    if (v11 != 739)
    {
LABEL_99:
      v73 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v11 >= 0x107F)
        {
          v79 = 4223;
        }

        else
        {
          v79 = v11;
        }

        v80 = (&IPC::Detail::messageDescriptions)[3 * v79];
        v81 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v80;
        *&buf[12] = 2048;
        *&buf[14] = v81;
        _os_log_error_impl(&dword_19D52D000, v73, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
      }

      goto LABEL_100;
    }

    v34 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v35 & 1) == 0)
    {
      goto LABEL_100;
    }

    v11 = v34;
    IPC::Decoder::decode<WebKit::WebRTCNetwork::SocketAddress>(&v152, a3);
    if (v156 != 1)
    {
      goto LABEL_100;
    }

    v36 = *(a3 + 1);
    v37 = ((*(a3 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
    v38 = *a3;
    v39 = v37 - *a3;
    v18 = v36 >= v39;
    v40 = v36 - v39;
    if (v18 && v40 > 1)
    {
      *(a3 + 2) = v37 + 1;
      if (!v37)
      {
        goto LABEL_189;
      }

      LOWORD(v4) = *v37;
      v41 = ((v37 + 3) & 0xFFFFFFFFFFFFFFFELL);
      if (v36 >= v41 - v38 && v36 - (v41 - v38) > 1)
      {
        *(a3 + 2) = v41 + 1;
        if (!v41)
        {
          goto LABEL_189;
        }

        LOWORD(v5) = *v41;
        v42 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if ((v38 & 1) == 0)
        {
LABEL_190:
          v46 = 0;
          buf[0] = 0;
          LOBYTE(v163[1]) = 0;
          goto LABEL_191;
        }

        v36 = *(a3 + 1);
        v43 = *(a3 + 2);
        v38 = *a3;
        if (v36 <= &v43[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v121 = *(a3 + 3);
          if (v121)
          {
            if (v36)
            {
              (*(*v121 + 16))(v121);
              v36 = *(a3 + 1);
            }
          }

          else
          {
            v36 = 0;
          }
        }

        else
        {
          v44 = v43 + 1;
          *(a3 + 2) = v43 + 1;
          if (v43)
          {
            v6 = *v43;
            if (v6 < 2)
            {
              if (v36 <= &v44[-v38])
              {
                v126 = 0;
                v127 = 0;
                *a3 = 0;
                *(a3 + 1) = 0;
                v128 = *(a3 + 3);
                if (v128)
                {
                  (*(*v128 + 16))(v128);
                  v127 = *a3;
                  v126 = *(a3 + 1);
                }
              }

              else
              {
                *(a3 + 2) = v43 + 2;
                if (v43 != -1)
                {
                  v7 = *v44;
                  if (v7 < 2)
                  {
                    v3 = v42;
                    IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a3, &v147);
                    if ((v148[0] & 1) == 0)
                    {
                      v38 = *a3;
                      v84 = *(a3 + 1);
                      *a3 = 0;
                      *(a3 + 1) = 0;
                      v85 = *(a3 + 3);
                      if (v85 && v84)
                      {
                        (*(*v85 + 16))(v85, v38);
                      }

                      v46 = 0;
                      buf[0] = 0;
                      goto LABEL_61;
                    }

                    if (v156)
                    {
                      *buf = v11;
                      *&buf[8] = v152;
                      *&buf[16] = v153[0];
                      v45 = v153[1];
                      v153[0] = 0;
                      v153[1] = 0;
                      *v159 = v45;
                      *&v159[8] = v154;
                      *&v160 = v155;
                      WORD4(v160) = v4;
                      WORD5(v160) = v5;
                      v161 = v3;
                      LOBYTE(v162) = v6;
                      BYTE1(v162) = v7;
                      v46 = 1;
                      v163[0] = v147;
LABEL_61:
                      LOBYTE(v163[1]) = v46;
LABEL_191:
                      if (v156)
                      {
                        v124 = v153[0];
                        if (v153[0])
                        {
                          v153[0] = 0;
                          LODWORD(v153[1]) = 0;
                          WTF::fastFree(v124, v38);
                        }
                      }

                      if (v46)
                      {
                        WebKit::NetworkRTCProvider::createUDPSocket(this, *buf, &buf[8], v4, v5, v3, v6 & 1, v7 & 1, v163);
                        if ((v163[1] & 1) == 0)
                        {
                          goto LABEL_240;
                        }

                        v125 = v163[0];
                        v163[0] = 0;
                        if (v125 && atomic_fetch_add_explicit(v125, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v125, v77);
                        }

LABEL_237:
                        v78 = *&buf[16];
                        if (!*&buf[16])
                        {
                          goto LABEL_240;
                        }

                        *&buf[16] = 0;
                        *v159 = 0;
                        goto LABEL_239;
                      }

                      goto LABEL_100;
                    }

LABEL_113:
                    __break(1u);
LABEL_114:
                    v51 = *a3;
                    v82 = *(a3 + 1);
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v83 = *(a3 + 3);
                    if (v83 && v82)
                    {
                      (*(*v83 + 16))(v83, v51);
                    }

                    v56 = 0;
                    buf[0] = 0;
                    goto LABEL_79;
                  }

                  goto LABEL_189;
                }

                v126 = v36;
                v127 = v38;
              }

              *a3 = 0;
              *(a3 + 1) = 0;
              v129 = *(a3 + 3);
              if (v129 && v126)
              {
                (*(*v129 + 16))(v129, v127, v126);
LABEL_262:
                v38 = *a3;
                v36 = *(a3 + 1);
                goto LABEL_189;
              }

              goto LABEL_187;
            }

LABEL_189:
            *a3 = 0;
            *(a3 + 1) = 0;
            v123 = *(a3 + 3);
            if (v123 && v36)
            {
              (*(*v123 + 16))(v123);
            }

            goto LABEL_190;
          }
        }
      }
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v122 = *(a3 + 3);
    if (v122)
    {
      if (v36)
      {
        (*(*v122 + 16))(v122);
        goto LABEL_262;
      }

      goto LABEL_188;
    }

LABEL_187:
    v36 = 0;
LABEL_188:
    v38 = 0;
    goto LABEL_189;
  }

  if (*(a3 + 25) > 0x2E5u)
  {
    if (v11 != 742)
    {
      if (v11 == 743)
      {
        v47 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v48)
        {
          WebKit::NetworkRTCProvider::stopResolver(this, v47);
          goto LABEL_240;
        }

        goto LABEL_100;
      }

      goto LABEL_99;
    }

    v62 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v63 & 1) == 0)
    {
      goto LABEL_100;
    }

    v64 = *(a3 + 1);
    v65 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v66 = *a3;
    v67 = v65 - *a3;
    v18 = v64 >= v67;
    v68 = v64 - v67;
    if (v18 && v68 > 3)
    {
      *(a3 + 2) = v65 + 1;
      if (!v65)
      {
LABEL_147:
        *a3 = 0;
        *(a3 + 1) = 0;
        v105 = *(a3 + 3);
        if (v105 && v64)
        {
          (*(*v105 + 16))(v105);
        }

        goto LABEL_100;
      }

      v70 = *v65;
      v71 = ((v65 + 7) & 0xFFFFFFFFFFFFFFFCLL);
      if (v64 >= v71 - v66 && v64 - (v71 - v66) > 3)
      {
        *(a3 + 2) = v71 + 1;
        if (v71)
        {
          WebKit::NetworkRTCProvider::setSocketOption(this, v62, v70, *v71);
          goto LABEL_240;
        }

        goto LABEL_147;
      }
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v104 = *(a3 + 3);
    if (v104)
    {
      if (v64)
      {
        (*(*v104 + 16))(v104);
        v64 = *(a3 + 1);
      }
    }

    else
    {
      v64 = 0;
    }

    goto LABEL_147;
  }

  if (v11 != 740)
  {
    if (v11 != 741)
    {
      goto LABEL_99;
    }

    v29 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if (v30 & 1) != 0 && ((v3 = v29, IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, &v145), (v146) || (v98 = *a3, v99 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v100 = *(a3 + 3)) != 0) && v99 && ((*(*v100 + 16))(v100, v98), (v146)))
    {
      IPC::Decoder::decode<WebKit::WebRTCNetwork::SocketAddress>(&v147, a3);
      if (v151 == 1)
      {
        IPC::ArgumentCoder<WebKit::RTCPacketOptions,void>::decode(a3, &v152);
        if (v157 & 1) != 0 || (v32 = *a3, v86 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v87 = *(a3 + 3)) != 0) && v86 && ((*(*v87 + 16))(v87, v32), (v157))
        {
          if ((v146 & 1) == 0 || (v151 & 1) == 0)
          {
            goto LABEL_113;
          }

          *buf = v3;
          *v159 = v147;
          *&v159[8] = v148[0];
          *&buf[8] = v145;
          v31 = v148[1];
          v148[0] = 0;
          v148[1] = 0;
          *&v159[16] = v31;
          v160 = v149;
          v161 = v150;
          webrtc::AsyncSocketPacketOptions::AsyncSocketPacketOptions();
          v171 = 1;
          if (v157)
          {
            webrtc::AsyncSocketPacketOptions::~AsyncSocketPacketOptions(&v152);
          }
        }

        else
        {
          buf[0] = 0;
          v171 = 0;
        }

        if (v151)
        {
          v33 = v148[0];
          if (v148[0])
          {
            v148[0] = 0;
            LODWORD(v148[1]) = 0;
            WTF::fastFree(v33, v32);
          }
        }
      }

      else
      {
        buf[0] = 0;
        v171 = 0;
      }

      if (v171)
      {
LABEL_106:
        WebKit::NetworkRTCProvider::sendToSocket(this, *buf, *&buf[8], *&buf[16], v159, &v162);
        if ((v171 & 1) == 0)
        {
          goto LABEL_240;
        }

        webrtc::AsyncSocketPacketOptions::~AsyncSocketPacketOptions(&v162);
        v78 = *&v159[8];
        if (!*&v159[8])
        {
          goto LABEL_240;
        }

        *&v159[8] = 0;
        *&v159[16] = 0;
LABEL_239:
        WTF::fastFree(v78, v77);
        goto LABEL_240;
      }
    }

    else
    {
      buf[0] = 0;
      v171 = 0;
    }

    v101 = *a3;
    v102 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v103 = *(a3 + 3);
    if (!v103)
    {
      goto LABEL_240;
    }

    if (!v102)
    {
      goto LABEL_240;
    }

    (*(*v103 + 16))(v103, v101);
    if ((v171 & 1) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_106;
  }

  v3 = a2;
  IPC::ArgumentCoder<WTF::URL,void>::decode(a3, &v152);
  if ((v155 & 1) == 0)
  {
    v90 = *a3;
    v91 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    v92 = *(a3 + 3);
    if (!v92)
    {
      goto LABEL_100;
    }

    if (!v91)
    {
      goto LABEL_100;
    }

    (*(*v92 + 16))(v92, v90);
    if ((v155 & 1) == 0)
    {
      goto LABEL_100;
    }
  }

  v11 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
  if ((v51 & 1) == 0)
  {
LABEL_163:
    v56 = 0;
    buf[0] = 0;
    LOBYTE(v161) = 0;
    goto LABEL_164;
  }

  v52 = *(a3 + 1);
  v53 = *(a3 + 2);
  v51 = *a3;
  if (v52 <= &v53[-*a3])
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    v106 = *(a3 + 3);
    if (v106)
    {
      if (v52)
      {
        (*(*v106 + 16))(v106);
        v52 = *(a3 + 1);
      }
    }

    else
    {
      v52 = 0;
    }

LABEL_154:
    *a3 = 0;
    *(a3 + 1) = 0;
    v107 = *(a3 + 3);
    if (v107)
    {
      if (v52)
      {
        (*(*v107 + 16))(v107);
LABEL_267:
        v51 = *a3;
        v52 = *(a3 + 1);
        goto LABEL_162;
      }

LABEL_161:
      v51 = 0;
      goto LABEL_162;
    }

LABEL_160:
    v52 = 0;
    goto LABEL_161;
  }

  v54 = v53 + 1;
  *(a3 + 2) = v53 + 1;
  if (!v53)
  {
    goto LABEL_154;
  }

  LODWORD(v4) = *v53;
  if (v4 >= 2)
  {
LABEL_162:
    *a3 = 0;
    *(a3 + 1) = 0;
    v112 = *(a3 + 3);
    if (v112 && v52)
    {
      (*(*v112 + 16))(v112, v51);
    }

    goto LABEL_163;
  }

  if (v52 <= &v54[-v51])
  {
    v108 = 0;
    v109 = 0;
    *a3 = 0;
    *(a3 + 1) = 0;
    v110 = *(a3 + 3);
    if (v110)
    {
      (*(*v110 + 16))(v110);
      v109 = *a3;
      v108 = *(a3 + 1);
    }

LABEL_159:
    *a3 = 0;
    *(a3 + 1) = 0;
    v111 = *(a3 + 3);
    if (v111 && v108)
    {
      (*(*v111 + 16))(v111, v109, v108);
      goto LABEL_267;
    }

    goto LABEL_160;
  }

  *(a3 + 2) = v53 + 2;
  if (v53 == -1)
  {
    v108 = v52;
    v109 = v51;
    goto LABEL_159;
  }

  v5 = *v54;
  if (v5 >= 2)
  {
    goto LABEL_162;
  }

  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a3, &v147);
  if ((v148[0] & 1) == 0)
  {
    goto LABEL_114;
  }

  if ((v155 & 1) == 0)
  {
    goto LABEL_113;
  }

  v55 = v152;
  v152 = 0;
  *&buf[8] = *v153;
  *v159 = v154;
  LODWORD(v153[0]) &= ~1u;
  *buf = v55;
  *&v159[16] = v11;
  LOBYTE(v160) = v4;
  BYTE1(v160) = v5;
  *(&v160 + 1) = v147;
  v56 = 1;
LABEL_79:
  LOBYTE(v161) = v56;
LABEL_164:
  if (v155)
  {
    v113 = v152;
    v152 = 0;
    if (v113)
    {
      if (atomic_fetch_add_explicit(v113, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v113, v51);
      }
    }
  }

  if ((v56 & 1) == 0)
  {
    goto LABEL_100;
  }

  v114 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
  if ((v60 & 1) == 0)
  {
    goto LABEL_276;
  }

  v115 = v114;
  while (1)
  {
    v116 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v117 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v117, v116 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v117 == v116)
    {
      goto LABEL_175;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_175:
  v118 = WTF::fastMalloc(0x18);
  *v118 = &unk_1F10F11F0;
  *(v118 + 1) = v115;
  *(v118 + 2) = v3;
  v152 = v118;
  WebKit::NetworkRTCProvider::getInterfaceName(this, buf, v11, (v4 & 1), v5 & 1, &v160 + 1, &v152);
  v119 = v152;
  v152 = 0;
  if (v119)
  {
    (*(*v119 + 8))(v119);
  }

  if (v161)
  {
LABEL_276:
    v120 = *(&v160 + 1);
    *(&v160 + 1) = 0;
    if (v120 && atomic_fetch_add_explicit(v120, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v120, v60);
    }

    v61 = *buf;
    *buf = 0;
    if (v61)
    {
LABEL_182:
      if (atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v61, v60);
      }
    }
  }

LABEL_240:
  if (this)
  {
    WTF::ThreadSafeRefCounted<WebKit::NetworkRTCProvider,(WTF::DestructionThread)2>::deref(v10);
  }
}

void WebKit::NetworkResourceLoader::didReceiveMessage(WebKit::NetworkResourceLoader *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  ++*(this + 5);
  v4 = *(a3 + 25);
  if (v4 == 744)
  {
    WebKit::NetworkResourceLoader::continueDidReceiveResponse(this);
  }

  else
  {
    v6 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v4 >= 0x107F)
      {
        v7 = 4223;
      }

      else
      {
        v7 = v4;
      }

      v8 = (&IPC::Detail::messageDescriptions)[3 * v7];
      v9 = *(a3 + 7);
      v10 = 136315394;
      v11 = v8;
      v12 = 2048;
      v13 = v9;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", &v10, 0x16u);
    }

    IPC::Decoder::markInvalid(a3);
  }

  if (*(this + 5) == 1)
  {
    (*(*this + 24))(this);
  }

  else
  {
    --*(this + 5);
  }
}

WTF::StringImpl *WebKit::NetworkSocketChannel::didReceiveMessage(WebKit::NetworkSocketChannel *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  ++*(this + 6);
  v5 = *(a3 + 25);
  switch(v5)
  {
    case 0x2E9u:
      a2 = buf;
      IPC::ArgumentCoder<std::tuple<unsigned int,WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
      if (buf[16])
      {
LABEL_17:
        result = WebKit::NetworkSocketChannel::close(this, *buf, (a2 + 1));
        if (buf[16])
        {
          result = *&buf[8];
          *&buf[8] = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v8);
            }
          }
        }

        goto LABEL_33;
      }

LABEL_41:
      v8 = *v3;
      v9 = *(v3 + 1);
      *v3 = 0;
      *(v3 + 1) = 0;
      result = *(v3 + 3);
      if (!result)
      {
        goto LABEL_33;
      }

      if (!v9)
      {
        goto LABEL_33;
      }

      result = (*(*result + 16))(result, v8);
      if ((buf[16] & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_17;
    case 0x2EAu:
      result = IPC::Decoder::decode<std::tuple<std::span<unsigned char const,18446744073709551615ul>>>(a3, buf);
      if (buf[16] != 1)
      {
        goto LABEL_33;
      }

      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3);
      if ((v8 & 1) == 0)
      {
        goto LABEL_33;
      }

      v3 = result;
      while (1)
      {
        v12 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v13 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v13 == v12)
        {
          goto LABEL_26;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_26:
      v15 = WTF::fastMalloc(0x18);
      *v15 = &unk_1F10F1240;
      *(v15 + 1) = v3;
      *(v15 + 2) = a2;
      v20 = v15;
      if (buf[16])
      {
        WebKit::NetworkSocketChannel::sendData(this, *buf, *&buf[8], &v20);
        goto LABEL_31;
      }

      goto LABEL_40;
    case 0x2EBu:
      result = IPC::Decoder::decode<std::tuple<std::span<unsigned char const,18446744073709551615ul>>>(a3, buf);
      if (buf[16] != 1)
      {
        goto LABEL_33;
      }

      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v3);
      if ((v8 & 1) == 0)
      {
        goto LABEL_33;
      }

      v3 = result;
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
          goto LABEL_29;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_29:
      v16 = WTF::fastMalloc(0x18);
      *v16 = &unk_1F10F1218;
      *(v16 + 1) = v3;
      *(v16 + 2) = a2;
      v20 = v16;
      if (buf[16])
      {
        WebKit::NetworkSocketChannel::sendString(this, *buf, *&buf[8], &v20);
LABEL_31:
        result = v20;
        v20 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        goto LABEL_33;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
  }

  v14 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    if (v5 >= 0x107F)
    {
      v17 = 4223;
    }

    else
    {
      v17 = v5;
    }

    v18 = (&IPC::Detail::messageDescriptions)[3 * v17];
    v19 = *(v3 + 7);
    *buf = 136315394;
    *&buf[4] = v18;
    *&buf[12] = 2048;
    *&buf[14] = v19;
    _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
  }

  v8 = *v3;
  v9 = *(v3 + 1);
  *v3 = 0;
  *(v3 + 1) = 0;
  result = *(v3 + 3);
  if (result && v9)
  {
    result = (*(*result + 16))(result, v8);
  }

LABEL_33:
  if (*(this + 6) == 1)
  {
    return (*(*this + 8))(this, v8, v9);
  }

  --*(this + 6);
  return result;
}

atomic_ullong *WebKit::NetworkStorageManager::didReceiveMessage(WebKit::NetworkStorageManager *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  WebKit::NetworkStorageManager::sharedPreferencesForWebProcess(this, a2, v28);
  v6 = (this + 8);
  while (1)
  {
    v7 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v14 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v14, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v14 == v7)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_4:
  v8 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0x2EC:
      if (v31 != 1 || (v30 & 1) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_AbortOpenAndUpgradeNeeded";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessage<Messages::NetworkStorageManager::AbortOpenAndUpgradeNeeded,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::IDBResourceIdentifier> const&)>(a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x2ED:
      if (v31 != 1 || (v30 & 1) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_AbortTransaction";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::Decoder::decode<std::tuple<WebCore::IDBResourceIdentifier>>(buf, a3);
      if (BYTE2(v35) == 1)
      {
        WebKit::NetworkStorageManager::abortTransaction(this, a2, buf);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x2F8:
      IPC::handleMessage<Messages::NetworkStorageManager::CancelConnectToStorageArea,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::StorageType,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin const&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x2F9:
      IPC::handleMessageAsync<Messages::NetworkStorageManager::Clear,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaImplIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x2FA:
      if (v31 != 1 || (v30 & 1) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_ClearObjectStore";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessage<Messages::NetworkStorageManager::ClearObjectStore,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)>(a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x2FB:
      if (v31 != 1 || (v29 & 0x10000000) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_CloseHandle";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      v12 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v13)
      {
        WebKit::NetworkStorageManager::closeHandle(this, v12);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x2FC:
      if (v31 != 1 || (v29 & 0x10000000) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_CloseSyncAccessHandle";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessageAsync<Messages::NetworkStorageManager::CloseSyncAccessHandle,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x2FD:
      if (v31 != 1 || (~v29 & 0x30000000) != 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_CloseWritable";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessageAsync<Messages::NetworkStorageManager::CloseWritable,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FileSystemWriteCloseReason,WTF::CompletionHandler<void ()(std::optional<WebKit::FileSystemStorageError>)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x2FE:
      if (v31 != 1 || (v30 & 1) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_CommitTransaction";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessage<Messages::NetworkStorageManager::CommitTransaction,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBResourceIdentifier const&,unsigned long long)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x2FF:
      IPC::handleMessageAsync<Messages::NetworkStorageManager::ConnectToStorageArea,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x301:
      if (v31 != 1 || (v30 & 1) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_CreateObjectStore";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessage<Messages::NetworkStorageManager::CreateObjectStore,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBRequestData const&,WebCore::IDBObjectStoreInfo const&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x302:
      if (v31 != 1 || (v29 & 0x10000000) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_CreateSyncAccessHandle";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessageAsync<Messages::NetworkStorageManager::CreateSyncAccessHandle,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::FileSystemSyncAccessHandleInfo,WebKit::FileSystemStorageError>)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x303:
      if (v31 != 1 || (~v29 & 0x30000000) != 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_CreateWritable";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessageAsync<Messages::NetworkStorageManager::CreateWritable,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageError>)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x304:
      if (v31 != 1 || (v30 & 1) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_DatabaseConnectionClosed";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      v21 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v22)
      {
        WebKit::NetworkStorageManager::databaseConnectionClosed(this, v21);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x305:
      if (v31 != 1 || (v30 & 1) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_DatabaseConnectionPendingClose";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      v19 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v20)
      {
        WebKit::NetworkStorageManager::databaseConnectionPendingClose(this, v19);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x306:
      if (v31 != 1 || (v30 & 1) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_DeleteDatabase";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessage<Messages::NetworkStorageManager::DeleteDatabase,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBOpenRequestData const&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x308:
      if (v31 != 1 || (v30 & 1) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_DeleteObjectStore";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessage<Messages::NetworkStorageManager::DeleteObjectStore,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBRequestData const&,WTF::String const&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x30A:
      if (v31 != 1 || (v30 & 1) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_DidFinishHandlingVersionChangeTransaction";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessage<Messages::NetworkStorageManager::DidFinishHandlingVersionChangeTransaction,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBResourceIdentifier const&)>(a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x30B:
      if (v31 != 1 || (v30 & 1) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_DidFireVersionChangeEvent";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessage<Messages::NetworkStorageManager::DidFireVersionChangeEvent,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBResourceIdentifier const&,WebCore::IndexedDB::ConnectionClosedOnBehalfOfServer)>(a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x30C:
      if (v31 != 1 || (v30 & 1) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_DidGenerateIndexKeyForRecord";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessage<Messages::NetworkStorageManager::DidGenerateIndexKeyForRecord,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::IDBResourceIdentifier const&,WebCore::IDBResourceIdentifier const&,WebCore::IDBIndexInfo const&,WebCore::IDBKeyData const&,WebCore::IndexKey const&,std::optional<long long>)>(a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x30D:
      v17 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v18)
      {
        WebKit::NetworkStorageManager::disconnectFromStorageArea(this, a2, v17);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x30E:
      if (v31 != 1 || (v30 & 1) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_EstablishTransaction";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessage<Messages::NetworkStorageManager::EstablishTransaction,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBTransactionInfo const&)>(a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x30F:
      IPC::handleMessageAsync<Messages::NetworkStorageManager::Estimate,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(std::optional<WebCore::StorageEstimate>)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x310:
      if (v31 != 1 || (~v29 & 0x30000000) != 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_ExecuteCommandForWritable";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessageAsync<Messages::NetworkStorageManager::ExecuteCommandForWritable,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FileSystemWriteCommandType,std::optional<unsigned long long>,std::optional<unsigned long long>,std::span<unsigned char const,18446744073709551615ul>,BOOL,WTF::CompletionHandler<void ()(std::optional<WebKit::FileSystemStorageError>)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x311:
      if (v31 != 1 || (v29 & 0x10000000) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_FileSystemGetDirectory";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessageAsync<Messages::NetworkStorageManager::FileSystemGetDirectory,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::ClientOrigin &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::ClientOrigin &&::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WebCore::ClientOrigin &&::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::FileSystemStorageError>)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x315:
      if (v31 != 1 || (v29 & 0x10000000) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_GetDirectoryHandle";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessageAsync<Messages::NetworkStorageManager::GetDirectoryHandle,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,BOOL,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageError>)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x316:
      if (v31 != 1 || (v29 & 0x10000000) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_GetFile";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessageAsync<Messages::NetworkStorageManager::GetFile,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::String,WebKit::FileSystemStorageError>)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x317:
      if (v31 != 1 || (v29 & 0x10000000) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_GetFileHandle";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessageAsync<Messages::NetworkStorageManager::GetFileHandle,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,BOOL,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageError>)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x318:
      if (v31 != 1 || (v29 & 0x10000000) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_GetHandle";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessageAsync<Messages::NetworkStorageManager::GetHandle,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<std::experimental::fundamentals_v3::expected::pair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL>>,WebKit::FileSystemStorageError>)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x319:
      if (v31 != 1 || (v29 & 0x10000000) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_GetHandleNames";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessageAsync<Messages::NetworkStorageManager::GetHandleNames,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x31B:
      if (v31 != 1 || (v29 & 0x10000000) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_IsSameEntry";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessageAsync<Messages::NetworkStorageManager::IsSameEntry,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x31E:
      if (v31 != 1 || (v29 & 0x10000000) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_Move";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessageAsync<Messages::NetworkStorageManager::Move,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WebKit::FileSystemStorageError>)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x320:
      if (v31 != 1 || (v30 & 1) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_OpenDBRequestCancelled";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessage<Messages::NetworkStorageManager::OpenDBRequestCancelled,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::IDBOpenRequestData const&)>(a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x321:
      if (v31 != 1 || (v30 & 1) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_OpenDatabase";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessage<Messages::NetworkStorageManager::OpenDatabase,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBOpenRequestData const&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x322:
      IPC::handleMessageAsync<Messages::NetworkStorageManager::Persist,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x323:
      IPC::handleMessageAsync<Messages::NetworkStorageManager::Persisted,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x325:
      if (v31 != 1 || (v29 & 0x10000000) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_RemoveEntry";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessageAsync<Messages::NetworkStorageManager::RemoveEntry,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(std::optional<WebKit::FileSystemStorageError>)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x326:
      IPC::handleMessageAsync<Messages::NetworkStorageManager::RemoveItem,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaImplIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::String &,WTF::CompletionHandler<void ()(BOOL,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x328:
      if (v31 != 1 || (v30 & 1) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_RenameObjectStore";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessage<Messages::NetworkStorageManager::RenameObjectStore,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x329:
      if (v31 != 1 || (v29 & 0x10000000) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_RequestNewCapacityForSyncAccessHandle";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessageAsync<Messages::NetworkStorageManager::RequestNewCapacityForSyncAccessHandle,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x32B:
      if (v31 != 1 || (v29 & 0x10000000) == 0)
      {
        v9 = qword_1ED6416C8;
        if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 136315138;
        v33 = "NetworkStorageManager_Resolve";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

      IPC::handleMessageAsync<Messages::NetworkStorageManager::Resolve,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    case 0x32C:
      IPC::handleMessageAsync<Messages::NetworkStorageManager::SetItem,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaImplIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::String &,WTF::String &,WTF::CompletionHandler<void ()(BOOL,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)> &&)>(a2, a3, this);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
    default:
      v27 = *(a3 + 25);
      if (v27 <= 0x323)
      {
        switch(*(a3 + 25))
        {
          case 0x2EE:
            IPC::handleMessageAsync<Messages::NetworkStorageManager::CacheStorageAllCaches,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ClientOrigin const&,unsigned long long,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error> &&)> &&)>(a2, a3, this);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
          case 0x2EF:
            IPC::handleMessageAsync<Messages::NetworkStorageManager::CacheStorageClearMemoryRepresentation,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)>(a2, a3, this);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
          case 0x2F0:
            IPC::handleMessage<Messages::NetworkStorageManager::CacheStorageDereference,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>)>(a2, a3, this);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
          case 0x2F1:
            IPC::handleMessageAsync<Messages::NetworkStorageManager::CacheStorageOpenCache,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ClientOrigin const&,WTF::String const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error> const&)> &&)>(a2, a3, this);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
          case 0x2F2:
            IPC::handleMessageAsync<Messages::NetworkStorageManager::CacheStoragePutRecords,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> &&)> &&)>(a2, a3, this);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
          case 0x2F3:
            IPC::handleMessage<Messages::NetworkStorageManager::CacheStorageReference,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>)>(a2, a3, this);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
          case 0x2F4:
            IPC::handleMessageAsync<Messages::NetworkStorageManager::CacheStorageRemoveCache,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::DOMCacheEngine::Error> const&)> &&)>(a2, a3, this);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
          case 0x2F5:
            IPC::handleMessageAsync<Messages::NetworkStorageManager::CacheStorageRemoveRecords,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceRequest &&,WebCore::CacheQueryOptions &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> &&)> &&)>(a2, a3, this);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
          case 0x2F6:
            IPC::handleMessageAsync<Messages::NetworkStorageManager::CacheStorageRepresentation,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::CompletionHandler<void ()(WTF::String const&)> &&)>(a2, a3, this);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
          case 0x2F7:
            IPC::handleMessageAsync<Messages::NetworkStorageManager::CacheStorageRetrieveRecords,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::RetrieveRecordsOptions &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector::Error> &&)> &&)>(a2, a3, this);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
          case 0x300:
            if (v31 == 1 && (v30 & 1) != 0)
            {
              IPC::handleMessage<Messages::NetworkStorageManager::CreateIndex,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBRequestData const&,WebCore::IDBIndexInfo const&)>(a2, a3, this);
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
            }

            v9 = qword_1ED6416C8;
            if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_11;
            }

            *buf = 136315138;
            v33 = "NetworkStorageManager_CreateIndex";
            v11 = "Message %s received by a disabled message endpoint";
            goto LABEL_95;
          case 0x307:
            if (v31 == 1 && (v30 & 1) != 0)
            {
              IPC::handleMessage<Messages::NetworkStorageManager::DeleteIndex,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)>(a2, a3, this);
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
            }

            v9 = qword_1ED6416C8;
            if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_11;
            }

            *buf = 136315138;
            v33 = "NetworkStorageManager_DeleteIndex";
            v11 = "Message %s received by a disabled message endpoint";
            goto LABEL_95;
          case 0x309:
            if (v31 == 1 && (v30 & 1) != 0)
            {
              IPC::handleMessage<Messages::NetworkStorageManager::DeleteRecord,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::IDBRequestData const&,WebCore::IDBKeyRangeData const&)>(a3, this);
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
            }

            v9 = qword_1ED6416C8;
            if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_11;
            }

            *buf = 136315138;
            v33 = "NetworkStorageManager_DeleteRecord";
            v11 = "Message %s received by a disabled message endpoint";
            goto LABEL_95;
          case 0x312:
            if (v31 == 1 && (v30 & 1) != 0)
            {
              IPC::handleMessage<Messages::NetworkStorageManager::GetAllDatabaseNamesAndVersions,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBResourceIdentifier const&,WebCore::ClientOrigin const&)>(a2, a3, this);
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
            }

            v9 = qword_1ED6416C8;
            if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_11;
            }

            *buf = 136315138;
            v33 = "NetworkStorageManager_GetAllDatabaseNamesAndVersions";
            v11 = "Message %s received by a disabled message endpoint";
            goto LABEL_95;
          case 0x313:
            if (v31 == 1 && (v30 & 1) != 0)
            {
              IPC::handleMessage<Messages::NetworkStorageManager::GetAllRecords,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::IDBRequestData const&,WebCore::IDBGetAllRecordsData const&)>(a3, this);
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
            }

            v9 = qword_1ED6416C8;
            if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_11;
            }

            *buf = 136315138;
            v33 = "NetworkStorageManager_GetAllRecords";
            v11 = "Message %s received by a disabled message endpoint";
            goto LABEL_95;
          case 0x314:
            if (v31 == 1 && (v30 & 1) != 0)
            {
              IPC::handleMessage<Messages::NetworkStorageManager::GetCount,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::IDBRequestData const&,WebCore::IDBKeyRangeData const&)>(a3, this);
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
            }

            v9 = qword_1ED6416C8;
            if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_11;
            }

            *buf = 136315138;
            v33 = "NetworkStorageManager_GetCount";
            v11 = "Message %s received by a disabled message endpoint";
            goto LABEL_95;
          case 0x31A:
            if (v31 == 1 && (v30 & 1) != 0)
            {
              IPC::handleMessage<Messages::NetworkStorageManager::GetRecord,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::IDBRequestData const&,WebCore::IDBGetRecordData const&)>(a3, this);
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
            }

            v9 = qword_1ED6416C8;
            if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_11;
            }

            *buf = 136315138;
            v33 = "NetworkStorageManager_GetRecord";
            v11 = "Message %s received by a disabled message endpoint";
            goto LABEL_95;
          case 0x31C:
            if (v31 == 1 && (v30 & 1) != 0)
            {
              IPC::handleMessage<Messages::NetworkStorageManager::IterateCursor,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::IDBRequestData const&,WebCore::IDBIterateCursorData const&)>(a3, this);
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
            }

            v9 = qword_1ED6416C8;
            if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_11;
            }

            *buf = 136315138;
            v33 = "NetworkStorageManager_IterateCursor";
            v11 = "Message %s received by a disabled message endpoint";
            goto LABEL_95;
          case 0x31D:
            IPC::handleMessage<Messages::NetworkStorageManager::LockCacheStorage,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::ClientOrigin const&)>(a2, a3, this);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
          case 0x31F:
            if (v31 == 1 && (v30 & 1) != 0)
            {
              IPC::handleMessage<Messages::NetworkStorageManager::OpenCursor,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::IDBRequestData const&,WebCore::IDBCursorInfo const&)>(a3, this);
              return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
            }

            v9 = qword_1ED6416C8;
            if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_11;
            }

            *buf = 136315138;
            v33 = "NetworkStorageManager_OpenCursor";
            v11 = "Message %s received by a disabled message endpoint";
            break;
          default:
            goto LABEL_254;
        }

        goto LABEL_95;
      }

      if (*(a3 + 25) > 0x329u)
      {
        if (v8 == 810)
        {
          IPC::handleMessage<Messages::NetworkStorageManager::ResetQuotaUpdatedBasedOnUsageForTesting,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ClientOrigin &&)>(a3, this);
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
        }

        if (v8 == 813)
        {
          IPC::handleMessage<Messages::NetworkStorageManager::UnlockCacheStorage,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::ClientOrigin const&)>(a2, a3, this);
          return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
        }

        goto LABEL_254;
      }

      if (v8 != 804)
      {
        if (v8 == 807)
        {
          if (v31 == 1 && (v30 & 1) != 0)
          {
            IPC::handleMessage<Messages::NetworkStorageManager::RenameIndex,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)>(a2, a3, this);
            return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
          }

          v9 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v33 = "NetworkStorageManager_RenameIndex";
            v11 = "Message %s received by a disabled message endpoint";
LABEL_95:
            v15 = v9;
            v16 = 12;
LABEL_96:
            _os_log_error_impl(&dword_19D52D000, v15, OS_LOG_TYPE_ERROR, v11, buf, v16);
            goto LABEL_11;
          }

          goto LABEL_11;
        }

LABEL_254:
        v23 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          if (v27 >= 0x107F)
          {
            v24 = 4223;
          }

          else
          {
            v24 = v27;
          }

          v25 = (&IPC::Detail::messageDescriptions)[3 * v24];
          v26 = *(a3 + 7);
          *buf = 136315394;
          v33 = v25;
          v34 = 2048;
          v35 = v26;
          v11 = "Unhandled message %s to %llu";
          v15 = v23;
          v16 = 22;
          goto LABEL_96;
        }

        goto LABEL_11;
      }

      if (v31 == 1 && (v30 & 1) != 0)
      {
        IPC::handleMessage<Messages::NetworkStorageManager::PutOrAdd,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBRequestData const&,WebCore::IDBKeyData const&,WebCore::IDBValue const&,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IndexKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&,WebCore::IndexedDB::ObjectStoreOverwriteMode)>(a2, a3, this);
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
      }

      v9 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v33 = "NetworkStorageManager_PutOrAdd";
        v11 = "Message %s received by a disabled message endpoint";
        goto LABEL_95;
      }

LABEL_11:
      IPC::Decoder::markInvalid(a3);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v6);
  }
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkStorageManager::Persisted,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WebKit::NetworkStorageManager *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::tuple<WebCore::ClientOrigin>>(&v15, a2);
  if (v21 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F1268;
      *(v11 + 1) = v8;
      *(v11 + 2) = a1;
      v14 = v11;
      if ((v21 & 1) == 0)
      {
        __break(1u);
      }

      WebKit::NetworkStorageManager::persisted(a3, &v15, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v21 == 1)
  {
    if (!v20)
    {
      v12 = v19;
      v19 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v7);
      }

      result = v18;
      v18 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }

    v20 = -1;
    if (!v17)
    {
      v13 = v16;
      v16 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v7);
      }

      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v7);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkStorageManager::Persist,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::tuple<WebCore::ClientOrigin>>(&v15, a2);
  if (v21 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F1290;
      *(v11 + 1) = v8;
      *(v11 + 2) = a1;
      v14 = v11;
      if ((v21 & 1) == 0)
      {
        __break(1u);
      }

      WebKit::NetworkStorageManager::persist(a3, &v15, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v21 == 1)
  {
    if (!v20)
    {
      v12 = v19;
      v19 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v7);
      }

      result = v18;
      v18 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }

    v20 = -1;
    if (!v17)
    {
      v13 = v16;
      v16 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v7);
      }

      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v7);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkStorageManager::Estimate,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(std::optional<WebCore::StorageEstimate>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::tuple<WebCore::ClientOrigin>>(&v15, a2);
  if (v21 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F12B8;
      *(v11 + 1) = v8;
      *(v11 + 2) = a1;
      v14 = v11;
      if ((v21 & 1) == 0)
      {
        __break(1u);
      }

      WebKit::NetworkStorageManager::estimate(a3, &v15, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v21 == 1)
  {
    if (!v20)
    {
      v12 = v19;
      v19 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v7);
      }

      result = v18;
      v18 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }

    v20 = -1;
    if (!v17)
    {
      v13 = v16;
      v16 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v7);
      }

      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v7);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkStorageManager::FileSystemGetDirectory,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::ClientOrigin &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<WebCore::ClientOrigin &&::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WebCore::ClientOrigin &&::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebKit::FileSystemStorageError>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::tuple<WebCore::ClientOrigin>>(&v15, a2);
  if (v21 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F12E0;
      *(v11 + 1) = v8;
      *(v11 + 2) = a1;
      v14 = v11;
      if ((v21 & 1) == 0)
      {
        __break(1u);
      }

      WebKit::NetworkStorageManager::fileSystemGetDirectory(a3, a1, &v15, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v21 == 1)
  {
    if (!v20)
    {
      v12 = v19;
      v19 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v7);
      }

      result = v18;
      v18 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }

    v20 = -1;
    if (!v17)
    {
      v13 = v16;
      v16 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v7);
      }

      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v7);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkStorageManager::IsSameEntry,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(v13, a2);
  if (v14 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F1308;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkStorageManager::isSameEntry(a3, v13[0], v13[1], &v12);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkStorageManager::GetFileHandle,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,BOOL,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageError>)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String,BOOL>>(&v14, a2);
  if (v17 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F1330;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkStorageManager::getFileHandle(a3, a1, v14, &v15, v16, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v17)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkStorageManager::GetDirectoryHandle,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,BOOL,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageError>)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String,BOOL>>(&v14, a2);
  if (v17 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F1358;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkStorageManager::getDirectoryHandle(a3, a1, v14, &v15, v16, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v17)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkStorageManager::RemoveEntry,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,BOOL,WTF::CompletionHandler<void ()(std::optional<WebKit::FileSystemStorageError>)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String,BOOL>>(&v14, a2);
  if (v17 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
    while (1)
    {
      v10 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v11 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(0x18);
    *v12 = &unk_1F10F1380;
    *(v12 + 1) = v9;
    *(v12 + 2) = a1;
    v13 = v12;
    WebKit::NetworkStorageManager::removeEntry(a3, v14, &v15, v16, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v17)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkStorageManager::Resolve,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(v13, a2);
  if (v14 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F13A8;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkStorageManager::resolve(a3, v13[0], v13[1], &v12);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkStorageManager::Move,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WebKit::FileSystemStorageError>)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && (v8 = v6, v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2), (v10) && ((v11 = v9, IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v27), (v28) || (v19 = *a2, v20 = a2[1], *a2 = 0, a2[1] = 0, (v21 = a2[3]) != 0) && v20 && ((*(*v21 + 16))(v21, v19), (v28)))
  {
    v25 = v27;
    v26 = 1;
    v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }

    v14 = v12;
    while (1)
    {
      v15 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v16 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v16 == v15)
      {
        goto LABEL_10;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_10:
    v17 = WTF::fastMalloc(0x18);
    *v17 = &unk_1F10F13D0;
    *(v17 + 1) = v14;
    *(v17 + 2) = a1;
    v27 = v17;
    WebKit::NetworkStorageManager::move(a3, v8, v11, &v25, &v27);
    result = v27;
    v27 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v26)
    {
LABEL_13:
      result = v25;
      v25 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v13);
        }
      }
    }
  }

  else
  {
    v22 = *a2;
    v23 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v24 = v23 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      return (*(*result + 16))(result, v22);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkStorageManager::GetFile,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::String,WebKit::FileSystemStorageError>)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F13F8;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkStorageManager::getFile(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkStorageManager::CreateSyncAccessHandle,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::FileSystemSyncAccessHandleInfo,WebKit::FileSystemStorageError>)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F1420;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkStorageManager::createSyncAccessHandle(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkStorageManager::CloseSyncAccessHandle,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && (v8 = v6, v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2), (v10))
  {
    v11 = v9;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v13)
    {
      v14 = result;
      while (1)
      {
        v15 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v16 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v16 == v15)
        {
          goto LABEL_16;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
      v20 = WTF::fastMalloc(0x18);
      *v20 = &unk_1F10F1448;
      v20[1] = v14;
      v20[2] = a1;
      v21 = v20;
      WebKit::NetworkStorageManager::closeSyncAccessHandle(a3, v8, v11, &v21);
      result = v21;
      v21 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v17 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = *(*result + 16);

      return v19();
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkStorageManager::RequestNewCapacityForSyncAccessHandle,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemSyncAccessHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,unsigned long long,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0 || (v8 = v6, v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2), (v10 & 1) == 0))
  {
LABEL_20:
    v27 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v28 = v27 == 0;
    }

    else
    {
      v28 = 1;
    }

    if (!v28)
    {
      v29 = *(*result + 16);

      return v29();
    }

    return result;
  }

  v11 = a2[1];
  v12 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12 - *a2;
  v14 = v11 >= v13;
  v15 = v11 - v13;
  if (!v14 || v15 <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v25 = a2[3];
    if (v25)
    {
      if (v11)
      {
        (*(*v25 + 16))(v25);
        v11 = a2[1];
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_19;
  }

  a2[2] = (v12 + 1);
  if (!v12)
  {
LABEL_19:
    *a2 = 0;
    a2[1] = 0;
    v26 = a2[3];
    if (v26 && v11)
    {
      (*(*v26 + 16))(v26);
    }

    goto LABEL_20;
  }

  v17 = v9;
  v18 = *v12;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v20)
  {
    v21 = result;
    while (1)
    {
      v22 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v23 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v23, v22 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v23 == v22)
      {
        goto LABEL_15;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_15:
    v24 = WTF::fastMalloc(0x18);
    *v24 = &unk_1F10F1470;
    v24[1] = v21;
    v24[2] = a1;
    v30 = v24;
    WebKit::NetworkStorageManager::requestNewCapacityForSyncAccessHandle(a3, v8, v17, v18, &v30);
    result = v30;
    v30 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkStorageManager::CreateWritable,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebKit::FileSystemStorageError>)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0)
  {
LABEL_19:
    v22 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v23 = v22 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v24 = *(*result + 16);

      return v24();
    }

    return result;
  }

  v8 = a2[1];
  v9 = a2[2];
  v10 = *a2;
  if (v8 <= &v9[-*a2])
  {
    *a2 = 0;
    a2[1] = 0;
    v19 = a2[3];
    if (v19)
    {
      if (v8)
      {
        (*(*v19 + 16))(v19);
        v8 = a2[1];
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_15;
  }

  a2[2] = (v9 + 1);
  if (!v9)
  {
LABEL_15:
    *a2 = 0;
    a2[1] = 0;
    v20 = a2[3];
    if (v20)
    {
      if (v8)
      {
        (*(*v20 + 16))(v20);
        v10 = *a2;
        v8 = a2[1];
        goto LABEL_18;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
LABEL_18:
    *a2 = 0;
    a2[1] = 0;
    v21 = a2[3];
    if (v21 && v8)
    {
      (*(*v21 + 16))(v21, v10);
    }

    goto LABEL_19;
  }

  v11 = *v9;
  if (v11 >= 2)
  {
    goto LABEL_18;
  }

  v12 = v6;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v14)
  {
    v15 = result;
    while (1)
    {
      v16 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v17 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v17 == v16)
      {
        goto LABEL_11;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_11:
    v18 = WTF::fastMalloc(0x18);
    *v18 = &unk_1F10F1498;
    v18[1] = v15;
    v18[2] = a1;
    v25 = v18;
    WebKit::NetworkStorageManager::createWritable(a3, v12, (v11 & 1), &v25);
    result = v25;
    v25 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkStorageManager::CloseWritable,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FileSystemWriteCloseReason,WTF::CompletionHandler<void ()(std::optional<WebKit::FileSystemStorageError>)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0 || (v8 = v6, v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2), (v10 & 1) == 0))
  {
LABEL_20:
    v25 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      v27 = *(*result + 16);

      return v27();
    }

    return result;
  }

  v11 = a2[1];
  v12 = a2[2];
  v13 = *a2;
  if (v11 <= &v12[-*a2])
  {
    *a2 = 0;
    a2[1] = 0;
    v22 = a2[3];
    if (v22)
    {
      if (v11)
      {
        (*(*v22 + 16))(v22);
        v11 = a2[1];
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_16;
  }

  a2[2] = (v12 + 1);
  if (!v12)
  {
LABEL_16:
    *a2 = 0;
    a2[1] = 0;
    v23 = a2[3];
    if (v23)
    {
      if (v11)
      {
        (*(*v23 + 16))(v23);
        v13 = *a2;
        v11 = a2[1];
        goto LABEL_19;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = 0;
LABEL_19:
    *a2 = 0;
    a2[1] = 0;
    v24 = a2[3];
    if (v24)
    {
      if (v11)
      {
        (*(*v24 + 16))(v24, v13);
        v28 = a2[3];
        v29 = *a2;
        v30 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        if (v28)
        {
          if (v30)
          {
            (*(*v28 + 16))(v28, v29);
          }
        }
      }
    }

    goto LABEL_20;
  }

  v14 = *v12;
  if (v14 >= 2)
  {
    goto LABEL_19;
  }

  v15 = v9;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v17)
  {
    v18 = result;
    while (1)
    {
      v19 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v20 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v20 == v19)
      {
        goto LABEL_12;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_12:
    v21 = WTF::fastMalloc(0x18);
    *v21 = &unk_1F10F14C0;
    v21[1] = v18;
    v21[2] = a1;
    v31 = v21;
    WebKit::NetworkStorageManager::closeWritable(a3, v8, v15, v14 & 1, &v31);
    result = v31;
    v31 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkStorageManager::ExecuteCommandForWritable,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::FileSystemWritableFileStreamIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FileSystemWriteCommandType,std::optional<unsigned long long>,std::optional<unsigned long long>,std::span<unsigned char const,18446744073709551615ul>,BOOL,WTF::CompletionHandler<void ()(std::optional<WebKit::FileSystemStorageError>)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7)
  {
    v8 = v6;
    v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v10)
    {
      v11 = a2[1];
      v12 = a2[2];
      v13 = *a2;
      if (v11 <= &v12[-*a2])
      {
LABEL_27:
        *a2 = 0;
        a2[1] = 0;
        v30 = a2[3];
        if (v30)
        {
          if (v11)
          {
            (*(*v30 + 16))(v30);
            v11 = a2[1];
          }
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_29;
      }

      a2[2] = (v12 + 1);
      if (!v12)
      {
LABEL_29:
        *a2 = 0;
        a2[1] = 0;
        v31 = a2[3];
        if (v31)
        {
          if (v11)
          {
            (*(*v31 + 16))(v31);
            v13 = *a2;
            v11 = a2[1];
            goto LABEL_32;
          }
        }

        else
        {
          v11 = 0;
        }

        v13 = 0;
LABEL_32:
        *a2 = 0;
        a2[1] = 0;
        v32 = a2[3];
        if (v32 && v11)
        {
          (*(*v32 + 16))(v32, v13);
        }

        goto LABEL_33;
      }

      v14 = *v12;
      if (v14 >= 3)
      {
        goto LABEL_32;
      }

      v15 = v9;
      IPC::Decoder::decode<std::optional<unsigned long long>>(a2, &v39);
      if (v41)
      {
        IPC::Decoder::decode<std::optional<unsigned long long>>(a2, &v42);
        if (v44)
        {
          IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a2, v45);
          if ((v46 & 1) == 0)
          {
            goto LABEL_23;
          }

          while (1)
          {
            v11 = a2[1];
            v16 = a2[2];
            v13 = *a2;
            if (v11 <= &v16[-*a2])
            {
              goto LABEL_27;
            }

            a2[2] = (v16 + 1);
            if (!v16)
            {
              goto LABEL_29;
            }

            v17 = *v16;
            if (v17 >= 2)
            {
              goto LABEL_32;
            }

            if (v41 & 1) != 0 && (v44)
            {
              v37 = v40;
              v38 = v39;
              v18 = v43;
              v36 = v42;
              v19 = v45[0];
              v20 = v45[1];
              result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
              if (v22)
              {
                v23 = result;
                while (1)
                {
                  v24 = *a1;
                  if ((*a1 & 1) == 0)
                  {
                    break;
                  }

                  v25 = *a1;
                  atomic_compare_exchange_strong_explicit(a1, &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
                  if (v25 == v24)
                  {
                    goto LABEL_20;
                  }
                }

                WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_20:
                v26 = WTF::fastMalloc(0x18);
                *v26 = &unk_1F10F14E8;
                v26[1] = v23;
                v26[2] = a1;
                v45[0] = v26;
                WebKit::NetworkStorageManager::executeCommandForWritable(a3, v8, v15, v14, v38, v37, v36, v18, v19, v20, v17 & 1, v45);
                result = v45[0];
                v45[0] = 0;
                if (result)
                {
                  return (*(*result + 8))(result);
                }
              }

              return result;
            }

            __break(1u);
LABEL_23:
            v27 = *a2;
            v28 = a2[1];
            *a2 = 0;
            a2[1] = 0;
            v29 = a2[3];
            if (v29)
            {
              if (v28)
              {
                (*(*v29 + 16))(v29, v27);
                if (v46)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }
    }
  }

LABEL_33:
  v33 = *a2;
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
    return (*(*result + 16))(result, v33);
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkStorageManager::GetHandleNames,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::FileSystemStorageError>)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
      while (1)
      {
        v11 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v12 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(0x18);
      *v13 = &unk_1F10F1510;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkStorageManager::getHandleNames(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkStorageManager::GetHandle,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<std::optional<std::experimental::fundamentals_v3::expected::pair<WTF::ObjectIdentifierGeneric<WebCore::FileSystemHandleIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,BOOL>>,WebKit::FileSystemStorageError>)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && ((v8 = v6, IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v24), (v25) || (v16 = *a2, v17 = a2[1], *a2 = 0, a2[1] = 0, (v18 = a2[3]) != 0) && v17 && ((*(*v18 + 16))(v18, v16), (v25)))
  {
    v22 = v24;
    v23 = 1;
    v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }

    v11 = v9;
    while (1)
    {
      v12 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v13 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_9:
    v14 = WTF::fastMalloc(0x18);
    *v14 = &unk_1F10F1538;
    *(v14 + 1) = v11;
    *(v14 + 2) = a1;
    v24 = v14;
    WebKit::NetworkStorageManager::getHandle(a3, a1, v8, &v22, &v24);
    result = v24;
    v24 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v23)
    {
LABEL_12:
      result = v22;
      v22 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v10);
        }
      }
    }
  }

  else
  {
    v19 = *a2;
    v20 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v21 = v20 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      return (*(*result + 16))(result, v19);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkStorageManager::ConnectToStorageArea,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)> &&)>(WTF::ThreadSafeWeakPtrControlBlock **a1, IPC::Decoder *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>>(v15, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
    {
      v8 = v7;
LABEL_4:
      v9 = *a1;
      if ((*a1 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
        goto LABEL_6;
      }

      while (1)
      {
        v13 = v9;
        atomic_compare_exchange_strong_explicit(a1, &v13, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v13 != v9)
        {
          goto LABEL_4;
        }

LABEL_6:
        v10 = WTF::fastMalloc(0x18);
        *v10 = &unk_1F10F1560;
        v10[1] = v8;
        v10[2] = a1;
        v14 = v10;
        v9 = v16;
        if (v16)
        {
          break;
        }

        __break(1u);
      }

      IPC::callMemberFunction<WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection &,WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)> &&),std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)>(a3, WebKit::NetworkStorageManager::connectToStorageArea, 0, a1, v15, &v14);
      v11 = v14;
      v14 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }
  }

  return std::optional<std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>>::~optional(v15, v6);
}

void IPC::handleMessage<Messages::NetworkStorageManager::CancelConnectToStorageArea,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::StorageType,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin const&)>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = IPC::Decoder::decode<WebCore::StorageType>(a2);
  if (v6 < 0x100u || (v7 = v6, IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(&v24, a2), (v25 & 1) == 0) || (IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a2, v35), (v41 & 1) == 0) && ((v17 = *a2, v18 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v19 = *(a2 + 3)) == 0) || !v18 || ((*(*v19 + 16))(v19, v17), (v41 & 1) == 0)))
  {
    v20 = *a2;
    v21 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v22 = *(a2 + 3);
    if (v22)
    {
      v23 = v21 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      (*(*v22 + 16))(v22, v20);
    }

    return;
  }

  v26 = v7;
  v27 = v24;
  LOBYTE(v28[0]) = 0;
  v30 = -1;
  if (v37)
  {
    if (v37 == 255)
    {
      goto LABEL_7;
    }

    *v28 = *v35;
  }

  else
  {
    v9 = *v35;
    v35[0] = 0;
    v35[1] = 0;
    *v28 = v9;
    v29 = v36;
  }

  v30 = v37;
LABEL_7:
  LOBYTE(v31[0]) = 0;
  v33 = -1;
  if (v40)
  {
    if (v40 != 255)
    {
      *v31 = v38;
      v33 = v40;
    }

    v34 = 1;
  }

  else
  {
    *v31 = v38;
    v32 = v39;
    v33 = 0;
    v34 = 1;
    v38 = 0uLL;
  }

  v40 = -1;
  if (!v37)
  {
    v10 = v35[1];
    v35[1] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    v11 = v35[0];
    v35[0] = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }
  }

  WebKit::NetworkStorageManager::cancelConnectToStorageArea(a3, a1, v7, v27, SBYTE8(v27), v28);
  if (v34)
  {
    if (!v33)
    {
      v13 = v31[1];
      v31[1] = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v12);
      }

      v14 = v31[0];
      v31[0] = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v12);
      }
    }

    v33 = -1;
    if (!v30)
    {
      v15 = v28[1];
      v28[1] = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v12);
      }

      v16 = v28[0];
      v28[0] = 0;
      if (v16)
      {
        if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v12);
        }
      }
    }
  }
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkStorageManager::SetItem,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaImplIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::String &,WTF::String &,WTF::CompletionHandler<void ()(BOOL,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t *a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_36;
  }

  v8 = v6;
  v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_36;
  }

  v11 = v9;
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v41);
  if ((v42 & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v43);
    if ((v44 & 1) == 0)
    {
      v12 = *a2;
      v31 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v32 = *(a2 + 3);
      if (!v32 || !v31 || ((*(*v32 + 16))(v32, v12), (v44 & 1) == 0))
      {
        v14 = 0;
        LOBYTE(v36) = 0;
        v40 = 0;
        goto LABEL_9;
      }
    }

    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v45);
    if ((v46 & 1) == 0)
    {
      v12 = *a2;
      v33 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v34 = *(a2 + 3);
      if (!v34)
      {
        break;
      }

      if (!v33)
      {
        break;
      }

      (*(*v34 + 16))(v34, v12);
      if ((v46 & 1) == 0)
      {
        break;
      }
    }

    if (v42 & 1) != 0 && (v44)
    {
      v36 = v8;
      v13 = v41;
      v41 = 0;
      v37 = v13;
      v38 = v43;
      v39 = v45;
      v14 = 1;
      v40 = 1;
      goto LABEL_9;
    }

    __break(1u);
LABEL_35:
    v25 = *a2;
    v26 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (v27)
    {
      if (v26)
      {
        (*(*v27 + 16))(v27, v25);
        if (v42)
        {
          continue;
        }
      }
    }

    goto LABEL_36;
  }

  LOBYTE(v36) = 0;
  v40 = 0;
  if (v44)
  {
    v35 = v43;
    v43 = 0;
    if (v35)
    {
      if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v12);
      }
    }
  }

  v14 = 0;
LABEL_9:
  if (v42)
  {
    v15 = v41;
    v41 = 0;
    if (v15)
    {
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v12);
        if (v14)
        {
          goto LABEL_13;
        }

LABEL_36:
        v28 = *a2;
        v29 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result)
        {
          v30 = v29 == 0;
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          return (*(*result + 16))(result, v28);
        }

        return result;
      }
    }
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_13:
  v16 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v17 & 1) == 0)
  {
    goto LABEL_22;
  }

  v18 = v16;
  while (1)
  {
    v19 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v20 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v20, v19 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v20 == v19)
    {
      goto LABEL_19;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_19:
  v21 = WTF::fastMalloc(0x18);
  *v21 = &unk_1F10F1588;
  *(v21 + 1) = v18;
  *(v21 + 2) = a1;
  v45 = v21;
  WebKit::NetworkStorageManager::setItem(a3, a1, v36, v11, &v37, &v38, &v39, &v45);
  result = v45;
  v45 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v40)
  {
LABEL_22:
    v23 = v39;
    v39 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v17);
    }

    v24 = v38;
    v38 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v17);
    }

    result = v37;
    v37 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v17);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkStorageManager::RemoveItem,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaImplIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::String &,WTF::CompletionHandler<void ()(BOOL,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t *a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && (v8 = v6, v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2), (v10))
  {
    v11 = v9;
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v33);
    if ((v34 & 1) == 0)
    {
      goto LABEL_23;
    }

    while (1)
    {
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v35);
      if ((v36 & 1) == 0)
      {
        v23 = *a2;
        v24 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        v25 = *(a2 + 3);
        if (!v25 || !v24 || ((*(*v25 + 16))(v25, v23), (v36 & 1) == 0))
        {
          if (v34)
          {
            v26 = v33;
            v33 = 0;
            if (v26)
            {
              if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v26, v23);
              }
            }
          }

          goto LABEL_32;
        }
      }

      if (v34)
      {
        break;
      }

      __break(1u);
LABEL_23:
      v20 = *a2;
      v21 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v22 = *(a2 + 3);
      if (v22)
      {
        if (v21)
        {
          (*(*v22 + 16))(v22, v20);
          if (v34)
          {
            continue;
          }
        }
      }

      goto LABEL_32;
    }

    v30 = v33;
    v31 = v35;
    v32 = 1;
    v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v13 & 1) == 0)
    {
      goto LABEL_15;
    }

    v14 = v12;
    while (1)
    {
      v15 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v16 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v16 == v15)
      {
        goto LABEL_12;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_12:
    v17 = WTF::fastMalloc(0x18);
    *v17 = &unk_1F10F15B0;
    *(v17 + 1) = v14;
    *(v17 + 2) = a1;
    v35 = v17;
    WebKit::NetworkStorageManager::removeItem(a3, a1, v8, v11, &v30, &v31, &v35);
    result = v35;
    v35 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v32)
    {
LABEL_15:
      v19 = v31;
      v31 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v13);
      }

      result = v30;
      v30 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v13);
        }
      }
    }
  }

  else
  {
LABEL_32:
    v27 = *a2;
    v28 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v29 = v28 == 0;
    }

    else
    {
      v29 = 1;
    }

    if (!v29)
    {
      return (*(*result + 16))(result, v27);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkStorageManager::Clear,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaImplIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t *a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && (v8 = v6, v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2), (v10) && ((v11 = v9, IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v27), (v28) || (v19 = *a2, v20 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v21 = *(a2 + 3)) != 0) && v20 && ((*(*v21 + 16))(v21, v19), (v28)))
  {
    v25 = v27;
    v26 = 1;
    v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }

    v14 = v12;
    while (1)
    {
      v15 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v16 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v16 == v15)
      {
        goto LABEL_10;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_10:
    v17 = WTF::fastMalloc(0x18);
    *v17 = &unk_1F10F15D8;
    *(v17 + 1) = v14;
    *(v17 + 2) = a1;
    v27 = v17;
    WebKit::NetworkStorageManager::clear(a3, a1, v8, v11, &v25, &v27);
    result = v27;
    v27 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v26)
    {
LABEL_13:
      result = v25;
      v25 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v13);
        }
      }
    }
  }

  else
  {
    v22 = *a2;
    v23 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v24 = v23 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      return (*(*result + 16))(result, v22);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkStorageManager::OpenDatabase,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBOpenRequestData const&)>(void **a1, IPC::Decoder *a2, WebKit::NetworkStorageManager *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::tuple<WebCore::IDBOpenRequestData>>(v11, a2);
  if (v19 == 1)
  {
    result = WebKit::NetworkStorageManager::openDatabase(a3, a1, v11);
    if (v19)
    {
      if (!v18)
      {
        v7 = v17;
        v17 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v6);
        }

        v8 = v16;
        v16 = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v6);
        }
      }

      v18 = -1;
      if (!v15)
      {
        v9 = v14;
        v14 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v6);
        }

        v10 = v13;
        v13 = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v6);
        }
      }

      v15 = -1;
      result = v12;
      v12 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v6);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkStorageManager::OpenDBRequestCancelled,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::IDBOpenRequestData const&)>(IPC::Decoder *a1, WebKit::NetworkStorageManager *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::tuple<WebCore::IDBOpenRequestData>>(v9, a1);
  if (v17 == 1)
  {
    result = WebKit::NetworkStorageManager::openDBRequestCancelled(a2, v9);
    if (v17)
    {
      if (!v16)
      {
        v5 = v15;
        v15 = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, v4);
        }

        v6 = v14;
        v14 = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v4);
        }
      }

      v16 = -1;
      if (!v13)
      {
        v7 = v12;
        v12 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v4);
        }

        v8 = v11;
        v11 = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v4);
        }
      }

      v13 = -1;
      result = v10;
      v10 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkStorageManager::DeleteDatabase,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBOpenRequestData const&)>(void **a1, IPC::Decoder *a2, WebKit::NetworkStorageManager *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::tuple<WebCore::IDBOpenRequestData>>(v11, a2);
  if (v19 == 1)
  {
    result = WebKit::NetworkStorageManager::deleteDatabase(a3, a1, v11);
    if (v19)
    {
      if (!v18)
      {
        v7 = v17;
        v17 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v6);
        }

        v8 = v16;
        v16 = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v6);
        }
      }

      v18 = -1;
      if (!v15)
      {
        v9 = v14;
        v14 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v6);
        }

        v10 = v13;
        v13 = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v6);
        }
      }

      v15 = -1;
      result = v12;
      v12 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v6);
        }
      }
    }
  }

  return result;
}

_DWORD *IPC::handleMessage<Messages::NetworkStorageManager::EstablishTransaction,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBTransactionInfo const&)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5)
  {
    v6 = v4;
    IPC::ArgumentCoder<WebCore::IDBTransactionInfo,void>::decode(a1, v22);
    if (v26 & 1) != 0 || (v11 = *a1, v12 = a1[1], *a1 = 0, a1[1] = 0, (v13 = a1[3]) != 0) && v12 && ((*(*v13 + 16))(v13, v11), (v26))
    {
      v18[0] = v22[0];
      v18[1] = v22[1];
      v17 = v6;
      v19[0] = v23;
      v7 = v24;
      v23 = 0;
      v24 = 0;
      v19[1] = v7;
      v8 = v25;
      v25 = 0;
      v20 = v8;
      v21 = 1;
      std::__optional_destruct_base<WebCore::IDBTransactionInfo,false>::~__optional_destruct_base[abi:sn200100](v22);
LABEL_4:
      result = WebKit::NetworkStorageManager::establishTransaction(a2, v17, v18);
      if (v21)
      {
        std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](&v20, 0);
        return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v19, v10);
      }

      return result;
    }

    LOBYTE(v17) = 0;
    v21 = 0;
    std::__optional_destruct_base<WebCore::IDBTransactionInfo,false>::~__optional_destruct_base[abi:sn200100](v22);
  }

  else
  {
    LOBYTE(v17) = 0;
    v21 = 0;
  }

  v14 = *a1;
  v15 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
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
    result = (*(*result + 16))(result, v14);
    if (v21)
    {
      goto LABEL_4;
    }
  }

  return result;
}

_DWORD *IPC::handleMessage<Messages::NetworkStorageManager::AbortOpenAndUpgradeNeeded,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<WebCore::IDBResourceIdentifier> const&)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && ((v6 = v4, IPC::ArgumentCoder<std::optional<WebCore::IDBResourceIdentifier>,void>::decode<IPC::Decoder>(a1, &v17), (v19) || (v8 = *a1, v9 = a1[1], *a1 = 0, a1[1] = 0, (v10 = a1[3]) != 0) && v9 && ((*(*v10 + 16))(v10, v8), (v19)))
  {
    v14 = v17;
    v15 = v18;
    v16 = 1;
    return WebKit::NetworkStorageManager::abortOpenAndUpgradeNeeded(a2, v6, &v14);
  }

  else
  {
    v11 = *a1;
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
      return (*(*result + 16))(result, v11);
    }
  }

  return result;
}

_DWORD *IPC::handleMessage<Messages::NetworkStorageManager::DidFireVersionChangeEvent,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBResourceIdentifier const&,WebCore::IndexedDB::ConnectionClosedOnBehalfOfServer)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5)
  {
    v6 = v4;
    IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(a1, &v20);
    if (v21 == 1)
    {
      v7 = a1[1];
      v8 = a1[2];
      v9 = *a1;
      if (v7 <= &v8[-*a1])
      {
        *a1 = 0;
        a1[1] = 0;
        v11 = a1[3];
        if (v11)
        {
          if (v7)
          {
            (*(*v11 + 16))(v11);
            v7 = a1[1];
          }
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        a1[2] = (v8 + 1);
        if (v8)
        {
          if (*v8 < 2u)
          {
            return WebKit::NetworkStorageManager::didFireVersionChangeEvent(a2, v6);
          }

          goto LABEL_12;
        }
      }

      *a1 = 0;
      a1[1] = 0;
      v12 = a1[3];
      if (v12)
      {
        if (v7)
        {
          (*(*v12 + 16))(v12);
          v9 = *a1;
          v7 = a1[1];
          goto LABEL_12;
        }
      }

      else
      {
        v7 = 0;
      }

      v9 = 0;
LABEL_12:
      *a1 = 0;
      a1[1] = 0;
      v13 = a1[3];
      if (v13)
      {
        if (v7)
        {
          (*(*v13 + 16))(v13, v9);
          v17 = a1[3];
          v18 = *a1;
          v19 = a1[1];
          *a1 = 0;
          a1[1] = 0;
          if (v17)
          {
            if (v19)
            {
              (*(*v17 + 16))(v17, v18);
            }
          }
        }
      }
    }
  }

  v14 = *a1;
  v15 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
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
    return (*(*result + 16))(result, v14);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkStorageManager::DidGenerateIndexKeyForRecord,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::IDBResourceIdentifier const&,WebCore::IDBResourceIdentifier const&,WebCore::IDBIndexInfo const&,WebCore::IDBKeyData const&,WebCore::IndexKey const&,std::optional<long long>)>(uint64_t *a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(a1, &v22);
  if ((v23 & 1) == 0 || (IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(a1, &v24), (v25 & 1) == 0))
  {
    LOBYTE(v38[0]) = 0;
    v46 = 0;
    goto LABEL_73;
  }

  IPC::Decoder::decode<WebCore::IDBIndexInfo>(a1, &v26);
  if (v30 != 1)
  {
    LOBYTE(v38[0]) = 0;
    v46 = 0;
    goto LABEL_52;
  }

  IPC::Decoder::decode<WebCore::IDBKeyData>(a1, &v31);
  if (v35 != 1)
  {
    LOBYTE(v38[0]) = 0;
    v46 = 0;
    goto LABEL_48;
  }

  IPC::Decoder::decode<WebCore::IndexKey>(v47, a1);
  if (v48 != 1)
  {
    LOBYTE(v38[0]) = 0;
    v46 = 0;
    goto LABEL_35;
  }

  IPC::ArgumentCoder<std::optional<long long>,void>::decode<IPC::Decoder>(a1, &v36);
  if ((v37 & 1) == 0)
  {
    goto LABEL_78;
  }

  do
  {
    if (v23 & 1) != 0 && (v25 & 1) != 0 && (v30 & 1) != 0 && (v35 & 1) != 0 && (v48)
    {
      v38[0] = v22;
      v38[1] = v24;
      v38[2] = v26;
      v5 = v27;
      v27 = 0;
      v39 = v5;
      mpark::detail::move_assignment<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_assignment(v40, v28);
      v40[12] = v29;
      v40[16] = v31;
      LOBYTE(v41[0]) = 0;
      v42 = -1;
      if (v34 > 4u)
      {
        if (v34 > 6u)
        {
          if (v34 - 7 >= 2)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        if (v34 == 5)
        {
          v6 = v32;
LABEL_28:
          v41[0] = v6;
          goto LABEL_30;
        }
      }

      else
      {
        if (v34 <= 1u)
        {
          if (!v34)
          {
            v41[0] = 0;
          }

          goto LABEL_30;
        }

        if (v34 == 2)
        {
          v41[0] = v32;
          v7 = v33;
          v32 = 0;
          v33 = 0;
          v41[1] = v7;
          goto LABEL_30;
        }

        if (v34 != 3)
        {
          v41[0] = v32;
LABEL_30:
          v42 = v34;
LABEL_31:
          mpark::detail::move_assignment<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_assignment(v43, v47);
          v45 = v36;
          v8 = 1;
          goto LABEL_32;
        }
      }

      v6 = v32;
      v32 = 0;
      goto LABEL_28;
    }

    __break(1u);
LABEL_78:
    v4 = *a1;
    v20 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v21 = a1[3];
    if (!v21)
    {
      break;
    }

    if (!v20)
    {
      break;
    }

    (*(*v21 + 16))(v21, v4);
  }

  while ((v37 & 1) != 0);
  v8 = 0;
  LOBYTE(v38[0]) = 0;
LABEL_32:
  v46 = v8;
  if ((v48 & 1) != 0 && v47[32] != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1> &>(v47, v4);
  }

LABEL_35:
  if (v35)
  {
    if (v34 <= 2u)
    {
      if (v34 >= 2u)
      {
        WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v4);
      }
    }

    else if (v34 <= 8u && ((1 << v34) & 0x1B0) == 0)
    {
      if (v34 == 3)
      {
        v9 = v32;
        v32 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v4);
        }
      }

      else if (v34 == 6)
      {
        v10 = v32;
        v32 = 0;
        if (v10)
        {
          WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v10, v4);
        }
      }
    }
  }

LABEL_48:
  if (v30)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v28, v4);
    v12 = v27;
    v27 = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v11);
      }
    }
  }

LABEL_52:
  if (v46)
  {
LABEL_53:
    result = WebKit::NetworkStorageManager::didGenerateIndexKeyForRecord(a2, v38);
    if (v46)
    {
      if (v44 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1> &>(v43, v14);
      }

      v44 = -1;
      if (v42 <= 2u)
      {
        if (v42 >= 2u)
        {
          WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v41, v14);
        }
      }

      else if (v42 <= 8u && ((1 << v42) & 0x1B0) == 0)
      {
        if (v42 == 3)
        {
          v15 = v41[0];
          v41[0] = 0;
          if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v14);
          }
        }

        else if (v42 == 6)
        {
          v16 = v41[0];
          v41[0] = 0;
          if (v16)
          {
            WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v16, v14);
          }
        }
      }

      v42 = -1;
      mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v40, v14);
      result = v39;
      v39 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v17);
        }
      }
    }

    return result;
  }

LABEL_73:
  v18 = *a1;
  v19 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (result)
  {
    if (v19)
    {
      result = (*(*result + 16))(result, v18);
      if (v46)
      {
        goto LABEL_53;
      }
    }
  }

  return result;
}

_DWORD *IPC::handleMessage<Messages::NetworkStorageManager::DidFinishHandlingVersionChangeTransaction,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::ObjectIdentifierGeneric<WebCore::IDBDatabaseConnectionIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBResourceIdentifier const&)>(uint64_t *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = v4, IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(a1, &v13), (v14))
  {
    v11 = v13;
    v12 = 1;
    return WebKit::NetworkStorageManager::didFinishHandlingVersionChangeTransaction(a2, v6, &v11);
  }

  else
  {
    v8 = *a1;
    v9 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
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
      return (*(*result + 16))(result, v8);
    }
  }

  return result;
}

void IPC::handleMessage<Messages::NetworkStorageManager::CommitTransaction,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBResourceIdentifier const&,unsigned long long)>(IPC::Connection *a1, uint64_t *a2, WebKit::NetworkStorageManager *a3)
{
  IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(a2, &v22);
  if (v23 == 1)
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
        v19 = v22;
        v20 = v12;
        v21 = 1;
        WebKit::NetworkStorageManager::commitTransaction(a3, a1, &v19);
        return;
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

  v15 = *a2;
  v16 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v17 = a2[3];
  if (v17)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    (*(*v17 + 16))(v17, v15);
  }
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkStorageManager::CreateObjectStore,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBRequestData const&,WebCore::IDBObjectStoreInfo const&)>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<WebCore::IDBRequestData>(v27, a2);
  if ((v29 & 1) == 0)
  {
    LOBYTE(v18[0]) = 0;
    v26 = 0;
LABEL_23:
    v15 = *a2;
    v16 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return result;
    }

    result = (*(*result + 16))(result, v15);
    if ((v26 & 1) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

  v6 = IPC::ArgumentCoder<WebCore::IDBObjectStoreInfo,void>::decode(a2, &v30);
  if (v36)
  {
    while ((v29 & 1) == 0)
    {
      __break(1u);
LABEL_32:
      if (v8)
      {
        v6 = (*(*v6 + 16))(v6, v7);
        if (v36)
        {
          continue;
        }
      }

      goto LABEL_30;
    }

    v18[4] = v27[4];
    v18[5] = v27[5];
    v18[0] = v27[0];
    v18[1] = v27[1];
    v18[2] = v27[2];
    v18[3] = v27[3];
    v9 = v31;
    v19 = v28;
    v20 = v30;
    v31 = 0;
    v21 = v9;
    v22[0] = 0;
    v23 = 0;
    if (v33 == 1)
    {
      mpark::detail::move_assignment<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_assignment(v22, v32);
      v23 = 1;
      v24 = v34;
      v10 = v35;
      v35 = 0;
      v25 = v10;
      v26 = 1;
      if ((v36 & 1) == 0)
      {
        goto LABEL_12;
      }

      if (v33)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v32, v7);
      }
    }

    else
    {
      v24 = v34;
      v11 = v35;
      v35 = 0;
      v25 = v11;
      v26 = 1;
    }

    v12 = v31;
    v31 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v7);
    }
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v6 = *(a2 + 3);
    if (v6)
    {
      goto LABEL_32;
    }

LABEL_30:
    LOBYTE(v18[0]) = 0;
    v26 = 0;
  }

LABEL_12:
  if ((v26 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  result = WebKit::NetworkStorageManager::createObjectStore(a3, a1, v18);
  if (v26)
  {
    if (v25)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IDBIndexInfo,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IDBIndexInfo>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v25, v14);
    }

    if (v23 == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v22, v14);
    }

    result = v21;
    v21 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v14);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkStorageManager::DeleteObjectStore,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBRequestData const&,WTF::String const&)>(IPC::Connection *a1, IPC::Decoder *a2, WebKit::NetworkStorageManager *a3)
{
  IPC::Decoder::decode<WebCore::IDBRequestData>(v18, a2);
  if (v20)
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v21);
    if ((v22 & 1) == 0)
    {
      goto LABEL_10;
    }

    while ((v20 & 1) == 0)
    {
      __break(1u);
LABEL_10:
      v8 = *a2;
      v9 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v10 = *(a2 + 3);
      if (v10)
      {
        if (v9)
        {
          (*(*v10 + 16))(v10, v8);
          if (v22)
          {
            continue;
          }
        }
      }

      goto LABEL_11;
    }

    v14[4] = v18[4];
    v14[5] = v18[5];
    v14[0] = v18[0];
    v14[1] = v18[1];
    v14[2] = v18[2];
    v14[3] = v18[3];
    v15 = v19;
    v16 = v21;
    v17 = 1;
    result = WebKit::NetworkStorageManager::deleteObjectStore(a3, a1, v14, &v16);
    if (v17)
    {
      result = v16;
      v16 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v7);
        }
      }
    }
  }

  else
  {
LABEL_11:
    v11 = *a2;
    v12 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
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
      return (*(*result + 16))(result, v11);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkStorageManager::RenameObjectStore,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::IDBRequestData,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(v7, a2);
  if (v9 == 1)
  {
    result = WebKit::NetworkStorageManager::renameObjectStore(a3, a1, v7);
    if (v9)
    {
      result = v8;
      v8 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v6);
        }
      }
    }
  }

  return result;
}

_DWORD *IPC::handleMessage<Messages::NetworkStorageManager::ClearObjectStore,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<WebCore::IDBRequestData>(v13, a1);
  if (v15 == 1 && (result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1), (v5 & 1) != 0))
  {
    if (v15)
    {
      v9[4] = v13[4];
      v9[5] = v13[5];
      v9[0] = v13[0];
      v9[1] = v13[1];
      v9[2] = v13[2];
      v9[3] = v13[3];
      v10 = v14;
      v11 = result;
      v12 = 1;
      return WebKit::NetworkStorageManager::clearObjectStore(a2, v9);
    }

    else
    {
      __break(1u);
    }
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
      return (*(*result + 16))(result, v6);
    }
  }

  return result;
}

void IPC::handleMessage<Messages::NetworkStorageManager::CreateIndex,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBRequestData const&,WebCore::IDBIndexInfo const&)>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<WebCore::IDBRequestData>(v22, a2);
  if (v24)
  {
    IPC::Decoder::decode<WebCore::IDBIndexInfo>(a2, &v25);
    if (v29 == 1)
    {
      if ((v24 & 1) == 0)
      {
        __break(1u);
        return;
      }

      v16[4] = v22[4];
      v16[5] = v22[5];
      v17 = v23;
      v16[0] = v22[0];
      v16[1] = v22[1];
      v16[2] = v22[2];
      v16[3] = v22[3];
      v18 = v25;
      v19 = v26;
      v26 = 0;
      mpark::detail::move_assignment<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_assignment(v20, v27);
      v20[12] = v28;
      v21 = 1;
      if (v29)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v27, v6);
        v8 = v26;
        v26 = 0;
        if (v8)
        {
          if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v8, v7);
          }
        }
      }
    }

    else
    {
      LOBYTE(v16[0]) = 0;
      v21 = 0;
    }

    if (v21)
    {
      goto LABEL_10;
    }
  }

  else
  {
    LOBYTE(v16[0]) = 0;
    v21 = 0;
  }

  v12 = *a2;
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
    (*(*v14 + 16))(v14, v12);
    if (v21)
    {
LABEL_10:
      WebKit::NetworkStorageManager::createIndex(a3, a1, v16);
      if (v21)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v20, v9);
        v11 = v19;
        v19 = 0;
        if (v11)
        {
          if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v10);
          }
        }
      }
    }
  }
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkStorageManager::DeleteIndex,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::IDBRequestData,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String>>(v7, a2);
  if (v9 == 1)
  {
    result = WebKit::NetworkStorageManager::deleteIndex(a3, a1, v7);
    if (v9)
    {
      result = v8;
      v8 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v6);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkStorageManager::RenameIndex,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBRequestData const&,WTF::ObjectIdentifierGeneric<WebCore::IDBObjectStoreIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&)>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<WebCore::IDBRequestData>(v26, a2);
  if (v28 == 1 && (v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2), (v7 & 1) != 0) && (v8 = v6, v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2), (v10 & 1) != 0))
  {
    v11 = v9;
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v29);
    if ((v30 & 1) == 0)
    {
      goto LABEL_12;
    }

    while ((v28 & 1) == 0)
    {
      __break(1u);
LABEL_12:
      v14 = *a2;
      v15 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v16 = *(a2 + 3);
      if (v16)
      {
        if (v15)
        {
          (*(*v16 + 16))(v16, v14);
          if (v30)
          {
            continue;
          }
        }
      }

      goto LABEL_13;
    }

    v20[4] = v26[4];
    v20[5] = v26[5];
    v20[0] = v26[0];
    v20[1] = v26[1];
    v20[2] = v26[2];
    v20[3] = v26[3];
    v21 = v27;
    v22 = v8;
    v23 = v11;
    v24 = v29;
    v25 = 1;
    result = WebKit::NetworkStorageManager::renameIndex(a3, a1, v20);
    if (v25)
    {
      result = v24;
      v24 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v13);
        }
      }
    }
  }

  else
  {
LABEL_13:
    v17 = *a2;
    v18 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      return (*(*result + 16))(result, v17);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkStorageManager::PutOrAdd,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBRequestData const&,WebCore::IDBKeyData const&,WebCore::IDBValue const&,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IndexKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&,WebCore::IndexedDB::ObjectStoreOverwriteMode)>(uint64_t a1, IPC::Decoder *a2, uint64_t a3)
{
  v110 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::IDBRequestData>(v75, a2);
  if ((v80 & 1) == 0)
  {
    goto LABEL_315;
  }

  IPC::Decoder::decode<WebCore::IDBKeyData>(a2, &v81);
  if (v85 != 1)
  {
    goto LABEL_315;
  }

  v6 = IPC::ArgumentCoder<WebCore::IDBValue,void>::decode(a2, &v86);
  if ((v89 & 1) == 0)
  {
    v9 = *a2;
    v7 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v6 = *(a2 + 3);
    if (v6)
    {
      goto LABEL_263;
    }

LABEL_261:
    LOBYTE(v55) = 0;
    LOBYTE(v91[0]) = 0;
    v104 = 0;
    goto LABEL_283;
  }

  while (1)
  {
    v7 = *(a2 + 1);
    v8 = ((*(a2 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v9 = *a2;
    v10 = v8 - *a2;
    v11 = v7 >= v10;
    v12 = v7 - v10;
    if (!v11 || v12 <= 3)
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v59 = *(a2 + 3);
      if (v59)
      {
        if (v7)
        {
          (*(*v59 + 16))(v59);
          v7 = *(a2 + 1);
        }
      }

      else
      {
        v7 = 0;
      }

LABEL_268:
      *a2 = 0;
      *(a2 + 1) = 0;
      v60 = *(a2 + 3);
      if (v60 && v7)
      {
        (*(*v60 + 16))(v60);
      }

      goto LABEL_232;
    }

    v14 = (v8 + 1);
    *(a2 + 2) = v8 + 1;
    if (!v8)
    {
      goto LABEL_268;
    }

    v15 = *v8;
    v90 = 0;
    if (v15)
    {
      break;
    }

    v55 = 0;
LABEL_235:
    if (v7 <= v14 - v9)
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      v61 = *(a2 + 3);
      if (!v61)
      {
        v7 = 0;
        goto LABEL_273;
      }

      if (v7)
      {
        (*(*v61 + 16))(v61);
        v9 = *a2;
        v7 = *(a2 + 1);
      }

      else
      {
LABEL_273:
        v9 = 0;
      }

LABEL_274:
      *a2 = 0;
      *(a2 + 1) = 0;
      v62 = *(a2 + 3);
      if (!v62)
      {
        v7 = 0;
        goto LABEL_276;
      }

      if (v7)
      {
        (*(*v62 + 16))(v62, v9);
        v9 = *a2;
        v7 = *(a2 + 1);
      }

      else
      {
LABEL_276:
        v9 = 0;
      }

LABEL_277:
      *a2 = 0;
      *(a2 + 1) = 0;
      v63 = *(a2 + 3);
      if (v63 && v7)
      {
        (*(*v63 + 16))(v63, v9);
      }

      LOBYTE(v91[0]) = 0;
      v104 = 0;
      if (v55)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IndexKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v55, v9);
        LOBYTE(v55) = 0;
      }

      goto LABEL_280;
    }

    *(a2 + 2) = v14 + 1;
    if (!v14)
    {
      goto LABEL_274;
    }

    v52 = *v14;
    if (v52 >= 3)
    {
      goto LABEL_277;
    }

    if (v80 & 1) != 0 && (v85 & 1) != 0 && (v89)
    {
      v94 = v77;
      v95 = v78;
      v96 = v79;
      v91[0] = v75[0];
      v91[1] = v75[1];
      *(&v53 + 1) = *(&v76 + 1);
      v92 = v75[2];
      v93 = v76;
      v97 = v81;
      LOBYTE(v98[0]) = 0;
      v99 = -1;
      if (v84 > 4u)
      {
        if (v84 <= 6u)
        {
          if (v84 != 5)
          {
            goto LABEL_253;
          }

          v54 = v82;
LABEL_254:
          v98[0] = v54;
          goto LABEL_256;
        }

        if (v84 - 7 < 2)
        {
          goto LABEL_256;
        }
      }

      else
      {
        if (v84 <= 1u)
        {
          if (!v84)
          {
            v98[0] = 0;
          }
        }

        else
        {
          if (v84 != 2)
          {
            if (v84 != 3)
            {
              v98[0] = v82;
              goto LABEL_256;
            }

LABEL_253:
            v54 = v82;
            v82 = 0;
            goto LABEL_254;
          }

          v98[0] = v82;
          v56 = v83;
          v82 = 0;
          v83 = 0;
          v98[1] = v56;
        }

LABEL_256:
        v99 = v84;
      }

      *&v53 = 0;
      *v100 = v86;
      v57 = v87;
      v87 = 0;
      v86 = 0uLL;
      v100[2] = v57;
      v58 = v88;
      v88 = v53;
      v101 = v58;
      v102 = v55;
      v103 = v52;
      LOBYTE(v55) = 1;
      v104 = 1;
      goto LABEL_280;
    }

    __break(1u);
LABEL_263:
    if (v7)
    {
      v6 = (*(*v6 + 16))(v6, v9);
      if (v89)
      {
        continue;
      }
    }

    goto LABEL_261;
  }

  v16 = 0;
  while (1)
  {
    v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v18 & 1) == 0)
    {
      break;
    }

    v19 = v17;
    IPC::Decoder::decode<WebCore::IndexKey>(v91, a2);
    if (BYTE8(v92) != 1)
    {
      break;
    }

    if (v19 - 1 >= 0xFFFFFFFFFFFFFFFELL)
    {
      goto LABEL_228;
    }

    v20 = v90;
    if (!v90)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IndexKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(&v90);
      v20 = v90;
    }

    v21 = *(v20 - 8);
    v22 = (v19 + ~(v19 << 32)) ^ ((v19 + ~(v19 << 32)) >> 22);
    v23 = 9 * ((v22 + ~(v22 << 13)) ^ ((v22 + ~(v22 << 13)) >> 8));
    v24 = (v23 ^ (v23 >> 15)) + ~((v23 ^ (v23 >> 15)) << 27);
    v25 = v21 & ((v24 >> 31) ^ v24);
    v26 = (v20 + 48 * v25);
    v27 = *v26;
    if (*v26)
    {
      v28 = 0;
      v29 = 1;
      while (v27 != v19)
      {
        if (v27 == -1)
        {
          v28 = v26;
        }

        v25 = (v25 + v29) & v21;
        v26 = (v20 + 48 * v25);
        v27 = *v26;
        ++v29;
        if (!*v26)
        {
          if (v28)
          {
            *v28 = 0;
            WebCore::IndexKey::IndexKey((v28 + 1));
            --*(v90 - 16);
            v26 = v28;
          }

          goto LABEL_25;
        }
      }

      if ((BYTE8(v92) & 1) == 0)
      {
        break;
      }

LABEL_228:
      if (v92 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1> &>(v91, v18);
      }

      break;
    }

LABEL_25:
    *v26 = v19;
    v6 = mpark::detail::move_assignment<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_assignment(&v105, v91);
    v31 = *(v26 + 40);
    if (v31 == 255)
    {
      if (v109 == 255)
      {
        goto LABEL_84;
      }
    }

    else if (v109 == 255)
    {
      v6 = mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1> &>((v26 + 1), v30);
      v32 = -1;
      goto LABEL_81;
    }

    if (v109 == 2)
    {
      if (v31 != 255)
      {
        v34 = (v26 + 1);
        if (v31 == 2)
        {
          v35 = &v105;
LABEL_47:
          v6 = WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v34, v35);
          goto LABEL_82;
        }

        v6 = mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1> &>(v34, v30);
      }

      v26[1] = v105;
      v37 = v106;
      v105 = 0;
      v106 = 0;
      v26[2] = v37;
      v32 = 2;
      goto LABEL_81;
    }

    if (v109 == 1)
    {
      if (v31 == 255)
      {
        goto LABEL_52;
      }

      if (v31 != 1)
      {
        v6 = mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1> &>((v26 + 1), v30);
LABEL_52:
        *(v26 + 40) = -1;
        *(v26 + 4) = v105;
        *(v26 + 16) = 0;
        *(v26 + 32) = -1;
        v36 = v108;
        if (v108 > 4u)
        {
          if (v108 <= 6u)
          {
            if (v108 != 5)
            {
              goto LABEL_68;
            }

            v38 = v106;
LABEL_69:
            v26[2] = v38;
            goto LABEL_79;
          }

          if (v108 - 7 < 2)
          {
            goto LABEL_79;
          }
        }

        else
        {
          if (v108 <= 1u)
          {
            if (!v108)
            {
              v26[2] = 0;
            }
          }

          else
          {
            if (v108 != 2)
            {
              if (v108 != 3)
              {
                v26[2] = v106;
                goto LABEL_79;
              }

LABEL_68:
              v38 = v106;
              v106 = 0;
              goto LABEL_69;
            }

            v26[2] = v106;
            v39 = v107;
            v106 = 0;
            v107 = 0;
            v26[3] = v39;
          }

LABEL_79:
          *(v26 + 32) = v36;
        }

        v32 = 1;
LABEL_81:
        *(v26 + 40) = v32;
        goto LABEL_82;
      }

      *(v26 + 4) = v105;
      v33 = *(v26 + 32);
      if (v33 != 255 || v108 != 255)
      {
        if (v108 == 255)
        {
          if (*(v26 + 32) <= 2u)
          {
            if (v33 >= 2)
            {
              v6 = WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v26 + 2), v30);
            }
          }

          else if (v33 <= 8 && ((1 << v33) & 0x1B0) == 0)
          {
            if (v33 == 3)
            {
              v6 = v26[2];
              v26[2] = 0;
              if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                v6 = WTF::StringImpl::destroy(v6, v30);
              }
            }

            else if (v33 == 6)
            {
              v6 = v26[2];
              v26[2] = 0;
              if (v6)
              {
                v6 = WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v6, v30);
              }
            }
          }

          v44 = -1;
          goto LABEL_148;
        }

        if (v108 <= 3u)
        {
          if (v108 > 1u)
          {
            if (v108 == 2)
            {
              if (*(v26 + 32) <= 2u)
              {
                if (v33 >= 2)
                {
                  v34 = (v26 + 2);
                  v35 = &v106;
                  goto LABEL_47;
                }
              }

              else if (v33 <= 8 && ((1 << v33) & 0x1B0) == 0)
              {
                if (v33 == 3)
                {
                  v6 = v26[2];
                  v26[2] = 0;
                  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    v6 = WTF::StringImpl::destroy(v6, v30);
                  }
                }

                else if (v33 == 6)
                {
                  v6 = v26[2];
                  v26[2] = 0;
                  if (v6)
                  {
                    v6 = WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v6, v30);
                  }
                }
              }

              v26[2] = v106;
              v48 = v107;
              v106 = 0;
              v107 = 0;
              v26[3] = v48;
              v44 = 2;
            }

            else
            {
              if (*(v26 + 32) <= 2u)
              {
                if (v33 >= 2)
                {
                  v6 = WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v26 + 2), v30);
                }
              }

              else if (v33 <= 8 && ((1 << v33) & 0x1B0) == 0)
              {
                if (v33 == 3)
                {
                  v45 = v106;
                  v106 = 0;
                  v6 = v26[2];
                  v26[2] = v45;
                  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    v6 = WTF::StringImpl::destroy(v6, v30);
                  }

                  goto LABEL_82;
                }

                if (v33 == 6)
                {
                  v6 = v26[2];
                  v26[2] = 0;
                  if (v6)
                  {
                    v6 = WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v6, v30);
                  }
                }
              }

              v49 = v106;
              v106 = 0;
              v26[2] = v49;
              v44 = 3;
            }

            goto LABEL_148;
          }

          if (v108)
          {
            if (*(v26 + 32) > 2u)
            {
              if (v33 <= 8 && ((1 << v33) & 0x1B0) == 0)
              {
                if (v33 == 3)
                {
                  v6 = v26[2];
                  v26[2] = 0;
                  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    v6 = WTF::StringImpl::destroy(v6, v30);
                  }
                }

                else if (v33 == 6)
                {
                  v6 = v26[2];
                  v26[2] = 0;
                  if (v6)
                  {
                    v6 = WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v6, v30);
                  }
                }
              }

LABEL_128:
              v44 = 1;
              goto LABEL_148;
            }

            if (!*(v26 + 32))
            {
              goto LABEL_128;
            }

            if (v33 != 1)
            {
              v6 = WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v26 + 2), v30);
              goto LABEL_128;
            }
          }

          else
          {
            if (*(v26 + 32) > 2u)
            {
              if (v33 <= 8 && ((1 << v33) & 0x1B0) == 0)
              {
                if (v33 == 3)
                {
                  v6 = v26[2];
                  v26[2] = 0;
                  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    v6 = WTF::StringImpl::destroy(v6, v30);
                  }
                }

                else if (v33 == 6)
                {
                  v6 = v26[2];
                  v26[2] = 0;
                  if (v6)
                  {
                    v6 = WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v6, v30);
                  }
                }
              }

LABEL_102:
              v26[2] = 0;
              *(v26 + 32) = 0;
              goto LABEL_82;
            }

            if (*(v26 + 32))
            {
              if (v33 != 1)
              {
                v6 = WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v26 + 2), v30);
              }

              goto LABEL_102;
            }

            v26[2] = 0;
          }
        }

        else if (v108 <= 5u)
        {
          if (v108 == 4)
          {
            if (*(v26 + 32) > 4u)
            {
              if (*(v26 + 32) <= 6u && v33 != 5)
              {
                v6 = v26[2];
                v26[2] = 0;
                if (v6)
                {
                  v6 = WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v6, v30);
                }
              }

              goto LABEL_200;
            }

            if (*(v26 + 32) <= 2u)
            {
              if (v33 >= 2)
              {
                v6 = WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v26 + 2), v30);
              }

LABEL_200:
              v26[2] = v106;
              v44 = 4;
              goto LABEL_148;
            }

            if (v33 == 3)
            {
              v6 = v26[2];
              v26[2] = 0;
              if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                v6 = WTF::StringImpl::destroy(v6, v30);
              }

              goto LABEL_200;
            }

            v26[2] = v106;
          }

          else
          {
            if (*(v26 + 32) <= 4u)
            {
              if (*(v26 + 32) > 2u)
              {
                if (v33 == 3)
                {
                  v6 = v26[2];
                  v26[2] = 0;
                  if (v6)
                  {
                    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      v6 = WTF::StringImpl::destroy(v6, v30);
                    }
                  }
                }
              }

              else if (v33 >= 2)
              {
                v6 = WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v26 + 2), v30);
              }

LABEL_225:
              v26[2] = v106;
              v44 = 5;
              goto LABEL_148;
            }

            if (*(v26 + 32) > 6u)
            {
              goto LABEL_225;
            }

            if (v33 != 5)
            {
              v6 = v26[2];
              v26[2] = 0;
              if (v6)
              {
                v6 = WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v6, v30);
              }

              goto LABEL_225;
            }

            v26[2] = v106;
          }
        }

        else
        {
          if (v108 == 6)
          {
            if (*(v26 + 32) <= 2u)
            {
              if (v33 >= 2)
              {
                v6 = WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v26 + 2), v30);
              }
            }

            else if (v33 <= 8 && ((1 << v33) & 0x1B0) == 0)
            {
              if (v33 == 3)
              {
                v6 = v26[2];
                v26[2] = 0;
                if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  v6 = WTF::StringImpl::destroy(v6, v30);
                }
              }

              else if (v33 == 6)
              {
                v47 = v106;
                v106 = 0;
                v6 = v26[2];
                v26[2] = v47;
                if (v6)
                {
                  v6 = WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v6, v30);
                }

                goto LABEL_82;
              }
            }

            v46 = v106;
            v106 = 0;
            v26[2] = v46;
            v44 = 6;
            goto LABEL_148;
          }

          if (v108 == 7)
          {
            if (*(v26 + 32) <= 5u)
            {
              if (*(v26 + 32) > 2u)
              {
                if (v33 - 4 >= 2)
                {
                  v6 = v26[2];
                  v26[2] = 0;
                  if (v6)
                  {
                    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      v6 = WTF::StringImpl::destroy(v6, v30);
                    }
                  }
                }
              }

              else if (v33 >= 2)
              {
                v6 = WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v26 + 2), v30);
              }

              goto LABEL_168;
            }

            if (*(v26 + 32) > 7u)
            {
              goto LABEL_168;
            }

            if (v33 == 6)
            {
              v6 = v26[2];
              v26[2] = 0;
              if (v6)
              {
                v6 = WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v6, v30);
              }

LABEL_168:
              v44 = 7;
LABEL_148:
              *(v26 + 32) = v44;
            }
          }

          else
          {
            if (*(v26 + 32) <= 5u)
            {
              if (*(v26 + 32) > 2u)
              {
                if (v33 - 4 >= 2)
                {
                  v6 = v26[2];
                  v26[2] = 0;
                  if (v6)
                  {
                    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      v6 = WTF::StringImpl::destroy(v6, v30);
                    }
                  }
                }
              }

              else if (v33 >= 2)
              {
                v6 = WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v26 + 2), v30);
              }

LABEL_195:
              v44 = 8;
              goto LABEL_148;
            }

            if (*(v26 + 32) <= 7u)
            {
              if (v33 == 6)
              {
                v6 = v26[2];
                v26[2] = 0;
                if (v6)
                {
                  v6 = WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v6, v30);
                }
              }

              goto LABEL_195;
            }

            if (v33 != 8)
            {
              goto LABEL_195;
            }
          }
        }
      }
    }

    else
    {
      if (v31 != 255)
      {
        if (!*(v26 + 40))
        {
          v26[1] = 0;
          goto LABEL_82;
        }

        v6 = mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1> &>((v26 + 1), v30);
      }

      v26[1] = 0;
      *(v26 + 40) = 0;
    }

LABEL_82:
    if (v109 != 255)
    {
      v6 = mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1> &>(&v105, v30);
    }

LABEL_84:
    v40 = v90;
    if (v90)
    {
      v41 = *(v90 - 12) + 1;
    }

    else
    {
      v41 = 1;
    }

    *(v90 - 12) = v41;
    v42 = (*(v40 - 16) + v41);
    v43 = *(v40 - 4);
    if (v43 <= 0x400)
    {
      if (3 * v43 > 4 * v42)
      {
        goto LABEL_90;
      }

LABEL_89:
      v6 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IndexKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(&v90);
      goto LABEL_90;
    }

    if (v43 <= 2 * v42)
    {
      goto LABEL_89;
    }

LABEL_90:
    if (BYTE8(v92) == 1 && v92 != 255)
    {
      v6 = mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1> &>(v91, v30);
    }

    if (++v16 == v15)
    {
      v55 = v90;
      v7 = *(a2 + 1);
      v14 = *(a2 + 2);
      v9 = *a2;
      goto LABEL_235;
    }
  }

  if (v90)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IndexKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v90, v18);
  }

LABEL_232:
  v9 = *a2;
  v50 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v51 = *(a2 + 3);
  if (v51 && v50)
  {
    (*(*v51 + 16))(v51, v9);
  }

  LOBYTE(v55) = 0;
  LOBYTE(v91[0]) = 0;
  v104 = 0;
LABEL_280:
  if (v89)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v88, v9);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v86 + 8, v64);
    v65 = v86;
    *&v86 = 0;
    if (v65)
    {
      WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v65, v9);
    }
  }

LABEL_283:
  if (v85)
  {
    if (v84 <= 2u)
    {
      if (v84 >= 2u)
      {
        WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v82, v9);
      }
    }

    else if (v84 <= 8u && ((1 << v84) & 0x1B0) == 0)
    {
      if (v84 == 3)
      {
        v66 = v82;
        v82 = 0;
        if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v66, v9);
        }
      }

      else if (v84 == 6)
      {
        v67 = v82;
        v82 = 0;
        if (v67)
        {
          WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v67, v9);
        }
      }
    }
  }

  if (v55)
  {
    result = WebKit::NetworkStorageManager::putOrAdd(a3, a1, v91, &v97, v100);
    if (v104)
    {
      if (v102)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IndexKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v102, v69);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v101, v69);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v100[1], v70);
      result = v100[0];
      v100[0] = 0;
      if (result)
      {
        result = WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(result, v71);
      }

      if (v99 <= 2u)
      {
        if (v99 >= 2u)
        {
          return WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v98, v71);
        }
      }

      else if (v99 <= 8u && ((1 << v99) & 0x1B0) == 0)
      {
        if (v99 == 3)
        {
          result = v98[0];
          v98[0] = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              return WTF::StringImpl::destroy(result, v71);
            }
          }
        }

        else if (v99 == 6)
        {
          result = v98[0];
          v98[0] = 0;
          if (result)
          {
            return WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(result, v71);
          }
        }
      }
    }

    return result;
  }

LABEL_315:
  v72 = *a2;
  v73 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    v74 = v73 == 0;
  }

  else
  {
    v74 = 1;
  }

  if (!v74)
  {
    return (*(*result + 16))(result, v72);
  }

  return result;
}

void IPC::handleMessage<Messages::NetworkStorageManager::GetRecord,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::IDBRequestData const&,WebCore::IDBGetRecordData const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<WebCore::IDBRequestData>(v17, a1);
  if ((v19 & 1) == 0)
  {
LABEL_10:
    LOBYTE(v13[0]) = 0;
    v16 = 0;
    goto LABEL_11;
  }

  v4 = IPC::ArgumentCoder<WebCore::IDBGetRecordData,void>::decode(a1, v20);
  if ((v21 & 1) == 0)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v4 = *(a1 + 3);
    if (v4)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  while ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    if (v6)
    {
      v4 = (*(*v4 + 16))(v4, v5);
      if (v21)
      {
        continue;
      }
    }

    goto LABEL_10;
  }

  v13[4] = v17[4];
  v13[5] = v17[5];
  v14 = v18;
  v13[0] = v17[0];
  v13[1] = v17[1];
  v13[2] = v17[2];
  v13[3] = v17[3];
  WebCore::IDBKeyRangeData::IDBKeyRangeData(v15, v20);
  v15[72] = v20[72];
  v16 = 1;
  if ((v21 & 1) == 0)
  {
    goto LABEL_6;
  }

  WebCore::IDBKeyRangeData::~IDBKeyRangeData(v20, v7);
  if (v16)
  {
    goto LABEL_6;
  }

LABEL_11:
  v9 = *a1;
  v10 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v11 = *(a1 + 3);
  if (v11)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    (*(*v11 + 16))(v11, v9);
    if (v16)
    {
LABEL_6:
      WebKit::NetworkStorageManager::getRecord(a2, v13);
      if (v16)
      {
        WebCore::IDBKeyRangeData::~IDBKeyRangeData(v15, v8);
      }
    }
  }
}

void IPC::handleMessage<Messages::NetworkStorageManager::GetAllRecords,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::IDBRequestData const&,WebCore::IDBGetAllRecordsData const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<WebCore::IDBRequestData>(v19, a1);
  if ((v21 & 1) == 0)
  {
LABEL_10:
    LOBYTE(v13[0]) = 0;
    v18 = 0;
    goto LABEL_11;
  }

  v4 = IPC::ArgumentCoder<WebCore::IDBGetAllRecordsData,void>::decode(a1, v22);
  if ((v26 & 1) == 0)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v4 = *(a1 + 3);
    if (v4)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  while ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    if (v6)
    {
      v4 = (*(*v4 + 16))(v4, v5);
      if (v26)
      {
        continue;
      }
    }

    goto LABEL_10;
  }

  v13[4] = v19[4];
  v13[5] = v19[5];
  v14 = v20;
  v13[0] = v19[0];
  v13[1] = v19[1];
  v13[2] = v19[2];
  v13[3] = v19[3];
  WebCore::IDBKeyRangeData::IDBKeyRangeData(v15, v22);
  *&v15[72] = v23;
  v16 = v24;
  v17 = v25;
  v18 = 1;
  if ((v26 & 1) == 0)
  {
    goto LABEL_6;
  }

  WebCore::IDBKeyRangeData::~IDBKeyRangeData(v22, v7);
  if (v18)
  {
    goto LABEL_6;
  }

LABEL_11:
  v9 = *a1;
  v10 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v11 = *(a1 + 3);
  if (v11)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    (*(*v11 + 16))(v11, v9);
    if (v18)
    {
LABEL_6:
      WebKit::NetworkStorageManager::getAllRecords(a2, v13);
      if (v18)
      {
        WebCore::IDBKeyRangeData::~IDBKeyRangeData(v15, v8);
      }
    }
  }
}

void IPC::handleMessage<Messages::NetworkStorageManager::GetCount,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::IDBRequestData const&,WebCore::IDBKeyRangeData const&)>(IPC::Decoder *a1, WebKit::NetworkStorageManager *a2)
{
  IPC::Decoder::decode<std::tuple<WebCore::IDBRequestData,WebCore::IDBKeyRangeData>>(v4, a1);
  if (v6 == 1)
  {
    WebKit::NetworkStorageManager::getCount(a2, v4, v5);
    if (v6)
    {
      WebCore::IDBKeyRangeData::~IDBKeyRangeData(v5, v3);
    }
  }
}

void IPC::handleMessage<Messages::NetworkStorageManager::DeleteRecord,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::IDBRequestData const&,WebCore::IDBKeyRangeData const&)>(IPC::Decoder *a1, WebKit::NetworkStorageManager *a2)
{
  IPC::Decoder::decode<std::tuple<WebCore::IDBRequestData,WebCore::IDBKeyRangeData>>(v4, a1);
  if (v6 == 1)
  {
    WebKit::NetworkStorageManager::deleteRecord(a2, v4, v5);
    if (v6)
    {
      WebCore::IDBKeyRangeData::~IDBKeyRangeData(v5, v3);
    }
  }
}

void IPC::handleMessage<Messages::NetworkStorageManager::OpenCursor,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::IDBRequestData const&,WebCore::IDBCursorInfo const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<WebCore::IDBRequestData>(v22, a1);
  if ((v24 & 1) == 0)
  {
LABEL_10:
    LOBYTE(v13[0]) = 0;
    v21 = 0;
    goto LABEL_11;
  }

  v4 = IPC::ArgumentCoder<WebCore::IDBCursorInfo,void>::decode(a1, v25);
  if ((v29 & 1) == 0)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v4 = *(a1 + 3);
    if (v4)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  while ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    if (v6)
    {
      v4 = (*(*v4 + 16))(v4, v5);
      if (v29)
      {
        continue;
      }
    }

    goto LABEL_10;
  }

  v13[4] = v22[4];
  v13[5] = v22[5];
  v14 = v23;
  v13[0] = v22[0];
  v13[1] = v22[1];
  v13[2] = v22[2];
  v13[3] = v22[3];
  v18 = v26;
  v17 = v25[2];
  v16 = v25[1];
  v15 = v25[0];
  WebCore::IDBKeyRangeData::IDBKeyRangeData(v19, v27);
  v19[36] = v27[36];
  v20 = v28;
  v21 = 1;
  if ((v29 & 1) == 0)
  {
    goto LABEL_6;
  }

  WebCore::IDBKeyRangeData::~IDBKeyRangeData(v27, v7);
  if (v21)
  {
    goto LABEL_6;
  }

LABEL_11:
  v9 = *a1;
  v10 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v11 = *(a1 + 3);
  if (v11)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    (*(*v11 + 16))(v11, v9);
    if (v21)
    {
LABEL_6:
      WebKit::NetworkStorageManager::openCursor(a2, v13);
      if (v21)
      {
        WebCore::IDBKeyRangeData::~IDBKeyRangeData(v19, v8);
      }
    }
  }
}

void IPC::handleMessage<Messages::NetworkStorageManager::IterateCursor,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::IDBRequestData const&,WebCore::IDBIterateCursorData const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<WebCore::IDBRequestData>(v29, a1);
  if (v31)
  {
    v4 = IPC::ArgumentCoder<WebCore::IDBIterateCursorData,void>::decode(a1, &v32);
    if (v42)
    {
      while ((v31 & 1) == 0)
      {
        __break(1u);
LABEL_46:
        if (v6)
        {
          v4 = (*(*v4 + 16))(v4, v5);
          if (v42)
          {
            continue;
          }
        }

        goto LABEL_40;
      }

      v16[4] = v29[4];
      v16[5] = v29[5];
      v17 = v30;
      v16[0] = v29[0];
      v16[1] = v29[1];
      v16[2] = v29[2];
      v16[3] = v29[3];
      v18 = v32;
      LOBYTE(v19) = 0;
      v21 = -1;
      if (v35 > 4u)
      {
        if (v35 > 6u)
        {
          if (v35 - 7 >= 2)
          {
LABEL_20:
            v22 = v36;
            LOBYTE(v23) = 0;
            v25 = -1;
            if (v39 > 4u)
            {
              if (v39 > 6u)
              {
                if (v39 - 7 >= 2)
                {
LABEL_36:
                  v26 = v40;
                  v27 = v41;
                  v28 = 1;
                  WebCore::IDBKeyRangeData::~IDBKeyRangeData(&v32, v5);
                  WebKit::NetworkStorageManager::iterateCursor(a2, v16);
                  if (v28)
                  {
                    WebCore::IDBKeyRangeData::~IDBKeyRangeData(&v18, v11);
                  }

                  return;
                }

LABEL_35:
                v25 = v39;
                goto LABEL_36;
              }

              if (v39 == 5)
              {
                v9 = v37;
LABEL_33:
                v23 = v9;
                goto LABEL_35;
              }
            }

            else
            {
              if (v39 <= 1u)
              {
                if (!v39)
                {
                  v23 = 0;
                }

                goto LABEL_35;
              }

              if (v39 == 2)
              {
                v23 = v37;
                v10 = v38;
                v37 = 0;
                v38 = 0;
                v24 = v10;
                goto LABEL_35;
              }

              if (v39 != 3)
              {
                v23 = v37;
                goto LABEL_35;
              }
            }

            v9 = v37;
            v37 = 0;
            goto LABEL_33;
          }

LABEL_19:
          v21 = v35;
          goto LABEL_20;
        }

        if (v35 == 5)
        {
          v7 = v33;
LABEL_17:
          v19 = v7;
          goto LABEL_19;
        }
      }

      else
      {
        if (v35 <= 1u)
        {
          if (!v35)
          {
            v19 = 0;
          }

          goto LABEL_19;
        }

        if (v35 == 2)
        {
          v19 = v33;
          v8 = v34;
          v33 = 0;
          v34 = 0;
          v20 = v8;
          goto LABEL_19;
        }

        if (v35 != 3)
        {
          v19 = v33;
          goto LABEL_19;
        }
      }

      v7 = v33;
      v33 = 0;
      goto LABEL_17;
    }

    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v4 = *(a1 + 3);
    if (v4)
    {
      goto LABEL_46;
    }
  }

LABEL_40:
  v12 = *a1;
  v13 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v14 = *(a1 + 3);
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
    (*(*v14 + 16))(v14, v12);
  }
}

void IPC::handleMessage<Messages::NetworkStorageManager::GetAllDatabaseNamesAndVersions,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::IDBResourceIdentifier const&,WebCore::ClientOrigin const&)>(void **a1, uint64_t *a2, WebKit::NetworkStorageManager *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(a2, &v21);
  if (v22)
  {
    v6 = IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a2, &v31);
    if (v37)
    {
      while ((v22 & 1) == 0)
      {
        __break(1u);
LABEL_44:
        if (v8)
        {
          v6 = (*(*v6 + 16))(v6, v7);
          if (v37)
          {
            continue;
          }
        }

        goto LABEL_38;
      }

      v23 = v21;
      LOBYTE(v24[0]) = 0;
      v26 = -1;
      if (v33)
      {
        if (v33 == 255)
        {
          goto LABEL_7;
        }

        *v24 = v31;
      }

      else
      {
        v9 = v31;
        v31 = 0uLL;
        *v24 = v9;
        v25 = v32;
      }

      v26 = v33;
LABEL_7:
      LOBYTE(v27[0]) = 0;
      v29 = -1;
      if (v36)
      {
        if (v36 != 255)
        {
          *v27 = v34;
          v29 = v36;
        }

        v30 = 1;
      }

      else
      {
        *v27 = v34;
        v28 = v35;
        v29 = 0;
        v30 = 1;
        v34 = 0uLL;
      }

      v36 = -1;
      if (!v33)
      {
        v10 = *(&v31 + 1);
        *(&v31 + 1) = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v7);
        }

        v11 = v31;
        *&v31 = 0;
        if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v7);
        }
      }

      WebKit::NetworkStorageManager::getAllDatabaseNamesAndVersions(a3, a1, &v23, v24);
      if (v30)
      {
        if (!v29)
        {
          v13 = v27[1];
          v27[1] = 0;
          if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v12);
          }

          v14 = v27[0];
          v27[0] = 0;
          if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v12);
          }
        }

        v29 = -1;
        if (!v26)
        {
          v15 = v24[1];
          v24[1] = 0;
          if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v12);
          }

          v16 = v24[0];
          v24[0] = 0;
          if (v16)
          {
            if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v16, v12);
            }
          }
        }
      }

      return;
    }

    v7 = *a2;
    v8 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    v6 = a2[3];
    if (v6)
    {
      goto LABEL_44;
    }
  }

LABEL_38:
  v17 = *a2;
  v18 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v19 = a2[3];
  if (v19)
  {
    v20 = v18 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    (*(*v19 + 16))(v19, v17);
  }
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkStorageManager::CacheStorageOpenCache,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ClientOrigin const&,WTF::String const&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<std::tuple<WebCore::ClientOrigin,WTF::String>,void>::decode<IPC::Decoder>(a2, &v17);
  if (v24 & 1) != 0 || ((v7 = *a2, v14 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) ? (v15 = v14 == 0) : (v15 = 1), !v15 && (result = (*(*result + 16))(result, v7), (v24)))
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F1600;
      *(v11 + 1) = v8;
      *(v11 + 2) = a1;
      v16 = v11;
      if ((v24 & 1) == 0)
      {
        __break(1u);
      }

      WebKit::NetworkStorageManager::cacheStorageOpenCache(a3, &v17, &v23, &v16);
      result = v16;
      v16 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v24 == 1)
  {
    result = v23;
    v23 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v7);
    }

    if (!v22)
    {
      v12 = v21;
      v21 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v7);
      }

      result = v20;
      v20 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }

    v22 = -1;
    if (!v19)
    {
      v13 = v18;
      v18 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v7);
      }

      result = v17;
      v17 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v7);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkStorageManager::CacheStorageRemoveCache,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<BOOL,WebCore::DOMCacheEngine::Error> const&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(v13, a2);
  if (v14 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F1628;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkStorageManager::cacheStorageRemoveCache(a3, v13[0], v13[1], &v12);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkStorageManager::CacheStorageAllCaches,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ClientOrigin const&,unsigned long long,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a2, v45);
  if ((v51 & 1) == 0)
  {
    v29 = *a2;
    v30 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v31 = *(a2 + 3);
    v32 = !v31 || v30 == 0;
    if (v32 || ((*(*v31 + 16))(v31, v29), (v51 & 1) == 0))
    {
LABEL_63:
      v33 = *a2;
      v34 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      result = *(a2 + 3);
      if (result && v34)
      {
        return (*(*result + 16))(result, v33);
      }

      return result;
    }
  }

  v7 = *(a2 + 1);
  v8 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *a2;
  v10 = v8 - *a2;
  v11 = v7 >= v10;
  v12 = v7 - v10;
  if (v11 && v12 > 7)
  {
    *(a2 + 2) = v8 + 1;
    if (!v8)
    {
      goto LABEL_71;
    }

    v3 = *v8;
    LOBYTE(v37[0]) = 0;
    v39 = -1;
    if (v47)
    {
      if (v47 == 255)
      {
LABEL_11:
        LOBYTE(v40[0]) = 0;
        v42 = -1;
        if (v50)
        {
          if (v50 == 255)
          {
LABEL_14:
            v43 = v3;
            v16 = 1;
            v44 = 1;
            if (v50)
            {
              goto LABEL_21;
            }

            goto LABEL_15;
          }

          *v40 = *v48;
        }

        else
        {
          v15 = *v48;
          v48[0] = 0;
          v48[1] = 0;
          *v40 = v15;
          v41 = v49;
        }

        v42 = v50;
        goto LABEL_14;
      }

      *v37 = *v45;
    }

    else
    {
      v14 = *v45;
      v45[0] = 0;
      v45[1] = 0;
      *v37 = v14;
      v38 = v46;
    }

    v39 = v47;
    goto LABEL_11;
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v35 = *(a2 + 3);
  if (v35)
  {
    if (v7)
    {
      (*(*v35 + 16))(v35);
      v9 = *a2;
      v7 = *(a2 + 1);
      goto LABEL_71;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = 0;
LABEL_71:
  *a2 = 0;
  *(a2 + 1) = 0;
  v36 = *(a2 + 3);
  if (v36 && v7)
  {
    (*(*v36 + 16))(v36);
  }

  LOBYTE(v37[0]) = 0;
  v44 = 0;
  if ((v51 & 1) == 0)
  {
    goto LABEL_63;
  }

  v16 = 0;
  if (!v50)
  {
LABEL_15:
    v17 = v48[1];
    v48[1] = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v9);
    }

    v18 = v48[0];
    v48[0] = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v9);
    }
  }

LABEL_21:
  v50 = -1;
  if (v47)
  {
    goto LABEL_27;
  }

  v19 = v45[1];
  v45[1] = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v9);
  }

  v20 = v45[0];
  v45[0] = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v9);
    if ((v16 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  else
  {
LABEL_27:
    if ((v16 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v22 & 1) == 0)
  {
    goto LABEL_37;
  }

  v23 = result;
  while (1)
  {
    v24 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v25 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v25 == v24)
    {
      goto LABEL_34;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_34:
  v26 = WTF::fastMalloc(0x18);
  *v26 = &unk_1F10F1650;
  *(v26 + 1) = v23;
  *(v26 + 2) = a1;
  v45[0] = v26;
  WebKit::NetworkStorageManager::cacheStorageAllCaches(a3, v37, v3, v45);
  result = v45[0];
  v45[0] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v44)
  {
LABEL_37:
    if (!v42)
    {
      v27 = v40[1];
      v40[1] = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v22);
      }

      result = v40[0];
      v40[0] = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v22);
      }
    }

    v42 = -1;
    if (!v39)
    {
      v28 = v37[1];
      v37[1] = 0;
      if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v22);
      }

      result = v37[0];
      v37[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v22);
        }
      }
    }
  }

  return result;
}

_DWORD *IPC::handleMessage<Messages::NetworkStorageManager::CacheStorageReference,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>)>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(v8, a2);
  if (v9 == 1)
  {
    v6 = v8[0];
    v7 = v8[1];

    return WebKit::NetworkStorageManager::cacheStorageReference(a3, a1, v6, v7);
  }

  return result;
}

_DWORD *IPC::handleMessage<Messages::NetworkStorageManager::CacheStorageDereference,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>)>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::RTCDataChannelLocalIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>(v8, a2);
  if (v9 == 1)
  {
    v6 = v8[0];
    v7 = v8[1];

    return WebKit::NetworkStorageManager::cacheStorageDereference(a3, a1, v6, v7);
  }

  return result;
}

mpark *IPC::handleMessage<Messages::NetworkStorageManager::LockCacheStorage,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::ClientOrigin const&)>(IPC::Connection *a1, IPC::Decoder *a2, WebKit::NetworkStorageManager *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::tuple<WebCore::ClientOrigin>>(&v9, a2);
  if (v15 == 1)
  {
    result = WebKit::NetworkStorageManager::lockCacheStorage(a3, a1, &v9);
    if (v15)
    {
      if (!v14)
      {
        v7 = v13;
        v13 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v6);
        }

        result = v12;
        v12 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v6);
        }
      }

      v14 = -1;
      if (!v11)
      {
        v8 = v10;
        v10 = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v6);
        }

        result = v9;
        v9 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v6);
          }
        }
      }
    }
  }

  return result;
}

mpark *IPC::handleMessage<Messages::NetworkStorageManager::UnlockCacheStorage,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::ClientOrigin const&)>(IPC::Connection *a1, IPC::Decoder *a2, WebKit::NetworkStorageManager *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::tuple<WebCore::ClientOrigin>>(&v9, a2);
  if (v15 == 1)
  {
    result = WebKit::NetworkStorageManager::unlockCacheStorage(a3, a1, &v9);
    if (v15)
    {
      if (!v14)
      {
        v7 = v13;
        v13 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v6);
        }

        result = v12;
        v12 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v6);
        }
      }

      v14 = -1;
      if (!v11)
      {
        v8 = v10;
        v10 = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v6);
        }

        result = v9;
        v9 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v6);
          }
        }
      }
    }
  }

  return result;
}

void IPC::handleMessageAsync<Messages::NetworkStorageManager::CacheStorageRetrieveRecords,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::RetrieveRecordsOptions &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector::Error> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v57);
  if ((v58 & 1) == 0)
  {
    goto LABEL_28;
  }

  IPC::ArgumentCoder<WebCore::RetrieveRecordsOptions,void>::decode(v4, &v59);
  if ((v83 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_3:
  if (v58)
  {
    v31 = v57;
    v6 = v59;
    v7 = v62;
    v59 = 0;
    v32 = v6;
    v33 = v60;
    v34 = v61;
    LODWORD(v60) = v60 & 0xFFFFFFFE;
    v62 = 0;
    v35 = v7;
    v36 = v63;
    v37 = v64;
    LODWORD(v63) = v63 & 0xFFFFFFFE;
    v8 = v67;
    v38 = v65;
    v9 = v66;
    v66 = 0u;
    v39 = v9;
    v67 = 0;
    v40 = v8;
    v10 = v68;
    v68 = 0;
    v41 = v10;
    v11 = v69;
    v69 = 0;
    v42 = v11;
    v12 = v70;
    v70 = 0;
    v43 = v12;
    v13 = v71;
    v71 = 0;
    v44 = v13;
    v46 = v73;
    v45 = v72;
    v14 = v74;
    v74 = 0u;
    v47 = v14;
    v50 = v77;
    v48 = v75;
    v49 = v76;
    v15 = v78;
    v75 = 0;
    v78 = 0;
    v51 = v15;
    v52 = v79;
    *v53 = v80;
    v54 = v81;
    v55 = v82;
    v56 = 1;
    if (v83)
    {
      v80 = 0uLL;
      v81 = 0;
      WebCore::ResourceRequest::~ResourceRequest(&v59);
    }

    goto LABEL_6;
  }

  do
  {
    __break(1u);
LABEL_27:
    v25 = *v4;
    v26 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v27 = *(v4 + 3);
    if (v27)
    {
      if (v26)
      {
        (*(*v27 + 16))(v27, v25);
        if (v83)
        {
          goto LABEL_3;
        }
      }
    }

LABEL_28:
    LOBYTE(v31) = 0;
    v56 = 0;
    v17 = *v4;
    v28 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v29 = *(v4 + 3);
    if (v29)
    {
      v30 = v28 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      goto LABEL_15;
    }

    (*(*v29 + 16))(v29, v17);
    if ((v56 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_6:
    v16 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v17 & 1) == 0)
    {
      goto LABEL_15;
    }

    v4 = v16;
    while (1)
    {
      v18 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v19 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v19 == v18)
      {
        goto LABEL_12;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_12:
    v20 = WTF::fastMalloc(0x18);
    *v20 = &unk_1F10F1678;
    v20[1] = v4;
    v20[2] = a1;
    v59 = v20;
  }

  while ((v56 & 1) == 0);
  WebKit::NetworkStorageManager::cacheStorageRetrieveRecords(a3, v31, *(&v31 + 1), &v32, &v59);
  v21 = v59;
  v59 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

LABEL_15:
  if (v56 == 1)
  {
    v22 = v54;
    v54 = 0;
    if (v22)
    {
      WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v22, v17);
    }

    v23 = v53[1];
    v53[1] = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v17);
    }

    v24 = v53[0];
    v53[0] = 0;
    if (v24)
    {
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v17);
      }
    }

    WebCore::ResourceRequest::~ResourceRequest(&v32);
  }
}

void IPC::handleMessageAsync<Messages::NetworkStorageManager::CacheStorageRemoveRecords,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ResourceRequest &&,WebCore::CacheQueryOptions &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v58);
  if (v59)
  {
    IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(v4, &v60);
    if (v80 & 1) != 0 || (v27 = *v4, v28 = *(v4 + 1), *v4 = 0, *(v4 + 1) = 0, (v29 = *(v4 + 3)) != 0) && v28 && ((*(*v29 + 16))(v29, v27), (v80))
    {
      v6 = IPC::ArgumentCoder<WebKit::AppPrivacyReportTestingData,void>::decode(v4);
      if ((v6 & 0x1000000) == 0)
      {
        goto LABEL_23;
      }

      if ((v59 & 1) == 0 || (v80 & 1) == 0)
      {
        goto LABEL_22;
      }

      v34 = v58;
      v7 = v60;
      v8 = v63;
      v60 = 0;
      v35 = v7;
      v36 = v61;
      v37 = v62;
      LODWORD(v61) = v61 & 0xFFFFFFFE;
      v63 = 0;
      v38 = v8;
      v39 = v64;
      v40 = v65;
      LODWORD(v64) = v64 & 0xFFFFFFFE;
      v9 = v68;
      v41 = v66;
      v10 = v67;
      v67 = 0u;
      v42 = v10;
      v68 = 0;
      v43 = v9;
      v11 = v69;
      v69 = 0;
      v44 = v11;
      v12 = v70;
      v70 = 0;
      v45 = v12;
      v13 = v71;
      v71 = 0;
      v46 = v13;
      v14 = v72;
      v72 = 0;
      v47 = v14;
      v49 = v74;
      v48 = v73;
      v15 = v75;
      v75 = 0u;
      v50 = v15;
      v53 = v78;
      v51 = v76;
      v52 = v77;
      v16 = v79;
      v76 = 0;
      v79 = 0;
      v54 = v16;
      v56 = BYTE2(v6);
      v17 = 1;
      v55 = v6;
      goto LABEL_7;
    }
  }

  LOBYTE(v34) = 0;
  v57 = 0;
LABEL_27:
  v30 = *v4;
  v31 = *(v4 + 1);
  *v4 = 0;
  *(v4 + 1) = 0;
  v32 = *(v4 + 3);
  if (v32)
  {
    v33 = v31 == 0;
  }

  else
  {
    v33 = 1;
  }

  if (!v33)
  {
    (*(*v32 + 16))(v32, v30);
    if (v57)
    {
      while (1)
      {
        v18 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v4 = v18;
        while (1)
        {
          v20 = *a1;
          if ((*a1 & 1) == 0)
          {
            break;
          }

          v21 = *a1;
          atomic_compare_exchange_strong_explicit(a1, &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v21 == v20)
          {
            goto LABEL_16;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
        v22 = WTF::fastMalloc(0x18);
        *v22 = &unk_1F10F16A0;
        v22[1] = v4;
        v22[2] = a1;
        v60 = v22;
        if (v57)
        {
          WebKit::NetworkStorageManager::cacheStorageRemoveRecords(a3, v34, *(&v34 + 1), &v35, &v55, &v60);
          v23 = v60;
          v60 = 0;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }

          break;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        v24 = *v4;
        v25 = *(v4 + 1);
        *v4 = 0;
        *(v4 + 1) = 0;
        v26 = *(v4 + 3);
        if (v26 && v25)
        {
          (*(*v26 + 16))(v26, v24);
        }

        v17 = 0;
        LOBYTE(v34) = 0;
LABEL_7:
        v57 = v17;
        if (v80)
        {
          WebCore::ResourceRequest::~ResourceRequest(&v60);
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_27;
        }
      }
    }
  }

  if (v57 == 1)
  {
    WebCore::ResourceRequest::~ResourceRequest(&v35);
  }
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkStorageManager::CacheStoragePutRecords,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection&,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> &&)> &&)>(atomic_ullong *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v22);
  if ((v23 & 1) == 0)
  {
    goto LABEL_19;
  }

  IPC::VectorArgumentCoder<false,WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v4, &v24, v6);
  if ((v26 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v23)
  {
    v19 = v22;
    v20[0] = v24;
    v8 = v25;
    v24 = 0;
    v25 = 0;
    v20[1] = v8;
    v21 = 1;
    WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, v7);
    goto LABEL_5;
  }

  do
  {
    __break(1u);
LABEL_18:
    v14 = *v4;
    v15 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    v16 = v4[3];
    if (v16)
    {
      if (v15)
      {
        (*(*v16 + 16))(v16, v14);
        if (v26)
        {
          goto LABEL_3;
        }
      }
    }

LABEL_19:
    LOBYTE(v19) = 0;
    v21 = 0;
    v10 = *v4;
    v17 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    result = v4[3];
    if (result)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_14;
    }

    result = (*(*result + 16))(result, v10);
    if ((v21 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_5:
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }

    v4 = result;
    while (1)
    {
      v11 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v12 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v12 == v11)
      {
        goto LABEL_11;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_11:
    v13 = WTF::fastMalloc(0x18);
    *v13 = &unk_1F10F16C8;
    *(v13 + 1) = v4;
    *(v13 + 2) = a1;
    v24 = v13;
  }

  while ((v21 & 1) == 0);
  WebKit::NetworkStorageManager::cacheStoragePutRecords(a3, a1, v19, *(&v19 + 1), v20, &v24);
  result = v24;
  v24 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

LABEL_14:
  if (v21 == 1)
  {
    return WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v20, v10);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkStorageManager::CacheStorageClearMemoryRepresentation,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::tuple<WebCore::ClientOrigin>>(&v15, a2);
  if (v21 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
      while (1)
      {
        v9 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v10 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v10 == v9)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(0x18);
      *v11 = &unk_1F10F16F0;
      *(v11 + 1) = v8;
      *(v11 + 2) = a1;
      v14 = v11;
      if ((v21 & 1) == 0)
      {
        __break(1u);
      }

      WebKit::NetworkStorageManager::cacheStorageClearMemoryRepresentation(a3, &v15, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v21 == 1)
  {
    if (!v20)
    {
      v12 = v19;
      v19 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v7);
      }

      result = v18;
      v18 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }

    v20 = -1;
    if (!v17)
    {
      v13 = v16;
      v16 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v7);
      }

      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v7);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkStorageManager::CacheStorageRepresentation,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WTF::CompletionHandler<void ()(WTF::String const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t *a3)
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

      v9 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_7:
    v10 = WTF::fastMalloc(0x18);
    *v10 = &unk_1F10F1718;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::NetworkStorageManager::cacheStorageRepresentation(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkStorageManager::ResetQuotaUpdatedBasedOnUsageForTesting,IPC::Connection,WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(WebCore::ClientOrigin &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<std::tuple<WebCore::ClientOrigin>>(&v7, a1);
  if (v13 == 1)
  {
    result = WebKit::NetworkStorageManager::resetQuotaUpdatedBasedOnUsageForTesting(a2, &v7);
    if (v13)
    {
      if (!v12)
      {
        v5 = v11;
        v11 = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, v4);
        }

        result = v10;
        v10 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v4);
        }
      }

      v12 = -1;
      if (!v9)
      {
        v6 = v8;
        v8 = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v4);
        }

        result = v7;
        v7 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v4);
          }
        }
      }
    }
  }

  return result;
}

BOOL WebKit::NetworkStorageManager::didReceiveSyncMessage(uint64_t a1, atomic_ullong *a2, IPC::Decoder *a3, uint64_t *a4)
{
  v42 = *MEMORY[0x1E69E9840];
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_6:
  v11 = *(a3 + 25);
  if (v11 == 4014)
  {
    IPC::Decoder::decode<std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>>(buf, a3);
    if (v41 == 1)
    {
      v12 = *a4;
      *a4 = 0;
      while (1)
      {
        v13 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v14 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v14 == v13)
        {
          goto LABEL_17;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_17:
      v19 = WTF::fastMalloc(0x18);
      *v19 = &unk_1F10F1740;
      v19[1] = v12;
      v19[2] = a2;
      v30 = v19;
      if ((v41 & 1) == 0)
      {
        __break(1u);
      }

      IPC::callMemberFunction<WebKit::NetworkStorageManager,WebKit::NetworkStorageManager,void ()(IPC::Connection &,WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)> &&),std::tuple<WebCore::StorageType,WTF::ObjectIdentifierGeneric<WebKit::StorageAreaMapIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageNamespaceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ClientOrigin>,void ()(std::optional<WTF::ObjectIdentifierGeneric<WebKit::StorageAreaIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,unsigned long long)>(a1, WebKit::NetworkStorageManager::connectToStorageAreaSync, 0, a2, buf, &v30);
      v21 = v30;
      v30 = 0;
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }

      if (v41)
      {
        if (!v40)
        {
          v22 = v39;
          v39 = 0;
          if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v20);
          }

          v23 = v38;
          v38 = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v20);
          }
        }

        v40 = -1;
        if (!v37)
        {
          v24 = v36;
          v36 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v20);
          }

          v25 = v35;
          v35 = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v20);
          }
        }
      }
    }
  }

  else
  {
    v15 = qword_1ED6416C8;
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
      v32 = v28;
      v33 = 2048;
      v34 = v29;
      _os_log_error_impl(&dword_19D52D000, v15, OS_LOG_TYPE_ERROR, "Unhandled synchronous message %s to %llu", buf, 0x16u);
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

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v8);
  return v11 == 4014;
}

uint64_t WebKit::NotificationManagerMessageHandler::didReceiveMessage(WebKit::NotificationManagerMessageHandler *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  (*(*this + 128))(&v41);
  (**this)(this);
  v6 = *(a3 + 25);
  if (v6 > 0x339)
  {
    if (*(a3 + 25) > 0x33Bu)
    {
      if (v6 == 828)
      {
        if (v44 != 1 || (v42 & 1) == 0)
        {
          v7 = qword_1ED6416C8;
          if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            *&buf[4] = "NotificationManagerMessageHandler_SetAppBadge";
            v8 = "Message %s received by a disabled message endpoint";
            goto LABEL_44;
          }

          goto LABEL_47;
        }

        IPC::ArgumentCoder<std::tuple<WebCore::SecurityOriginData,std::optional<unsigned long long>>,void>::decode<IPC::Decoder>(a3, buf);
        if ((v50 & 1) == 0)
        {
          v12 = *a3;
          v13 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v38 = *(a3 + 3);
          if (!v38)
          {
            return (*(*this + 8))(this, v12, v13);
          }

          if (!v13)
          {
            return (*(*this + 8))(this, v12, v13);
          }

          (*(*v38 + 16))(v38, v12);
          if ((v50 & 1) == 0)
          {
            return (*(*this + 8))(this, v12, v13);
          }
        }

        (*(*this + 104))(this, buf, v48, v49);
        goto LABEL_56;
      }

      if (v6 != 829)
      {
        goto LABEL_46;
      }

      if (v44 != 1 || (v43 & 0x10) == 0)
      {
        v7 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "NotificationManagerMessageHandler_ShowNotification";
          v8 = "Message %s received by a disabled message endpoint";
          goto LABEL_44;
        }

        goto LABEL_47;
      }

      IPC::ArgumentCoder<std::tuple<WebCore::NotificationData,WTF::RefPtr<WebCore::NotificationResources,WTF::RawPtrTraits<WebCore::NotificationResources>,WTF::DefaultRefDerefTraits<WebCore::NotificationResources>>>,void>::decode<IPC::Decoder>(a3, buf);
      if (v52 & 1) != 0 || (v12 = *a3, v13 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v40 = *(a3 + 3)) != 0) && v13 && ((*(*v40 + 16))(v40, v12), (v52))
      {
        v23 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v12)
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
              goto LABEL_81;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_81:
          v26 = WTF::fastMalloc(0x18);
          *v26 = &unk_1F10F1768;
          v26[1] = a3;
          v26[2] = a2;
          v45 = v26;
          if ((v52 & 1) == 0)
          {
            goto LABEL_110;
          }

          (*(*this + 56))(this, a2, buf, &v51, &v45);
          v27 = v45;
          v45 = 0;
          if (v27)
          {
            (*(*v27 + 8))(v27);
          }
        }
      }

      if (v52 == 1)
      {
        v28 = v51;
        v51 = 0;
        if (v28)
        {
          WTF::ThreadSafeRefCounted<WebCore::NotificationResources,(WTF::DestructionThread)0>::deref(v28, v12);
        }

        WebCore::NotificationData::~NotificationData(buf, v12);
      }

      return (*(*this + 8))(this, v12, v13);
    }

    if (v6 == 826)
    {
      if (v44 == 1 && (v43 & 0x10) != 0)
      {
        (*(*this + 88))(this);
        return (*(*this + 8))(this, v12, v13);
      }

      v7 = qword_1ED6416C8;
      if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      *buf = 136315138;
      *&buf[4] = "NotificationManagerMessageHandler_PageWasNotifiedOfNotificationPermission";
      v8 = "Message %s received by a disabled message endpoint";
      goto LABEL_44;
    }

    if (v6 == 827)
    {
      if (v44 != 1 || (v43 & 0x10) == 0)
      {
        v7 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "NotificationManagerMessageHandler_RequestPermission";
          v8 = "Message %s received by a disabled message endpoint";
          goto LABEL_44;
        }

LABEL_47:
        v12 = *a3;
        v13 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v14 = *(a3 + 3);
        if (v14 && v13)
        {
          (*(*v14 + 16))(v14, v12);
        }

        return (*(*this + 8))(this, v12, v13);
      }

      IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData>>(a3, buf);
      if (v48 != 1)
      {
        goto LABEL_96;
      }

      v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_96;
      }

      a3 = v17;
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
          goto LABEL_89;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_89:
      v29 = WTF::fastMalloc(0x18);
      *v29 = &unk_1F10F1790;
      v29[1] = a3;
      v29[2] = a2;
      v45 = v29;
      if (v48)
      {
        (*(*this + 96))(this, buf, &v45);
        v30 = v45;
        v45 = 0;
        if (!v30)
        {
          goto LABEL_96;
        }

LABEL_95:
        (*(*v30 + 8))(v30);
LABEL_96:
        if (v48 != 1)
        {
          return (*(*this + 8))(this, v12, v13);
        }

        goto LABEL_97;
      }

LABEL_110:
      __break(1u);
LABEL_111:
      v12 = *a3;
      v13 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v37 = *(a3 + 3);
      if (!v37)
      {
        return (*(*this + 8))(this, v12, v13);
      }

      if (!v13)
      {
        return (*(*this + 8))(this, v12, v13);
      }

      (*(*v37 + 16))(v37, v12);
      if ((v50 & 1) == 0)
      {
        return (*(*this + 8))(this, v12, v13);
      }

LABEL_50:
      (*(*this + 64))(this, buf, a2 + 32);
LABEL_56:
      if ((v50 & 1) == 0)
      {
        return (*(*this + 8))(this, v12, v13);
      }

LABEL_97:
      if (!v47)
      {
        v32 = *&buf[8];
        *&buf[8] = 0;
        if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v32, v12);
        }

        v33 = *buf;
        *buf = 0;
        if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v12);
        }
      }

      return (*(*this + 8))(this, v12, v13);
    }

LABEL_46:
    v11 = qword_1ED6416C8;
    if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    if (v6 >= 0x107F)
    {
      v34 = 4223;
    }

    else
    {
      v34 = v6;
    }

    v35 = (&IPC::Detail::messageDescriptions)[3 * v34];
    v36 = *(a3 + 7);
    *buf = 136315394;
    *&buf[4] = v35;
    *&buf[12] = 2048;
    *&buf[14] = v36;
    v8 = "Unhandled message %s to %llu";
    v9 = v11;
    v10 = 22;
    goto LABEL_45;
  }

  if (*(a3 + 25) > 0x337u)
  {
    if (v6 == 824)
    {
      if (v44 != 1 || (v43 & 0x10) == 0)
      {
        v7 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "NotificationManagerMessageHandler_DidDestroyNotification";
          v8 = "Message %s received by a disabled message endpoint";
          goto LABEL_44;
        }

        goto LABEL_47;
      }

      IPC::Decoder::decode<std::tuple<WTF::UUID>>(a3, buf);
      if (buf[16] == 1)
      {
        (*(*this + 80))(this, buf);
      }

      return (*(*this + 8))(this, v12, v13);
    }

    if (v6 == 825)
    {
      if (v44 != 1 || (v42 & 1) == 0)
      {
        v7 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "NotificationManagerMessageHandler_GetPermissionState";
          v8 = "Message %s received by a disabled message endpoint";
          goto LABEL_44;
        }

        goto LABEL_47;
      }

      IPC::Decoder::decode<std::tuple<WebCore::SecurityOriginData>>(a3, buf);
      if (v48 != 1)
      {
        goto LABEL_96;
      }

      v20 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_96;
      }

      a3 = v20;
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
          goto LABEL_93;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_93:
      v31 = WTF::fastMalloc(0x18);
      *v31 = &unk_1F10F17B8;
      v31[1] = a3;
      v31[2] = a2;
      v45 = v31;
      if (v48)
      {
        (*(*this + 112))(this, buf, &v45);
        v30 = v45;
        v45 = 0;
        if (!v30)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }

      goto LABEL_110;
    }

    goto LABEL_46;
  }

  if (v6 == 822)
  {
    if (v44 != 1 || (v43 & 0x10) == 0)
    {
      v7 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "NotificationManagerMessageHandler_CancelNotification";
        v8 = "Message %s received by a disabled message endpoint";
        goto LABEL_44;
      }

      goto LABEL_47;
    }

    a2 = buf;
    IPC::ArgumentCoder<std::tuple<WebCore::SecurityOriginData,WTF::UUID>,void>::decode<IPC::Decoder>(a3, buf);
    if (v50)
    {
      goto LABEL_50;
    }

    goto LABEL_111;
  }

  if (v6 != 823)
  {
    goto LABEL_46;
  }

  if (v44 != 1 || (v43 & 0x10) == 0)
  {
    v7 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "NotificationManagerMessageHandler_ClearNotifications";
      v8 = "Message %s received by a disabled message endpoint";
LABEL_44:
      v9 = v7;
      v10 = 12;
LABEL_45:
      _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
      goto LABEL_47;
    }

    goto LABEL_47;
  }

  IPC::ArgumentCoder<std::tuple<WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a3, buf);
  if (buf[16] & 1) != 0 || (v12 = *a3, v13 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v39 = *(a3 + 3)) != 0) && v13 && ((*(*v39 + 16))(v39, v12), (buf[16]))
  {
    (*(*this + 72))(this, buf);
    if (buf[16])
    {
      v16 = *buf;
      if (*buf)
      {
        *buf = 0;
        *&buf[8] = 0;
        WTF::fastFree(v16, v12);
      }
    }
  }

  return (*(*this + 8))(this, v12, v13);
}
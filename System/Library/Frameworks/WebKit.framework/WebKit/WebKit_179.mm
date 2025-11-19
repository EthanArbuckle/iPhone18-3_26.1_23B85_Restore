uint64_t *IPC::Decoder::operator>><std::tuple<std::span<BOOL const,18446744073709551615ul>>>(uint64_t *a1, uint64_t a2)
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
    v23 = a1[3];
    if (v23)
    {
      if (v4)
      {
        (*(*v23 + 16))();
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_39;
  }

  v10 = v5 + 1;
  a1[2] = (v5 + 1);
  if (v5)
  {
    v5 = *v5;
    if (v5)
    {
      v11 = v4 - (v10 - v6);
      v12 = v4 >= v10 - v6 && v11 >= v5;
      if (!v12)
      {
        goto LABEL_39;
      }

      a1[2] = v10 + v5;
      v14 = v11 == -1 || (v5 + 1) != 0;
      if (!v10 || !v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v10 = 0;
    }

    v18 = 1;
    goto LABEL_26;
  }

LABEL_39:
  *a1 = 0;
  a1[1] = 0;
  v24 = a1[3];
  if (v24 && v4)
  {
    (*(*v24 + 16))();
  }

LABEL_21:
  v15 = *a1;
  v16 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v17 = a1[3];
  if (!v17 || !v16)
  {
    goto LABEL_22;
  }

  (*(*v17 + 16))(v17, v15);
  v10 = 0;
  v18 = 0;
  v20 = *a1;
  v21 = a1[1];
  v22 = a1[3];
  *a1 = 0;
  a1[1] = 0;
  if (v22 && v21)
  {
    (*(*v22 + 16))(v22, v20);
LABEL_22:
    v18 = 0;
    v10 = 0;
  }

LABEL_26:
  if (*(a2 + 16) == v18)
  {
    if (*(a2 + 16))
    {
      *a2 = v10;
      *(a2 + 8) = v5;
    }
  }

  else if (*(a2 + 16))
  {
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = v10;
    *(a2 + 8) = v5;
    *(a2 + 16) = 1;
  }

  return a1;
}

uint64_t IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetFramebufferAttachmentParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v82, v9);
  if ((v84 & 1) == 0)
  {
LABEL_62:
    v62 = 16;
LABEL_63:
    *a4 = v62;
    goto LABEL_64;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_94;
  }

  v13 = v82;
  v12 = v83;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a1 + 8), IdentifierInternal);
  if (!result)
  {
    v38 = 12;
LABEL_48:
    *a4 = v38;
LABEL_64:
    v48 = 1;
    goto LABEL_65;
  }

  if (v12 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1FDE74);
  }

  *v13 = 4047;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  v18 = v12 - 2 - v17;
  if (v12 - 2 >= v17)
  {
    *(v16 + (-v16 & 7)) = IdentifierInternal;
    v19 = v16 + v17;
    v20 = -v19 & 3 | 4;
    v21 = v18 - v20;
    if (v18 >= v20)
    {
      *&v19[-v19 & 3] = *a2;
      v22 = &v19[v20];
      v23 = -(v19 + v20);
      v24 = v23 & 3 | 4;
      v25 = v21 - v24;
      if (v21 >= v24)
      {
        *&v22[v23 & 3] = a2[1];
        v26 = &v22[v24];
        v27 = -v26 & 3 | 4;
        if (v25 >= v27)
        {
          *&v26[-v26 & 3] = a2[2];
          v28 = v12 - v25 + v27;
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
          if (*(v32 + 8) <= 0xFFuLL)
          {
            goto LABEL_50;
          }

          if (atomic_exchange((*(v32 + 16) + 128), v31) == 0x80000000 || *(a1 + 124))
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
            v33 = *(a1 + 80);
            if (*(v33 + 8) <= 0xFFuLL)
            {
              goto LABEL_50;
            }

            v34 = atomic_exchange(*(v33 + 16), 0x80000000uLL);
            v35 = *(a1 + 80);
            if (*(v35 + 8) <= 0xFFuLL)
            {
              goto LABEL_50;
            }

            if (!(v34 | atomic_load_explicit((*(v35 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
            {
              break;
            }

            if (*(a1 + 112) == 1)
            {
              v36 = IPC::Semaphore::waitFor((a1 + 104), v9);
              if (v36)
              {
                WTF::ApproximateTime::now(v36);
                if (v37 < v9)
                {
                  continue;
                }
              }
            }

            result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
            v38 = 17;
            goto LABEL_48;
          }

          v39 = *(a1 + 80);
          if (*(v39 + 8) <= 0xFFuLL)
          {
            goto LABEL_50;
          }

          atomic_store(0, *(v39 + 16));
          *(a1 + 88) = 0;
          v40 = *(a1 + 80);
          v41 = *(v40 + 8);
          if (v41 <= 0xFF)
          {
            goto LABEL_50;
          }

          v42 = *(a1 + 72);
          v43 = *(v40 + 16);
          a3 = v41 - 256;
          if (v42)
          {
            v51 = v42 - 1;
            v52 = a3 >= v51;
            a3 = v51;
            if (!v52)
            {
              goto LABEL_50;
            }
          }

          v44 = IPC::Decoder::operator new(0x58, v15);
          if (*(IPC::Decoder::Decoder(v44, v43 + 256, a3, *(a1 + 64)) + 25) == 3197)
          {
            IPC::Decoder::~Decoder(v44);
            bmalloc::api::tzoneFree(v45, v46);
            IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFCFu, &v87, v9);
            v47 = v88;
            if (v88)
            {
              if (v88 == 255)
              {
                v81 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
                mpark::throw_bad_variant_access(v81);
              }

              v38 = v87;
              result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
              if (v47 != 1)
              {
LABEL_40:
                mpark::throw_bad_variant_access(result);
              }

              goto LABEL_48;
            }

            v44 = v87;
          }

          IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
          if (*(v44 + 25) == 3194)
          {
            v38 = 11;
          }

          else
          {
            result = IPC::Decoder::decode<std::tuple<int>>(v44);
            if ((result & 0xFF00000000) != 0)
            {
              v48 = 0;
              *a4 = v44;
              *(a4 + 8) = result;
LABEL_65:
              *(a4 + 16) = v48;
              return result;
            }

            v38 = 14;
          }

          IPC::Decoder::~Decoder(v44);
          result = bmalloc::api::tzoneFree(v49, v50);
          goto LABEL_48;
        }
      }
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v84 & 1) == 0)
  {
    while (1)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v82, v9);
      if (v84 != 1)
      {
        goto LABEL_62;
      }

      v53 = v83;
      if (v83 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1FDE9CLL);
      }

      v54 = v82;
      *v82 = 3198;
      v55 = v54 + 1;
      if (v53 - 2 < (-v55 & 7 | 8uLL))
      {
        break;
      }

      v56 = -v55 & 7;
      *(v55 + v56) = a3;
      if (v56 != 7)
      {
        v56 = 6;
      }

      v57 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v59 = *(a1 + 72);
      v58 = *(a1 + 80);
      v60 = v56 + 10;
      if (v57 + 16 >= v59)
      {
        v57 = 0;
      }

      v61 = v60 + v57;
      if (v59 <= v61)
      {
        v61 = 0;
      }

      *(a1 + 88) = v61;
      if (*(v58 + 8) > 0xFFuLL)
      {
        IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v58 + 16) + 128), v61) == 0x80000000);
        *(a1 + 64) = a3;
        goto LABEL_4;
      }
    }

    v62 = 18;
    goto LABEL_63;
  }

  if (v83 <= 1)
  {
LABEL_94:
    __break(0xC471u);
    JUMPOUT(0x19E1FDE54);
  }

  *v82 = 3197;
  v63 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v64 = *(a1 + 72);
  if (v63 + 16 >= v64)
  {
    v63 = 0;
  }

  v65 = v63 + 16;
  if (v64 <= v65)
  {
    v66 = 0;
  }

  else
  {
    v66 = v65;
  }

  *(a1 + 88) = v66;
  v67 = *(a1 + 80);
  if (*(v67 + 8) <= 0xFFuLL)
  {
    goto LABEL_50;
  }

  atomic_exchange((*(v67 + 16) + 128), v66);
  *(a1 + 124) = 0;
  v68 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFCF, a3, &v87);
  v69 = v87;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v87, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v69, a2[1]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v69, a2[2]);
  result = IPC::Connection::sendSyncMessage(v68, v88, &v87, 0, &v85, v9);
  if (v86)
  {
    if (v86 != 1)
    {
      goto LABEL_40;
    }

    *a4 = v85;
    *(a4 + 16) = 1;
    goto LABEL_84;
  }

  v71 = v85;
  v85 = 0;
  if (*(v71 + 25) == 3194)
  {
    v72 = 11;
  }

  else
  {
    v73 = IPC::Decoder::decode<std::tuple<int>>(v71);
    if ((v73 & 0xFF00000000) != 0)
    {
      *a4 = v71;
      *(a4 + 8) = v73;
      *(a4 + 16) = 0;
      goto LABEL_84;
    }

    v72 = 14;
  }

  *a4 = v72;
  *(a4 + 16) = 1;
  IPC::Decoder::~Decoder(v71);
  bmalloc::api::tzoneFree(v74, v75);
LABEL_84:
  if (!v86)
  {
    v76 = v85;
    v85 = 0;
    if (v76)
    {
      IPC::Decoder::~Decoder(v76);
      bmalloc::api::tzoneFree(v79, v80);
    }
  }

  result = v87;
  v87 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v70);
    return bmalloc::api::tzoneFree(v77, v78);
  }

  return result;
}

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetProgramInfoLog,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E1FE4C8);
  }

  *v13 = 4054;
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
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFD6u, &v82, v9);
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
        JUMPOUT(0x19E1FE4F0);
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
    JUMPOUT(0x19E1FE4A8);
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
  IPC::Connection::createSyncMessageEncoder(0xFD6, a3, &v82);
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

uint64_t IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetRenderbufferParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E1FEB34);
  }

  *v13 = 4061;
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFDDu, &v83, v9);
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
        JUMPOUT(0x19E1FEB5CLL);
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
    JUMPOUT(0x19E1FEB14);
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
  IPC::Connection::createSyncMessageEncoder(0xFDD, a3, &v83);
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

uint64_t IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetShaderi,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E1FF1A0);
  }

  *v13 = 4067;
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFE3u, &v83, v9);
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
        JUMPOUT(0x19E1FF1C8);
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
    JUMPOUT(0x19E1FF180);
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
  IPC::Connection::createSyncMessageEncoder(0xFE3, a3, &v83);
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetShaderInfoLog,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E1FF7F4);
  }

  *v13 = 4064;
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
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFE0u, &v82, v9);
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
        JUMPOUT(0x19E1FF81CLL);
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
    JUMPOUT(0x19E1FF7D4);
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
  IPC::Connection::createSyncMessageEncoder(0xFE0, a3, &v82);
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetShaderPrecisionFormat,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, int *a3, unint64_t a4)
{
  v8 = *(a2 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v9 = v8 + v10;
  }

  if (*(a2 + 64) != a4)
  {
    goto LABEL_51;
  }

LABEL_4:
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, &v78, v9);
  if ((v80 & 1) == 0)
  {
LABEL_62:
    v59 = 16;
LABEL_63:
    *a1 = v59;
    goto LABEL_64;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_94;
  }

  v13 = v78;
  v12 = v79;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a2 + 8), IdentifierInternal);
  if (!result)
  {
    v35 = 12;
LABEL_48:
    *a1 = v35;
LABEL_64:
    v45 = 1;
    goto LABEL_65;
  }

  if (v12 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1FFE80);
  }

  *v13 = 4065;
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
      *&v19[-v19 & 3] = *a3;
      v23 = &v19[v20];
      v24 = -v23 & 3 | 4;
      if (v22 >= v24)
      {
        *&v23[-v23 & 3] = a3[1];
        v25 = v12 - v22 + v24;
        if (v25 <= 0x10)
        {
          v25 = 16;
        }

        v26 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v27 = *(a2 + 72);
        if (v26 + 16 >= v27)
        {
          v26 = 0;
        }

        v28 = v26 + v25;
        if (v27 <= v28)
        {
          v28 = 0;
        }

        *(a2 + 88) = v28;
        v29 = *(a2 + 80);
        if (*(v29 + 8) <= 0xFFuLL)
        {
          goto LABEL_50;
        }

        if (atomic_exchange((*(v29 + 16) + 128), v28) == 0x80000000 || *(a2 + 124))
        {
          if (*(a2 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a2 + 100));
          }

          *(a2 + 124) = 0;
        }

        a3 = 0x80000000;
        while (1)
        {
          v30 = *(a2 + 80);
          if (*(v30 + 8) <= 0xFFuLL)
          {
            goto LABEL_50;
          }

          v31 = atomic_exchange(*(v30 + 16), 0x80000000uLL);
          v32 = *(a2 + 80);
          if (*(v32 + 8) <= 0xFFuLL)
          {
            goto LABEL_50;
          }

          if (!(v31 | atomic_load_explicit((*(v32 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
          {
            break;
          }

          if (*(a2 + 112) == 1)
          {
            v33 = IPC::Semaphore::waitFor((a2 + 104), v9);
            if (v33)
            {
              WTF::ApproximateTime::now(v33);
              if (v34 < v9)
              {
                continue;
              }
            }
          }

          result = IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
          v35 = 17;
          goto LABEL_48;
        }

        v36 = *(a2 + 80);
        if (*(v36 + 8) <= 0xFFuLL)
        {
          goto LABEL_50;
        }

        atomic_store(0, *(v36 + 16));
        *(a2 + 88) = 0;
        v37 = *(a2 + 80);
        v38 = *(v37 + 8);
        if (v38 <= 0xFF)
        {
          goto LABEL_50;
        }

        v39 = *(a2 + 72);
        v40 = *(v37 + 16);
        a4 = v38 - 256;
        if (v39)
        {
          v49 = v39 - 1;
          v21 = a4 >= v49;
          a4 = v49;
          if (!v21)
          {
            goto LABEL_50;
          }
        }

        v41 = IPC::Decoder::operator new(0x58, v15);
        if (*(IPC::Decoder::Decoder(v41, v40 + 256, a4, *(a2 + 64)) + 25) == 3197)
        {
          IPC::Decoder::~Decoder(v41);
          bmalloc::api::tzoneFree(v42, v43);
          IPC::Connection::waitForSyncReply(*(a2 + 8), IdentifierInternal, 0xFE1u, &v81, v9);
          v44 = BYTE8(v81);
          if (BYTE8(v81))
          {
            if (BYTE8(v81) == 255)
            {
              v77 = IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
              mpark::throw_bad_variant_access(v77);
            }

            v35 = v81;
            result = IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
            if (v44 != 1)
            {
LABEL_40:
              mpark::throw_bad_variant_access(result);
            }

            goto LABEL_48;
          }

          v41 = v81;
        }

        IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
        if (*(v41 + 25) == 3194)
        {
          v35 = 11;
        }

        else
        {
          LOBYTE(v81) = 0;
          v82 = 0;
          result = IPC::Decoder::operator>><std::tuple<std::span<int const,2ul>,int>>(v41, &v81);
          if (v82)
          {
            v45 = 0;
            v46 = v81;
            *v85 = v81;
            *a1 = v41;
            *(a1 + 8) = v46;
LABEL_65:
            *(a1 + 24) = v45;
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

  IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
  if ((v80 & 1) == 0)
  {
    while (1)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, &v81, v9);
      if (v82 != 1)
      {
        goto LABEL_62;
      }

      v50 = *(&v81 + 1);
      if (*(&v81 + 1) <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1FFEA8);
      }

      v51 = v81;
      *v81 = 3198;
      v52 = v51 + 2;
      if (v50 - 2 < (-v52 & 7 | 8uLL))
      {
        break;
      }

      v53 = -v52 & 7;
      *(v52 + v53) = a4;
      if (v53 != 7)
      {
        v53 = 6;
      }

      v54 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v56 = *(a2 + 72);
      v55 = *(a2 + 80);
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

      *(a2 + 88) = v58;
      if (*(v55 + 8) > 0xFFuLL)
      {
        IPC::StreamClientConnection::wakeUpServerBatched(a2, atomic_exchange((*(v55 + 16) + 128), v58) == 0x80000000);
        *(a2 + 64) = a4;
        goto LABEL_4;
      }
    }

    v59 = 18;
    goto LABEL_63;
  }

  if (v79 <= 1)
  {
LABEL_94:
    __break(0xC471u);
    JUMPOUT(0x19E1FFE60);
  }

  *v78 = 3197;
  v60 = (*(a2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v61 = *(a2 + 72);
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

  *(a2 + 88) = v63;
  v64 = *(a2 + 80);
  if (*(v64 + 8) <= 0xFFuLL)
  {
    goto LABEL_50;
  }

  atomic_exchange((*(v64 + 16) + 128), v63);
  *(a2 + 124) = 0;
  v65 = *(a2 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFE1, a4, v85);
  v66 = v85[0];
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v85[0], *a3);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v66, a3[1]);
  result = IPC::Connection::sendSyncMessage(v65, v85[1], v85, 0, &v83, v9);
  if (v84)
  {
    if (v84 != 1)
    {
      goto LABEL_40;
    }

    *a1 = v83;
    *(a1 + 24) = 1;
    goto LABEL_84;
  }

  v68 = v83;
  v83 = 0;
  if (*(v68 + 25) == 3194)
  {
    v69 = 11;
  }

  else
  {
    LOBYTE(v81) = 0;
    v82 = 0;
    v68 = IPC::Decoder::operator>><std::tuple<std::span<int const,2ul>,int>>(v68, &v81);
    if (v82 == 1)
    {
      *(a1 + 8) = v81;
      *a1 = v68;
      *(a1 + 24) = 0;
      goto LABEL_84;
    }

    v69 = 14;
  }

  *a1 = v69;
  *(a1 + 24) = 1;
  IPC::Decoder::~Decoder(v68);
  bmalloc::api::tzoneFree(v70, v71);
LABEL_84:
  if (!v84)
  {
    v72 = v83;
    v83 = 0;
    if (v72)
    {
      IPC::Decoder::~Decoder(v72);
      bmalloc::api::tzoneFree(v75, v76);
    }
  }

  result = v85[0];
  v85[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v67);
    return bmalloc::api::tzoneFree(v73, v74);
  }

  return result;
}

uint64_t *IPC::Decoder::operator>><std::tuple<std::span<int const,2ul>,int>>(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2] + 3;
  v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = *a1;
  v8 = (v5 & 0xFFFFFFFFFFFFFFFCLL) - *a1;
  v9 = v4 >= v8;
  v10 = v4 - v8;
  if (!v9 || v10 <= 7)
  {
    goto LABEL_14;
  }

  a1[2] = (v6 + 2);
  if (v6)
  {
    v6 = ((v6 + 11) & 0xFFFFFFFFFFFFFFFCLL);
    if (v4 < v6 - v7 || v4 - (v6 - v7) <= 3)
    {
LABEL_14:
      *a1 = 0;
      a1[1] = 0;
      v16 = a1[3];
      if (v16)
      {
        if (v4)
        {
          (*(*v16 + 16))(v16);
          v4 = a1[1];
        }
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_16;
    }

    a1[2] = (v6 + 1);
    if (v6)
    {
      LODWORD(v6) = *v6;
      v13 = v5 & 0xFFFFFFFFFFFFFF00;
      v14 = v5 & 0xFC;
      v15 = 1;
      goto LABEL_19;
    }
  }

LABEL_16:
  *a1 = 0;
  a1[1] = 0;
  v17 = a1[3];
  if (v17 && v4)
  {
    (*(*v17 + 16))(v17);
  }

  v18 = *a1;
  v19 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v20 = a1[3];
  if (v20 && v19)
  {
    (*(*v20 + 16))(v20, v18);
  }

  v15 = 0;
  v13 = 0;
  v14 = 0;
LABEL_19:
  if (*(a2 + 16) == v15)
  {
    if (*(a2 + 16))
    {
      *a2 = v14 | v13;
      *(a2 + 8) = v6;
    }
  }

  else if (*(a2 + 16))
  {
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = v14 | v13;
    *(a2 + 8) = v6;
    *(a2 + 16) = 1;
  }

  return a1;
}

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetShaderSource,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E200664);
  }

  *v13 = 4066;
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
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFE2u, &v82, v9);
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
        JUMPOUT(0x19E20068CLL);
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
    JUMPOUT(0x19E200644);
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
  IPC::Connection::createSyncMessageEncoder(0xFE2, a3, &v82);
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetTexParameterf,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E200CECLL);
  }

  *v13 = 4070;
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFE6u, &v86, v9);
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
          BYTE4(v86) = 0;
          result = IPC::Decoder::operator>><std::tuple<float>>(v41, &v86);
          if (BYTE4(v86))
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
        JUMPOUT(0x19E200D14);
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
    JUMPOUT(0x19E200CCCLL);
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
  IPC::Connection::createSyncMessageEncoder(0xFE6, a3, &v86);
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
    v68 = IPC::Decoder::operator>><std::tuple<float>>(v68, &v82);
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

void *IPC::Decoder::operator>><std::tuple<float>>(void *result, uint64_t a2)
{
  v2 = result[1];
  v3 = ((result[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = *result;
  v5 = v3 - *result;
  v6 = v2 >= v5;
  v7 = v2 - v5;
  if (v6 && v7 > 3)
  {
    result[2] = v3 + 1;
    if (v3)
    {
      v9 = *v3;
      v10 = 1;
      goto LABEL_8;
    }

    v16 = a2;
    v17 = result;
  }

  else
  {
    v16 = a2;
    v17 = result;
    *result = 0;
    result[1] = 0;
    v11 = result[3];
    if (v11)
    {
      if (v2)
      {
        (*(*v11 + 16))(v11, v4);
        v4 = *v17;
        v2 = v17[1];
        goto LABEL_19;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
  }

LABEL_19:
  *v17 = 0;
  v17[1] = 0;
  v12 = v17[3];
  if (!v12 || !v2)
  {
    v10 = 0;
    v9 = 0;
LABEL_21:
    a2 = v16;
    result = v17;
    goto LABEL_8;
  }

  (*(*v12 + 16))(v12, v4);
  v10 = 0;
  v13 = v17[3];
  v15 = *v17;
  v14 = v17[1];
  *v17 = 0;
  v17[1] = 0;
  v9 = 0;
  if (!v13)
  {
    goto LABEL_21;
  }

  a2 = v16;
  result = v17;
  if (v14)
  {
    (*(*v13 + 16))(v13, v15);
    a2 = v16;
    result = v17;
    v10 = 0;
    v9 = 0;
  }

LABEL_8:
  if (*(a2 + 4) == v10)
  {
    if (*(a2 + 4))
    {
      *a2 = v9;
    }
  }

  else if (*(a2 + 4))
  {
    *(a2 + 4) = 0;
  }

  else
  {
    *a2 = v9;
    *(a2 + 4) = 1;
  }

  return result;
}

uint64_t IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetTexParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E2014E0);
  }

  *v13 = 4071;
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFE7u, &v83, v9);
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
        JUMPOUT(0x19E201508);
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
    JUMPOUT(0x19E2014C0);
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
  IPC::Connection::createSyncMessageEncoder(0xFE7, a3, &v83);
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetUniformfv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v85, v9);
    if (v86 != 1)
    {
      goto LABEL_72;
    }

    v62 = *(&v85 + 1);
    if (*(&v85 + 1) <= 1uLL)
    {
      __break(0xC471u);
      goto LABEL_94;
    }

    v63 = v85;
    *v85 = 3198;
    v64 = v63 + 2;
    if (v62 - 2 < (-v64 & 7 | 8uLL))
    {
      v71 = 18;
      goto LABEL_73;
    }

    v65 = -v64 & 7;
    *(v64 + v65) = a3;
    if (v65 != 7)
    {
      v65 = 6;
    }

    v66 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v68 = *(a1 + 72);
    v67 = *(a1 + 80);
    v69 = v65 + 10;
    if (v66 + 16 >= v68)
    {
      v66 = 0;
    }

    v70 = v69 + v66;
    if (v68 <= v70)
    {
      v70 = 0;
    }

    *(a1 + 88) = v70;
    if (*(v67 + 8) <= 0xFFuLL)
    {
      goto LABEL_94;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v67 + 16) + 128), v70) == 0x80000000);
    *(a1 + 64) = a3;
  }

  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v82, v9);
  if ((v84 & 1) == 0)
  {
LABEL_72:
    v71 = 16;
LABEL_73:
    *a4 = v71;
    goto LABEL_74;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_95;
  }

  v13 = v82;
  v12 = v83;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a1 + 8), IdentifierInternal);
  if (!result)
  {
    v38 = 12;
LABEL_47:
    *a4 = v38;
LABEL_74:
    v49 = 1;
    goto LABEL_75;
  }

  if (v12 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E201BA0);
  }

  *v13 = 4077;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  v18 = v12 - 2 - v17;
  if (v12 - 2 >= v17)
  {
    *(v16 + (-v16 & 7)) = IdentifierInternal;
    v19 = v16 + v17;
    v20 = -v19 & 3 | 4;
    v21 = v18 - v20;
    if (v18 >= v20)
    {
      *&v19[-v19 & 3] = *a2;
      v22 = &v19[v20];
      v23 = -(v19 + v20);
      v24 = v23 & 3 | 4;
      v25 = v21 - v24;
      if (v21 >= v24)
      {
        *&v22[v23 & 3] = *(a2 + 4);
        v26 = &v22[v24];
        v27 = -v26 & 7 | 8;
        if (v25 >= v27)
        {
          *&v26[-v26 & 7] = *(a2 + 8);
          v28 = v12 - v25 + v27;
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
          if (*(v32 + 8) <= 0xFFuLL)
          {
            goto LABEL_94;
          }

          if (atomic_exchange((*(v32 + 16) + 128), v31) == 0x80000000 || *(a1 + 124))
          {
            if (*(a1 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(a1 + 100));
            }

            *(a1 + 124) = 0;
          }

          while (1)
          {
            v33 = *(a1 + 80);
            if (*(v33 + 8) <= 0xFFuLL)
            {
              goto LABEL_94;
            }

            v34 = atomic_exchange(*(v33 + 16), 0x80000000uLL);
            v35 = *(a1 + 80);
            if (*(v35 + 8) <= 0xFFuLL)
            {
              goto LABEL_94;
            }

            if (!(v34 | atomic_load_explicit((*(v35 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
            {
              break;
            }

            if (*(a1 + 112) == 1)
            {
              v36 = IPC::Semaphore::waitFor((a1 + 104), v9);
              if (v36)
              {
                WTF::ApproximateTime::now(v36);
                if (v37 < v9)
                {
                  continue;
                }
              }
            }

            result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
            v38 = 17;
            goto LABEL_47;
          }

          v39 = *(a1 + 80);
          if (*(v39 + 8) <= 0xFFuLL)
          {
            goto LABEL_94;
          }

          atomic_store(0, *(v39 + 16));
          *(a1 + 88) = 0;
          v40 = *(a1 + 80);
          v41 = *(v40 + 8);
          if (v41 <= 0xFF)
          {
            goto LABEL_94;
          }

          v42 = *(a1 + 72);
          v43 = *(v40 + 16);
          v44 = v41 - 256;
          if (v42)
          {
            v52 = v42 - 1;
            v53 = v44 >= v52;
            v44 = v52;
            if (!v53)
            {
              goto LABEL_94;
            }
          }

          v45 = IPC::Decoder::operator new(0x58, v15);
          if (*(IPC::Decoder::Decoder(v45, v43 + 256, v44, *(a1 + 64)) + 25) == 3197)
          {
            IPC::Decoder::~Decoder(v45);
            bmalloc::api::tzoneFree(v46, v47);
            IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFEDu, &v85, v9);
            v48 = BYTE8(v85);
            if (BYTE8(v85))
            {
              if (BYTE8(v85) == 255)
              {
                v81 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
                mpark::throw_bad_variant_access(v81);
              }

              v38 = v85;
              result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
              if (v48 != 1)
              {
LABEL_39:
                mpark::throw_bad_variant_access(result);
              }

              goto LABEL_47;
            }

            v45 = v85;
          }

          IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
          if (*(v45 + 25) == 3194)
          {
            v38 = 11;
          }

          else
          {
            LOBYTE(v85) = 0;
            v86 = 0;
            result = IPC::Decoder::operator>><std::tuple<std::span<float const,18446744073709551615ul>>>(v45, &v85);
            if (v86)
            {
              v49 = 0;
              *(a4 + 8) = v85;
              *a4 = v45;
LABEL_75:
              *(a4 + 24) = v49;
              return result;
            }

            v38 = 14;
          }

          IPC::Decoder::~Decoder(v45);
          result = bmalloc::api::tzoneFree(v50, v51);
          goto LABEL_47;
        }
      }
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v84 & 1) == 0)
  {
    goto LABEL_94;
  }

  if (v83 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E201BC0);
  }

  *v82 = 3197;
  v54 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v55 = *(a1 + 72);
  if (v54 + 16 >= v55)
  {
    v54 = 0;
  }

  v56 = v54 + 16;
  v57 = v55 <= v56 ? 0 : v56;
  *(a1 + 88) = v57;
  v58 = *(a1 + 80);
  if (*(v58 + 8) <= 0xFFuLL)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    JUMPOUT(0x19E201B80);
  }

  atomic_exchange((*(v58 + 16) + 128), v57);
  *(a1 + 124) = 0;
  v59 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFED, a3, v89);
  v60 = v89[0];
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v89[0], *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v60, *(a2 + 4));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v60, *(a2 + 8));
  result = IPC::Connection::sendSyncMessage(v59, v89[1], v89, 0, &v87, v9);
  if (v88)
  {
    if (v88 != 1)
    {
      goto LABEL_39;
    }

    *a4 = v87;
    *(a4 + 24) = 1;
    goto LABEL_83;
  }

  v72 = v87;
  v87 = 0;
  if (*(v72 + 25) == 3194)
  {
    v73 = 11;
  }

  else
  {
    LOBYTE(v85) = 0;
    v86 = 0;
    v72 = IPC::Decoder::operator>><std::tuple<std::span<float const,18446744073709551615ul>>>(v72, &v85);
    if (v86 == 1)
    {
      *(a4 + 8) = v85;
      *a4 = v72;
      *(a4 + 24) = 0;
      goto LABEL_83;
    }

    v73 = 14;
  }

  *a4 = v73;
  *(a4 + 24) = 1;
  IPC::Decoder::~Decoder(v72);
  bmalloc::api::tzoneFree(v74, v75);
LABEL_83:
  if (!v88)
  {
    v76 = v87;
    v87 = 0;
    if (v76)
    {
      IPC::Decoder::~Decoder(v76);
      bmalloc::api::tzoneFree(v79, v80);
    }
  }

  result = v89[0];
  v89[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v61);
    return bmalloc::api::tzoneFree(v77, v78);
  }

  return result;
}

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetUniformiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v85, v9);
    if (v86 != 1)
    {
      goto LABEL_72;
    }

    v62 = *(&v85 + 1);
    if (*(&v85 + 1) <= 1uLL)
    {
      __break(0xC471u);
      goto LABEL_94;
    }

    v63 = v85;
    *v85 = 3198;
    v64 = v63 + 2;
    if (v62 - 2 < (-v64 & 7 | 8uLL))
    {
      v71 = 18;
      goto LABEL_73;
    }

    v65 = -v64 & 7;
    *(v64 + v65) = a3;
    if (v65 != 7)
    {
      v65 = 6;
    }

    v66 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v68 = *(a1 + 72);
    v67 = *(a1 + 80);
    v69 = v65 + 10;
    if (v66 + 16 >= v68)
    {
      v66 = 0;
    }

    v70 = v69 + v66;
    if (v68 <= v70)
    {
      v70 = 0;
    }

    *(a1 + 88) = v70;
    if (*(v67 + 8) <= 0xFFuLL)
    {
      goto LABEL_94;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v67 + 16) + 128), v70) == 0x80000000);
    *(a1 + 64) = a3;
  }

  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v82, v9);
  if ((v84 & 1) == 0)
  {
LABEL_72:
    v71 = 16;
LABEL_73:
    *a4 = v71;
    goto LABEL_74;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_95;
  }

  v13 = v82;
  v12 = v83;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a1 + 8), IdentifierInternal);
  if (!result)
  {
    v38 = 12;
LABEL_47:
    *a4 = v38;
LABEL_74:
    v49 = 1;
    goto LABEL_75;
  }

  if (v12 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E202258);
  }

  *v13 = 4078;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  v18 = v12 - 2 - v17;
  if (v12 - 2 >= v17)
  {
    *(v16 + (-v16 & 7)) = IdentifierInternal;
    v19 = v16 + v17;
    v20 = -v19 & 3 | 4;
    v21 = v18 - v20;
    if (v18 >= v20)
    {
      *&v19[-v19 & 3] = *a2;
      v22 = &v19[v20];
      v23 = -(v19 + v20);
      v24 = v23 & 3 | 4;
      v25 = v21 - v24;
      if (v21 >= v24)
      {
        *&v22[v23 & 3] = *(a2 + 4);
        v26 = &v22[v24];
        v27 = -v26 & 7 | 8;
        if (v25 >= v27)
        {
          *&v26[-v26 & 7] = *(a2 + 8);
          v28 = v12 - v25 + v27;
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
          if (*(v32 + 8) <= 0xFFuLL)
          {
            goto LABEL_94;
          }

          if (atomic_exchange((*(v32 + 16) + 128), v31) == 0x80000000 || *(a1 + 124))
          {
            if (*(a1 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(a1 + 100));
            }

            *(a1 + 124) = 0;
          }

          while (1)
          {
            v33 = *(a1 + 80);
            if (*(v33 + 8) <= 0xFFuLL)
            {
              goto LABEL_94;
            }

            v34 = atomic_exchange(*(v33 + 16), 0x80000000uLL);
            v35 = *(a1 + 80);
            if (*(v35 + 8) <= 0xFFuLL)
            {
              goto LABEL_94;
            }

            if (!(v34 | atomic_load_explicit((*(v35 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
            {
              break;
            }

            if (*(a1 + 112) == 1)
            {
              v36 = IPC::Semaphore::waitFor((a1 + 104), v9);
              if (v36)
              {
                WTF::ApproximateTime::now(v36);
                if (v37 < v9)
                {
                  continue;
                }
              }
            }

            result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
            v38 = 17;
            goto LABEL_47;
          }

          v39 = *(a1 + 80);
          if (*(v39 + 8) <= 0xFFuLL)
          {
            goto LABEL_94;
          }

          atomic_store(0, *(v39 + 16));
          *(a1 + 88) = 0;
          v40 = *(a1 + 80);
          v41 = *(v40 + 8);
          if (v41 <= 0xFF)
          {
            goto LABEL_94;
          }

          v42 = *(a1 + 72);
          v43 = *(v40 + 16);
          v44 = v41 - 256;
          if (v42)
          {
            v52 = v42 - 1;
            v53 = v44 >= v52;
            v44 = v52;
            if (!v53)
            {
              goto LABEL_94;
            }
          }

          v45 = IPC::Decoder::operator new(0x58, v15);
          if (*(IPC::Decoder::Decoder(v45, v43 + 256, v44, *(a1 + 64)) + 25) == 3197)
          {
            IPC::Decoder::~Decoder(v45);
            bmalloc::api::tzoneFree(v46, v47);
            IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFEEu, &v85, v9);
            v48 = BYTE8(v85);
            if (BYTE8(v85))
            {
              if (BYTE8(v85) == 255)
              {
                v81 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
                mpark::throw_bad_variant_access(v81);
              }

              v38 = v85;
              result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
              if (v48 != 1)
              {
LABEL_39:
                mpark::throw_bad_variant_access(result);
              }

              goto LABEL_47;
            }

            v45 = v85;
          }

          IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
          if (*(v45 + 25) == 3194)
          {
            v38 = 11;
          }

          else
          {
            LOBYTE(v85) = 0;
            v86 = 0;
            result = IPC::Decoder::operator>><std::tuple<std::span<int const,18446744073709551615ul>>>(v45, &v85);
            if (v86)
            {
              v49 = 0;
              *(a4 + 8) = v85;
              *a4 = v45;
LABEL_75:
              *(a4 + 24) = v49;
              return result;
            }

            v38 = 14;
          }

          IPC::Decoder::~Decoder(v45);
          result = bmalloc::api::tzoneFree(v50, v51);
          goto LABEL_47;
        }
      }
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v84 & 1) == 0)
  {
    goto LABEL_94;
  }

  if (v83 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E202278);
  }

  *v82 = 3197;
  v54 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v55 = *(a1 + 72);
  if (v54 + 16 >= v55)
  {
    v54 = 0;
  }

  v56 = v54 + 16;
  v57 = v55 <= v56 ? 0 : v56;
  *(a1 + 88) = v57;
  v58 = *(a1 + 80);
  if (*(v58 + 8) <= 0xFFuLL)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    JUMPOUT(0x19E202238);
  }

  atomic_exchange((*(v58 + 16) + 128), v57);
  *(a1 + 124) = 0;
  v59 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFEE, a3, v89);
  v60 = v89[0];
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v89[0], *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v60, *(a2 + 4));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v60, *(a2 + 8));
  result = IPC::Connection::sendSyncMessage(v59, v89[1], v89, 0, &v87, v9);
  if (v88)
  {
    if (v88 != 1)
    {
      goto LABEL_39;
    }

    *a4 = v87;
    *(a4 + 24) = 1;
    goto LABEL_83;
  }

  v72 = v87;
  v87 = 0;
  if (*(v72 + 25) == 3194)
  {
    v73 = 11;
  }

  else
  {
    LOBYTE(v85) = 0;
    v86 = 0;
    v72 = IPC::Decoder::operator>><std::tuple<std::span<int const,18446744073709551615ul>>>(v72, &v85);
    if (v86 == 1)
    {
      *(a4 + 8) = v85;
      *a4 = v72;
      *(a4 + 24) = 0;
      goto LABEL_83;
    }

    v73 = 14;
  }

  *a4 = v73;
  *(a4 + 24) = 1;
  IPC::Decoder::~Decoder(v72);
  bmalloc::api::tzoneFree(v74, v75);
LABEL_83:
  if (!v88)
  {
    v76 = v87;
    v87 = 0;
    if (v76)
    {
      IPC::Decoder::~Decoder(v76);
      bmalloc::api::tzoneFree(v79, v80);
    }
  }

  result = v89[0];
  v89[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v61);
    return bmalloc::api::tzoneFree(v77, v78);
  }

  return result;
}

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetUniformuiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
    result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v90, v9);
    if (v91 != 1)
    {
      goto LABEL_72;
    }

    v63 = *(&v90 + 1);
    if (*(&v90 + 1) <= 1uLL)
    {
      __break(0xC471u);
      goto LABEL_94;
    }

    v64 = v90;
    *v90 = 3198;
    v65 = v64 + 2;
    if (v63 - 2 < (-v65 & 7 | 8uLL))
    {
      v72 = 18;
      goto LABEL_73;
    }

    v66 = -v65 & 7;
    *(v65 + v66) = a3;
    if (v66 != 7)
    {
      v66 = 6;
    }

    v67 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v69 = *(a1 + 72);
    v68 = *(a1 + 80);
    v70 = v66 + 10;
    if (v67 + 16 >= v69)
    {
      v67 = 0;
    }

    v71 = v70 + v67;
    if (v69 <= v71)
    {
      v71 = 0;
    }

    *(a1 + 88) = v71;
    if (*(v68 + 8) <= 0xFFuLL)
    {
      goto LABEL_94;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v68 + 16) + 128), v71) == 0x80000000);
    *(a1 + 64) = a3;
  }

  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v84, v9);
  if ((v86 & 1) == 0)
  {
LABEL_72:
    v72 = 16;
LABEL_73:
    *a4 = v72;
    goto LABEL_74;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_95;
  }

  v13 = v84;
  v12 = v85;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a1 + 8), IdentifierInternal);
  if (!result)
  {
    v38 = 12;
LABEL_47:
    *a4 = v38;
LABEL_74:
    v49 = 1;
    goto LABEL_75;
  }

  if (v12 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E202924);
  }

  *v13 = 4079;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  v18 = v12 - 2 - v17;
  if (v12 - 2 >= v17)
  {
    *(v16 + (-v16 & 7)) = IdentifierInternal;
    v19 = v16 + v17;
    v20 = -v19 & 3 | 4;
    v21 = v18 - v20;
    if (v18 >= v20)
    {
      *&v19[-v19 & 3] = *a2;
      v22 = &v19[v20];
      v23 = -(v19 + v20);
      v24 = v23 & 3 | 4;
      v25 = v21 - v24;
      if (v21 >= v24)
      {
        *&v22[v23 & 3] = *(a2 + 4);
        v26 = &v22[v24];
        v27 = -v26 & 7 | 8;
        if (v25 >= v27)
        {
          *&v26[-v26 & 7] = *(a2 + 8);
          v28 = v12 - v25 + v27;
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
          if (*(v32 + 8) <= 0xFFuLL)
          {
            goto LABEL_94;
          }

          if (atomic_exchange((*(v32 + 16) + 128), v31) == 0x80000000 || *(a1 + 124))
          {
            if (*(a1 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(a1 + 100));
            }

            *(a1 + 124) = 0;
          }

          while (1)
          {
            v33 = *(a1 + 80);
            if (*(v33 + 8) <= 0xFFuLL)
            {
              goto LABEL_94;
            }

            v34 = atomic_exchange(*(v33 + 16), 0x80000000uLL);
            v35 = *(a1 + 80);
            if (*(v35 + 8) <= 0xFFuLL)
            {
              goto LABEL_94;
            }

            if (!(v34 | atomic_load_explicit((*(v35 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
            {
              break;
            }

            if (*(a1 + 112) == 1)
            {
              v36 = IPC::Semaphore::waitFor((a1 + 104), v9);
              if (v36)
              {
                WTF::ApproximateTime::now(v36);
                if (v37 < v9)
                {
                  continue;
                }
              }
            }

            result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
            v38 = 17;
            goto LABEL_47;
          }

          v39 = *(a1 + 80);
          if (*(v39 + 8) <= 0xFFuLL)
          {
            goto LABEL_94;
          }

          atomic_store(0, *(v39 + 16));
          *(a1 + 88) = 0;
          v40 = *(a1 + 80);
          v41 = *(v40 + 8);
          if (v41 <= 0xFF)
          {
            goto LABEL_94;
          }

          v42 = *(a1 + 72);
          v43 = *(v40 + 16);
          v44 = v41 - 256;
          if (v42)
          {
            v53 = v42 - 1;
            v54 = v44 >= v53;
            v44 = v53;
            if (!v54)
            {
              goto LABEL_94;
            }
          }

          v45 = IPC::Decoder::operator new(0x58, v15);
          if (*(IPC::Decoder::Decoder(v45, v43 + 256, v44, *(a1 + 64)) + 25) == 3197)
          {
            IPC::Decoder::~Decoder(v45);
            bmalloc::api::tzoneFree(v46, v47);
            IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFEFu, &v90, v9);
            v48 = BYTE8(v90);
            if (BYTE8(v90))
            {
              if (BYTE8(v90) == 255)
              {
                v83 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
                mpark::throw_bad_variant_access(v83);
              }

              v38 = v90;
              result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
              if (v48 != 1)
              {
LABEL_39:
                mpark::throw_bad_variant_access(result);
              }

              goto LABEL_47;
            }

            v45 = v90;
          }

          IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
          if (*(v45 + 25) == 3194)
          {
            v38 = 11;
          }

          else
          {
            result = IPC::Decoder::decode<std::tuple<std::span<unsigned int const,18446744073709551615ul>>>(v45, &v90);
            if (v91)
            {
              v49 = 0;
              v50 = v90;
              *(a4 + 9) = *(&v90 + 1);
              *(a4 + 16) = *(&v90 + 1);
              *a4 = v45;
              *(a4 + 8) = v50;
LABEL_75:
              *(a4 + 24) = v49;
              return result;
            }

            v38 = 14;
          }

          IPC::Decoder::~Decoder(v45);
          result = bmalloc::api::tzoneFree(v51, v52);
          goto LABEL_47;
        }
      }
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v86 & 1) == 0)
  {
    goto LABEL_94;
  }

  if (v85 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E202944);
  }

  *v84 = 3197;
  v55 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v56 = *(a1 + 72);
  if (v55 + 16 >= v56)
  {
    v55 = 0;
  }

  v57 = v55 + 16;
  v58 = v56 <= v57 ? 0 : v57;
  *(a1 + 88) = v58;
  v59 = *(a1 + 80);
  if (*(v59 + 8) <= 0xFFuLL)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    JUMPOUT(0x19E202904);
  }

  atomic_exchange((*(v59 + 16) + 128), v58);
  *(a1 + 124) = 0;
  v60 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFEF, a3, v89);
  v61 = v89[0];
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v89[0], *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v61, *(a2 + 4));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v61, *(a2 + 8));
  result = IPC::Connection::sendSyncMessage(v60, v89[1], v89, 0, &v87, v9);
  if (v88)
  {
    if (v88 != 1)
    {
      goto LABEL_39;
    }

    *a4 = v87;
    *(a4 + 24) = 1;
    goto LABEL_83;
  }

  v73 = v87;
  v87 = 0;
  if (*(v73 + 25) == 3194)
  {
    v74 = 11;
  }

  else
  {
    IPC::Decoder::decode<std::tuple<std::span<unsigned int const,18446744073709551615ul>>>(v73, &v90);
    if (v91)
    {
      v75 = v90;
      *(a4 + 9) = *(&v90 + 1);
      *(a4 + 16) = *(&v90 + 1);
      *a4 = v73;
      *(a4 + 8) = v75;
      *(a4 + 24) = 0;
      goto LABEL_83;
    }

    v74 = 14;
  }

  *a4 = v74;
  *(a4 + 24) = 1;
  IPC::Decoder::~Decoder(v73);
  bmalloc::api::tzoneFree(v76, v77);
LABEL_83:
  if (!v88)
  {
    v78 = v87;
    v87 = 0;
    if (v78)
    {
      IPC::Decoder::~Decoder(v78);
      bmalloc::api::tzoneFree(v81, v82);
    }
  }

  result = v89[0];
  v89[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v62);
    return bmalloc::api::tzoneFree(v79, v80);
  }

  return result;
}

uint64_t IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetUniformLocation,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E202FC0);
  }

  *v12 = 4076;
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
      IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFECu, &v82, v9);
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
      result = IPC::Decoder::decode<std::tuple<int>>(v38);
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
    JUMPOUT(0x19E202FE0);
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
    JUMPOUT(0x19E202FA0);
  }

  atomic_exchange((*(v46 + 16) + 128), v45);
  *(a1 + 124) = 0;
  v47 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFEC, a3, &v79);
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
    v53 = IPC::Decoder::decode<std::tuple<int>>(v50);
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetVertexAttribOffset,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E20361CLL);
  }

  *v13 = 4080;
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFF0u, &v84, v9);
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
        JUMPOUT(0x19E203644);
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
    JUMPOUT(0x19E2035FCLL);
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
  IPC::Connection::createSyncMessageEncoder(0xFF0, a3, &v84);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Hint,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E2039E4);
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
  *v43 = 1264;
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
    JUMPOUT(0x19E2039C4);
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
  *v38 = 1264;
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsBuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
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
      JUMPOUT(0x19E204024);
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
    JUMPOUT(0x19E203FFCLL);
  }

  *v13 = 4081;
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
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFF1u, &v79, v9);
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
    JUMPOUT(0x19E203FDCLL);
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
  IPC::Connection::createSyncMessageEncoder(0xFF1, a3, &v79);
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsEnabled,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
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
      JUMPOUT(0x19E204664);
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
    JUMPOUT(0x19E20463CLL);
  }

  *v13 = 4082;
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
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFF2u, &v79, v9);
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
    JUMPOUT(0x19E20461CLL);
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
  IPC::Connection::createSyncMessageEncoder(0xFF2, a3, &v79);
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
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
      JUMPOUT(0x19E204CA4);
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
    JUMPOUT(0x19E204C7CLL);
  }

  *v13 = 4083;
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
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFF3u, &v79, v9);
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
    JUMPOUT(0x19E204C5CLL);
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
  IPC::Connection::createSyncMessageEncoder(0xFF3, a3, &v79);
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsProgram,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
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
      JUMPOUT(0x19E2052E4);
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
    JUMPOUT(0x19E2052BCLL);
  }

  *v13 = 4084;
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
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFF4u, &v79, v9);
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
    JUMPOUT(0x19E20529CLL);
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
  IPC::Connection::createSyncMessageEncoder(0xFF4, a3, &v79);
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsRenderbuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
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
      JUMPOUT(0x19E205924);
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
    JUMPOUT(0x19E2058FCLL);
  }

  *v13 = 4087;
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
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFF7u, &v79, v9);
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
    JUMPOUT(0x19E2058DCLL);
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
  IPC::Connection::createSyncMessageEncoder(0xFF7, a3, &v79);
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsShader,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
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
      JUMPOUT(0x19E205F64);
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
    JUMPOUT(0x19E205F3CLL);
  }

  *v13 = 4089;
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
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFF9u, &v79, v9);
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
    JUMPOUT(0x19E205F1CLL);
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
  IPC::Connection::createSyncMessageEncoder(0xFF9, a3, &v79);
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsTexture,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
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
      JUMPOUT(0x19E2065A4);
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
    JUMPOUT(0x19E20657CLL);
  }

  *v13 = 4091;
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
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFFBu, &v79, v9);
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
    JUMPOUT(0x19E20655CLL);
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
  IPC::Connection::createSyncMessageEncoder(0xFFB, a3, &v79);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::LineWidth,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, float *a2, uint64_t a3)
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
      JUMPOUT(0x19E2068F4);
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
  *v38 = 1267;
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
    JUMPOUT(0x19E2068D4);
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
  *v33 = 1267;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 1) = a3;
  *(v33 + 68) = 0;
  *(v33 + 70) = 0;
  *(v33 + 69) = 0;
  IPC::Encoder::encodeHeader(v33);
  v41 = v33;
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v33, *a2);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::LinkProgram,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E206C44);
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
  *v38 = 1268;
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
    JUMPOUT(0x19E206C24);
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
  *v33 = 1268;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::PixelStorei,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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

    v33 = v44;
    if (v44 <= 1)
    {
LABEL_47:
      __break(0xC471u);
      JUMPOUT(0x19E206FC4);
    }

    v34 = v43;
    *v43 = 3198;
    v35 = v34 + 1;
    if (v33 - 2 < (-v35 & 7 | 8uLL))
    {
      return 18;
    }

    v36 = -v35 & 7;
    *(v35 + v36) = a3;
    if (v36 != 7)
    {
      v36 = 6;
    }

    v37 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v39 = *(a1 + 72);
    v38 = *(a1 + 80);
    v40 = v36 + 10;
    if (v37 + 16 >= v39)
    {
      v37 = 0;
    }

    v41 = v40 + v37;
    if (v39 <= v41)
    {
      v41 = 0;
    }

    *(a1 + 88) = v41;
    if (*(v38 + 8) <= 0xFFuLL)
    {
      goto LABEL_46;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v38 + 16) + 128), v41) == 0x80000000);
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
    goto LABEL_47;
  }

  v11 = v43;
  *v43 = 1276;
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

      goto LABEL_46;
    }
  }

  if ((v45 & 1) == 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v44 <= 1)
  {
    __break(0xC471u);
    goto LABEL_46;
  }

  *v43 = 3197;
  v23 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v25 = *(a1 + 72);
  v24 = *(a1 + 80);
  if (v23 + 16 >= v25)
  {
    v23 = 0;
  }

  v26 = v23 + 16;
  if (v25 <= v26)
  {
    v26 = 0;
  }

  *(a1 + 88) = v26;
  if (*(v24 + 8) <= 0xFFuLL)
  {
    goto LABEL_46;
  }

  atomic_exchange((*(v24 + 16) + 128), v26);
  *(a1 + 124) = 0;
  v27 = *(a1 + 8);
  v28 = IPC::Encoder::operator new(0x238, v9);
  *v28 = 1276;
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 1) = a3;
  *(v28 + 68) = 0;
  *(v28 + 70) = 0;
  *(v28 + 69) = 0;
  IPC::Encoder::encodeHeader(v28);
  v46 = v28;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v28, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v28, a2[1]);
  v22 = IPC::Connection::sendMessageImpl(v27, &v46, 1, 0);
  v30 = v46;
  v46 = 0;
  if (v30)
  {
    IPC::Encoder::~Encoder(v30, v29);
    bmalloc::api::tzoneFree(v31, v32);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::PolygonOffset,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, float *a2, uint64_t a3)
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
      JUMPOUT(0x19E207384);
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
  *v43 = 1278;
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
    JUMPOUT(0x19E207364);
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
  *v38 = 1278;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 1) = a3;
  *(v38 + 68) = 0;
  *(v38 + 70) = 0;
  *(v38 + 69) = 0;
  IPC::Encoder::encodeHeader(v38);
  v46 = v38;
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v38, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v38, a2[1]);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::RenderbufferStorage,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v50, v7);
    if (v52 != 1)
    {
      return 16;
    }

    v40 = v51;
    if (v51 <= 1)
    {
LABEL_49:
      __break(0xC471u);
      JUMPOUT(0x19E207764);
    }

    v41 = v50;
    *v50 = 3198;
    v42 = v41 + 1;
    if (v40 - 2 < (-v42 & 7 | 8uLL))
    {
      return 18;
    }

    v43 = -v42 & 7;
    *(v42 + v43) = a3;
    if (v43 != 7)
    {
      v43 = 6;
    }

    v44 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v46 = *(a1 + 72);
    v45 = *(a1 + 80);
    v47 = v43 + 10;
    if (v44 + 16 >= v46)
    {
      v44 = 0;
    }

    v48 = v47 + v44;
    if (v46 <= v48)
    {
      v48 = 0;
    }

    *(a1 + 88) = v48;
    if (*(v45 + 8) <= 0xFFuLL)
    {
      goto LABEL_48;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v45 + 16) + 128), v48) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v50, v7);
  if (v52 != 1)
  {
    return 16;
  }

  v10 = v51;
  if (v51 <= 1)
  {
    goto LABEL_49;
  }

  v11 = v50;
  *v50 = 1284;
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
      v19 = -(v15 + v16);
      v20 = v19 & 3 | 4;
      v21 = v17 - v20;
      if (v17 >= v20)
      {
        *(v18 + (v19 & 3)) = a2[2];
        v22 = v18 + v20;
        v23 = -v22 & 3 | 4;
        if (v21 >= v23)
        {
          *(v22 + (-v22 & 3)) = a2[3];
          v24 = v10 - v21 + v23;
          if (v24 <= 0x10)
          {
            v24 = 16;
          }

          v25 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v26 = *(a1 + 72);
          if (v25 + 16 >= v26)
          {
            v25 = 0;
          }

          v27 = v25 + v24;
          if (v26 <= v27)
          {
            v27 = 0;
          }

          *(a1 + 88) = v27;
          v28 = *(a1 + 80);
          if (*(v28 + 8) > 0xFFuLL)
          {
            if (atomic_exchange((*(v28 + 16) + 128), v27) != 0x80000000 && !*(a1 + 124))
            {
              return 0;
            }

            if (*(a1 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(a1 + 100));
            }

            v29 = 0;
            *(a1 + 124) = 0;
            return v29;
          }

          goto LABEL_48;
        }
      }
    }
  }

  if ((v52 & 1) == 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v51 <= 1)
  {
    __break(0xC471u);
    goto LABEL_48;
  }

  *v50 = 3197;
  v30 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v32 = *(a1 + 72);
  v31 = *(a1 + 80);
  if (v30 + 16 >= v32)
  {
    v30 = 0;
  }

  v33 = v30 + 16;
  if (v32 <= v33)
  {
    v33 = 0;
  }

  *(a1 + 88) = v33;
  if (*(v31 + 8) <= 0xFFuLL)
  {
    goto LABEL_48;
  }

  atomic_exchange((*(v31 + 16) + 128), v33);
  *(a1 + 124) = 0;
  v34 = *(a1 + 8);
  v35 = IPC::Encoder::operator new(0x238, v9);
  *v35 = 1284;
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  *(v35 + 1) = a3;
  *(v35 + 68) = 0;
  *(v35 + 70) = 0;
  *(v35 + 69) = 0;
  IPC::Encoder::encodeHeader(v35);
  v53 = v35;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v35, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v35, a2[1]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v35, a2[2]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v35, a2[3]);
  v29 = IPC::Connection::sendMessageImpl(v34, &v53, 1, 0);
  v37 = v53;
  v53 = 0;
  if (v37)
  {
    IPC::Encoder::~Encoder(v37, v36);
    bmalloc::api::tzoneFree(v38, v39);
  }

  return v29;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SampleCoverage,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v40, v7);
    if (v42 != 1)
    {
      return 16;
    }

    v20 = v41;
    if (v41 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E207AECLL);
    }

    v21 = v40;
    *v40 = 3198;
    v22 = v21 + 1;
    if (v20 - 2 < (-v22 & 7 | 8uLL))
    {
      return 18;
    }

    v23 = -v22 & 7;
    *(v22 + v23) = a3;
    if (v23 != 7)
    {
      v23 = 6;
    }

    v24 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v26 = *(a1 + 72);
    v25 = *(a1 + 80);
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

    *(a1 + 88) = v28;
    if (*(v25 + 8) <= 0xFFuLL)
    {
      goto LABEL_45;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v25 + 16) + 128), v28) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v40, v7);
  if (v42 != 1)
  {
    return 16;
  }

  v10 = v41;
  if (v41 <= 1)
  {
    __break(0xC471u);
    goto LABEL_46;
  }

  v11 = v40;
  *v40 = 1289;
  v12 = v11 + 1;
  v13 = v10 - 2;
  v14 = -v12 & 3 | 4;
  if (v13 >= v14)
  {
    *(v12 + (-v12 & 3)) = *a2;
    if (v13 != v14)
    {
      *(v12 + v14) = *(a2 + 4);
      v15 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v17 = *(a1 + 72);
      v16 = *(a1 + 80);
      if (v15 + 16 >= v17)
      {
        v15 = 0;
      }

      v18 = v15 + 16;
      if (v17 <= v18)
      {
        v18 = 0;
      }

      *(a1 + 88) = v18;
      if (*(v16 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v16 + 16) + 128), v18) != 0x80000000 && !*(a1 + 124))
        {
          return 0;
        }

        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        v19 = 0;
        *(a1 + 124) = 0;
        return v19;
      }

      goto LABEL_45;
    }
  }

  if ((v42 & 1) == 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    JUMPOUT(0x19E207ACCLL);
  }

  if (v41 <= 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  *v40 = 3197;
  v30 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v32 = *(a1 + 72);
  v31 = *(a1 + 80);
  if (v30 + 16 >= v32)
  {
    v30 = 0;
  }

  v33 = v30 + 16;
  if (v32 <= v33)
  {
    v33 = 0;
  }

  *(a1 + 88) = v33;
  if (*(v31 + 8) <= 0xFFuLL)
  {
    goto LABEL_45;
  }

  atomic_exchange((*(v31 + 16) + 128), v33);
  *(a1 + 124) = 0;
  v34 = *(a1 + 8);
  v35 = IPC::Encoder::operator new(0x238, v9);
  *v35 = 1289;
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  *(v35 + 1) = a3;
  *(v35 + 68) = 0;
  *(v35 + 70) = 0;
  *(v35 + 69) = 0;
  IPC::Encoder::encodeHeader(v35);
  v43 = v35;
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v35, *a2);
  IPC::Encoder::operator<<<BOOL &>(v35, (a2 + 4));
  v19 = IPC::Connection::sendMessageImpl(v34, &v43, 1, 0);
  v37 = v43;
  v43 = 0;
  if (v37)
  {
    IPC::Encoder::~Encoder(v37, v36);
    bmalloc::api::tzoneFree(v38, v39);
  }

  return v19;
}
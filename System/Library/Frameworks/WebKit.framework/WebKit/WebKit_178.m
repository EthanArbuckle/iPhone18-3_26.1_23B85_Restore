uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateProgram,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F2B1CLL);
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
  *v38 = 1211;
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
    JUMPOUT(0x19E1F2AFCLL);
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
  *v33 = 1211;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateRenderbuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F2E6CLL);
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
  *v38 = 1214;
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
    JUMPOUT(0x19E1F2E4CLL);
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
  *v33 = 1214;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateShader,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F320CLL);
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
  *v43 = 1216;
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
    JUMPOUT(0x19E1F31ECLL);
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
  *v38 = 1216;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateTexture,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F355CLL);
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
  *v38 = 1217;
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
    JUMPOUT(0x19E1F353CLL);
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
  *v33 = 1217;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CullFace,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F38ACLL);
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
  *v38 = 1220;
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
    JUMPOUT(0x19E1F388CLL);
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
  *v33 = 1220;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteBuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F3BFCLL);
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
  *v38 = 1221;
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
    JUMPOUT(0x19E1F3BDCLL);
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
  *v33 = 1221;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F3F4CLL);
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
  *v38 = 1223;
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
    JUMPOUT(0x19E1F3F2CLL);
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
  *v33 = 1223;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteProgram,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F429CLL);
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
  *v38 = 1224;
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
    JUMPOUT(0x19E1F427CLL);
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
  *v33 = 1224;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteRenderbuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F45ECLL);
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
  *v38 = 1227;
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
    JUMPOUT(0x19E1F45CCLL);
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
  *v33 = 1227;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteShader,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F493CLL);
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
  *v38 = 1229;
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
    JUMPOUT(0x19E1F491CLL);
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
  *v33 = 1229;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteTexture,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F4C8CLL);
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
  *v38 = 1231;
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
    JUMPOUT(0x19E1F4C6CLL);
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
  *v33 = 1231;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DepthFunc,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F4FDCLL);
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
  *v38 = 1234;
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
    JUMPOUT(0x19E1F4FBCLL);
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
  *v33 = 1234;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DepthMask,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, char *a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v37, v7);
    if (v39 != 1)
    {
      return 16;
    }

    v17 = v38;
    if (v38 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1F5318);
    }

    v18 = v37;
    *v37 = 3198;
    v19 = v18 + 1;
    if (v17 - 2 < (-v19 & 7 | 8uLL))
    {
      return 18;
    }

    v20 = -v19 & 7;
    *(v19 + v20) = a3;
    if (v20 != 7)
    {
      v20 = 6;
    }

    v21 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v23 = *(a1 + 72);
    v22 = *(a1 + 80);
    v24 = v20 + 10;
    if (v21 + 16 >= v23)
    {
      v21 = 0;
    }

    v25 = v24 + v21;
    if (v23 <= v25)
    {
      v25 = 0;
    }

    *(a1 + 88) = v25;
    if (*(v22 + 8) <= 0xFFuLL)
    {
      goto LABEL_44;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v22 + 16) + 128), v25) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v37, v7);
  if (v39 != 1)
  {
    return 16;
  }

  v10 = v38;
  if (v38 <= 1)
  {
    __break(0xC471u);
    goto LABEL_45;
  }

  v11 = v37;
  *v37 = 1235;
  if (v10 != 2)
  {
    *(v11 + 2) = *a2;
    v12 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(a1 + 72);
    v13 = *(a1 + 80);
    if (v12 + 16 >= v14)
    {
      v12 = 0;
    }

    v15 = v12 + 16;
    if (v14 <= v15)
    {
      v15 = 0;
    }

    *(a1 + 88) = v15;
    if (*(v13 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v13 + 16) + 128), v15) != 0x80000000 && !*(a1 + 124))
      {
        return 0;
      }

      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      v16 = 0;
      *(a1 + 124) = 0;
      return v16;
    }

    goto LABEL_44;
  }

  if ((v39 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    JUMPOUT(0x19E1F52F8);
  }

  if (v38 <= 1)
  {
    __break(0xC471u);
    goto LABEL_44;
  }

  *v37 = 3197;
  v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v29 = *(a1 + 72);
  v28 = *(a1 + 80);
  if (v27 + 16 >= v29)
  {
    v27 = 0;
  }

  v30 = v27 + 16;
  if (v29 <= v30)
  {
    v30 = 0;
  }

  *(a1 + 88) = v30;
  if (*(v28 + 8) <= 0xFFuLL)
  {
    goto LABEL_44;
  }

  atomic_exchange((*(v28 + 16) + 128), v30);
  *(a1 + 124) = 0;
  v31 = *(a1 + 8);
  v32 = IPC::Encoder::operator new(0x238, v9);
  *v32 = 1235;
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 1) = a3;
  *(v32 + 68) = 0;
  *(v32 + 70) = 0;
  *(v32 + 69) = 0;
  IPC::Encoder::encodeHeader(v32);
  v40 = v32;
  IPC::Encoder::operator<<<BOOL &>(v32, a2);
  v16 = IPC::Connection::sendMessageImpl(v31, &v40, 1, 0);
  v34 = v40;
  v40 = 0;
  if (v34)
  {
    IPC::Encoder::~Encoder(v34, v33);
    bmalloc::api::tzoneFree(v35, v36);
  }

  return v16;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DepthRange,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, float *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F56B8);
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
  *v43 = 1236;
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
    JUMPOUT(0x19E1F5698);
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
  *v38 = 1236;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DetachShader,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F5A58);
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
  *v43 = 1237;
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
    JUMPOUT(0x19E1F5A38);
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
  *v38 = 1237;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Disable,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F5DA8);
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
  *v38 = 1238;
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
    JUMPOUT(0x19E1F5D88);
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
  *v33 = 1238;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DisableVertexAttribArray,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F60F8);
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
  *v38 = 1239;
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
    JUMPOUT(0x19E1F60D8);
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
  *v33 = 1239;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawArrays,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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

    v36 = v47;
    if (v47 <= 1)
    {
LABEL_48:
      __break(0xC471u);
      JUMPOUT(0x19E1F64A8);
    }

    v37 = v46;
    *v46 = 3198;
    v38 = v37 + 1;
    if (v36 - 2 < (-v38 & 7 | 8uLL))
    {
      return 18;
    }

    v39 = -v38 & 7;
    *(v38 + v39) = a3;
    if (v39 != 7)
    {
      v39 = 6;
    }

    v40 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v42 = *(a1 + 72);
    v41 = *(a1 + 80);
    v43 = v39 + 10;
    if (v40 + 16 >= v42)
    {
      v40 = 0;
    }

    v44 = v43 + v40;
    if (v42 <= v44)
    {
      v44 = 0;
    }

    *(a1 + 88) = v44;
    if (*(v41 + 8) <= 0xFFuLL)
    {
      goto LABEL_47;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v41 + 16) + 128), v44) == 0x80000000);
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
    goto LABEL_48;
  }

  v11 = v46;
  *v46 = 1241;
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

        goto LABEL_47;
      }
    }
  }

  if ((v48 & 1) == 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v47 <= 1)
  {
    __break(0xC471u);
    goto LABEL_47;
  }

  *v46 = 3197;
  v26 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(a1 + 72);
  v27 = *(a1 + 80);
  if (v26 + 16 >= v28)
  {
    v26 = 0;
  }

  v29 = v26 + 16;
  if (v28 <= v29)
  {
    v29 = 0;
  }

  *(a1 + 88) = v29;
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_47;
  }

  atomic_exchange((*(v27 + 16) + 128), v29);
  *(a1 + 124) = 0;
  v30 = *(a1 + 8);
  v31 = IPC::Encoder::operator new(0x238, v9);
  *v31 = 1241;
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  *(v31 + 1) = a3;
  *(v31 + 68) = 0;
  *(v31 + 70) = 0;
  *(v31 + 69) = 0;
  IPC::Encoder::encodeHeader(v31);
  v49 = v31;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v31, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v31, a2[1]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v31, a2[2]);
  v25 = IPC::Connection::sendMessageImpl(v30, &v49, 1, 0);
  v33 = v49;
  v49 = 0;
  if (v33)
  {
    IPC::Encoder::~Encoder(v33, v32);
    bmalloc::api::tzoneFree(v34, v35);
  }

  return v25;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawElements,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E1F68A8);
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
  *v50 = 1246;
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
      *(v15 + (-v15 & 3)) = *(a2 + 4);
      v18 = v15 + v16;
      v19 = -(v15 + v16);
      v20 = v19 & 3 | 4;
      v21 = v17 - v20;
      if (v17 >= v20)
      {
        *(v18 + (v19 & 3)) = *(a2 + 8);
        v22 = v18 + v20;
        v23 = -v22 & 7 | 8;
        if (v21 >= v23)
        {
          *(v22 + (-v22 & 7)) = *(a2 + 16);
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
  *v35 = 1246;
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  *(v35 + 1) = a3;
  *(v35 + 68) = 0;
  *(v35 + 70) = 0;
  *(v35 + 69) = 0;
  IPC::Encoder::encodeHeader(v35);
  v53 = v35;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v35, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v35, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v35, *(a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v35, *(a2 + 16));
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Enable,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F6C18);
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
  *v38 = 1250;
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
    JUMPOUT(0x19E1F6BF8);
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
  *v33 = 1250;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::EnableVertexAttribArray,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F6F68);
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
  *v38 = 1251;
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
    JUMPOUT(0x19E1F6F48);
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
  *v33 = 1251;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Finish,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v6 = v5 + v7;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v22, v6);
    if (v24 != 1)
    {
      return 16;
    }

    v13 = v23;
    if (v23 <= 1)
    {
LABEL_32:
      result = 1067;
      __break(0xC471u);
      return result;
    }

    v14 = v22;
    *v22 = 3198;
    v15 = v14 + 1;
    if (v13 - 2 < (-v15 & 7 | 8uLL))
    {
      return 18;
    }

    v16 = -v15 & 7;
    *(v15 + v16) = a3;
    if (v16 != 7)
    {
      v16 = 6;
    }

    v17 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(a1 + 72);
    v18 = *(a1 + 80);
    v20 = v16 + 10;
    if (v17 + 16 >= v19)
    {
      v17 = 0;
    }

    v21 = v20 + v17;
    if (v19 <= v21)
    {
      v21 = 0;
    }

    *(a1 + 88) = v21;
    if (*(v18 + 8) <= 0xFFuLL)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v18 + 16) + 128), v21) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v22, v6);
  if (v24 != 1)
  {
    return 16;
  }

  if (v23 <= 1)
  {
    __break(0xC471u);
    goto LABEL_31;
  }

  *v22 = 1257;
  v8 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(a1 + 72);
  v9 = *(a1 + 80);
  if (v8 + 16 >= v10)
  {
    v8 = 0;
  }

  v11 = v8 + 16;
  if (v10 <= v11)
  {
    v11 = 0;
  }

  *(a1 + 88) = v11;
  if (*(v9 + 8) <= 0xFFuLL)
  {
    goto LABEL_31;
  }

  if (atomic_exchange((*(v9 + 16) + 128), v11) != 0x80000000 && !*(a1 + 124))
  {
    return 0;
  }

  if (*(a1 + 112) == 1)
  {
    MEMORY[0x19EB16320](*(a1 + 100));
  }

  result = 0;
  *(a1 + 124) = 0;
  return result;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Flush,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 128);
  v6 = INFINITY;
  if (fabs(v5) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v6 = v5 + v7;
  }

  if (*(a1 + 64) != a3)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v22, v6);
    if (v24 != 1)
    {
      return 16;
    }

    v13 = v23;
    if (v23 <= 1)
    {
LABEL_32:
      result = 1067;
      __break(0xC471u);
      return result;
    }

    v14 = v22;
    *v22 = 3198;
    v15 = v14 + 1;
    if (v13 - 2 < (-v15 & 7 | 8uLL))
    {
      return 18;
    }

    v16 = -v15 & 7;
    *(v15 + v16) = a3;
    if (v16 != 7)
    {
      v16 = 6;
    }

    v17 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(a1 + 72);
    v18 = *(a1 + 80);
    v20 = v16 + 10;
    if (v17 + 16 >= v19)
    {
      v17 = 0;
    }

    v21 = v20 + v17;
    if (v19 <= v21)
    {
      v21 = 0;
    }

    *(a1 + 88) = v21;
    if (*(v18 + 8) <= 0xFFuLL)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v18 + 16) + 128), v21) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v22, v6);
  if (v24 != 1)
  {
    return 16;
  }

  if (v23 <= 1)
  {
    __break(0xC471u);
    goto LABEL_31;
  }

  *v22 = 1258;
  v8 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(a1 + 72);
  v9 = *(a1 + 80);
  if (v8 + 16 >= v10)
  {
    v8 = 0;
  }

  v11 = v8 + 16;
  if (v10 <= v11)
  {
    v11 = 0;
  }

  *(a1 + 88) = v11;
  if (*(v9 + 8) <= 0xFFuLL)
  {
    goto LABEL_31;
  }

  if (atomic_exchange((*(v9 + 16) + 128), v11) != 0x80000000 && !*(a1 + 124))
  {
    return 0;
  }

  if (*(a1 + 112) == 1)
  {
    MEMORY[0x19EB16320](*(a1 + 100));
  }

  result = 0;
  *(a1 + 124) = 0;
  return result;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::FramebufferRenderbuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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

    v30 = v51;
    if (v51 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1F77B0);
    }

    v31 = v50;
    *v50 = 3198;
    v32 = v31 + 1;
    if (v30 - 2 < (-v32 & 7 | 8uLL))
    {
      return 18;
    }

    v33 = -v32 & 7;
    *(v32 + v33) = a3;
    if (v33 != 7)
    {
      v33 = 6;
    }

    v34 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v36 = *(a1 + 72);
    v35 = *(a1 + 80);
    v37 = v33 + 10;
    if (v34 + 16 >= v36)
    {
      v34 = 0;
    }

    v38 = v37 + v34;
    if (v36 <= v38)
    {
      v38 = 0;
    }

    *(a1 + 88) = v38;
    if (*(v35 + 8) <= 0xFFuLL)
    {
      goto LABEL_49;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v35 + 16) + 128), v38) == 0x80000000);
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
    __break(0xC471u);
    goto LABEL_50;
  }

  v11 = v50;
  *v50 = 1259;
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

          goto LABEL_49;
        }
      }
    }
  }

  if ((v52 & 1) == 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    JUMPOUT(0x19E1F7790);
  }

  if (v51 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  *v50 = 3197;
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
    goto LABEL_49;
  }

  atomic_exchange((*(v41 + 16) + 128), v43);
  *(a1 + 124) = 0;
  v44 = *(a1 + 8);
  v45 = IPC::Encoder::operator new(0x238, v9);
  *v45 = 1259;
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  *(v45 + 1) = a3;
  *(v45 + 68) = 0;
  *(v45 + 70) = 0;
  *(v45 + 69) = 0;
  IPC::Encoder::encodeHeader(v45);
  v53 = v45;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v45, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v45, a2[1]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v45, a2[2]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v45, a2[3]);
  v29 = IPC::Connection::sendMessageImpl(v44, &v53, 1, 0);
  v47 = v53;
  v53 = 0;
  if (v47)
  {
    IPC::Encoder::~Encoder(v47, v46);
    bmalloc::api::tzoneFree(v48, v49);
  }

  return v29;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::FramebufferTexture2D,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F7BC0);
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
  *v54 = 1260;
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
  *v39 = 1260;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::FrontFace,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F7F30);
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
  *v38 = 1262;
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
    JUMPOUT(0x19E1F7F10);
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
  *v33 = 1262;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::GenerateMipmap,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1F8280);
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
  *v38 = 1263;
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
    JUMPOUT(0x19E1F8260);
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
  *v33 = 1263;
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetActiveAttrib,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v83, v9);
  if ((v85 & 1) == 0)
  {
LABEL_62:
    v61 = 16;
LABEL_63:
    *a4 = v61;
    goto LABEL_64;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_94;
  }

  v13 = v83;
  v12 = v84;
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
    JUMPOUT(0x19E1F88F0);
  }

  *v13 = 4034;
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
          v51 = v39 - 1;
          v21 = a3 >= v51;
          a3 = v51;
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFC2u, &v86, v9);
          v44 = v87;
          if (v87)
          {
            if (v87 == 255)
            {
              v82 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
              mpark::throw_bad_variant_access(v82);
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
          v89 = 0;
          result = IPC::Decoder::operator>><std::tuple<BOOL,WebCore::GraphicsContextGLActiveInfo>>(v41, &v86);
          if (v89)
          {
            v45 = 0;
            v46 = v86;
            v47 = v87;
            v48 = v88;
            *a4 = v41;
            *(a4 + 8) = v46;
            *(a4 + 16) = v47;
            *(a4 + 24) = v48;
LABEL_65:
            *(a4 + 32) = v45;
            return result;
          }

          v35 = 14;
        }

        IPC::Decoder::~Decoder(v41);
        result = bmalloc::api::tzoneFree(v49, v50);
        goto LABEL_48;
      }
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v85 & 1) == 0)
  {
    while (1)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v86, v9);
      if (v88 != 1)
      {
        goto LABEL_62;
      }

      v52 = v87;
      if (v87 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1F8918);
      }

      v53 = v86;
      *v86 = 3198;
      v54 = (v53 + 2);
      if (v52 - 2 < (-v54 & 7 | 8uLL))
      {
        break;
      }

      v55 = -v54 & 7;
      *(v54 + v55) = a3;
      if (v55 != 7)
      {
        v55 = 6;
      }

      v56 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v58 = *(a1 + 72);
      v57 = *(a1 + 80);
      v59 = v55 + 10;
      if (v56 + 16 >= v58)
      {
        v56 = 0;
      }

      v60 = v59 + v56;
      if (v58 <= v60)
      {
        v60 = 0;
      }

      *(a1 + 88) = v60;
      if (*(v57 + 8) > 0xFFuLL)
      {
        IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v57 + 16) + 128), v60) == 0x80000000);
        *(a1 + 64) = a3;
        goto LABEL_4;
      }
    }

    v61 = 18;
    goto LABEL_63;
  }

  if (v84 <= 1)
  {
LABEL_94:
    __break(0xC471u);
    JUMPOUT(0x19E1F88D0);
  }

  *v83 = 3197;
  v62 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v63 = *(a1 + 72);
  if (v62 + 16 >= v63)
  {
    v62 = 0;
  }

  v64 = v62 + 16;
  if (v63 <= v64)
  {
    v65 = 0;
  }

  else
  {
    v65 = v64;
  }

  *(a1 + 88) = v65;
  v66 = *(a1 + 80);
  if (*(v66 + 8) <= 0xFFuLL)
  {
    goto LABEL_50;
  }

  atomic_exchange((*(v66 + 16) + 128), v65);
  *(a1 + 124) = 0;
  v67 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFC2, a3, v92);
  v68 = v92[0];
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v92[0], *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v68, a2[1]);
  result = IPC::Connection::sendSyncMessage(v67, v92[1], v92, 0, &v90, v9);
  if (v91)
  {
    if (v91 != 1)
    {
      goto LABEL_40;
    }

    *a4 = v90;
    *(a4 + 32) = 1;
    goto LABEL_84;
  }

  v70 = v90;
  v90 = 0;
  if (*(v70 + 25) == 3194)
  {
    v71 = 11;
  }

  else
  {
    LOBYTE(v86) = 0;
    v89 = 0;
    v70 = IPC::Decoder::operator>><std::tuple<BOOL,WebCore::GraphicsContextGLActiveInfo>>(v70, &v86);
    if (v89 == 1)
    {
      v72 = v86;
      v73 = v87;
      v74 = v88;
      *a4 = v70;
      *(a4 + 8) = v72;
      *(a4 + 16) = v73;
      *(a4 + 24) = v74;
      *(a4 + 32) = 0;
      goto LABEL_84;
    }

    v71 = 14;
  }

  *a4 = v71;
  *(a4 + 32) = 1;
  IPC::Decoder::~Decoder(v70);
  bmalloc::api::tzoneFree(v75, v76);
LABEL_84:
  if (!v91)
  {
    v77 = v90;
    v90 = 0;
    if (v77)
    {
      IPC::Decoder::~Decoder(v77);
      bmalloc::api::tzoneFree(v80, v81);
    }
  }

  result = v92[0];
  v92[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v69);
    return bmalloc::api::tzoneFree(v78, v79);
  }

  return result;
}

IPC::Decoder *IPC::Decoder::operator>><std::tuple<BOOL,WebCore::GraphicsContextGLActiveInfo>>(IPC::Decoder *a1, uint64_t a2)
{
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *a1;
  if (v6 <= &v7[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(a1 + 3);
    if (v13)
    {
      if (v6)
      {
        (*(*v13 + 16))(v13);
        v6 = *(a1 + 1);
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_8;
  }

  *(a1 + 2) = v7 + 1;
  if (!v7)
  {
LABEL_8:
    *a1 = 0;
    *(a1 + 1) = 0;
    v14 = *(a1 + 3);
    if (v14)
    {
      if (v6)
      {
        (*(*v14 + 16))(v14);
        v8 = *a1;
        v6 = *(a1 + 1);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
LABEL_11:
    *a1 = 0;
    *(a1 + 1) = 0;
    v15 = *(a1 + 3);
    if (v15 && v6)
    {
      (*(*v15 + 16))(v15, v8);
    }

    goto LABEL_12;
  }

  v9 = *v7;
  if (v9 >= 2)
  {
    goto LABEL_11;
  }

  IPC::Decoder::decode<WebCore::GraphicsContextGLActiveInfo>(v22, a1);
  v11 = v23;
  if (v23 == 1)
  {
    v12 = 0;
    v2 = v22[0];
    v3 = v22[1];
    goto LABEL_14;
  }

LABEL_12:
  v10 = *a1;
  v16 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v17 = *(a1 + 3);
  if (v17 && v16)
  {
    (*(*v17 + 16))(v17, v10);
  }

  LOBYTE(v9) = 0;
  v11 = 0;
  v12 = 1;
LABEL_14:
  if (*(a2 + 24) == v11)
  {
    if (*(a2 + 24))
    {
      *a2 = v9;
      v18 = *(a2 + 8);
      *(a2 + 8) = v2;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v10);
      }

      *(a2 + 16) = v3;
      return a1;
    }
  }

  else
  {
    if (!*(a2 + 24))
    {
      *a2 = v9;
      *(a2 + 8) = v2;
      *(a2 + 16) = v3;
      *(a2 + 24) = 1;
      return a1;
    }

    v19 = *(a2 + 8);
    *(a2 + 8) = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v10);
    }

    *(a2 + 24) = 0;
  }

  if (v2)
  {
    v20 = v12;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v10);
  }

  return a1;
}

uint64_t IPC::Decoder::decode<WebCore::GraphicsContextGLActiveInfo>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebCore::GraphicsContextGLActiveInfo,void>::decode(a2, a1);
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniform,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v83, v9);
  if ((v85 & 1) == 0)
  {
LABEL_62:
    v61 = 16;
LABEL_63:
    *a4 = v61;
    goto LABEL_64;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_94;
  }

  v13 = v83;
  v12 = v84;
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
    JUMPOUT(0x19E1F9248);
  }

  *v13 = 4035;
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
          v51 = v39 - 1;
          v21 = a3 >= v51;
          a3 = v51;
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFC3u, &v86, v9);
          v44 = v87;
          if (v87)
          {
            if (v87 == 255)
            {
              v82 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
              mpark::throw_bad_variant_access(v82);
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
          v89 = 0;
          result = IPC::Decoder::operator>><std::tuple<BOOL,WebCore::GraphicsContextGLActiveInfo>>(v41, &v86);
          if (v89)
          {
            v45 = 0;
            v46 = v86;
            v47 = v87;
            v48 = v88;
            *a4 = v41;
            *(a4 + 8) = v46;
            *(a4 + 16) = v47;
            *(a4 + 24) = v48;
LABEL_65:
            *(a4 + 32) = v45;
            return result;
          }

          v35 = 14;
        }

        IPC::Decoder::~Decoder(v41);
        result = bmalloc::api::tzoneFree(v49, v50);
        goto LABEL_48;
      }
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v85 & 1) == 0)
  {
    while (1)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v86, v9);
      if (v88 != 1)
      {
        goto LABEL_62;
      }

      v52 = v87;
      if (v87 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1F9270);
      }

      v53 = v86;
      *v86 = 3198;
      v54 = (v53 + 2);
      if (v52 - 2 < (-v54 & 7 | 8uLL))
      {
        break;
      }

      v55 = -v54 & 7;
      *(v54 + v55) = a3;
      if (v55 != 7)
      {
        v55 = 6;
      }

      v56 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v58 = *(a1 + 72);
      v57 = *(a1 + 80);
      v59 = v55 + 10;
      if (v56 + 16 >= v58)
      {
        v56 = 0;
      }

      v60 = v59 + v56;
      if (v58 <= v60)
      {
        v60 = 0;
      }

      *(a1 + 88) = v60;
      if (*(v57 + 8) > 0xFFuLL)
      {
        IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v57 + 16) + 128), v60) == 0x80000000);
        *(a1 + 64) = a3;
        goto LABEL_4;
      }
    }

    v61 = 18;
    goto LABEL_63;
  }

  if (v84 <= 1)
  {
LABEL_94:
    __break(0xC471u);
    JUMPOUT(0x19E1F9228);
  }

  *v83 = 3197;
  v62 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v63 = *(a1 + 72);
  if (v62 + 16 >= v63)
  {
    v62 = 0;
  }

  v64 = v62 + 16;
  if (v63 <= v64)
  {
    v65 = 0;
  }

  else
  {
    v65 = v64;
  }

  *(a1 + 88) = v65;
  v66 = *(a1 + 80);
  if (*(v66 + 8) <= 0xFFuLL)
  {
    goto LABEL_50;
  }

  atomic_exchange((*(v66 + 16) + 128), v65);
  *(a1 + 124) = 0;
  v67 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFC3, a3, v92);
  v68 = v92[0];
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v92[0], *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v68, a2[1]);
  result = IPC::Connection::sendSyncMessage(v67, v92[1], v92, 0, &v90, v9);
  if (v91)
  {
    if (v91 != 1)
    {
      goto LABEL_40;
    }

    *a4 = v90;
    *(a4 + 32) = 1;
    goto LABEL_84;
  }

  v70 = v90;
  v90 = 0;
  if (*(v70 + 25) == 3194)
  {
    v71 = 11;
  }

  else
  {
    LOBYTE(v86) = 0;
    v89 = 0;
    v70 = IPC::Decoder::operator>><std::tuple<BOOL,WebCore::GraphicsContextGLActiveInfo>>(v70, &v86);
    if (v89 == 1)
    {
      v72 = v86;
      v73 = v87;
      v74 = v88;
      *a4 = v70;
      *(a4 + 8) = v72;
      *(a4 + 16) = v73;
      *(a4 + 24) = v74;
      *(a4 + 32) = 0;
      goto LABEL_84;
    }

    v71 = 14;
  }

  *a4 = v71;
  *(a4 + 32) = 1;
  IPC::Decoder::~Decoder(v70);
  bmalloc::api::tzoneFree(v75, v76);
LABEL_84:
  if (!v91)
  {
    v77 = v90;
    v90 = 0;
    if (v77)
    {
      IPC::Decoder::~Decoder(v77);
      bmalloc::api::tzoneFree(v80, v81);
    }
  }

  result = v92[0];
  v92[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v69);
    return bmalloc::api::tzoneFree(v78, v79);
  }

  return result;
}

uint64_t IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetAttribLocation,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E1F98ECLL);
  }

  *v12 = 4039;
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
      IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFC7u, &v82, v9);
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
    JUMPOUT(0x19E1F990CLL);
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
    JUMPOUT(0x19E1F98CCLL);
  }

  atomic_exchange((*(v46 + 16) + 128), v45);
  *(a1 + 124) = 0;
  v47 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFC7, a3, &v79);
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

uint64_t IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetBufferParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E1F9F50);
  }

  *v13 = 4041;
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFC9u, &v83, v9);
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
        JUMPOUT(0x19E1F9F78);
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
    JUMPOUT(0x19E1F9F30);
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
  IPC::Connection::createSyncMessageEncoder(0xFC9, a3, &v83);
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetString,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E1FA5A4);
  }

  *v13 = 4068;
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
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFE4u, &v82, v9);
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
        JUMPOUT(0x19E1FA5CCLL);
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
    JUMPOUT(0x19E1FA584);
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
  IPC::Connection::createSyncMessageEncoder(0xFE4, a3, &v82);
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetFloatv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v77, v9);
  if ((v79 & 1) == 0)
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

  v13 = v77;
  v12 = v78;
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
    JUMPOUT(0x19E1FAC2CLL);
  }

  *v13 = 4045;
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
      v24 = -v23 & 7 | 8;
      if (v22 >= v24)
      {
        *&v23[-v23 & 7] = *(a2 + 8);
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFCDu, &v80, v9);
          v44 = BYTE8(v80);
          if (BYTE8(v80))
          {
            if (BYTE8(v80) == 255)
            {
              v76 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
              mpark::throw_bad_variant_access(v76);
            }

            v35 = v80;
            result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
            if (v44 != 1)
            {
LABEL_40:
              mpark::throw_bad_variant_access(result);
            }

            goto LABEL_48;
          }

          v41 = v80;
        }

        IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
        if (*(v41 + 25) == 3194)
        {
          v35 = 11;
        }

        else
        {
          LOBYTE(v80) = 0;
          v81 = 0;
          result = IPC::Decoder::operator>><std::tuple<std::span<float const,18446744073709551615ul>>>(v41, &v80);
          if (v81)
          {
            v45 = 0;
            *(a4 + 8) = v80;
            *a4 = v41;
LABEL_65:
            *(a4 + 24) = v45;
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
  if ((v79 & 1) == 0)
  {
    while (1)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v80, v9);
      if (v81 != 1)
      {
        goto LABEL_62;
      }

      v49 = *(&v80 + 1);
      if (*(&v80 + 1) <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1FAC54);
      }

      v50 = v80;
      *v80 = 3198;
      v51 = v50 + 2;
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

  if (v78 <= 1)
  {
LABEL_94:
    __break(0xC471u);
    JUMPOUT(0x19E1FAC0CLL);
  }

  *v77 = 3197;
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
  IPC::Connection::createSyncMessageEncoder(0xFCD, a3, v84);
  v65 = v84[0];
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v84[0], *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v65, *(a2 + 8));
  result = IPC::Connection::sendSyncMessage(v64, v84[1], v84, 0, &v82, v9);
  if (v83)
  {
    if (v83 != 1)
    {
      goto LABEL_40;
    }

    *a4 = v82;
    *(a4 + 24) = 1;
    goto LABEL_84;
  }

  v67 = v82;
  v82 = 0;
  if (*(v67 + 25) == 3194)
  {
    v68 = 11;
  }

  else
  {
    LOBYTE(v80) = 0;
    v81 = 0;
    v67 = IPC::Decoder::operator>><std::tuple<std::span<float const,18446744073709551615ul>>>(v67, &v80);
    if (v81 == 1)
    {
      *(a4 + 8) = v80;
      *a4 = v67;
      *(a4 + 24) = 0;
      goto LABEL_84;
    }

    v68 = 14;
  }

  *a4 = v68;
  *(a4 + 24) = 1;
  IPC::Decoder::~Decoder(v67);
  bmalloc::api::tzoneFree(v69, v70);
LABEL_84:
  if (!v83)
  {
    v71 = v82;
    v82 = 0;
    if (v71)
    {
      IPC::Decoder::~Decoder(v71);
      bmalloc::api::tzoneFree(v74, v75);
    }
  }

  result = v84[0];
  v84[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v66);
    return bmalloc::api::tzoneFree(v72, v73);
  }

  return result;
}

IPC::Decoder *IPC::Decoder::operator>><std::tuple<std::span<float const,18446744073709551615ul>>>(IPC::Decoder *a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, &v13);
  if (v15)
  {
    goto LABEL_2;
  }

  v7 = *a1;
  v8 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v9 = *(a1 + 3);
  if (v9 && v8)
  {
    (*(*v9 + 16))(v9, v7);
    if (v15)
    {
LABEL_2:
      v4 = v13;
      v16[0] = *v14;
      *(v16 + 7) = *&v14[7];
      v5 = 1;
      goto LABEL_3;
    }

    v5 = 0;
    v10 = *a1;
    v11 = *(a1 + 1);
    v12 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    v4 = 0;
    if (v12 && v11)
    {
      (*(*v12 + 16))(v12, v10);
      v5 = 0;
      v4 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
    *a1 = 0;
    *(a1 + 1) = 0;
  }

LABEL_3:
  if (*(a2 + 16) == v5)
  {
    if (*(a2 + 16))
    {
      *a2 = v4;
      *(a2 + 1) = v16[0];
      *(a2 + 8) = *(v16 + 7);
    }
  }

  else if (*(a2 + 16))
  {
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = v4;
    *(a2 + 1) = v16[0];
    *(a2 + 8) = *(v16 + 7);
    *(a2 + 16) = 1;
  }

  return a1;
}

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetIntegerv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v77, v9);
  if ((v79 & 1) == 0)
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

  v13 = v77;
  v12 = v78;
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
    JUMPOUT(0x19E1FB424);
  }

  *v13 = 4052;
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
      v24 = -v23 & 7 | 8;
      if (v22 >= v24)
      {
        *&v23[-v23 & 7] = *(a2 + 8);
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFD4u, &v80, v9);
          v44 = BYTE8(v80);
          if (BYTE8(v80))
          {
            if (BYTE8(v80) == 255)
            {
              v76 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
              mpark::throw_bad_variant_access(v76);
            }

            v35 = v80;
            result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
            if (v44 != 1)
            {
LABEL_40:
              mpark::throw_bad_variant_access(result);
            }

            goto LABEL_48;
          }

          v41 = v80;
        }

        IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
        if (*(v41 + 25) == 3194)
        {
          v35 = 11;
        }

        else
        {
          LOBYTE(v80) = 0;
          v81 = 0;
          result = IPC::Decoder::operator>><std::tuple<std::span<int const,18446744073709551615ul>>>(v41, &v80);
          if (v81)
          {
            v45 = 0;
            *(a4 + 8) = v80;
            *a4 = v41;
LABEL_65:
            *(a4 + 24) = v45;
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
  if ((v79 & 1) == 0)
  {
    while (1)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v80, v9);
      if (v81 != 1)
      {
        goto LABEL_62;
      }

      v49 = *(&v80 + 1);
      if (*(&v80 + 1) <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1FB44CLL);
      }

      v50 = v80;
      *v80 = 3198;
      v51 = v50 + 2;
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

  if (v78 <= 1)
  {
LABEL_94:
    __break(0xC471u);
    JUMPOUT(0x19E1FB404);
  }

  *v77 = 3197;
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
  IPC::Connection::createSyncMessageEncoder(0xFD4, a3, v84);
  v65 = v84[0];
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v84[0], *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v65, *(a2 + 8));
  result = IPC::Connection::sendSyncMessage(v64, v84[1], v84, 0, &v82, v9);
  if (v83)
  {
    if (v83 != 1)
    {
      goto LABEL_40;
    }

    *a4 = v82;
    *(a4 + 24) = 1;
    goto LABEL_84;
  }

  v67 = v82;
  v82 = 0;
  if (*(v67 + 25) == 3194)
  {
    v68 = 11;
  }

  else
  {
    LOBYTE(v80) = 0;
    v81 = 0;
    v67 = IPC::Decoder::operator>><std::tuple<std::span<int const,18446744073709551615ul>>>(v67, &v80);
    if (v81 == 1)
    {
      *(a4 + 8) = v80;
      *a4 = v67;
      *(a4 + 24) = 0;
      goto LABEL_84;
    }

    v68 = 14;
  }

  *a4 = v68;
  *(a4 + 24) = 1;
  IPC::Decoder::~Decoder(v67);
  bmalloc::api::tzoneFree(v69, v70);
LABEL_84:
  if (!v83)
  {
    v71 = v82;
    v82 = 0;
    if (v71)
    {
      IPC::Decoder::~Decoder(v71);
      bmalloc::api::tzoneFree(v74, v75);
    }
  }

  result = v84[0];
  v84[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v66);
    return bmalloc::api::tzoneFree(v72, v73);
  }

  return result;
}

IPC::Decoder *IPC::Decoder::operator>><std::tuple<std::span<int const,18446744073709551615ul>>>(IPC::Decoder *a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, &v13);
  if (v15)
  {
    goto LABEL_2;
  }

  v7 = *a1;
  v8 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v9 = *(a1 + 3);
  if (v9 && v8)
  {
    (*(*v9 + 16))(v9, v7);
    if (v15)
    {
LABEL_2:
      v4 = v13;
      v16[0] = *v14;
      *(v16 + 7) = *&v14[7];
      v5 = 1;
      goto LABEL_3;
    }

    v5 = 0;
    v10 = *a1;
    v11 = *(a1 + 1);
    v12 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    v4 = 0;
    if (v12 && v11)
    {
      (*(*v12 + 16))(v12, v10);
      v5 = 0;
      v4 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
    *a1 = 0;
    *(a1 + 1) = 0;
  }

LABEL_3:
  if (*(a2 + 16) == v5)
  {
    if (*(a2 + 16))
    {
      *a2 = v4;
      *(a2 + 1) = v16[0];
      *(a2 + 8) = *(v16 + 7);
    }
  }

  else if (*(a2 + 16))
  {
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = v4;
    *(a2 + 1) = v16[0];
    *(a2 + 8) = *(v16 + 7);
    *(a2 + 16) = 1;
  }

  return a1;
}

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetIntegeri_v,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, int *a3, unint64_t a4)
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
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, &v79, v9);
  if ((v81 & 1) == 0)
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

  v13 = v79;
  v12 = v80;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a2 + 8), IdentifierInternal);
  if (!result)
  {
    v35 = 12;
LABEL_48:
    *a1 = v35;
LABEL_64:
    v46 = 1;
    goto LABEL_65;
  }

  if (v12 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1FBBF8);
  }

  *v13 = 4051;
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
          IPC::Connection::waitForSyncReply(*(a2 + 8), IdentifierInternal, 0xFD3u, &v84, v9);
          v44 = v85;
          if (v85)
          {
            if (v85 == 255)
            {
              v78 = IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
              mpark::throw_bad_variant_access(v78);
            }

            v35 = v84;
            result = IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
            if (v44 != 1)
            {
LABEL_40:
              mpark::throw_bad_variant_access(result);
            }

            goto LABEL_48;
          }

          v41 = v84;
        }

        IPC::Connection::popPendingSyncRequestID(*(a2 + 8));
        if (*(v41 + 25) == 3194)
        {
          v35 = 11;
        }

        else
        {
          result = IPC::Decoder::decode<std::tuple<std::span<int const,4ul>>>(v41);
          if (v45)
          {
            v46 = 0;
            *a1 = v41;
            *(a1 + 8) = result;
LABEL_65:
            *(a1 + 16) = v46;
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
  if ((v81 & 1) == 0)
  {
    while (1)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a2 + 72, &v79, v9);
      if (v81 != 1)
      {
        goto LABEL_62;
      }

      v50 = v80;
      if (v80 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1FBC20);
      }

      v51 = v79;
      *v79 = 3198;
      v52 = v51 + 1;
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

  if (v80 <= 1)
  {
LABEL_94:
    __break(0xC471u);
    JUMPOUT(0x19E1FBBD8);
  }

  *v79 = 3197;
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
  IPC::Connection::createSyncMessageEncoder(0xFD3, a4, &v84);
  v66 = v84;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v84, *a3);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v66, a3[1]);
  result = IPC::Connection::sendSyncMessage(v65, v85, &v84, 0, &v82, v9);
  if (v83)
  {
    if (v83 != 1)
    {
      goto LABEL_40;
    }

    *a1 = v82;
    *(a1 + 16) = 1;
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
    v70 = IPC::Decoder::decode<std::tuple<std::span<int const,4ul>>>(v68);
    if (v67)
    {
      *a1 = v68;
      *(a1 + 8) = v70;
      *(a1 + 16) = 0;
      goto LABEL_84;
    }

    v69 = 14;
  }

  *a1 = v69;
  *(a1 + 16) = 1;
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

unint64_t IPC::Decoder::decode<std::tuple<std::span<int const,4ul>>>(uint64_t *a1)
{
  result = IPC::Decoder::decode<std::span<int const,4ul>>(a1);
  if ((v3 & 1) == 0)
  {
    v5 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6 && v4 != 0)
    {
      v9 = result;
      v8 = v3;
      (*(*v6 + 16))(v6, v5);
      result = v9;
      v3 = v8;
    }
  }

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return result;
}

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetInteger64,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E1FC2BCLL);
  }

  *v13 = 4048;
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
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFD0u, &v80, v9);
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
        JUMPOUT(0x19E1FC2E4);
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
    JUMPOUT(0x19E1FC29CLL);
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
  IPC::Connection::createSyncMessageEncoder(0xFD0, a3, &v80);
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetInteger64i,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E1FC920);
  }

  *v13 = 4050;
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFD2u, &v84, v9);
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
          result = IPC::Decoder::decode<std::tuple<long long>>(v41);
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
        JUMPOUT(0x19E1FC948);
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
    JUMPOUT(0x19E1FC900);
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
  IPC::Connection::createSyncMessageEncoder(0xFD2, a3, &v84);
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
    v70 = IPC::Decoder::decode<std::tuple<long long>>(v68);
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

uint64_t IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetProgrami,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E1FCF8CLL);
  }

  *v13 = 4055;
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFD7u, &v83, v9);
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
        JUMPOUT(0x19E1FCFB4);
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
    JUMPOUT(0x19E1FCF6CLL);
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
  IPC::Connection::createSyncMessageEncoder(0xFD7, a3, &v83);
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetBooleanv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v77, v9);
  if ((v79 & 1) == 0)
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

  v13 = v77;
  v12 = v78;
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
    JUMPOUT(0x19E1FD614);
  }

  *v13 = 4040;
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
      v24 = -v23 & 7 | 8;
      if (v22 >= v24)
      {
        *&v23[-v23 & 7] = *(a2 + 8);
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFC8u, &v80, v9);
          v44 = BYTE8(v80);
          if (BYTE8(v80))
          {
            if (BYTE8(v80) == 255)
            {
              v76 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
              mpark::throw_bad_variant_access(v76);
            }

            v35 = v80;
            result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
            if (v44 != 1)
            {
LABEL_40:
              mpark::throw_bad_variant_access(result);
            }

            goto LABEL_48;
          }

          v41 = v80;
        }

        IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
        if (*(v41 + 25) == 3194)
        {
          v35 = 11;
        }

        else
        {
          LOBYTE(v80) = 0;
          v81 = 0;
          result = IPC::Decoder::operator>><std::tuple<std::span<BOOL const,18446744073709551615ul>>>(v41, &v80);
          if (v81)
          {
            v45 = 0;
            *(a4 + 8) = v80;
            *a4 = v41;
LABEL_65:
            *(a4 + 24) = v45;
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
  if ((v79 & 1) == 0)
  {
    while (1)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v80, v9);
      if (v81 != 1)
      {
        goto LABEL_62;
      }

      v49 = *(&v80 + 1);
      if (*(&v80 + 1) <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1FD63CLL);
      }

      v50 = v80;
      *v80 = 3198;
      v51 = v50 + 2;
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

  if (v78 <= 1)
  {
LABEL_94:
    __break(0xC471u);
    JUMPOUT(0x19E1FD5F4);
  }

  *v77 = 3197;
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
  IPC::Connection::createSyncMessageEncoder(0xFC8, a3, v84);
  v65 = v84[0];
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v84[0], *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v65, *(a2 + 8));
  result = IPC::Connection::sendSyncMessage(v64, v84[1], v84, 0, &v82, v9);
  if (v83)
  {
    if (v83 != 1)
    {
      goto LABEL_40;
    }

    *a4 = v82;
    *(a4 + 24) = 1;
    goto LABEL_84;
  }

  v67 = v82;
  v82 = 0;
  if (*(v67 + 25) == 3194)
  {
    v68 = 11;
  }

  else
  {
    LOBYTE(v80) = 0;
    v81 = 0;
    v67 = IPC::Decoder::operator>><std::tuple<std::span<BOOL const,18446744073709551615ul>>>(v67, &v80);
    if (v81 == 1)
    {
      *(a4 + 8) = v80;
      *a4 = v67;
      *(a4 + 24) = 0;
      goto LABEL_84;
    }

    v68 = 14;
  }

  *a4 = v68;
  *(a4 + 24) = 1;
  IPC::Decoder::~Decoder(v67);
  bmalloc::api::tzoneFree(v69, v70);
LABEL_84:
  if (!v83)
  {
    v71 = v82;
    v82 = 0;
    if (v71)
    {
      IPC::Decoder::~Decoder(v71);
      bmalloc::api::tzoneFree(v74, v75);
    }
  }

  result = v84[0];
  v84[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v66);
    return bmalloc::api::tzoneFree(v72, v73);
  }

  return result;
}
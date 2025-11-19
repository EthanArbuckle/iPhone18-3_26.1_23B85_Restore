uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttribI4ui,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E21FDF4);
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
  *v54 = 1364;
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
    JUMPOUT(0x19E21FDD4);
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
  *v49 = 1364;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttribI4uiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
LABEL_49:
      __break(0xC471u);
      JUMPOUT(0x19E220198);
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
      goto LABEL_48;
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
    goto LABEL_49;
  }

  v11 = v46;
  *v46 = 1365;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 < v13 || (*(v12 + (-v12 & 3)) = *a2, v15 = v12 + v13, v16 = -v15 & 3 | 0x10, v14 < v16))
  {
    if (v48)
    {
      if (v47 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E2201B8);
      }

      *v46 = 3197;
      v17 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(a1 + 72);
      v18 = *(a1 + 80);
      if (v17 + 16 >= v19)
      {
        v17 = 0;
      }

      v20 = v17 + 16;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(a1 + 88) = v20;
      if (*(v18 + 8) > 0xFFuLL)
      {
        atomic_exchange((*(v18 + 16) + 128), v20);
        *(a1 + 124) = 0;
        v21 = *(a1 + 8);
        v22 = IPC::Encoder::operator new(0x238, v9);
        *v22 = 1365;
        *(v22 + 2) = 0;
        *(v22 + 3) = 0;
        *(v22 + 1) = a3;
        *(v22 + 68) = 0;
        *(v22 + 70) = 0;
        *(v22 + 69) = 0;
        IPC::Encoder::encodeHeader(v22);
        v49 = v22;
        IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v22, *a2);
        v23 = **(a2 + 8);
        v24 = IPC::Encoder::grow(v22, 4uLL, 16);
        if (v25 > 0xF)
        {
          *v24 = *v23;
          v27 = IPC::Connection::sendMessageImpl(v21, &v49, 1, 0);
          v28 = v49;
          v49 = 0;
          if (v28)
          {
            IPC::Encoder::~Encoder(v28, v26);
            bmalloc::api::tzoneFree(v29, v30);
          }

          return v27;
        }

        __break(0xC471u);
      }
    }

    goto LABEL_48;
  }

  *(v15 + (-v15 & 3)) = ***(a2 + 8);
  v31 = v10 - v14 + v16;
  if (v31 <= 0x10)
  {
    v31 = 16;
  }

  v32 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v33 = *(a1 + 72);
  if (v32 + 16 >= v33)
  {
    v32 = 0;
  }

  v34 = v32 + v31;
  if (v33 <= v34)
  {
    v34 = 0;
  }

  *(a1 + 88) = v34;
  v35 = *(a1 + 80);
  if (*(v35 + 8) <= 0xFFuLL)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (atomic_exchange((*(v35 + 16) + 128), v34) != 0x80000000 && !*(a1 + 124))
  {
    return 0;
  }

  if (*(a1 + 112) == 1)
  {
    MEMORY[0x19EB16320](*(a1 + 100));
  }

  v27 = 0;
  *(a1 + 124) = 0;
  return v27;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttribIPointer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E2205E8);
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
  *v54 = 1366;
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
        v24 = v23 & 3 | 4;
        v25 = v21 - v24;
        if (v21 >= v24)
        {
          *(v22 + (v23 & 3)) = *(a2 + 12);
          v26 = v22 + v24;
          v27 = -v26 & 7 | 8;
          if (v25 >= v27)
          {
            *(v26 + (-v26 & 7)) = *(a2 + 16);
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
  *v39 = 1366;
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 1) = a3;
  *(v39 + 68) = 0;
  *(v39 + 70) = 0;
  *(v39 + 69) = 0;
  IPC::Encoder::encodeHeader(v39);
  v57 = v39;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v39, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v39, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v39, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v39, *(a2 + 12));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v39, *(a2 + 16));
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawRangeElements,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v57, v7);
    if (v59 != 1)
    {
      return 16;
    }

    v47 = v58;
    if (v58 <= 1)
    {
LABEL_53:
      __break(0xC471u);
      JUMPOUT(0x19E220A48);
    }

    v48 = v57;
    *v57 = 3198;
    v49 = v48 + 1;
    if (v47 - 2 < (-v49 & 7 | 8uLL))
    {
      return 18;
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
    if (*(v52 + 8) <= 0xFFuLL)
    {
      goto LABEL_52;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v52 + 16) + 128), v55) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v57, v7);
  if (v59 != 1)
  {
    return 16;
  }

  v10 = v58;
  if (v58 <= 1)
  {
    goto LABEL_53;
  }

  v11 = v57;
  *v57 = 1249;
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
        v23 = -v22 & 3 | 4;
        v24 = v21 - v23;
        if (v21 >= v23)
        {
          *(v22 + (-v22 & 3)) = *(a2 + 12);
          v25 = v22 + v23;
          v26 = -(v22 + v23);
          v27 = v26 & 3 | 4;
          v28 = v24 - v27;
          if (v24 >= v27)
          {
            *(v25 + (v26 & 3)) = *(a2 + 16);
            v29 = v25 + v27;
            v30 = -v29 & 7 | 8;
            if (v28 >= v30)
            {
              *(v29 + (-v29 & 7)) = *(a2 + 24);
              v31 = v10 - v28 + v30;
              if (v31 <= 0x10)
              {
                v31 = 16;
              }

              v32 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
              v33 = *(a1 + 72);
              if (v32 + 16 >= v33)
              {
                v32 = 0;
              }

              v34 = v32 + v31;
              if (v33 <= v34)
              {
                v34 = 0;
              }

              *(a1 + 88) = v34;
              v35 = *(a1 + 80);
              if (*(v35 + 8) > 0xFFuLL)
              {
                if (atomic_exchange((*(v35 + 16) + 128), v34) != 0x80000000 && !*(a1 + 124))
                {
                  return 0;
                }

                if (*(a1 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(a1 + 100));
                }

                v36 = 0;
                *(a1 + 124) = 0;
                return v36;
              }

              goto LABEL_52;
            }
          }
        }
      }
    }
  }

  if ((v59 & 1) == 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v58 <= 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  *v57 = 3197;
  v37 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v39 = *(a1 + 72);
  v38 = *(a1 + 80);
  if (v37 + 16 >= v39)
  {
    v37 = 0;
  }

  v40 = v37 + 16;
  if (v39 <= v40)
  {
    v40 = 0;
  }

  *(a1 + 88) = v40;
  if (*(v38 + 8) <= 0xFFuLL)
  {
    goto LABEL_52;
  }

  atomic_exchange((*(v38 + 16) + 128), v40);
  *(a1 + 124) = 0;
  v41 = *(a1 + 8);
  v42 = IPC::Encoder::operator new(0x238, v9);
  *v42 = 1249;
  *(v42 + 2) = 0;
  *(v42 + 3) = 0;
  *(v42 + 1) = a3;
  *(v42 + 68) = 0;
  *(v42 + 70) = 0;
  *(v42 + 69) = 0;
  IPC::Encoder::encodeHeader(v42);
  v60 = v42;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v42, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v42, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v42, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v42, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v42, *(a2 + 16));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v42, *(a2 + 24));
  v36 = IPC::Connection::sendMessageImpl(v41, &v60, 1, 0);
  v44 = v60;
  v60 = 0;
  if (v44)
  {
    IPC::Encoder::~Encoder(v44, v43);
    bmalloc::api::tzoneFree(v45, v46);
  }

  return v36;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearBufferiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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

    v37 = v51;
    if (v51 <= 1)
    {
LABEL_53:
      __break(0xC471u);
      JUMPOUT(0x19E220E24);
    }

    v38 = v50;
    *v50 = 3198;
    v39 = v38 + 2;
    if (v37 - 2 < (-v39 & 7 | 8uLL))
    {
      return 18;
    }

    v40 = -v39 & 7;
    *&v39[v40] = a3;
    if (v40 != 7)
    {
      v40 = 6;
    }

    v41 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v43 = *(a1 + 72);
    v42 = *(a1 + 80);
    v44 = v40 + 10;
    if (v41 + 16 >= v43)
    {
      v41 = 0;
    }

    v45 = v44 + v41;
    if (v43 <= v45)
    {
      v45 = 0;
    }

    *(a1 + 88) = v45;
    if (*(v42 + 8) <= 0xFFuLL)
    {
      goto LABEL_52;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v42 + 16) + 128), v45) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
  if (v49 != 1)
  {
    return 16;
  }

  v9 = v47;
  v10 = v48;
  v52 = v48;
  if (v48 <= 1)
  {
    goto LABEL_53;
  }

  *v47 = 1188;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14 && (*(v11 + (-v11 & 3)) = *a2, v16 = v11 + v13, v17 = -v16 & 3 | 4, v14 = v15 >= v17, v18 = v15 - v17, v14))
  {
    *(v16 + (-v16 & 3)) = *(a2 + 4);
    v50 = (v16 + v17);
    v51 = v18;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v50, **(a2 + 8), *(*(a2 + 8) + 8));
  if (v50)
  {
    v20 = v52 - v51;
    if (v52 - v51 <= 0x10)
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
      if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_52;
  }

  if ((v49 & 1) == 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v48 <= 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  *v47 = 3197;
  v26 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v27 = *(a1 + 72);
  if (v26 + 16 >= v27)
  {
    v26 = 0;
  }

  v28 = v26 + 16;
  if (v27 <= v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  *(a1 + 88) = v29;
  v30 = *(a1 + 80);
  if (*(v30 + 8) <= 0xFFuLL)
  {
    goto LABEL_52;
  }

  atomic_exchange((*(v30 + 16) + 128), v29);
  *(a1 + 124) = 0;
  v31 = *(a1 + 8);
  v32 = IPC::Encoder::operator new(0x238, v19);
  *v32 = 1188;
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 1) = a3;
  *(v32 + 68) = 0;
  *(v32 + 70) = 0;
  *(v32 + 69) = 0;
  IPC::Encoder::encodeHeader(v32);
  v50 = v32;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v32, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v32, *(a2 + 4));
  IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v32, **(a2 + 8), *(*(a2 + 8) + 8));
  v25 = IPC::Connection::sendMessageImpl(v31, &v50, 1, 0);
  v34 = v50;
  v50 = 0;
  if (v34)
  {
    IPC::Encoder::~Encoder(v34, v33);
    bmalloc::api::tzoneFree(v35, v36);
  }

  return v25;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearBufferuiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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

    v37 = v51;
    if (v51 <= 1)
    {
LABEL_53:
      __break(0xC471u);
      JUMPOUT(0x19E221200);
    }

    v38 = v50;
    *v50 = 3198;
    v39 = v38 + 2;
    if (v37 - 2 < (-v39 & 7 | 8uLL))
    {
      return 18;
    }

    v40 = -v39 & 7;
    *&v39[v40] = a3;
    if (v40 != 7)
    {
      v40 = 6;
    }

    v41 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v43 = *(a1 + 72);
    v42 = *(a1 + 80);
    v44 = v40 + 10;
    if (v41 + 16 >= v43)
    {
      v41 = 0;
    }

    v45 = v44 + v41;
    if (v43 <= v45)
    {
      v45 = 0;
    }

    *(a1 + 88) = v45;
    if (*(v42 + 8) <= 0xFFuLL)
    {
      goto LABEL_52;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v42 + 16) + 128), v45) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
  if (v49 != 1)
  {
    return 16;
  }

  v9 = v47;
  v10 = v48;
  v52 = v48;
  if (v48 <= 1)
  {
    goto LABEL_53;
  }

  *v47 = 1189;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14 && (*(v11 + (-v11 & 3)) = *a2, v16 = v11 + v13, v17 = -v16 & 3 | 4, v14 = v15 >= v17, v18 = v15 - v17, v14))
  {
    *(v16 + (-v16 & 3)) = *(a2 + 4);
    v50 = (v16 + v17);
    v51 = v18;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v50, **(a2 + 8), *(*(a2 + 8) + 8));
  if (v50)
  {
    v20 = v52 - v51;
    if (v52 - v51 <= 0x10)
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
      if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_52;
  }

  if ((v49 & 1) == 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v48 <= 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  *v47 = 3197;
  v26 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v27 = *(a1 + 72);
  if (v26 + 16 >= v27)
  {
    v26 = 0;
  }

  v28 = v26 + 16;
  if (v27 <= v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  *(a1 + 88) = v29;
  v30 = *(a1 + 80);
  if (*(v30 + 8) <= 0xFFuLL)
  {
    goto LABEL_52;
  }

  atomic_exchange((*(v30 + 16) + 128), v29);
  *(a1 + 124) = 0;
  v31 = *(a1 + 8);
  v32 = IPC::Encoder::operator new(0x238, v19);
  *v32 = 1189;
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 1) = a3;
  *(v32 + 68) = 0;
  *(v32 + 70) = 0;
  *(v32 + 69) = 0;
  IPC::Encoder::encodeHeader(v32);
  v50 = v32;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v32, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v32, *(a2 + 4));
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v32, **(a2 + 8), *(*(a2 + 8) + 8));
  v25 = IPC::Connection::sendMessageImpl(v31, &v50, 1, 0);
  v34 = v50;
  v50 = 0;
  if (v34)
  {
    IPC::Encoder::~Encoder(v34, v33);
    bmalloc::api::tzoneFree(v35, v36);
  }

  return v25;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearBufferfv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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

    v37 = v51;
    if (v51 <= 1)
    {
LABEL_53:
      __break(0xC471u);
      JUMPOUT(0x19E2215DCLL);
    }

    v38 = v50;
    *v50 = 3198;
    v39 = v38 + 2;
    if (v37 - 2 < (-v39 & 7 | 8uLL))
    {
      return 18;
    }

    v40 = -v39 & 7;
    *&v39[v40] = a3;
    if (v40 != 7)
    {
      v40 = 6;
    }

    v41 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v43 = *(a1 + 72);
    v42 = *(a1 + 80);
    v44 = v40 + 10;
    if (v41 + 16 >= v43)
    {
      v41 = 0;
    }

    v45 = v44 + v41;
    if (v43 <= v45)
    {
      v45 = 0;
    }

    *(a1 + 88) = v45;
    if (*(v42 + 8) <= 0xFFuLL)
    {
      goto LABEL_52;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v42 + 16) + 128), v45) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
  if (v49 != 1)
  {
    return 16;
  }

  v9 = v47;
  v10 = v48;
  v52 = v48;
  if (v48 <= 1)
  {
    goto LABEL_53;
  }

  *v47 = 1187;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14 && (*(v11 + (-v11 & 3)) = *a2, v16 = v11 + v13, v17 = -v16 & 3 | 4, v14 = v15 >= v17, v18 = v15 - v17, v14))
  {
    *(v16 + (-v16 & 3)) = *(a2 + 4);
    v50 = (v16 + v17);
    v51 = v18;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v50, **(a2 + 8), *(*(a2 + 8) + 8));
  if (v50)
  {
    v20 = v52 - v51;
    if (v52 - v51 <= 0x10)
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
      if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_52;
  }

  if ((v49 & 1) == 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v48 <= 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  *v47 = 3197;
  v26 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v27 = *(a1 + 72);
  if (v26 + 16 >= v27)
  {
    v26 = 0;
  }

  v28 = v26 + 16;
  if (v27 <= v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  *(a1 + 88) = v29;
  v30 = *(a1 + 80);
  if (*(v30 + 8) <= 0xFFuLL)
  {
    goto LABEL_52;
  }

  atomic_exchange((*(v30 + 16) + 128), v29);
  *(a1 + 124) = 0;
  v31 = *(a1 + 8);
  v32 = IPC::Encoder::operator new(0x238, v19);
  *v32 = 1187;
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 1) = a3;
  *(v32 + 68) = 0;
  *(v32 + 70) = 0;
  *(v32 + 69) = 0;
  IPC::Encoder::encodeHeader(v32);
  v50 = v32;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v32, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v32, *(a2 + 4));
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v32, **(a2 + 8), *(*(a2 + 8) + 8));
  v25 = IPC::Connection::sendMessageImpl(v31, &v50, 1, 0);
  v34 = v50;
  v50 = 0;
  if (v34)
  {
    IPC::Encoder::~Encoder(v34, v33);
    bmalloc::api::tzoneFree(v35, v36);
  }

  return v25;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearBufferfi,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E2219DCLL);
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
  *v50 = 1186;
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
        v23 = -v22 & 3 | 4;
        if (v21 >= v23)
        {
          *(v22 + (-v22 & 3)) = *(a2 + 12);
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
  *v35 = 1186;
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
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v35, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v35, *(a2 + 12));
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateQuery,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E221D4CLL);
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
  *v38 = 1212;
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
    JUMPOUT(0x19E221D2CLL);
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
  *v33 = 1212;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteQuery,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E22209CLL);
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
  *v38 = 1225;
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
    JUMPOUT(0x19E22207CLL);
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
  *v33 = 1225;
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsQuery,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
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
      JUMPOUT(0x19E2226DCLL);
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
    JUMPOUT(0x19E2226B4);
  }

  *v13 = 4085;
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
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFF5u, &v79, v9);
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
    JUMPOUT(0x19E222694);
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
  IPC::Connection::createSyncMessageEncoder(0xFF5, a3, &v79);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BeginQuery,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E222A7CLL);
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
  *v43 = 1159;
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
    JUMPOUT(0x19E222A5CLL);
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
  *v38 = 1159;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::EndQuery,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E222DCCLL);
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
  *v38 = 1253;
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
    JUMPOUT(0x19E222DACLL);
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
  *v33 = 1253;
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

uint64_t IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetQuery,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E223410);
  }

  *v13 = 4056;
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFD8u, &v83, v9);
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
        JUMPOUT(0x19E223438);
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
    JUMPOUT(0x19E2233F0);
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
  IPC::Connection::createSyncMessageEncoder(0xFD8, a3, &v83);
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

uint64_t IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetQueryObjectui,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E223A7CLL);
  }

  *v13 = 4058;
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFDAu, &v83, v9);
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
          result = IPC::Decoder::decode<std::tuple<unsigned int>>(v41);
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
        JUMPOUT(0x19E223AA4);
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
    JUMPOUT(0x19E223A5CLL);
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
  IPC::Connection::createSyncMessageEncoder(0xFDA, a3, &v83);
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
    v69 = IPC::Decoder::decode<std::tuple<unsigned int>>(v67);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateSampler,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E223DF4);
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
  *v38 = 1215;
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
    JUMPOUT(0x19E223DD4);
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
  *v33 = 1215;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteSampler,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E224144);
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
  *v38 = 1228;
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
    JUMPOUT(0x19E224124);
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
  *v33 = 1228;
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsSampler,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
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
      JUMPOUT(0x19E224784);
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
    JUMPOUT(0x19E22475CLL);
  }

  *v13 = 4088;
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
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFF8u, &v79, v9);
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
    JUMPOUT(0x19E22473CLL);
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
  IPC::Connection::createSyncMessageEncoder(0xFF8, a3, &v79);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindSampler,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E224B24);
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
  *v43 = 1168;
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
    JUMPOUT(0x19E224B04);
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
  *v38 = 1168;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SamplerParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E224ED4);
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
  *v46 = 1291;
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
  *v31 = 1291;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SamplerParameterf,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E2252C4);
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
  *v46 = 1290;
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
      v19 = -v18 & 3 | 4;
      if (v17 >= v19)
      {
        *(v18 + (-v18 & 3)) = *(a2 + 8);
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
    JUMPOUT(0x19E2252A4);
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
  *v41 = 1290;
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 1) = a3;
  *(v41 + 68) = 0;
  *(v41 + 70) = 0;
  *(v41 + 69) = 0;
  IPC::Encoder::encodeHeader(v41);
  v49 = v41;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v41, *(a2 + 8));
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetSamplerParameterf,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E225924);
  }

  *v13 = 4062;
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFDEu, &v86, v9);
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
        JUMPOUT(0x19E22594CLL);
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
    JUMPOUT(0x19E225904);
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
  IPC::Connection::createSyncMessageEncoder(0xFDE, a3, &v86);
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

uint64_t IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetSamplerParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E225F90);
  }

  *v13 = 4063;
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFDFu, &v83, v9);
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
        JUMPOUT(0x19E225FB8);
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
    JUMPOUT(0x19E225F70);
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
  IPC::Connection::createSyncMessageEncoder(0xFDF, a3, &v83);
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::FenceSync,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E2265F4);
  }

  *v13 = 4033;
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFC1u, &v84, v9);
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
        JUMPOUT(0x19E22661CLL);
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
    JUMPOUT(0x19E2265D4);
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
  IPC::Connection::createSyncMessageEncoder(0xFC1, a3, &v84);
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsSync,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
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
      JUMPOUT(0x19E226C5CLL);
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
    JUMPOUT(0x19E226C34);
  }

  *v13 = 4090;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  v18 = v12 - 2 - v17;
  if (v12 - 2 >= v17)
  {
    *(v16 + (-v16 & 7)) = IdentifierInternal;
    v19 = v16 + v17;
    v20 = -v19 & 7 | 8;
    if (v18 >= v20)
    {
      *&v19[-v19 & 7] = *a2;
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
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFFAu, &v79, v9);
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
    JUMPOUT(0x19E226C14);
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
  IPC::Connection::createSyncMessageEncoder(0xFFA, a3, &v79);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v79, *a2);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteSync,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t *a2, uint64_t a3)
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
      JUMPOUT(0x19E226FBCLL);
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
      goto LABEL_46;
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
    goto LABEL_47;
  }

  v11 = v40;
  *v40 = 1230;
  v12 = v11 + 1;
  if (v10 - 2 >= (-v12 & 7 | 8uLL))
  {
    v13 = -v12 & 7;
    *(v12 + v13) = *a2;
    if (v13 != 7)
    {
      v13 = 6;
    }

    v14 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(a1 + 72);
    v15 = *(a1 + 80);
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

    *(a1 + 88) = v18;
    if (*(v15 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v15 + 16) + 128), v18) != 0x80000000 && !*(a1 + 124))
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

    goto LABEL_46;
  }

  if ((v42 & 1) == 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    JUMPOUT(0x19E226F9CLL);
  }

  if (v41 <= 1)
  {
    __break(0xC471u);
    goto LABEL_46;
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
    goto LABEL_46;
  }

  atomic_exchange((*(v31 + 16) + 128), v33);
  *(a1 + 124) = 0;
  v34 = *(a1 + 8);
  v35 = IPC::Encoder::operator new(0x238, v9);
  *v35 = 1230;
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  *(v35 + 1) = a3;
  *(v35 + 68) = 0;
  *(v35 + 70) = 0;
  *(v35 + 69) = 0;
  IPC::Encoder::encodeHeader(v35);
  v43 = v35;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v35, *a2);
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

uint64_t IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::ClientWaitSync,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E227630);
  }

  *v13 = 4030;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  v18 = v12 - 2 - v17;
  if (v12 - 2 >= v17)
  {
    *(v16 + (-v16 & 7)) = IdentifierInternal;
    v19 = v16 + v17;
    v20 = -v19 & 7 | 8;
    v21 = v18 - v20;
    if (v18 >= v20)
    {
      *&v19[-v19 & 7] = *a2;
      v22 = &v19[v20];
      v23 = -(v19 + v20);
      v24 = v23 & 3 | 4;
      v25 = v21 - v24;
      if (v21 >= v24)
      {
        *&v22[v23 & 3] = *(a2 + 8);
        v26 = &v22[v24];
        v27 = -v26 & 7 | 8;
        if (v25 >= v27)
        {
          *&v26[-v26 & 7] = *(a2 + 16);
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
            IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFBEu, &v87, v9);
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
            result = IPC::Decoder::decode<std::tuple<unsigned int>>(v44);
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
        JUMPOUT(0x19E227658);
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
    JUMPOUT(0x19E227610);
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
  IPC::Connection::createSyncMessageEncoder(0xFBE, a3, &v87);
  v69 = v87;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v87, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v69, *(a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v69, *(a2 + 16));
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
    v73 = IPC::Decoder::decode<std::tuple<unsigned int>>(v71);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::WaitSync,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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

    v37 = v51;
    if (v51 <= 1)
    {
LABEL_53:
      __break(0xC471u);
      JUMPOUT(0x19E227A18);
    }

    v38 = v50;
    *v50 = 3198;
    v39 = v38 + 2;
    if (v37 - 2 < (-v39 & 7 | 8uLL))
    {
      return 18;
    }

    v40 = -v39 & 7;
    *&v39[v40] = a3;
    if (v40 != 7)
    {
      v40 = 6;
    }

    v41 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v43 = *(a1 + 72);
    v42 = *(a1 + 80);
    v44 = v40 + 10;
    if (v41 + 16 >= v43)
    {
      v41 = 0;
    }

    v45 = v44 + v41;
    if (v43 <= v45)
    {
      v45 = 0;
    }

    *(a1 + 88) = v45;
    if (*(v42 + 8) <= 0xFFuLL)
    {
      goto LABEL_52;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v42 + 16) + 128), v45) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
  if (v49 != 1)
  {
    return 16;
  }

  v9 = v47;
  v10 = v48;
  v52 = v48;
  if (v48 <= 1)
  {
    goto LABEL_53;
  }

  *v47 = 1369;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 7 | 8;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14 && (*(v11 + (-v11 & 7)) = *a2, v16 = v11 + v13, v17 = -v16 & 3 | 4, v14 = v15 >= v17, v18 = v15 - v17, v14))
  {
    *(v16 + (-v16 & 3)) = *(a2 + 8);
    v50 = (v16 + v17);
    v51 = v18;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  v53 = *(a2 + 16);
  IPC::StreamConnectionEncoder::encodeSpan<long long const,18446744073709551615ul>(&v50, &v53, 1);
  if (v50)
  {
    v20 = v52 - v51;
    if (v52 - v51 <= 0x10)
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
      if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_52;
  }

  if ((v49 & 1) == 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v48 <= 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  *v47 = 3197;
  v26 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v27 = *(a1 + 72);
  if (v26 + 16 >= v27)
  {
    v26 = 0;
  }

  v28 = v26 + 16;
  if (v27 <= v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  *(a1 + 88) = v29;
  v30 = *(a1 + 80);
  if (*(v30 + 8) <= 0xFFuLL)
  {
    goto LABEL_52;
  }

  atomic_exchange((*(v30 + 16) + 128), v29);
  *(a1 + 124) = 0;
  v31 = *(a1 + 8);
  v32 = IPC::Encoder::operator new(0x238, v19);
  *v32 = 1369;
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 1) = a3;
  *(v32 + 68) = 0;
  *(v32 + 70) = 0;
  *(v32 + 69) = 0;
  IPC::Encoder::encodeHeader(v32);
  v50 = v32;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v32, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v32, *(a2 + 8));
  IPC::ArgumentCoder<API::Int64,void>::encode(v32, *(a2 + 16));
  v25 = IPC::Connection::sendMessageImpl(v31, &v50, 1, 0);
  v34 = v50;
  v50 = 0;
  if (v34)
  {
    IPC::Encoder::~Encoder(v34, v33);
    bmalloc::api::tzoneFree(v35, v36);
  }

  return v25;
}

uint64_t IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetSynci,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E22807CLL);
  }

  *v13 = 4069;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  v18 = v12 - 2 - v17;
  if (v12 - 2 >= v17)
  {
    *(v16 + (-v16 & 7)) = IdentifierInternal;
    v19 = v16 + v17;
    v20 = -v19 & 7 | 8;
    v21 = v18 >= v20;
    v22 = v18 - v20;
    if (v21)
    {
      *&v19[-v19 & 7] = *a2;
      v23 = &v19[v20];
      v24 = -v23 & 3 | 4;
      if (v22 >= v24)
      {
        *&v23[-v23 & 3] = *(a2 + 8);
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFE5u, &v83, v9);
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
        JUMPOUT(0x19E2280A4);
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
    JUMPOUT(0x19E22805CLL);
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
  IPC::Connection::createSyncMessageEncoder(0xFE5, a3, &v83);
  v65 = v83;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v83, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v65, *(a2 + 8));
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E2283F4);
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
  *v38 = 1218;
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
    JUMPOUT(0x19E2283D4);
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
  *v33 = 1218;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E228744);
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
  *v38 = 1232;
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
    JUMPOUT(0x19E228724);
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
  *v33 = 1232;
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
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
      JUMPOUT(0x19E228D84);
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
    JUMPOUT(0x19E228D5CLL);
  }

  *v13 = 4092;
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
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFFCu, &v79, v9);
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
    JUMPOUT(0x19E228D3CLL);
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
  IPC::Connection::createSyncMessageEncoder(0xFFC, a3, &v79);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E229124);
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
  *v43 = 1170;
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
    JUMPOUT(0x19E229104);
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
  *v38 = 1170;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BeginTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E229474);
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
  *v38 = 1161;
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
    JUMPOUT(0x19E229454);
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
  *v33 = 1161;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::EndTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *v22 = 1255;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TransformFeedbackVaryings,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v49, v7);
    if (v51 != 1)
    {
      return 16;
    }

    v25 = v50;
    if (v50 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E229A7CLL);
    }

    v26 = v49;
    *v49 = 3198;
    v27 = v26 + 2;
    if (v25 - 2 < (-v27 & 7 | 8uLL))
    {
      return 18;
    }

    v28 = -v27 & 7;
    *&v27[v28] = a3;
    if (v28 != 7)
    {
      v28 = 6;
    }

    v29 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v31 = *(a1 + 72);
    v30 = *(a1 + 80);
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

    *(a1 + 88) = v33;
    if (*(v30 + 8) <= 0xFFuLL)
    {
      goto LABEL_51;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v30 + 16) + 128), v33) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v46, v7);
  if (v48 != 1)
  {
    return 16;
  }

  v9 = v46;
  v10 = v47;
  v51 = v47;
  if (v47 <= 1)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  *v46 = 1316;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 3)) = *a2;
    v49 = (v11 + v13);
    v50 = v15;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(&v49, *(a2 + 8));
  v17 = -v49 & 3 | 4;
  if (v50 >= v17)
  {
    *(v49 + (-v49 & 3)) = *(a2 + 16);
    v18 = v50 - v17;
    if (v50 >= v17)
    {
      v49 = (v49 + v17);
      v50 -= v17;
      v19 = v51 - v18;
      if (v19 <= 0x10)
      {
        v19 = 16;
      }

      v20 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v21 = *(a1 + 72);
      if (v20 + 16 >= v21)
      {
        v20 = 0;
      }

      v22 = v20 + v19;
      if (v21 <= v22)
      {
        v22 = 0;
      }

      *(a1 + 88) = v22;
      v23 = *(a1 + 80);
      if (*(v23 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v23 + 16) + 128), v22) == 0x80000000 || *(a1 + 124))
        {
          if (*(a1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a1 + 100));
          }

          *(a1 + 124) = 0;
        }

        return 0;
      }
    }

    goto LABEL_51;
  }

  if ((v48 & 1) == 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    JUMPOUT(0x19E229A54);
  }

  if (v47 <= 1)
  {
    __break(0xC471u);
    goto LABEL_51;
  }

  *v46 = 3197;
  v35 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v36 = *(a1 + 72);
  if (v35 + 16 >= v36)
  {
    v35 = 0;
  }

  v37 = v35 + 16;
  if (v36 <= v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  *(a1 + 88) = v38;
  v39 = *(a1 + 80);
  if (*(v39 + 8) <= 0xFFuLL)
  {
    goto LABEL_51;
  }

  atomic_exchange((*(v39 + 16) + 128), v38);
  *(a1 + 124) = 0;
  v40 = *(a1 + 8);
  v41 = IPC::Encoder::operator new(0x238, v16);
  *v41 = 1316;
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 1) = a3;
  *(v41 + 68) = 0;
  *(v41 + 70) = 0;
  *(v41 + 69) = 0;
  IPC::Encoder::encodeHeader(v41);
  v49 = v41;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, *a2);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v41, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, *(a2 + 16));
  v24 = IPC::Connection::sendMessageImpl(v40, &v49, 1, 0);
  v43 = v49;
  v49 = 0;
  if (v43)
  {
    IPC::Encoder::~Encoder(v43, v42);
    bmalloc::api::tzoneFree(v44, v45);
  }

  return v24;
}

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetTransformFeedbackVarying,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v81, v9);
  if ((v83 & 1) == 0)
  {
LABEL_62:
    v60 = 16;
LABEL_63:
    *a4 = v60;
    goto LABEL_64;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_94;
  }

  v13 = v81;
  v12 = v82;
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
    JUMPOUT(0x19E22A0DCLL);
  }

  *v13 = 4072;
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
          v50 = v39 - 1;
          v21 = a3 >= v50;
          a3 = v50;
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
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFE8u, &v84, v9);
          v44 = v85;
          if (v85)
          {
            if (v85 == 255)
            {
              v80 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
              mpark::throw_bad_variant_access(v80);
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
          LOBYTE(v84) = 0;
          v86 = 0;
          result = IPC::Decoder::operator>><std::tuple<WebCore::GraphicsContextGLActiveInfo>>(v41, &v84);
          if (v86)
          {
            v45 = 0;
            v46 = v84;
            v47 = v85;
            *a4 = v41;
            *(a4 + 8) = v46;
            *(a4 + 16) = v47;
LABEL_65:
            *(a4 + 24) = v45;
            return result;
          }

          v35 = 14;
        }

        IPC::Decoder::~Decoder(v41);
        result = bmalloc::api::tzoneFree(v48, v49);
        goto LABEL_48;
      }
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v83 & 1) == 0)
  {
    while (1)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v84, v9);
      if (v86 != 1)
      {
        goto LABEL_62;
      }

      v51 = v85;
      if (v85 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E22A104);
      }

      v52 = v84;
      *v84 = 3198;
      v53 = (v52 + 2);
      if (v51 - 2 < (-v53 & 7 | 8uLL))
      {
        break;
      }

      v54 = -v53 & 7;
      *(v53 + v54) = a3;
      if (v54 != 7)
      {
        v54 = 6;
      }

      v55 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v57 = *(a1 + 72);
      v56 = *(a1 + 80);
      v58 = v54 + 10;
      if (v55 + 16 >= v57)
      {
        v55 = 0;
      }

      v59 = v58 + v55;
      if (v57 <= v59)
      {
        v59 = 0;
      }

      *(a1 + 88) = v59;
      if (*(v56 + 8) > 0xFFuLL)
      {
        IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v56 + 16) + 128), v59) == 0x80000000);
        *(a1 + 64) = a3;
        goto LABEL_4;
      }
    }

    v60 = 18;
    goto LABEL_63;
  }

  if (v82 <= 1)
  {
LABEL_94:
    __break(0xC471u);
    JUMPOUT(0x19E22A0BCLL);
  }

  *v81 = 3197;
  v61 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v62 = *(a1 + 72);
  if (v61 + 16 >= v62)
  {
    v61 = 0;
  }

  v63 = v61 + 16;
  if (v62 <= v63)
  {
    v64 = 0;
  }

  else
  {
    v64 = v63;
  }

  *(a1 + 88) = v64;
  v65 = *(a1 + 80);
  if (*(v65 + 8) <= 0xFFuLL)
  {
    goto LABEL_50;
  }

  atomic_exchange((*(v65 + 16) + 128), v64);
  *(a1 + 124) = 0;
  v66 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFE8, a3, v89);
  v67 = v89[0];
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v89[0], *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v67, a2[1]);
  result = IPC::Connection::sendSyncMessage(v66, v89[1], v89, 0, &v87, v9);
  if (v88)
  {
    if (v88 != 1)
    {
      goto LABEL_40;
    }

    *a4 = v87;
    *(a4 + 24) = 1;
    goto LABEL_84;
  }

  v69 = v87;
  v87 = 0;
  if (*(v69 + 25) == 3194)
  {
    v70 = 11;
  }

  else
  {
    LOBYTE(v84) = 0;
    v86 = 0;
    v69 = IPC::Decoder::operator>><std::tuple<WebCore::GraphicsContextGLActiveInfo>>(v69, &v84);
    if (v86 == 1)
    {
      v71 = v84;
      v72 = v85;
      *a4 = v69;
      *(a4 + 8) = v71;
      *(a4 + 16) = v72;
      *(a4 + 24) = 0;
      goto LABEL_84;
    }

    v70 = 14;
  }

  *a4 = v70;
  *(a4 + 24) = 1;
  IPC::Decoder::~Decoder(v69);
  bmalloc::api::tzoneFree(v73, v74);
LABEL_84:
  if (!v88)
  {
    v75 = v87;
    v87 = 0;
    if (v75)
    {
      IPC::Decoder::~Decoder(v75);
      bmalloc::api::tzoneFree(v78, v79);
    }
  }

  result = v89[0];
  v89[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v68);
    return bmalloc::api::tzoneFree(v76, v77);
  }

  return result;
}

IPC::Decoder *IPC::Decoder::operator>><std::tuple<WebCore::GraphicsContextGLActiveInfo>>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<WebCore::GraphicsContextGLActiveInfo>(v13, a1);
  if (v14 == 1)
  {
    v6 = v13[0];
    v2 = v13[1];
    v7 = 1;
  }

  else
  {
    v5 = *a1;
    v8 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v9 = *(a1 + 3);
    if (v9 && v8)
    {
      (*(*v9 + 16))(v9, v5);
    }

    v7 = 0;
    v6 = 0;
  }

  if (*(a2 + 16) == v7)
  {
    if (*(a2 + 16))
    {
      v10 = *a2;
      *a2 = v6;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v5);
      }

      *(a2 + 8) = v2;
      return a1;
    }
  }

  else
  {
    if (!*(a2 + 16))
    {
      *a2 = v6;
      *(a2 + 8) = v2;
      *(a2 + 16) = 1;
      return a1;
    }

    v11 = *a2;
    *a2 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v5);
    }

    *(a2 + 16) = 0;
  }

  if (v7 && v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  return a1;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::PauseTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *v22 = 1275;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ResumeTransformFeedback,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *v22 = 1288;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindBufferBase,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E22AA54);
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
  *v46 = 1164;
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
    JUMPOUT(0x19E22AA34);
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
  *v41 = 1164;
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
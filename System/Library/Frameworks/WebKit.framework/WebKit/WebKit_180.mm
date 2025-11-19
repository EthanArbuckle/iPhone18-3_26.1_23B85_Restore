uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Scissor,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E207ECCLL);
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
  *v50 = 1292;
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
  *v35 = 1292;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ShaderSource,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
    if (v49 != 1)
    {
      return 16;
    }

    v34 = v48;
    if (v48 <= 1)
    {
LABEL_50:
      __break(0xC471u);
      JUMPOUT(0x19E208270);
    }

    v35 = v47;
    *v47 = 3198;
    v36 = v35 + 2;
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      return 18;
    }

    v37 = -v36 & 7;
    *&v36[v37] = a3;
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
      goto LABEL_49;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v39 + 16) + 128), v42) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v44, v7);
  if (v46 != 1)
  {
    return 16;
  }

  v9 = v44;
  v10 = v45;
  v49 = v45;
  if (v45 <= 1)
  {
    goto LABEL_50;
  }

  *v44 = 1296;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 3)) = *a2;
    v47 = (v11 + v13);
    v48 = v15;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v47, *(a2 + 8));
  if (v47)
  {
    v17 = v49 - v48;
    if (v49 - v48 <= 0x10)
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
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_49;
  }

  if ((v46 & 1) == 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v45 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  *v44 = 3197;
  v23 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(a1 + 72);
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

  *(a1 + 88) = v26;
  v27 = *(a1 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_49;
  }

  atomic_exchange((*(v27 + 16) + 128), v26);
  *(a1 + 124) = 0;
  v28 = *(a1 + 8);
  v29 = IPC::Encoder::operator new(0x238, v16);
  *v29 = 1296;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = a3;
  *(v29 + 68) = 0;
  *(v29 + 70) = 0;
  *(v29 + 69) = 0;
  IPC::Encoder::encodeHeader(v29);
  v47 = v29;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v29, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v29, *(a2 + 8));
  v22 = IPC::Connection::sendMessageImpl(v28, &v47, 1, 0);
  v31 = v47;
  v47 = 0;
  if (v31)
  {
    IPC::Encoder::~Encoder(v31, v30);
    bmalloc::api::tzoneFree(v32, v33);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::StencilFunc,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E208640);
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
  *v46 = 1298;
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
  *v31 = 1298;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::StencilFuncSeparate,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E208A40);
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
  *v50 = 1299;
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
  *v35 = 1299;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::StencilMask,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E208DB0);
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
  *v38 = 1300;
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
    JUMPOUT(0x19E208D90);
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
  *v33 = 1300;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::StencilMaskSeparate,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E209150);
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
  *v43 = 1301;
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
    JUMPOUT(0x19E209130);
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
  *v38 = 1301;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::StencilOp,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E209520);
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
  *v46 = 1302;
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
    JUMPOUT(0x19E209500);
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
  *v41 = 1302;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::StencilOpSeparate,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E209920);
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
  *v50 = 1303;
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
    JUMPOUT(0x19E209900);
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
  *v45 = 1303;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexParameterf,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E209CF0);
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
  *v46 = 1308;
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
    JUMPOUT(0x19E209CD0);
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
  *v41 = 1308;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E20A0A0);
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
  *v46 = 1309;
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
  *v31 = 1309;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform1f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E20A440);
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
  *v43 = 1317;
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
      *(v15 + (-v15 & 3)) = *(a2 + 4);
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
  *v28 = 1317;
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 1) = a3;
  *(v28 + 68) = 0;
  *(v28 + 70) = 0;
  *(v28 + 69) = 0;
  IPC::Encoder::encodeHeader(v28);
  v46 = v28;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v28, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v28, *(a2 + 4));
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform1fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
    if (v49 != 1)
    {
      return 16;
    }

    v34 = v48;
    if (v48 <= 1)
    {
LABEL_50:
      __break(0xC471u);
      JUMPOUT(0x19E20A7ECLL);
    }

    v35 = v47;
    *v47 = 3198;
    v36 = v35 + 2;
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      return 18;
    }

    v37 = -v36 & 7;
    *&v36[v37] = a3;
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
      goto LABEL_49;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v39 + 16) + 128), v42) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v44, v7);
  if (v46 != 1)
  {
    return 16;
  }

  v9 = v44;
  v10 = v45;
  v49 = v45;
  if (v45 <= 1)
  {
    goto LABEL_50;
  }

  *v44 = 1318;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 3)) = *a2;
    v47 = (v11 + v13);
    v48 = v15;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v47, **(a2 + 8), *(*(a2 + 8) + 8));
  if (v47)
  {
    v17 = v49 - v48;
    if (v49 - v48 <= 0x10)
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
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_49;
  }

  if ((v46 & 1) == 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v45 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  *v44 = 3197;
  v23 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(a1 + 72);
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

  *(a1 + 88) = v26;
  v27 = *(a1 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_49;
  }

  atomic_exchange((*(v27 + 16) + 128), v26);
  *(a1 + 124) = 0;
  v28 = *(a1 + 8);
  v29 = IPC::Encoder::operator new(0x238, v16);
  *v29 = 1318;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = a3;
  *(v29 + 68) = 0;
  *(v29 + 70) = 0;
  *(v29 + 69) = 0;
  IPC::Encoder::encodeHeader(v29);
  v47 = v29;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v29, *a2);
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v29, **(a2 + 8), *(*(a2 + 8) + 8));
  v22 = IPC::Connection::sendMessageImpl(v28, &v47, 1, 0);
  v31 = v47;
  v47 = 0;
  if (v31)
  {
    IPC::Encoder::~Encoder(v31, v30);
    bmalloc::api::tzoneFree(v32, v33);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform1i,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E20AB8CLL);
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
  *v43 = 1319;
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
  *v28 = 1319;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform1iv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
    if (v49 != 1)
    {
      return 16;
    }

    v34 = v48;
    if (v48 <= 1)
    {
LABEL_50:
      __break(0xC471u);
      JUMPOUT(0x19E20AF38);
    }

    v35 = v47;
    *v47 = 3198;
    v36 = v35 + 2;
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      return 18;
    }

    v37 = -v36 & 7;
    *&v36[v37] = a3;
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
      goto LABEL_49;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v39 + 16) + 128), v42) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v44, v7);
  if (v46 != 1)
  {
    return 16;
  }

  v9 = v44;
  v10 = v45;
  v49 = v45;
  if (v45 <= 1)
  {
    goto LABEL_50;
  }

  *v44 = 1320;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 3)) = *a2;
    v47 = (v11 + v13);
    v48 = v15;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v47, **(a2 + 8), *(*(a2 + 8) + 8));
  if (v47)
  {
    v17 = v49 - v48;
    if (v49 - v48 <= 0x10)
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
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_49;
  }

  if ((v46 & 1) == 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v45 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  *v44 = 3197;
  v23 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(a1 + 72);
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

  *(a1 + 88) = v26;
  v27 = *(a1 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_49;
  }

  atomic_exchange((*(v27 + 16) + 128), v26);
  *(a1 + 124) = 0;
  v28 = *(a1 + 8);
  v29 = IPC::Encoder::operator new(0x238, v16);
  *v29 = 1320;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = a3;
  *(v29 + 68) = 0;
  *(v29 + 70) = 0;
  *(v29 + 69) = 0;
  IPC::Encoder::encodeHeader(v29);
  v47 = v29;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v29, *a2);
  IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v29, **(a2 + 8), *(*(a2 + 8) + 8));
  v22 = IPC::Connection::sendMessageImpl(v28, &v47, 1, 0);
  v31 = v47;
  v47 = 0;
  if (v31)
  {
    IPC::Encoder::~Encoder(v31, v30);
    bmalloc::api::tzoneFree(v32, v33);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform2f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E20B308);
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
  *v46 = 1323;
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
  *v31 = 1323;
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  *(v31 + 1) = a3;
  *(v31 + 68) = 0;
  *(v31 + 70) = 0;
  *(v31 + 69) = 0;
  IPC::Encoder::encodeHeader(v31);
  v49 = v31;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v31, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v31, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v31, *(a2 + 8));
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform2fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
    if (v49 != 1)
    {
      return 16;
    }

    v34 = v48;
    if (v48 <= 1)
    {
LABEL_50:
      __break(0xC471u);
      JUMPOUT(0x19E20B6B4);
    }

    v35 = v47;
    *v47 = 3198;
    v36 = v35 + 2;
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      return 18;
    }

    v37 = -v36 & 7;
    *&v36[v37] = a3;
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
      goto LABEL_49;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v39 + 16) + 128), v42) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v44, v7);
  if (v46 != 1)
  {
    return 16;
  }

  v9 = v44;
  v10 = v45;
  v49 = v45;
  if (v45 <= 1)
  {
    goto LABEL_50;
  }

  *v44 = 1324;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 3)) = *a2;
    v47 = (v11 + v13);
    v48 = v15;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v47, **(a2 + 8), *(*(a2 + 8) + 8));
  if (v47)
  {
    v17 = v49 - v48;
    if (v49 - v48 <= 0x10)
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
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_49;
  }

  if ((v46 & 1) == 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v45 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  *v44 = 3197;
  v23 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(a1 + 72);
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

  *(a1 + 88) = v26;
  v27 = *(a1 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_49;
  }

  atomic_exchange((*(v27 + 16) + 128), v26);
  *(a1 + 124) = 0;
  v28 = *(a1 + 8);
  v29 = IPC::Encoder::operator new(0x238, v16);
  *v29 = 1324;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = a3;
  *(v29 + 68) = 0;
  *(v29 + 70) = 0;
  *(v29 + 69) = 0;
  IPC::Encoder::encodeHeader(v29);
  v47 = v29;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v29, *a2);
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v29, **(a2 + 8), *(*(a2 + 8) + 8));
  v22 = IPC::Connection::sendMessageImpl(v28, &v47, 1, 0);
  v31 = v47;
  v47 = 0;
  if (v31)
  {
    IPC::Encoder::~Encoder(v31, v30);
    bmalloc::api::tzoneFree(v32, v33);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform2i,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E20BA84);
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
  *v46 = 1325;
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
  *v31 = 1325;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform2iv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
    if (v49 != 1)
    {
      return 16;
    }

    v34 = v48;
    if (v48 <= 1)
    {
LABEL_50:
      __break(0xC471u);
      JUMPOUT(0x19E20BE30);
    }

    v35 = v47;
    *v47 = 3198;
    v36 = v35 + 2;
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      return 18;
    }

    v37 = -v36 & 7;
    *&v36[v37] = a3;
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
      goto LABEL_49;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v39 + 16) + 128), v42) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v44, v7);
  if (v46 != 1)
  {
    return 16;
  }

  v9 = v44;
  v10 = v45;
  v49 = v45;
  if (v45 <= 1)
  {
    goto LABEL_50;
  }

  *v44 = 1326;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 3)) = *a2;
    v47 = (v11 + v13);
    v48 = v15;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v47, **(a2 + 8), *(*(a2 + 8) + 8));
  if (v47)
  {
    v17 = v49 - v48;
    if (v49 - v48 <= 0x10)
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
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_49;
  }

  if ((v46 & 1) == 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v45 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  *v44 = 3197;
  v23 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(a1 + 72);
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

  *(a1 + 88) = v26;
  v27 = *(a1 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_49;
  }

  atomic_exchange((*(v27 + 16) + 128), v26);
  *(a1 + 124) = 0;
  v28 = *(a1 + 8);
  v29 = IPC::Encoder::operator new(0x238, v16);
  *v29 = 1326;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = a3;
  *(v29 + 68) = 0;
  *(v29 + 70) = 0;
  *(v29 + 69) = 0;
  IPC::Encoder::encodeHeader(v29);
  v47 = v29;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v29, *a2);
  IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v29, **(a2 + 8), *(*(a2 + 8) + 8));
  v22 = IPC::Connection::sendMessageImpl(v28, &v47, 1, 0);
  v31 = v47;
  v47 = 0;
  if (v31)
  {
    IPC::Encoder::~Encoder(v31, v30);
    bmalloc::api::tzoneFree(v32, v33);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform3f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E20C230);
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
  *v50 = 1329;
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
  *v35 = 1329;
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  *(v35 + 1) = a3;
  *(v35 + 68) = 0;
  *(v35 + 70) = 0;
  *(v35 + 69) = 0;
  IPC::Encoder::encodeHeader(v35);
  v53 = v35;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v35, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v35, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v35, *(a2 + 8));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v35, *(a2 + 12));
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform3fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
    if (v49 != 1)
    {
      return 16;
    }

    v34 = v48;
    if (v48 <= 1)
    {
LABEL_50:
      __break(0xC471u);
      JUMPOUT(0x19E20C5DCLL);
    }

    v35 = v47;
    *v47 = 3198;
    v36 = v35 + 2;
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      return 18;
    }

    v37 = -v36 & 7;
    *&v36[v37] = a3;
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
      goto LABEL_49;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v39 + 16) + 128), v42) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v44, v7);
  if (v46 != 1)
  {
    return 16;
  }

  v9 = v44;
  v10 = v45;
  v49 = v45;
  if (v45 <= 1)
  {
    goto LABEL_50;
  }

  *v44 = 1330;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 3)) = *a2;
    v47 = (v11 + v13);
    v48 = v15;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v47, **(a2 + 8), *(*(a2 + 8) + 8));
  if (v47)
  {
    v17 = v49 - v48;
    if (v49 - v48 <= 0x10)
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
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_49;
  }

  if ((v46 & 1) == 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v45 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  *v44 = 3197;
  v23 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(a1 + 72);
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

  *(a1 + 88) = v26;
  v27 = *(a1 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_49;
  }

  atomic_exchange((*(v27 + 16) + 128), v26);
  *(a1 + 124) = 0;
  v28 = *(a1 + 8);
  v29 = IPC::Encoder::operator new(0x238, v16);
  *v29 = 1330;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = a3;
  *(v29 + 68) = 0;
  *(v29 + 70) = 0;
  *(v29 + 69) = 0;
  IPC::Encoder::encodeHeader(v29);
  v47 = v29;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v29, *a2);
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v29, **(a2 + 8), *(*(a2 + 8) + 8));
  v22 = IPC::Connection::sendMessageImpl(v28, &v47, 1, 0);
  v31 = v47;
  v47 = 0;
  if (v31)
  {
    IPC::Encoder::~Encoder(v31, v30);
    bmalloc::api::tzoneFree(v32, v33);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform3i,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E20C9DCLL);
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
  *v50 = 1331;
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
  *v35 = 1331;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform3iv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
    if (v49 != 1)
    {
      return 16;
    }

    v34 = v48;
    if (v48 <= 1)
    {
LABEL_50:
      __break(0xC471u);
      JUMPOUT(0x19E20CD88);
    }

    v35 = v47;
    *v47 = 3198;
    v36 = v35 + 2;
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      return 18;
    }

    v37 = -v36 & 7;
    *&v36[v37] = a3;
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
      goto LABEL_49;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v39 + 16) + 128), v42) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v44, v7);
  if (v46 != 1)
  {
    return 16;
  }

  v9 = v44;
  v10 = v45;
  v49 = v45;
  if (v45 <= 1)
  {
    goto LABEL_50;
  }

  *v44 = 1332;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 3)) = *a2;
    v47 = (v11 + v13);
    v48 = v15;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v47, **(a2 + 8), *(*(a2 + 8) + 8));
  if (v47)
  {
    v17 = v49 - v48;
    if (v49 - v48 <= 0x10)
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
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_49;
  }

  if ((v46 & 1) == 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v45 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  *v44 = 3197;
  v23 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(a1 + 72);
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

  *(a1 + 88) = v26;
  v27 = *(a1 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_49;
  }

  atomic_exchange((*(v27 + 16) + 128), v26);
  *(a1 + 124) = 0;
  v28 = *(a1 + 8);
  v29 = IPC::Encoder::operator new(0x238, v16);
  *v29 = 1332;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = a3;
  *(v29 + 68) = 0;
  *(v29 + 70) = 0;
  *(v29 + 69) = 0;
  IPC::Encoder::encodeHeader(v29);
  v47 = v29;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v29, *a2);
  IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v29, **(a2 + 8), *(*(a2 + 8) + 8));
  v22 = IPC::Connection::sendMessageImpl(v28, &v47, 1, 0);
  v31 = v47;
  v47 = 0;
  if (v31)
  {
    IPC::Encoder::~Encoder(v31, v30);
    bmalloc::api::tzoneFree(v32, v33);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform4f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E20D1B8);
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
  *v54 = 1335;
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
          v27 = -v26 & 3 | 4;
          if (v25 >= v27)
          {
            *(v26 + (-v26 & 3)) = *(a2 + 16);
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
  *v39 = 1335;
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 1) = a3;
  *(v39 + 68) = 0;
  *(v39 + 70) = 0;
  *(v39 + 69) = 0;
  IPC::Encoder::encodeHeader(v39);
  v57 = v39;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v39, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v39, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v39, *(a2 + 8));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v39, *(a2 + 12));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v39, *(a2 + 16));
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform4fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
    if (v49 != 1)
    {
      return 16;
    }

    v34 = v48;
    if (v48 <= 1)
    {
LABEL_50:
      __break(0xC471u);
      JUMPOUT(0x19E20D564);
    }

    v35 = v47;
    *v47 = 3198;
    v36 = v35 + 2;
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      return 18;
    }

    v37 = -v36 & 7;
    *&v36[v37] = a3;
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
      goto LABEL_49;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v39 + 16) + 128), v42) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v44, v7);
  if (v46 != 1)
  {
    return 16;
  }

  v9 = v44;
  v10 = v45;
  v49 = v45;
  if (v45 <= 1)
  {
    goto LABEL_50;
  }

  *v44 = 1336;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 3)) = *a2;
    v47 = (v11 + v13);
    v48 = v15;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v47, **(a2 + 8), *(*(a2 + 8) + 8));
  if (v47)
  {
    v17 = v49 - v48;
    if (v49 - v48 <= 0x10)
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
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_49;
  }

  if ((v46 & 1) == 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v45 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  *v44 = 3197;
  v23 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(a1 + 72);
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

  *(a1 + 88) = v26;
  v27 = *(a1 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_49;
  }

  atomic_exchange((*(v27 + 16) + 128), v26);
  *(a1 + 124) = 0;
  v28 = *(a1 + 8);
  v29 = IPC::Encoder::operator new(0x238, v16);
  *v29 = 1336;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = a3;
  *(v29 + 68) = 0;
  *(v29 + 70) = 0;
  *(v29 + 69) = 0;
  IPC::Encoder::encodeHeader(v29);
  v47 = v29;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v29, *a2);
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v29, **(a2 + 8), *(*(a2 + 8) + 8));
  v22 = IPC::Connection::sendMessageImpl(v28, &v47, 1, 0);
  v31 = v47;
  v47 = 0;
  if (v31)
  {
    IPC::Encoder::~Encoder(v31, v30);
    bmalloc::api::tzoneFree(v32, v33);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform4i,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E20D994);
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
  *v54 = 1337;
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
  *v39 = 1337;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform4iv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
    if (v49 != 1)
    {
      return 16;
    }

    v34 = v48;
    if (v48 <= 1)
    {
LABEL_50:
      __break(0xC471u);
      JUMPOUT(0x19E20DD40);
    }

    v35 = v47;
    *v47 = 3198;
    v36 = v35 + 2;
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      return 18;
    }

    v37 = -v36 & 7;
    *&v36[v37] = a3;
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
      goto LABEL_49;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v39 + 16) + 128), v42) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v44, v7);
  if (v46 != 1)
  {
    return 16;
  }

  v9 = v44;
  v10 = v45;
  v49 = v45;
  if (v45 <= 1)
  {
    goto LABEL_50;
  }

  *v44 = 1338;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 3)) = *a2;
    v47 = (v11 + v13);
    v48 = v15;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v47, **(a2 + 8), *(*(a2 + 8) + 8));
  if (v47)
  {
    v17 = v49 - v48;
    if (v49 - v48 <= 0x10)
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
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_49;
  }

  if ((v46 & 1) == 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v45 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  *v44 = 3197;
  v23 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(a1 + 72);
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

  *(a1 + 88) = v26;
  v27 = *(a1 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_49;
  }

  atomic_exchange((*(v27 + 16) + 128), v26);
  *(a1 + 124) = 0;
  v28 = *(a1 + 8);
  v29 = IPC::Encoder::operator new(0x238, v16);
  *v29 = 1338;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = a3;
  *(v29 + 68) = 0;
  *(v29 + 70) = 0;
  *(v29 + 69) = 0;
  IPC::Encoder::encodeHeader(v29);
  v47 = v29;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v29, *a2);
  IPC::ArgumentCoder<std::span<int const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v29, **(a2 + 8), *(*(a2 + 8) + 8));
  v22 = IPC::Connection::sendMessageImpl(v28, &v47, 1, 0);
  v31 = v47;
  v47 = 0;
  if (v31)
  {
    IPC::Encoder::~Encoder(v31, v30);
    bmalloc::api::tzoneFree(v32, v33);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix2fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
    if (v49 != 1)
    {
      return 16;
    }

    v34 = v48;
    if (v48 <= 1)
    {
LABEL_51:
      __break(0xC471u);
      JUMPOUT(0x19E20E10CLL);
    }

    v35 = v47;
    *v47 = 3198;
    v36 = v35 + 2;
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      return 18;
    }

    v37 = -v36 & 7;
    *&v36[v37] = a3;
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
      goto LABEL_50;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v39 + 16) + 128), v42) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v44, v7);
  if (v46 != 1)
  {
    return 16;
  }

  v9 = v44;
  v10 = v45;
  v49 = v45;
  if (v45 <= 1)
  {
    goto LABEL_51;
  }

  *v44 = 1342;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  if (v12 < v13 || (v14 = -v11 & 3, *(v11 + v14) = *a2, v12 == v13))
  {
    v47 = 0;
    v48 = 0;
  }

  else
  {
    v15 = v11 + v13;
    *v15 = *(a2 + 4);
    v47 = (v15 + 1);
    v48 = (v14 ^ 0xFFFFFFFFFFFFFFFBLL) + v12;
  }

  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v47, **(a2 + 8), *(*(a2 + 8) + 8));
  if (v47)
  {
    v17 = v49 - v48;
    if (v49 - v48 <= 0x10)
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
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_50;
  }

  if ((v46 & 1) == 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v45 <= 1)
  {
    __break(0xC471u);
    goto LABEL_50;
  }

  *v44 = 3197;
  v23 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(a1 + 72);
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

  *(a1 + 88) = v26;
  v27 = *(a1 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_50;
  }

  atomic_exchange((*(v27 + 16) + 128), v26);
  *(a1 + 124) = 0;
  v28 = *(a1 + 8);
  v29 = IPC::Encoder::operator new(0x238, v16);
  *v29 = 1342;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = a3;
  *(v29 + 68) = 0;
  *(v29 + 70) = 0;
  *(v29 + 69) = 0;
  IPC::Encoder::encodeHeader(v29);
  v47 = v29;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v29, *a2);
  IPC::Encoder::operator<<<BOOL &>(v29, (a2 + 4));
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v29, **(a2 + 8), *(*(a2 + 8) + 8));
  v22 = IPC::Connection::sendMessageImpl(v28, &v47, 1, 0);
  v31 = v47;
  v47 = 0;
  if (v31)
  {
    IPC::Encoder::~Encoder(v31, v30);
    bmalloc::api::tzoneFree(v32, v33);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix3fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
    if (v49 != 1)
    {
      return 16;
    }

    v34 = v48;
    if (v48 <= 1)
    {
LABEL_51:
      __break(0xC471u);
      JUMPOUT(0x19E20E4D8);
    }

    v35 = v47;
    *v47 = 3198;
    v36 = v35 + 2;
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      return 18;
    }

    v37 = -v36 & 7;
    *&v36[v37] = a3;
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
      goto LABEL_50;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v39 + 16) + 128), v42) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v44, v7);
  if (v46 != 1)
  {
    return 16;
  }

  v9 = v44;
  v10 = v45;
  v49 = v45;
  if (v45 <= 1)
  {
    goto LABEL_51;
  }

  *v44 = 1345;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  if (v12 < v13 || (v14 = -v11 & 3, *(v11 + v14) = *a2, v12 == v13))
  {
    v47 = 0;
    v48 = 0;
  }

  else
  {
    v15 = v11 + v13;
    *v15 = *(a2 + 4);
    v47 = (v15 + 1);
    v48 = (v14 ^ 0xFFFFFFFFFFFFFFFBLL) + v12;
  }

  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v47, **(a2 + 8), *(*(a2 + 8) + 8));
  if (v47)
  {
    v17 = v49 - v48;
    if (v49 - v48 <= 0x10)
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
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_50;
  }

  if ((v46 & 1) == 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v45 <= 1)
  {
    __break(0xC471u);
    goto LABEL_50;
  }

  *v44 = 3197;
  v23 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(a1 + 72);
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

  *(a1 + 88) = v26;
  v27 = *(a1 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_50;
  }

  atomic_exchange((*(v27 + 16) + 128), v26);
  *(a1 + 124) = 0;
  v28 = *(a1 + 8);
  v29 = IPC::Encoder::operator new(0x238, v16);
  *v29 = 1345;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = a3;
  *(v29 + 68) = 0;
  *(v29 + 70) = 0;
  *(v29 + 69) = 0;
  IPC::Encoder::encodeHeader(v29);
  v47 = v29;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v29, *a2);
  IPC::Encoder::operator<<<BOOL &>(v29, (a2 + 4));
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v29, **(a2 + 8), *(*(a2 + 8) + 8));
  v22 = IPC::Connection::sendMessageImpl(v28, &v47, 1, 0);
  v31 = v47;
  v47 = 0;
  if (v31)
  {
    IPC::Encoder::~Encoder(v31, v30);
    bmalloc::api::tzoneFree(v32, v33);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix4fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v47, v7);
    if (v49 != 1)
    {
      return 16;
    }

    v34 = v48;
    if (v48 <= 1)
    {
LABEL_51:
      __break(0xC471u);
      JUMPOUT(0x19E20E8A4);
    }

    v35 = v47;
    *v47 = 3198;
    v36 = v35 + 2;
    if (v34 - 2 < (-v36 & 7 | 8uLL))
    {
      return 18;
    }

    v37 = -v36 & 7;
    *&v36[v37] = a3;
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
      goto LABEL_50;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v39 + 16) + 128), v42) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v44, v7);
  if (v46 != 1)
  {
    return 16;
  }

  v9 = v44;
  v10 = v45;
  v49 = v45;
  if (v45 <= 1)
  {
    goto LABEL_51;
  }

  *v44 = 1348;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  if (v12 < v13 || (v14 = -v11 & 3, *(v11 + v14) = *a2, v12 == v13))
  {
    v47 = 0;
    v48 = 0;
  }

  else
  {
    v15 = v11 + v13;
    *v15 = *(a2 + 4);
    v47 = (v15 + 1);
    v48 = (v14 ^ 0xFFFFFFFFFFFFFFFBLL) + v12;
  }

  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v47, **(a2 + 8), *(*(a2 + 8) + 8));
  if (v47)
  {
    v17 = v49 - v48;
    if (v49 - v48 <= 0x10)
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
      if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_50;
  }

  if ((v46 & 1) == 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v45 <= 1)
  {
    __break(0xC471u);
    goto LABEL_50;
  }

  *v44 = 3197;
  v23 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(a1 + 72);
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

  *(a1 + 88) = v26;
  v27 = *(a1 + 80);
  if (*(v27 + 8) <= 0xFFuLL)
  {
    goto LABEL_50;
  }

  atomic_exchange((*(v27 + 16) + 128), v26);
  *(a1 + 124) = 0;
  v28 = *(a1 + 8);
  v29 = IPC::Encoder::operator new(0x238, v16);
  *v29 = 1348;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 1) = a3;
  *(v29 + 68) = 0;
  *(v29 + 70) = 0;
  *(v29 + 69) = 0;
  IPC::Encoder::encodeHeader(v29);
  v47 = v29;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v29, *a2);
  IPC::Encoder::operator<<<BOOL &>(v29, (a2 + 4));
  IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v29, **(a2 + 8), *(*(a2 + 8) + 8));
  v22 = IPC::Connection::sendMessageImpl(v28, &v47, 1, 0);
  v31 = v47;
  v47 = 0;
  if (v31)
  {
    IPC::Encoder::~Encoder(v31, v30);
    bmalloc::api::tzoneFree(v32, v33);
  }

  return v22;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UseProgram,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E20EC14);
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
  *v38 = 1351;
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
    JUMPOUT(0x19E20EBF4);
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
  *v33 = 1351;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ValidateProgram,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E20EF64);
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
  *v38 = 1352;
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
    JUMPOUT(0x19E20EF44);
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
  *v33 = 1352;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib1f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E20F304);
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
  *v43 = 1353;
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
      *(v15 + (-v15 & 3)) = *(a2 + 4);
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
    JUMPOUT(0x19E20F2E4);
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
  *v38 = 1353;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 1) = a3;
  *(v38 + 68) = 0;
  *(v38 + 70) = 0;
  *(v38 + 69) = 0;
  IPC::Encoder::encodeHeader(v38);
  v46 = v38;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v38, *(a2 + 4));
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib1fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E20F6A8);
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
  *v46 = 1354;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 < v13 || (*(v12 + (-v12 & 3)) = *a2, v15 = v12 + v13, v16 = -v15 & 3 | 4, v14 < v16))
  {
    if (v48)
    {
      if (v47 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E20F6C8);
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
        *v22 = 1354;
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
        v24 = IPC::Encoder::grow(v22, 4uLL, 4);
        if (v25 > 3)
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib2f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E20FAB8);
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
  *v46 = 1355;
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
    JUMPOUT(0x19E20FA98);
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
  *v41 = 1355;
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 1) = a3;
  *(v41 + 68) = 0;
  *(v41 + 70) = 0;
  *(v41 + 69) = 0;
  IPC::Encoder::encodeHeader(v41);
  v49 = v41;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v41, *(a2 + 4));
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib2fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E20FE5CLL);
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
  *v46 = 1356;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 < v13 || (*(v12 + (-v12 & 3)) = *a2, v15 = v12 + v13, v16 = -v15 & 3 | 8, v14 < v16))
  {
    if (v48)
    {
      if (v47 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E20FE7CLL);
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
        *v22 = 1356;
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
        v24 = IPC::Encoder::grow(v22, 4uLL, 8);
        if (v25 > 7)
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib3f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E21029CLL);
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
  *v50 = 1357;
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
    JUMPOUT(0x19E21027CLL);
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
  *v45 = 1357;
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  *(v45 + 1) = a3;
  *(v45 + 68) = 0;
  *(v45 + 70) = 0;
  *(v45 + 69) = 0;
  IPC::Encoder::encodeHeader(v45);
  v53 = v45;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v45, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v45, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v45, *(a2 + 8));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v45, *(a2 + 12));
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib3fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E210654);
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
  *v50 = 1358;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 < v13 || (*(v12 + (-v12 & 3)) = *a2, v15 = v12 + v13, v16 = -v15 & 3 | 0xC, v14 < v16))
  {
    if (v52)
    {
      if (v51 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E210674);
      }

      *v50 = 3197;
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
        *v22 = 1358;
        *(v22 + 2) = 0;
        *(v22 + 3) = 0;
        *(v22 + 1) = a3;
        *(v22 + 68) = 0;
        *(v22 + 70) = 0;
        *(v22 + 69) = 0;
        IPC::Encoder::encodeHeader(v22);
        v53 = v22;
        IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v22, *a2);
        v23 = **(a2 + 8);
        v24 = IPC::Encoder::grow(v22, 4uLL, 12);
        if (v25 > 0xB)
        {
          v26 = *v23;
          *(v24 + 2) = *(v23 + 2);
          *v24 = v26;
          v28 = IPC::Connection::sendMessageImpl(v21, &v53, 1, 0);
          v29 = v53;
          v53 = 0;
          if (v29)
          {
            IPC::Encoder::~Encoder(v29, v27);
            bmalloc::api::tzoneFree(v30, v31);
          }

          return v28;
        }

        __break(0xC471u);
      }
    }

    goto LABEL_48;
  }

  v32 = **(a2 + 8);
  v33 = v15 + (-v15 & 3);
  v34 = *v32;
  *(v33 + 8) = *(v32 + 2);
  *v33 = v34;
  v35 = v10 - v14 + v16;
  if (v35 <= 0x10)
  {
    v35 = 16;
  }

  v36 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v37 = *(a1 + 72);
  if (v36 + 16 >= v37)
  {
    v36 = 0;
  }

  v38 = v36 + v35;
  if (v37 <= v38)
  {
    v38 = 0;
  }

  *(a1 + 88) = v38;
  v39 = *(a1 + 80);
  if (*(v39 + 8) <= 0xFFuLL)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (atomic_exchange((*(v39 + 16) + 128), v38) != 0x80000000 && !*(a1 + 124))
  {
    return 0;
  }

  if (*(a1 + 112) == 1)
  {
    MEMORY[0x19EB16320](*(a1 + 100));
  }

  v28 = 0;
  *(a1 + 124) = 0;
  return v28;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib4f,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E210AC4);
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
  *v54 = 1359;
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
          v27 = -v26 & 3 | 4;
          if (v25 >= v27)
          {
            *(v26 + (-v26 & 3)) = *(a2 + 16);
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
    JUMPOUT(0x19E210AA4);
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
  *v49 = 1359;
  *(v49 + 2) = 0;
  *(v49 + 3) = 0;
  *(v49 + 1) = a3;
  *(v49 + 68) = 0;
  *(v49 + 70) = 0;
  *(v49 + 69) = 0;
  IPC::Encoder::encodeHeader(v49);
  v57 = v49;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v49, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v49, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v49, *(a2 + 8));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v49, *(a2 + 12));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v49, *(a2 + 16));
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttrib4fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E210E70);
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
  *v43 = 1360;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 3 | 0x10;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 3)) = ***(a2 + 8);
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
    JUMPOUT(0x19E210E50);
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
  *v38 = 1360;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 1) = a3;
  *(v38 + 68) = 0;
  *(v38 + 70) = 0;
  *(v38 + 69) = 0;
  IPC::Encoder::encodeHeader(v38);
  v46 = v38;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v38, *a2);
  IPC::ArgumentCoder<std::span<float const,4ul>,void>::encode<IPC::Encoder>(v38, **(a2 + 8));
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttribPointer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v55, v7);
    if (v57 != 1)
    {
      return 16;
    }

    v45 = v56;
    if (v56 <= 1)
    {
LABEL_52:
      __break(0xC471u);
      JUMPOUT(0x19E2112A0);
    }

    v46 = v55;
    *v55 = 3198;
    v47 = v46 + 1;
    if (v45 - 2 < (-v47 & 7 | 8uLL))
    {
      return 18;
    }

    v48 = -v47 & 7;
    *(v47 + v48) = a3;
    if (v48 != 7)
    {
      v48 = 6;
    }

    v49 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v51 = *(a1 + 72);
    v50 = *(a1 + 80);
    v52 = v48 + 10;
    if (v49 + 16 >= v51)
    {
      v49 = 0;
    }

    v53 = v52 + v49;
    if (v51 <= v53)
    {
      v53 = 0;
    }

    *(a1 + 88) = v53;
    if (*(v50 + 8) <= 0xFFuLL)
    {
      goto LABEL_51;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v50 + 16) + 128), v53) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v55, v7);
  if (v57 != 1)
  {
    return 16;
  }

  v10 = v56;
  if (v56 <= 1)
  {
    goto LABEL_52;
  }

  v11 = v55;
  *v55 = 1367;
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
        v20 = -v18 & 3;
        *(v18 + v20) = *(a2 + 8);
        if (v17 != v19)
        {
          v21 = (v18 + v19);
          *v21 = *(a2 + 12);
          v22 = v21 + 1;
          v23 = (v20 ^ 0xFFFFFFFFFFFFFFFBLL) + v17;
          v24 = -v22 & 3 | 4;
          v25 = v23 >= v24;
          v26 = v23 - v24;
          if (v25)
          {
            *&v22[-v22 & 3] = *(a2 + 16);
            v27 = &v22[v24];
            v28 = -v27 & 7 | 8;
            if (v26 >= v28)
            {
              *&v27[-v27 & 7] = *(a2 + 24);
              v29 = v10 - v26 + v28;
              if (v29 <= 0x10)
              {
                v29 = 16;
              }

              v30 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
              v31 = *(a1 + 72);
              if (v30 + 16 >= v31)
              {
                v30 = 0;
              }

              v32 = v30 + v29;
              if (v31 <= v32)
              {
                v32 = 0;
              }

              *(a1 + 88) = v32;
              v33 = *(a1 + 80);
              if (*(v33 + 8) > 0xFFuLL)
              {
                if (atomic_exchange((*(v33 + 16) + 128), v32) != 0x80000000 && !*(a1 + 124))
                {
                  return 0;
                }

                if (*(a1 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(a1 + 100));
                }

                v34 = 0;
                *(a1 + 124) = 0;
                return v34;
              }

              goto LABEL_51;
            }
          }
        }
      }
    }
  }

  if ((v57 & 1) == 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v56 <= 1)
  {
    __break(0xC471u);
    goto LABEL_51;
  }

  *v55 = 3197;
  v35 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v37 = *(a1 + 72);
  v36 = *(a1 + 80);
  if (v35 + 16 >= v37)
  {
    v35 = 0;
  }

  v38 = v35 + 16;
  if (v37 <= v38)
  {
    v38 = 0;
  }

  *(a1 + 88) = v38;
  if (*(v36 + 8) <= 0xFFuLL)
  {
    goto LABEL_51;
  }

  atomic_exchange((*(v36 + 16) + 128), v38);
  *(a1 + 124) = 0;
  v39 = *(a1 + 8);
  v40 = IPC::Encoder::operator new(0x238, v9);
  *v40 = 1367;
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 1) = a3;
  *(v40 + 68) = 0;
  *(v40 + 70) = 0;
  *(v40 + 69) = 0;
  IPC::Encoder::encodeHeader(v40);
  v58 = v40;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v40, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v40, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v40, *(a2 + 8));
  IPC::Encoder::operator<<<BOOL &>(v40, (a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v40, *(a2 + 16));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v40, *(a2 + 24));
  v34 = IPC::Connection::sendMessageImpl(v39, &v58, 1, 0);
  v42 = v58;
  v58 = 0;
  if (v42)
  {
    IPC::Encoder::~Encoder(v42, v41);
    bmalloc::api::tzoneFree(v43, v44);
  }

  return v34;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Viewport,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E2116A0);
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
  *v50 = 1368;
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
  *v35 = 1368;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BufferData0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E211A90);
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
  *v46 = 1182;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 >= v13)
  {
    *(v12 + (-v12 & 3)) = *a2;
    v15 = v12 + v13;
    v16 = -v15 & 7 | 8;
    v17 = v14 - v16;
    if (v14 >= v16)
    {
      *(v15 + (-v15 & 7)) = *(a2 + 8);
      v18 = v15 + v16;
      v19 = -v18 & 3 | 4;
      if (v17 >= v19)
      {
        *(v18 + (-v18 & 3)) = *(a2 + 16);
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
    JUMPOUT(0x19E211A70);
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
  *v41 = 1182;
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 1) = a3;
  *(v41 + 68) = 0;
  *(v41 + 70) = 0;
  *(v41 + 69) = 0;
  IPC::Encoder::encodeHeader(v41);
  v49 = v41;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v41, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, *(a2 + 16));
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BufferData1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E211E7CLL);
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

  *v46 = 1183;
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

  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v49, **(a2 + 8), *(*(a2 + 8) + 8));
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
    JUMPOUT(0x19E211E54);
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
  *v41 = 1183;
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 1) = a3;
  *(v41 + 68) = 0;
  *(v41 + 70) = 0;
  *(v41 + 69) = 0;
  IPC::Encoder::encodeHeader(v41);
  v49 = v41;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, *a2);
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v41, **(a2 + 8), *(*(a2 + 8) + 8));
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BufferSubData,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E212238);
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

  *v47 = 1184;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14 && (*(v11 + (-v11 & 3)) = *a2, v16 = v11 + v13, v17 = -v16 & 7 | 8, v14 = v15 >= v17, v18 = v15 - v17, v14))
  {
    *(v16 + (-v16 & 7)) = *(a2 + 8);
    v50 = (v16 + v17);
    v51 = v18;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v50, **(a2 + 16), *(*(a2 + 16) + 8));
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
  *v32 = 1184;
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 1) = a3;
  *(v32 + 68) = 0;
  *(v32 + 70) = 0;
  *(v32 + 69) = 0;
  IPC::Encoder::encodeHeader(v32);
  v50 = v32;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v32, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v32, *(a2 + 8));
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v32, **(a2 + 16), *(*(a2 + 16) + 8));
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ReadPixelsBufferObject,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t **a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v59, v7);
    if (v61 != 1)
    {
      return 16;
    }

    v46 = v60;
    if (v60 <= 1)
    {
LABEL_55:
      __break(0xC471u);
      JUMPOUT(0x19E2126B4);
    }

    v47 = v59;
    *v59 = 3198;
    v48 = v47 + 2;
    if (v46 - 2 < (-v48 & 7 | 8uLL))
    {
      return 18;
    }

    v49 = -v48 & 7;
    *&v48[v49] = a3;
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
      goto LABEL_54;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v51 + 16) + 128), v54) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v56, v7);
  if (v58 != 1)
  {
    return 16;
  }

  v9 = v56;
  v10 = v57;
  v61 = v57;
  if (v57 <= 1)
  {
    goto LABEL_55;
  }

  *v56 = 1283;
  v59 = (v9 + 1);
  v60 = v10 - 2;
  v11 = *a2;
  v62 = **a2;
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(&v59, &v62);
  v62 = *(v11 + 1);
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(&v59, &v62);
  v13 = v59;
  v14 = -v59 & 3 | 4;
  v15 = v60 - v14;
  if (v60 < v14 || (*(v59 + (-v59 & 3)) = *(a2 + 2), v16 = v13 + v14, v17 = -v16 & 3 | 4, v18 = v15 >= v17, v19 = v15 - v17, !v18) || (*&v16[-v16 & 3] = *(a2 + 3), v20 = &v16[v17], v21 = -v20 & 7 | 8, v18 = v19 >= v21, v22 = v19 - v21, !v18) || (*&v20[-v20 & 7] = a2[2], v23 = &v20[v21], v24 = -v23 & 3 | 4, v18 = v22 >= v24, v25 = v22 - v24, !v18) || (*&v23[-v23 & 3] = *(a2 + 6), v26 = &v23[v24], v27 = -v26 & 3 | 4, v18 = v25 >= v27, v28 = v25 - v27, !v18))
  {
    if (v58)
    {
      if (v57 <= 1)
      {
        __break(0xC471u);
      }

      else
      {
        *v56 = 3197;
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
        if (*(v39 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v39 + 16) + 128), v38);
          *(a1 + 124) = 0;
          v40 = *(a1 + 8);
          v41 = IPC::Encoder::operator new(0x238, v12);
          *v41 = 1283;
          *(v41 + 2) = 0;
          *(v41 + 3) = 0;
          *(v41 + 1) = a3;
          *(v41 + 68) = 0;
          *(v41 + 70) = 0;
          *(v41 + 69) = 0;
          IPC::Encoder::encodeHeader(v41);
          v59 = v41;
          IPC::ArgumentCoder<WebCore::IntRect,void>::encode(v41, *a2);
          IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, *(a2 + 2));
          IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, *(a2 + 3));
          IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v41, a2[2]);
          IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, *(a2 + 6));
          IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v41, *(a2 + 7));
          v34 = IPC::Connection::sendMessageImpl(v40, &v59, 1, 0);
          v43 = v59;
          v59 = 0;
          if (v43)
          {
            IPC::Encoder::~Encoder(v43, v42);
            bmalloc::api::tzoneFree(v44, v45);
          }

          return v34;
        }
      }
    }

    goto LABEL_54;
  }

  *&v26[-v26 & 3] = *(a2 + 7);
  v59 = &v26[v27];
  v60 = v28;
  v29 = v61 - v28;
  if (v61 - v28 <= 0x10)
  {
    v29 = 16;
  }

  v30 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v31 = *(a1 + 72);
  if (v30 + 16 >= v31)
  {
    v30 = 0;
  }

  v32 = v30 + v29;
  if (v31 <= v32)
  {
    v32 = 0;
  }

  *(a1 + 88) = v32;
  v33 = *(a1 + 80);
  if (*(v33 + 8) <= 0xFFuLL)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (atomic_exchange((*(v33 + 16) + 128), v32) == 0x80000000 || *(a1 + 124))
  {
    if (*(a1 + 112) == 1)
    {
      MEMORY[0x19EB16320](*(a1 + 100));
    }

    *(a1 + 124) = 0;
  }

  return 0;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexImage2D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v68, v7);
    if (v70 != 1)
    {
      return 16;
    }

    v55 = v69;
    if (v69 <= 1)
    {
LABEL_65:
      __break(0xC471u);
      JUMPOUT(0x19E212BB0);
    }

    v56 = v68;
    *v68 = 3198;
    v57 = v56 + 2;
    if (v55 - 2 < (-v57 & 7 | 8uLL))
    {
      return 18;
    }

    v58 = -v57 & 7;
    *&v57[v58] = a3;
    if (v58 != 7)
    {
      v58 = 6;
    }

    v59 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v61 = *(a1 + 72);
    v60 = *(a1 + 80);
    v62 = v58 + 10;
    if (v59 + 16 >= v61)
    {
      v59 = 0;
    }

    v63 = v62 + v59;
    if (v61 <= v63)
    {
      v63 = 0;
    }

    *(a1 + 88) = v63;
    if (*(v60 + 8) <= 0xFFuLL)
    {
      goto LABEL_64;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v60 + 16) + 128), v63) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v65, v7);
  if (v67 != 1)
  {
    return 16;
  }

  v9 = v65;
  v10 = v66;
  v70 = v66;
  if (v66 <= 1)
  {
    goto LABEL_65;
  }

  *v65 = 1304;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14 && (*(v11 + (-v11 & 3)) = *a2, v16 = v11 + v13, v17 = -v16 & 3 | 4, v14 = v15 >= v17, v18 = v15 - v17, v14) && (*(v16 + (-v16 & 3)) = *(a2 + 4), v19 = v16 + v17, v20 = -v19 & 3 | 4, v14 = v18 >= v20, v21 = v18 - v20, v14) && (*(v19 + (-v19 & 3)) = *(a2 + 8), v22 = v19 + v20, v23 = -v22 & 3 | 4, v14 = v21 >= v23, v24 = v21 - v23, v14) && (*(v22 + (-v22 & 3)) = *(a2 + 12), v25 = v22 + v23, v26 = -v25 & 3 | 4, v14 = v24 >= v26, v27 = v24 - v26, v14) && (*(v25 + (-v25 & 3)) = *(a2 + 16), v28 = v25 + v26, v29 = -v28 & 3 | 4, v14 = v27 >= v29, v30 = v27 - v29, v14) && (*(v28 + (-v28 & 3)) = *(a2 + 20), v31 = v28 + v29, v32 = -v31 & 3 | 4, v14 = v30 >= v32, v33 = v30 - v32, v14) && (*(v31 + (-v31 & 3)) = *(a2 + 24), v34 = v31 + v32, v35 = -v34 & 3 | 4, v14 = v33 >= v35, v36 = v33 - v35, v14))
  {
    *(v34 + (-v34 & 3)) = *(a2 + 28);
    v68 = (v34 + v35);
    v69 = v36;
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v68, **(a2 + 32), *(*(a2 + 32) + 8));
  if (v68)
  {
    v38 = v70 - v69;
    if (v70 - v69 <= 0x10)
    {
      v38 = 16;
    }

    v39 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v40 = *(a1 + 72);
    if (v39 + 16 >= v40)
    {
      v39 = 0;
    }

    v41 = v39 + v38;
    if (v40 <= v41)
    {
      v41 = 0;
    }

    *(a1 + 88) = v41;
    v42 = *(a1 + 80);
    if (*(v42 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v42 + 16) + 128), v41) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_64;
  }

  if ((v67 & 1) == 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v66 <= 1)
  {
    __break(0xC471u);
    goto LABEL_64;
  }

  *v65 = 3197;
  v44 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v45 = *(a1 + 72);
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

  *(a1 + 88) = v47;
  v48 = *(a1 + 80);
  if (*(v48 + 8) <= 0xFFuLL)
  {
    goto LABEL_64;
  }

  atomic_exchange((*(v48 + 16) + 128), v47);
  *(a1 + 124) = 0;
  v49 = *(a1 + 8);
  v50 = IPC::Encoder::operator new(0x238, v37);
  *v50 = 1304;
  *(v50 + 2) = 0;
  *(v50 + 3) = 0;
  *(v50 + 1) = a3;
  *(v50 + 68) = 0;
  *(v50 + 70) = 0;
  *(v50 + 69) = 0;
  IPC::Encoder::encodeHeader(v50);
  v68 = v50;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v50, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v50, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v50, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v50, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v50, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v50, *(a2 + 20));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v50, *(a2 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v50, *(a2 + 28));
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v50, **(a2 + 32), *(*(a2 + 32) + 8));
  v43 = IPC::Connection::sendMessageImpl(v49, &v68, 1, 0);
  v52 = v68;
  v68 = 0;
  if (v52)
  {
    IPC::Encoder::~Encoder(v52, v51);
    bmalloc::api::tzoneFree(v53, v54);
  }

  return v43;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexImage2D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v66, v7);
    if (v68 != 1)
    {
      return 16;
    }

    v56 = v67;
    if (v67 <= 1)
    {
LABEL_59:
      __break(0xC471u);
      JUMPOUT(0x19E2130A0);
    }

    v57 = v66;
    *v66 = 3198;
    v58 = v57 + 1;
    if (v56 - 2 < (-v58 & 7 | 8uLL))
    {
      return 18;
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
    if (*(v61 + 8) <= 0xFFuLL)
    {
      goto LABEL_58;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v61 + 16) + 128), v64) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v66, v7);
  if (v68 != 1)
  {
    return 16;
  }

  v10 = v67;
  if (v67 <= 1)
  {
    goto LABEL_59;
  }

  v11 = v66;
  *v66 = 1305;
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
        v17 = v21 >= v23;
        v24 = v21 - v23;
        if (v17)
        {
          *(v22 + (-v22 & 3)) = *(a2 + 12);
          v25 = v22 + v23;
          v26 = -v25 & 3 | 4;
          v17 = v24 >= v26;
          v27 = v24 - v26;
          if (v17)
          {
            *(v25 + (-v25 & 3)) = *(a2 + 16);
            v28 = v25 + v26;
            v29 = -v28 & 3 | 4;
            v17 = v27 >= v29;
            v30 = v27 - v29;
            if (v17)
            {
              *(v28 + (-v28 & 3)) = *(a2 + 20);
              v31 = v28 + v29;
              v32 = -v31 & 3 | 4;
              v33 = v30 - v32;
              if (v30 >= v32)
              {
                *(v31 + (-v31 & 3)) = *(a2 + 24);
                v34 = v31 + v32;
                v35 = -(v31 + v32);
                v36 = v35 & 3 | 4;
                v37 = v33 - v36;
                if (v33 >= v36)
                {
                  *(v34 + (v35 & 3)) = *(a2 + 28);
                  v38 = v34 + v36;
                  v39 = -v38 & 7 | 8;
                  if (v37 >= v39)
                  {
                    *(v38 + (-v38 & 7)) = *(a2 + 32);
                    v40 = v10 - v37 + v39;
                    if (v40 <= 0x10)
                    {
                      v40 = 16;
                    }

                    v41 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                    v42 = *(a1 + 72);
                    if (v41 + 16 >= v42)
                    {
                      v41 = 0;
                    }

                    v43 = v41 + v40;
                    if (v42 <= v43)
                    {
                      v43 = 0;
                    }

                    *(a1 + 88) = v43;
                    v44 = *(a1 + 80);
                    if (*(v44 + 8) > 0xFFuLL)
                    {
                      if (atomic_exchange((*(v44 + 16) + 128), v43) != 0x80000000 && !*(a1 + 124))
                      {
                        return 0;
                      }

                      if (*(a1 + 112) == 1)
                      {
                        MEMORY[0x19EB16320](*(a1 + 100));
                      }

                      v45 = 0;
                      *(a1 + 124) = 0;
                      return v45;
                    }

                    goto LABEL_58;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if ((v68 & 1) == 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v67 <= 1)
  {
    __break(0xC471u);
    goto LABEL_58;
  }

  *v66 = 3197;
  v46 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v48 = *(a1 + 72);
  v47 = *(a1 + 80);
  if (v46 + 16 >= v48)
  {
    v46 = 0;
  }

  v49 = v46 + 16;
  if (v48 <= v49)
  {
    v49 = 0;
  }

  *(a1 + 88) = v49;
  if (*(v47 + 8) <= 0xFFuLL)
  {
    goto LABEL_58;
  }

  atomic_exchange((*(v47 + 16) + 128), v49);
  *(a1 + 124) = 0;
  v50 = *(a1 + 8);
  v51 = IPC::Encoder::operator new(0x238, v9);
  *v51 = 1305;
  *(v51 + 2) = 0;
  *(v51 + 3) = 0;
  *(v51 + 1) = a3;
  *(v51 + 68) = 0;
  *(v51 + 70) = 0;
  *(v51 + 69) = 0;
  IPC::Encoder::encodeHeader(v51);
  v69 = v51;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, *(a2 + 20));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, *(a2 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, *(a2 + 28));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v51, *(a2 + 32));
  v45 = IPC::Connection::sendMessageImpl(v50, &v69, 1, 0);
  v53 = v69;
  v69 = 0;
  if (v53)
  {
    IPC::Encoder::~Encoder(v53, v52);
    bmalloc::api::tzoneFree(v54, v55);
  }

  return v45;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexSubImage2D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v68, v7);
    if (v70 != 1)
    {
      return 16;
    }

    v55 = v69;
    if (v69 <= 1)
    {
LABEL_65:
      __break(0xC471u);
      JUMPOUT(0x19E21359CLL);
    }

    v56 = v68;
    *v68 = 3198;
    v57 = v56 + 2;
    if (v55 - 2 < (-v57 & 7 | 8uLL))
    {
      return 18;
    }

    v58 = -v57 & 7;
    *&v57[v58] = a3;
    if (v58 != 7)
    {
      v58 = 6;
    }

    v59 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v61 = *(a1 + 72);
    v60 = *(a1 + 80);
    v62 = v58 + 10;
    if (v59 + 16 >= v61)
    {
      v59 = 0;
    }

    v63 = v62 + v59;
    if (v61 <= v63)
    {
      v63 = 0;
    }

    *(a1 + 88) = v63;
    if (*(v60 + 8) <= 0xFFuLL)
    {
      goto LABEL_64;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v60 + 16) + 128), v63) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v65, v7);
  if (v67 != 1)
  {
    return 16;
  }

  v9 = v65;
  v10 = v66;
  v70 = v66;
  if (v66 <= 1)
  {
    goto LABEL_65;
  }

  *v65 = 1312;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14 && (*(v11 + (-v11 & 3)) = *a2, v16 = v11 + v13, v17 = -v16 & 3 | 4, v14 = v15 >= v17, v18 = v15 - v17, v14) && (*(v16 + (-v16 & 3)) = *(a2 + 4), v19 = v16 + v17, v20 = -v19 & 3 | 4, v14 = v18 >= v20, v21 = v18 - v20, v14) && (*(v19 + (-v19 & 3)) = *(a2 + 8), v22 = v19 + v20, v23 = -v22 & 3 | 4, v14 = v21 >= v23, v24 = v21 - v23, v14) && (*(v22 + (-v22 & 3)) = *(a2 + 12), v25 = v22 + v23, v26 = -v25 & 3 | 4, v14 = v24 >= v26, v27 = v24 - v26, v14) && (*(v25 + (-v25 & 3)) = *(a2 + 16), v28 = v25 + v26, v29 = -v28 & 3 | 4, v14 = v27 >= v29, v30 = v27 - v29, v14) && (*(v28 + (-v28 & 3)) = *(a2 + 20), v31 = v28 + v29, v32 = -v31 & 3 | 4, v14 = v30 >= v32, v33 = v30 - v32, v14) && (*(v31 + (-v31 & 3)) = *(a2 + 24), v34 = v31 + v32, v35 = -v34 & 3 | 4, v14 = v33 >= v35, v36 = v33 - v35, v14))
  {
    *(v34 + (-v34 & 3)) = *(a2 + 28);
    v68 = (v34 + v35);
    v69 = v36;
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v68, **(a2 + 32), *(*(a2 + 32) + 8));
  if (v68)
  {
    v38 = v70 - v69;
    if (v70 - v69 <= 0x10)
    {
      v38 = 16;
    }

    v39 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v40 = *(a1 + 72);
    if (v39 + 16 >= v40)
    {
      v39 = 0;
    }

    v41 = v39 + v38;
    if (v40 <= v41)
    {
      v41 = 0;
    }

    *(a1 + 88) = v41;
    v42 = *(a1 + 80);
    if (*(v42 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v42 + 16) + 128), v41) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_64;
  }

  if ((v67 & 1) == 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v66 <= 1)
  {
    __break(0xC471u);
    goto LABEL_64;
  }

  *v65 = 3197;
  v44 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v45 = *(a1 + 72);
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

  *(a1 + 88) = v47;
  v48 = *(a1 + 80);
  if (*(v48 + 8) <= 0xFFuLL)
  {
    goto LABEL_64;
  }

  atomic_exchange((*(v48 + 16) + 128), v47);
  *(a1 + 124) = 0;
  v49 = *(a1 + 8);
  v50 = IPC::Encoder::operator new(0x238, v37);
  *v50 = 1312;
  *(v50 + 2) = 0;
  *(v50 + 3) = 0;
  *(v50 + 1) = a3;
  *(v50 + 68) = 0;
  *(v50 + 70) = 0;
  *(v50 + 69) = 0;
  IPC::Encoder::encodeHeader(v50);
  v68 = v50;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v50, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v50, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v50, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v50, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v50, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v50, *(a2 + 20));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v50, *(a2 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v50, *(a2 + 28));
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v50, **(a2 + 32), *(*(a2 + 32) + 8));
  v43 = IPC::Connection::sendMessageImpl(v49, &v68, 1, 0);
  v52 = v68;
  v68 = 0;
  if (v52)
  {
    IPC::Encoder::~Encoder(v52, v51);
    bmalloc::api::tzoneFree(v53, v54);
  }

  return v43;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexSubImage2D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v66, v7);
    if (v68 != 1)
    {
      return 16;
    }

    v56 = v67;
    if (v67 <= 1)
    {
LABEL_59:
      __break(0xC471u);
      JUMPOUT(0x19E213A8CLL);
    }

    v57 = v66;
    *v66 = 3198;
    v58 = v57 + 1;
    if (v56 - 2 < (-v58 & 7 | 8uLL))
    {
      return 18;
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
    if (*(v61 + 8) <= 0xFFuLL)
    {
      goto LABEL_58;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v61 + 16) + 128), v64) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v66, v7);
  if (v68 != 1)
  {
    return 16;
  }

  v10 = v67;
  if (v67 <= 1)
  {
    goto LABEL_59;
  }

  v11 = v66;
  *v66 = 1313;
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
        v17 = v21 >= v23;
        v24 = v21 - v23;
        if (v17)
        {
          *(v22 + (-v22 & 3)) = *(a2 + 12);
          v25 = v22 + v23;
          v26 = -v25 & 3 | 4;
          v17 = v24 >= v26;
          v27 = v24 - v26;
          if (v17)
          {
            *(v25 + (-v25 & 3)) = *(a2 + 16);
            v28 = v25 + v26;
            v29 = -v28 & 3 | 4;
            v17 = v27 >= v29;
            v30 = v27 - v29;
            if (v17)
            {
              *(v28 + (-v28 & 3)) = *(a2 + 20);
              v31 = v28 + v29;
              v32 = -v31 & 3 | 4;
              v33 = v30 - v32;
              if (v30 >= v32)
              {
                *(v31 + (-v31 & 3)) = *(a2 + 24);
                v34 = v31 + v32;
                v35 = -(v31 + v32);
                v36 = v35 & 3 | 4;
                v37 = v33 - v36;
                if (v33 >= v36)
                {
                  *(v34 + (v35 & 3)) = *(a2 + 28);
                  v38 = v34 + v36;
                  v39 = -v38 & 7 | 8;
                  if (v37 >= v39)
                  {
                    *(v38 + (-v38 & 7)) = *(a2 + 32);
                    v40 = v10 - v37 + v39;
                    if (v40 <= 0x10)
                    {
                      v40 = 16;
                    }

                    v41 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                    v42 = *(a1 + 72);
                    if (v41 + 16 >= v42)
                    {
                      v41 = 0;
                    }

                    v43 = v41 + v40;
                    if (v42 <= v43)
                    {
                      v43 = 0;
                    }

                    *(a1 + 88) = v43;
                    v44 = *(a1 + 80);
                    if (*(v44 + 8) > 0xFFuLL)
                    {
                      if (atomic_exchange((*(v44 + 16) + 128), v43) != 0x80000000 && !*(a1 + 124))
                      {
                        return 0;
                      }

                      if (*(a1 + 112) == 1)
                      {
                        MEMORY[0x19EB16320](*(a1 + 100));
                      }

                      v45 = 0;
                      *(a1 + 124) = 0;
                      return v45;
                    }

                    goto LABEL_58;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if ((v68 & 1) == 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v67 <= 1)
  {
    __break(0xC471u);
    goto LABEL_58;
  }

  *v66 = 3197;
  v46 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v48 = *(a1 + 72);
  v47 = *(a1 + 80);
  if (v46 + 16 >= v48)
  {
    v46 = 0;
  }

  v49 = v46 + 16;
  if (v48 <= v49)
  {
    v49 = 0;
  }

  *(a1 + 88) = v49;
  if (*(v47 + 8) <= 0xFFuLL)
  {
    goto LABEL_58;
  }

  atomic_exchange((*(v47 + 16) + 128), v49);
  *(a1 + 124) = 0;
  v50 = *(a1 + 8);
  v51 = IPC::Encoder::operator new(0x238, v9);
  *v51 = 1313;
  *(v51 + 2) = 0;
  *(v51 + 3) = 0;
  *(v51 + 1) = a3;
  *(v51 + 68) = 0;
  *(v51 + 70) = 0;
  *(v51 + 69) = 0;
  IPC::Encoder::encodeHeader(v51);
  v69 = v51;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, *(a2 + 20));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, *(a2 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, *(a2 + 28));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v51, *(a2 + 32));
  v45 = IPC::Connection::sendMessageImpl(v50, &v69, 1, 0);
  v53 = v69;
  v69 = 0;
  if (v53)
  {
    IPC::Encoder::~Encoder(v53, v52);
    bmalloc::api::tzoneFree(v54, v55);
  }

  return v45;
}
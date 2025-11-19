uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexImage2D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v65, v7);
    if (v67 != 1)
    {
      return 16;
    }

    v52 = v66;
    if (v66 <= 1)
    {
LABEL_63:
      __break(0xC471u);
      JUMPOUT(0x19E213F58);
    }

    v53 = v65;
    *v65 = 3198;
    v54 = v53 + 2;
    if (v52 - 2 < (-v54 & 7 | 8uLL))
    {
      return 18;
    }

    v55 = -v54 & 7;
    *&v54[v55] = a3;
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
    if (*(v57 + 8) <= 0xFFuLL)
    {
      goto LABEL_62;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v57 + 16) + 128), v60) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v62, v7);
  if (v64 != 1)
  {
    return 16;
  }

  v9 = v62;
  v10 = v63;
  v67 = v63;
  if (v63 <= 1)
  {
    goto LABEL_63;
  }

  *v62 = 1197;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14 && (*(v11 + (-v11 & 3)) = *a2, v16 = v11 + v13, v17 = -v16 & 3 | 4, v14 = v15 >= v17, v18 = v15 - v17, v14) && (*(v16 + (-v16 & 3)) = *(a2 + 4), v19 = v16 + v17, v20 = -v19 & 3 | 4, v14 = v18 >= v20, v21 = v18 - v20, v14) && (*(v19 + (-v19 & 3)) = *(a2 + 8), v22 = v19 + v20, v23 = -v22 & 3 | 4, v14 = v21 >= v23, v24 = v21 - v23, v14) && (*(v22 + (-v22 & 3)) = *(a2 + 12), v25 = v22 + v23, v26 = -v25 & 3 | 4, v14 = v24 >= v26, v27 = v24 - v26, v14) && (*(v25 + (-v25 & 3)) = *(a2 + 16), v28 = v25 + v26, v29 = -v28 & 3 | 4, v14 = v27 >= v29, v30 = v27 - v29, v14) && (*(v28 + (-v28 & 3)) = *(a2 + 20), v31 = v28 + v29, v32 = -v31 & 3 | 4, v14 = v30 >= v32, v33 = v30 - v32, v14))
  {
    *(v31 + (-v31 & 3)) = *(a2 + 24);
    v65 = (v31 + v32);
    v66 = v33;
  }

  else
  {
    v65 = 0;
    v66 = 0;
  }

  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v65, **(a2 + 32), *(*(a2 + 32) + 8));
  if (v65)
  {
    v35 = v67 - v66;
    if (v67 - v66 <= 0x10)
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
    if (*(v39 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v39 + 16) + 128), v38) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_62;
  }

  if ((v64 & 1) == 0)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v63 <= 1)
  {
    __break(0xC471u);
    goto LABEL_62;
  }

  *v62 = 3197;
  v41 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(a1 + 72);
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

  *(a1 + 88) = v44;
  v45 = *(a1 + 80);
  if (*(v45 + 8) <= 0xFFuLL)
  {
    goto LABEL_62;
  }

  atomic_exchange((*(v45 + 16) + 128), v44);
  *(a1 + 124) = 0;
  v46 = *(a1 + 8);
  v47 = IPC::Encoder::operator new(0x238, v34);
  *v47 = 1197;
  *(v47 + 2) = 0;
  *(v47 + 3) = 0;
  *(v47 + 1) = a3;
  *(v47 + 68) = 0;
  *(v47 + 70) = 0;
  *(v47 + 69) = 0;
  IPC::Encoder::encodeHeader(v47);
  v65 = v47;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v47, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v47, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v47, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v47, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v47, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v47, *(a2 + 20));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v47, *(a2 + 24));
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v47, **(a2 + 32), *(*(a2 + 32) + 8));
  v40 = IPC::Connection::sendMessageImpl(v46, &v65, 1, 0);
  v49 = v65;
  v65 = 0;
  if (v49)
  {
    IPC::Encoder::~Encoder(v49, v48);
    bmalloc::api::tzoneFree(v50, v51);
  }

  return v40;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexImage2D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v63, v7);
    if (v65 != 1)
    {
      return 16;
    }

    v53 = v64;
    if (v64 <= 1)
    {
LABEL_57:
      __break(0xC471u);
      JUMPOUT(0x19E214418);
    }

    v54 = v63;
    *v63 = 3198;
    v55 = v54 + 1;
    if (v53 - 2 < (-v55 & 7 | 8uLL))
    {
      return 18;
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
    if (*(v58 + 8) <= 0xFFuLL)
    {
      goto LABEL_56;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v58 + 16) + 128), v61) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v63, v7);
  if (v65 != 1)
  {
    return 16;
  }

  v10 = v64;
  if (v64 <= 1)
  {
    goto LABEL_57;
  }

  v11 = v63;
  *v63 = 1198;
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
            v30 = v27 - v29;
            if (v27 >= v29)
            {
              *(v28 + (-v28 & 3)) = *(a2 + 20);
              v31 = v28 + v29;
              v32 = -(v28 + v29);
              v33 = v32 & 3 | 4;
              v34 = v30 - v33;
              if (v30 >= v33)
              {
                *(v31 + (v32 & 3)) = *(a2 + 24);
                v35 = v31 + v33;
                v36 = -v35 & 7 | 8;
                if (v34 >= v36)
                {
                  *(v35 + (-v35 & 7)) = *(a2 + 32);
                  v37 = v10 - v34 + v36;
                  if (v37 <= 0x10)
                  {
                    v37 = 16;
                  }

                  v38 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                  v39 = *(a1 + 72);
                  if (v38 + 16 >= v39)
                  {
                    v38 = 0;
                  }

                  v40 = v38 + v37;
                  if (v39 <= v40)
                  {
                    v40 = 0;
                  }

                  *(a1 + 88) = v40;
                  v41 = *(a1 + 80);
                  if (*(v41 + 8) > 0xFFuLL)
                  {
                    if (atomic_exchange((*(v41 + 16) + 128), v40) != 0x80000000 && !*(a1 + 124))
                    {
                      return 0;
                    }

                    if (*(a1 + 112) == 1)
                    {
                      MEMORY[0x19EB16320](*(a1 + 100));
                    }

                    v42 = 0;
                    *(a1 + 124) = 0;
                    return v42;
                  }

                  goto LABEL_56;
                }
              }
            }
          }
        }
      }
    }
  }

  if ((v65 & 1) == 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v64 <= 1)
  {
    __break(0xC471u);
    goto LABEL_56;
  }

  *v63 = 3197;
  v43 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v45 = *(a1 + 72);
  v44 = *(a1 + 80);
  if (v43 + 16 >= v45)
  {
    v43 = 0;
  }

  v46 = v43 + 16;
  if (v45 <= v46)
  {
    v46 = 0;
  }

  *(a1 + 88) = v46;
  if (*(v44 + 8) <= 0xFFuLL)
  {
    goto LABEL_56;
  }

  atomic_exchange((*(v44 + 16) + 128), v46);
  *(a1 + 124) = 0;
  v47 = *(a1 + 8);
  v48 = IPC::Encoder::operator new(0x238, v9);
  *v48 = 1198;
  *(v48 + 2) = 0;
  *(v48 + 3) = 0;
  *(v48 + 1) = a3;
  *(v48 + 68) = 0;
  *(v48 + 70) = 0;
  *(v48 + 69) = 0;
  IPC::Encoder::encodeHeader(v48);
  v66 = v48;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, *(a2 + 20));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v48, *(a2 + 24));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v48, *(a2 + 32));
  v42 = IPC::Connection::sendMessageImpl(v47, &v66, 1, 0);
  v50 = v66;
  v66 = 0;
  if (v50)
  {
    IPC::Encoder::~Encoder(v50, v49);
    bmalloc::api::tzoneFree(v51, v52);
  }

  return v42;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage2D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E214914);
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

  *v65 = 1201;
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
  *v50 = 1201;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage2D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E214E04);
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
  *v66 = 1202;
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
  *v51 = 1202;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawArraysInstanced,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E215204);
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
  *v50 = 1242;
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
  *v35 = 1242;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawElementsInstanced,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E215634);
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
  *v54 = 1247;
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
          v27 = -v26 & 3 | 4;
          if (v25 >= v27)
          {
            *(v26 + (-v26 & 3)) = *(a2 + 24);
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
  *v39 = 1247;
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
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v39, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v39, *(a2 + 24));
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttribDivisor,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E2159F4);
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
  *v43 = 1361;
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
    JUMPOUT(0x19E2159D4);
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
  *v38 = 1361;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateVertexArray,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E215D44);
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
  *v38 = 1219;
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
    JUMPOUT(0x19E215D24);
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
  *v33 = 1219;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteVertexArray,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E216094);
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
  *v38 = 1233;
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
    JUMPOUT(0x19E216074);
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
  *v33 = 1233;
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsVertexArray,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
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
      JUMPOUT(0x19E2166D4);
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
    JUMPOUT(0x19E2166ACLL);
  }

  *v13 = 4093;
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
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFFDu, &v79, v9);
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
    JUMPOUT(0x19E21668CLL);
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
  IPC::Connection::createSyncMessageEncoder(0xFFD, a3, &v79);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindVertexArray,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E216A24);
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
  *v38 = 1171;
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
    JUMPOUT(0x19E216A04);
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
  *v33 = 1171;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CopyBufferSubData,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E216E54);
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
  *v54 = 1205;
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
      v20 = -v19 & 7 | 8;
      v21 = v18 - v20;
      if (v18 >= v20)
      {
        *(v19 + (-v19 & 7)) = *(a2 + 8);
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
    JUMPOUT(0x19E216E34);
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
  *v49 = 1205;
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
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, *(a2 + 8));
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlitFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v69, v7);
    if (v71 != 1)
    {
      return 16;
    }

    v59 = v70;
    if (v70 <= 1)
    {
LABEL_61:
      __break(0xC471u);
      JUMPOUT(0x19E217354);
    }

    v60 = v69;
    *v69 = 3198;
    v61 = v60 + 1;
    if (v59 - 2 < (-v61 & 7 | 8uLL))
    {
      return 18;
    }

    v62 = -v61 & 7;
    *(v61 + v62) = a3;
    if (v62 != 7)
    {
      v62 = 6;
    }

    v63 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v65 = *(a1 + 72);
    v64 = *(a1 + 80);
    v66 = v62 + 10;
    if (v63 + 16 >= v65)
    {
      v63 = 0;
    }

    v67 = v66 + v63;
    if (v65 <= v67)
    {
      v67 = 0;
    }

    *(a1 + 88) = v67;
    if (*(v64 + 8) <= 0xFFuLL)
    {
      goto LABEL_60;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v64 + 16) + 128), v67) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v69, v7);
  if (v71 != 1)
  {
    return 16;
  }

  v10 = v70;
  if (v70 <= 1)
  {
    goto LABEL_61;
  }

  v11 = v69;
  *v69 = 1181;
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
      v17 = v18 >= v20;
      v21 = v18 - v20;
      if (v17)
      {
        *(v19 + (-v19 & 3)) = a2[2];
        v22 = v19 + v20;
        v23 = -v22 & 3 | 4;
        v17 = v21 >= v23;
        v24 = v21 - v23;
        if (v17)
        {
          *(v22 + (-v22 & 3)) = a2[3];
          v25 = v22 + v23;
          v26 = -v25 & 3 | 4;
          v17 = v24 >= v26;
          v27 = v24 - v26;
          if (v17)
          {
            *(v25 + (-v25 & 3)) = a2[4];
            v28 = v25 + v26;
            v29 = -v28 & 3 | 4;
            v17 = v27 >= v29;
            v30 = v27 - v29;
            if (v17)
            {
              *(v28 + (-v28 & 3)) = a2[5];
              v31 = v28 + v29;
              v32 = -v31 & 3 | 4;
              v17 = v30 >= v32;
              v33 = v30 - v32;
              if (v17)
              {
                *(v31 + (-v31 & 3)) = a2[6];
                v34 = v31 + v32;
                v35 = -v34 & 3 | 4;
                v36 = v33 - v35;
                if (v33 >= v35)
                {
                  *(v34 + (-v34 & 3)) = a2[7];
                  v37 = v34 + v35;
                  v38 = -(v34 + v35);
                  v39 = v38 & 3 | 4;
                  v40 = v36 - v39;
                  if (v36 >= v39)
                  {
                    *(v37 + (v38 & 3)) = a2[8];
                    v41 = v37 + v39;
                    v42 = -v41 & 3 | 4;
                    if (v40 >= v42)
                    {
                      *(v41 + (-v41 & 3)) = a2[9];
                      v43 = v10 - v40 + v42;
                      if (v43 <= 0x10)
                      {
                        v43 = 16;
                      }

                      v44 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                      v45 = *(a1 + 72);
                      if (v44 + 16 >= v45)
                      {
                        v44 = 0;
                      }

                      v46 = v44 + v43;
                      if (v45 <= v46)
                      {
                        v46 = 0;
                      }

                      *(a1 + 88) = v46;
                      v47 = *(a1 + 80);
                      if (*(v47 + 8) > 0xFFuLL)
                      {
                        if (atomic_exchange((*(v47 + 16) + 128), v46) != 0x80000000 && !*(a1 + 124))
                        {
                          return 0;
                        }

                        if (*(a1 + 112) == 1)
                        {
                          MEMORY[0x19EB16320](*(a1 + 100));
                        }

                        v48 = 0;
                        *(a1 + 124) = 0;
                        return v48;
                      }

                      goto LABEL_60;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if ((v71 & 1) == 0)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v70 <= 1)
  {
    __break(0xC471u);
    goto LABEL_60;
  }

  *v69 = 3197;
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
    goto LABEL_60;
  }

  atomic_exchange((*(v50 + 16) + 128), v52);
  *(a1 + 124) = 0;
  v53 = *(a1 + 8);
  v54 = IPC::Encoder::operator new(0x238, v9);
  *v54 = 1181;
  *(v54 + 2) = 0;
  *(v54 + 3) = 0;
  *(v54 + 1) = a3;
  *(v54 + 68) = 0;
  *(v54 + 70) = 0;
  *(v54 + 69) = 0;
  IPC::Encoder::encodeHeader(v54);
  v72 = v54;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, a2[1]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, a2[2]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, a2[3]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, a2[4]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, a2[5]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, a2[6]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, a2[7]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, a2[8]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, a2[9]);
  v48 = IPC::Connection::sendMessageImpl(v53, &v72, 1, 0);
  v56 = v72;
  v72 = 0;
  if (v56)
  {
    IPC::Encoder::~Encoder(v56, v55);
    bmalloc::api::tzoneFree(v57, v58);
  }

  return v48;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::FramebufferTextureLayer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E217784);
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
  *v54 = 1261;
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
  *v39 = 1261;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ReadBuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E217AF4);
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
  *v38 = 1282;
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
    JUMPOUT(0x19E217AD4);
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
  *v33 = 1282;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::RenderbufferStorageMultisample,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E217F04);
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
  *v54 = 1285;
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
  *v39 = 1285;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexStorage2D,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E218334);
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
  *v54 = 1310;
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
  *v39 = 1310;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexStorage3D,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E218794);
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
  *v57 = 1311;
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
      v17 = v18 >= v20;
      v21 = v18 - v20;
      if (v17)
      {
        *(v19 + (-v19 & 3)) = a2[2];
        v22 = v19 + v20;
        v23 = -v22 & 3 | 4;
        v24 = v21 - v23;
        if (v21 >= v23)
        {
          *(v22 + (-v22 & 3)) = a2[3];
          v25 = v22 + v23;
          v26 = -(v22 + v23);
          v27 = v26 & 3 | 4;
          v28 = v24 - v27;
          if (v24 >= v27)
          {
            *(v25 + (v26 & 3)) = a2[4];
            v29 = v25 + v27;
            v30 = -v29 & 3 | 4;
            if (v28 >= v30)
            {
              *(v29 + (-v29 & 3)) = a2[5];
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
  *v42 = 1311;
  *(v42 + 2) = 0;
  *(v42 + 3) = 0;
  *(v42 + 1) = a3;
  *(v42 + 68) = 0;
  *(v42 + 70) = 0;
  *(v42 + 69) = 0;
  IPC::Encoder::encodeHeader(v42);
  v60 = v42;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v42, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v42, a2[1]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v42, a2[2]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v42, a2[3]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v42, a2[4]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v42, a2[5]);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexImage3D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v71, v7);
    if (v73 != 1)
    {
      return 16;
    }

    v58 = v72;
    if (v72 <= 1)
    {
LABEL_67:
      __break(0xC471u);
      JUMPOUT(0x19E218CC0);
    }

    v59 = v71;
    *v71 = 3198;
    v60 = v59 + 2;
    if (v58 - 2 < (-v60 & 7 | 8uLL))
    {
      return 18;
    }

    v61 = -v60 & 7;
    *&v60[v61] = a3;
    if (v61 != 7)
    {
      v61 = 6;
    }

    v62 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v64 = *(a1 + 72);
    v63 = *(a1 + 80);
    v65 = v61 + 10;
    if (v62 + 16 >= v64)
    {
      v62 = 0;
    }

    v66 = v65 + v62;
    if (v64 <= v66)
    {
      v66 = 0;
    }

    *(a1 + 88) = v66;
    if (*(v63 + 8) <= 0xFFuLL)
    {
      goto LABEL_66;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v63 + 16) + 128), v66) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v68, v7);
  if (v70 != 1)
  {
    return 16;
  }

  v9 = v68;
  v10 = v69;
  v73 = v69;
  if (v69 <= 1)
  {
    goto LABEL_67;
  }

  *v68 = 1306;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14 && (*(v11 + (-v11 & 3)) = *a2, v16 = v11 + v13, v17 = -v16 & 3 | 4, v14 = v15 >= v17, v18 = v15 - v17, v14) && (*(v16 + (-v16 & 3)) = *(a2 + 4), v19 = v16 + v17, v20 = -v19 & 3 | 4, v14 = v18 >= v20, v21 = v18 - v20, v14) && (*(v19 + (-v19 & 3)) = *(a2 + 8), v22 = v19 + v20, v23 = -v22 & 3 | 4, v14 = v21 >= v23, v24 = v21 - v23, v14) && (*(v22 + (-v22 & 3)) = *(a2 + 12), v25 = v22 + v23, v26 = -v25 & 3 | 4, v14 = v24 >= v26, v27 = v24 - v26, v14) && (*(v25 + (-v25 & 3)) = *(a2 + 16), v28 = v25 + v26, v29 = -v28 & 3 | 4, v14 = v27 >= v29, v30 = v27 - v29, v14) && (*(v28 + (-v28 & 3)) = *(a2 + 20), v31 = v28 + v29, v32 = -v31 & 3 | 4, v14 = v30 >= v32, v33 = v30 - v32, v14) && (*(v31 + (-v31 & 3)) = *(a2 + 24), v34 = v31 + v32, v35 = -v34 & 3 | 4, v14 = v33 >= v35, v36 = v33 - v35, v14) && (*(v34 + (-v34 & 3)) = *(a2 + 28), v37 = v34 + v35, v38 = -v37 & 3 | 4, v14 = v36 >= v38, v39 = v36 - v38, v14))
  {
    *(v37 + (-v37 & 3)) = *(a2 + 32);
    v71 = (v37 + v38);
    v72 = v39;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v71, **(a2 + 40), *(*(a2 + 40) + 8));
  if (v71)
  {
    v41 = v73 - v72;
    if (v73 - v72 <= 0x10)
    {
      v41 = 16;
    }

    v42 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v43 = *(a1 + 72);
    if (v42 + 16 >= v43)
    {
      v42 = 0;
    }

    v44 = v42 + v41;
    if (v43 <= v44)
    {
      v44 = 0;
    }

    *(a1 + 88) = v44;
    v45 = *(a1 + 80);
    if (*(v45 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v45 + 16) + 128), v44) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_66;
  }

  if ((v70 & 1) == 0)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v69 <= 1)
  {
    __break(0xC471u);
    goto LABEL_66;
  }

  *v68 = 3197;
  v47 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v48 = *(a1 + 72);
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

  *(a1 + 88) = v50;
  v51 = *(a1 + 80);
  if (*(v51 + 8) <= 0xFFuLL)
  {
    goto LABEL_66;
  }

  atomic_exchange((*(v51 + 16) + 128), v50);
  *(a1 + 124) = 0;
  v52 = *(a1 + 8);
  v53 = IPC::Encoder::operator new(0x238, v40);
  *v53 = 1306;
  *(v53 + 2) = 0;
  *(v53 + 3) = 0;
  *(v53 + 1) = a3;
  *(v53 + 68) = 0;
  *(v53 + 70) = 0;
  *(v53 + 69) = 0;
  IPC::Encoder::encodeHeader(v53);
  v71 = v53;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v53, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v53, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v53, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v53, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v53, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v53, *(a2 + 20));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v53, *(a2 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v53, *(a2 + 28));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v53, *(a2 + 32));
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v53, **(a2 + 40), *(*(a2 + 40) + 8));
  v46 = IPC::Connection::sendMessageImpl(v52, &v71, 1, 0);
  v55 = v71;
  v71 = 0;
  if (v55)
  {
    IPC::Encoder::~Encoder(v55, v54);
    bmalloc::api::tzoneFree(v56, v57);
  }

  return v46;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexImage3D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v69, v7);
    if (v71 != 1)
    {
      return 16;
    }

    v59 = v70;
    if (v70 <= 1)
    {
LABEL_61:
      __break(0xC471u);
      JUMPOUT(0x19E2191E0);
    }

    v60 = v69;
    *v69 = 3198;
    v61 = v60 + 1;
    if (v59 - 2 < (-v61 & 7 | 8uLL))
    {
      return 18;
    }

    v62 = -v61 & 7;
    *(v61 + v62) = a3;
    if (v62 != 7)
    {
      v62 = 6;
    }

    v63 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v65 = *(a1 + 72);
    v64 = *(a1 + 80);
    v66 = v62 + 10;
    if (v63 + 16 >= v65)
    {
      v63 = 0;
    }

    v67 = v66 + v63;
    if (v65 <= v67)
    {
      v67 = 0;
    }

    *(a1 + 88) = v67;
    if (*(v64 + 8) <= 0xFFuLL)
    {
      goto LABEL_60;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v64 + 16) + 128), v67) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v69, v7);
  if (v71 != 1)
  {
    return 16;
  }

  v10 = v70;
  if (v70 <= 1)
  {
    goto LABEL_61;
  }

  v11 = v69;
  *v69 = 1307;
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
              v17 = v30 >= v32;
              v33 = v30 - v32;
              if (v17)
              {
                *(v31 + (-v31 & 3)) = *(a2 + 24);
                v34 = v31 + v32;
                v35 = -v34 & 3 | 4;
                v36 = v33 - v35;
                if (v33 >= v35)
                {
                  *(v34 + (-v34 & 3)) = *(a2 + 28);
                  v37 = v34 + v35;
                  v38 = -(v34 + v35);
                  v39 = v38 & 3 | 4;
                  v40 = v36 - v39;
                  if (v36 >= v39)
                  {
                    *(v37 + (v38 & 3)) = *(a2 + 32);
                    v41 = v37 + v39;
                    v42 = -v41 & 7 | 8;
                    if (v40 >= v42)
                    {
                      *(v41 + (-v41 & 7)) = *(a2 + 40);
                      v43 = v10 - v40 + v42;
                      if (v43 <= 0x10)
                      {
                        v43 = 16;
                      }

                      v44 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                      v45 = *(a1 + 72);
                      if (v44 + 16 >= v45)
                      {
                        v44 = 0;
                      }

                      v46 = v44 + v43;
                      if (v45 <= v46)
                      {
                        v46 = 0;
                      }

                      *(a1 + 88) = v46;
                      v47 = *(a1 + 80);
                      if (*(v47 + 8) > 0xFFuLL)
                      {
                        if (atomic_exchange((*(v47 + 16) + 128), v46) != 0x80000000 && !*(a1 + 124))
                        {
                          return 0;
                        }

                        if (*(a1 + 112) == 1)
                        {
                          MEMORY[0x19EB16320](*(a1 + 100));
                        }

                        v48 = 0;
                        *(a1 + 124) = 0;
                        return v48;
                      }

                      goto LABEL_60;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if ((v71 & 1) == 0)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v70 <= 1)
  {
    __break(0xC471u);
    goto LABEL_60;
  }

  *v69 = 3197;
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
    goto LABEL_60;
  }

  atomic_exchange((*(v50 + 16) + 128), v52);
  *(a1 + 124) = 0;
  v53 = *(a1 + 8);
  v54 = IPC::Encoder::operator new(0x238, v9);
  *v54 = 1307;
  *(v54 + 2) = 0;
  *(v54 + 3) = 0;
  *(v54 + 1) = a3;
  *(v54 + 68) = 0;
  *(v54 + 70) = 0;
  *(v54 + 69) = 0;
  IPC::Encoder::encodeHeader(v54);
  v72 = v54;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, *(a2 + 20));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, *(a2 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, *(a2 + 28));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v54, *(a2 + 32));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v54, *(a2 + 40));
  v48 = IPC::Connection::sendMessageImpl(v53, &v72, 1, 0);
  v56 = v72;
  v72 = 0;
  if (v56)
  {
    IPC::Encoder::~Encoder(v56, v55);
    bmalloc::api::tzoneFree(v57, v58);
  }

  return v48;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexSubImage3D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v74, v7);
    if (v76 != 1)
    {
      return 16;
    }

    v61 = v75;
    if (v75 <= 1)
    {
LABEL_69:
      __break(0xC471u);
      JUMPOUT(0x19E21973CLL);
    }

    v62 = v74;
    *v74 = 3198;
    v63 = v62 + 2;
    if (v61 - 2 < (-v63 & 7 | 8uLL))
    {
      return 18;
    }

    v64 = -v63 & 7;
    *&v63[v64] = a3;
    if (v64 != 7)
    {
      v64 = 6;
    }

    v65 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v67 = *(a1 + 72);
    v66 = *(a1 + 80);
    v68 = v64 + 10;
    if (v65 + 16 >= v67)
    {
      v65 = 0;
    }

    v69 = v68 + v65;
    if (v67 <= v69)
    {
      v69 = 0;
    }

    *(a1 + 88) = v69;
    if (*(v66 + 8) <= 0xFFuLL)
    {
      goto LABEL_68;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v66 + 16) + 128), v69) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v71, v7);
  if (v73 != 1)
  {
    return 16;
  }

  v9 = v71;
  v10 = v72;
  v76 = v72;
  if (v72 <= 1)
  {
    goto LABEL_69;
  }

  *v71 = 1314;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14 && (*(v11 + (-v11 & 3)) = *a2, v16 = v11 + v13, v17 = -v16 & 3 | 4, v14 = v15 >= v17, v18 = v15 - v17, v14) && (*(v16 + (-v16 & 3)) = *(a2 + 4), v19 = v16 + v17, v20 = -v19 & 3 | 4, v14 = v18 >= v20, v21 = v18 - v20, v14) && (*(v19 + (-v19 & 3)) = *(a2 + 8), v22 = v19 + v20, v23 = -v22 & 3 | 4, v14 = v21 >= v23, v24 = v21 - v23, v14) && (*(v22 + (-v22 & 3)) = *(a2 + 12), v25 = v22 + v23, v26 = -v25 & 3 | 4, v14 = v24 >= v26, v27 = v24 - v26, v14) && (*(v25 + (-v25 & 3)) = *(a2 + 16), v28 = v25 + v26, v29 = -v28 & 3 | 4, v14 = v27 >= v29, v30 = v27 - v29, v14) && (*(v28 + (-v28 & 3)) = *(a2 + 20), v31 = v28 + v29, v32 = -v31 & 3 | 4, v14 = v30 >= v32, v33 = v30 - v32, v14) && (*(v31 + (-v31 & 3)) = *(a2 + 24), v34 = v31 + v32, v35 = -v34 & 3 | 4, v14 = v33 >= v35, v36 = v33 - v35, v14) && (*(v34 + (-v34 & 3)) = *(a2 + 28), v37 = v34 + v35, v38 = -v37 & 3 | 4, v14 = v36 >= v38, v39 = v36 - v38, v14) && (*(v37 + (-v37 & 3)) = *(a2 + 32), v40 = v37 + v38, v41 = -v40 & 3 | 4, v14 = v39 >= v41, v42 = v39 - v41, v14))
  {
    *(v40 + (-v40 & 3)) = *(a2 + 36);
    v74 = (v40 + v41);
    v75 = v42;
  }

  else
  {
    v74 = 0;
    v75 = 0;
  }

  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v74, **(a2 + 40), *(*(a2 + 40) + 8));
  if (v74)
  {
    v44 = v76 - v75;
    if (v76 - v75 <= 0x10)
    {
      v44 = 16;
    }

    v45 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v46 = *(a1 + 72);
    if (v45 + 16 >= v46)
    {
      v45 = 0;
    }

    v47 = v45 + v44;
    if (v46 <= v47)
    {
      v47 = 0;
    }

    *(a1 + 88) = v47;
    v48 = *(a1 + 80);
    if (*(v48 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v48 + 16) + 128), v47) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_68;
  }

  if ((v73 & 1) == 0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v72 <= 1)
  {
    __break(0xC471u);
    goto LABEL_68;
  }

  *v71 = 3197;
  v50 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v51 = *(a1 + 72);
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

  *(a1 + 88) = v53;
  v54 = *(a1 + 80);
  if (*(v54 + 8) <= 0xFFuLL)
  {
    goto LABEL_68;
  }

  atomic_exchange((*(v54 + 16) + 128), v53);
  *(a1 + 124) = 0;
  v55 = *(a1 + 8);
  v56 = IPC::Encoder::operator new(0x238, v43);
  *v56 = 1314;
  *(v56 + 2) = 0;
  *(v56 + 3) = 0;
  *(v56 + 1) = a3;
  *(v56 + 68) = 0;
  *(v56 + 70) = 0;
  *(v56 + 69) = 0;
  IPC::Encoder::encodeHeader(v56);
  v74 = v56;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *(a2 + 20));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *(a2 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *(a2 + 28));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *(a2 + 32));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *(a2 + 36));
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v56, **(a2 + 40), *(*(a2 + 40) + 8));
  v49 = IPC::Connection::sendMessageImpl(v55, &v74, 1, 0);
  v58 = v74;
  v74 = 0;
  if (v58)
  {
    IPC::Encoder::~Encoder(v58, v57);
    bmalloc::api::tzoneFree(v59, v60);
  }

  return v49;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::TexSubImage3D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v72, v7);
    if (v74 != 1)
    {
      return 16;
    }

    v62 = v73;
    if (v73 <= 1)
    {
LABEL_63:
      __break(0xC471u);
      JUMPOUT(0x19E219C8CLL);
    }

    v63 = v72;
    *v72 = 3198;
    v64 = v63 + 1;
    if (v62 - 2 < (-v64 & 7 | 8uLL))
    {
      return 18;
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
      goto LABEL_62;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v67 + 16) + 128), v70) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v72, v7);
  if (v74 != 1)
  {
    return 16;
  }

  v10 = v73;
  if (v73 <= 1)
  {
    goto LABEL_63;
  }

  v11 = v72;
  *v72 = 1315;
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
              v17 = v30 >= v32;
              v33 = v30 - v32;
              if (v17)
              {
                *(v31 + (-v31 & 3)) = *(a2 + 24);
                v34 = v31 + v32;
                v35 = -v34 & 3 | 4;
                v17 = v33 >= v35;
                v36 = v33 - v35;
                if (v17)
                {
                  *(v34 + (-v34 & 3)) = *(a2 + 28);
                  v37 = v34 + v35;
                  v38 = -v37 & 3 | 4;
                  v39 = v36 - v38;
                  if (v36 >= v38)
                  {
                    *(v37 + (-v37 & 3)) = *(a2 + 32);
                    v40 = v37 + v38;
                    v41 = -(v37 + v38);
                    v42 = v41 & 3 | 4;
                    v43 = v39 - v42;
                    if (v39 >= v42)
                    {
                      *(v40 + (v41 & 3)) = *(a2 + 36);
                      v44 = v40 + v42;
                      v45 = -v44 & 7 | 8;
                      if (v43 >= v45)
                      {
                        *(v44 + (-v44 & 7)) = *(a2 + 40);
                        v46 = v10 - v43 + v45;
                        if (v46 <= 0x10)
                        {
                          v46 = 16;
                        }

                        v47 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                        v48 = *(a1 + 72);
                        if (v47 + 16 >= v48)
                        {
                          v47 = 0;
                        }

                        v49 = v47 + v46;
                        if (v48 <= v49)
                        {
                          v49 = 0;
                        }

                        *(a1 + 88) = v49;
                        v50 = *(a1 + 80);
                        if (*(v50 + 8) > 0xFFuLL)
                        {
                          if (atomic_exchange((*(v50 + 16) + 128), v49) != 0x80000000 && !*(a1 + 124))
                          {
                            return 0;
                          }

                          if (*(a1 + 112) == 1)
                          {
                            MEMORY[0x19EB16320](*(a1 + 100));
                          }

                          v51 = 0;
                          *(a1 + 124) = 0;
                          return v51;
                        }

                        goto LABEL_62;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if ((v74 & 1) == 0)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v73 <= 1)
  {
    __break(0xC471u);
    goto LABEL_62;
  }

  *v72 = 3197;
  v52 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v54 = *(a1 + 72);
  v53 = *(a1 + 80);
  if (v52 + 16 >= v54)
  {
    v52 = 0;
  }

  v55 = v52 + 16;
  if (v54 <= v55)
  {
    v55 = 0;
  }

  *(a1 + 88) = v55;
  if (*(v53 + 8) <= 0xFFuLL)
  {
    goto LABEL_62;
  }

  atomic_exchange((*(v53 + 16) + 128), v55);
  *(a1 + 124) = 0;
  v56 = *(a1 + 8);
  v57 = IPC::Encoder::operator new(0x238, v9);
  *v57 = 1315;
  *(v57 + 2) = 0;
  *(v57 + 3) = 0;
  *(v57 + 1) = a3;
  *(v57 + 68) = 0;
  *(v57 + 70) = 0;
  *(v57 + 69) = 0;
  IPC::Encoder::encodeHeader(v57);
  v75 = v57;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *(a2 + 20));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *(a2 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *(a2 + 28));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *(a2 + 32));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *(a2 + 36));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v57, *(a2 + 40));
  v51 = IPC::Connection::sendMessageImpl(v56, &v75, 1, 0);
  v59 = v75;
  v75 = 0;
  if (v59)
  {
    IPC::Encoder::~Encoder(v59, v58);
    bmalloc::api::tzoneFree(v60, v61);
  }

  return v51;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CopyTexSubImage3D,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E21A17CLL);
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
  *v66 = 1208;
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
      v17 = v18 >= v20;
      v21 = v18 - v20;
      if (v17)
      {
        *(v19 + (-v19 & 3)) = a2[2];
        v22 = v19 + v20;
        v23 = -v22 & 3 | 4;
        v17 = v21 >= v23;
        v24 = v21 - v23;
        if (v17)
        {
          *(v22 + (-v22 & 3)) = a2[3];
          v25 = v22 + v23;
          v26 = -v25 & 3 | 4;
          v17 = v24 >= v26;
          v27 = v24 - v26;
          if (v17)
          {
            *(v25 + (-v25 & 3)) = a2[4];
            v28 = v25 + v26;
            v29 = -v28 & 3 | 4;
            v17 = v27 >= v29;
            v30 = v27 - v29;
            if (v17)
            {
              *(v28 + (-v28 & 3)) = a2[5];
              v31 = v28 + v29;
              v32 = -v31 & 3 | 4;
              v33 = v30 - v32;
              if (v30 >= v32)
              {
                *(v31 + (-v31 & 3)) = a2[6];
                v34 = v31 + v32;
                v35 = -(v31 + v32);
                v36 = v35 & 3 | 4;
                v37 = v33 - v36;
                if (v33 >= v36)
                {
                  *(v34 + (v35 & 3)) = a2[7];
                  v38 = v34 + v36;
                  v39 = -v38 & 3 | 4;
                  if (v37 >= v39)
                  {
                    *(v38 + (-v38 & 3)) = a2[8];
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
  *v51 = 1208;
  *(v51 + 2) = 0;
  *(v51 + 3) = 0;
  *(v51 + 1) = a3;
  *(v51 + 68) = 0;
  *(v51 + 70) = 0;
  *(v51 + 69) = 0;
  IPC::Encoder::encodeHeader(v51);
  v69 = v51;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, a2[1]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, a2[2]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, a2[3]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, a2[4]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, a2[5]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, a2[6]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, a2[7]);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v51, a2[8]);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexImage3D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E21A678);
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

  *v65 = 1199;
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
  *v50 = 1199;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexImage3D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E21AB68);
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
  *v66 = 1200;
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
  *v51 = 1200;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage3D0,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v74, v7);
    if (v76 != 1)
    {
      return 16;
    }

    v61 = v75;
    if (v75 <= 1)
    {
LABEL_69:
      __break(0xC471u);
      JUMPOUT(0x19E21B0C4);
    }

    v62 = v74;
    *v74 = 3198;
    v63 = v62 + 2;
    if (v61 - 2 < (-v63 & 7 | 8uLL))
    {
      return 18;
    }

    v64 = -v63 & 7;
    *&v63[v64] = a3;
    if (v64 != 7)
    {
      v64 = 6;
    }

    v65 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v67 = *(a1 + 72);
    v66 = *(a1 + 80);
    v68 = v64 + 10;
    if (v65 + 16 >= v67)
    {
      v65 = 0;
    }

    v69 = v68 + v65;
    if (v67 <= v69)
    {
      v69 = 0;
    }

    *(a1 + 88) = v69;
    if (*(v66 + 8) <= 0xFFuLL)
    {
      goto LABEL_68;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v66 + 16) + 128), v69) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v71, v7);
  if (v73 != 1)
  {
    return 16;
  }

  v9 = v71;
  v10 = v72;
  v76 = v72;
  if (v72 <= 1)
  {
    goto LABEL_69;
  }

  *v71 = 1203;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 3 | 4;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14 && (*(v11 + (-v11 & 3)) = *a2, v16 = v11 + v13, v17 = -v16 & 3 | 4, v14 = v15 >= v17, v18 = v15 - v17, v14) && (*(v16 + (-v16 & 3)) = *(a2 + 4), v19 = v16 + v17, v20 = -v19 & 3 | 4, v14 = v18 >= v20, v21 = v18 - v20, v14) && (*(v19 + (-v19 & 3)) = *(a2 + 8), v22 = v19 + v20, v23 = -v22 & 3 | 4, v14 = v21 >= v23, v24 = v21 - v23, v14) && (*(v22 + (-v22 & 3)) = *(a2 + 12), v25 = v22 + v23, v26 = -v25 & 3 | 4, v14 = v24 >= v26, v27 = v24 - v26, v14) && (*(v25 + (-v25 & 3)) = *(a2 + 16), v28 = v25 + v26, v29 = -v28 & 3 | 4, v14 = v27 >= v29, v30 = v27 - v29, v14) && (*(v28 + (-v28 & 3)) = *(a2 + 20), v31 = v28 + v29, v32 = -v31 & 3 | 4, v14 = v30 >= v32, v33 = v30 - v32, v14) && (*(v31 + (-v31 & 3)) = *(a2 + 24), v34 = v31 + v32, v35 = -v34 & 3 | 4, v14 = v33 >= v35, v36 = v33 - v35, v14) && (*(v34 + (-v34 & 3)) = *(a2 + 28), v37 = v34 + v35, v38 = -v37 & 3 | 4, v14 = v36 >= v38, v39 = v36 - v38, v14) && (*(v37 + (-v37 & 3)) = *(a2 + 32), v40 = v37 + v38, v41 = -v40 & 3 | 4, v14 = v39 >= v41, v42 = v39 - v41, v14))
  {
    *(v40 + (-v40 & 3)) = *(a2 + 36);
    v74 = (v40 + v41);
    v75 = v42;
  }

  else
  {
    v74 = 0;
    v75 = 0;
  }

  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v74, **(a2 + 40), *(*(a2 + 40) + 8));
  if (v74)
  {
    v44 = v76 - v75;
    if (v76 - v75 <= 0x10)
    {
      v44 = 16;
    }

    v45 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v46 = *(a1 + 72);
    if (v45 + 16 >= v46)
    {
      v45 = 0;
    }

    v47 = v45 + v44;
    if (v46 <= v47)
    {
      v47 = 0;
    }

    *(a1 + 88) = v47;
    v48 = *(a1 + 80);
    if (*(v48 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v48 + 16) + 128), v47) == 0x80000000 || *(a1 + 124))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }

      return 0;
    }

    goto LABEL_68;
  }

  if ((v73 & 1) == 0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v72 <= 1)
  {
    __break(0xC471u);
    goto LABEL_68;
  }

  *v71 = 3197;
  v50 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v51 = *(a1 + 72);
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

  *(a1 + 88) = v53;
  v54 = *(a1 + 80);
  if (*(v54 + 8) <= 0xFFuLL)
  {
    goto LABEL_68;
  }

  atomic_exchange((*(v54 + 16) + 128), v53);
  *(a1 + 124) = 0;
  v55 = *(a1 + 8);
  v56 = IPC::Encoder::operator new(0x238, v43);
  *v56 = 1203;
  *(v56 + 2) = 0;
  *(v56 + 3) = 0;
  *(v56 + 1) = a3;
  *(v56 + 68) = 0;
  *(v56 + 70) = 0;
  *(v56 + 69) = 0;
  IPC::Encoder::encodeHeader(v56);
  v74 = v56;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *(a2 + 20));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *(a2 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *(a2 + 28));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *(a2 + 32));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v56, *(a2 + 36));
  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v56, **(a2 + 40), *(*(a2 + 40) + 8));
  v49 = IPC::Connection::sendMessageImpl(v55, &v74, 1, 0);
  v58 = v74;
  v74 = 0;
  if (v58)
  {
    IPC::Encoder::~Encoder(v58, v57);
    bmalloc::api::tzoneFree(v59, v60);
  }

  return v49;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompressedTexSubImage3D1,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v72, v7);
    if (v74 != 1)
    {
      return 16;
    }

    v62 = v73;
    if (v73 <= 1)
    {
LABEL_63:
      __break(0xC471u);
      JUMPOUT(0x19E21B614);
    }

    v63 = v72;
    *v72 = 3198;
    v64 = v63 + 1;
    if (v62 - 2 < (-v64 & 7 | 8uLL))
    {
      return 18;
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
      goto LABEL_62;
    }

    IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v67 + 16) + 128), v70) == 0x80000000);
    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v72, v7);
  if (v74 != 1)
  {
    return 16;
  }

  v10 = v73;
  if (v73 <= 1)
  {
    goto LABEL_63;
  }

  v11 = v72;
  *v72 = 1204;
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
              v17 = v30 >= v32;
              v33 = v30 - v32;
              if (v17)
              {
                *(v31 + (-v31 & 3)) = *(a2 + 24);
                v34 = v31 + v32;
                v35 = -v34 & 3 | 4;
                v17 = v33 >= v35;
                v36 = v33 - v35;
                if (v17)
                {
                  *(v34 + (-v34 & 3)) = *(a2 + 28);
                  v37 = v34 + v35;
                  v38 = -v37 & 3 | 4;
                  v39 = v36 - v38;
                  if (v36 >= v38)
                  {
                    *(v37 + (-v37 & 3)) = *(a2 + 32);
                    v40 = v37 + v38;
                    v41 = -(v37 + v38);
                    v42 = v41 & 3 | 4;
                    v43 = v39 - v42;
                    if (v39 >= v42)
                    {
                      *(v40 + (v41 & 3)) = *(a2 + 36);
                      v44 = v40 + v42;
                      v45 = -v44 & 7 | 8;
                      if (v43 >= v45)
                      {
                        *(v44 + (-v44 & 7)) = *(a2 + 40);
                        v46 = v10 - v43 + v45;
                        if (v46 <= 0x10)
                        {
                          v46 = 16;
                        }

                        v47 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                        v48 = *(a1 + 72);
                        if (v47 + 16 >= v48)
                        {
                          v47 = 0;
                        }

                        v49 = v47 + v46;
                        if (v48 <= v49)
                        {
                          v49 = 0;
                        }

                        *(a1 + 88) = v49;
                        v50 = *(a1 + 80);
                        if (*(v50 + 8) > 0xFFuLL)
                        {
                          if (atomic_exchange((*(v50 + 16) + 128), v49) != 0x80000000 && !*(a1 + 124))
                          {
                            return 0;
                          }

                          if (*(a1 + 112) == 1)
                          {
                            MEMORY[0x19EB16320](*(a1 + 100));
                          }

                          v51 = 0;
                          *(a1 + 124) = 0;
                          return v51;
                        }

                        goto LABEL_62;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if ((v74 & 1) == 0)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v73 <= 1)
  {
    __break(0xC471u);
    goto LABEL_62;
  }

  *v72 = 3197;
  v52 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v54 = *(a1 + 72);
  v53 = *(a1 + 80);
  if (v52 + 16 >= v54)
  {
    v52 = 0;
  }

  v55 = v52 + 16;
  if (v54 <= v55)
  {
    v55 = 0;
  }

  *(a1 + 88) = v55;
  if (*(v53 + 8) <= 0xFFuLL)
  {
    goto LABEL_62;
  }

  atomic_exchange((*(v53 + 16) + 128), v55);
  *(a1 + 124) = 0;
  v56 = *(a1 + 8);
  v57 = IPC::Encoder::operator new(0x238, v9);
  *v57 = 1204;
  *(v57 + 2) = 0;
  *(v57 + 3) = 0;
  *(v57 + 1) = a3;
  *(v57 + 68) = 0;
  *(v57 + 70) = 0;
  *(v57 + 69) = 0;
  IPC::Encoder::encodeHeader(v57);
  v75 = v57;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *(a2 + 16));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *(a2 + 20));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *(a2 + 24));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *(a2 + 28));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *(a2 + 32));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v57, *(a2 + 36));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v57, *(a2 + 40));
  v51 = IPC::Connection::sendMessageImpl(v56, &v75, 1, 0);
  v59 = v75;
  v75 = 0;
  if (v59)
  {
    IPC::Encoder::~Encoder(v59, v58);
    bmalloc::api::tzoneFree(v60, v61);
  }

  return v51;
}

uint64_t IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetFragDataLocation,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
    JUMPOUT(0x19E21BCB0);
  }

  *v12 = 4046;
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
      IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFCEu, &v82, v9);
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
    JUMPOUT(0x19E21BCD0);
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
    JUMPOUT(0x19E21BC90);
  }

  atomic_exchange((*(v46 + 16) + 128), v45);
  *(a1 + 124) = 0;
  v47 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFCE, a3, &v79);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform1ui,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E21C050);
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
  *v43 = 1321;
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
  *v28 = 1321;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform2ui,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E21C420);
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
  *v46 = 1327;
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
  *v31 = 1327;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform3ui,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E21C820);
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
  *v50 = 1333;
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
  *v35 = 1333;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform4ui,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E21CC50);
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
  *v54 = 1339;
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
  *v39 = 1339;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform1uiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E21CFFCLL);
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

  *v44 = 1322;
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

  IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v47, **(a2 + 8), *(*(a2 + 8) + 8));
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
  *v29 = 1322;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform2uiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E21D3A8);
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

  *v44 = 1328;
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

  IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v47, **(a2 + 8), *(*(a2 + 8) + 8));
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
  *v29 = 1328;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform3uiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E21D754);
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

  *v44 = 1334;
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

  IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v47, **(a2 + 8), *(*(a2 + 8) + 8));
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
  *v29 = 1334;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Uniform4uiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E21DB00);
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

  *v44 = 1340;
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

  IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::encode<IPC::StreamConnectionEncoder>(&v47, **(a2 + 8), *(*(a2 + 8) + 8));
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
  *v29 = 1340;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix2x3fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E21DECCLL);
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

  *v44 = 1343;
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
  *v29 = 1343;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix3x2fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E21E298);
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

  *v44 = 1346;
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
  *v29 = 1346;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix2x4fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E21E664);
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

  *v44 = 1344;
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
  *v29 = 1344;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix4x2fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E21EA30);
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

  *v44 = 1349;
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
  *v29 = 1349;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix3x4fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E21EDFCLL);
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

  *v44 = 1347;
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
  *v29 = 1347;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::UniformMatrix4x3fv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E21F1C8);
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

  *v44 = 1350;
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
  *v29 = 1350;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttribI4i,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E21F5F8);
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
  *v54 = 1362;
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
  *v39 = 1362;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::VertexAttribI4iv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      JUMPOUT(0x19E21F9A4);
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
  *v43 = 1363;
  v12 = v11 + 1;
  v13 = -v12 & 3 | 4;
  v14 = v10 - 2 - v13;
  if (v10 - 2 < v13 || (*(v12 + (-v12 & 3)) = *a2, v15 = v12 + v13, v16 = -v15 & 3 | 0x10, v14 < v16))
  {
    if (v45)
    {
      if (v44 <= 1)
      {
        __break(0xC471u);
      }

      else
      {
        *v43 = 3197;
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
          *v22 = 1363;
          *(v22 + 2) = 0;
          *(v22 + 3) = 0;
          *(v22 + 1) = a3;
          *(v22 + 68) = 0;
          *(v22 + 70) = 0;
          *(v22 + 69) = 0;
          IPC::Encoder::encodeHeader(v22);
          v46 = v22;
          IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v22, *a2);
          IPC::ArgumentCoder<std::span<int const,4ul>,void>::encode<IPC::Encoder>(v22, **(a2 + 8));
          v24 = IPC::Connection::sendMessageImpl(v21, &v46, 1, 0);
          v25 = v46;
          v46 = 0;
          if (v25)
          {
            IPC::Encoder::~Encoder(v25, v23);
            bmalloc::api::tzoneFree(v26, v27);
          }

          return v24;
        }
      }
    }

    goto LABEL_46;
  }

  *(v15 + (-v15 & 3)) = ***(a2 + 8);
  v28 = v10 - v14 + v16;
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
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (atomic_exchange((*(v32 + 16) + 128), v31) != 0x80000000 && !*(a1 + 124))
  {
    return 0;
  }

  if (*(a1 + 112) == 1)
  {
    MEMORY[0x19EB16320](*(a1 + 100));
  }

  v24 = 0;
  *(a1 + 124) = 0;
  return v24;
}
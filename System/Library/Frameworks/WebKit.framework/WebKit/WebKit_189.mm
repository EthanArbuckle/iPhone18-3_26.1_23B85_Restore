void WebKit::WebGPU::RemoteRenderPassEncoderProxy::drawIndexed(WTF::ApproximateTime *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a4;
  v52 = a3;
  v49 = a6;
  v50 = a5;
  v7 = *(*(a1 + 6) + 80);
  atomic_fetch_add(v7, 1u);
  v8 = *(a1 + 4);
  v9 = *(v7 + 128);
  v10 = INFINITY;
  if (fabs(v9) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v10 = v9 + v11;
  }

  if (*(v7 + 64) != v8)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v56, v10);
    if (v58 != 1)
    {
      goto LABEL_32;
    }

    v36 = v57;
    if (v57 <= 1)
    {
      goto LABEL_57;
    }

    v37 = v56;
    *v56 = 3198;
    v38 = v37 + 2;
    if (v36 - 2 < (-v38 & 7 | 8uLL))
    {
      goto LABEL_32;
    }

    v39 = -v38 & 7;
    *&v38[v39] = v8;
    if (v39 != 7)
    {
      v39 = 6;
    }

    v40 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v42 = *(v7 + 72);
    v41 = *(v7 + 80);
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

    *(v7 + 88) = v44;
    if (*(v41 + 8) <= 0xFFuLL)
    {
      goto LABEL_56;
    }

    v45 = atomic_exchange((*(v41 + 16) + 128), v44);
    v46 = *(v7 + 124);
    if (v45 == 0x80000000 || v46 != 0)
    {
      v48 = v46 + 1;
      *(v7 + 124) = v48;
      if (v48 >= *(v7 + 120))
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
    goto LABEL_32;
  }

  v12 = v53;
  v13 = v54;
  v58 = v54;
  if (v54 <= 1)
  {
    __break(0xC471u);
    goto LABEL_58;
  }

  *v53 = 1546;
  v14 = v12 + 1;
  v15 = v13 - 2;
  v16 = -v14 & 3 | 4;
  v17 = v15 >= v16;
  v18 = v15 - v16;
  if (v17)
  {
    *(v14 + (-v14 & 3)) = a2;
    v56 = (v14 + v16);
    v57 = v18;
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(&v56, &v52);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(&v56, &v51);
  IPC::ArgumentCoder<std::optional<int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<int> const&>(&v56, &v50);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(&v56, &v49);
  if (v56)
  {
    v20 = v58 - v57;
    if (v58 - v57 <= 0x10)
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

      goto LABEL_32;
    }

    goto LABEL_56;
  }

  if ((v55 & 1) == 0)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(0xC471u);
LABEL_58:
    JUMPOUT(0x19E26F74CLL);
  }

  if (v54 <= 1)
  {
    __break(0xC471u);
    goto LABEL_56;
  }

  *v53 = 3197;
  v25 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v7 + 72);
  if (v25 + 16 >= v26)
  {
    v25 = 0;
  }

  v27 = v25 + 16;
  if (v26 <= v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27;
  }

  *(v7 + 88) = v28;
  v29 = *(v7 + 80);
  if (*(v29 + 8) <= 0xFFuLL)
  {
    goto LABEL_56;
  }

  atomic_exchange((*(v29 + 16) + 128), v28);
  *(v7 + 124) = 0;
  v30 = *(v7 + 8);
  v31 = IPC::Encoder::operator new(0x238, v19);
  *v31 = 1546;
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  *(v31 + 1) = v8;
  *(v31 + 68) = 0;
  *(v31 + 70) = 0;
  *(v31 + 69) = 0;
  IPC::Encoder::encodeHeader(v31);
  v56 = v31;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v31, a2);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(v31, &v52);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(v31, &v51);
  IPC::ArgumentCoder<std::optional<int>,void>::encode<IPC::Encoder,std::optional<int> const&>(v31, &v50);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(v31, &v49);
  IPC::Connection::sendMessageImpl(v30, &v56, 1, 0);
  v33 = v56;
  v56 = 0;
  if (v33)
  {
    IPC::Encoder::~Encoder(v33, v32);
    bmalloc::api::tzoneFree(v34, v35);
  }

LABEL_32:
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }
}

void WebKit::WebGPU::RemoteRenderPassEncoderProxy::drawIndirect(WebKit::WebGPU::RemoteRenderPassEncoderProxy *this, const WebCore::WebGPU::Buffer *a2, uint64_t a3)
{
  v5 = (*(**(this + 5) + 40))(*(this + 5), a2);
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
      JUMPOUT(0x19E26FB8CLL);
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
      *v50 = 1548;
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
          *(v18 + (-v18 & 7)) = a3;
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
            *v44 = 1548;
            *(v44 + 2) = 0;
            *(v44 + 3) = 0;
            *(v44 + 1) = v49;
            *(v44 + 68) = 0;
            *(v44 + 70) = 0;
            *(v44 + 69) = 0;
            IPC::Encoder::encodeHeader(v44);
            v53 = v44;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, v6);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, a3);
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
      JUMPOUT(0x19E26FB64);
    }
  }

LABEL_20:
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }
}

void WebKit::WebGPU::RemoteRenderPassEncoderProxy::drawIndexedIndirect(WebKit::WebGPU::RemoteRenderPassEncoderProxy *this, const WebCore::WebGPU::Buffer *a2, uint64_t a3)
{
  v5 = (*(**(this + 5) + 40))(*(this + 5), a2);
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
      JUMPOUT(0x19E26FFACLL);
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
      *v50 = 1547;
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
          *(v18 + (-v18 & 7)) = a3;
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
            *v44 = 1547;
            *(v44 + 2) = 0;
            *(v44 + 3) = 0;
            *(v44 + 1) = v49;
            *(v44 + 68) = 0;
            *(v44 + 70) = 0;
            *(v44 + 69) = 0;
            IPC::Encoder::encodeHeader(v44);
            v53 = v44;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, v6);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, a3);
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
      JUMPOUT(0x19E26FF84);
    }
  }

LABEL_20:
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    IPC::StreamClientConnection::operator delete(v7);
  }
}

double WebKit::WebGPU::RemoteRenderPassEncoderProxy::setBindGroup(WTF::ApproximateTime *a1, int a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  LOBYTE(v9) = 0;
  v10 = 0;
  if (a3)
  {
    v6 = (*(**(a1 + 5) + 24))(*(a1 + 5), a3);
    v10 = 1;
    v9 = v6;
  }

  v8[0] = &v11;
  v8[1] = &v9;
  v8[2] = a4;
  return WebKit::WebGPU::RemoteRenderPassEncoderProxy::send<Messages::RemoteRenderPassEncoder::SetBindGroup>(a1, v8);
}

double WebKit::WebGPU::RemoteRenderPassEncoderProxy::send<Messages::RemoteRenderPassEncoder::SetBindGroup>(WTF::ApproximateTime *a1, uint64_t a2)
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

  if (*(v3 + 64) == v4)
  {
    while (1)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v46, v6);
      if (v48 != 1)
      {
        goto LABEL_32;
      }

      v9 = v46;
      v10 = v47;
      v51 = v47;
      if (v47 <= 1)
      {
        break;
      }

      *v46 = 1555;
      v11 = v9 + 1;
      v12 = v10 - 2;
      v13 = -v11 & 3 | 4;
      v14 = v12 >= v13;
      v15 = v12 - v13;
      if (v14)
      {
        *(v11 + (-v11 & 3)) = **a2;
        v49 = (v11 + v13);
        v50 = v15;
      }

      else
      {
        v49 = 0;
        v50 = 0;
      }

      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&>(&v49, *(a2 + 8));
      IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(&v49, *(a2 + 16));
      if (v49)
      {
        v17 = v51 - v50;
        if (v51 - v50 <= 0x10)
        {
          v17 = 16;
        }

        v18 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v19 = *(v3 + 72);
        if (v18 + 16 >= v19)
        {
          v18 = 0;
        }

        v20 = v18 + v17;
        if (v19 <= v20)
        {
          v20 = 0;
        }

        *(v3 + 88) = v20;
        v21 = *(v3 + 80);
        if (*(v21 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v21 + 16) + 128), v20) == 0x80000000 || *(v3 + 124))
          {
            if (*(v3 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v3 + 100));
            }

            *(v3 + 124) = 0;
          }

          goto LABEL_32;
        }
      }

      else if (v48)
      {
        if (v47 <= 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19E270478);
        }

        *v46 = 3197;
        v22 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v23 = *(v3 + 72);
        if (v22 + 16 >= v23)
        {
          v22 = 0;
        }

        v24 = v22 + 16;
        v25 = v23 <= v24 ? 0 : v24;
        *(v3 + 88) = v25;
        v26 = *(v3 + 80);
        if (*(v26 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v26 + 16) + 128), v25);
          *(v3 + 124) = 0;
          v27 = *(v3 + 8);
          v28 = IPC::Encoder::operator new(0x238, v16);
          *v28 = 1555;
          *(v28 + 2) = 0;
          *(v28 + 3) = 0;
          *(v28 + 1) = v4;
          *(v28 + 68) = 0;
          *(v28 + 70) = 0;
          *(v28 + 69) = 0;
          IPC::Encoder::encodeHeader(v28);
          v49 = v28;
          IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v28, **a2);
          IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(v28, *(a2 + 8));
          IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(v28, *(a2 + 16));
          IPC::Connection::sendMessageImpl(v27, &v49, 1, 0);
          v30 = v49;
          v49 = 0;
          if (v30)
          {
            IPC::Encoder::~Encoder(v30, v29);
            bmalloc::api::tzoneFree(v31, v32);
          }

          goto LABEL_32;
        }
      }

LABEL_52:
      __break(1u);
LABEL_53:
      if (*(v3 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(v3 + 100));
      }

      *(v3 + 124) = 0;
LABEL_51:
      *(v3 + 64) = v4;
    }

    __break(0xC471u);
LABEL_59:
    JUMPOUT(0x19E270458);
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v49, v6);
  if (v51 != 1)
  {
    goto LABEL_32;
  }

  v33 = v50;
  if (v50 <= 1)
  {
    __break(0xC471u);
    goto LABEL_59;
  }

  v34 = v49;
  *v49 = 3198;
  v35 = v34 + 2;
  if (v33 - 2 >= (-v35 & 7 | 8uLL))
  {
    v36 = -v35 & 7;
    *&v35[v36] = v4;
    if (v36 != 7)
    {
      v36 = 6;
    }

    v37 = (*(v3 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v39 = *(v3 + 72);
    v38 = *(v3 + 80);
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

    *(v3 + 88) = v41;
    if (*(v38 + 8) <= 0xFFuLL)
    {
      goto LABEL_52;
    }

    v42 = atomic_exchange((*(v38 + 16) + 128), v41);
    v43 = *(v3 + 124);
    if (v42 == 0x80000000 || v43 != 0)
    {
      v45 = v43 + 1;
      *(v3 + 124) = v45;
      if (v45 >= *(v3 + 120))
      {
        goto LABEL_53;
      }
    }

    goto LABEL_51;
  }

LABEL_32:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);

    return IPC::StreamClientConnection::operator delete(v3);
  }

  return result;
}

WTF *WebKit::WebGPU::RemoteRenderPassEncoderProxy::setBindGroup(WTF *result, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unsigned int a7)
{
  v11 = result;
  v22 = a2;
  LOBYTE(v20) = 0;
  v21 = 0;
  if (a3)
  {
    result = (*(**(result + 5) + 24))(*(result + 5), a3);
    v21 = 1;
    v20 = result;
  }

  if (a5 < a6 || a5 - a6 < a7)
  {
    __break(1u);
LABEL_11:
    v14 = 0;
    LODWORD(v15) = 0;
    return WTF::fastFree(result, a2);
  }

  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v14, (a4 + 4 * a6), a7);
  v16 = v14;
  v12 = v15;
  v14 = 0;
  v15 = 0;
  v17 = v12;
  v18 = 1;
  v19[0] = &v22;
  v19[1] = &v20;
  v19[2] = &v16;
  WebKit::WebGPU::RemoteRenderPassEncoderProxy::send<Messages::RemoteRenderPassEncoder::SetBindGroup>(v11, v19);
  if (v18 == 1)
  {
    v13 = v16;
    if (v16)
    {
      v16 = 0;
      LODWORD(v17) = 0;
      WTF::fastFree(v13, a2);
    }
  }

  result = v14;
  if (v14)
  {
    goto LABEL_11;
  }

  return result;
}

void WebKit::WebGPU::RemoteRenderPassEncoderProxy::pushDebugGroup(WTF::ApproximateTime *a1, uint64_t *a2)
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
      JUMPOUT(0x19E270928);
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

  *v39 = 1554;
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
  *v21 = 1554;
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

void WebKit::WebGPU::RemoteRenderPassEncoderProxy::popDebugGroup(WebKit::WebGPU::RemoteRenderPassEncoderProxy *this)
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
      *v23 = 1553;
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

void WebKit::WebGPU::RemoteRenderPassEncoderProxy::insertDebugMarker(WTF::ApproximateTime *a1, uint64_t *a2)
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
      JUMPOUT(0x19E270F34);
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

  *v39 = 1552;
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
  *v21 = 1552;
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

void WebKit::WebGPU::RemoteRenderPassEncoderProxy::setViewport(WebKit::WebGPU::RemoteRenderPassEncoderProxy *this, float a2, float a3, float a4, float a5, float a6, float a7)
{
  v13 = *(*(this + 6) + 80);
  atomic_fetch_add(v13, 1u);
  v14 = *(this + 4);
  v15 = *(v13 + 128);
  v16 = INFINITY;
  if (fabs(v15) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v16 = v15 + v17;
  }

  if (*(v13 + 64) == v14)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v13 + 72, &v68, v16);
  if (v70 == 1)
  {
    v45 = v69;
    if (v69 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E271404);
    }

    v46 = v68;
    *v68 = 3198;
    v47 = v46 + 1;
    if (v45 - 2 >= (-v47 & 7 | 8uLL))
    {
      v48 = -v47 & 7;
      *(v47 + v48) = v14;
      if (v48 != 7)
      {
        v48 = 6;
      }

      v49 = (*(v13 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v51 = *(v13 + 72);
      v50 = *(v13 + 80);
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

      *(v13 + 88) = v53;
      if (*(v50 + 8) <= 0xFFuLL)
      {
        goto LABEL_60;
      }

      v54 = atomic_exchange((*(v50 + 16) + 128), v53);
      v55 = *(v13 + 124);
      if (v54 == 0x80000000 || v55 != 0)
      {
        v57 = v55 + 1;
        *(v13 + 124) = v57;
        if (v57 >= *(v13 + 120))
        {
          if (*(v13 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v13 + 100));
          }

          *(v13 + 124) = 0;
        }
      }

      *(v13 + 64) = v14;
LABEL_4:
      IPC::StreamClientConnectionBuffer::tryAcquire(v13 + 72, &v68, v16);
      if (v70 != 1)
      {
        goto LABEL_26;
      }

      v19 = v69;
      if (v69 <= 1)
      {
        __break(0xC471u);
        goto LABEL_61;
      }

      v20 = v68;
      *v68 = 1563;
      v21 = v20 + 1;
      v22 = -v21 & 3 | 4;
      v23 = v19 - 2 - v22;
      if (v19 - 2 >= v22)
      {
        *(v21 + (-v21 & 3)) = a2;
        v24 = v21 + v22;
        v25 = -v24 & 3 | 4;
        v26 = v23 >= v25;
        v27 = v23 - v25;
        if (v26)
        {
          *(v24 + (-v24 & 3)) = a3;
          v28 = v24 + v25;
          v29 = -v28 & 3 | 4;
          v26 = v27 >= v29;
          v30 = v27 - v29;
          if (v26)
          {
            *(v28 + (-v28 & 3)) = a4;
            v31 = v28 + v29;
            v32 = -v31 & 3 | 4;
            v33 = v30 - v32;
            if (v30 >= v32)
            {
              *(v31 + (-v31 & 3)) = a5;
              v34 = v31 + v32;
              v35 = -(v31 + v32);
              v36 = v35 & 3 | 4;
              v37 = v33 - v36;
              if (v33 >= v36)
              {
                *(v34 + (v35 & 3)) = a6;
                v38 = v34 + v36;
                v39 = -v38 & 3 | 4;
                if (v37 >= v39)
                {
                  *(v38 + (-v38 & 3)) = a7;
                  v40 = v19 - v37 + v39;
                  if (v40 <= 0x10)
                  {
                    v40 = 16;
                  }

                  v41 = (*(v13 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
                  v42 = *(v13 + 72);
                  if (v41 + 16 >= v42)
                  {
                    v41 = 0;
                  }

                  v43 = v41 + v40;
                  if (v42 <= v43)
                  {
                    v43 = 0;
                  }

                  *(v13 + 88) = v43;
                  v44 = *(v13 + 80);
                  if (*(v44 + 8) > 0xFFuLL)
                  {
                    if (atomic_exchange((*(v44 + 16) + 128), v43) == 0x80000000 || *(v13 + 124))
                    {
                      if (*(v13 + 112) == 1)
                      {
                        MEMORY[0x19EB16320](*(v13 + 100));
                      }

                      *(v13 + 124) = 0;
                    }

                    goto LABEL_26;
                  }

                  goto LABEL_60;
                }
              }
            }
          }
        }
      }

      if (v70)
      {
        if (v69 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v68 = 3197;
          v58 = (*(v13 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v60 = *(v13 + 72);
          v59 = *(v13 + 80);
          if (v58 + 16 >= v60)
          {
            v58 = 0;
          }

          v61 = v58 + 16;
          if (v60 <= v61)
          {
            v61 = 0;
          }

          *(v13 + 88) = v61;
          if (*(v59 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v59 + 16) + 128), v61);
            *(v13 + 124) = 0;
            v62 = *(v13 + 8);
            v63 = IPC::Encoder::operator new(0x238, v18);
            *v63 = 1563;
            *(v63 + 2) = 0;
            *(v63 + 3) = 0;
            *(v63 + 1) = v14;
            *(v63 + 68) = 0;
            *(v63 + 70) = 0;
            *(v63 + 69) = 0;
            IPC::Encoder::encodeHeader(v63);
            v71 = v63;
            IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v63, a2);
            IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v63, a3);
            IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v63, a4);
            IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v63, a5);
            IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v63, a6);
            IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v63, a7);
            IPC::Connection::sendMessageImpl(v62, &v71, 1, 0);
            v65 = v71;
            v71 = 0;
            if (v65)
            {
              IPC::Encoder::~Encoder(v65, v64);
              bmalloc::api::tzoneFree(v66, v67);
            }

            goto LABEL_26;
          }
        }
      }

LABEL_60:
      __break(1u);
LABEL_61:
      JUMPOUT(0x19E2713E4);
    }
  }

LABEL_26:
  if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13);
    IPC::StreamClientConnection::operator delete(v13);
  }
}

void WebKit::WebGPU::RemoteRenderPassEncoderProxy::setScissorRect(WebKit::WebGPU::RemoteRenderPassEncoderProxy *this, int a2, int a3, int a4, int a5)
{
  v9 = *(*(this + 6) + 80);
  atomic_fetch_add(v9, 1u);
  v10 = *(this + 4);
  v11 = *(v9 + 128);
  v12 = INFINITY;
  if (fabs(v11) != INFINITY)
  {
    WTF::ApproximateTime::now(this);
    v12 = v11 + v13;
  }

  if (*(v9 + 64) == v10)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v58, v12);
  if (v60 == 1)
  {
    v34 = v59;
    if (v59 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E271854);
    }

    v35 = v58;
    *v58 = 3198;
    v36 = v35 + 1;
    if (v34 - 2 >= (-v36 & 7 | 8uLL))
    {
      v37 = -v36 & 7;
      *(v36 + v37) = v10;
      if (v37 != 7)
      {
        v37 = 6;
      }

      v38 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v40 = *(v9 + 72);
      v39 = *(v9 + 80);
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

      *(v9 + 88) = v42;
      if (*(v39 + 8) <= 0xFFuLL)
      {
        goto LABEL_56;
      }

      v43 = atomic_exchange((*(v39 + 16) + 128), v42);
      v44 = *(v9 + 124);
      if (v43 == 0x80000000 || v44 != 0)
      {
        v46 = v44 + 1;
        *(v9 + 124) = v46;
        if (v46 >= *(v9 + 120))
        {
          if (*(v9 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v9 + 100));
          }

          *(v9 + 124) = 0;
        }
      }

      *(v9 + 64) = v10;
LABEL_4:
      IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v58, v12);
      if (v60 != 1)
      {
        goto LABEL_22;
      }

      v15 = v59;
      if (v59 <= 1)
      {
        __break(0xC471u);
        goto LABEL_57;
      }

      v16 = v58;
      *v58 = 1560;
      v17 = v16 + 1;
      v18 = -v17 & 3 | 4;
      v19 = v15 - 2 - v18;
      if (v15 - 2 >= v18)
      {
        *(v17 + (-v17 & 3)) = a2;
        v20 = v17 + v18;
        v21 = -v20 & 3 | 4;
        v22 = v19 - v21;
        if (v19 >= v21)
        {
          *(v20 + (-v20 & 3)) = a3;
          v23 = v20 + v21;
          v24 = -(v20 + v21);
          v25 = v24 & 3 | 4;
          v26 = v22 - v25;
          if (v22 >= v25)
          {
            *(v23 + (v24 & 3)) = a4;
            v27 = v23 + v25;
            v28 = -v27 & 3 | 4;
            if (v26 >= v28)
            {
              *(v27 + (-v27 & 3)) = a5;
              v29 = v15 - v26 + v28;
              if (v29 <= 0x10)
              {
                v29 = 16;
              }

              v30 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
              v31 = *(v9 + 72);
              if (v30 + 16 >= v31)
              {
                v30 = 0;
              }

              v32 = v30 + v29;
              if (v31 <= v32)
              {
                v32 = 0;
              }

              *(v9 + 88) = v32;
              v33 = *(v9 + 80);
              if (*(v33 + 8) > 0xFFuLL)
              {
                if (atomic_exchange((*(v33 + 16) + 128), v32) == 0x80000000 || *(v9 + 124))
                {
                  if (*(v9 + 112) == 1)
                  {
                    MEMORY[0x19EB16320](*(v9 + 100));
                  }

                  *(v9 + 124) = 0;
                }

                goto LABEL_22;
              }

              goto LABEL_56;
            }
          }
        }
      }

      v57 = v10;
      if (v60)
      {
        if (v59 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v58 = 3197;
          v47 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v49 = *(v9 + 72);
          v48 = *(v9 + 80);
          if (v47 + 16 >= v49)
          {
            v47 = 0;
          }

          v50 = v47 + 16;
          if (v49 <= v50)
          {
            v50 = 0;
          }

          *(v9 + 88) = v50;
          if (*(v48 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v48 + 16) + 128), v50);
            *(v9 + 124) = 0;
            v51 = *(v9 + 8);
            v52 = IPC::Encoder::operator new(0x238, v14);
            *v52 = 1560;
            *(v52 + 2) = 0;
            *(v52 + 3) = 0;
            *(v52 + 1) = v57;
            *(v52 + 68) = 0;
            *(v52 + 70) = 0;
            *(v52 + 69) = 0;
            IPC::Encoder::encodeHeader(v52);
            v61 = v52;
            IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v52, a2);
            IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v52, a3);
            IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v52, a4);
            IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v52, a5);
            IPC::Connection::sendMessageImpl(v51, &v61, 1, 0);
            v54 = v61;
            v61 = 0;
            if (v54)
            {
              IPC::Encoder::~Encoder(v54, v53);
              bmalloc::api::tzoneFree(v55, v56);
            }

            goto LABEL_22;
          }
        }
      }

LABEL_56:
      __break(1u);
LABEL_57:
      JUMPOUT(0x19E271834);
    }
  }

LABEL_22:
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    IPC::StreamClientConnection::operator delete(v9);
  }
}

void WebKit::WebGPU::RemoteRenderPassEncoderProxy::setBlendConstant(uint64_t a1, uint64_t a2)
{
  v3 = WebKit::WebGPU::ConvertToBackingContext::convertToBacking(*(a1 + 40), a2, &v42);
  if (v45 != 1)
  {
    return;
  }

  v4 = *(*(a1 + 48) + 80);
  atomic_fetch_add(v4, 1u);
  v5 = *(a1 + 32);
  v6 = *(v4 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(v3);
    v7 = v6 + v8;
  }

  if (*(v4 + 64) != v5)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, &v49, v7);
    if (v51 != 1)
    {
      goto LABEL_30;
    }

    v28 = v50;
    if (v50 <= 1)
    {
LABEL_59:
      __break(0xC471u);
      JUMPOUT(0x19E271C48);
    }

    v29 = v49;
    *v49 = 3198;
    v30 = v29 + 2;
    if (v28 - 2 < (-v30 & 7 | 8uLL))
    {
      goto LABEL_30;
    }

    v31 = -v30 & 7;
    *&v30[v31] = v5;
    v32 = 6;
    if (v31 > 6)
    {
      v32 = v31;
    }

    v33 = v32 + 10;
    v34 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v35 = *(v4 + 72);
    if (v34 + 16 >= v35)
    {
      v34 = 0;
    }

    v36 = v33 + v34;
    if (v35 <= v36)
    {
      v36 = 0;
    }

    *(v4 + 88) = v36;
    v37 = *(v4 + 80);
    if (*(v37 + 8) <= 0xFFuLL)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v38 = atomic_exchange((*(v37 + 16) + 128), v36);
    v39 = *(v4 + 124);
    if (v38 == 0x80000000 || v39 != 0)
    {
      v41 = v39 + 1;
      *(v4 + 124) = v41;
      if (v41 >= *(v4 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, &v46, v7);
  if (v48 == 1)
  {
    v10 = v46;
    v11 = v47;
    v51 = v47;
    if (v47 <= 1)
    {
      goto LABEL_59;
    }

    *v46 = 1556;
    v49 = (v10 + 1);
    v50 = v11 - 2;
    IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::encode<IPC::StreamConnectionEncoder,mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict> const&>(&v49, &v42);
    if (v49)
    {
      v12 = v51 - v50;
      if (v51 - v50 <= 0x10)
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

        goto LABEL_30;
      }
    }

    else if (v48)
    {
      if (v47 <= 1)
      {
        __break(0xC471u);
      }

      else
      {
        *v46 = 3197;
        v17 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v18 = *(v4 + 72);
        if (v17 + 16 >= v18)
        {
          v17 = 0;
        }

        v19 = v17 + 16;
        if (v18 <= v19)
        {
          v20 = 0;
        }

        else
        {
          v20 = v19;
        }

        *(v4 + 88) = v20;
        v21 = *(v4 + 80);
        if (*(v21 + 8) > 0xFFuLL)
        {
          atomic_exchange((*(v21 + 16) + 128), v20);
          *(v4 + 124) = 0;
          v22 = *(v4 + 8);
          v23 = IPC::Encoder::operator new(0x238, v9);
          *v23 = 1556;
          *(v23 + 2) = 0;
          *(v23 + 3) = 0;
          *(v23 + 1) = v5;
          *(v23 + 68) = 0;
          *(v23 + 70) = 0;
          *(v23 + 69) = 0;
          IPC::Encoder::encodeHeader(v23);
          v49 = v23;
          v52 = v44;
          IPC::Encoder::operator<<<BOOL>(v23, &v52);
          IPC::ArgumentCoder<mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::ColorDict> const&>(v23, &v42, v52);
          IPC::Connection::sendMessageImpl(v22, &v49, 1, 0);
          v24 = v49;
          v49 = 0;
          if (v24)
          {
            IPC::Encoder::~Encoder(v24, v9);
            bmalloc::api::tzoneFree(v26, v27);
          }

          goto LABEL_30;
        }
      }
    }

    goto LABEL_58;
  }

LABEL_30:
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    IPC::StreamClientConnection::operator delete(v4);
  }

  if ((v45 & 1) != 0 && !v44)
  {
    v25 = v42;
    if (v42)
    {
      v42 = 0;
      v43 = 0;
      WTF::fastFree(v25, v9);
    }
  }
}

void WebKit::WebGPU::RemoteRenderPassEncoderProxy::setStencilReference(WebKit::WebGPU::RemoteRenderPassEncoderProxy *this, int a2)
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

  if (*(v3 + 64) == v4)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v40, v6);
  if (v42 == 1)
  {
    v16 = v41;
    if (v41 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E271FF8);
    }

    v17 = v40;
    *v40 = 3198;
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
        goto LABEL_51;
      }

      v25 = atomic_exchange((*(v21 + 16) + 128), v24);
      v26 = *(v3 + 124);
      if (v25 == 0x80000000 || v26 != 0)
      {
        v28 = v26 + 1;
        *(v3 + 124) = v28;
        if (v28 >= *(v3 + 120))
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
      IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v40, v6);
      if (v42 != 1)
      {
        goto LABEL_17;
      }

      v9 = v41;
      if (v41 <= 1)
      {
        __break(0xC471u);
        goto LABEL_52;
      }

      v10 = v40;
      *v40 = 1561;
      v11 = v10 + 1;
      if (v9 - 2 >= (-v11 & 3 | 4uLL))
      {
        *(v11 + (-v11 & 3)) = a2;
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

          goto LABEL_17;
        }

        goto LABEL_51;
      }

      v39 = v4;
      if (v42)
      {
        if (v41 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v40 = 3197;
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
            *v34 = 1561;
            *(v34 + 2) = 0;
            *(v34 + 3) = 0;
            *(v34 + 1) = v39;
            *(v34 + 68) = 0;
            *(v34 + 70) = 0;
            *(v34 + 69) = 0;
            IPC::Encoder::encodeHeader(v34);
            v43 = v34;
            IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v34, a2);
            IPC::Connection::sendMessageImpl(v33, &v43, 1, 0);
            v36 = v43;
            v43 = 0;
            if (v36)
            {
              IPC::Encoder::~Encoder(v36, v35);
              bmalloc::api::tzoneFree(v37, v38);
            }

            goto LABEL_17;
          }
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      JUMPOUT(0x19E271FD8);
    }
  }

LABEL_17:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

void WebKit::WebGPU::RemoteRenderPassEncoderProxy::beginOcclusionQuery(WebKit::WebGPU::RemoteRenderPassEncoderProxy *this, int a2)
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

  if (*(v3 + 64) == v4)
  {
    goto LABEL_4;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v40, v6);
  if (v42 == 1)
  {
    v16 = v41;
    if (v41 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E272388);
    }

    v17 = v40;
    *v40 = 3198;
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
        goto LABEL_51;
      }

      v25 = atomic_exchange((*(v21 + 16) + 128), v24);
      v26 = *(v3 + 124);
      if (v25 == 0x80000000 || v26 != 0)
      {
        v28 = v26 + 1;
        *(v3 + 124) = v28;
        if (v28 >= *(v3 + 120))
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
      IPC::StreamClientConnectionBuffer::tryAcquire(v3 + 72, &v40, v6);
      if (v42 != 1)
      {
        goto LABEL_17;
      }

      v9 = v41;
      if (v41 <= 1)
      {
        __break(0xC471u);
        goto LABEL_52;
      }

      v10 = v40;
      *v40 = 1543;
      v11 = v10 + 1;
      if (v9 - 2 >= (-v11 & 3 | 4uLL))
      {
        *(v11 + (-v11 & 3)) = a2;
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

          goto LABEL_17;
        }

        goto LABEL_51;
      }

      v39 = v4;
      if (v42)
      {
        if (v41 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v40 = 3197;
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
            *v34 = 1543;
            *(v34 + 2) = 0;
            *(v34 + 3) = 0;
            *(v34 + 1) = v39;
            *(v34 + 68) = 0;
            *(v34 + 70) = 0;
            *(v34 + 69) = 0;
            IPC::Encoder::encodeHeader(v34);
            v43 = v34;
            IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v34, a2);
            IPC::Connection::sendMessageImpl(v33, &v43, 1, 0);
            v36 = v43;
            v43 = 0;
            if (v36)
            {
              IPC::Encoder::~Encoder(v36, v35);
              bmalloc::api::tzoneFree(v37, v38);
            }

            goto LABEL_17;
          }
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      JUMPOUT(0x19E272368);
    }
  }

LABEL_17:
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

void WebKit::WebGPU::RemoteRenderPassEncoderProxy::endOcclusionQuery(WebKit::WebGPU::RemoteRenderPassEncoderProxy *this)
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
      *v23 = 1550;
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

WTF *WebKit::WebGPU::RemoteRenderPassEncoderProxy::executeBundles(uint64_t a1, uint64_t a2)
{
  v50 = 0;
  v51 = 0;
  v3 = *(a2 + 12);
  if (!v3)
  {
    goto LABEL_10;
  }

  if (v3 >> 29)
  {
    __break(0xC471u);
    goto LABEL_68;
  }

  LODWORD(v51) = *(a2 + 12);
  v50 = WTF::fastMalloc((8 * v3));
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      v8 = (*(**(a1 + 40) + 160))(*(a1 + 40), *v6);
      v55 = v8;
      if (HIDWORD(v51) == v51)
      {
        v9 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v50, HIDWORD(v51) + 1, &v55);
        *(v50 + HIDWORD(v51)) = *v9;
      }

      else
      {
        *(v50 + HIDWORD(v51)) = v8;
      }

      v10 = ++HIDWORD(v51);
      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  else
  {
LABEL_10:
    v10 = 0;
  }

  v11 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v50, v10);
  v12 = *(*(a1 + 48) + 80);
  atomic_fetch_add(v12, 1u);
  v13 = *(a1 + 32);
  v14 = *(v12 + 128);
  v15 = INFINITY;
  if (fabs(v14) != INFINITY)
  {
    WTF::ApproximateTime::now(v11);
    v15 = v14 + v16;
  }

  if (*(v12 + 64) != v13)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, &v55, v15);
    if (v57 != 1)
    {
      goto LABEL_39;
    }

    v36 = v56;
    if (v56 <= 1)
    {
      goto LABEL_67;
    }

    v37 = v55;
    *v55 = 3198;
    v38 = v37 + 2;
    if (v36 - 2 < (-v38 & 7 | 8uLL))
    {
      goto LABEL_39;
    }

    v39 = -v38 & 7;
    *&v38[v39] = v13;
    v40 = 6;
    if (v39 > 6)
    {
      v40 = v39;
    }

    v41 = v40 + 10;
    v42 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v43 = *(v12 + 72);
    if (v42 + 16 >= v43)
    {
      v42 = 0;
    }

    v44 = v41 + v42;
    if (v43 <= v44)
    {
      v44 = 0;
    }

    *(v12 + 88) = v44;
    v45 = *(v12 + 80);
    if (*(v45 + 8) <= 0xFFuLL)
    {
      goto LABEL_66;
    }

    v46 = atomic_exchange((*(v45 + 16) + 128), v44);
    v47 = *(v12 + 124);
    if (v46 == 0x80000000 || v47 != 0)
    {
      v49 = v47 + 1;
      *(v12 + 124) = v49;
      if (v49 >= *(v12 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, &v52, v15);
  if (v54 != 1)
  {
    goto LABEL_39;
  }

  v18 = v52;
  v19 = v53;
  v57 = v53;
  if (v53 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E272A74);
  }

  *v52 = 1551;
  v55 = (v18 + 1);
  v56 = v19 - 2;
  IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(&v55, &v50);
  if (v55)
  {
    v20 = v57 - v56;
    if (v57 - v56 <= 0x10)
    {
      v20 = 16;
    }

    v21 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v22 = *(v12 + 72);
    if (v21 + 16 >= v22)
    {
      v21 = 0;
    }

    v23 = v21 + v20;
    if (v22 <= v23)
    {
      v23 = 0;
    }

    *(v12 + 88) = v23;
    v24 = *(v12 + 80);
    if (*(v24 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(v12 + 124))
      {
        if (*(v12 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v12 + 100));
        }

        *(v12 + 124) = 0;
      }

      goto LABEL_39;
    }

    goto LABEL_66;
  }

  if ((v54 & 1) == 0)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(0xC471u);
LABEL_68:
    JUMPOUT(0x19E272A54);
  }

  if (v53 <= 1)
  {
    __break(0xC471u);
    goto LABEL_66;
  }

  *v52 = 3197;
  v25 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v12 + 72);
  if (v25 + 16 >= v26)
  {
    v25 = 0;
  }

  v27 = v25 + 16;
  if (v26 <= v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27;
  }

  *(v12 + 88) = v28;
  v29 = *(v12 + 80);
  if (*(v29 + 8) <= 0xFFuLL)
  {
    goto LABEL_66;
  }

  atomic_exchange((*(v29 + 16) + 128), v28);
  *(v12 + 124) = 0;
  v30 = *(v12 + 8);
  v31 = IPC::Encoder::operator new(0x238, v17);
  *v31 = 1551;
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  *(v31 + 1) = v13;
  *(v31 + 68) = 0;
  *(v31 + 70) = 0;
  *(v31 + 69) = 0;
  IPC::Encoder::encodeHeader(v31);
  v55 = v31;
  IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v31, &v50);
  IPC::Connection::sendMessageImpl(v30, &v55, 1, 0);
  v32 = v55;
  v55 = 0;
  if (v32)
  {
    IPC::Encoder::~Encoder(v32, v17);
    bmalloc::api::tzoneFree(v34, v35);
  }

LABEL_39:
  if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    IPC::StreamClientConnection::operator delete(v12);
  }

  result = v50;
  if (v50)
  {
    v50 = 0;
    LODWORD(v51) = 0;
    return WTF::fastFree(result, v17);
  }

  return result;
}

void WebKit::WebGPU::RemoteRenderPassEncoderProxy::end(WebKit::WebGPU::RemoteRenderPassEncoderProxy *this)
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
      *v23 = 1549;
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

void WebKit::WebGPU::RemoteRenderPassEncoderProxy::setLabelInternal(WebKit::WebGPU::RemoteRenderPassEncoderProxy *this, const WTF::String *a2)
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
      JUMPOUT(0x19E273080);
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

  *v39 = 1558;
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
  *v21 = 1558;
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

void WebKit::WebGPU::RemoteRenderPipelineProxy::~RemoteRenderPipelineProxy(WebKit::WebGPU::RemoteRenderPipelineProxy *this)
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
      JUMPOUT(0x19E273450);
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

  *v31 = 1565;
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

  *this = &unk_1F11266A8;
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
  WebKit::WebGPU::RemoteRenderPipelineProxy::~RemoteRenderPipelineProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::WebGPU::RemoteRenderPipelineProxy::getBindGroupLayout@<X0>(WebKit::WebGPU::RemoteRenderPipelineProxy *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_60;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v7 = IdentifierInternal;
  v8 = *(*(*(*(this + 6) + 64) + 72) + 80);
  atomic_fetch_add(v8, 1u);
  v9 = *(this + 4);
  v10 = *(v8 + 128);
  v11 = INFINITY;
  if (fabs(v10) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v11 = v10 + v12;
  }

  if (*(v8 + 64) == v9)
  {
    goto LABEL_5;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v54, v11);
  if (v56 == 1)
  {
    v29 = v55;
    if (v55 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E273968);
    }

    v30 = v54;
    *v54 = 3198;
    v31 = v30 + 1;
    if (v29 - 2 >= (-v31 & 7 | 8uLL))
    {
      v32 = -v31 & 7;
      *(v31 + v32) = v9;
      v33 = 6;
      if (v32 > 6)
      {
        v33 = v32;
      }

      v34 = v33 + 10;
      v35 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v36 = *(v8 + 72);
      if (v35 + 16 >= v36)
      {
        v35 = 0;
      }

      v37 = v34 + v35;
      if (v36 <= v37)
      {
        v37 = 0;
      }

      *(v8 + 88) = v37;
      v38 = *(v8 + 80);
      if (*(v38 + 8) <= 0xFFuLL)
      {
        goto LABEL_59;
      }

      v39 = atomic_exchange((*(v38 + 16) + 128), v37);
      v40 = *(v8 + 124);
      if (v39 == 0x80000000 || v40 != 0)
      {
        v42 = v40 + 1;
        *(v8 + 124) = v42;
        if (v42 >= *(v8 + 120))
        {
          if (*(v8 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v8 + 100));
          }

          *(v8 + 124) = 0;
        }
      }

      *(v8 + 64) = v9;
LABEL_5:
      IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v54, v11);
      if (v56 != 1)
      {
        goto LABEL_21;
      }

      v14 = v55;
      if (v55 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E273940);
      }

      v15 = v54;
      *v54 = 1566;
      v16 = v15 + 1;
      v17 = -v16 & 3 | 4;
      v18 = v14 - 2 - v17;
      if (v14 - 2 >= v17)
      {
        *(v16 + (-v16 & 3)) = a2;
        v19 = v16 + v17;
        v20 = -v19 & 7 | 8;
        if (v18 >= v20)
        {
          *(v19 + (-v19 & 7)) = v7;
          v21 = v14 - v18 + v20;
          if (v21 <= 0x10)
          {
            v21 = 16;
          }

          v22 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v23 = *(v8 + 72);
          if (v22 + 16 >= v23)
          {
            v22 = 0;
          }

          v24 = v22 + v21;
          if (v23 <= v24)
          {
            v24 = 0;
          }

          *(v8 + 88) = v24;
          v25 = *(v8 + 80);
          if (*(v25 + 8) > 0xFFuLL)
          {
            if (atomic_exchange((*(v25 + 16) + 128), v24) == 0x80000000 || *(v8 + 124))
            {
              if (*(v8 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v8 + 100));
              }

              *(v8 + 124) = 0;
            }

            goto LABEL_21;
          }

          goto LABEL_59;
        }
      }

      v53 = v9;
      if (v56)
      {
        if (v55 <= 1)
        {
          __break(0xC471u);
        }

        else
        {
          *v54 = 3197;
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
          if (*(v47 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v47 + 16) + 128), v46);
            *(v8 + 124) = 0;
            v48 = *(v8 + 8);
            v49 = IPC::Encoder::operator new(0x238, v13);
            *v49 = 1566;
            *(v49 + 2) = 0;
            *(v49 + 3) = 0;
            *(v49 + 1) = v53;
            *(v49 + 68) = 0;
            *(v49 + 70) = 0;
            *(v49 + 69) = 0;
            IPC::Encoder::encodeHeader(v49);
            v57 = v49;
            IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v49, a2);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v49, v7);
            IPC::Connection::sendMessageImpl(v48, &v57, 1, 0);
            v50 = v57;
            v57 = 0;
            if (v50)
            {
              IPC::Encoder::~Encoder(v50, v13);
              bmalloc::api::tzoneFree(v51, v52);
            }

            goto LABEL_21;
          }
        }
      }

LABEL_59:
      __break(1u);
LABEL_60:
      JUMPOUT(0x19E273920);
    }
  }

LABEL_21:
  if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    IPC::StreamClientConnection::operator delete(v8);
  }

  v26 = *(*(*(this + 6) + 64) + 72);
  atomic_fetch_add(v26 + 7, 1u);
  v27 = *(this + 5);
  result = WebKit::WebGPU::RemoteBindGroupLayoutProxy::operator new(0x38, v13);
  *(result + 16) = 1;
  *(result + 24) = 0;
  *(result + 32) = v7;
  *result = &unk_1F1125358;
  *(result + 8) = 0;
  ++*(v27 + 8);
  *(result + 40) = v27;
  atomic_fetch_add(v26 + 7, 1u);
  *(result + 48) = v26;
  *a3 = result;
  if (atomic_fetch_add(v26 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v26 + 7);
    return (*(*v26 + 24))(v26);
  }

  return result;
}

void WebKit::WebGPU::RemoteRenderPipelineProxy::setLabelInternal(WebKit::WebGPU::RemoteRenderPipelineProxy *this, const WTF::String *a2)
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
      JUMPOUT(0x19E273D00);
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

  *v40 = 1567;
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
  *v22 = 1567;
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

void WebKit::WebGPU::RemoteSamplerProxy::~RemoteSamplerProxy(WebKit::WebGPU::RemoteSamplerProxy *this)
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
      JUMPOUT(0x19E2740D0);
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

  *v31 = 1617;
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

  *this = &unk_1F11266D8;
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
  WebKit::WebGPU::RemoteSamplerProxy::~RemoteSamplerProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::WebGPU::RemoteSamplerProxy::setLabelInternal(WebKit::WebGPU::RemoteSamplerProxy *this, const WTF::String *a2)
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
      JUMPOUT(0x19E274494);
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

  *v40 = 1618;
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
  *v22 = 1618;
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

void WebKit::WebGPU::RemoteShaderModuleProxy::~RemoteShaderModuleProxy(WebKit::WebGPU::RemoteShaderModuleProxy *this)
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
      JUMPOUT(0x19E274864);
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

  *v31 = 1629;
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

  *this = &unk_1F1126700;
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
  WebKit::WebGPU::RemoteShaderModuleProxy::~RemoteShaderModuleProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::ApproximateTime *a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(*(*(*(a1 + 6) + 64) + 72) + 80);
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
  *v11 = &unk_1F1126870;
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
    JUMPOUT(0x19E274E04);
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
    JUMPOUT(0x19E274E24);
  }

  v16 = v58;
  *v58 = 1628;
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
        JUMPOUT(0x19E274DE4);
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
        *v44 = 1628;
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
            *v48 = &unk_1F1126898;
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

void WebKit::WebGPU::RemoteShaderModuleProxy::setLabelInternal(WebKit::WebGPU::RemoteShaderModuleProxy *this, const WTF::String *a2)
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
      JUMPOUT(0x19E2751E4);
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

  *v40 = 1630;
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
  *v22 = 1630;
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

unsigned int *WTF::Detail::CallableWrapper<WebKit::WebGPU::RemoteQueueProxy::RemoteQueueProxy(WebKit::WebGPU::RemoteAdapterProxy &,WebKit::WebGPU::ConvertToBackingContext &,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::call(uint64_t a1, void *a2)
{
  {
    v3 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v9 = WebKit::WebProcess::operator new(0x370, a2);
    v3 = WebKit::WebProcess::WebProcess(v9);
    WebKit::WebProcess::singleton(void)::process = v3;
  }

  WebKit::WebProcess::ensureProtectedGPUProcessConnection(v3, &v10);
  v5 = WebKit::GPUProcessConnection::videoFrameObjectHeapProxy(v10);
  atomic_fetch_add(v5, 1u);
  v6 = *(a1 + 8);
  result = *v6;
  *v6 = v5;
  if (result)
  {
    result = WTF::ThreadSafeRefCounted<WebKit::RemoteVideoFrameObjectHeapProxy,(WTF::DestructionThread)2>::deref(result);
  }

  if (v10)
  {
    v8 = (v10 + 24);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v8, v4);
  }

  return result;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteQueue::Submit,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t *a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v45, v7);
    if (v47 != 1)
    {
      return 16;
    }

    v28 = v46;
    if (v46 <= 1)
    {
LABEL_54:
      __break(0xC471u);
      JUMPOUT(0x19E275670);
    }

    v29 = v45;
    *v45 = 3198;
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
      goto LABEL_53;
    }

    v37 = atomic_exchange((*(v33 + 16) + 128), v36);
    v38 = *(a1 + 124);
    if (v37 == 0x80000000 || v38 != 0)
    {
      v40 = v38 + 1;
      *(a1 + 124) = v40;
      if (v40 >= *(a1 + 120))
      {
        if (*(a1 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(a1 + 100));
        }

        *(a1 + 124) = 0;
      }
    }

    *(a1 + 64) = a3;
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v42, v7);
  if (v44 != 1)
  {
    return 16;
  }

  v9 = v42;
  v10 = v43;
  v47 = v43;
  if (v43 <= 1)
  {
    goto LABEL_54;
  }

  *v42 = 1519;
  v45 = (v9 + 1);
  v46 = v10 - 2;
  IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(&v45, *a2);
  if (v45)
  {
    v12 = 16;
    if (v47 - v46 > 0x10)
    {
      v12 = v47 - v46;
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

    goto LABEL_53;
  }

  if ((v44 & 1) == 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v43 <= 1)
  {
    __break(0xC471u);
    goto LABEL_53;
  }

  *v42 = 3197;
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
    goto LABEL_53;
  }

  atomic_exchange((*(v19 + 16) + 128), v21);
  *(a1 + 124) = 0;
  v22 = *(a1 + 8);
  v23 = IPC::Encoder::operator new(0x238, v11);
  *v23 = 1519;
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 1) = a3;
  *(v23 + 68) = 0;
  *(v23 + 70) = 0;
  *(v23 + 69) = 0;
  IPC::Encoder::encodeHeader(v23);
  v45 = v23;
  IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v23, *a2);
  v17 = IPC::Connection::sendMessageImpl(v22, &v45, 1, 0);
  v25 = v45;
  v45 = 0;
  if (v25)
  {
    IPC::Encoder::~Encoder(v25, v24);
    bmalloc::api::tzoneFree(v26, v27);
  }

  return v17;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteQueue::OnSubmittedWorkDone,WebKit::WebGPU::RemoteQueueProxy::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0 &>(WebKit::WebGPU::RemoteQueueProxy::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebGPU::RemoteQueueProxy::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0 &,IPC::Decoder)#1},void,WebKit::WebGPU::RemoteQueueProxy::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0 &,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1126758;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteQueue::OnSubmittedWorkDone,WebKit::WebGPU::RemoteQueueProxy::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0 &>(WebKit::WebGPU::RemoteQueueProxy::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebGPU::RemoteQueueProxy::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0 &,IPC::Decoder)#1},void,WebKit::WebGPU::RemoteQueueProxy::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0 &,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1126758;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteQueue::OnSubmittedWorkDone,WebKit::WebGPU::RemoteQueueProxy::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0 &>(WebKit::WebGPU::RemoteQueueProxy::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebGPU::RemoteQueueProxy::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0 &,IPC::Decoder)#1},void,WebKit::WebGPU::RemoteQueueProxy::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0 &,IPC::Decoder>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteQueue::OnSubmittedWorkDone,WebKit::WebGPU::RemoteQueueProxy::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteQueue::OnSubmittedWorkDone &&,WebKit::WebGPU::RemoteQueueProxy::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0 &,std::optional<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1126780;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteQueue::OnSubmittedWorkDone,WebKit::WebGPU::RemoteQueueProxy::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteQueue::OnSubmittedWorkDone &&,WebKit::WebGPU::RemoteQueueProxy::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0 &,std::optional<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1126780;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteQueue::OnSubmittedWorkDone,WebKit::WebGPU::RemoteQueueProxy::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteQueue::OnSubmittedWorkDone &&,WebKit::WebGPU::RemoteQueueProxy::onSubmittedWorkDone(WTF::CompletionHandler<void ()(void)> &&)::$_0 &,std::optional<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteQueue::WriteBuffer,WebKit::WebGPU::RemoteQueueProxy::writeBuffer(WebCore::WebGPU::Buffer const&,unsigned long long,std::span<unsigned char const,18446744073709551615ul>,unsigned long long,std::optional<unsigned long long>)::$_0 &>(WebKit::WebGPU::RemoteQueueProxy::writeBuffer(WebCore::WebGPU::Buffer const&,unsigned long long,std::span<unsigned char const,18446744073709551615ul>,unsigned long long,std::optional<unsigned long long>)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11267A8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteQueue::WriteBuffer,WebKit::WebGPU::RemoteQueueProxy::writeBuffer(WebCore::WebGPU::Buffer const&,unsigned long long,std::span<unsigned char const,18446744073709551615ul>,unsigned long long,std::optional<unsigned long long>)::$_0 &>(WebKit::WebGPU::RemoteQueueProxy::writeBuffer(WebCore::WebGPU::Buffer const&,unsigned long long,std::span<unsigned char const,18446744073709551615ul>,unsigned long long,std::optional<unsigned long long>)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11267A8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteQueue::WriteBuffer,WebKit::WebGPU::RemoteQueueProxy::writeBuffer(WebCore::WebGPU::Buffer const&,unsigned long long,std::span<unsigned char const,18446744073709551615ul>,unsigned long long,std::optional<unsigned long long>)::$_0 &>(WebKit::WebGPU::RemoteQueueProxy::writeBuffer(WebCore::WebGPU::Buffer const&,unsigned long long,std::span<unsigned char const,18446744073709551615ul>,unsigned long long,std::optional<unsigned long long>)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t result, uint64_t a2, IPC::Decoder *a3)
{
  v3 = result;
  if (a3 && *a3)
  {
    result = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    v4 = *(v3 + 8);
    if ((result & 0x100) != 0)
    {
      if (!v4 && *(v3 + 16) == 1)
      {
LABEL_13:
        __break(0xC471u);
        JUMPOUT(0x19E275AA0);
      }
    }

    else if (!v4 && *(v3 + 16) == 1)
    {
      goto LABEL_13;
    }
  }

  else if (!*(result + 8) && *(result + 16) == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E275AD4);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteQueue::WriteBuffer,WebKit::WebGPU::RemoteQueueProxy::writeBuffer(WebCore::WebGPU::Buffer const&,unsigned long long,std::span<unsigned char const,18446744073709551615ul>,unsigned long long,std::optional<unsigned long long>)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteQueue::WriteBuffer &&,WebKit::WebGPU::RemoteQueueProxy::writeBuffer(WebCore::WebGPU::Buffer const&,unsigned long long,std::span<unsigned char const,18446744073709551615ul>,unsigned long long,std::optional<unsigned long long>)::$_0 &,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11267D0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteQueue::WriteBuffer,WebKit::WebGPU::RemoteQueueProxy::writeBuffer(WebCore::WebGPU::Buffer const&,unsigned long long,std::span<unsigned char const,18446744073709551615ul>,unsigned long long,std::optional<unsigned long long>)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteQueue::WriteBuffer &&,WebKit::WebGPU::RemoteQueueProxy::writeBuffer(WebCore::WebGPU::Buffer const&,unsigned long long,std::span<unsigned char const,18446744073709551615ul>,unsigned long long,std::optional<unsigned long long>)::$_0 &,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11267D0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteQueue::WriteBuffer,WebKit::WebGPU::RemoteQueueProxy::writeBuffer(WebCore::WebGPU::Buffer const&,unsigned long long,std::span<unsigned char const,18446744073709551615ul>,unsigned long long,std::optional<unsigned long long>)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteQueue::WriteBuffer &&,WebKit::WebGPU::RemoteQueueProxy::writeBuffer(WebCore::WebGPU::Buffer const&,unsigned long long,std::span<unsigned char const,18446744073709551615ul>,unsigned long long,std::optional<unsigned long long>)::$_0 &,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteQueue::WriteTexture,WebKit::WebGPU::RemoteQueueProxy::writeTexture(WebCore::WebGPU::ImageCopyTexture const&,std::span<unsigned char const,18446744073709551615ul>,WebCore::WebGPU::ImageDataLayout const&,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::WebGPU::Extent3DDict> const&)::$_0 &>(WebKit::WebGPU::RemoteQueueProxy::writeTexture(WebCore::WebGPU::ImageCopyTexture const&,std::span<unsigned char const,18446744073709551615ul>,WebCore::WebGPU::ImageDataLayout const&,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::WebGPU::Extent3DDict> const&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11267F8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteQueue::WriteTexture,WebKit::WebGPU::RemoteQueueProxy::writeTexture(WebCore::WebGPU::ImageCopyTexture const&,std::span<unsigned char const,18446744073709551615ul>,WebCore::WebGPU::ImageDataLayout const&,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::WebGPU::Extent3DDict> const&)::$_0 &>(WebKit::WebGPU::RemoteQueueProxy::writeTexture(WebCore::WebGPU::ImageCopyTexture const&,std::span<unsigned char const,18446744073709551615ul>,WebCore::WebGPU::ImageDataLayout const&,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::WebGPU::Extent3DDict> const&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11267F8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteQueue::WriteTexture,WebKit::WebGPU::RemoteQueueProxy::writeTexture(WebCore::WebGPU::ImageCopyTexture const&,std::span<unsigned char const,18446744073709551615ul>,WebCore::WebGPU::ImageDataLayout const&,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::WebGPU::Extent3DDict> const&)::$_0 &>(WebKit::WebGPU::RemoteQueueProxy::writeTexture(WebCore::WebGPU::ImageCopyTexture const&,std::span<unsigned char const,18446744073709551615ul>,WebCore::WebGPU::ImageDataLayout const&,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::WebGPU::Extent3DDict> const&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t result, uint64_t a2, IPC::Decoder *a3)
{
  v3 = result;
  if (a3 && *a3)
  {
    result = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
    v4 = *(v3 + 8);
    if ((result & 0x100) != 0)
    {
      if (!v4 && *(v3 + 16) == 1)
      {
LABEL_13:
        __break(0xC471u);
        JUMPOUT(0x19E275D90);
      }
    }

    else if (!v4 && *(v3 + 16) == 1)
    {
      goto LABEL_13;
    }
  }

  else if (!*(result + 8) && *(result + 16) == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E275DC4);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Extent3DDict> const&>(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = IPC::Encoder::grow(a1, 1uLL, 1);
  if (v6)
  {
    *v5 = v4;

    return IPC::ArgumentCoder<mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict>,void>::encode<IPC::Encoder,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::WebGPU::Origin3DDict> const&>(a1, a2, v4);
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteQueue::WriteTexture,WebKit::WebGPU::RemoteQueueProxy::writeTexture(WebCore::WebGPU::ImageCopyTexture const&,std::span<unsigned char const,18446744073709551615ul>,WebCore::WebGPU::ImageDataLayout const&,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::WebGPU::Extent3DDict> const&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteQueue::WriteTexture &&,WebKit::WebGPU::RemoteQueueProxy::writeTexture(WebCore::WebGPU::ImageCopyTexture const&,std::span<unsigned char const,18446744073709551615ul>,WebCore::WebGPU::ImageDataLayout const&,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::WebGPU::Extent3DDict> const&)::$_0 &,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1126820;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteQueue::WriteTexture,WebKit::WebGPU::RemoteQueueProxy::writeTexture(WebCore::WebGPU::ImageCopyTexture const&,std::span<unsigned char const,18446744073709551615ul>,WebCore::WebGPU::ImageDataLayout const&,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::WebGPU::Extent3DDict> const&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteQueue::WriteTexture &&,WebKit::WebGPU::RemoteQueueProxy::writeTexture(WebCore::WebGPU::ImageCopyTexture const&,std::span<unsigned char const,18446744073709551615ul>,WebCore::WebGPU::ImageDataLayout const&,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::WebGPU::Extent3DDict> const&)::$_0 &,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1126820;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteQueue::WriteTexture,WebKit::WebGPU::RemoteQueueProxy::writeTexture(WebCore::WebGPU::ImageCopyTexture const&,std::span<unsigned char const,18446744073709551615ul>,WebCore::WebGPU::ImageDataLayout const&,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::WebGPU::Extent3DDict> const&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteQueue::WriteTexture &&,WebKit::WebGPU::RemoteQueueProxy::writeTexture(WebCore::WebGPU::ImageCopyTexture const&,std::span<unsigned char const,18446744073709551615ul>,WebCore::WebGPU::ImageDataLayout const&,mpark::variant<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::WebGPU::Extent3DDict> const&)::$_0 &,WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void *WTF::Detail::CallableWrapper<WebKit::WebGPU::RemoteQueueProxy::getNativeImage(WebCore::VideoFrame &)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1126848;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteVideoFrameObjectHeapProxy,(WTF::DestructionThread)2>::deref(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebGPU::RemoteQueueProxy::getNativeImage(WebCore::VideoFrame &)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1126848;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteVideoFrameObjectHeapProxy,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::WebGPU::RemoteQueueProxy::getNativeImage(WebCore::VideoFrame &)::$_0,void>::call(uint64_t a1)
{
  WebKit::RemoteVideoFrameObjectHeapProxyProcessor::getNativeImage(*(*(a1 + 24) + 8), *(a1 + 16), &v11);
  v3 = *(a1 + 8);
  v4 = v11;
  v11 = 0;
  v5 = *v3;
  *v3 = v4;
  if (v5)
  {
    do
    {
      v6 = v5[1];
      if ((v6 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v5[1], v2);
        goto LABEL_6;
      }

      v7 = v5[1];
      atomic_compare_exchange_strong_explicit(v5 + 1, &v7, (v6 - 2), memory_order_relaxed, memory_order_relaxed);
    }

    while (v7 != v6);
    if (v6 == 3)
    {
      (*(*v5 + 1))(v5);
    }
  }

LABEL_6:
  result = v11;
  v11 = 0;
  if (result)
  {
    do
    {
      v9 = result[1];
      if ((v9 & 1) == 0)
      {
        return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(result[1], v2);
      }

      v10 = result[1];
      atomic_compare_exchange_strong_explicit(result + 1, &v10, (v9 - 2), memory_order_relaxed, memory_order_relaxed);
    }

    while (v10 != v9);
    if (v9 == 3)
    {
      return (*(*result + 1))(result);
    }
  }

  return result;
}

void *IPC::ArgumentCoder<std::optional<int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<int> const&>(void *result, uint64_t a2)
{
  v3 = result[1];
  if ((*(a2 + 4) & 1) == 0)
  {
    if (!v3)
    {
      *result = 0;
      result[1] = 0;
      return result;
    }

    **result = 0;
    v5 = result[1];
    if (v5)
    {
      ++*result;
      result[1] = v5 - 1;
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
  if (*(a2 + 4))
  {

    return IPC::StreamConnectionEncoder::operator<<<int const&>(result, a2);
  }

  else
  {
    v6 = std::__throw_bad_optional_access[abi:sn200100]();
    return WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteShaderModule::CompilationInfo,WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0 &>(WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0,IPC::Connection*)#1},void,WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0,IPC::Connection*>::~CallableWrapper(v6);
  }
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteShaderModule::CompilationInfo,WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0 &>(WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0,IPC::Connection*)#1},void,WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0,IPC::Connection*>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1126870;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteShaderModule::CompilationInfo,WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0 &>(WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0,IPC::Connection*)#1},void,WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0,IPC::Connection*>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1126870;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::RemoteShaderModule::CompilationInfo,WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0 &>(WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0 &,WTF::ThreadLikeAssertion)::{lambda(WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0,IPC::Connection*)#1},void,WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0,IPC::Connection*>::call(uint64_t a1, WTF::StringImpl *a2, WTF::StringImpl **a3, __n128 a4)
{
  if (a3 && (a2 = *a3) != 0)
  {
    v6 = a3[1];
    v7 = ((a3[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v6 < v7 - a2 || v6 - (v7 - a2) <= 7)
    {
      *a3 = 0;
      a3[1] = 0;
      v40 = a3[3];
      if (v40)
      {
        if (v6)
        {
          (*(*v40 + 16))(v40);
          a2 = *a3;
          v6 = a3[1];
          goto LABEL_61;
        }
      }

      else
      {
        v6 = 0;
      }

      a2 = 0;
LABEL_61:
      *a3 = 0;
      a3[1] = 0;
      v41 = a3[3];
      if (v41 && v6)
      {
        (*(*v41 + 16))(v41, a2);
      }

LABEL_49:
      v33 = *a3;
      v34 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v35 = a3[3];
      if (v35)
      {
        v36 = v34 == 0;
      }

      else
      {
        v36 = 1;
      }

      if (!v36)
      {
        (*(*v35 + 16))(v35, v33);
      }

      v37 = *a3;
      v38 = a3[1];
      *a3 = 0;
      a3[1] = 0;
      v39 = a3[3];
      if (v39)
      {
        if (v38)
        {
          (*(*v39 + 16))(v39, v37);
        }
      }

      return IPC::Connection::cancelReply<Messages::RemoteShaderModule::CompilationInfo,WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0>((a1 + 8), v37, a4);
    }

    a3[2] = (v7 + 8);
    if (!v7)
    {
      goto LABEL_61;
    }

    v9 = *v7;
    v53 = 0uLL;
    if (v9 >= 0x5555)
    {
      v24 = 0;
      LODWORD(v25) = 0;
      do
      {
        result = IPC::Decoder::decode<WebKit::WebGPU::CompilationMessage>(&v48, a3);
        if (v52 != 1)
        {
          goto LABEL_48;
        }

        if (v25 == v53.n128_u32[2])
        {
          result = WTF::Vector<WebKit::WebGPU::CompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v53, v25 + 1, &v48);
          LODWORD(v25) = v53.n128_u32[3];
          v24 = v53.n128_u64[0];
          v26 = (v53.n128_u64[0] + 48 * v53.n128_u32[3]);
          v27 = *result;
          *result = 0;
          *v26 = v27;
          v28 = *(result + 8);
          v29 = *(result + 24);
          v30 = *(result + 40);
        }

        else
        {
          v26 = v24 + 48 * v25;
          v31 = v48;
          v48 = 0;
          *v26 = v31;
          v28 = v49;
          v29 = v50;
          v30 = v51;
        }

        *(v26 + 5) = v30;
        *(v26 + 24) = v29;
        *(v26 + 8) = v28;
        v25 = (v25 + 1);
        v53.n128_u32[3] = v25;
        if (v52)
        {
          result = v48;
          v48 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, a2);
            }
          }
        }

        --v9;
      }

      while (v9);
      v19 = v53.n128_u32[2];
      if (v53.n128_u32[2] > v25)
      {
        if (!v25)
        {
          goto LABEL_45;
        }

        if (v25 >= 0x5555556)
        {
          __break(0xC471u);
          return result;
        }

        v32 = WTF::fastMalloc((48 * v25));
        v53.n128_u32[2] = 48 * v25 / 0x30u;
        v53.n128_u64[0] = v32;
        if (v32 == v24 || (WTF::VectorTypeOperations<WebKit::WebGPU::CompilationMessage>::move(v24, (v24 + 48 * v25), v32), v53.n128_u64[0] == v24))
        {
LABEL_45:
          v53.n128_u64[0] = 0;
          v53.n128_u32[2] = 0;
        }

        WTF::fastFree(v24, a2);
        v19 = v53.n128_u32[2];
        LODWORD(v25) = v53.n128_u32[3];
      }

      v10 = v53.n128_u64[0];
      v53 = 0uLL;
      v11 = v25;
      goto LABEL_27;
    }

    if (v9)
    {
      v10 = WTF::fastMalloc((48 * v9));
      v11 = 0;
      v53.n128_u32[2] = 48 * v9 / 0x30u;
      v53.n128_u64[0] = v10;
      while (1)
      {
        IPC::Decoder::decode<WebKit::WebGPU::CompilationMessage>(&v48, a3);
        if (v52 != 1)
        {
          break;
        }

        if (v11 == v53.n128_u32[2])
        {
          v12 = WTF::Vector<WebKit::WebGPU::CompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v53, v11 + 1, &v48);
          v11 = v53.n128_u32[3];
          v10 = v53.n128_u64[0];
          v13 = v53.n128_u64[0] + 48 * v53.n128_u32[3];
          v14 = *v12;
          *v12 = 0;
          *v13 = v14;
          a4 = *(v12 + 8);
          v15 = *(v12 + 24);
          v16 = *(v12 + 40);
        }

        else
        {
          v13 = v10 + 48 * v11;
          v17 = v48;
          v48 = 0;
          *v13 = v17;
          a4 = v49;
          v15 = v50;
          v16 = v51;
        }

        *(v13 + 40) = v16;
        *(v13 + 24) = v15;
        *(v13 + 8) = a4;
        v53.n128_u32[3] = ++v11;
        if (v52)
        {
          v18 = v48;
          v48 = 0;
          if (v18)
          {
            if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, a2);
            }
          }
        }

        if (!--v9)
        {
          v19 = v53.n128_u32[2];
          goto LABEL_26;
        }
      }

LABEL_48:
      WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v53, a2);
      goto LABEL_49;
    }

    v11 = 0;
    v19 = 0;
    v10 = 0;
LABEL_26:
    a4.n128_u64[0] = 0;
    v53 = a4;
LABEL_27:
    v47 = 1;
    WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v53, a2);
    v46[0] = 0;
    v46[1] = 0;
    v42 = v10;
    v43 = v19;
    v44 = v11;
    v45 = 1;
    WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v46, v22);
    result = std::apply[abi:sn200100]<WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0,std::tuple<WTF::Vector<WebKit::WebGPU::CompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>((a1 + 8), &v42);
    if (v45)
    {
      return WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, v23);
    }
  }

  else
  {
    v20 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::RemoteShaderModule::CompilationInfo,WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0>(v20, a2, a4);
  }

  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::RemoteShaderModule::CompilationInfo,WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0>(uint64_t *a1, void *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v6 = a3;
  v7 = a3;
  WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, a2);
  std::apply[abi:sn200100]<WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0,std::tuple<WTF::Vector<WebKit::WebGPU::CompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a1, &v6);
  return WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v6, v4);
}

uint64_t std::apply[abi:sn200100]<WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0,std::tuple<WTF::Vector<WebKit::WebGPU::CompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v24 = *a2;
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  *a2 = 0;
  a2[1] = 0;
  v25 = v4;
  v26 = v5;
  if (v5)
  {
    if (v5 >> 29)
    {
      __break(0xC471u);
      goto LABEL_17;
    }

    v6 = WTF::fastMalloc((8 * v5));
    v7 = 0;
    v8 = (v3 + 16);
    do
    {
      v9 = *(v8 - 2);
      if (v9)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      }

      v10 = *(v8 - 8);
      v12 = *v8;
      v11 = v8[1];
      v8 += 3;
      v22 = v11;
      v23 = v12;
      v13 = WTF::fastMalloc(0x38);
      *v13 = 1;
      *(v13 + 8) = v9;
      *(v13 + 16) = v10;
      *(v13 + 40) = v22;
      *(v13 + 24) = v23;
      *(v6 + v7) = v13;
      v7 += 8;
    }

    while (8 * v5 != v7);
  }

  else
  {
    v6 = 0;
  }

  v14 = WTF::fastMalloc(0x18);
  *&v15 = 0;
  *v14 = 1;
  v28 = v15;
  *(v14 + 8) = v6;
  *(v14 + 16) = v5;
  *(v14 + 20) = v5;
  v27 = v14;
  v16 = *a1;
  *a1 = 0;
  (*(*v16 + 16))(v16, &v27);
  (*(*v16 + 8))(v16);
  v18 = v27;
  v27 = 0;
  if (v18)
  {
    if (*v18 != 1)
    {
      --*v18;
      goto LABEL_12;
    }

    WTF::Vector<WTF::Ref<WebCore::WebGPU::CompilationMessage,WTF::RawPtrTraits<WebCore::WebGPU::CompilationMessage>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationMessage>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18 + 8, v17);
    if (*v18 == 1)
    {
      WTF::fastFree(v18, v21);
      goto LABEL_12;
    }

    __break(0xC471u);
LABEL_17:
    JUMPOUT(0x19E276A70);
  }

LABEL_12:
  WTF::Vector<WTF::Ref<WebCore::WebGPU::CompilationMessage,WTF::RawPtrTraits<WebCore::WebGPU::CompilationMessage>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationMessage>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v17);
  return WTF::Vector<WebCore::TextRecognitionWordData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, v19);
}

WTF::StringImpl *IPC::Decoder::decode<WebKit::WebGPU::CompilationMessage>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<WebKit::WebGPU::CompilationMessage,void>::decode(a2, a1);
  if ((*(a1 + 48) & 1) == 0)
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

unint64_t WTF::Vector<WebKit::WebGPU::CompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 48 * a1[3] <= a3)
  {
    v10 = a1[2];
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<WebKit::WebGPU::CompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = a1[2];
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<WebKit::WebGPU::CompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebKit::WebGPU::CompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x5555556)
    {
      __break(0xC471u);
      JUMPOUT(0x19E276CA8);
    }

    v2 = result;
    v3 = *result;
    v4 = (*result + 48 * *(result + 3));
    v5 = 48 * a2;
    v6 = WTF::fastMalloc((48 * a2));
    *(v2 + 2) = v5 / 0x30;
    *v2 = v6;
    result = WTF::VectorTypeOperations<WebKit::WebGPU::CompilationMessage>::move(v3, v4, v6);
    if (v3)
    {
      if (*v2 == v3)
      {
        *v2 = 0;
        *(v2 + 2) = 0;
      }

      return WTF::fastFree(v3, v7);
    }
  }

  return result;
}

WTF::StringImpl *WTF::VectorTypeOperations<WebKit::WebGPU::CompilationMessage>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *a3 = v6;
      v7 = *(v5 + 8);
      v8 = *(v5 + 24);
      *(a3 + 40) = *(v5 + 5);
      *(a3 + 24) = v8;
      *(a3 + 8) = v7;
      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      a3 += 48;
      v5 = (v5 + 48);
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WTF::Ref<WebCore::WebGPU::CompilationMessage,WTF::RawPtrTraits<WebCore::WebGPU::CompilationMessage>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationMessage>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    for (i = 8 * v3; i; i -= 8)
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        if (*v6 == 1)
        {
          v7 = *(v6 + 1);
          *(v6 + 1) = 0;
          if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, a2);
          }

          if (*v6 != 1)
          {
            result = 191;
            __break(0xC471u);
            return result;
          }

          WTF::fastFree(v6, a2);
        }

        else
        {
          --*v6;
        }
      }

      v4 = (v4 + 8);
    }
  }

  v8 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v8, a2);
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WebKit::WebGPUIdentifierType,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteShaderModule::CompilationInfo,WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteShaderModule::CompilationInfo &&,WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0 &,std::__1<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1126898;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WebKit::WebGPUIdentifierType,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteShaderModule::CompilationInfo,WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteShaderModule::CompilationInfo &&,WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0 &,std::__1<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1126898;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<std::optional<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WebKit::WebGPUIdentifierType,unsigned long long>> IPC::StreamClientConnection::sendWithAsyncReply<Messages::RemoteShaderModule::CompilationInfo,WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0 &,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(Messages::RemoteShaderModule::CompilationInfo &&,WebKit::WebGPU::RemoteShaderModuleProxy::compilationInfo(WTF::CompletionHandler<void ()(WTF::Ref<WebCore::WebGPU::CompilationInfo,WTF::RawPtrTraits<WebCore::WebGPU::CompilationInfo>,WTF::DefaultRefDerefTraits<WebCore::WebGPU::CompilationInfo>> &&)> &&)::$_0 &,std::__1<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1, 0, 0);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebKit::WebGPU::RemoteTextureProxy::~RemoteTextureProxy(WebKit::WebGPU::RemoteTextureProxy *this)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v33, v5);
    if (v35 != 1)
    {
      goto LABEL_16;
    }

    v20 = v34;
    if (v34 <= 1)
    {
LABEL_63:
      __break(0xC471u);
      JUMPOUT(0x19E27738CLL);
    }

    v21 = v33;
    *v33 = 3198;
    v22 = v21 + 1;
    if (v20 - 2 < (-v22 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v23 = -v22 & 7;
    *(v22 + v23) = v3;
    if (v23 != 7)
    {
      v23 = 6;
    }

    v24 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v26 = *(v2 + 72);
    v25 = *(v2 + 80);
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

    *(v2 + 88) = v28;
    if (*(v25 + 8) <= 0xFFuLL)
    {
      goto LABEL_62;
    }

    v29 = atomic_exchange((*(v25 + 16) + 128), v28);
    v30 = *(v2 + 124);
    if (v29 == 0x80000000 || v30 != 0)
    {
      v32 = v30 + 1;
      *(v2 + 124) = v32;
      if (v32 >= *(v2 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v33, v5);
  if (v35 != 1)
  {
    goto LABEL_16;
  }

  if (v34 <= 1)
  {
    goto LABEL_63;
  }

  *v33 = 1669;
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
    goto LABEL_62;
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

  if (*(this + 104) == 1)
  {
    v13 = *(this + 8);
    *(this + 8) = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v7);
      }
    }
  }

  v14 = *(this + 7);
  *(this + 7) = 0;
  if (v14)
  {
    if (v14[4] == 1)
    {
      (*(*v14 + 8))(v14, v8);
    }

    else
    {
      --v14[4];
    }
  }

  v15 = *(this + 6);
  *(this + 6) = 0;
  if (v15 && atomic_fetch_add(v15 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v15 + 7);
    (*(*v15 + 24))(v15, v8);
  }

  v16 = *(this + 5);
  *(this + 5) = 0;
  if (v16)
  {
    if (v16[2] == 1)
    {
      (*(*v16 + 8))(v16, v8);
    }

    else
    {
      --v16[2];
    }
  }

  *this = &unk_1F1126C78;
  v17 = *(this + 3);
  *(this + 3) = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v7);
  }

  if (*(this + 4) != 1)
  {
    __break(0xC471u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v18 = *(this + 1);
  if (v18)
  {
    *(v18 + 8) = 0;
    v19 = *(this + 1);
    *(this + 1) = 0;
    if (v19)
    {
      if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v19);
        WTF::fastFree(v19, v7);
      }
    }
  }
}

{
  WebKit::WebGPU::RemoteTextureProxy::~RemoteTextureProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::WebGPU::RemoteTextureProxy::createView(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a1 + 112) == 1)
  {
    v11 = *(a1 + 56);
    if (v11)
    {
      if (*(a2 + 40))
      {
        if (*(a1 + 104))
        {
          v12 = *(a2 + 9);
          v13 = *(a1 + 73);
          if (v12 == 1 && *(a1 + 73))
          {
            v12 = *(a2 + 8);
            v13 = *(a1 + 72);
          }

          if (v12 == v13)
          {
            v14 = *(a2 + 11);
            v15 = *(a1 + 75);
            if (v14 == 1 && *(a1 + 75))
            {
              v14 = *(a2 + 10);
              v15 = *(a1 + 74);
            }

            if (v14 == v15 && *(a2 + 12) == *(a1 + 76) && *(a2 + 16) == *(a1 + 80))
            {
              v16 = *(a2 + 24);
              v17 = *(a1 + 88);
              if (v16 == 1 && *(a1 + 88))
              {
                v16 = *(a2 + 20);
                v17 = *(a1 + 84);
              }

              if (v16 == v17 && *(a2 + 28) == *(a1 + 92))
              {
                v18 = *(a2 + 36);
                v19 = *(a1 + 100);
                if (v18 == 1 && *(a1 + 100))
                {
                  v18 = *(a2 + 32);
                  v19 = *(a1 + 96);
                }

                if (v18 == v19)
                {
                  goto LABEL_24;
                }
              }
            }
          }
        }
      }

      else if ((*(a1 + 104) & 1) == 0)
      {
LABEL_24:
        ++*(v11 + 16);
        *a3 = v11;
        return;
      }
    }
  }

  v20 = *(a1 + 40);
  ++v20[2];
  if (*(a2 + 40) != 1)
  {
    if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
    {
      WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      __break(1u);
      goto LABEL_128;
    }

    goto LABEL_130;
  }

  v21 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
  }

  v5 = (a2 + 8);
  v22 = *(a2 + 8);
  v23 = *(a2 + 12);
  v24 = *(a2 + 16);
  v25 = *(a2 + 20);
  v81[16] = *(a2 + 24);
  v81[28] = *(a2 + 36);
  v80 = v21;
  v26 = *(a2 + 28);
  v27 = *(a2 + 32);
  *v81 = v22;
  v81[4] = v23;
  *&v81[8] = v24;
  *&v81[12] = v25;
  *&v81[20] = v26;
  *&v81[24] = v27;
  v82 = 1;
  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected)
  {
LABEL_130:
    __break(0xC471u);
    goto LABEL_135;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v3 = IdentifierInternal;
  if (v80)
  {
    atomic_fetch_add_explicit(v80, 2u, memory_order_relaxed);
  }

  v77 = v80;
  v78[0] = *v81;
  *(v78 + 13) = *&v81[13];
  v79 = 1;
  v4 = *(*(a1 + 48) + 80);
  atomic_fetch_add(v4, 1u);
  v6 = *(a1 + 32);
  v29 = *(v4 + 128);
  v7 = INFINITY;
  if (fabs(v29) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v7 = v29 + v30;
  }

  if (*(v4 + 64) != v6)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, &v86, v7);
    if (v88 == 1)
    {
      v44 = v87;
      if (v87 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E277C4CLL);
      }

      v45 = v86;
      *v86 = 3198;
      v46 = (v45 + 2);
      if (v44 - 2 >= (-v46 & 7 | 8uLL))
      {
        v47 = -v46 & 7;
        *(v46 + v47) = v6;
        v48 = 6;
        if (v47 > 6)
        {
          v48 = v47;
        }

        v49 = v48 + 10;
        v50 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v51 = *(v4 + 72);
        if (v50 + 16 < v51)
        {
          goto LABEL_64;
        }

        goto LABEL_129;
      }
    }

LABEL_71:
    v43 = 0;
    goto LABEL_72;
  }

  while (1)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, &v83, v7);
    if (v85 != 1)
    {
      goto LABEL_71;
    }

    v32 = v83;
    v33 = v84;
    v88 = v84;
    if (v84 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E277C2CLL);
    }

    *v83 = 1667;
    if (v79)
    {
      if (v33 == 2)
      {
        v86 = 0;
        v87 = 0;
      }

      else
      {
        *(v32 + 2) = 1;
        v86 = (v32 + 3);
        v87 = v33 - 3;
        if ((v79 & 1) == 0)
        {
          goto LABEL_128;
        }
      }

      IPC::ArgumentCoder<WebKit::WebGPU::TextureViewDescriptor,void>::encode(&v86, &v77);
      v34 = v86;
      v35 = v87;
    }

    else
    {
      if (v33 == 2)
      {
        goto LABEL_107;
      }

      *(v32 + 2) = 0;
      v35 = v33 - 3;
      v34 = (v32 + 3);
      v86 = v34;
      v87 = v35;
    }

    v36 = -v34 & 7 | 8;
    if (v35 >= v36)
    {
      *(v34 + (-v34 & 7)) = v3;
      v37 = v87 - v36;
      if (v87 >= v36)
      {
        v86 = (v86 + v36);
        v87 -= v36;
        v38 = v88 - v37;
        if (v38 <= 0x10)
        {
          v38 = 16;
        }

        v39 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v40 = *(v4 + 72);
        if (v39 + 16 >= v40)
        {
          v39 = 0;
        }

        v41 = v39 + v38;
        if (v40 <= v41)
        {
          v41 = 0;
        }

        *(v4 + 88) = v41;
        v42 = *(v4 + 80);
        if (*(v42 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v42 + 16) + 128), v41) == 0x80000000 || *(v4 + 124))
          {
            if (*(v4 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v4 + 100));
            }

            *(v4 + 124) = 0;
          }

          v43 = 1;
          goto LABEL_72;
        }
      }

      goto LABEL_134;
    }

LABEL_107:
    v75 = v5;
    v76 = v6;
    if ((v85 & 1) == 0)
    {
      goto LABEL_134;
    }

    if (v84 <= 1)
    {
      __break(0xC471u);
LABEL_134:
      __break(1u);
LABEL_135:
      JUMPOUT(0x19E277C0CLL);
    }

    *v83 = 3197;
    v66 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v67 = *(v4 + 72);
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

    *(v4 + 88) = v69;
    v70 = *(v4 + 80);
    if (*(v70 + 8) <= 0xFFuLL)
    {
      goto LABEL_134;
    }

    atomic_exchange((*(v70 + 16) + 128), v69);
    *(v4 + 124) = 0;
    v5 = *(v4 + 8);
    v6 = IPC::Encoder::operator new(0x238, v31);
    *v6 = 1667;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 1) = v76;
    *(v6 + 68) = 0;
    *(v6 + 70) = 0;
    *(v6 + 69) = 0;
    IPC::Encoder::encodeHeader(v6);
    v86 = v6;
    if ((v79 & 1) == 0)
    {
      break;
    }

    v89 = 1;
    IPC::Encoder::operator<<<BOOL>(v6, &v89);
    if (v79)
    {
      IPC::ArgumentCoder<WebKit::WebGPU::TextureViewDescriptor,void>::encode(v6, &v77);
      goto LABEL_120;
    }

LABEL_128:
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_129:
    v50 = 0;
LABEL_64:
    v52 = v49 + v50;
    if (v51 <= v52)
    {
      v52 = 0;
    }

    *(v4 + 88) = v52;
    v53 = *(v4 + 80);
    if (*(v53 + 8) <= 0xFFuLL)
    {
      goto LABEL_134;
    }

    v54 = atomic_exchange((*(v53 + 16) + 128), v52);
    v55 = *(v4 + 124);
    if (v54 == 0x80000000 || v55)
    {
      v56 = v55 + 1;
      *(v4 + 124) = v56;
      if (v56 >= *(v4 + 120))
      {
        if (*(v4 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v4 + 100));
        }

        *(v4 + 124) = 0;
      }
    }

    *(v4 + 64) = v6;
  }

  v89 = 0;
  IPC::Encoder::operator<<<BOOL>(v6, &v89);
LABEL_120:
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, v3);
  v71 = IPC::Connection::sendMessageImpl(v5, &v86, 1, 0);
  v72 = v86;
  v86 = 0;
  if (v72)
  {
    IPC::Encoder::~Encoder(v72, v31);
    bmalloc::api::tzoneFree(v73, v74);
  }

  v43 = v71 == 0;
  v5 = v75;
LABEL_72:
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    IPC::StreamClientConnection::operator delete(v4);
  }

  if (v79 == 1)
  {
    v57 = v77;
    v77 = 0;
    if (v57)
    {
      if (atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v57, v31);
        if (!v43)
        {
          goto LABEL_96;
        }

LABEL_78:
        if (WebKit::WebGPU::RemoteTextureViewProxy::s_heapRef)
        {
          NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteTextureViewProxy::s_heapRef, v31);
        }

        else
        {
          NonCompact = WebKit::WebGPU::RemoteTextureViewProxy::operatorNewSlow(0);
        }

        v59 = NonCompact;
        *(NonCompact + 16) = 1;
        *(NonCompact + 24) = 0;
        *(NonCompact + 32) = v3;
        *NonCompact = &unk_1F1126900;
        *(NonCompact + 8) = 0;
        ++v20[2];
        *(NonCompact + 40) = v20;
        v60 = *(a1 + 48);
        atomic_fetch_add((v60 + 28), 1u);
        *(NonCompact + 48) = v60;
        if (v82)
        {
          WebCore::WebGPU::TextureView::setLabel(NonCompact, &v80);
          if (*(a1 + 112) == 1)
          {
            v61 = *(a1 + 56);
            *(a1 + 56) = v59;
            if (v61)
            {
              if (v61[4] == 1)
              {
                (*(*v61 + 8))(v61);
              }

              else
              {
                --v61[4];
              }
            }

            if (*(a1 + 104) == *(a2 + 40))
            {
              if (*(a1 + 104))
              {
                WTF::String::operator=((a1 + 64), a2);
                v62 = *(v5 + 13);
                *(a1 + 72) = *v5;
                *(a1 + 85) = v62;
              }
            }

            else if (*(a1 + 104))
            {
              std::__optional_destruct_base<WebCore::WebGPU::TextureViewDescriptor,false>::reset[abi:sn200100]((a1 + 64), v31);
            }

            else
            {
              v63 = *a2;
              if (*a2)
              {
                atomic_fetch_add_explicit(v63, 2u, memory_order_relaxed);
              }

              *(a1 + 64) = v63;
              v64 = *v5;
              *(a1 + 85) = *(v5 + 13);
              *(a1 + 72) = v64;
              *(a1 + 104) = 1;
            }

            v59 = *(a1 + 56);
            if (v59)
            {
              ++*(v59 + 16);
            }
          }

          goto LABEL_97;
        }

        goto LABEL_134;
      }
    }
  }

  if (v43)
  {
    goto LABEL_78;
  }

LABEL_96:
  v59 = 0;
LABEL_97:
  *a3 = v59;
  if (v20[2] == 1)
  {
    (*(*v20 + 8))(v20);
  }

  else
  {
    --v20[2];
  }

  if (v82 == 1)
  {
    v65 = v80;
    v80 = 0;
    if (v65)
    {
      if (atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v65, v31);
      }
    }
  }
}

void WebKit::WebGPU::RemoteTextureProxy::destroy(WebKit::WebGPU::RemoteTextureProxy *this)
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
      *v23 = 1668;
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

uint64_t WebKit::WebGPU::RemoteTextureProxy::send<Messages::RemoteTexture::Undestroy>(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 48) + 80);
  atomic_fetch_add(v2, 1u);
  v3 = IPC::StreamClientConnection::send<Messages::RemoteTexture::Undestroy,WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 32));
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    IPC::StreamClientConnection::operator delete(v2);
  }

  return v3;
}

void WebKit::WebGPU::RemoteTextureProxy::setLabelInternal(WebKit::WebGPU::RemoteTextureProxy *this, const WTF::String *a2)
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
      JUMPOUT(0x19E2782C4);
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

  *v39 = 1670;
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
  *v21 = 1670;
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

void WebKit::WebGPU::RemoteTextureViewProxy::~RemoteTextureViewProxy(WebKit::WebGPU::RemoteTextureViewProxy *this)
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
      JUMPOUT(0x19E278698);
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

  *v31 = 1665;
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

  *this = &unk_1F1126CB8;
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
  WebKit::WebGPU::RemoteTextureViewProxy::~RemoteTextureViewProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::WebGPU::RemoteTextureViewProxy::setLabelInternal(WebKit::WebGPU::RemoteTextureViewProxy *this, const WTF::String *a2)
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
      JUMPOUT(0x19E278A48);
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

  *v39 = 1666;
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
  *v21 = 1666;
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

void WebKit::WebGPU::RemoteXRBindingProxy::~RemoteXRBindingProxy(WebKit::WebGPU::RemoteXRBindingProxy *this)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v30, v5);
    if (v32 != 1)
    {
      goto LABEL_16;
    }

    v17 = v31;
    if (v31 <= 1)
    {
LABEL_53:
      __break(0xC471u);
      JUMPOUT(0x19E278DDCLL);
    }

    v18 = v30;
    *v30 = 3198;
    v19 = v18 + 1;
    if (v17 - 2 < (-v19 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v20 = -v19 & 7;
    *(v19 + v20) = v3;
    if (v20 != 7)
    {
      v20 = 6;
    }

    v21 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v23 = *(v2 + 72);
    v22 = *(v2 + 80);
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

    *(v2 + 88) = v25;
    if (*(v22 + 8) <= 0xFFuLL)
    {
      goto LABEL_52;
    }

    v26 = atomic_exchange((*(v22 + 16) + 128), v25);
    v27 = *(v2 + 124);
    if (v26 == 0x80000000 || v27 != 0)
    {
      v29 = v27 + 1;
      *(v2 + 124) = v29;
      if (v29 >= *(v2 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v30, v5);
  if (v32 != 1)
  {
    goto LABEL_16;
  }

  if (v31 <= 1)
  {
    goto LABEL_53;
  }

  *v30 = 1705;
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
    goto LABEL_52;
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

  if (*(this + 4) != 1)
  {
    __break(0xC471u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v15 = *(this + 1);
  if (v15)
  {
    *(v15 + 8) = 0;
    v16 = *(this + 1);
    *(this + 1) = 0;
    if (v16)
    {
      if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v16);
        WTF::fastFree(v16, v7);
      }
    }
  }
}

{
  WebKit::WebGPU::RemoteXRBindingProxy::~RemoteXRBindingProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::WebGPU::RemoteXRBindingProxy::createProjectionLayer@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_74;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v7 = IdentifierInternal;
  v8 = *(a2 + 8);
  v9 = *(*(*(a1[5] + 64) + 72) + 80);
  atomic_fetch_add(v9, 1u);
  v10 = a1[3];
  v11 = *(v9 + 128);
  v12 = INFINITY;
  if (fabs(v11) != INFINITY)
  {
    WTF::ApproximateTime::now(IdentifierInternal);
    v12 = v11 + v13;
  }

  if (*(v9 + 64) != v10)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v57, v12);
    if (v59 != 1)
    {
      goto LABEL_43;
    }

    v25 = v58;
    if (v58 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E27938CLL);
    }

    v26 = v57;
    *v57 = 3198;
    v27 = v26 + 2;
    if (v25 - 2 < (-v27 & 7 | 8uLL))
    {
      goto LABEL_43;
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v54, v12);
  if (v56 != 1)
  {
LABEL_43:
    v24 = 0;
    goto LABEL_44;
  }

  v15 = v54;
  v16 = v55;
  v59 = v55;
  if (v55 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E279364);
  }

  *v54 = 1704;
  if (v16 == 2)
  {
    v57 = 0;
    v58 = 0;
  }

  else
  {
    *(v15 + 2) = *a2;
    v57 = (v15 + 3);
    v58 = v16 - 3;
  }

  IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::PlatformVideoColorPrimaries> const&>(&v57, (a2 + 1));
  if (v58)
  {
    *v57 = *(a2 + 3);
    if (!v58)
    {
      goto LABEL_73;
    }

    v57 = (v57 + 1);
    --v58;
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  v60 = v8;
  IPC::StreamConnectionEncoder::encodeSpan<double const,18446744073709551615ul>(&v57, &v60, 1);
  v17 = -v57 & 7 | 8;
  if (v58 >= v17)
  {
    *(v57 + (-v57 & 7)) = v7;
    v18 = v58 - v17;
    if (v58 >= v17)
    {
      v57 = (v57 + v17);
      v58 -= v17;
      v19 = v59 - v18;
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
      if (*(v23 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v23 + 16) + 128), v22) == 0x80000000 || *(v9 + 124))
        {
          if (*(v9 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v9 + 100));
          }

          *(v9 + 124) = 0;
        }

        v24 = 1;
        goto LABEL_44;
      }
    }

    goto LABEL_73;
  }

  v53 = v10;
  if ((v56 & 1) == 0)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    JUMPOUT(0x19E279344);
  }

  if (v55 <= 1)
  {
    __break(0xC471u);
    goto LABEL_73;
  }

  *v54 = 3197;
  v42 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v43 = *(v9 + 72);
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

  *(v9 + 88) = v45;
  v46 = *(v9 + 80);
  if (*(v46 + 8) <= 0xFFuLL)
  {
    goto LABEL_73;
  }

  atomic_exchange((*(v46 + 16) + 128), v45);
  *(v9 + 124) = 0;
  v47 = *(v9 + 8);
  v48 = IPC::Encoder::operator new(0x238, v14);
  *v48 = 1704;
  *(v48 + 2) = 0;
  *(v48 + 3) = 0;
  *(v48 + 1) = v53;
  *(v48 + 68) = 0;
  *(v48 + 70) = 0;
  *(v48 + 69) = 0;
  IPC::Encoder::encodeHeader(v48);
  v57 = v48;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v48, *a2);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(v48, (a2 + 1));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v48, *(a2 + 3));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(v48, v8);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v48, v7);
  v49 = IPC::Connection::sendMessageImpl(v47, &v57, 1, 0);
  v50 = v57;
  v57 = 0;
  if (v50)
  {
    IPC::Encoder::~Encoder(v50, v14);
    bmalloc::api::tzoneFree(v51, v52);
  }

  v24 = v49 == 0;
LABEL_44:
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    IPC::StreamClientConnection::operator delete(v9);
    if (v24)
    {
      goto LABEL_46;
    }

LABEL_50:
    result = 0;
    goto LABEL_51;
  }

  if (!v24)
  {
    goto LABEL_50;
  }

LABEL_46:
  v39 = *(*(a1[5] + 64) + 72);
  atomic_fetch_add((v39 + 28), 1u);
  v40 = a1[4];
  if (WebKit::WebGPU::RemoteXRProjectionLayerProxy::s_heapRef)
  {
    result = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteXRProjectionLayerProxy::s_heapRef, v14);
  }

  else
  {
    result = WebKit::WebGPU::RemoteXRProjectionLayerProxy::operatorNewSlow(0);
  }

  *(result + 16) = 1;
  *result = &unk_1F1126968;
  *(result + 8) = 0;
  *(result + 24) = v7;
  ++*(v40 + 8);
  *(result + 32) = v40;
  *(result + 40) = v39;
LABEL_51:
  *a3 = result;
  return result;
}

uint64_t WebKit::WebGPU::RemoteXRBindingProxy::getViewSubImage@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    __break(0xC471u);
    goto LABEL_69;
  }

  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v7 = (*(*a2 + 96))(a2);
  if ((v7 & 1) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E27989CLL);
  }

  v8 = a2[3];
  v9 = *(*(*(a1[5] + 64) + 72) + 80);
  atomic_fetch_add(v9, 1u);
  v10 = a1[3];
  v11 = *(v9 + 128);
  v12 = INFINITY;
  if (fabs(v11) != INFINITY)
  {
    WTF::ApproximateTime::now(v7);
    v12 = v11 + v13;
  }

  if (*(v9 + 64) != v10)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v9 + 72, &v57, v12);
    if (v59 != 1)
    {
      goto LABEL_39;
    }

    v28 = v58;
    if (v58 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E2798E4);
    }

    v29 = v57;
    *v57 = 3198;
    v30 = v29 + 1;
    if (v28 - 2 < (-v30 & 7 | 8uLL))
    {
      goto LABEL_39;
    }

    v31 = -v30 & 7;
    *(v30 + v31) = v10;
    v32 = 6;
    if (v31 > 6)
    {
      v32 = v31;
    }

    v33 = v32 + 10;
    v34 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v35 = *(v9 + 72);
    if (v34 + 16 >= v35)
    {
      v34 = 0;
    }

    v36 = v33 + v34;
    if (v35 <= v36)
    {
      v36 = 0;
    }

    *(v9 + 88) = v36;
    v37 = *(v9 + 80);
    if (*(v37 + 8) <= 0xFFuLL)
    {
      goto LABEL_68;
    }

    v38 = atomic_exchange((*(v37 + 16) + 128), v36);
    v39 = *(v9 + 124);
    if (v38 == 0x80000000 || v39 != 0)
    {
      v41 = v39 + 1;
      *(v9 + 124) = v41;
      if (v41 >= *(v9 + 120))
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
LABEL_39:
    v27 = 0;
    goto LABEL_40;
  }

  v15 = v58;
  if (v58 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E2798BCLL);
  }

  v16 = v57;
  *v57 = 1706;
  v17 = v16 + 1;
  v18 = -v17 & 7 | 8;
  v19 = v15 - 2 - v18;
  if (v15 - 2 >= v18)
  {
    *(v17 + (-v17 & 7)) = v8;
    v20 = v17 + v18;
    v21 = -v20 & 7 | 8;
    if (v19 >= v21)
    {
      *(v20 + (-v20 & 7)) = IdentifierInternal;
      v22 = v15 - v19 + v21;
      if (v22 <= 0x10)
      {
        v22 = 16;
      }

      v23 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v24 = *(v9 + 72);
      if (v23 + 16 >= v24)
      {
        v23 = 0;
      }

      v25 = v23 + v22;
      if (v24 <= v25)
      {
        v25 = 0;
      }

      *(v9 + 88) = v25;
      v26 = *(v9 + 80);
      if (*(v26 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v26 + 16) + 128), v25) == 0x80000000 || *(v9 + 124))
        {
          if (*(v9 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v9 + 100));
          }

          *(v9 + 124) = 0;
        }

        v27 = 1;
        goto LABEL_40;
      }

      goto LABEL_68;
    }
  }

  v56 = v10;
  if ((v59 & 1) == 0)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    JUMPOUT(0x19E27987CLL);
  }

  if (v58 <= 1)
  {
    __break(0xC471u);
    goto LABEL_68;
  }

  *v57 = 3197;
  v45 = (*(v9 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v46 = *(v9 + 72);
  if (v45 + 16 >= v46)
  {
    v45 = 0;
  }

  v47 = v45 + 16;
  if (v46 <= v47)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47;
  }

  *(v9 + 88) = v48;
  v49 = *(v9 + 80);
  if (*(v49 + 8) <= 0xFFuLL)
  {
    goto LABEL_68;
  }

  atomic_exchange((*(v49 + 16) + 128), v48);
  *(v9 + 124) = 0;
  v50 = *(v9 + 8);
  v51 = IPC::Encoder::operator new(0x238, v14);
  *v51 = 1706;
  *(v51 + 2) = 0;
  *(v51 + 3) = 0;
  *(v51 + 1) = v56;
  *(v51 + 68) = 0;
  *(v51 + 70) = 0;
  *(v51 + 69) = 0;
  IPC::Encoder::encodeHeader(v51);
  v60 = v51;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v51, v8);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v51, IdentifierInternal);
  v52 = IPC::Connection::sendMessageImpl(v50, &v60, 1, 0);
  v53 = v60;
  v60 = 0;
  if (v53)
  {
    IPC::Encoder::~Encoder(v53, v14);
    bmalloc::api::tzoneFree(v54, v55);
  }

  v27 = v52 == 0;
LABEL_40:
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    IPC::StreamClientConnection::operator delete(v9);
    if (v27)
    {
      goto LABEL_42;
    }

LABEL_46:
    result = 0;
    goto LABEL_47;
  }

  if (!v27)
  {
    goto LABEL_46;
  }

LABEL_42:
  v42 = *(*(a1[5] + 64) + 72);
  atomic_fetch_add((v42 + 28), 1u);
  v43 = a1[4];
  if (WebKit::WebGPU::RemoteXRSubImageProxy::s_heapRef)
  {
    result = bmalloc::api::tzoneAllocateNonCompact(WebKit::WebGPU::RemoteXRSubImageProxy::s_heapRef, v14);
  }

  else
  {
    result = WebKit::WebGPU::RemoteXRSubImageProxy::operatorNewSlow(0);
  }

  *(result + 16) = 1;
  *result = &unk_1F11269E0;
  *(result + 8) = 0;
  *(result + 24) = IdentifierInternal;
  ++*(v43 + 8);
  *(result + 32) = v43;
  *(result + 40) = v42;
  *(result + 48) = 0;
  *(result + 56) = 0;
LABEL_47:
  *a3 = result;
  return result;
}

void WebKit::WebGPU::RemoteXRProjectionLayerProxy::~RemoteXRProjectionLayerProxy(WebKit::WebGPU::RemoteXRProjectionLayerProxy *this)
{
  v2 = *(*(this + 5) + 80);
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
    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v30, v5);
    if (v32 != 1)
    {
      goto LABEL_16;
    }

    v17 = v31;
    if (v31 <= 1)
    {
LABEL_52:
      __break(0xC471u);
      JUMPOUT(0x19E279C64);
    }

    v18 = v30;
    *v30 = 3198;
    v19 = v18 + 1;
    if (v17 - 2 < (-v19 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v20 = -v19 & 7;
    *(v19 + v20) = v3;
    if (v20 != 7)
    {
      v20 = 6;
    }

    v21 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v23 = *(v2 + 72);
    v22 = *(v2 + 80);
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

    *(v2 + 88) = v25;
    if (*(v22 + 8) <= 0xFFuLL)
    {
      goto LABEL_51;
    }

    v26 = atomic_exchange((*(v22 + 16) + 128), v25);
    v27 = *(v2 + 124);
    if (v26 == 0x80000000 || v27 != 0)
    {
      v29 = v27 + 1;
      *(v2 + 124) = v29;
      if (v29 >= *(v2 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v30, v5);
  if (v32 != 1)
  {
    goto LABEL_16;
  }

  if (v31 <= 1)
  {
    goto LABEL_52;
  }

  *v30 = 1707;
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
    goto LABEL_51;
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

  v13 = *(this + 5);
  *(this + 5) = 0;
  if (v13 && atomic_fetch_add(v13 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13 + 7);
    (*(*v13 + 24))(v13, v8);
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

  if (*(this + 4) != 1)
  {
    __break(0xC471u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v15 = *(this + 1);
  if (v15)
  {
    *(v15 + 8) = 0;
    v16 = *(this + 1);
    *(this + 1) = 0;
    if (v16)
    {
      if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v16);
        WTF::fastFree(v16, v7);
      }
    }
  }
}

{
  WebKit::WebGPU::RemoteXRProjectionLayerProxy::~RemoteXRProjectionLayerProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void WebKit::WebGPU::RemoteXRProjectionLayerProxy::startFrame(WTF::ApproximateTime *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = *(*(a1 + 5) + 80);
  atomic_fetch_add(v11, 1u);
  v12 = *(a1 + 3);
  v13 = *(v11 + 128);
  v14 = INFINITY;
  if (fabs(v13) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v14 = v13 + v15;
  }

  if (*(v11 + 64) != v12)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v40, v14);
    if (v42 != 1)
    {
      goto LABEL_13;
    }

    v27 = v41;
    if (v41 <= 1)
    {
LABEL_37:
      __break(0xC471u);
      return;
    }

    v28 = v40;
    *v40 = 3198;
    v29 = v28 + 1;
    if (v27 - 2 < (-v29 & 7 | 8uLL))
    {
      goto LABEL_13;
    }

    v30 = -v29 & 7;
    *(v29 + v30) = v12;
    if (v30 != 7)
    {
      v30 = 6;
    }

    v31 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v33 = *(v11 + 72);
    v32 = *(v11 + 80);
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

    *(v11 + 88) = v35;
    if (*(v32 + 8) <= 0xFFuLL)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v36 = atomic_exchange((*(v32 + 16) + 128), v35);
    v37 = *(v11 + 124);
    if (v36 == 0x80000000 || v37 != 0)
    {
      v39 = v37 + 1;
      *(v11 + 124) = v39;
      if (v39 >= *(v11 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v11 + 72, &v40, v14);
  if (v42 == 1)
  {
    if (v41 <= 1)
    {
      __break(0xC471u);
    }

    else
    {
      *v40 = 3197;
      v17 = (*(v11 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(v11 + 72);
      v18 = *(v11 + 80);
      if (v17 + 16 >= v19)
      {
        v17 = 0;
      }

      v20 = v17 + 16;
      if (v19 <= v20)
      {
        v20 = 0;
      }

      *(v11 + 88) = v20;
      if (*(v18 + 8) > 0xFFuLL)
      {
        atomic_exchange((*(v18 + 16) + 128), v20);
        *(v11 + 124) = 0;
        v21 = *(v11 + 8);
        v22 = IPC::Encoder::operator new(0x238, v16);
        *v22 = 1709;
        *(v22 + 2) = 0;
        *(v22 + 3) = 0;
        *(v22 + 1) = v12;
        *(v22 + 68) = 0;
        *(v22 + 70) = 0;
        *(v22 + 69) = 0;
        IPC::Encoder::encodeHeader(v22);
        v43 = v22;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v22, a2);
        IPC::Encoder::addAttachment(v22, a3);
        IPC::Encoder::addAttachment(v22, a4);
        IPC::Encoder::addAttachment(v22, a5);
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v22, a6);
        IPC::Connection::sendMessageImpl(v21, &v43, 1, 0);
        v24 = v43;
        v43 = 0;
        if (v24)
        {
          IPC::Encoder::~Encoder(v24, v23);
          bmalloc::api::tzoneFree(v25, v26);
        }

        goto LABEL_13;
      }
    }

    goto LABEL_36;
  }

LABEL_13:
  if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    IPC::StreamClientConnection::operator delete(v11);
  }
}

void WebKit::WebGPU::RemoteXRProjectionLayerProxy::endFrame(WebKit::WebGPU::RemoteXRProjectionLayerProxy *this)
{
  v1 = *(*(this + 5) + 80);
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
      *v23 = 1708;
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

void WebKit::WebGPU::RemoteXRSubImageProxy::~RemoteXRSubImageProxy(WebKit::WebGPU::RemoteXRSubImageProxy *this)
{
  v2 = *(*(this + 5) + 80);
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
    IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v32, v5);
    if (v34 != 1)
    {
      goto LABEL_16;
    }

    v19 = v33;
    if (v33 <= 1)
    {
LABEL_60:
      __break(0xC471u);
      JUMPOUT(0x19E27A640);
    }

    v20 = v32;
    *v32 = 3198;
    v21 = v20 + 1;
    if (v19 - 2 < (-v21 & 7 | 8uLL))
    {
      goto LABEL_16;
    }

    v22 = -v21 & 7;
    *(v21 + v22) = v3;
    if (v22 != 7)
    {
      v22 = 6;
    }

    v23 = (*(v2 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v2 + 72);
    v24 = *(v2 + 80);
    v26 = v22 + 10;
    if (v23 + 16 >= v25)
    {
      v23 = 0;
    }

    v27 = v26 + v23;
    if (v25 <= v27)
    {
      v27 = 0;
    }

    *(v2 + 88) = v27;
    if (*(v24 + 8) <= 0xFFuLL)
    {
      goto LABEL_59;
    }

    v28 = atomic_exchange((*(v24 + 16) + 128), v27);
    v29 = *(v2 + 124);
    if (v28 == 0x80000000 || v29 != 0)
    {
      v31 = v29 + 1;
      *(v2 + 124) = v31;
      if (v31 >= *(v2 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(v2 + 72, &v32, v5);
  if (v34 != 1)
  {
    goto LABEL_16;
  }

  if (v33 <= 1)
  {
    goto LABEL_60;
  }

  *v32 = 1710;
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
    goto LABEL_59;
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

  v13 = *(this + 7);
  *(this + 7) = 0;
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

  v14 = *(this + 6);
  *(this + 6) = 0;
  if (v14)
  {
    if (v14[4] == 1)
    {
      (*(*v14 + 8))(v14, v8);
    }

    else
    {
      --v14[4];
    }
  }

  v15 = *(this + 5);
  *(this + 5) = 0;
  if (v15 && atomic_fetch_add(v15 + 7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v15 + 7);
    (*(*v15 + 24))(v15, v8);
  }

  v16 = *(this + 4);
  *(this + 4) = 0;
  if (v16)
  {
    if (v16[2] == 1)
    {
      (*(*v16 + 8))(v16, v8);
    }

    else
    {
      --v16[2];
    }
  }

  if (*(this + 4) != 1)
  {
    __break(0xC471u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v17 = *(this + 1);
  if (v17)
  {
    *(v17 + 8) = 0;
    v18 = *(this + 1);
    *(this + 1) = 0;
    if (v18)
    {
      if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v18);
        WTF::fastFree(v18, v7);
      }
    }
  }
}

{
  WebKit::WebGPU::RemoteXRSubImageProxy::~RemoteXRSubImageProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebKit::WebGPU::RemoteXRSubImageProxy::colorTexture@<X0>(WebKit::WebGPU::RemoteXRSubImageProxy *this@<X0>, void *a2@<X8>)
{
  result = *(this + 6);
  if (!result)
  {
    if (WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
      goto LABEL_69;
    }

    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v6 = IdentifierInternal;
    v7 = *(*(this + 5) + 80);
    atomic_fetch_add(v7, 1u);
    v8 = *(this + 3);
    v9 = *(v7 + 128);
    v10 = INFINITY;
    if (fabs(v9) != INFINITY)
    {
      WTF::ApproximateTime::now(IdentifierInternal);
      v10 = v9 + v11;
    }

    if (*(v7 + 64) != v8)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, &v53, v10);
      if (v55 != 1)
      {
        goto LABEL_38;
      }

      v24 = v54;
      if (v54 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E27AB64);
      }

      v25 = v53;
      *v53 = 3198;
      v26 = v25 + 1;
      if (v24 - 2 < (-v26 & 7 | 8uLL))
      {
        goto LABEL_38;
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
LABEL_68:
        __break(1u);
LABEL_69:
        JUMPOUT(0x19E27AB1CLL);
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
    if (v55 == 1)
    {
      v13 = v54;
      if (v54 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E27AB3CLL);
      }

      v14 = v53;
      *v53 = 1711;
      v15 = v14 + 1;
      if (v13 - 2 < (-v15 & 7 | 8uLL))
      {
        v52 = v8;
        if (v55)
        {
          if (v54 <= 1)
          {
            __break(0xC471u);
          }

          else
          {
            *v53 = 3197;
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
            if (*(v45 + 8) > 0xFFuLL)
            {
              atomic_exchange((*(v45 + 16) + 128), v44);
              *(v7 + 124) = 0;
              v46 = *(v7 + 8);
              v47 = IPC::Encoder::operator new(0x238, v12);
              *v47 = 1711;
              *(v47 + 2) = 0;
              *(v47 + 3) = 0;
              *(v47 + 1) = v52;
              *(v47 + 68) = 0;
              *(v47 + 70) = 0;
              *(v47 + 69) = 0;
              IPC::Encoder::encodeHeader(v47);
              v56 = v47;
              IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v47, v6);
              v48 = IPC::Connection::sendMessageImpl(v46, &v56, 1, 0);
              v49 = v56;
              v56 = 0;
              if (v49)
              {
                IPC::Encoder::~Encoder(v49, v12);
                bmalloc::api::tzoneFree(v50, v51);
              }

              v23 = v48 == 0;
LABEL_39:
              if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v7);
                IPC::StreamClientConnection::operator delete(v7);
                if (v23)
                {
LABEL_41:
                  v38 = *(this + 5);
                  atomic_fetch_add((v38 + 28), 1u);
                  v39 = *(this + 4);
                  result = WebKit::WebGPU::RemoteTextureProxy::operator new(0x78, v12);
                  *(result + 16) = 1;
                  *(result + 24) = 0;
                  *(result + 32) = v6;
                  *result = &unk_1F11268C0;
                  *(result + 8) = 0;
                  ++*(v39 + 8);
                  *(result + 40) = v39;
                  *(result + 48) = v38;
                  *(result + 56) = 0;
                  *(result + 64) = 0;
                  *(result + 104) = 0;
                  *(result + 112) = 0;
                  v40 = *(this + 6);
                  *(this + 6) = result;
                  if (v40)
                  {
                    if (v40[4] == 1)
                    {
                      (*(*v40 + 8))(v40);
                      result = *(this + 6);
                      if (!result)
                      {
                        goto LABEL_45;
                      }
                    }

                    else
                    {
                      --v40[4];
                    }
                  }

                  goto LABEL_44;
                }
              }

              else if (v23)
              {
                goto LABEL_41;
              }

              result = 0;
              goto LABEL_45;
            }
          }
        }
      }

      else
      {
        v16 = -v15 & 7;
        *(v15 + v16) = v6;
        v17 = 6;
        if (v16 > 6)
        {
          v17 = v16;
        }

        v18 = v17 + 10;
        v19 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v20 = *(v7 + 72);
        if (v19 + 16 >= v20)
        {
          v19 = 0;
        }

        v21 = v18 + v19;
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

          v23 = 1;
          goto LABEL_39;
        }
      }

      goto LABEL_68;
    }

LABEL_38:
    v23 = 0;
    goto LABEL_39;
  }

LABEL_44:
  ++*(result + 16);
LABEL_45:
  *a2 = result;
  return result;
}
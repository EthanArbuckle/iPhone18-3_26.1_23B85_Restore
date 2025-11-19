void WebKit::RemoteDisplayListRecorderProxy::strokeRect(WebKit::RemoteDisplayListRecorderProxy *this, const WebCore::FloatRect *a2, float a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(this, a2);
  v40 = a2;
  v41 = a3;
  v8 = *(this + 439);
  if (v8)
  {
    atomic_fetch_add(v8, 1u);
    goto LABEL_3;
  }

  v32 = *(this + 440);
  if (v32)
  {
    v33 = *(v32 + 8);
    if (v33)
    {
      ++*(v33 + 5);
      v34 = WebKit::RemoteRenderingBackendProxy::connection(v33, v7, buf);
      v8 = *buf;
      if (*(v33 + 5) == 1)
      {
        (*(*v33 + 24))(v33, v34);
      }

      else
      {
        --*(v33 + 5);
      }

      if (v8)
      {
        v6 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(this + 439, v8);
LABEL_3:
        if ((*(this + 3584) & 1) == 0)
        {
          v6 = *(this + 443);
          if (v6)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v6, *(this + 442), buf);
            v6 = *buf;
            if (*buf)
            {
              v6 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v37);
              v39 = *buf;
              *buf = 0;
              if (v39)
              {
                v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v39 + 8), v38);
              }
            }
          }

          *(this + 3584) = 1;
        }

        v9 = *(this + 438);
        v10 = *(v8 + 128);
        v11 = INFINITY;
        if (fabs(v10) != INFINITY)
        {
          WTF::ApproximateTime::now(v6);
          v11 = v10 + v12;
        }

        if (*(v8 + 64) != v9)
        {
          IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, buf, v11);
          if (buf[16] != 1)
          {
            goto LABEL_50;
          }

          v20 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            goto LABEL_67;
          }

          v21 = *buf;
          **buf = 3198;
          v22 = v21 + 2;
          if (v20 - 2 < (-v22 & 7 | 8uLL))
          {
            goto LABEL_50;
          }

          v23 = -v22 & 7;
          *(v22 + v23) = v9;
          v24 = 6;
          if (v23 > 6)
          {
            v24 = v23;
          }

          v25 = v24 + 10;
          v26 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v27 = *(v8 + 72);
          if (v26 + 16 >= v27)
          {
            v26 = 0;
          }

          v18 = v25 + v26;
          if (v27 <= v18)
          {
            v18 = 0;
          }

          *(v8 + 88) = v18;
          v17 = *(v8 + 80);
          if (*(v17 + 8) <= 0xFFuLL)
          {
            goto LABEL_58;
          }

          v28 = atomic_exchange((*(v17 + 16) + 128), v18);
          v29 = *(v8 + 124);
          if (v28 == 0x80000000 || v29 != 0)
          {
            v31 = v29 + 1;
            *(v8 + 124) = v31;
            if (v31 >= *(v8 + 120))
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

        IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v42, v11);
        if ((v44 & 1) == 0)
        {
          goto LABEL_50;
        }

        v13 = v42;
        v14 = v43;
        *&buf[16] = v43;
        if (v43 > 1)
        {
          *v42 = 1144;
          *buf = v13 + 1;
          *&buf[8] = v14 - 2;
          IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, v40);
          v15 = *buf;
          v16 = -*buf & 3 | 4;
          v17 = *&buf[8] - v16;
          if (*&buf[8] >= v16)
          {
            *(*buf + (-*buf & 3)) = v41;
            *buf = v15 + v16;
            *&buf[8] = v17;
            v18 = *&buf[16] - v17;
            if (*&buf[16] - v17 <= 0x10)
            {
              v18 = 16;
            }

            v19 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v17 = *(v8 + 72);
            if (v19 + 16 >= v17)
            {
              goto LABEL_59;
            }

            while (1)
            {
              v18 += v19;
              if (v17 <= v18)
              {
                v18 = 0;
              }

              *(v8 + 88) = v18;
              v17 = *(v8 + 80);
              if (*(v17 + 8) > 0xFFuLL)
              {
                break;
              }

LABEL_58:
              __break(1u);
LABEL_59:
              v19 = 0;
            }

            if (atomic_exchange((*(v17 + 16) + 128), v18) == 0x80000000 || *(v8 + 124))
            {
              if (*(v8 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v8 + 100));
              }

              *(v8 + 124) = 0;
            }

            goto LABEL_18;
          }

          v18 = v44;
          if ((v44 & 1) == 0)
          {
            goto LABEL_58;
          }

          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v8, v42, v43);
          if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::StrokeRect>(*(v8 + 8), &v40, v9))
          {
            goto LABEL_18;
          }

LABEL_50:
          v35 = qword_1ED6410D0;
          if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
          {
            v36 = IPC::errorAsString();
            *buf = 136446466;
            *&buf[4] = "RemoteDisplayListRecorder_StrokeRect";
            *&buf[12] = 2082;
            *&buf[14] = v36;
            _os_log_impl(&dword_19D52D000, v35, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
          }

          WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
LABEL_18:
          if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v8);
            IPC::StreamClientConnection::operator delete(v8);
          }

          return;
        }

        __break(0xC471u);
LABEL_67:
        JUMPOUT(0x19E1BF9A0);
      }
    }
  }
}

void WebKit::RemoteDisplayListRecorderProxy::strokeEllipse(WebKit::RemoteDisplayListRecorderProxy *this, const WebCore::FloatRect *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(this, a2);
  v40 = a2;
  v6 = *(this + 439);
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
    goto LABEL_3;
  }

  v32 = *(this + 440);
  if (v32)
  {
    v33 = *(v32 + 8);
    if (v33)
    {
      ++*(v33 + 5);
      v34 = WebKit::RemoteRenderingBackendProxy::connection(v33, v5, buf);
      v6 = *buf;
      if (*(v33 + 5) == 1)
      {
        (*(*v33 + 24))(v33, v34);
      }

      else
      {
        --*(v33 + 5);
      }

      if (v6)
      {
        v4 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(this + 439, v6);
LABEL_3:
        if ((*(this + 3584) & 1) == 0)
        {
          v4 = *(this + 443);
          if (v4)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v4, *(this + 442), buf);
            v4 = *buf;
            if (*buf)
            {
              v4 = WebKit::RemoteImageBufferProxy::backingStoreWillChange(*buf, v37);
              v39 = *buf;
              *buf = 0;
              if (v39)
              {
                v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v39 + 8), v38);
              }
            }
          }

          *(this + 3584) = 1;
        }

        v7 = *(this + 438);
        v8 = *(v6 + 128);
        v9 = INFINITY;
        if (fabs(v8) != INFINITY)
        {
          WTF::ApproximateTime::now(v4);
          v9 = v8 + v10;
        }

        if (*(v6 + 64) != v7)
        {
          IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v9);
          if (buf[16] != 1)
          {
            goto LABEL_54;
          }

          v20 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            goto LABEL_71;
          }

          v21 = *buf;
          **buf = 3198;
          v22 = v21 + 2;
          if (v20 - 2 < (-v22 & 7 | 8uLL))
          {
            goto LABEL_54;
          }

          v23 = -v22 & 7;
          *(v22 + v23) = v7;
          v24 = 6;
          if (v23 > 6)
          {
            v24 = v23;
          }

          v25 = v24 + 10;
          v26 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v27 = *(v6 + 72);
          if (v26 + 16 >= v27)
          {
            v26 = 0;
          }

          v14 = v25 + v26;
          if (v27 <= v14)
          {
            v14 = 0;
          }

          *(v6 + 88) = v14;
          v13 = *(v6 + 80);
          if (*(v13 + 8) <= 0xFFuLL)
          {
            goto LABEL_62;
          }

          v28 = atomic_exchange((*(v13 + 16) + 128), v14);
          v29 = *(v6 + 124);
          if (v28 == 0x80000000 || v29 != 0)
          {
            v31 = v29 + 1;
            *(v6 + 124) = v31;
            if (v31 >= *(v6 + 120))
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

        IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v41, v9);
        if ((v43 & 1) == 0)
        {
          goto LABEL_54;
        }

        v11 = v41;
        v12 = v42;
        *&buf[16] = v42;
        if (v42 > 1)
        {
          *v41 = 1138;
          *buf = v11 + 1;
          *&buf[8] = v12 - 2;
          IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, v40);
          if (*buf)
          {
            v14 = *&buf[16] - *&buf[8];
            if (*&buf[16] - *&buf[8] <= 0x10uLL)
            {
              v14 = 16;
            }

            v15 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v13 = *(v6 + 72);
            if (v15 + 16 >= v13)
            {
              goto LABEL_63;
            }

            while (1)
            {
              v14 += v15;
              if (v13 <= v14)
              {
                v14 = 0;
              }

              *(v6 + 88) = v14;
              v13 = *(v6 + 80);
              if (*(v13 + 8) > 0xFFuLL)
              {
                break;
              }

LABEL_62:
              __break(1u);
LABEL_63:
              v15 = 0;
            }

            v16 = atomic_exchange((*(v13 + 16) + 128), v14);
            v17 = *(v6 + 124);
            if (v16 == 0x80000000 || v17 != 0)
            {
              v19 = v17 + 1;
              *(v6 + 124) = v19;
              if (v19 >= *(v6 + 120))
              {
                if (*(v6 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v6 + 100));
                }

                *(v6 + 124) = 0;
              }
            }

            goto LABEL_21;
          }

          v14 = v43;
          if ((v43 & 1) == 0)
          {
            goto LABEL_62;
          }

          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v6, v41, v42);
          if (!IPC::Connection::send<Messages::RemoteDisplayListRecorder::StrokeEllipse>(*(v6 + 8), &v40, v7))
          {
            goto LABEL_21;
          }

LABEL_54:
          v35 = qword_1ED6410D0;
          if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
          {
            v36 = IPC::errorAsString();
            *buf = 136446466;
            *&buf[4] = "RemoteDisplayListRecorder_StrokeEllipse";
            *&buf[12] = 2082;
            *&buf[14] = v36;
            _os_log_impl(&dword_19D52D000, v35, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
          }

          WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
LABEL_21:
          if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v6);
            IPC::StreamClientConnection::operator delete(v6);
          }

          return;
        }

        __break(0xC471u);
LABEL_71:
        JUMPOUT(0x19E1BFE24);
      }
    }
  }
}

void WebKit::RemoteDisplayListRecorderProxy::clearRect(WebKit::RemoteDisplayListRecorderProxy *this, const WebCore::FloatRect *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(this, a2);
  v40 = a2;
  v6 = *(this + 439);
  if (!v6)
  {
    goto LABEL_54;
  }

  atomic_fetch_add(v6, 1u);
  while (1)
  {
    if ((*(this + 3584) & 1) == 0)
    {
      v4 = *(this + 443);
      if (v4)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v4, *(this + 442), buf);
        v4 = *buf;
        if (*buf)
        {
          v4 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v37);
          if (v4)
          {
            v4 = (*(*v4 + 168))(v4);
          }

          v39 = *buf;
          *buf = 0;
          if (v39)
          {
            v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v39 + 8), v38);
          }
        }
      }

      *(this + 3584) = 1;
    }

    v7 = *(this + 438);
    v8 = *(v6 + 128);
    v9 = INFINITY;
    if (fabs(v8) != INFINITY)
    {
      WTF::ApproximateTime::now(v4);
      v9 = v8 + v10;
    }

    if (*(v6 + 64) != v7)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v9);
      if (buf[16] != 1)
      {
        goto LABEL_47;
      }

      v18 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_67:
        __break(0xC471u);
        JUMPOUT(0x19E1C02E8);
      }

      v19 = *buf;
      **buf = 3198;
      v20 = v19 + 2;
      if (v18 - 2 < (-v20 & 7 | 8uLL))
      {
        goto LABEL_47;
      }

      v21 = -v20 & 7;
      *(v20 + v21) = v7;
      v22 = 6;
      if (v21 > 6)
      {
        v22 = v21;
      }

      v23 = v22 + 10;
      v24 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v25 = *(v6 + 72);
      if (v24 + 16 >= v25)
      {
        v24 = 0;
      }

      v26 = v23 + v24;
      if (v25 <= v26)
      {
        v26 = 0;
      }

      *(v6 + 88) = v26;
      v27 = *(v6 + 80);
      if (*(v27 + 8) <= 0xFFuLL)
      {
        goto LABEL_53;
      }

      v28 = atomic_exchange((*(v27 + 16) + 128), v26);
      v29 = *(v6 + 124);
      if (v28 == 0x80000000 || v29 != 0)
      {
        v31 = v29 + 1;
        *(v6 + 124) = v31;
        if (v31 >= *(v6 + 120))
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

    IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v41, v9);
    if ((v43 & 1) == 0)
    {
      goto LABEL_47;
    }

    v11 = v41;
    v12 = v42;
    *&buf[16] = v42;
    if (v42 <= 1)
    {
      goto LABEL_67;
    }

    *v41 = 1053;
    *buf = v11 + 1;
    *&buf[8] = v12 - 2;
    IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, v40);
    if (!*buf)
    {
      break;
    }

    v13 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
    {
      v13 = 16;
    }

    v14 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v6 + 72);
    if (v14 + 16 >= v15)
    {
      v14 = 0;
    }

    v16 = v14 + v13;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(v6 + 88) = v16;
    v17 = *(v6 + 80);
    if (*(v17 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v17 + 16) + 128), v16) == 0x80000000 || *(v6 + 124))
      {
        if (*(v6 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v6 + 100));
        }

        *(v6 + 124) = 0;
      }

      goto LABEL_21;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    v34 = *(this + 440);
    if (!v34)
    {
      return;
    }

    v35 = *(v34 + 8);
    if (!v35)
    {
      return;
    }

    ++*(v35 + 5);
    v36 = WebKit::RemoteRenderingBackendProxy::connection(v35, v5, buf);
    v6 = *buf;
    if (*(v35 + 5) == 1)
    {
      (*(*v35 + 24))(v35, v36);
    }

    else
    {
      --*(v35 + 5);
    }

    if (!v6)
    {
      return;
    }

    v4 = WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(this + 439, v6);
  }

  if ((v43 & 1) == 0)
  {
    goto LABEL_53;
  }

  IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v6, v41, v42);
  if (IPC::Connection::send<Messages::RemoteDisplayListRecorder::ClearRect>(*(v6 + 8), &v40, v7))
  {
LABEL_47:
    v32 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v33 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteDisplayListRecorder_ClearRect";
      *&buf[12] = 2082;
      *&buf[14] = v33;
      _os_log_impl(&dword_19D52D000, v32, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
    }

    WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
  }

LABEL_21:
  if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    IPC::StreamClientConnection::operator delete(v6);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::drawControlPart(uint64_t a1, uint64_t a2, float *a3, int *a4, float a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v10 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(a1, a2);
  atomic_fetch_add((a2 + 8), 1u);
  v12 = *(a1 + 3512);
  if (!v12)
  {
    goto LABEL_65;
  }

  atomic_fetch_add(v12, 1u);
  while (1)
  {
    if ((*(a1 + 3584) & 1) == 0)
    {
      v10 = *(a1 + 3544);
      if (v10)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v10, *(a1 + 3536), buf);
        v10 = *buf;
        if (*buf)
        {
          v10 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v56);
          if (v10)
          {
            v10 = (*(*v10 + 168))(v10);
          }

          v58 = *buf;
          *buf = 0;
          if (v58)
          {
            v10 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v58 + 8), v57);
          }
        }
      }

      *(a1 + 3584) = 1;
    }

    v13 = *(a1 + 3504);
    v14 = *(v12 + 128);
    v15 = INFINITY;
    if (fabs(v14) != INFINITY)
    {
      WTF::ApproximateTime::now(v10);
      v15 = v14 + v16;
    }

    if (*(v12 + 64) != v13)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, buf, v15);
      if (buf[16] != 1)
      {
        goto LABEL_56;
      }

      v37 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_86:
        __break(0xC471u);
        JUMPOUT(0x19E1C0948);
      }

      v38 = *buf;
      **buf = 3198;
      v39 = v38 + 2;
      if (v37 - 2 < (-v39 & 7 | 8uLL))
      {
        goto LABEL_56;
      }

      v40 = -v39 & 7;
      *(v39 + v40) = v13;
      v41 = 6;
      if (v40 > 6)
      {
        v41 = v40;
      }

      v42 = v41 + 10;
      v43 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v44 = *(v12 + 72);
      if (v43 + 16 >= v44)
      {
        v43 = 0;
      }

      v45 = v42 + v43;
      if (v44 <= v45)
      {
        v45 = 0;
      }

      *(v12 + 88) = v45;
      v46 = *(v12 + 80);
      if (*(v46 + 8) <= 0xFFuLL)
      {
        goto LABEL_64;
      }

      v47 = atomic_exchange((*(v46 + 16) + 128), v45);
      v48 = *(v12 + 124);
      if (v47 == 0x80000000 || v48 != 0)
      {
        v50 = v48 + 1;
        *(v12 + 124) = v50;
        if (v50 >= *(v12 + 120))
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

    IPC::StreamClientConnectionBuffer::tryAcquire(v12 + 72, &v59, v15);
    if ((v61 & 1) == 0)
    {
      goto LABEL_56;
    }

    v17 = v59;
    v18 = v60;
    *&buf[16] = v60;
    if (v60 <= 1)
    {
      goto LABEL_86;
    }

    *v59 = 1062;
    *buf = v17 + 1;
    *&buf[8] = v18 - 2;
    IPC::ArgumentCoder<WebCore::ControlPart,void>::encode(buf, a2);
    IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::encode(buf, a3);
    v19 = -*buf & 3 | 4;
    if (*&buf[8] < v19)
    {
      *buf = 0;
      *&buf[8] = 0;
    }

    else
    {
      *(*buf + (-*buf & 3)) = a5;
      if (*&buf[8] < v19)
      {
        goto LABEL_64;
      }

      *buf += v19;
      *&buf[8] -= v19;
    }

    IPC::ArgumentCoder<WebCore::ControlStyle,void>::encode(buf, a4);
    if (!*buf)
    {
      break;
    }

    v20 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
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

      goto LABEL_59;
    }

LABEL_64:
    __break(1u);
LABEL_65:
    v53 = *(a1 + 3520);
    if (!v53)
    {
      goto LABEL_61;
    }

    v54 = *(v53 + 8);
    if (!v54)
    {
      goto LABEL_61;
    }

    ++*(v54 + 5);
    v55 = WebKit::RemoteRenderingBackendProxy::connection(v54, v11, buf);
    v12 = *buf;
    if (*(v54 + 5) == 1)
    {
      (*(*v54 + 24))(v54, v55);
      if (!v12)
      {
        goto LABEL_61;
      }
    }

    else
    {
      --*(v54 + 5);
      if (!v12)
      {
        goto LABEL_61;
      }
    }

    atomic_fetch_add(v12, 1u);
    v10 = *(a1 + 3512);
    *(a1 + 3512) = v12;
    if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      IPC::StreamClientConnection::operator delete(v10);
    }
  }

  if ((v61 & 1) == 0)
  {
    goto LABEL_64;
  }

  if (v60 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1C0968);
  }

  *v59 = 3197;
  v25 = (*(v12 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v12 + 72);
  if (v25 + 16 >= v26)
  {
    v25 = 0;
  }

  v27 = v25 + 16;
  v28 = v26 <= v27 ? 0 : v27;
  *(v12 + 88) = v28;
  v29 = *(v12 + 80);
  if (*(v29 + 8) <= 0xFFuLL)
  {
    goto LABEL_64;
  }

  atomic_exchange((*(v29 + 16) + 128), v28);
  *(v12 + 124) = 0;
  v30 = *(v12 + 8);
  v31 = IPC::Encoder::operator new(0x238, v11);
  *v31 = 1062;
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  *(v31 + 1) = v13;
  *(v31 + 68) = 0;
  *(v31 + 70) = 0;
  *(v31 + 69) = 0;
  IPC::Encoder::encodeHeader(v31);
  *buf = v31;
  IPC::ArgumentCoder<WebCore::ControlPart,void>::encode(v31, a2);
  IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::encode(v31, a3);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v31, a5);
  IPC::ArgumentCoder<WebCore::ControlStyle,void>::encode(v31, a4);
  v33 = IPC::Connection::sendMessageImpl(v30, buf, 1, 0);
  v34 = *buf;
  *buf = 0;
  if (v34)
  {
    IPC::Encoder::~Encoder(v34, v32);
    bmalloc::api::tzoneFree(v35, v36);
    if (!v33)
    {
      goto LABEL_59;
    }
  }

  else if (!v33)
  {
    goto LABEL_59;
  }

LABEL_56:
  v51 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v52 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_DrawControlPart";
    *&buf[12] = 2082;
    *&buf[14] = v52;
    _os_log_impl(&dword_19D52D000, v51, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
LABEL_59:
  if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12);
    IPC::StreamClientConnection::operator delete(v12);
  }

LABEL_61:
  if (atomic_fetch_add((a2 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (a2 + 8));
    (*(*a2 + 8))(a2);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::applyStrokePattern(WebKit::RemoteDisplayListRecorderProxy *this, __int128 *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(this, a2);
  v5 = *(this + 439);
  if (!v5)
  {
    goto LABEL_44;
  }

  atomic_fetch_add(v5, 1u);
  while (1)
  {
    if ((*(this + 3584) & 1) == 0)
    {
      v3 = *(this + 443);
      if (v3)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v3, *(this + 442), v36);
        v3 = *v36;
        if (*v36)
        {
          v3 = WebKit::RemoteImageBufferProxy::ensureBackend(*v36, v33);
          if (v3)
          {
            v3 = (*(*v3 + 168))(v3);
          }

          v35 = *v36;
          *v36 = 0;
          if (v35)
          {
            v3 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v35 + 8), v34);
          }
        }
      }

      *(this + 3584) = 1;
    }

    v6 = *(this + 438);
    v7 = *(v5 + 128);
    v8 = INFINITY;
    if (fabs(v7) != INFINITY)
    {
      WTF::ApproximateTime::now(v3);
      v8 = v7 + v9;
    }

    if (*(v5 + 64) == v6)
    {
      goto LABEL_9;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, v36, v8);
    if (v36[16] != 1)
    {
      break;
    }

    v14 = *&v36[8];
    if (*&v36[8] <= 1uLL)
    {
LABEL_62:
      __break(0xC471u);
      JUMPOUT(0x19E1C0DB0);
    }

    v15 = *v36;
    **v36 = 3198;
    v16 = v15 + 2;
    if (v14 - 2 < (-v16 & 7 | 8uLL))
    {
      break;
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
      goto LABEL_43;
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
LABEL_9:
    IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, v36, v8);
    if (v36[16] != 1)
    {
      break;
    }

    if (*&v36[8] <= 1uLL)
    {
      goto LABEL_62;
    }

    **v36 = 1049;
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

      goto LABEL_40;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    v30 = *(this + 440);
    if (!v30)
    {
      return;
    }

    v31 = *(v30 + 8);
    if (!v31)
    {
      return;
    }

    ++*(v31 + 5);
    v32 = WebKit::RemoteRenderingBackendProxy::connection(v31, v4, v36);
    v5 = *v36;
    if (*(v31 + 5) == 1)
    {
      (*(*v31 + 24))(v31, v32);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      --*(v31 + 5);
      if (!v5)
      {
        return;
      }
    }

    atomic_fetch_add(v5, 1u);
    v3 = *(this + 439);
    *(this + 439) = v5;
    if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  v28 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v29 = IPC::errorAsString();
    *v36 = 136446466;
    *&v36[4] = "RemoteDisplayListRecorder_ApplyStrokePattern";
    *&v36[12] = 2082;
    *&v36[14] = v29;
    _os_log_impl(&dword_19D52D000, v28, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", v36, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
LABEL_40:
  if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    IPC::StreamClientConnection::operator delete(v5);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::applyFillPattern(WebKit::RemoteDisplayListRecorderProxy *this, __int128 *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(this, a2);
  v5 = *(this + 439);
  if (!v5)
  {
    goto LABEL_44;
  }

  atomic_fetch_add(v5, 1u);
  while (1)
  {
    if ((*(this + 3584) & 1) == 0)
    {
      v3 = *(this + 443);
      if (v3)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v3, *(this + 442), v36);
        v3 = *v36;
        if (*v36)
        {
          v3 = WebKit::RemoteImageBufferProxy::ensureBackend(*v36, v33);
          if (v3)
          {
            v3 = (*(*v3 + 168))(v3);
          }

          v35 = *v36;
          *v36 = 0;
          if (v35)
          {
            v3 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v35 + 8), v34);
          }
        }
      }

      *(this + 3584) = 1;
    }

    v6 = *(this + 438);
    v7 = *(v5 + 128);
    v8 = INFINITY;
    if (fabs(v7) != INFINITY)
    {
      WTF::ApproximateTime::now(v3);
      v8 = v7 + v9;
    }

    if (*(v5 + 64) == v6)
    {
      goto LABEL_9;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, v36, v8);
    if (v36[16] != 1)
    {
      break;
    }

    v14 = *&v36[8];
    if (*&v36[8] <= 1uLL)
    {
LABEL_62:
      __break(0xC471u);
      JUMPOUT(0x19E1C11F8);
    }

    v15 = *v36;
    **v36 = 3198;
    v16 = v15 + 2;
    if (v14 - 2 < (-v16 & 7 | 8uLL))
    {
      break;
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
      goto LABEL_43;
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
LABEL_9:
    IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, v36, v8);
    if (v36[16] != 1)
    {
      break;
    }

    if (*&v36[8] <= 1uLL)
    {
      goto LABEL_62;
    }

    **v36 = 1048;
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

      goto LABEL_40;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    v30 = *(this + 440);
    if (!v30)
    {
      return;
    }

    v31 = *(v30 + 8);
    if (!v31)
    {
      return;
    }

    ++*(v31 + 5);
    v32 = WebKit::RemoteRenderingBackendProxy::connection(v31, v4, v36);
    v5 = *v36;
    if (*(v31 + 5) == 1)
    {
      (*(*v31 + 24))(v31, v32);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      --*(v31 + 5);
      if (!v5)
      {
        return;
      }
    }

    atomic_fetch_add(v5, 1u);
    v3 = *(this + 439);
    *(this + 439) = v5;
    if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  v28 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v29 = IPC::errorAsString();
    *v36 = 136446466;
    *&v36[4] = "RemoteDisplayListRecorder_ApplyFillPattern";
    *&v36[12] = 2082;
    *&v36[14] = v29;
    _os_log_impl(&dword_19D52D000, v28, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", v36, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
LABEL_40:
  if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    IPC::StreamClientConnection::operator delete(v5);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::applyDeviceScaleFactor(WebKit::RemoteDisplayListRecorderProxy *this, float a2)
{
  v56 = *MEMORY[0x1E69E9840];
  updated = WebCore::DisplayList::Recorder::updateStateForApplyDeviceScaleFactor(this, a2);
  v6 = *(this + 439);
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
  }

  else
  {
    v35 = *(this + 440);
    if (!v35)
    {
      return;
    }

    v36 = *(v35 + 8);
    if (!v36)
    {
      return;
    }

    ++*(v36 + 5);
    v37 = WebKit::RemoteRenderingBackendProxy::connection(v36, v5, buf);
    v6 = *buf;
    if (*(v36 + 5) == 1)
    {
      (*(*v36 + 24))(v36, v37);
      if (!v6)
      {
        return;
      }
    }

    else
    {
      --*(v36 + 5);
      if (!v6)
      {
        return;
      }
    }

    atomic_fetch_add(v6, 1u);
    updated = *(this + 439);
    *(this + 439) = v6;
    if (updated && atomic_fetch_add(updated, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, updated);
      IPC::StreamClientConnection::operator delete(updated);
    }
  }

  if ((*(this + 3584) & 1) == 0)
  {
    updated = *(this + 443);
    if (updated)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(updated, *(this + 442), buf);
      updated = *buf;
      if (*buf)
      {
        updated = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v50);
        if (updated)
        {
          updated = (*(*updated + 168))(updated);
        }

        v52 = *buf;
        *buf = 0;
        if (v52)
        {
          updated = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v52 + 8), v51);
        }
      }
    }

    *(this + 3584) = 1;
  }

  v7 = *(this + 438);
  v8 = *(v6 + 128);
  v9 = INFINITY;
  if (fabs(v8) != INFINITY)
  {
    WTF::ApproximateTime::now(updated);
    v9 = v8 + v10;
  }

  if (*(v6 + 64) == v7)
  {
    while (1)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v9);
      if ((buf[16] & 1) == 0)
      {
        break;
      }

      v12 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        goto LABEL_78;
      }

      v13 = *buf;
      **buf = 1047;
      v14 = v13 + 2;
      if (v12 - 2 < (-v14 & 3 | 4uLL))
      {
        v53 = v7;
        if (buf[16])
        {
          if (*&buf[8] <= 1uLL)
          {
LABEL_78:
            __break(0xC471u);
            JUMPOUT(0x19E1C1760);
          }

          **buf = 3197;
          v38 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v39 = *(v6 + 72);
          if (v38 + 16 >= v39)
          {
            v38 = 0;
          }

          v40 = v38 + 16;
          v41 = v39 <= v40 ? 0 : v40;
          *(v6 + 88) = v41;
          v42 = *(v6 + 80);
          if (*(v42 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v42 + 16) + 128), v41);
            *(v6 + 124) = 0;
            v43 = *(v6 + 8);
            v44 = IPC::Encoder::operator new(0x238, v11);
            *v44 = 1047;
            *(v44 + 2) = 0;
            *(v44 + 3) = 0;
            *(v44 + 1) = v53;
            *(v44 + 68) = 0;
            *(v44 + 70) = 0;
            *(v44 + 69) = 0;
            IPC::Encoder::encodeHeader(v44);
            v54 = v44;
            IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v44, a2);
            v46 = IPC::Connection::sendMessageImpl(v43, &v54, 1, 0);
            v47 = v54;
            v54 = 0;
            if (v47)
            {
              IPC::Encoder::~Encoder(v47, v45);
              bmalloc::api::tzoneFree(v48, v49);
              if (!v46)
              {
                goto LABEL_41;
              }
            }

            else if (!v46)
            {
              goto LABEL_41;
            }

            break;
          }
        }
      }

      else
      {
        *(v14 + (-v14 & 3)) = a2;
        v15 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v17 = *(v6 + 72);
        v16 = *(v6 + 80);
        if (v15 + 16 >= v17)
        {
          v15 = 0;
        }

        v18 = v15 + 16;
        if (v17 <= v18)
        {
          v18 = 0;
        }

        *(v6 + 88) = v18;
        if (*(v16 + 8) > 0xFFuLL)
        {
          if (atomic_exchange((*(v16 + 16) + 128), v18) == 0x80000000 || *(v6 + 124))
          {
            if (*(v6 + 112) == 1)
            {
              MEMORY[0x19EB16320](*(v6 + 100));
            }

            *(v6 + 124) = 0;
          }

          goto LABEL_41;
        }
      }

LABEL_62:
      __break(1u);
LABEL_63:
      if (*(v6 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(v6 + 100));
      }

      *(v6 + 124) = 0;
LABEL_37:
      *(v6 + 64) = v7;
    }
  }

  else
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v9);
    if (buf[16] == 1)
    {
      v19 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1C1780);
      }

      v20 = *buf;
      **buf = 3198;
      v21 = v20 + 2;
      if (v19 - 2 >= (-v21 & 7 | 8uLL))
      {
        v22 = -v21 & 7;
        *(v21 + v22) = v7;
        v23 = 6;
        if (v22 > 6)
        {
          v23 = v22;
        }

        v24 = v23 + 10;
        v25 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
        v26 = *(v6 + 72);
        if (v25 + 16 >= v26)
        {
          v25 = 0;
        }

        v27 = v24 + v25;
        if (v26 <= v27)
        {
          v27 = 0;
        }

        *(v6 + 88) = v27;
        v28 = *(v6 + 80);
        if (*(v28 + 8) <= 0xFFuLL)
        {
          goto LABEL_62;
        }

        v29 = atomic_exchange((*(v28 + 16) + 128), v27);
        v30 = *(v6 + 124);
        if (v29 == 0x80000000 || v30 != 0)
        {
          v32 = v30 + 1;
          *(v6 + 124) = v32;
          if (v32 >= *(v6 + 120))
          {
            goto LABEL_63;
          }
        }

        goto LABEL_37;
      }
    }
  }

  v33 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v34 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_ApplyDeviceScaleFactor";
    *&buf[12] = 2082;
    *&buf[14] = v34;
    _os_log_impl(&dword_19D52D000, v33, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
LABEL_41:
  if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    IPC::StreamClientConnection::operator delete(v6);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::beginPage(WebKit::RemoteDisplayListRecorderProxy *this, const WebCore::IntSize *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(this, a2);
  v6 = *(this + 439);
  if (!v6)
  {
    goto LABEL_60;
  }

  atomic_fetch_add(v6, 1u);
  while (1)
  {
    if ((*(this + 3584) & 1) == 0)
    {
      v4 = *(this + 443);
      if (v4)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v4, *(this + 442), buf);
        v4 = *buf;
        if (*buf)
        {
          v4 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v49);
          if (v4)
          {
            v4 = (*(*v4 + 168))(v4);
          }

          v51 = *buf;
          *buf = 0;
          if (v51)
          {
            v4 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v51 + 8), v50);
          }
        }
      }

      *(this + 3584) = 1;
    }

    v7 = *(this + 438);
    v8 = *(v6 + 128);
    v9 = INFINITY;
    if (fabs(v8) != INFINITY)
    {
      WTF::ApproximateTime::now(v4);
      v9 = v8 + v10;
    }

    if (*(v6 + 64) != v7)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, buf, v9);
      if (buf[16] != 1)
      {
        goto LABEL_53;
      }

      v30 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_80:
        __break(0xC471u);
        JUMPOUT(0x19E1C1CFCLL);
      }

      v31 = *buf;
      **buf = 3198;
      v32 = v31 + 2;
      if (v30 - 2 < (-v32 & 7 | 8uLL))
      {
        goto LABEL_53;
      }

      v33 = -v32 & 7;
      *(v32 + v33) = v7;
      v34 = 6;
      if (v33 > 6)
      {
        v34 = v33;
      }

      v35 = v34 + 10;
      v36 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v37 = *(v6 + 72);
      if (v36 + 16 >= v37)
      {
        v36 = 0;
      }

      v38 = v35 + v36;
      if (v37 <= v38)
      {
        v38 = 0;
      }

      *(v6 + 88) = v38;
      v39 = *(v6 + 80);
      if (*(v39 + 8) <= 0xFFuLL)
      {
        goto LABEL_59;
      }

      v40 = atomic_exchange((*(v39 + 16) + 128), v38);
      v41 = *(v6 + 124);
      if (v40 == 0x80000000 || v41 != 0)
      {
        v43 = v41 + 1;
        *(v6 + 124) = v43;
        if (v43 >= *(v6 + 120))
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

    IPC::StreamClientConnectionBuffer::tryAcquire(v6 + 72, &v52, v9);
    if ((v54 & 1) == 0)
    {
      goto LABEL_53;
    }

    v11 = v52;
    v12 = v53;
    *&buf[16] = v53;
    if (v53 <= 1)
    {
      goto LABEL_80;
    }

    *v52 = 1050;
    *buf = v11 + 1;
    *&buf[8] = v12 - 2;
    IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(buf, a2);
    if (!*buf)
    {
      break;
    }

    v13 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
    {
      v13 = 16;
    }

    v14 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v6 + 72);
    if (v14 + 16 >= v15)
    {
      v14 = 0;
    }

    v16 = v14 + v13;
    if (v15 <= v16)
    {
      v16 = 0;
    }

    *(v6 + 88) = v16;
    v17 = *(v6 + 80);
    if (*(v17 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v17 + 16) + 128), v16) == 0x80000000 || *(v6 + 124))
      {
        if (*(v6 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v6 + 100));
        }

        *(v6 + 124) = 0;
      }

      goto LABEL_56;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v46 = *(this + 440);
    if (!v46)
    {
      return;
    }

    v47 = *(v46 + 8);
    if (!v47)
    {
      return;
    }

    ++*(v47 + 5);
    v48 = WebKit::RemoteRenderingBackendProxy::connection(v47, v5, buf);
    v6 = *buf;
    if (*(v47 + 5) == 1)
    {
      (*(*v47 + 24))(v47, v48);
      if (!v6)
      {
        return;
      }
    }

    else
    {
      --*(v47 + 5);
      if (!v6)
      {
        return;
      }
    }

    atomic_fetch_add(v6, 1u);
    v4 = *(this + 439);
    *(this + 439) = v6;
    if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      IPC::StreamClientConnection::operator delete(v4);
    }
  }

  if ((v54 & 1) == 0)
  {
    goto LABEL_59;
  }

  if (v53 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1C1D1CLL);
  }

  *v52 = 3197;
  v18 = (*(v6 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v6 + 72);
  if (v18 + 16 >= v19)
  {
    v18 = 0;
  }

  v20 = v18 + 16;
  v21 = v19 <= v20 ? 0 : v20;
  *(v6 + 88) = v21;
  v22 = *(v6 + 80);
  if (*(v22 + 8) <= 0xFFuLL)
  {
    goto LABEL_59;
  }

  atomic_exchange((*(v22 + 16) + 128), v21);
  *(v6 + 124) = 0;
  v23 = *(v6 + 8);
  v24 = IPC::Encoder::operator new(0x238, v5);
  *v24 = 1050;
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 1) = v7;
  *(v24 + 68) = 0;
  *(v24 + 70) = 0;
  *(v24 + 69) = 0;
  IPC::Encoder::encodeHeader(v24);
  *buf = v24;
  IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v24, a2);
  v26 = IPC::Connection::sendMessageImpl(v23, buf, 1, 0);
  v27 = *buf;
  *buf = 0;
  if (v27)
  {
    IPC::Encoder::~Encoder(v27, v25);
    bmalloc::api::tzoneFree(v28, v29);
    if (!v26)
    {
      goto LABEL_56;
    }
  }

  else if (!v26)
  {
    goto LABEL_56;
  }

LABEL_53:
  v44 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v45 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_BeginPage";
    *&buf[12] = 2082;
    *&buf[14] = v45;
    _os_log_impl(&dword_19D52D000, v44, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
LABEL_56:
  if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    IPC::StreamClientConnection::operator delete(v6);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::endPage(WebKit::RemoteDisplayListRecorderProxy *this, __int128 *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(this, a2);
  v5 = *(this + 439);
  if (!v5)
  {
    goto LABEL_44;
  }

  atomic_fetch_add(v5, 1u);
  while (1)
  {
    if ((*(this + 3584) & 1) == 0)
    {
      v3 = *(this + 443);
      if (v3)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v3, *(this + 442), v36);
        v3 = *v36;
        if (*v36)
        {
          v3 = WebKit::RemoteImageBufferProxy::ensureBackend(*v36, v33);
          if (v3)
          {
            v3 = (*(*v3 + 168))(v3);
          }

          v35 = *v36;
          *v36 = 0;
          if (v35)
          {
            v3 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v35 + 8), v34);
          }
        }
      }

      *(this + 3584) = 1;
    }

    v6 = *(this + 438);
    v7 = *(v5 + 128);
    v8 = INFINITY;
    if (fabs(v7) != INFINITY)
    {
      WTF::ApproximateTime::now(v3);
      v8 = v7 + v9;
    }

    if (*(v5 + 64) == v6)
    {
      goto LABEL_9;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, v36, v8);
    if (v36[16] != 1)
    {
      break;
    }

    v14 = *&v36[8];
    if (*&v36[8] <= 1uLL)
    {
LABEL_62:
      __break(0xC471u);
      JUMPOUT(0x19E1C2164);
    }

    v15 = *v36;
    **v36 = 3198;
    v16 = v15 + 2;
    if (v14 - 2 < (-v16 & 7 | 8uLL))
    {
      break;
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
      goto LABEL_43;
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
LABEL_9:
    IPC::StreamClientConnectionBuffer::tryAcquire(v5 + 72, v36, v8);
    if (v36[16] != 1)
    {
      break;
    }

    if (*&v36[8] <= 1uLL)
    {
      goto LABEL_62;
    }

    **v36 = 1080;
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

      goto LABEL_40;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    v30 = *(this + 440);
    if (!v30)
    {
      return;
    }

    v31 = *(v30 + 8);
    if (!v31)
    {
      return;
    }

    ++*(v31 + 5);
    v32 = WebKit::RemoteRenderingBackendProxy::connection(v31, v4, v36);
    v5 = *v36;
    if (*(v31 + 5) == 1)
    {
      (*(*v31 + 24))(v31, v32);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      --*(v31 + 5);
      if (!v5)
      {
        return;
      }
    }

    atomic_fetch_add(v5, 1u);
    v3 = *(this + 439);
    *(this + 439) = v5;
    if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  v28 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v29 = IPC::errorAsString();
    *v36 = 136446466;
    *&v36[4] = "RemoteDisplayListRecorder_EndPage";
    *&v36[12] = 2082;
    *&v36[14] = v29;
    _os_log_impl(&dword_19D52D000, v28, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", v36, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
LABEL_40:
  if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    IPC::StreamClientConnection::operator delete(v5);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::setURLForRect(WebKit::RemoteDisplayListRecorderProxy *this, const WTF::URL *a2, const WebCore::FloatRect *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = WebKit::RemoteDisplayListRecorderProxy::appendStateChangeItemIfNecessary(this, a2);
  v8 = *(this + 439);
  if (!v8)
  {
    goto LABEL_60;
  }

  atomic_fetch_add(v8, 1u);
  while (1)
  {
    if ((*(this + 3584) & 1) == 0)
    {
      v6 = *(this + 443);
      if (v6)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v6, *(this + 442), buf);
        v6 = *buf;
        if (*buf)
        {
          v6 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v51);
          if (v6)
          {
            v6 = (*(*v6 + 168))(v6);
          }

          v53 = *buf;
          *buf = 0;
          if (v53)
          {
            v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v53 + 8), v52);
          }
        }
      }

      *(this + 3584) = 1;
    }

    v9 = *(this + 438);
    v10 = *(v8 + 128);
    v11 = INFINITY;
    if (fabs(v10) != INFINITY)
    {
      WTF::ApproximateTime::now(v6);
      v11 = v10 + v12;
    }

    if (*(v8 + 64) != v9)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, buf, v11);
      if (buf[16] != 1)
      {
        goto LABEL_53;
      }

      v32 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_80:
        __break(0xC471u);
        JUMPOUT(0x19E1C2704);
      }

      v33 = *buf;
      **buf = 3198;
      v34 = v33 + 2;
      if (v32 - 2 < (-v34 & 7 | 8uLL))
      {
        goto LABEL_53;
      }

      v35 = -v34 & 7;
      *(v34 + v35) = v9;
      v36 = 6;
      if (v35 > 6)
      {
        v36 = v35;
      }

      v37 = v36 + 10;
      v38 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v39 = *(v8 + 72);
      if (v38 + 16 >= v39)
      {
        v38 = 0;
      }

      v40 = v37 + v38;
      if (v39 <= v40)
      {
        v40 = 0;
      }

      *(v8 + 88) = v40;
      v41 = *(v8 + 80);
      if (*(v41 + 8) <= 0xFFuLL)
      {
        goto LABEL_59;
      }

      v42 = atomic_exchange((*(v41 + 16) + 128), v40);
      v43 = *(v8 + 124);
      if (v42 == 0x80000000 || v43 != 0)
      {
        v45 = v43 + 1;
        *(v8 + 124) = v45;
        if (v45 >= *(v8 + 120))
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

    IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v54, v11);
    if ((v56 & 1) == 0)
    {
      goto LABEL_53;
    }

    v13 = v54;
    v14 = v55;
    *&buf[16] = v55;
    if (v55 <= 1)
    {
      goto LABEL_80;
    }

    *v54 = 1134;
    *buf = v13 + 1;
    *&buf[8] = v14 - 2;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(buf, a2);
    IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(buf, a3);
    if (!*buf)
    {
      break;
    }

    v15 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
    {
      v15 = 16;
    }

    v16 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v8 + 72);
    if (v16 + 16 >= v17)
    {
      v16 = 0;
    }

    v18 = v16 + v15;
    if (v17 <= v18)
    {
      v18 = 0;
    }

    *(v8 + 88) = v18;
    v19 = *(v8 + 80);
    if (*(v19 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v19 + 16) + 128), v18) == 0x80000000 || *(v8 + 124))
      {
        if (*(v8 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v8 + 100));
        }

        *(v8 + 124) = 0;
      }

      goto LABEL_56;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v48 = *(this + 440);
    if (!v48)
    {
      return;
    }

    v49 = *(v48 + 8);
    if (!v49)
    {
      return;
    }

    ++*(v49 + 5);
    v50 = WebKit::RemoteRenderingBackendProxy::connection(v49, v7, buf);
    v8 = *buf;
    if (*(v49 + 5) == 1)
    {
      (*(*v49 + 24))(v49, v50);
      if (!v8)
      {
        return;
      }
    }

    else
    {
      --*(v49 + 5);
      if (!v8)
      {
        return;
      }
    }

    atomic_fetch_add(v8, 1u);
    v6 = *(this + 439);
    *(this + 439) = v8;
    if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      IPC::StreamClientConnection::operator delete(v6);
    }
  }

  if ((v56 & 1) == 0)
  {
    goto LABEL_59;
  }

  if (v55 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1C2724);
  }

  *v54 = 3197;
  v20 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v8 + 72);
  if (v20 + 16 >= v21)
  {
    v20 = 0;
  }

  v22 = v20 + 16;
  v23 = v21 <= v22 ? 0 : v22;
  *(v8 + 88) = v23;
  v24 = *(v8 + 80);
  if (*(v24 + 8) <= 0xFFuLL)
  {
    goto LABEL_59;
  }

  atomic_exchange((*(v24 + 16) + 128), v23);
  *(v8 + 124) = 0;
  v25 = *(v8 + 8);
  v26 = IPC::Encoder::operator new(0x238, v7);
  *v26 = 1134;
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 1) = v9;
  *(v26 + 68) = 0;
  *(v26 + 70) = 0;
  *(v26 + 69) = 0;
  IPC::Encoder::encodeHeader(v26);
  *buf = v26;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v26, a2);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v26, a3);
  v28 = IPC::Connection::sendMessageImpl(v25, buf, 1, 0);
  v29 = *buf;
  *buf = 0;
  if (v29)
  {
    IPC::Encoder::~Encoder(v29, v27);
    bmalloc::api::tzoneFree(v30, v31);
    if (!v28)
    {
      goto LABEL_56;
    }
  }

  else if (!v28)
  {
    goto LABEL_56;
  }

LABEL_53:
  v46 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v47 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_SetURLForRect";
    *&buf[12] = 2082;
    *&buf[14] = v47;
    _os_log_impl(&dword_19D52D000, v46, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 440));
LABEL_56:
  if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    IPC::StreamClientConnection::operator delete(v8);
  }
}

uint64_t WebKit::RemoteDisplayListRecorderProxy::recordResourceUse(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 8);
    if (v2)
    {
      ++v2[5];
      result = WebKit::RemoteResourceCacheProxy::recordGradientUse((v2 + 22), a2);
      if (v2[5] == 1)
      {
        v3 = *(*v2 + 24);

        return v3(v2);
      }

      else
      {
        --v2[5];
      }
    }
  }

  return result;
}

void WebKit::RemoteDisplayListRecorderProxy::createImageBuffer(WebCore::GraphicsContext *a1@<X0>, uint64_t *a2@<X1>, CFTypeRef *a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, __int16 a6@<W5>, void *a7@<X8>, float a8@<S0>)
{
  v9 = *(a1 + 440);
  if (v9 && (v10 = *(v9 + 8)) != 0)
  {
    ++*(v10 + 20);
    if ((a5 & 0x100) != 0)
    {
      WebCore::GraphicsContext::createImageBuffer();
    }

    else
    {
      v16 = WebCore::GraphicsContext::renderingModeForCompatibleBuffer(a1);
      if ((a4 & 0x100) != 0)
      {
        v17 = a4;
      }

      else
      {
        v17 = v16;
      }

      WebKit::RemoteRenderingBackendProxy::createImageBuffer(v10, a2, v17, 0, a3, a6, a7, a8);
    }

    if (*(v10 + 20) == 1)
    {
      v18 = *(*v10 + 24);

      v18(v10);
    }

    else
    {
      --*(v10 + 20);
    }
  }

  else
  {
    *a7 = 0;
  }
}

uint64_t WebKit::RemoteDisplayListRecorderProxy::createAlignedImageBuffer(WebCore::GraphicsContext *this, uint64_t a2, uint64_t a3, __int16 a4)
{
  if ((a4 & 0x100) == 0)
  {
    WebCore::GraphicsContext::renderingModeForCompatibleBuffer(this);
  }

  WebCore::GraphicsContext::scaleFactor(this);
  return WebCore::GraphicsContext::createScaledImageBuffer();
}

{
  if ((a4 & 0x100) == 0)
  {
    WebCore::GraphicsContext::renderingModeForCompatibleBuffer(this);
  }

  WebCore::GraphicsContext::scaleFactor(this);
  return WebCore::GraphicsContext::createScaledImageBuffer();
}

atomic_uchar **std::optional<WebCore::GraphicsContextState>::operator=[abi:sn200100]<WebCore::GraphicsContextState&,void>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 312) == 1)
  {
    return WebCore::GraphicsContextState::operator=(a1, a2);
  }

  result = WebCore::GraphicsContextState::GraphicsContextState(a1, a2);
  *(result + 312) = 1;
  return result;
}

void WebKit::RemoteDisplayListRecorderProxy::disconnect(WebKit::RemoteDisplayListRecorderProxy *this)
{
  v2 = *(this + 439);
  *(this + 439) = 0;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2);
    IPC::StreamClientConnection::operator delete(v2);
  }

  v3 = 0;
  atomic_compare_exchange_strong_explicit(this + 3552, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this + 3552);
  }

  v4 = *(this + 445);
  if (v4)
  {
    v4[25] = 1;
    MEMORY[0x19EB16320](*(*v4 + 4));
    std::unique_ptr<WebKit::SharedVideoFrameWriter>::reset[abi:sn200100](this + 445, 0);
  }

  v5 = 1;
  atomic_compare_exchange_strong_explicit(this + 3552, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {

    WTF::Lock::unlockSlow((this + 3552));
  }
}

unsigned int *WebKit::RemoteDisplayListRecorderProxy::abandon(unsigned int **this)
{
  WebKit::RemoteDisplayListRecorderProxy::disconnect(this);
  result = this[440];
  this[440] = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, v2);
  }

  return result;
}

void WebKit::RemoteGraphicsContextGLProxy::create(_BYTE *a1@<X0>, WebKit::WebPage *a2@<X1>, WebKit::RemoteGraphicsContextGLProxy **a3@<X8>)
{
  v5 = WebKit::WebPage::ensureRemoteRenderingBackendProxy(a2);
  ++*(v5 + 5);
  v6 = WTF::RunLoop::mainSingleton(v5);
  WebKit::RemoteGraphicsContextGLProxy::create(a1, v5, v6, a3);
  if (*(v5 + 5) == 1)
  {
    v7 = *(*v5 + 24);

    v7(v5);
  }

  else
  {
    --*(v5 + 5);
  }
}

void WebKit::RemoteGraphicsContextGLProxy::create(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, WebKit::RemoteGraphicsContextGLProxy **a4@<X8>)
{
  if (a1[8] == 1)
  {
    v8 = 50;
  }

  else
  {
    v8 = 21;
  }

  {
    v9 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v16 = v8;
    v9 = WebKit::WebProcess::operator new(0x370, a2);
    WebKit::WebProcess::WebProcess(v9);
    v8 = v16;
    WebKit::WebProcess::singleton(void)::process = v9;
  }

  v10 = INFINITY;
  if (!*(v9 + 800))
  {
    v10 = 15.0;
  }

  IPC::StreamClientConnection::create(v8, &v21, v10);
  if (v24 == 1)
  {
    v11 = v21;
    v21 = 0;
    v18 = v11;
    WTF::MachSendRight::MachSendRight();
    WTF::MachSendRight::MachSendRight();
    v20[1] = v23[1];
    WebKit::RemoteGraphicsContextGLProxy::platformCreate(a1, &v17);
    v12 = v17;
    WebKit::RemoteRenderingBackendProxy::ensureGPUProcessConnection(a2, v13);
    WebKit::RemoteGraphicsContextGLProxy::initializeIPC(v12, &v18, a2[10], &v19, a3);
    if (a1[8] == 2)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v12);
      (*(*(v12 + 3) + 2288))(v12 + 3);
    }

    WebKit::RemoteGraphicsContextGLProxy::waitUntilInitialized(v12);
    *a4 = v12;
    WTF::MachSendRight::~MachSendRight(v20);
    WTF::MachSendRight::~MachSendRight(&v19);
    v14 = v18;
    v18 = 0;
    if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14);
      IPC::StreamClientConnection::operator delete(v14);
    }

    if (v24)
    {
      WTF::MachSendRight::~MachSendRight(v23);
      WTF::MachSendRight::~MachSendRight(&v22);
      v15 = v21;
      v21 = 0;
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

uint64_t WebKit::RemoteGraphicsContextGLProxy::initializeIPC(uint64_t a1, atomic_uint **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a3;
  WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=((a1 + 88), *a2);
  IPC::StreamClientConnection::open(*a2, a1, a5);
  v9 = WTF::fastMalloc(0x20);
  *v9 = &unk_1F1125120;
  v9[1] = a1;
  v9[2] = &v12;
  v9[3] = a4;
  v11 = v9;
  WTF::callOnMainRunLoopAndWait();
  result = v11;
  if (v11)
  {
    return (*(*v11 + 8))(v11);
  }

  return result;
}

double WebKit::RemoteGraphicsContextGLProxy::waitUntilInitialized(WebKit::RemoteGraphicsContextGLProxy *this)
{
  v1 = *(this + 11);
  if (v1 && (*(this + 96) & 1) == 0)
  {
    atomic_fetch_add(v1, 1u);
    v3 = IPC::StreamClientConnection::waitForAndDispatchImmediately<Messages::RemoteGraphicsContextGLProxy::WasCreated,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v1, *(this + 9), 0);
    v5 = v3;
    if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1);
      result = IPC::StreamClientConnection::operator delete(v1);
      if (!v5)
      {
        return result;
      }
    }

    else if (!v3)
    {
      return result;
    }

    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    v6 = *(*(this + 3) + 2288);

    v6(this + 24);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::RemoteGraphicsContextGLProxy(uint64_t a1)
{
  *(a1 + 16) = 0;
  *a1 = &unk_1F11251E8;
  *(a1 + 8) = 0;
  WebCore::GraphicsContextGL::GraphicsContextGL();
  *a1 = &unk_1F1123C68;
  *(a1 + 24) = &unk_1F1124590;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = IdentifierInternal;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  WebKit::SharedVideoFrameWriter::SharedVideoFrameWriter((a1 + 128), v3);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  return a1;
}

void WebKit::RemoteGraphicsContextGLProxy::~RemoteGraphicsContextGLProxy(WebKit::RemoteGraphicsContextGLProxy *this)
{
  *this = &unk_1F1123C68;
  v2 = (this + 24);
  *(this + 3) = &unk_1F1124590;
  WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteVideoFrameObjectHeapProxy,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = *(this + 18);
  *(this + 18) = 0;
  if (v4)
  {
    std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](this + 144, v4);
  }

  v5 = *(this + 17);
  *(this + 17) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v5);
  }

  std::unique_ptr<IPC::Semaphore>::reset[abi:sn200100](this + 16, 0);
  v7 = *(this + 15);
  if (v7)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v7, v6);
  }

  v8 = *(this + 14);
  if (v8)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v8, v6);
  }

  v9 = *(this + 13);
  if (v9)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v9, v6);
  }

  v10 = *(this + 11);
  *(this + 11) = 0;
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    IPC::StreamClientConnection::operator delete(v10);
  }

  v11 = *(this + 10);
  *(this + 10) = 0;
  if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    WTF::fastFree(v11, v6);
  }

  WebCore::GraphicsContextGL::~GraphicsContextGL(v2);
  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v12);
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(WebKit::RemoteGraphicsContextGLProxy *this)
{
  *(this + 153) = 1;
  result = MEMORY[0x19EB16320](*(*(this + 16) + 4));
  v3 = *(this + 11);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::Connection::invalidate(*(v3 + 8));
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      IPC::StreamClientConnection::operator delete(v3);
    }

    v4 = *(this + 11);
    *(this + 11) = 0;
    if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      IPC::StreamClientConnection::operator delete(v4);
    }

    v5 = *(this + 9);
    v6 = *(this + 10);
    *(this + 10) = 0;
    v7 = WTF::fastMalloc(0x18);
    *v7 = &unk_1F11251C0;
    v7[1] = v5;
    v7[2] = v6;
    v8 = v7;
    WTF::ensureOnMainRunLoop();
    result = v8;
    if (v8)
    {
      return (*(*v8 + 8))(v8);
    }
  }

  return result;
}

void WebKit::SharedVideoFrameWriter::~SharedVideoFrameWriter(WebKit::SharedVideoFrameWriter *this)
{
  v4 = *(this + 2);
  v2 = (this + 16);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](v2, v3);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v5);
  }

  std::unique_ptr<IPC::Semaphore>::reset[abi:sn200100](this, 0);
}

unsigned int **WTF::RefPtr<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>>::operator=(unsigned int **a1, atomic_uint *a2)
{
  if (a2)
  {
    atomic_fetch_add(a2, 1u);
  }

  v3 = *a1;
  *a1 = a2;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }

  return a1;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::supportsExtension(WebKit::RemoteGraphicsContextGLProxy *this, const WTF::StringImpl **a2)
{
  WebKit::RemoteGraphicsContextGLProxy::waitUntilInitialized(this);
  v5 = *(this + 13);
  if (v5)
  {
    v8 = *a2;
    if (*a2 != -1)
    {
      if (!v8)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1C34F0);
      }

      v9 = *(v5 - 8);
      v10 = *(v8 + 4);
      if (v10 < 0x100)
      {
        v11 = WTF::StringImpl::hashSlowCase(v8);
      }

      else
      {
        v11 = v10 >> 8;
      }

      for (i = 0; ; v11 = i + v13)
      {
        v13 = v11 & v9;
        v14 = *(v5 + 8 * (v11 & v9));
        if (v14 != -1)
        {
          if (!v14)
          {
            goto LABEL_2;
          }

          if (WTF::equal(v14, *a2, v4))
          {
            break;
          }
        }

        ++i;
      }

      return 1;
    }

LABEL_29:
    __break(0xC471u);
    JUMPOUT(0x19E1C34D0);
  }

LABEL_2:
  v6 = *(this + 14);
  if (v6)
  {
    v15 = *a2;
    if (*a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1C3510);
    }

    if (v15)
    {
      v16 = *(v6 - 8);
      v17 = *(v15 + 4);
      if (v17 < 0x100)
      {
        v18 = WTF::StringImpl::hashSlowCase(v15);
      }

      else
      {
        v18 = v17 >> 8;
      }

      for (j = 0; ; v18 = j + v20)
      {
        v20 = v18 & v16;
        result = *(v6 + 8 * (v18 & v16));
        if (result != -1)
        {
          if (!result)
          {
            return result;
          }

          if (WTF::equal(result, *a2, v4))
          {
            break;
          }
        }

        ++j;
      }

      return 1;
    }

    goto LABEL_29;
  }

  return 0;
}

void WebKit::RemoteGraphicsContextGLProxy::ensureExtensionEnabled(WebKit::RemoteGraphicsContextGLProxy *this, const WTF::StringImpl **a2)
{
  WebKit::RemoteGraphicsContextGLProxy::waitUntilInitialized(this);
  v5 = *(this + 14);
  if (v5)
  {
    v6 = *a2;
    if (*a2 == -1)
    {
      goto LABEL_33;
    }

    if (!v6)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1C372CLL);
    }

    v7 = *(v5 - 8);
    v8 = *(v6 + 4);
    if (v8 < 0x100)
    {
      v9 = WTF::StringImpl::hashSlowCase(v6);
    }

    else
    {
      v9 = v8 >> 8;
    }

    for (i = 0; ; v9 = i + v11)
    {
      v11 = v9 & v7;
      v12 = *(v5 + 8 * (v9 & v7));
      if (v12 != -1)
      {
        if (!v12)
        {
          return;
        }

        if (WTF::equal(v12, *a2, v4))
        {
          break;
        }
      }

      ++i;
    }

    v13 = (this + 120);
    v14 = *(this + 15);
    if (!v14)
    {
LABEL_13:
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v13, a2, v4, v25);
      v15 = *(this + 11);
      if (!v15)
      {
        return;
      }

      v25[0] = a2;
      atomic_fetch_add(v15, 1u);
      v16 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::EnsureExtensionEnabled,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v15, v25, *(this + 9));
      v17 = v16;
      if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15);
        IPC::StreamClientConnection::operator delete(v15);
        if (!v17)
        {
          return;
        }
      }

      else if (!v16)
      {
        return;
      }

      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
      (*(*(this + 3) + 2288))(this + 24);
      return;
    }

    v18 = *a2;
    if (*a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1C374CLL);
    }

    if (!v18)
    {
LABEL_33:
      __break(0xC471u);
      JUMPOUT(0x19E1C370CLL);
    }

    v19 = *(v14 - 8);
    v20 = *(v18 + 4);
    if (v20 < 0x100)
    {
      v21 = WTF::StringImpl::hashSlowCase(v18);
    }

    else
    {
      v21 = v20 >> 8;
    }

    for (j = 0; ; v21 = j + v23)
    {
      v23 = v21 & v19;
      v24 = *(v14 + 8 * (v21 & v19));
      if (v24 != -1)
      {
        v13 = (this + 120);
        if (!v24)
        {
          goto LABEL_13;
        }

        if (WTF::equal(v24, *a2, v4))
        {
          break;
        }
      }

      ++j;
    }
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::isExtensionEnabled(WebKit::RemoteGraphicsContextGLProxy *this, const WTF::StringImpl **a2)
{
  WebKit::RemoteGraphicsContextGLProxy::waitUntilInitialized(this);
  v5 = *(this + 13);
  if (v5)
  {
    v8 = *a2;
    if (*a2 != -1)
    {
      if (!v8)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1C38C0);
      }

      v9 = *(v5 - 8);
      v10 = *(v8 + 4);
      if (v10 < 0x100)
      {
        v11 = WTF::StringImpl::hashSlowCase(v8);
      }

      else
      {
        v11 = v10 >> 8;
      }

      for (i = 0; ; v11 = i + v13)
      {
        v13 = v11 & v9;
        v14 = *(v5 + 8 * (v11 & v9));
        if (v14 != -1)
        {
          if (!v14)
          {
            goto LABEL_2;
          }

          if (WTF::equal(v14, *a2, v4))
          {
            break;
          }
        }

        ++i;
      }

      return 1;
    }

LABEL_29:
    __break(0xC471u);
    JUMPOUT(0x19E1C38A0);
  }

LABEL_2:
  v6 = *(this + 15);
  if (v6)
  {
    v15 = *a2;
    if (*a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1C38E0);
    }

    if (v15)
    {
      v16 = *(v6 - 8);
      v17 = *(v15 + 4);
      if (v17 < 0x100)
      {
        v18 = WTF::StringImpl::hashSlowCase(v15);
      }

      else
      {
        v18 = v17 >> 8;
      }

      for (j = 0; ; v18 = j + v20)
      {
        v20 = v18 & v16;
        result = *(v6 + 8 * (v18 & v16));
        if (result != -1)
        {
          if (!result)
          {
            return result;
          }

          if (WTF::equal(result, *a2, v4))
          {
            break;
          }
        }

        ++j;
      }

      return 1;
    }

    goto LABEL_29;
  }

  return 0;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::externalImageTextureBindingPoint(WebKit::RemoteGraphicsContextGLProxy *this)
{
  if (*(this + 11))
  {
    return *(this + 21);
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toWebKit::RemoteGraphicsContextGLProxy::externalImageTextureBindingPoint(WebKit::RemoteGraphicsContextGLProxy *this)
{
  if (*(this + 8))
  {
    return *(this + 18);
  }

  else
  {
    return 0;
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::reshape(uint64_t this, int a2, int a3)
{
  if (*(this + 88))
  {
    v3 = this;
    *(this + 36) = a2;
    *(this + 40) = a3;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Reshape>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Reshape>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Reshape,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Reshape,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

IPC::Decoder *WebKit::RemoteGraphicsContextGLProxy::drawSurfaceBufferToImageBuffer(IPC::Decoder *result, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(result + 11))
  {
    v5 = result;
    (*(*a3 + 24))(a3);
    v8 = a3[15];
    v9[0] = a2;
    v10 = &v8;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::DrawSurfaceBufferToImageBuffer>(v5, v9, &v11);
    if (!v12 || (WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5), result = (*(*(v5 + 3) + 2288))(v5 + 3), !v12))
    {
      result = v11;
      v11 = 0;
      if (result)
      {
        IPC::Decoder::~Decoder(result);
        return bmalloc::api::tzoneFree(v6, v7);
      }
    }
  }

  return result;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::DrawSurfaceBufferToImageBuffer>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::DrawSurfaceBufferToImageBuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::DrawSurfaceBufferToImageBuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

void WebKit::RemoteGraphicsContextGLProxy::surfaceBufferToVideoFrame(WebKit::RemoteGraphicsContextGLProxy *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if (!*(a1 + 11))
  {
    *a3 = 0;
    return;
  }

  LOBYTE(v20[0]) = a2;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::SurfaceBufferToVideoFrame>(a1, v20, &v21);
  if (v26)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(a1);
    (*(*(a1 + 3) + 2288))(a1 + 3);
  }

  else
  {
    v20[0] = v22;
    v20[1] = v23;
    v20[2] = v24;
    v20[3] = v25;
    if (BYTE8(v25))
    {
      {
        v6 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v17 = WebKit::WebProcess::operator new(0x370, v5);
        v6 = WebKit::WebProcess::WebProcess(v17);
        WebKit::WebProcess::singleton(void)::process = v6;
      }

      v8 = WebKit::WebProcess::ensureGPUProcessConnection(v6)[4];
      {
        v9 = WebKit::WebProcess::singleton(void)::process;
      }

      else
      {
        v18 = WebKit::WebProcess::operator new(0x370, v7);
        v9 = WebKit::WebProcess::WebProcess(v18);
        WebKit::WebProcess::singleton(void)::process = v9;
      }

      WebKit::WebProcess::ensureProtectedGPUProcessConnection(v9, &v19);
      v10 = WebKit::GPUProcessConnection::videoFrameObjectHeapProxy(v19);
      atomic_fetch_add(v10, 1u);
      v12 = WebKit::RemoteVideoFrameProxy::operator new(0x88, v11);
      *a3 = WebKit::RemoteVideoFrameProxy::RemoteVideoFrameProxy(v12, v8, v10, v20);
      WTF::ThreadSafeRefCounted<WebKit::RemoteVideoFrameObjectHeapProxy,(WTF::DestructionThread)2>::deref(v10);
      if (v19)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v19 + 3, v13);
      }

      goto LABEL_13;
    }
  }

  *a3 = 0;
LABEL_13:
  if (!v26)
  {
    v14 = v21;
    v21 = 0;
    if (v14)
    {
      IPC::Decoder::~Decoder(v14);
      bmalloc::api::tzoneFree(v15, v16);
    }
  }
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::SurfaceBufferToVideoFrame>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::SurfaceBufferToVideoFrame,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::SurfaceBufferToVideoFrame,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::copyTextureFromVideoFrame(WebKit::RemoteGraphicsContextGLProxy *this, WebCore::VideoFrame *a2, int a3, int a4, int a5, int a6, int a7, int a8, BOOL a9, BOOL a10)
{
  v38 = a3;
  if (!*(this + 11) || (++*(this + 8), v17 = WTF::fastMalloc(0x18), *v17 = &unk_1F1125148, v17[1] = this, v17[2] = this, v24[0] = v17, ++*(this + 8), v18 = WTF::fastMalloc(0x18), *v18 = &unk_1F1125170, *(v18 + 1) = this, *(v18 + 2) = this, v32 = v18, WebKit::SharedVideoFrameWriter::write(this + 128, a2, v24, &v32, v35), (*(*v18 + 8))(v18), (*(*v17 + 8))(v17), v37 != 1))
  {
    v20 = 0;
    return v20 & 1;
  }

  v19 = *(this + 11);
  if (!v19)
  {
    v20 = 0;
LABEL_14:
    if (v36[16] == 2)
    {
      WTF::MachSendRight::~MachSendRight(v36);
    }

    return v20 & 1;
  }

  v24[0] = v35;
  v24[1] = &v38;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v30 = a9;
  v31 = a10;
  atomic_fetch_add(v19, 1u);
  IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::CopyTextureFromVideoFrame,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(&v32, v19, v24, *(this + 9));
  if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v19);
    IPC::StreamClientConnection::operator delete(v19);
  }

  if (v34)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v20 = 0;
  }

  else
  {
    v20 = v33;
    if (v32)
    {
      IPC::Decoder::~Decoder(v32);
      bmalloc::api::tzoneFree(v22, v23);
    }
  }

  if (v37)
  {
    goto LABEL_14;
  }

  return v20 & 1;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::videoFrameToImage@<X0>(uint64_t this@<X0>, WebCore::VideoFrame *a2@<X1>, void *a3@<X8>)
{
  if (*(this + 88))
  {
    v4 = this;
    v10 = 0;
    v5 = WTF::fastMalloc(0x20);
    *v5 = &unk_1F1125198;
    v5[1] = &v10;
    v5[2] = v4;
    v5[3] = a2;
    v9 = v5;
    WTF::callOnMainRunLoopAndWait();
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    WebCore::BitmapImage::create();
    this = v10;
    v10 = 0;
    if (this)
    {
      do
      {
        v7 = *(this + 8);
        if ((v7 & 1) == 0)
        {
          return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(*(this + 8), v6);
        }

        v8 = *(this + 8);
        atomic_compare_exchange_strong_explicit((this + 8), &v8, v7 - 2, memory_order_relaxed, memory_order_relaxed);
      }

      while (v8 != v7);
      if (v7 == 3)
      {
        return (*(*this + 8))(this);
      }
    }
  }

  else
  {
    *a3 = 0;
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getErrors(WebKit::RemoteGraphicsContextGLProxy *this)
{
  v1 = *(this + 11);
  if (!v1)
  {
    return 0;
  }

  atomic_fetch_add(v1, 1u);
  IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetErrors,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(&v7, v1, *(this + 9));
  if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1);
    IPC::StreamClientConnection::operator delete(v1);
  }

  if (v9)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    return 0;
  }

  v3 = v8;
  if (v7)
  {
    IPC::Decoder::~Decoder(v7);
    bmalloc::api::tzoneFree(v5, v6);
  }

  return v3;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::simulateEventForTesting(uint64_t result, char a2)
{
  if (*(result + 88))
  {
    v2 = result;
    v3 = a2;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::SimulateEventForTesting>(result, &v3);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::SimulateEventForTesting>(uint64_t a1, char *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SimulateEventForTesting,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SimulateEventForTesting,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getBufferSubData(uint64_t result, int a2, char *a3, char *a4, unint64_t a5)
{
  if (*(result + 88))
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return result;
  }

  v6 = a5;
  v10 = result;
  if (a5 <= 0x10000 || (a5 >= 0x6400000 ? (v11 = 104857600) : (v11 = a5), result = WebCore::SharedMemory::allocate(v11), !v34))
  {
LABEL_37:
    if (!v6)
    {
      return result;
    }

    while (1)
    {
      if (v6 >= 0x10000)
      {
        v18 = 0x10000;
      }

      else
      {
        v18 = v6;
      }

      v31 = a2;
      v32 = a3;
      v33 = v18;
      v19 = *(v10 + 11);
      if (v19)
      {
        atomic_fetch_add(v19, 1u);
        IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetBufferSubDataInline,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(&v24, v19, &v31, *(v10 + 9));
        if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v19);
          IPC::StreamClientConnection::operator delete(v19);
        }
      }

      else
      {
        IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetBufferSubDataInline,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(&v24, 0, &v31, *(v10 + 9));
      }

      if (v27)
      {
        WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v10);
        return (*(*(v10 + 3) + 2288))();
      }

      v20 = v26;
      v21 = v26 != 0;
      if (v26)
      {
        if (v18 != v26)
        {
          goto LABEL_59;
        }

        result = memmove(a4, __src, v18);
        v6 -= v18;
        a4 += v18;
        a3 += v18;
        if (v27)
        {
          break;
        }
      }

      result = v24;
      if (!v24)
      {
        goto LABEL_50;
      }

      IPC::Decoder::~Decoder(v24);
      result = bmalloc::api::tzoneFree(v22, v23);
      if (!v20)
      {
        return result;
      }

LABEL_51:
      if (!v6)
      {
        return result;
      }
    }

    v21 = 1;
LABEL_50:
    if (!v21)
    {
      return result;
    }

    goto LABEL_51;
  }

  while (1)
  {
    result = v34;
    if (!v6)
    {
      break;
    }

    WebCore::SharedMemory::createHandle();
    v12 = v33;
    if (v33 != 1)
    {
      goto LABEL_32;
    }

    if (v6 >= 0x6400000)
    {
      v13 = 104857600;
    }

    else
    {
      v13 = v6;
    }

    LODWORD(v24) = a2;
    __src = a3;
    v26 = v13;
    v27 = &v31;
    v14 = *(v10 + 11);
    if (v14)
    {
      atomic_fetch_add(v14, 1u);
      IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetBufferSubDataSharedMemory,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(&v28, v14, &v24, *(v10 + 9));
      if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v14);
        IPC::StreamClientConnection::operator delete(v14);
      }
    }

    else
    {
      IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetBufferSubDataSharedMemory,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(&v28, 0, &v24, *(v10 + 9));
    }

    if (v30)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v10);
      (*(*(v10 + 3) + 2288))(v10 + 3);
      v15 = 1;
    }

    else
    {
      if ((v29 & 1) == 0)
      {
        v15 = 1;
LABEL_25:
        if (v28)
        {
          IPC::Decoder::~Decoder(v28);
          bmalloc::api::tzoneFree(v16, v17);
        }

        goto LABEL_27;
      }

      if (*(v34 + 8) < v13)
      {
        __break(1u);
LABEL_59:
        result = 328;
        __break(0xC471u);
        return result;
      }

      memmove(a4, *(v34 + 16), v13);
      v15 = 0;
      v6 -= v13;
      a4 += v13;
      a3 += v13;
      if (!v30)
      {
        goto LABEL_25;
      }
    }

LABEL_27:
    if (v33)
    {
      WTF::MachSendRight::~MachSendRight(&v31);
    }

    if (v15)
    {
LABEL_32:
      result = v34;
      goto LABEL_34;
    }
  }

  v12 = 1;
LABEL_34:
  v34 = 0;
  if (result)
  {
    result = WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(result);
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_37;
  }

  return result;
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::readPixels(WebKit::RemoteGraphicsContextGLProxy *result, uint64_t a2, unint64_t a3, WebCore::GraphicsContextGL *this, int a5, int a6, unint64_t a7, int a8, int a9, char a10)
{
  v55 = a2;
  v56 = a3;
  if (!*(result + 11))
  {
    return result;
  }

  v13 = this;
  v14 = a3;
  v16 = result;
  v17 = HIDWORD(a3);
  v18 = WebCore::GraphicsContextGL::computeBytesPerGroup(this);
  v19 = v18;
  if (a9 <= 0)
  {
    v20 = v14;
  }

  else
  {
    v20 = a9;
  }

  v21 = a8 + v18 * v20;
  if ((a2 & 0x80000000) != 0)
  {
    v22 = -a2;
    v14 = (v14 + a2) & ~((v14 + a2) >> 31);
    LODWORD(v55) = 0;
    LODWORD(v56) = v14;
  }

  else
  {
    v22 = 0;
  }

  v23 = v21 - 1;
  if (a2 < 0)
  {
    v24 = -HIDWORD(a2);
    LODWORD(v17) = (v17 + HIDWORD(a2)) & ~((v17 + HIDWORD(a2)) >> 31);
    HIDWORD(v55) = 0;
    HIDWORD(v56) = v17;
  }

  else
  {
    v24 = 0;
  }

  v25 = v23 & -a8;
  if (v14 >= 1 && v17 >= 1)
  {
    if (v22 | v24)
    {
      v26 = v22 * v18 + v24 * v25;
      v27 = a7 >= v26;
      a7 -= v26;
      if (!v27)
      {
        __break(1u);
        goto LABEL_59;
      }
    }
  }

  v14 *= v18;
  v28 = (v17 * v14);
  if (v28 <= 0x10000)
  {
    goto LABEL_41;
  }

  WebCore::SharedMemory::allocate(v28);
  if (!v54)
  {
    goto LABEL_41;
  }

  WebCore::SharedMemory::createHandle();
  v29 = v53;
  if (v53 == 1)
  {
    v40 = v25;
    v47 = &v55;
    v48 = v13;
    v49 = a5;
    v50 = a10 != 0;
    v51 = v52;
    v30 = *(v16 + 11);
    if (v30)
    {
      atomic_fetch_add(v30, 1u);
      IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::ReadPixelsSharedMemory,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(&v41, v30, &v47, *(v16 + 9));
      if (atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v30);
        IPC::StreamClientConnection::operator delete(v30);
      }
    }

    else
    {
      IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::ReadPixelsSharedMemory,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(&v41, 0, &v47, *(v16 + 9));
    }

    if (v44)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v16);
      (*(*(v16 + 3) + 2288))(v16 + 3);
      v25 = v40;
    }

    else
    {
      v25 = v40;
      if ((v43 & 1) != 0 && v42 >= 1)
      {
        v31 = HIDWORD(v42) - 1;
        if (SHIDWORD(v42) >= 1)
        {
          v32 = v19 * v42;
          if (v19 * v42)
          {
            if (*(v54 + 1) >= (v32 + v31 * v14) && a7 >= v32 + v31 * v40 && (!(v42 >> 33) || v14 >= v32 && v40 >= v32))
            {
              WebCore::copyRowsInternal();
            }
          }
        }
      }

      if (v41)
      {
        IPC::Decoder::~Decoder(v41);
        bmalloc::api::tzoneFree(v38, v39);
      }
    }

    if (v53)
    {
      WTF::MachSendRight::~MachSendRight(v52);
    }
  }

  result = v54;
  v54 = 0;
  if (result)
  {
    result = WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(result);
  }

  if ((v29 & 1) == 0)
  {
LABEL_41:
    v47 = &v55;
    v48 = v13;
    v49 = a5;
    v50 = a10 != 0;
    v33 = *(v16 + 11);
    if (v33)
    {
      atomic_fetch_add(v33, 1u);
      IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::ReadPixelsInline,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(&v41, v33, &v47, *(v16 + 9));
      if (atomic_fetch_add(v33, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v33);
        IPC::StreamClientConnection::operator delete(v33);
      }

      goto LABEL_44;
    }

LABEL_59:
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::ReadPixelsInline,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(&v41, 0, &v47, *(v16 + 9));
LABEL_44:
    if (v46)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v16);
      return (*(*(v16 + 3) + 2288))(v16 + 3);
    }

    else
    {
      if ((v43 & 1) != 0 && v42 >= 1)
      {
        v34 = HIDWORD(v42) - 1;
        if (SHIDWORD(v42) >= 1)
        {
          v35 = v19 * v42;
          if (v19 * v42)
          {
            if (v45 >= v35 + v34 * v14 && a7 >= v35 + v34 * v25 && (!(v42 >> 33) || v14 >= v35 && v25 >= v35))
            {
              WebCore::copyRowsInternal();
            }
          }
        }
      }

      result = v41;
      if (v41)
      {
        IPC::Decoder::~Decoder(v41);
        return bmalloc::api::tzoneFree(v36, v37);
      }
    }
  }

  return result;
}

double WebKit::RemoteGraphicsContextGLProxy::multiDrawArraysANGLE(WebKit::RemoteGraphicsContextGLProxy *a1, int a2, uint64_t *a3, double result)
{
  v4 = *(a1 + 11);
  if (v4)
  {
    v6 = *(a3 + 1);
    v7 = *a3;
    v11 = 0uLL;
    v10 = v7;
    if (v7)
    {
      v11 = v6;
    }

    v12 = a2;
    v13 = &v10;
    atomic_fetch_add(v4, 1u);
    v8 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::MultiDrawArraysANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v4, &v12, *(a1 + 9));
    v9 = v8;
    if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      result = IPC::StreamClientConnection::operator delete(v4);
      if (!v9)
      {
        return result;
      }
    }

    else if (!v8)
    {
      return result;
    }

    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(a1);
    (*(*(a1 + 3) + 2288))(a1 + 3);
  }

  return result;
}

double WebKit::RemoteGraphicsContextGLProxy::multiDrawArraysInstancedANGLE(WebKit::RemoteGraphicsContextGLProxy *a1, int a2, uint64_t *a3, double result)
{
  v4 = *(a1 + 11);
  if (v4)
  {
    v6 = *(a3 + 1);
    v7 = a3[3];
    v10 = *a3;
    v11 = 0uLL;
    v12 = 0;
    if (v10)
    {
      v11 = v6;
      v12 = v7;
    }

    v13 = a2;
    v14 = &v10;
    atomic_fetch_add(v4, 1u);
    v8 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::MultiDrawArraysInstancedANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v4, &v13, *(a1 + 9));
    v9 = v8;
    if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      result = IPC::StreamClientConnection::operator delete(v4);
      if (!v9)
      {
        return result;
      }
    }

    else if (!v8)
    {
      return result;
    }

    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(a1);
    (*(*(a1 + 3) + 2288))(a1 + 3);
  }

  return result;
}

double WebKit::RemoteGraphicsContextGLProxy::multiDrawElementsANGLE(WebKit::RemoteGraphicsContextGLProxy *a1, int a2, uint64_t *a3, int a4, double result)
{
  v5 = *(a1 + 11);
  if (v5)
  {
    v7 = *(a3 + 1);
    v8 = *a3;
    v12 = 0uLL;
    v11 = v8;
    if (v8)
    {
      v12 = v7;
    }

    v13 = a2;
    v14 = &v11;
    v15 = a4;
    atomic_fetch_add(v5, 1u);
    v9 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::MultiDrawElementsANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v5, &v13, *(a1 + 9));
    v10 = v9;
    if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5);
      result = IPC::StreamClientConnection::operator delete(v5);
      if (!v10)
      {
        return result;
      }
    }

    else if (!v9)
    {
      return result;
    }

    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(a1);
    (*(*(a1 + 3) + 2288))(a1 + 3);
  }

  return result;
}

double WebKit::RemoteGraphicsContextGLProxy::multiDrawElementsInstancedANGLE(WebKit::RemoteGraphicsContextGLProxy *a1, int a2, uint64_t *a3, int a4, double result)
{
  v5 = *(a1 + 11);
  if (v5)
  {
    v7 = *(a3 + 1);
    v8 = a3[3];
    v11 = *a3;
    v12 = 0uLL;
    v13 = 0;
    if (v11)
    {
      v12 = v7;
      v13 = v8;
    }

    v14 = a2;
    v15 = &v11;
    v16 = a4;
    atomic_fetch_add(v5, 1u);
    v9 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::MultiDrawElementsInstancedANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v5, &v14, *(a1 + 9));
    v10 = v9;
    if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5);
      result = IPC::StreamClientConnection::operator delete(v5);
      if (!v10)
      {
        return result;
      }
    }

    else if (!v9)
    {
      return result;
    }

    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(a1);
    (*(*(a1 + 3) + 2288))(a1 + 3);
  }

  return result;
}

double WebKit::RemoteGraphicsContextGLProxy::multiDrawArraysInstancedBaseInstanceANGLE(WebKit::RemoteGraphicsContextGLProxy *a1, int a2, uint64_t *a3, double result)
{
  v4 = *(a1 + 11);
  if (v4)
  {
    v6 = *(a3 + 1);
    v7 = *(a3 + 3);
    v10 = *a3;
    v11 = 0u;
    v12 = 0u;
    if (v10)
    {
      v11 = v6;
      v12 = v7;
    }

    v13 = a2;
    v14 = &v10;
    atomic_fetch_add(v4, 1u);
    v8 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::MultiDrawArraysInstancedBaseInstanceANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v4, &v13, *(a1 + 9));
    v9 = v8;
    if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      result = IPC::StreamClientConnection::operator delete(v4);
      if (!v9)
      {
        return result;
      }
    }

    else if (!v8)
    {
      return result;
    }

    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(a1);
    (*(*(a1 + 3) + 2288))(a1 + 3);
  }

  return result;
}

double WebKit::RemoteGraphicsContextGLProxy::multiDrawElementsInstancedBaseVertexBaseInstanceANGLE(WebKit::RemoteGraphicsContextGLProxy *a1, int a2, uint64_t *a3, int a4, double result)
{
  v5 = *(a1 + 11);
  if (v5)
  {
    v7 = *(a3 + 1);
    v8 = *(a3 + 3);
    v9 = a3[5];
    v12 = *a3;
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
    if (v12)
    {
      v13 = v7;
      v14 = v8;
      v15 = v9;
    }

    v16 = a2;
    v17 = &v12;
    v18 = a4;
    atomic_fetch_add(v5, 1u);
    v10 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::MultiDrawElementsInstancedBaseVertexBaseInstanceANGLE,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v5, &v16, *(a1 + 9));
    v11 = v10;
    if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5);
      result = IPC::StreamClientConnection::operator delete(v5);
      if (!v11)
      {
        return result;
      }
    }

    else if (!v10)
    {
      return result;
    }

    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(a1);
    (*(*(a1 + 3) + 2288))(a1 + 3);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::drawBuffers(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  if (*(result + 88))
  {
    v3 = result;
    v4 = v5;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DrawBuffers>(result, &v4);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DrawBuffers>(uint64_t a1, const void ***a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawBuffers,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawBuffers,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::drawBuffersEXT(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  if (*(result + 88))
  {
    v3 = result;
    v4 = v5;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DrawBuffersEXT>(result, &v4);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DrawBuffersEXT>(uint64_t a1, const void ***a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawBuffersEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawBuffersEXT,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::invalidateFramebuffer(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  if (*(result + 88))
  {
    v4 = result;
    v5 = a2;
    v6 = v7;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::InvalidateFramebuffer>(result, &v5);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::InvalidateFramebuffer>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::InvalidateFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::InvalidateFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::invalidateSubFramebuffer(uint64_t result, int a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v15[0] = a3;
  v15[1] = a4;
  if (*(result + 88))
  {
    v8 = result;
    v9 = a2;
    v10 = v15;
    v11 = a5;
    v12 = a6;
    v13 = a7;
    v14 = a8;
    result = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::InvalidateSubFramebuffer>(result, &v9);
    if (result)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v8);
      return (*(*(v8 + 3) + 2288))(v8 + 3);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::InvalidateSubFramebuffer>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::InvalidateSubFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::InvalidateSubFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

void *WebKit::RemoteGraphicsContextGLProxy::wasCreated(void *this, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = this[11];
  if (v4)
  {
    v6 = this;
    if (a4[3])
    {
      atomic_fetch_add(v4, 1u);
      IPC::StreamClientConnection::setSemaphores(v4, a2, a3);
      if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v4);
        IPC::StreamClientConnection::operator delete(v4);
      }

      *(v6 + 96) = 1;
      if (a4[3])
      {
        v7 = *a4;
        if (*a4)
        {
          v8 = *(v7 + 8);
          v9 = *(v7 + 4) | (((*(v7 + 16) >> 2) & 1) << 32);
        }

        else
        {
          v8 = 0;
          v9 = 0x100000000;
        }

        v33 = v8;
        v34 = v9;
        v35 = 32;
        v36 = 0;
        v29 = &v33;
        v30 = 0;
        v32 = v9 == 0;
        WTF::StringView::SplitResult::Iterator::findNextSubstring(&v29);
        v10 = v34;
        for (i = v30; v30 != v10 || !v32; i = v30)
        {
          WTF::StringView::substring(v29, i, v31);
          if ((v12 & 0x100000000) != 0)
          {
            WTF::String::String();
          }

          else
          {
            WTF::String::String();
          }

          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v6 + 13, &v28, v13, v27);
          v15 = v28;
          v28 = 0;
          if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v15, v14);
          }

          WTF::StringView::SplitResult::Iterator::operator++();
        }

        v17 = a4[1];
        if (v17)
        {
          v18 = *(v17 + 8);
          v19 = *(v17 + 4) | (((*(v17 + 16) >> 2) & 1) << 32);
        }

        else
        {
          v18 = 0;
          v19 = 0x100000000;
        }

        v33 = v18;
        v34 = v19;
        v35 = 32;
        v36 = 0;
        v29 = &v33;
        v30 = 0;
        v32 = v19 == 0;
        this = WTF::StringView::SplitResult::Iterator::findNextSubstring(&v29);
        v20 = v34;
        for (j = v30; v30 != v20 || !v32; j = v30)
        {
          WTF::StringView::substring(v29, j, v31);
          if ((v22 & 0x100000000) != 0)
          {
            WTF::String::String();
          }

          else
          {
            WTF::String::String();
          }

          WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v6 + 14, &v28, v23, v27);
          v25 = v28;
          v28 = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v24);
          }

          this = WTF::StringView::SplitResult::Iterator::operator++();
        }

        v6[21] = a4[2];
      }

      else
      {
        v26 = std::__throw_bad_optional_access[abi:sn200100]();
        return WebKit::RemoteGraphicsContextGLProxy::wasLost(v26);
      }
    }

    else
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
      v16 = *(v6[3] + 2288);

      return v16(v6 + 3);
    }
  }

  return this;
}

void *WebKit::RemoteGraphicsContextGLProxy::wasLost(void *this)
{
  if (this[11])
  {
    v1 = this;
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    v2 = *(v1[3] + 2288);

    return v2(v1 + 3);
  }

  return this;
}

void *WebKit::RemoteGraphicsContextGLProxy::addDebugMessage(void *result)
{
  if (result[11])
  {
    result = result[6];
    if (result)
    {
      return (*(*result + 24))();
    }
  }

  return result;
}

uint64_t IPC::StreamClientConnection::waitForAndDispatchImmediately<Messages::RemoteGraphicsContextGLProxy::WasCreated,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 128);
  v7 = INFINITY;
  if (fabs(v6) != INFINITY)
  {
    WTF::ApproximateTime::now(a1);
    v7 = v6 + v8;
  }

  v9 = *(a1 + 8);

  return IPC::Connection::waitForAndDispatchImmediately<Messages::RemoteGraphicsContextGLProxy::WasCreated>(v9, a2, a3, v7);
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::didClose(WebKit::RemoteGraphicsContextGLProxy *this, IPC::Connection *a2)
{
  v3 = *(this + 11);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::Connection::invalidate(*(v3 + 8));
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      IPC::StreamClientConnection::operator delete(v3);
    }

    v5 = *(this + 11);
    *(this + 11) = 0;
    if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5);
      IPC::StreamClientConnection::operator delete(v5);
    }

    v6 = *(this + 10);
    *(this + 10) = 0;
    if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      WTF::fastFree(v6, v4);
    }
  }

  WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
  v7 = *(*(this + 3) + 2288);

  return v7(this + 24);
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::activeTexture(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ActiveTexture>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ActiveTexture>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ActiveTexture,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ActiveTexture,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::attachShader(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::AttachShader>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::AttachShader>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::AttachShader,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::AttachShader,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::bindAttribLocation(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, const WTF::String *a4)
{
  if (*(this + 11))
  {
    v4 = this;
    v5[0] = a2;
    v5[1] = a3;
    v6 = a4;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindAttribLocation>(this, v5);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindAttribLocation>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindAttribLocation,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindAttribLocation,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::bindBuffer(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindBuffer>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindBuffer>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindBuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindBuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::bindFramebuffer(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindFramebuffer>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindFramebuffer>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::bindRenderbuffer(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindRenderbuffer>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindRenderbuffer>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindRenderbuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindRenderbuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::bindTexture(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindTexture>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BindTexture>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindTexture,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BindTexture,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::blendColor(WebKit::RemoteGraphicsContextGLProxy *this, float a2, float a3, float a4, float a5)
{
  if (*(this + 11))
  {
    v5 = this;
    v6[0] = a2;
    v6[1] = a3;
    v6[2] = a4;
    v6[3] = a5;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlendColor>(this, v6);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlendColor>(uint64_t a1, float *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendColor,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendColor,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::blendEquation(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlendEquation>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlendEquation>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendEquation,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendEquation,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::blendEquationSeparate(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlendEquationSeparate>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlendEquationSeparate>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendEquationSeparate,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendEquationSeparate,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::blendFunc(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlendFunc>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlendFunc>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendFunc,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendFunc,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::blendFuncSeparate(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5)
{
  if (*(this + 11))
  {
    v5 = this;
    v6[0] = a2;
    v6[1] = a3;
    v6[2] = a4;
    v6[3] = a5;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlendFuncSeparate>(this, v6);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::BlendFuncSeparate>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendFuncSeparate,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::BlendFuncSeparate,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::checkFramebufferStatus(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v8 = a2;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::CheckFramebufferStatus>(this, &v8, &v9);
  if (v11)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v3 = 0;
    if (v11)
    {
      return v3;
    }
  }

  else
  {
    v3 = v10;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    IPC::Decoder::~Decoder(v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return v3;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::CheckFramebufferStatus>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::CheckFramebufferStatus,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::CheckFramebufferStatus,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::clear(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Clear>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Clear>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Clear,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Clear,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::clearColor(WebKit::RemoteGraphicsContextGLProxy *this, float a2, float a3, float a4, float a5)
{
  if (*(this + 11))
  {
    v5 = this;
    v6[0] = a2;
    v6[1] = a3;
    v6[2] = a4;
    v6[3] = a5;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ClearColor>(this, v6);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ClearColor>(uint64_t a1, float *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearColor,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearColor,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::clearDepth(WebKit::RemoteGraphicsContextGLProxy *this, float a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ClearDepth>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ClearDepth>(uint64_t a1, float *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearDepth,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearDepth,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::clearStencil(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ClearStencil>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ClearStencil>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearStencil,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ClearStencil,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::colorMask(WebKit::RemoteGraphicsContextGLProxy *this, __int16 a2, __int16 a3, __int16 a4, __int16 a5)
{
  if (*(this + 11))
  {
    v5 = this;
    v6.i16[0] = a2;
    v6.i16[1] = a3;
    v6.i16[2] = a4;
    v6.i16[3] = a5;
    v7 = vbic_s8(0x1000100010001, vceqz_s16(v6));
    v8 = vuzp1_s8(v7, v7).u32[0];
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ColorMask>(this, &v8);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ColorMask>(uint64_t a1, char *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ColorMask,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ColorMask,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::compileShader(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CompileShader>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CompileShader>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompileShader,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CompileShader,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::copyTexImage2D(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  if (*(this + 11))
  {
    v9 = this;
    v10[0] = a2;
    v10[1] = a3;
    v10[2] = a4;
    v10[3] = a5;
    v10[4] = a6;
    v10[5] = a7;
    v10[6] = a8;
    v10[7] = a9;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CopyTexImage2D>(this, v10);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v9);
      return (*(*(v9 + 3) + 2288))(v9 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CopyTexImage2D>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CopyTexImage2D,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CopyTexImage2D,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::copyTexSubImage2D(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  if (*(this + 11))
  {
    v9 = this;
    v10[0] = a2;
    v10[1] = a3;
    v10[2] = a4;
    v10[3] = a5;
    v10[4] = a6;
    v10[5] = a7;
    v10[6] = a8;
    v10[7] = a9;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CopyTexSubImage2D>(this, v10);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v9);
      return (*(*(v9 + 3) + 2288))(v9 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CopyTexSubImage2D>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CopyTexSubImage2D,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CopyTexSubImage2D,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::createBuffer(WebKit::RemoteGraphicsContextGLProxy *this)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v2 = *(this + 44);
  v3 = (v2 + 1);
  *(this + 44) = v3;
  v5 = v2 + 1;
  if (WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateBuffer>(this, &v5))
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    return 0;
  }

  return v3;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateBuffer>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateBuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateBuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::createFramebuffer(WebKit::RemoteGraphicsContextGLProxy *this)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v2 = *(this + 44);
  v3 = (v2 + 1);
  *(this + 44) = v3;
  v5 = v2 + 1;
  if (WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateFramebuffer>(this, &v5))
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    return 0;
  }

  return v3;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateFramebuffer>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::createProgram(WebKit::RemoteGraphicsContextGLProxy *this)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v2 = *(this + 44);
  v3 = (v2 + 1);
  *(this + 44) = v3;
  v5 = v2 + 1;
  if (WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateProgram>(this, &v5))
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    return 0;
  }

  return v3;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateProgram>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateProgram,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateProgram,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::createRenderbuffer(WebKit::RemoteGraphicsContextGLProxy *this)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v2 = *(this + 44);
  v3 = (v2 + 1);
  *(this + 44) = v3;
  v5 = v2 + 1;
  if (WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateRenderbuffer>(this, &v5))
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    return 0;
  }

  return v3;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateRenderbuffer>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateRenderbuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateRenderbuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::createShader(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v3 = *(this + 44);
  v4 = (v3 + 1);
  *(this + 44) = v4;
  v6[0] = v3 + 1;
  v6[1] = a2;
  if (WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateShader>(this, v6))
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    return 0;
  }

  return v4;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateShader>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateShader,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateShader,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::createTexture(WebKit::RemoteGraphicsContextGLProxy *this)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v2 = *(this + 44);
  v3 = (v2 + 1);
  *(this + 44) = v3;
  v5 = v2 + 1;
  if (WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateTexture>(this, &v5))
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    return 0;
  }

  return v3;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CreateTexture>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateTexture,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CreateTexture,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::cullFace(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CullFace>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::CullFace>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CullFace,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::CullFace,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::deleteBuffer(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteBuffer>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteBuffer>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteBuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteBuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::deleteFramebuffer(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteFramebuffer>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteFramebuffer>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::deleteProgram(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteProgram>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteProgram>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteProgram,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteProgram,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::deleteRenderbuffer(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteRenderbuffer>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteRenderbuffer>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteRenderbuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteRenderbuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::deleteShader(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteShader>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteShader>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteShader,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteShader,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::deleteTexture(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteTexture>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DeleteTexture>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteTexture,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DeleteTexture,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::depthFunc(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DepthFunc>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DepthFunc>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DepthFunc,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DepthFunc,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::depthMask(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2 != 0;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DepthMask>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DepthMask>(uint64_t a1, char *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DepthMask,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DepthMask,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::depthRange(WebKit::RemoteGraphicsContextGLProxy *this, float a2, float a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DepthRange>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DepthRange>(uint64_t a1, float *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DepthRange,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DepthRange,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::detachShader(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DetachShader>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DetachShader>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DetachShader,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DetachShader,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::disable(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Disable>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Disable>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Disable,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Disable,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::disableVertexAttribArray(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DisableVertexAttribArray>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DisableVertexAttribArray>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DisableVertexAttribArray,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DisableVertexAttribArray,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::drawArrays(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4)
{
  if (*(this + 11))
  {
    v4 = this;
    v5[0] = a2;
    v5[1] = a3;
    v5[2] = a4;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DrawArrays>(this, v5);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DrawArrays>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawArrays,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawArrays,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::drawElements(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, uint64_t a5)
{
  if (*(this + 11))
  {
    v5 = this;
    v6[0] = a2;
    v6[1] = a3;
    v6[2] = a4;
    v7 = a5;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DrawElements>(this, v6);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::DrawElements>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawElements,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::DrawElements,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::enable(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Enable>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Enable>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Enable,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Enable,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::enableVertexAttribArray(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::EnableVertexAttribArray>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::EnableVertexAttribArray>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::EnableVertexAttribArray,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::EnableVertexAttribArray,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::finish(WebKit::RemoteGraphicsContextGLProxy *this)
{
  if (*(this + 11))
  {
    v1 = this;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Finish>(this, &v2);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v1);
      return (*(*(v1 + 3) + 2288))(v1 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Finish>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Finish,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Finish,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::flush(WebKit::RemoteGraphicsContextGLProxy *this)
{
  if (*(this + 11))
  {
    v1 = this;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Flush>(this, &v2);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v1);
      return (*(*(v1 + 3) + 2288))(v1 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Flush>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Flush,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Flush,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::framebufferRenderbuffer(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5)
{
  if (*(this + 11))
  {
    v5 = this;
    v6[0] = a2;
    v6[1] = a3;
    v6[2] = a4;
    v6[3] = a5;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::FramebufferRenderbuffer>(this, v6);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::FramebufferRenderbuffer>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::FramebufferRenderbuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::FramebufferRenderbuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::framebufferTexture2D(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5, int a6)
{
  if (*(this + 11))
  {
    v6 = this;
    v7[0] = a2;
    v7[1] = a3;
    v7[2] = a4;
    v7[3] = a5;
    v7[4] = a6;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::FramebufferTexture2D>(this, v7);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      return (*(*(v6 + 3) + 2288))(v6 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::FramebufferTexture2D>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::FramebufferTexture2D,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::FramebufferTexture2D,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::frontFace(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::FrontFace>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::FrontFace>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::FrontFace,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::FrontFace,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::generateMipmap(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::GenerateMipmap>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::GenerateMipmap>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::GenerateMipmap,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::GenerateMipmap,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getActiveAttrib(WebKit::RemoteGraphicsContextGLProxy *a1, int a2, int a3, uint64_t a4)
{
  if (*(a1 + 11))
  {
    v15[0] = a2;
    v15[1] = a3;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetActiveAttrib>(a1, v15, &v16);
    if (v20)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(a1);
      (*(*(a1 + 3) + 2288))(a1 + 3);
      v7 = 0;
    }

    else
    {
      v8 = v18;
      v18 = 0;
      v9 = *a4;
      *a4 = v8;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v6);
      }

      *(a4 + 8) = v19;
      v7 = v17;
    }

    if (!v20)
    {
      v10 = v18;
      v18 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v6);
      }

      v11 = v16;
      v16 = 0;
      if (v11)
      {
        IPC::Decoder::~Decoder(v11);
        bmalloc::api::tzoneFree(v13, v14);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetActiveAttrib>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetActiveAttrib,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetActiveAttrib,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getActiveUniform(WebKit::RemoteGraphicsContextGLProxy *a1, int a2, int a3, uint64_t a4)
{
  if (*(a1 + 11))
  {
    v15[0] = a2;
    v15[1] = a3;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniform>(a1, v15, &v16);
    if (v20)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(a1);
      (*(*(a1 + 3) + 2288))(a1 + 3);
      v7 = 0;
    }

    else
    {
      v8 = v18;
      v18 = 0;
      v9 = *a4;
      *a4 = v8;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v6);
      }

      *(a4 + 8) = v19;
      v7 = v17;
    }

    if (!v20)
    {
      v10 = v18;
      v18 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v6);
      }

      v11 = v16;
      v16 = 0;
      if (v11)
      {
        IPC::Decoder::~Decoder(v11);
        bmalloc::api::tzoneFree(v13, v14);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniform>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniform,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetActiveUniform,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getAttribLocation(WebKit::RemoteGraphicsContextGLProxy *this, int a2, const WTF::String *a3)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v9 = a2;
  v10 = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetAttribLocation>(this, &v9, &v11);
  if (v13)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0;
    if (v13)
    {
      return v4;
    }
  }

  else
  {
    v4 = v12;
  }

  v5 = v11;
  v11 = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetAttribLocation>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetAttribLocation,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetAttribLocation,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getBufferParameteri(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v9[0] = a2;
  v9[1] = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetBufferParameteri>(this, v9, &v10);
  if (v12)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0;
    if (v12)
    {
      return v4;
    }
  }

  else
  {
    v4 = v11;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetBufferParameteri>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetBufferParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetBufferParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

void WebKit::RemoteGraphicsContextGLProxy::getString(WebKit::RemoteGraphicsContextGLProxy *this@<X0>, int a2@<W1>, WTF::StringImpl **a3@<X8>)
{
  if (*(this + 11))
  {
    v11 = a2;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetString>(this, &v11, &v12);
    if (v14)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
      (*(*(this + 3) + 2288))(this + 24);
      v6 = 0;
    }

    else
    {
      v6 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      }
    }

    *a3 = v6;
    if (!v14)
    {
      v7 = v13;
      v13 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v5);
      }

      v8 = v12;
      v12 = 0;
      if (v8)
      {
        IPC::Decoder::~Decoder(v8);
        bmalloc::api::tzoneFree(v9, v10);
      }
    }
  }

  else
  {
    *a3 = 0;
  }
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetString>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetString,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetString,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getFloatv(uint64_t result, int a2, void *a3, unint64_t a4)
{
  if (*(result + 88))
  {
    v6 = result;
    v9 = a2;
    v10 = a4;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetFloatv>(result, &v9, v11);
    if (v13)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      result = (*(*(v6 + 3) + 2288))(v6 + 3);
    }

    else
    {
      if (a4 < v12)
      {
        result = 1067;
        __break(0xC471u);
        return result;
      }

      result = memcpy(a3, v11[1], 4 * v12);
    }

    if (!v13)
    {
      result = v11[0];
      v11[0] = 0;
      if (result)
      {
        IPC::Decoder::~Decoder(result);
        return bmalloc::api::tzoneFree(v7, v8);
      }
    }
  }

  return result;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetFloatv>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetFloatv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetFloatv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getIntegerv(uint64_t result, int a2, void *a3, unint64_t a4)
{
  if (*(result + 88))
  {
    v6 = result;
    v9 = a2;
    v10 = a4;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetIntegerv>(result, &v9, v11);
    if (v13)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      result = (*(*(v6 + 3) + 2288))(v6 + 3);
    }

    else
    {
      if (a4 < v12)
      {
        result = 1067;
        __break(0xC471u);
        return result;
      }

      result = memcpy(a3, v11[1], 4 * v12);
    }

    if (!v13)
    {
      result = v11[0];
      v11[0] = 0;
      if (result)
      {
        IPC::Decoder::~Decoder(result);
        return bmalloc::api::tzoneFree(v7, v8);
      }
    }
  }

  return result;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetIntegerv>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetIntegerv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetIntegerv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

unint64_t *WebKit::RemoteGraphicsContextGLProxy::getIntegeri_v(unint64_t *result, int a2, int a3, _OWORD *a4)
{
  v4 = result[11];
  if (v4)
  {
    v6 = result;
    v9[0] = a2;
    v9[1] = a3;
    atomic_fetch_add(v4, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetIntegeri_v,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v10, v4, v9, result[9]);
    if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      IPC::StreamClientConnection::operator delete(v4);
    }

    if (v11)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      return (*(v6[3] + 2288))(v6 + 3);
    }

    else
    {
      result = v10[0];
      *a4 = *v10[1];
      if (result)
      {
        IPC::Decoder::~Decoder(result);
        return bmalloc::api::tzoneFree(v7, v8);
      }
    }
  }

  return result;
}

IPC::Decoder *WebKit::RemoteGraphicsContextGLProxy::getInteger64(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v8 = a2;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetInteger64>(this, &v8, v9);
  if (v10)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v3 = 0;
    if (v10)
    {
      return v3;
    }
  }

  else
  {
    v3 = v9[1];
  }

  v4 = v9[0];
  v9[0] = 0;
  if (v4)
  {
    IPC::Decoder::~Decoder(v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return v3;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetInteger64>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetInteger64,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetInteger64,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

IPC::Decoder *WebKit::RemoteGraphicsContextGLProxy::getInteger64i(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v9[0] = a2;
  v9[1] = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetInteger64i>(this, v9, v10);
  if (v11)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0;
    if (v11)
    {
      return v4;
    }
  }

  else
  {
    v4 = v10[1];
  }

  v5 = v10[0];
  v10[0] = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetInteger64i>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetInteger64i,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetInteger64i,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getProgrami(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v9[0] = a2;
  v9[1] = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetProgrami>(this, v9, &v10);
  if (v12)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0;
    if (v12)
    {
      return v4;
    }
  }

  else
  {
    v4 = v11;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetProgrami>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetProgrami,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetProgrami,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getBooleanv(uint64_t result, int a2, void *a3, size_t a4)
{
  if (*(result + 88))
  {
    v6 = result;
    v9 = a2;
    v10 = a4;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetBooleanv>(result, &v9, v11);
    if (v13)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v6);
      result = (*(*(v6 + 3) + 2288))(v6 + 3);
    }

    else
    {
      if (a4 < __n)
      {
        result = 1067;
        __break(0xC471u);
        return result;
      }

      result = memcpy(a3, v11[1], __n);
    }

    if (!v13)
    {
      result = v11[0];
      v11[0] = 0;
      if (result)
      {
        IPC::Decoder::~Decoder(result);
        return bmalloc::api::tzoneFree(v7, v8);
      }
    }
  }

  return result;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetBooleanv>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetBooleanv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetBooleanv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getFramebufferAttachmentParameteri(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetFramebufferAttachmentParameteri>(this, v10, &v11);
  if (v13)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v5 = 0;
    if (v13)
    {
      return v5;
    }
  }

  else
  {
    v5 = v12;
  }

  v6 = v11;
  v11 = 0;
  if (v6)
  {
    IPC::Decoder::~Decoder(v6);
    bmalloc::api::tzoneFree(v8, v9);
  }

  return v5;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetFramebufferAttachmentParameteri>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetFramebufferAttachmentParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetFramebufferAttachmentParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

void WebKit::RemoteGraphicsContextGLProxy::getProgramInfoLog(WebKit::RemoteGraphicsContextGLProxy *this@<X0>, int a2@<W1>, WTF::StringImpl **a3@<X8>)
{
  if (*(this + 11))
  {
    v11 = a2;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetProgramInfoLog>(this, &v11, &v12);
    if (v14)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
      (*(*(this + 3) + 2288))(this + 24);
      v6 = 0;
    }

    else
    {
      v6 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      }
    }

    *a3 = v6;
    if (!v14)
    {
      v7 = v13;
      v13 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v5);
      }

      v8 = v12;
      v12 = 0;
      if (v8)
      {
        IPC::Decoder::~Decoder(v8);
        bmalloc::api::tzoneFree(v9, v10);
      }
    }
  }

  else
  {
    *a3 = 0;
  }
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetProgramInfoLog>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetProgramInfoLog,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetProgramInfoLog,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getRenderbufferParameteri(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v9[0] = a2;
  v9[1] = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetRenderbufferParameteri>(this, v9, &v10);
  if (v12)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0;
    if (v12)
    {
      return v4;
    }
  }

  else
  {
    v4 = v11;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetRenderbufferParameteri>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetRenderbufferParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetRenderbufferParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getShaderi(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v9[0] = a2;
  v9[1] = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetShaderi>(this, v9, &v10);
  if (v12)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0;
    if (v12)
    {
      return v4;
    }
  }

  else
  {
    v4 = v11;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetShaderi>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetShaderi,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetShaderi,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

void WebKit::RemoteGraphicsContextGLProxy::getShaderInfoLog(WebKit::RemoteGraphicsContextGLProxy *this@<X0>, int a2@<W1>, WTF::StringImpl **a3@<X8>)
{
  if (*(this + 11))
  {
    v11 = a2;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetShaderInfoLog>(this, &v11, &v12);
    if (v14)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
      (*(*(this + 3) + 2288))(this + 24);
      v6 = 0;
    }

    else
    {
      v6 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      }
    }

    *a3 = v6;
    if (!v14)
    {
      v7 = v13;
      v13 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v5);
      }

      v8 = v12;
      v12 = 0;
      if (v8)
      {
        IPC::Decoder::~Decoder(v8);
        bmalloc::api::tzoneFree(v9, v10);
      }
    }
  }

  else
  {
    *a3 = 0;
  }
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetShaderInfoLog>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetShaderInfoLog,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetShaderInfoLog,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

IPC::Decoder *WebKit::RemoteGraphicsContextGLProxy::getShaderPrecisionFormat(IPC::Decoder *result, int a2, int a3, void *a4, _DWORD *a5)
{
  v5 = *(result + 11);
  if (v5)
  {
    v8 = result;
    v11[0] = a2;
    v11[1] = a3;
    atomic_fetch_add(v5, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetShaderPrecisionFormat,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v12, v5, v11, *(result + 9));
    if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5);
      IPC::StreamClientConnection::operator delete(v5);
    }

    if (v14)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v8);
      return (*(*(v8 + 3) + 2288))(v8 + 3);
    }

    else
    {
      *a4 = *v12[1];
      if (a5)
      {
        *a5 = v13;
      }

      result = v12[0];
      if (v12[0])
      {
        IPC::Decoder::~Decoder(v12[0]);
        return bmalloc::api::tzoneFree(v9, v10);
      }
    }
  }

  return result;
}

void WebKit::RemoteGraphicsContextGLProxy::getShaderSource(WebKit::RemoteGraphicsContextGLProxy *this@<X0>, int a2@<W1>, WTF::StringImpl **a3@<X8>)
{
  if (*(this + 11))
  {
    v11 = a2;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetShaderSource>(this, &v11, &v12);
    if (v14)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
      (*(*(this + 3) + 2288))(this + 24);
      v6 = 0;
    }

    else
    {
      v6 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      }
    }

    *a3 = v6;
    if (!v14)
    {
      v7 = v13;
      v13 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v5);
      }

      v8 = v12;
      v12 = 0;
      if (v8)
      {
        IPC::Decoder::~Decoder(v8);
        bmalloc::api::tzoneFree(v9, v10);
      }
    }
  }

  else
  {
    *a3 = 0;
  }
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetShaderSource>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetShaderSource,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetShaderSource,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

float WebKit::RemoteGraphicsContextGLProxy::getTexParameterf(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (!*(this + 11))
  {
    return 0.0;
  }

  v9[0] = a2;
  v9[1] = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetTexParameterf>(this, v9, &v10);
  if (v12)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0.0;
    if (v12)
    {
      return v4;
    }
  }

  else
  {
    v4 = v11;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetTexParameterf>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetTexParameterf,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetTexParameterf,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getTexParameteri(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v9[0] = a2;
  v9[1] = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetTexParameteri>(this, v9, &v10);
  if (v12)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0;
    if (v12)
    {
      return v4;
    }
  }

  else
  {
    v4 = v11;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetTexParameteri>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetTexParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetTexParameteri,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getUniformfv(uint64_t result, int a2, int a3, void *a4, unint64_t a5)
{
  if (*(result + 88))
  {
    v7 = result;
    v10[0] = a2;
    v10[1] = a3;
    v11 = a5;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetUniformfv>(result, v10, v12);
    if (v14)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v7);
      result = (*(*(v7 + 3) + 2288))(v7 + 3);
    }

    else
    {
      if (a5 < v13)
      {
        result = 1067;
        __break(0xC471u);
        return result;
      }

      result = memcpy(a4, v12[1], 4 * v13);
    }

    if (!v14)
    {
      result = v12[0];
      v12[0] = 0;
      if (result)
      {
        IPC::Decoder::~Decoder(result);
        return bmalloc::api::tzoneFree(v8, v9);
      }
    }
  }

  return result;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetUniformfv>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetUniformfv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetUniformfv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getUniformiv(uint64_t result, int a2, int a3, void *a4, unint64_t a5)
{
  if (*(result + 88))
  {
    v7 = result;
    v10[0] = a2;
    v10[1] = a3;
    v11 = a5;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetUniformiv>(result, v10, v12);
    if (v14)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v7);
      result = (*(*(v7 + 3) + 2288))(v7 + 3);
    }

    else
    {
      if (a5 < v13)
      {
        result = 1067;
        __break(0xC471u);
        return result;
      }

      result = memcpy(a4, v12[1], 4 * v13);
    }

    if (!v14)
    {
      result = v12[0];
      v12[0] = 0;
      if (result)
      {
        IPC::Decoder::~Decoder(result);
        return bmalloc::api::tzoneFree(v8, v9);
      }
    }
  }

  return result;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetUniformiv>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetUniformiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetUniformiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getUniformuiv(uint64_t result, int a2, int a3, void *a4, unint64_t a5)
{
  if (*(result + 88))
  {
    v7 = result;
    v10[0] = a2;
    v10[1] = a3;
    v11 = a5;
    WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetUniformuiv>(result, v10, v12);
    if (v14)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v7);
      result = (*(*(v7 + 3) + 2288))(v7 + 3);
    }

    else
    {
      if (a5 < v13)
      {
        result = 1067;
        __break(0xC471u);
        return result;
      }

      result = memcpy(a4, v12[1], 4 * v13);
    }

    if (!v14)
    {
      result = v12[0];
      v12[0] = 0;
      if (result)
      {
        IPC::Decoder::~Decoder(result);
        return bmalloc::api::tzoneFree(v8, v9);
      }
    }
  }

  return result;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetUniformuiv>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetUniformuiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetUniformuiv,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::getUniformLocation(WebKit::RemoteGraphicsContextGLProxy *this, int a2, const WTF::String *a3)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v9 = a2;
  v10 = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetUniformLocation>(this, &v9, &v11);
  if (v13)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0;
    if (v13)
    {
      return v4;
    }
  }

  else
  {
    v4 = v12;
  }

  v5 = v11;
  v11 = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetUniformLocation>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetUniformLocation,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetUniformLocation,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

IPC::Decoder *WebKit::RemoteGraphicsContextGLProxy::getVertexAttribOffset(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v9[0] = a2;
  v9[1] = a3;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetVertexAttribOffset>(this, v9, v10);
  if (v11)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v4 = 0;
    if (v11)
    {
      return v4;
    }
  }

  else
  {
    v4 = v10[1];
  }

  v5 = v10[0];
  v10[0] = 0;
  if (v5)
  {
    IPC::Decoder::~Decoder(v5);
    bmalloc::api::tzoneFree(v7, v8);
  }

  return v4;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::GetVertexAttribOffset>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetVertexAttribOffset,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::GetVertexAttribOffset,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::hint(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Hint>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Hint>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Hint,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Hint,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::isBuffer(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v8 = a2;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsBuffer>(this, &v8, &v9);
  if (v11)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v3 = 0;
    if (v11)
    {
      return v3;
    }
  }

  else
  {
    v3 = v10;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    IPC::Decoder::~Decoder(v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return v3;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsBuffer>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsBuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsBuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::isEnabled(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v8 = a2;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsEnabled>(this, &v8, &v9);
  if (v11)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v3 = 0;
    if (v11)
    {
      return v3;
    }
  }

  else
  {
    v3 = v10;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    IPC::Decoder::~Decoder(v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return v3;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsEnabled>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsEnabled,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsEnabled,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::isFramebuffer(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v8 = a2;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsFramebuffer>(this, &v8, &v9);
  if (v11)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v3 = 0;
    if (v11)
    {
      return v3;
    }
  }

  else
  {
    v3 = v10;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    IPC::Decoder::~Decoder(v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return v3;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsFramebuffer>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsFramebuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::isProgram(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v8 = a2;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsProgram>(this, &v8, &v9);
  if (v11)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v3 = 0;
    if (v11)
    {
      return v3;
    }
  }

  else
  {
    v3 = v10;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    IPC::Decoder::~Decoder(v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return v3;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsProgram>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsProgram,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsProgram,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::isRenderbuffer(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v8 = a2;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsRenderbuffer>(this, &v8, &v9);
  if (v11)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v3 = 0;
    if (v11)
    {
      return v3;
    }
  }

  else
  {
    v3 = v10;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    IPC::Decoder::~Decoder(v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return v3;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsRenderbuffer>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsRenderbuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsRenderbuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::isShader(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v8 = a2;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsShader>(this, &v8, &v9);
  if (v11)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v3 = 0;
    if (v11)
    {
      return v3;
    }
  }

  else
  {
    v3 = v10;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    IPC::Decoder::~Decoder(v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return v3;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsShader>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsShader,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsShader,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::isTexture(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v8 = a2;
  WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsTexture>(this, &v8, &v9);
  if (v11)
  {
    WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(this);
    (*(*(this + 3) + 2288))(this + 24);
    v3 = 0;
    if (v11)
    {
      return v3;
    }
  }

  else
  {
    v3 = v10;
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    IPC::Decoder::~Decoder(v4);
    bmalloc::api::tzoneFree(v6, v7);
  }

  return v3;
}

void WebKit::RemoteGraphicsContextGLProxy::sendSync<Messages::RemoteGraphicsContextGL::IsTexture>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsTexture,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, a2, *(a1 + 72), a3);
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);

      IPC::StreamClientConnection::operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 72);

    IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::IsTexture,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v4, a3);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::lineWidth(WebKit::RemoteGraphicsContextGLProxy *this, float a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::LineWidth>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::LineWidth>(uint64_t a1, float *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::LineWidth,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::LineWidth,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::linkProgram(WebKit::RemoteGraphicsContextGLProxy *this, int a2)
{
  if (*(this + 11))
  {
    v2 = this;
    v3 = a2;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::LinkProgram>(this, &v3);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v2);
      return (*(*(v2 + 3) + 2288))(v2 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::LinkProgram>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::LinkProgram,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::LinkProgram,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::pixelStorei(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::PixelStorei>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::PixelStorei>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::PixelStorei,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::PixelStorei,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::polygonOffset(WebKit::RemoteGraphicsContextGLProxy *this, float a2, float a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4[0] = a2;
    v4[1] = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::PolygonOffset>(this, v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::PolygonOffset>(uint64_t a1, float *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::PolygonOffset,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::PolygonOffset,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::renderbufferStorage(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5)
{
  if (*(this + 11))
  {
    v5 = this;
    v6[0] = a2;
    v6[1] = a3;
    v6[2] = a4;
    v6[3] = a5;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::RenderbufferStorage>(this, v6);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::RenderbufferStorage>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::RenderbufferStorage,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::RenderbufferStorage,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::sampleCoverage(WebKit::RemoteGraphicsContextGLProxy *this, float a2, int a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4 = a2;
    v5 = a3 != 0;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::SampleCoverage>(this, &v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::SampleCoverage>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SampleCoverage,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::SampleCoverage,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::scissor(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4, int a5)
{
  if (*(this + 11))
  {
    v5 = this;
    v6[0] = a2;
    v6[1] = a3;
    v6[2] = a4;
    v6[3] = a5;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Scissor>(this, v6);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v5);
      return (*(*(v5 + 3) + 2288))(v5 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::Scissor>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Scissor,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Scissor,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::shaderSource(WebKit::RemoteGraphicsContextGLProxy *this, int a2, const WTF::String *a3)
{
  if (*(this + 11))
  {
    v3 = this;
    v4 = a2;
    v5 = a3;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ShaderSource>(this, &v4);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v3);
      return (*(*(v3 + 3) + 2288))(v3 + 3);
    }
  }

  return this;
}

uint64_t WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::ShaderSource>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ShaderSource,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v2, a2, *(a1 + 72));
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      IPC::StreamClientConnection::operator delete(v2);
    }

    return v3;
  }

  else
  {
    v5 = *(a1 + 72);

    return IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::ShaderSource,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(0, a2, v5);
  }
}

WebKit::RemoteGraphicsContextGLProxy *WebKit::RemoteGraphicsContextGLProxy::stencilFunc(WebKit::RemoteGraphicsContextGLProxy *this, int a2, int a3, int a4)
{
  if (*(this + 11))
  {
    v4 = this;
    v5[0] = a2;
    v5[1] = a3;
    v5[2] = a4;
    this = WebKit::RemoteGraphicsContextGLProxy::send<Messages::RemoteGraphicsContextGL::StencilFunc>(this, v5);
    if (this)
    {
      WebKit::RemoteGraphicsContextGLProxy::disconnectGpuProcessIfNeeded(v4);
      return (*(*(v4 + 3) + 2288))(v4 + 3);
    }
  }

  return this;
}
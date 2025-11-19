_DWORD *WebKit::RemoteImageBufferProxy::getPixelBuffer@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, WebCore::PixelBuffer **a5@<X8>)
{
  result = WebKit::RemoteImageBufferProxy::ensureBackend(a1, a2);
  if (!result)
  {
    *a5 = 0;
    return result;
  }

  if (!(*(*result + 160))(result))
  {
    v15 = *(a3 + 8);
    result = (*(*a4 + 24))(&v16, a4, a2, &v15);
    v11 = v16;
    if (v16)
    {
      v12 = a1[466];
      if (v12)
      {
        v13 = *(v12 + 8);
        if (v13)
        {
          ++*(v13 + 5);
          result = WebKit::RemoteRenderingBackendProxy::getPixelBufferForImageBuffer(v13, a1[15], a2, a3, *(v11 + 5), *(v11 + 6));
          if (result)
          {
            v14 = v16;
            v16 = 0;
            *a5 = v14;
            if (*(v13 + 5) == 1)
            {
              (*(*v13 + 24))(v13);
              result = v16;
              v16 = 0;
              if (result)
              {
                if (result[2] == 1)
                {
                  return (*(*result + 8))(result);
                }

                else
                {
                  --result[2];
                }
              }
            }

            else
            {
              --*(v13 + 5);
            }

            return result;
          }

          if (*(v13 + 5) == 1)
          {
            (*(*v13 + 24))(v13);
          }

          else
          {
            --*(v13 + 5);
          }
        }
      }

      result = WebCore::PixelBuffer::zeroRange(v16);
      v11 = v16;
    }

    *a5 = v11;
    return result;
  }

  WebKit::RemoteImageBufferProxy::flushDrawingContext(a1);

  return MEMORY[0x1EEE5C2B0](a1, a2, a3, a4);
}

void WebKit::RemoteImageBufferProxy::disconnect(WebKit::RemoteImageBufferProxy *this)
{
  *(this + 3720) = 0;
  WebKit::RemoteDisplayListRecorderProxy::disconnect((this + 136));
  if (*(this + 14))
  {
    WebKit::RemoteImageBufferProxy::backingStoreWillChange(this, v2);
    v3 = *(this + 14);
    *(this + 14) = 0;
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

void WebKit::RemoteImageBufferProxy::putPixelBuffer(WebKit::RemoteImageBufferProxy *a1, _DWORD *a2, uint64_t *a3, int *a4, int a5)
{
  v71 = *MEMORY[0x1E69E9840];
  v10 = WebKit::RemoteImageBufferProxy::ensureBackend(a1, a2);
  if (v10)
  {
    if ((*(*v10 + 160))(v10))
    {
      *buf = 0;
      *&buf[8] = 0;
      (*(*(a1 + 17) + 224))(a1 + 17, buf, 1);
      WebKit::RemoteImageBufferProxy::flushDrawingContext(a1);
      WebCore::ImageBuffer::putPixelBuffer();
      return;
    }

    v12 = *(a1 + 466);
    if (v12)
    {
      v13 = *(v12 + 8);
      if (v13)
      {
        ++v13[5];
        v14 = WebKit::RemoteImageBufferProxy::ensureBackend(a1, v11);
        if (v14)
        {
          (*(*v14 + 168))(v14);
        }

        v16 = *a3;
        v64 = a3[1];
        v65 = v16;
        v17 = *(a1 + 466);
        if (!v17 || (v18 = *(v17 + 8)) == 0 || ((++*(v18 + 5), v20 = WebKit::RemoteRenderingBackendProxy::connection(v18, v15, &v66), *(v18 + 5) == 1) ? (v19 = (*(*v18 + 24))(v18, v20)) : --*(v18 + 5), (v21 = v66) == 0))
        {
LABEL_30:
          v37 = a2[4];
          v36 = a2[5];
          if (v37 < 0)
          {
            v37 = -v37;
          }

          if (v36 < 0)
          {
            v36 = -v36;
          }

          if (v36 * v37 < 0xE11)
          {
            goto LABEL_35;
          }

          v59 = *(a1 + 466);
          if (!v59)
          {
            goto LABEL_35;
          }

          v60 = *(v59 + 8);
          if (!v60)
          {
            goto LABEL_35;
          }

          ++*(v60 + 5);
          v61.n128_f64[0] = WebKit::RemoteRenderingBackendProxy::connection(v60, v15, buf);
          if (*(v60 + 5) == 1)
          {
            (*(*v60 + 24))(v60, v61.n128_f64[0]);
          }

          else
          {
            --*(v60 + 5);
          }

          v62 = *buf;
          if (!*buf)
          {
            goto LABEL_35;
          }

          if (*(*buf + 124))
          {
            if (*(*buf + 112))
            {
              MEMORY[0x19EB16320](*(*buf + 100), v61);
              v63 = *buf;
              v62[31] = 0;
              *buf = 0;
              v62 = v63;
              if (!v63)
              {
LABEL_35:
                if (v13[5] == 1)
                {
                  (*(*v13 + 24))(v13);
                }

                else
                {
                  --v13[5];
                }

                return;
              }

LABEL_75:
              if (atomic_fetch_add(v62, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v62);
                IPC::StreamClientConnection::operator delete(v62);
              }

              goto LABEL_35;
            }

            *(*buf + 124) = 0;
          }

          *buf = 0;
          goto LABEL_75;
        }

        v22 = *(a1 + 15);
        v23 = *(v66 + 128);
        v24 = INFINITY;
        if (fabs(v23) != INFINITY)
        {
          WTF::ApproximateTime::now(v19);
          v24 = v23 + v25;
        }

        if (*(v21 + 64) != v22)
        {
          v28 = IPC::StreamClientConnectionBuffer::tryAcquire(v21 + 72, buf, v24);
          if (buf[16] != 1)
          {
            goto LABEL_64;
          }

          v38 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1DB994);
          }

          v39 = *buf;
          **buf = 3198;
          v40 = v39 + 2;
          if (v38 - 2 < (-v40 & 7 | 8uLL))
          {
            goto LABEL_64;
          }

          v41 = -v40 & 7;
          *(v40 + v41) = v22;
          v42 = 6;
          if (v41 > 6)
          {
            v42 = v41;
          }

          v43 = v42 + 10;
          v44 = (*(v21 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v45 = *(v21 + 72);
          if (v44 + 16 >= v45)
          {
            v44 = 0;
          }

          v46 = v43 + v44;
          if (v45 <= v46)
          {
            v46 = 0;
          }

          *(v21 + 88) = v46;
          v47 = *(v21 + 80);
          if (*(v47 + 8) <= 0xFFuLL)
          {
            goto LABEL_62;
          }

          IPC::StreamClientConnection::wakeUpServerBatched(v21, atomic_exchange((*(v47 + 16) + 128), v46) == 0x80000000);
          *(v21 + 64) = v22;
        }

        IPC::StreamClientConnectionBuffer::tryAcquire(v21 + 72, &v67, v24);
        if ((v69 & 1) == 0)
        {
          goto LABEL_64;
        }

        v26 = v67;
        v27 = v68;
        *&buf[16] = v68;
        if (v68 <= 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19E1DB974);
        }

        *v67 = 1376;
        *buf = v26 + 1;
        *&buf[8] = v27 - 2;
        IPC::ArgumentCoder<WebCore::PixelBufferSourceView,void>::encode(buf, a2);
        IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(buf, &v65);
        IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(buf, &v64);
        v28 = IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(buf, a4);
        if (*&buf[8])
        {
          **buf = a5;
          v29 = *&buf[8];
          if (*&buf[8])
          {
            ++*buf;
            --*&buf[8];
            v30 = *&buf[16] - (v29 - 1);
            if (v30 <= 0x10)
            {
              v30 = 16;
            }

            v31 = (*(v21 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v32 = *(v21 + 72);
            if (v31 + 16 >= v32)
            {
              v31 = 0;
            }

            v33 = v31 + v30;
            if (v32 <= v33)
            {
              v33 = 0;
            }

            *(v21 + 88) = v33;
            v34 = *(v21 + 80);
            if (*(v34 + 8) > 0xFFuLL)
            {
              IPC::StreamClientConnection::wakeUpServerBatched(v21, atomic_exchange((*(v34 + 16) + 128), v33) == 0x80000000);
LABEL_27:
              v35 = v66;
              v66 = 0;
              if (v35 && atomic_fetch_add(v35, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v35);
                IPC::StreamClientConnection::operator delete(v35);
              }

              goto LABEL_30;
            }
          }
        }

        else if (v69)
        {
          if (v68 <= 1)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1DB9B4);
          }

          *v67 = 3197;
          v48 = (*(v21 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v49 = *(v21 + 72);
          if (v48 + 16 >= v49)
          {
            v48 = 0;
          }

          v50 = v48 + 16;
          v51 = v49 <= v50 ? 0 : v50;
          *(v21 + 88) = v51;
          v52 = *(v21 + 80);
          if (*(v52 + 8) > 0xFFuLL)
          {
            atomic_exchange((*(v52 + 16) + 128), v51);
            *(v21 + 124) = 0;
            v53 = *(v21 + 8);
            v54 = IPC::Encoder::operator new(0x238, v15);
            *v54 = 1376;
            *(v54 + 2) = 0;
            *(v54 + 3) = 0;
            *(v54 + 1) = v22;
            *(v54 + 68) = 0;
            *(v54 + 70) = 0;
            *(v54 + 69) = 0;
            IPC::Encoder::encodeHeader(v54);
            *buf = v54;
            IPC::ArgumentCoder<WebCore::PixelBufferSourceView,void>::encode(v54, a2);
            IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v54, &v65);
            IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v54, &v64);
            IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(v54, a4);
            IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v54, a5);
            a5 = IPC::Connection::sendMessageImpl(v53, buf, 1, 0);
            v28 = *buf;
            *buf = 0;
            if (!v28)
            {
              goto LABEL_60;
            }

            goto LABEL_63;
          }
        }

LABEL_62:
        __break(1u);
LABEL_63:
        IPC::Encoder::~Encoder(v28, v15);
        bmalloc::api::tzoneFree(v55, v56);
LABEL_60:
        if (!a5)
        {
          goto LABEL_27;
        }

LABEL_64:
        v57 = qword_1ED6410D0;
        if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          v58 = IPC::errorAsString();
          *buf = 136446466;
          *&buf[4] = "RemoteImageBuffer_PutPixelBuffer";
          *&buf[12] = 2082;
          *&buf[14] = v58;
          _os_log_impl(&dword_19D52D000, v57, OS_LOG_TYPE_DEFAULT, "RemoteImageBufferProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
        }

        WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 466));
        goto LABEL_27;
      }
    }
  }
}

void WebKit::RemoteImageBufferProxy::convertToLuminanceMask(WebKit::RemoteImageBufferProxy *this, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(this + 466);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      ++*(v3 + 5);
      v6 = WebKit::RemoteRenderingBackendProxy::connection(v3, a2, &v28);
      if (*(v3 + 5) == 1)
      {
        v5 = (*(*v3 + 24))(v3, v6);
      }

      else
      {
        --*(v3 + 5);
      }

      v7 = v28;
      if (v28)
      {
        v8 = *(this + 15);
        v9 = *(v28 + 128);
        v10 = INFINITY;
        if (fabs(v9) != INFINITY)
        {
          WTF::ApproximateTime::now(v5);
          v10 = v9 + v11;
        }

        if (*(v7 + 64) != v8)
        {
          IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v10);
          if (buf[16] != 1)
          {
            goto LABEL_32;
          }

          v16 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            goto LABEL_43;
          }

          v17 = *buf;
          **buf = 3198;
          v18 = v17 + 2;
          if (v16 - 2 < (-v18 & 7 | 8uLL))
          {
LABEL_32:
            v25 = qword_1ED6410D0;
            if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
            {
              v26 = IPC::errorAsString();
              *buf = 136446466;
              *&buf[4] = "RemoteImageBuffer_ConvertToLuminanceMask";
              *&buf[12] = 2082;
              *&buf[14] = v26;
              _os_log_impl(&dword_19D52D000, v25, OS_LOG_TYPE_DEFAULT, "RemoteImageBufferProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
            }

            WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 466));
LABEL_35:
            v27 = v28;
            v28 = 0;
            if (v27)
            {
              if (atomic_fetch_add(v27, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v27);
                IPC::StreamClientConnection::operator delete(v27);
              }
            }

            return;
          }

          v19 = -v18 & 7;
          *(v18 + v19) = v8;
          v20 = 6;
          if (v19 > 6)
          {
            v20 = v19;
          }

          v21 = v20 + 10;
          v22 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v23 = *(v7 + 72);
          if (v22 + 16 >= v23)
          {
            v22 = 0;
          }

          v13 = v21 + v22;
          if (v23 <= v13)
          {
            v13 = 0;
          }

          *(v7 + 88) = v13;
          v24 = *(v7 + 80);
          if (*(v24 + 8) <= 0xFFuLL)
          {
            goto LABEL_40;
          }

          IPC::StreamClientConnection::wakeUpServerBatched(v7, atomic_exchange((*(v24 + 16) + 128), v13) == 0x80000000);
          *(v7 + 64) = v8;
        }

        IPC::StreamClientConnectionBuffer::tryAcquire(v7 + 72, buf, v10);
        if (buf[16] == 1)
        {
          if (*&buf[8] > 1uLL)
          {
            **buf = 1374;
            v12 = (*(v7 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v13 = *(v7 + 72);
            if (v12 + 16 >= v13)
            {
              goto LABEL_41;
            }

            while (1)
            {
              v14 = v12 + 16;
              v13 = v13 <= v14 ? 0 : v14;
              *(v7 + 88) = v13;
              v15 = *(v7 + 80);
              if (*(v15 + 8) > 0xFFuLL)
              {
                break;
              }

LABEL_40:
              __break(1u);
LABEL_41:
              v12 = 0;
            }

            if (atomic_exchange((*(v15 + 16) + 128), v13) == 0x80000000 || *(v7 + 124))
            {
              if (*(v7 + 112) == 1)
              {
                MEMORY[0x19EB16320](*(v7 + 100));
              }

              *(v7 + 124) = 0;
            }

            goto LABEL_35;
          }

LABEL_43:
          __break(0xC471u);
          JUMPOUT(0x19E1DBD0CLL);
        }

        goto LABEL_32;
      }
    }
  }
}

void WebKit::RemoteImageBufferProxy::transformToColorSpace(WebKit::RemoteImageBufferProxy *this, const WebCore::DestinationColorSpace *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(this + 466);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      ++*(v3 + 5);
      v7 = WebKit::RemoteRenderingBackendProxy::connection(v3, a2, &v40);
      if (*(v3 + 5) == 1)
      {
        v6 = (*(*v3 + 24))(v3, v7);
      }

      else
      {
        --*(v3 + 5);
      }

      v8 = v40;
      if (v40)
      {
        v9 = *(this + 15);
        v10 = *(v40 + 128);
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
            goto LABEL_47;
          }

          v29 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            goto LABEL_60;
          }

          v30 = *buf;
          **buf = 3198;
          v31 = v30 + 2;
          if (v29 - 2 < (-v31 & 7 | 8uLL))
          {
            goto LABEL_47;
          }

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

          v17 = v34 + v35;
          if (v36 <= v17)
          {
            v17 = 0;
          }

          *(v8 + 88) = v17;
          v16 = *(v8 + 80);
          if (*(v16 + 8) <= 0xFFuLL)
          {
            goto LABEL_55;
          }

          IPC::StreamClientConnection::wakeUpServerBatched(v8, atomic_exchange((*(v16 + 16) + 128), v17) == 0x80000000);
          *(v8 + 64) = v9;
        }

        IPC::StreamClientConnectionBuffer::tryAcquire(v8 + 72, &v41, v11);
        if (v43)
        {
          v13 = v41;
          v14 = v42;
          *&buf[16] = v42;
          if (v42 > 1)
          {
            *v41 = 1377;
            *buf = v13 + 1;
            *&buf[8] = v14 - 2;
            IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(buf, a2);
            if (*buf)
            {
              v17 = *&buf[16] - *&buf[8];
              if (*&buf[16] - *&buf[8] <= 0x10uLL)
              {
                v17 = 16;
              }

              v18 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
              v16 = *(v8 + 72);
              if (v18 + 16 >= v16)
              {
                goto LABEL_56;
              }

              while (1)
              {
                v17 += v18;
                if (v16 <= v17)
                {
                  v17 = 0;
                }

                *(v8 + 88) = v17;
                v16 = *(v8 + 80);
                if (*(v16 + 8) > 0xFFuLL)
                {
                  break;
                }

LABEL_55:
                __break(1u);
LABEL_56:
                v18 = 0;
              }

              if (atomic_exchange((*(v16 + 16) + 128), v17) == 0x80000000 || *(v8 + 124))
              {
                if (*(v8 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v8 + 100));
                }

                *(v8 + 124) = 0;
              }

              goto LABEL_50;
            }

            v17 = v43;
            if ((v43 & 1) == 0)
            {
              goto LABEL_55;
            }

            if (v42 <= 1)
            {
              __break(0xC471u);
              JUMPOUT(0x19E1DC1C4);
            }

            *v41 = 3197;
            v19 = (*(v8 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v20 = *(v8 + 72);
            if (v19 + 16 >= v20)
            {
              v19 = 0;
            }

            v21 = v19 + 16;
            v17 = v20 <= v21 ? 0 : v21;
            *(v8 + 88) = v17;
            v16 = *(v8 + 80);
            if (*(v16 + 8) <= 0xFFuLL)
            {
              goto LABEL_55;
            }

            atomic_exchange((*(v16 + 16) + 128), v17);
            *(v8 + 124) = 0;
            v22 = *(v8 + 8);
            v23 = IPC::Encoder::operator new(0x238, v15);
            *v23 = 1377;
            *(v23 + 2) = 0;
            *(v23 + 3) = 0;
            *(v23 + 1) = v9;
            *(v23 + 68) = 0;
            *(v23 + 70) = 0;
            *(v23 + 69) = 0;
            IPC::Encoder::encodeHeader(v23);
            *buf = v23;
            IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(v23, a2);
            v25 = IPC::Connection::sendMessageImpl(v22, buf, 1, 0);
            v26 = *buf;
            *buf = 0;
            if (v26)
            {
              IPC::Encoder::~Encoder(v26, v24);
              bmalloc::api::tzoneFree(v27, v28);
              if (v25)
              {
                goto LABEL_47;
              }
            }

            else if (v25)
            {
              goto LABEL_47;
            }

LABEL_50:
            v39 = v40;
            v40 = 0;
            if (v39)
            {
              if (atomic_fetch_add(v39, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v39);
                IPC::StreamClientConnection::operator delete(v39);
              }
            }

            return;
          }

LABEL_60:
          __break(0xC471u);
          JUMPOUT(0x19E1DC1A4);
        }

LABEL_47:
        v37 = qword_1ED6410D0;
        if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          v38 = IPC::errorAsString();
          *buf = 136446466;
          *&buf[4] = "RemoteImageBuffer_TransformToColorSpace";
          *&buf[12] = 2082;
          *&buf[14] = v38;
          _os_log_impl(&dword_19D52D000, v37, OS_LOG_TYPE_DEFAULT, "RemoteImageBufferProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
        }

        WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 466));
        goto LABEL_50;
      }
    }
  }
}

unsigned int *WebKit::RemoteImageBufferProxy::sinkIntoSerializedImageBuffer@<X0>(unsigned int **this@<X0>, void *a2@<X8>)
{
  WebKit::RemoteImageBufferProxy::flushDrawingContext(this);
  result = WebKit::RemoteDisplayListRecorderProxy::abandon(this + 17);
  v6 = this[466];
  if (v6 && (v7 = *(v6 + 1)) != 0)
  {
    ++*(v7 + 5);
    WebKit::RemoteImageBufferProxy::backingStoreWillChange(this, v5);
    result = WebKit::RemoteImageBufferProxy::ensureBackend(this, v8);
    if (result)
    {
      WebKit::RemoteRenderingBackendProxy::moveToSerializedBuffer(v7, this, &v11);
      WebKit::RemoteImageBufferProxy::disconnect(this);
      result = this[466];
      this[466] = 0;
      if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        result = WTF::fastFree(result, v9);
      }

      *a2 = v11;
    }

    else
    {
      *a2 = 0;
    }

    if (*(v7 + 5) == 1)
    {
      v10 = *(*v7 + 24);

      return v10(v7);
    }

    else
    {
      --*(v7 + 5);
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t WebKit::RemoteSerializedImageBufferProxy::RemoteSerializedImageBufferProxy(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = &unk_1F1125028;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  *a1 = &unk_1F1124F58;
  *(a1 + 8) = IdentifierInternal;
  v7 = *(a2 + 8);
  *(a1 + 16) = *a2;
  *(a1 + 24) = v7;
  v8 = *(a2 + 16);
  *(a1 + 32) = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  v9 = *(a2 + 24);
  *(a1 + 42) = *(a2 + 26);
  *(a1 + 40) = v9;
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[3];
  *(a1 + 80) = a3[2];
  *(a1 + 96) = v12;
  *(a1 + 48) = v10;
  *(a1 + 64) = v11;
  *(a1 + 112) = 0;
  return a1;
}

atomic_ullong *WebKit::RemoteSerializedImageBufferProxy::sinkIntoImageBuffer@<X0>(WebKit::RemoteSerializedImageBufferProxy **a1@<X0>, WebKit::RemoteRenderingBackendProxy *a2@<X1>, void *a3@<X8>)
{
  WebKit::RemoteRenderingBackendProxy::moveToImageBuffer(a2, *a1, &v6);
  result = *(*a1 + 14);
  *(*a1 + 14) = 0;
  if (result)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result);
  }

  *a3 = v6;
  return result;
}

void WebKit::RemoteSerializedImageBufferProxy::~RemoteSerializedImageBufferProxy(WebKit::RemoteSerializedImageBufferProxy *this, void *a2)
{
  *this = &unk_1F1124F58;
  v3 = *(this + 14);
  if (v3)
  {
    while (1)
    {
      v4 = *v3;
      if ((*v3 & 1) == 0)
      {
        break;
      }

      v5 = *v3;
      atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_6:
    v6 = *(this + 1);
    v7 = IPC::Encoder::operator new(0x238, a2);
    *v7 = 1631;
    *(v7 + 68) = 0;
    *(v7 + 70) = 0;
    *(v7 + 69) = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 1) = 0;
    IPC::Encoder::encodeHeader(v7);
    v14 = v7;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, v6);
    IPC::Connection::sendMessageImpl(v3, &v14, 0, 0);
    v9 = v14;
    v14 = 0;
    if (v9)
    {
      IPC::Encoder::~Encoder(v9, v8);
      bmalloc::api::tzoneFree(v12, v13);
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
    v10 = *(this + 14);
    *(this + 14) = 0;
    if (v10)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v10);
    }
  }

  v11 = *(this + 4);
  *(this + 4) = 0;
  if (v11)
  {
    CFRelease(v11);
  }
}

{
  WebKit::RemoteSerializedImageBufferProxy::~RemoteSerializedImageBufferProxy(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

WebKit::RemoteImageBufferSetProxy *WebKit::RemoteImageBufferSetProxy::RemoteImageBufferSetProxy(WebKit::RemoteImageBufferSetProxy *this, WebKit::RemoteRenderingBackendProxy *a2)
{
  *this = &unk_1F1125060;
  *(this + 1) = 3;
  *(this + 2) = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  *this = &unk_1F1124F90;
  *(this + 3) = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  v4 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v5 = *(a2 + 1);
  atomic_fetch_add(v5, 1u);
  *(this + 4) = v5;
  *(this + 40) = 0;
  *(this + 3632) = 0;
  *(this + 1820) = 0;
  *(this + 456) = 0;
  *(this + 914) = 1065353216;
  v6 = *WebCore::DestinationColorSpace::SRGB(v4);
  *(this + 458) = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  *(this + 918) = 257;
  *(this + 3676) = 0;
  *(this + 920) = 0;
  *(this + 1842) = 0;
  *(this + 1852) = 0;
  *(this + 3688) = 0u;
  return this;
}

void WebKit::RemoteImageBufferSetProxy::~RemoteImageBufferSetProxy(WebKit::RemoteImageBufferSetProxy *this, void *a2)
{
  v3 = 0;
  *this = &unk_1F1124F90;
  v4 = this + 3685;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(this + 3685, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this + 3685);
  }

  atomic_compare_exchange_strong_explicit(v4, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {
    WTF::Lock::unlockSlow(v4);
  }

  v6 = *(this + 462);
  *(this + 462) = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    IPC::StreamClientConnection::operator delete(v6);
  }

  v7 = *(this + 461);
  *(this + 461) = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteImageBufferSetProxyFlushFence,(WTF::DestructionThread)0>::deref(v7, a2);
  }

  v8 = *(this + 458);
  *(this + 458) = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  if (*(this + 3632) == 1)
  {
    WebKit::RemoteDisplayListRecorderProxy::~RemoteDisplayListRecorderProxy(this + 5);
  }

  v9 = *(this + 4);
  *(this + 4) = 0;
  if (v9)
  {
    if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v9);
      WTF::fastFree(v9, a2);
    }
  }
}

{
  WebKit::RemoteImageBufferSetProxy::~RemoteImageBufferSetProxy(this, a2);

  WTF::fastFree(v2, v3);
}

uint64_t WebKit::RemoteImageBufferSetProxy::didPrepareForDisplay(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = (result + 3685);
  atomic_compare_exchange_strong_explicit((result + 3685), &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    result = MEMORY[0x19EB01E30](result + 3685);
  }

  v8 = *(v5 + 3688);
  if (v8)
  {
    atomic_fetch_add(v8, 1u);
    if (*(v8 + 184) == a3)
    {
      v19[0] = 0;
      v20 = 0;
      LOBYTE(v21) = 0;
      v23 = 0;
      LOBYTE(v24) = 0;
      v26 = 0;
      LOBYTE(v27) = 0;
      v29 = 0;
      std::__optional_storage_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>>(v19, a2);
      v10 = *(a2 + 112);
      if (v10 == 1)
      {
        v11 = *(a2 + 104);
        v9 = *(v5 + 3680);
      }

      else
      {
        LOBYTE(v10) = 0;
        v11 = 0;
      }

      v21 = v11;
      v22 = v9;
      v23 = v10;
      v12 = *(a2 + 128);
      if (v12 == 1)
      {
        v13 = *(a2 + 120);
        v9 = *(v5 + 3680);
      }

      else
      {
        LOBYTE(v12) = 0;
        v13 = 0;
      }

      v24 = v13;
      v25 = v9;
      v26 = v12;
      v14 = *(a2 + 144);
      if (v14 == 1)
      {
        v15 = *(a2 + 136);
        v9 = *(v5 + 3680);
      }

      else
      {
        LOBYTE(v14) = 0;
        v15 = 0;
      }

      v27 = v15;
      v28 = v9;
      v29 = v14;
      WebKit::RemoteImageBufferSetProxyFlushFence::setHandles(v8, v19);
      *(v5 + 3704) = 0;
      v16 = *(v5 + 3696);
      if (v16)
      {
        atomic_fetch_add(v16, 1u);
        if (*(v5 + 3705) == 1)
        {
          IPC::Connection::removeWorkQueueMessageReceiver(*(v16 + 8), 0x58u, *(v5 + 16));
          v18 = *(v5 + 3696);
          *(v5 + 3696) = 0;
          if (v18)
          {
            if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v18);
              IPC::StreamClientConnection::operator delete(v18);
            }
          }
        }

        if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v16);
          IPC::StreamClientConnection::operator delete(v16);
        }
      }

      if (v20 == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v19);
      }
    }

    result = WTF::ThreadSafeRefCounted<WebKit::RemoteImageBufferSetProxyFlushFence,(WTF::DestructionThread)0>::deref(v8, a2);
  }

  v17 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v17, 0, memory_order_release, memory_order_relaxed);
  if (v17 != 1)
  {
    return WTF::Lock::unlockSlow(v7);
  }

  return result;
}

uint64_t WebKit::RemoteImageBufferSetProxyFlushFence::setHandles(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = (a1 + 4);
  v6 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 4), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 4);
  }

  std::optional<WebKit::BufferSetBackendHandle>::operator=[abi:sn200100]<WebKit::BufferSetBackendHandle,void>(a1 + 8, a2);
  result = WTF::Condition::notifyOne((a1 + 5));
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void WebKit::RemoteImageBufferSetProxy::close(WebKit::RemoteImageBufferSetProxy *this)
{
  v2 = 0;
  v3 = this + 3685;
  atomic_compare_exchange_strong_explicit(this + 3685, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this + 3685);
  }

  *(this + 3705) = 1;
  v4 = *(this + 462);
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
    if ((*(this + 3704) & 1) == 0)
    {
      IPC::Connection::removeWorkQueueMessageReceiver(*(v4 + 8), 0x58u, *(this + 2));
      v5 = *(this + 462);
      *(this + 462) = 0;
      if (v5)
      {
        if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v5);
          IPC::StreamClientConnection::operator delete(v5);
        }
      }
    }

    if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      IPC::StreamClientConnection::operator delete(v4);
    }
  }

  v6 = *(this + 4);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      ++*(v7 + 5);
      WebKit::RemoteRenderingBackendProxy::releaseImageBufferSet(v7, this);
      if (*(v7 + 5) == 1)
      {
        (*(*v7 + 24))(v7);
      }

      else
      {
        --*(v7 + 5);
      }
    }
  }

  v8 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {

    WTF::Lock::unlockSlow(v3);
  }
}

void WebKit::RemoteImageBufferSetProxy::flushFrontBufferAsync(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_70;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    goto LABEL_70;
  }

  ++*(v5 + 5);
  v8 = WebKit::RemoteRenderingBackendProxy::connection(v5, a2, &v58);
  if (*(v5 + 5) == 1)
  {
    (*(*v5 + 24))(v5, v8);
  }

  else
  {
    --*(v5 + 5);
  }

  if (!v58)
  {
LABEL_70:
    *a3 = 0;
    return;
  }

  v9 = *(a1 + 32);
  if (!v9 || (v10 = *(v9 + 8)) == 0)
  {
    __break(0xC471u);
    goto LABEL_80;
  }

  v11 = *(v10 + 288);
  v12 = *(v58 + 128);
  if (_MergedGlobals_109)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(_MergedGlobals_109, v7);
  }

  else
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  v14 = NonCompact;
  *NonCompact = 1;
  *(NonCompact + 4) = 0;
  *(NonCompact + 8) = 0;
  *(NonCompact + 176) = 0;
  *(NonCompact + 184) = v11;
  *(NonCompact + 192) = v12;
  kdebug_trace();
  v16 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 3685), &v16, 1u, memory_order_acquire, memory_order_acquire);
  if (v16)
  {
    MEMORY[0x19EB01E30](a1 + 3685);
  }

  atomic_fetch_add(v14, 1u);
  v17 = *(a1 + 3688);
  *(a1 + 3688) = v14;
  if (v17)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteImageBufferSetProxyFlushFence,(WTF::DestructionThread)0>::deref(v17, v15);
  }

  v18 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 3685), &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 3685));
  }

  v19 = *(a1 + 32);
  if (!v19 || (v20 = *(v19 + 8)) == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1DD12CLL);
  }

  v56 = *(v20 + 288);
  v57 = &v56;
  ++*(v20 + 20);
  v23 = WebKit::RemoteRenderingBackendProxy::connection(v20, v15, &v59);
  if (*(v20 + 20) == 1)
  {
    v21 = (*(*v20 + 24))(v20, v23);
  }

  else
  {
    --*(v20 + 20);
  }

  v24 = v59;
  if (!v59)
  {
    goto LABEL_69;
  }

  v25 = *(a1 + 16);
  v26 = *(v59 + 128);
  v27 = INFINITY;
  if (fabs(v26) != INFINITY)
  {
    WTF::ApproximateTime::now(v21);
    v27 = v26 + v28;
  }

  if (*(v24 + 64) != v25)
  {
    IPC::StreamClientConnectionBuffer::tryAcquire(v24 + 72, buf, v27);
    if (buf[16] != 1)
    {
      goto LABEL_66;
    }

    v44 = *&buf[8];
    if (*&buf[8] > 1uLL)
    {
      v45 = *buf;
      **buf = 3198;
      v46 = v45 + 2;
      if (v44 - 2 < (-v46 & 7 | 8uLL))
      {
        goto LABEL_66;
      }

      v47 = -v46 & 7;
      *(v46 + v47) = v25;
      v48 = 6;
      if (v47 > 6)
      {
        v48 = v47;
      }

      v49 = v48 + 10;
      v50 = (*(v24 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v51 = *(v24 + 72);
      if (v50 + 16 >= v51)
      {
        v50 = 0;
      }

      v52 = v49 + v50;
      if (v51 <= v52)
      {
        v52 = 0;
      }

      *(v24 + 88) = v52;
      v53 = *(v24 + 80);
      if (*(v53 + 8) <= 0xFFuLL)
      {
        goto LABEL_74;
      }

      IPC::StreamClientConnection::wakeUpServerBatched(v24, atomic_exchange((*(v53 + 16) + 128), v52) == 0x80000000);
      *(v24 + 64) = v25;
      goto LABEL_24;
    }

    __break(0xC471u);
LABEL_80:
    JUMPOUT(0x19E1DD10CLL);
  }

LABEL_24:
  IPC::StreamClientConnectionBuffer::tryAcquire(v24 + 72, buf, v27);
  if (buf[16])
  {
    v29 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1DD14CLL);
    }

    v30 = *buf;
    **buf = 1372;
    v31 = v30 + 2;
    if (v29 - 2 >= (-v31 & 7 | 8uLL))
    {
      v32 = -v31 & 7;
      *(v31 + v32) = *v57;
      v33 = 6;
      if (v32 > 6)
      {
        v33 = v32;
      }

      v34 = v33 + 10;
      v35 = (*(v24 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v36 = *(v24 + 72);
      if (v35 + 16 >= v36)
      {
        v35 = 0;
      }

      v37 = v34 + v35;
      if (v36 <= v37)
      {
        v37 = 0;
      }

      *(v24 + 88) = v37;
      v38 = *(v24 + 80);
      if (*(v38 + 8) > 0xFFuLL)
      {
        if (atomic_exchange((*(v38 + 16) + 128), v37) == 0x80000000 || *(v24 + 124))
        {
          if (*(v24 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v24 + 100));
          }

          *(v24 + 124) = 0;
        }

        goto LABEL_36;
      }

LABEL_74:
      __break(1u);
    }

    if ((buf[16] & 1) == 0)
    {
      goto LABEL_74;
    }

    IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v24, *buf, *&buf[8]);
    if (!IPC::Connection::send<Messages::RemoteImageBufferSet::EndPrepareForDisplay>(*(v24 + 8), &v57, v25))
    {
LABEL_36:
      v39 = 1;
      goto LABEL_37;
    }
  }

LABEL_66:
  v54 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v55 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteImageBufferSet_EndPrepareForDisplay";
    *&buf[12] = 2082;
    *&buf[14] = v55;
    _os_log_impl(&dword_19D52D000, v54, OS_LOG_TYPE_DEFAULT, "RemoteImageBufferSetProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 32));
  v39 = 0;
LABEL_37:
  v40 = v59;
  v59 = 0;
  if (v40 && atomic_fetch_add(v40, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v40);
    IPC::StreamClientConnection::operator delete(v40);
  }

  if (v39)
  {
    v41 = *(a1 + 16);
    if (qword_1ED642C10)
    {
      NonCompactSlow = bmalloc::api::tzoneAllocateNonCompact(qword_1ED642C10, v22);
    }

    else
    {
      NonCompactSlow = bmalloc::api::tzoneAllocateNonCompactSlow();
    }

    *NonCompactSlow = &unk_1F11250A8;
    NonCompactSlow[1] = v41;
    NonCompactSlow[2] = v14;
    *a3 = NonCompactSlow;
    goto LABEL_44;
  }

LABEL_69:
  *a3 = 0;
  WTF::ThreadSafeRefCounted<WebKit::RemoteImageBufferSetProxyFlushFence,(WTF::DestructionThread)0>::deref(v14, v22);
LABEL_44:
  v43 = v58;
  v58 = 0;
  if (v43)
  {
    if (atomic_fetch_add(v43, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v43);
      IPC::StreamClientConnection::operator delete(v43);
    }
  }
}

void WebKit::RemoteImageBufferSetProxy::willPrepareForDisplay(WebKit::RemoteImageBufferSetProxy *this, void *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      ++*(v3 + 5);
      v6 = WebKit::RemoteRenderingBackendProxy::connection(v3, a2, &v69);
      if (*(v3 + 5) == 1)
      {
        (*(*v3 + 24))(v3, v6);
      }

      else
      {
        --*(v3 + 5);
      }

      v7 = v69;
      if (v69)
      {
        v8 = *(this + 4);
        if (!v8)
        {
          v69 = 0;
LABEL_16:
          if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v7);
            IPC::StreamClientConnection::operator delete(v7);
          }

          return;
        }

        v9 = *(v8 + 8);
        if (!v9)
        {
LABEL_15:
          v7 = v69;
          v69 = 0;
          if (!v7)
          {
            return;
          }

          goto LABEL_16;
        }

        v10 = v9[5];
        v9[5] = v10 + 1;
        if (*(this + 3684) != 1)
        {
LABEL_9:
          v11 = 0;
          *(this + 3684) = 0;
          v12 = (this + 3685);
          atomic_compare_exchange_strong_explicit(this + 3685, &v11, 1u, memory_order_acquire, memory_order_acquire);
          if (v11)
          {
            MEMORY[0x19EB01E30](this + 3685);
          }

          if (*(this + 462))
          {
LABEL_12:
            v13 = 1;
            *(this + 3704) = 1;
            atomic_compare_exchange_strong_explicit(this + 3685, &v13, 0, memory_order_release, memory_order_relaxed);
            if (v13 == 1)
            {
              goto LABEL_13;
            }

            goto LABEL_83;
          }

          v42 = v69;
          if (v69)
          {
            atomic_fetch_add(v69, 1u);
            v43 = *(this + 462);
            *(this + 462) = v42;
            if (!v43)
            {
              goto LABEL_53;
            }

            if (atomic_fetch_add(v43, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v43);
              IPC::StreamClientConnection::operator delete(v43);
            }

            v42 = *(this + 462);
            if (v42)
            {
LABEL_53:
              v44 = 0;
              atomic_fetch_add(v42, 1u);
              goto LABEL_54;
            }
          }

          else
          {
            *(this + 462) = 0;
          }

          v44 = 1;
LABEL_54:
          v45 = *(this + 4);
          if (v45)
          {
            v46 = *(v45 + 8);
            if (v46)
            {
              v47 = *(v46 + 280);
              (*(*v47 + 32))(v47);
              IPC::Connection::addWorkQueueMessageReceiver(*(v42 + 1), 0x58, v47, this, *(this + 2));
              (*(*v47 + 40))(v47);
              if ((v44 & 1) == 0 && atomic_fetch_add(v42, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v42);
                IPC::StreamClientConnection::operator delete(v42);
              }

              goto LABEL_12;
            }
          }

          __break(0xC471u);
LABEL_91:
          JUMPOUT(0x19E1DD8CCLL);
        }

        v60[0] = this + 3648;
        v9[5] = v10 + 2;
        v15 = WebKit::RemoteRenderingBackendProxy::connection(v9, v5, &v64);
        if (v9[5] == 1)
        {
          v14 = (*(*v9 + 24))(v9, v15);
        }

        else
        {
          --v9[5];
        }

        v12 = v64;
        if (!v64)
        {
LABEL_40:
          v64 = *(this + 456);
          v65 = *(this + 914);
          v28 = *(this + 458);
          v66 = v28;
          if (v28)
          {
            CFRetain(v28);
          }

          v67 = *(this + 3673);
          v68 = *(this + 3676);
          WebCore::ImageBuffer::backendParameters();
          WebCore::ImageBufferBackend::calculateBaseTransform();
          v29 = *&buf[16];
          *&buf[16] = 0;
          if (v29)
          {
            CFRelease(v29);
          }

          v30 = *(this + 456);
          v60[0] = 0;
          v60[1] = v30;
          if (*(this + 3632) == 1)
          {
            WebKit::RemoteDisplayListRecorderProxy::~RemoteDisplayListRecorderProxy(this + 5);
            *(this + 3632) = 0;
          }

          v31 = *(this + 3672);
          v32 = *(this + 3675);
          v33 = *(this + 3);
          v70 = 0;
          WebCore::GraphicsContextState::GraphicsContextState();
          WebCore::DisplayList::Recorder::Recorder();
          WebCore::GraphicsContextState::~GraphicsContextState(buf, v34);
          *(this + 5) = &unk_1F1123948;
          *(this + 3536) = v32;
          *(this + 443) = v33;
          *(this + 444) = 0;
          WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v9 + 2, v9);
          v35 = *(v9 + 1);
          atomic_fetch_add(v35, 1u);
          *(this + 445) = v35;
          *(this + 3568) = v31;
          *(this + 3569) = 1;
          *(this + 450) = 0;
          *(this + 3608) = 0;
          *(this + 3612) = 0;
          *(this + 3576) = 0u;
          *(this + 3592) = 0;
          __asm { FMOV            V0.2S, #1.0 }

          *(this + 452) = _D0;
          *(this + 3624) = 1;
          *(this + 3632) = 1;
          v41 = v66;
          v66 = 0;
          if (v41)
          {
            CFRelease(v41);
          }

          goto LABEL_9;
        }

        v16 = *(this + 2);
        v17 = v64[16];
        v18 = INFINITY;
        if (fabs(v17) != INFINITY)
        {
          WTF::ApproximateTime::now(v14);
          v18 = v17 + v19;
        }

        if (*(v12 + 8) != v16)
        {
          IPC::StreamClientConnectionBuffer::tryAcquire((v12 + 9), buf, v18);
          if (buf[16] != 1)
          {
            goto LABEL_76;
          }

          v48 = *&buf[8];
          if (*&buf[8] <= 1uLL)
          {
            __break(0xC471u);
            goto LABEL_91;
          }

          v49 = *buf;
          **buf = 3198;
          v50 = v49 + 2;
          if (v48 - 2 < (-v50 & 7 | 8uLL))
          {
            goto LABEL_76;
          }

          v51 = -v50 & 7;
          *(v50 + v51) = v16;
          v52 = 6;
          if (v51 > 6)
          {
            v52 = v51;
          }

          v53 = v52 + 10;
          v54 = (*(v12 + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
          v55 = *(v12 + 9);
          if (v54 + 16 >= v55)
          {
            v54 = 0;
          }

          v56 = v53 + v54;
          if (v55 <= v56)
          {
            v56 = 0;
          }

          *(v12 + 11) = v56;
          v57 = *(v12 + 10);
          if (*(v57 + 8) <= 0xFFuLL)
          {
            goto LABEL_82;
          }

          IPC::StreamClientConnection::wakeUpServerBatched(v12, atomic_exchange((*(v57 + 16) + 128), v56) == 0x80000000);
          *(v12 + 8) = v16;
        }

        IPC::StreamClientConnectionBuffer::tryAcquire((v12 + 9), &v61, v18);
        if (v63)
        {
          v20 = v61;
          v21 = v62;
          *&buf[16] = v62;
          if (v62 <= 1)
          {
            __break(0xC471u);
            JUMPOUT(0x19E1DD8ECLL);
          }

          *v61 = 1373;
          *buf = v20 + 1;
          *&buf[8] = v21 - 2;
          IPC::ArgumentCoder<WebKit::RemoteImageBufferSetConfiguration,void>::encode(buf, v60[0]);
          if (*buf)
          {
            v22 = *&buf[16] - *&buf[8];
            if (*&buf[16] - *&buf[8] <= 0x10uLL)
            {
              v22 = 16;
            }

            v23 = (*(v12 + 11) + 1) & 0xFFFFFFFFFFFFFFFELL;
            v24 = *(v12 + 9);
            if (v23 + 16 >= v24)
            {
              v23 = 0;
            }

            v25 = v23 + v22;
            if (v24 <= v25)
            {
              v25 = 0;
            }

            *(v12 + 11) = v25;
            v26 = *(v12 + 10);
            if (*(v26 + 8) > 0xFFuLL)
            {
              if (atomic_exchange((*(v26 + 16) + 128), v25) == 0x80000000 || *(v12 + 31))
              {
                if (*(v12 + 112) == 1)
                {
                  MEMORY[0x19EB16320](*(v12 + 25));
                }

                *(v12 + 31) = 0;
              }

              goto LABEL_37;
            }

LABEL_82:
            __break(1u);
LABEL_83:
            WTF::Lock::unlockSlow(v12);
LABEL_13:
            if (v9[5] == 1)
            {
              (*(*v9 + 24))(v9);
            }

            else
            {
              --v9[5];
            }

            goto LABEL_15;
          }

          if ((v63 & 1) == 0)
          {
            goto LABEL_82;
          }

          IPC::StreamClientConnection::sendProcessOutOfStreamMessage(v12, v61, v62);
          if (!IPC::Connection::send<Messages::RemoteImageBufferSet::UpdateConfiguration>(*(v12 + 1), v60, v16))
          {
LABEL_37:
            v27 = v64;
            v64 = 0;
            if (v27 && atomic_fetch_add(v27, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v27);
              IPC::StreamClientConnection::operator delete(v27);
            }

            goto LABEL_40;
          }
        }

LABEL_76:
        v58 = qword_1ED6410D0;
        if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
        {
          v59 = IPC::errorAsString();
          *buf = 136446466;
          *&buf[4] = "RemoteImageBufferSet_UpdateConfiguration";
          *&buf[12] = 2082;
          *&buf[14] = v59;
          _os_log_impl(&dword_19D52D000, v58, OS_LOG_TYPE_DEFAULT, "RemoteImageBufferSetProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
        }

        WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(this + 4));
        goto LABEL_37;
      }
    }
  }
}

void WebKit::RemoteImageBufferSetProxy::disconnect(WebKit::RemoteImageBufferSetProxy *this)
{
  v2 = 0;
  v3 = this + 3685;
  atomic_compare_exchange_strong_explicit(this + 3685, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this + 3685);
  }

  v4 = *(this + 461);
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
    v10[0] = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    WebKit::RemoteImageBufferSetProxyFlushFence::setHandles(v4, v10);
    if (v11 == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v10);
    }

    v6 = *(this + 461);
    *(this + 461) = 0;
    if (v6)
    {
      WTF::ThreadSafeRefCounted<WebKit::RemoteImageBufferSetProxyFlushFence,(WTF::DestructionThread)0>::deref(v6, v5);
    }

    WTF::ThreadSafeRefCounted<WebKit::RemoteImageBufferSetProxyFlushFence,(WTF::DestructionThread)0>::deref(v4, v5);
  }

  v7 = *(this + 462);
  if (v7)
  {
    atomic_fetch_add(v7, 1u);
    IPC::Connection::removeWorkQueueMessageReceiver(*(v7 + 8), 0x58u, *(this + 2));
    v8 = *(this + 462);
    *(this + 462) = 0;
    if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8);
      IPC::StreamClientConnection::operator delete(v8);
    }

    if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v7);
      IPC::StreamClientConnection::operator delete(v7);
    }
  }

  *(this + 3704) = 0;
  ++*(this + 920);
  v9 = 1;
  *(this + 3684) = 1;
  if (*(this + 3632) == 1)
  {
    WebKit::RemoteDisplayListRecorderProxy::~RemoteDisplayListRecorderProxy(this + 5);
    *(this + 3632) = 0;
  }

  atomic_compare_exchange_strong_explicit(v3, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }
}

uint64_t WebKit::RemoteNativeImageBackendProxy::create@<X0>(void *a1@<X8>)
{
  WebCore::ShareableBitmap::createFromImagePixels();
  if (v7)
  {
    WebCore::ShareableBitmap::createPlatformImage();
    operator new();
  }

  v5 = WebCore::ShareableBitmap::createFromImageDraw();
  WebCore::DestinationColorSpace::SRGB(v5);
  result = WebCore::ShareableBitmap::createFromImageDraw();
  *a1 = 0;
  return result;
}

WebCore::NativeImageBackend *WebKit::RemoteNativeImageBackendProxy::RemoteNativeImageBackendProxy(WebCore::NativeImageBackend *a1, uint64_t *a2, const void **a3)
{
  v6 = WebCore::NativeImageBackend::NativeImageBackend(a1);
  v7 = *a2;
  *a2 = 0;
  *v6 = &unk_1F1124FD8;
  v6[1] = v7;
  v8 = *a3;
  *a3 = 0;
  cf = v8;
  WebCore::PlatformImageNativeImageBackend::PlatformImageNativeImageBackend();
  if (cf)
  {
    CFRelease(cf);
  }

  return a1;
}

void WebKit::RemoteNativeImageBackendProxy::~RemoteNativeImageBackendProxy(WebKit::RemoteNativeImageBackendProxy *this)
{
  WebCore::PlatformImageNativeImageBackend::~PlatformImageNativeImageBackend((this + 16));
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v3, v2);
  }

  MEMORY[0x1EEE57060](this);
}

{
  WebKit::RemoteNativeImageBackendProxy::~RemoteNativeImageBackendProxy(this);

  JUMPOUT(0x19EB14CF0);
}

uint64_t WebKit::ImageBufferShareableBitmapBackend::bitmap@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 56);
  atomic_fetch_add(v2, 1u);
  *a2 = v2;
  return this;
}

uint64_t non-virtual thunk toWebKit::ImageBufferShareableBitmapBackend::bitmap@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 8);
  atomic_fetch_add(v2, 1u);
  *a2 = v2;
  return this;
}

uint64_t WebKit::RemoteDisplayListRecorderProxy::setMaxEDRHeadroom(uint64_t result, uint64_t a2)
{
  *(result + 3568) = a2;
  *(result + 3572) = BYTE4(a2);
  return result;
}

double WebKit::RemoteDisplayListRecorderProxy::clearMaxEDRHeadrooms(WebKit::RemoteDisplayListRecorderProxy *this)
{
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 447) = result;
  return result;
}

uint64_t WebKit::ImageBufferShareableBitmapBackend::operator new(WebKit::ImageBufferShareableBitmapBackend *this, void *a2)
{
  if (this == 72 && WebKit::ImageBufferShareableBitmapBackend::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ImageBufferShareableBitmapBackend::s_heapRef, a2);
  }

  else
  {
    return WebKit::ImageBufferShareableBitmapBackend::operatorNewSlow(this);
  }
}

WebKit::SharedVideoFrameWriter *std::unique_ptr<WebKit::SharedVideoFrameWriter>::reset[abi:sn200100](WebKit::SharedVideoFrameWriter **a1, WebKit::SharedVideoFrameWriter *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::SharedVideoFrameWriter::~SharedVideoFrameWriter(result);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

atomic_uchar **WebCore::GraphicsContextState::operator=(atomic_uchar **a1, uint64_t *a2)
{
  v4 = *a1;
  if (*a1 != *a2)
  {
    if ((v4 & 0x8000000000000) != 0)
    {
      v24 = (v4 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v24);
        WTF::fastFree(v24, a2);
      }
    }

    v5 = *a2;
    *a1 = *a2;
    if ((v5 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

  v6 = *(a1 + 64);
  v7 = *(a2 + 64);
  if (v6 == 255)
  {
    if (v7 != 255)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v7 != 255)
    {
LABEL_7:
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJNSt3__19monostateEN7WebCore26SourceBrushLogicalGradientEN3WTF3RefINS8_7PatternENSA_12RawPtrTraitsISC_EENSA_21DefaultRefDerefTraitsISC_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISI_LNS0_5TraitE1EEEEEvOT_EUlRSQ_OT0_E_JRSJ_SP_EEEDcmSR_DpOT0_(v7, a1 + 1, a1 + 1, (a2 + 1));
      goto LABEL_8;
    }

    if (*(a1 + 64))
    {
      if (v6 == 1)
      {
        WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(a1 + 1, a2);
      }

      else
      {
        v29 = a1[1];
        a1[1] = 0;
        if (v29)
        {
          WTF::ThreadSafeRefCounted<WebCore::Pattern,(WTF::DestructionThread)0>::deref(v29);
        }
      }
    }

    *(a1 + 64) = -1;
  }

LABEL_8:
  v8 = a1[9];
  if (v8 != a2[9])
  {
    if ((v8 & 0x8000000000000) != 0)
    {
      v25 = (v8 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v8 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v25);
        WTF::fastFree(v25, a2);
      }
    }

    v9 = a2[9];
    a1[9] = v9;
    if ((v9 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

  v10 = *(a1 + 136);
  v11 = *(a2 + 136);
  if (v10 == 255)
  {
    if (v11 != 255)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v11 != 255)
    {
LABEL_14:
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJNSt3__19monostateEN7WebCore26SourceBrushLogicalGradientEN3WTF3RefINS8_7PatternENSA_12RawPtrTraitsISC_EENSA_21DefaultRefDerefTraitsISC_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISI_LNS0_5TraitE1EEEEEvOT_EUlRSQ_OT0_E_JRSJ_SP_EEEDcmSR_DpOT0_(v11, a1 + 10, a1 + 10, (a2 + 10));
      goto LABEL_15;
    }

    if (*(a1 + 136))
    {
      if (v10 == 1)
      {
        WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(a1 + 10, a2);
      }

      else
      {
        v30 = a1[10];
        a1[10] = 0;
        if (v30)
        {
          WTF::ThreadSafeRefCounted<WebCore::Pattern,(WTF::DestructionThread)0>::deref(v30);
        }
      }
    }

    *(a1 + 136) = -1;
  }

LABEL_15:
  v12 = a2[18];
  *(a1 + 38) = *(a2 + 38);
  a1[18] = v12;
  if (*(a1 + 192) == *(a2 + 192))
  {
    if (*(a1 + 192))
    {
      v20 = a2[20];
      *(a1 + 42) = *(a2 + 42);
      a1[20] = v20;
      v21 = a1[22];
      if (v21 != a2[22])
      {
        if ((v21 & 0x8000000000000) != 0)
        {
          v28 = (v21 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v21 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v28);
            WTF::fastFree(v28, a2);
          }
        }

        v22 = a2[22];
        a1[22] = v22;
        if ((v22 & 0x8000000000000) != 0)
        {
          atomic_fetch_add((v22 & 0xFFFFFFFFFFFFLL), 1u);
        }
      }

      a1[23] = a2[23];
    }
  }

  else if (*(a1 + 192))
  {
    v18 = a1[22];
    if ((v18 & 0x8000000000000) != 0)
    {
      v23 = (v18 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v18 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v23);
        WTF::fastFree(v23, a2);
      }
    }

    *(a1 + 192) = 0;
  }

  else
  {
    v16 = a2[20];
    *(a1 + 42) = *(a2 + 42);
    a1[20] = v16;
    v17 = a2[22];
    a1[22] = v17;
    if ((v17 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v17 & 0xFFFFFFFFFFFFLL), 1u);
    }

    a1[23] = a2[23];
    *(a1 + 192) = 1;
  }

  v13 = *(a1 + 288);
  if (v13 == *(a2 + 288))
  {
    if (!*(a1 + 288))
    {
      goto LABEL_19;
    }

    v19 = *(a2 + 280);
    if (*(a1 + 280) == 255)
    {
      if (v19 == 255)
      {
        goto LABEL_19;
      }

      goto LABEL_40;
    }

    if (v19 != 255)
    {
LABEL_40:
      v31 = (a1 + 25);
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore18GraphicsDropShadowENS6_20GraphicsGaussianBlurENS6_19GraphicsColorMatrixEEEEE14generic_assignIRKNS0_15copy_assignmentISA_LNS0_5TraitE1EEEEEvOT_EUlRSI_OT0_E_JRSB_SH_EEEDcmSJ_DpOT0_(v19, &v31, (a1 + 25), a2 + 25);
      goto LABEL_19;
    }

    if (!*(a1 + 280))
    {
      v26 = a1[27];
      if ((v26 & 0x8000000000000) != 0)
      {
        v27 = (v26 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v26 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v27);
          WTF::fastFree(v27, a2);
        }
      }
    }

    *(a1 + 280) = -1;
  }

  else if (*(a1 + 288))
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>,(mpark::detail::Trait)1>::~move_constructor((a1 + 25), a2);
    *(a1 + 288) = 0;
  }

  else
  {
    std::__optional_storage_base<mpark::variant<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>,false>::__construct[abi:sn200100]<mpark::variant<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix> const&>((a1 + 25), a2 + 25, v13);
  }

LABEL_19:
  v14 = a2[37];
  *(a1 + 76) = *(a2 + 76);
  a1[37] = v14;
  return a1;
}

atomic_uchar **_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJNSt3__19monostateEN7WebCore26SourceBrushLogicalGradientEN3WTF3RefINS8_7PatternENSA_12RawPtrTraitsISC_EENSA_21DefaultRefDerefTraitsISC_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISI_LNS0_5TraitE1EEEEEvOT_EUlRSQ_OT0_E_JRSJ_SP_EEEDcmSR_DpOT0_(atomic_uchar **result, atomic_uchar **a2, atomic_uchar ***a3, uint64_t a4)
{
  if (result)
  {
    if (result == 1)
    {
      v5 = *(a2 + 56);
      if (*(a2 + 56) && v5 != 255)
      {
        v14 = a4;
        v16 = a2;
        if (v5 == 1)
        {
          result = WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::operator=(a3, *a4);
          v11 = *(v14 + 8);
          v12 = *(v14 + 24);
          *(result + 5) = *(v14 + 40);
          *(result + 3) = v12;
          *(result + 1) = v11;
          return result;
        }

        result = *a2;
        *a2 = 0;
        if (result)
        {
          result = WTF::ThreadSafeRefCounted<WebCore::Pattern,(WTF::DestructionThread)0>::deref(result);
          a4 = v14;
          a2 = v16;
        }
      }

      *(a2 + 56) = -1;
      v6 = *a4;
      while (1)
      {
        v7 = v6[1];
        if ((v7 & 1) == 0)
        {
          break;
        }

        v8 = v6[1];
        atomic_compare_exchange_strong_explicit(v6 + 1, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v8 == v7)
        {
          goto LABEL_9;
        }
      }

      v15 = a4;
      v18 = a2;
      v13 = v6;
      result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(v6[1]);
      v6 = v13;
      a4 = v15;
      a2 = v18;
LABEL_9:
      *a2 = v6;
      v9 = *(a4 + 8);
      v10 = *(a4 + 24);
      *(a2 + 5) = *(a4 + 40);
      *(a2 + 3) = v10;
      *(a2 + 1) = v9;
      *(a2 + 56) = 1;
    }

    else
    {

      return _ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJNSt3__19monostateEN7WebCore26SourceBrushLogicalGradientEN3WTF3RefINS8_7PatternENSA_12RawPtrTraitsISC_EENSA_21DefaultRefDerefTraitsISC_EEEEEEEE14generic_assignIRKNS3_15copy_assignmentISI_LNS3_5TraitE1EEEEEvOT_EUlRSQ_OT0_E_JRNS3_3altILm2ESH_EERKSX_EEEDTclsr6detailE6invokeclsr3libE7forwardISQ_Efp_Espclsr3libE7forwardIT0_Efp0_EEESR_DpOS11_(a2, a3, a4);
    }
  }

  else
  {
    v4 = *(a2 + 56);
    if (*(a2 + 56))
    {
      if (v4 != 255)
      {
        v17 = a2;
        if (v4 == 1)
        {
          result = WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(a2, a2);
          a2 = result;
        }

        else
        {
          result = *a2;
          *a2 = 0;
          if (result)
          {
            result = WTF::ThreadSafeRefCounted<WebCore::Pattern,(WTF::DestructionThread)0>::deref(result);
            a2 = v17;
          }
        }
      }

      *(a2 + 56) = 0;
    }
  }

  return result;
}

atomic_uchar ***WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::operator=(atomic_uchar ***a1, atomic_ullong *a2)
{
  while (1)
  {
    v3 = a2[1];
    if ((v3 & 1) == 0)
    {
      break;
    }

    v4 = a2[1];
    atomic_compare_exchange_strong_explicit(a2 + 1, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_3;
    }
  }

  v7 = a2;
  WTF::ThreadSafeWeakPtrControlBlock::strongRef(a2[1]);
  a2 = v7;
LABEL_3:
  v5 = *a1;
  *a1 = a2;
  v8 = v5;
  WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v8, a2);
  return a1;
}

__n128 mpark::detail::constructor<mpark::detail::traits<std::monostate,WebCore::SourceBrushLogicalGradient,WTF::Ref<WebCore::Pattern,WTF::RawPtrTraits<WebCore::Pattern>,WTF::DefaultRefDerefTraits<WebCore::Pattern>>>>::construct_alt<1ul,WebCore::SourceBrushLogicalGradient,WebCore::SourceBrushLogicalGradient const&>(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  while (1)
  {
    v3 = *(v2 + 8);
    if ((v3 & 1) == 0)
    {
      break;
    }

    v4 = *(v2 + 8);
    atomic_compare_exchange_strong_explicit((v2 + 8), &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v4 == v3)
    {
      goto LABEL_4;
    }
  }

  v9 = v2;
  v7 = a2;
  v8 = a1;
  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v2 + 8));
  v2 = v9;
  a2 = v7;
  a1 = v8;
LABEL_4:
  *a1 = v2;
  result = *(a2 + 1);
  v6 = *(a2 + 3);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v6;
  *(a1 + 8) = result;
  return result;
}

atomic_uchar ***_ZN5mpark3lib5cpp176invokeIZNS_6detail10assignmentINS3_6traitsIJNSt3__19monostateEN7WebCore26SourceBrushLogicalGradientEN3WTF3RefINS8_7PatternENSA_12RawPtrTraitsISC_EENSA_21DefaultRefDerefTraitsISC_EEEEEEEE14generic_assignIRKNS3_15copy_assignmentISI_LNS3_5TraitE1EEEEEvOT_EUlRSQ_OT0_E_JRNS3_3altILm2ESH_EERKSX_EEEDTclsr6detailE6invokeclsr3libE7forwardISQ_Efp_Espclsr3libE7forwardIT0_Efp0_EEESR_DpOS11_(atomic_uchar ***result, atomic_uint *volatile *a2, atomic_uint *volatile *a3)
{
  if (*(result + 56) <= 1u)
  {
    if (*(result + 56))
    {
      result = WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(result, a2);
    }

    goto LABEL_9;
  }

  if (*(result + 56) != 2)
  {
LABEL_9:
    *(result + 56) = -1;
    v5 = *a3;
    atomic_fetch_add(*a3, 1u);
    *result = v5;
    *(result + 56) = 2;
    return result;
  }

  v4 = *a3;
  atomic_fetch_add(*a3, 1u);
  result = *a2;
  *a2 = v4;
  if (result)
  {

    return WTF::ThreadSafeRefCounted<WebCore::Pattern,(WTF::DestructionThread)0>::deref(result);
  }

  return result;
}

uint64_t std::__optional_storage_base<mpark::variant<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>,false>::__construct[abi:sn200100]<mpark::variant<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix> const&>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (!result)
  {
    __break(1u);
LABEL_12:
    atomic_fetch_add((a3 & 0xFFFFFFFFFFFFLL), 1u);
LABEL_5:
    *(result + 24) = a2[3];
LABEL_9:
    *(result + 80) = *(a2 + 80);
    goto LABEL_10;
  }

  *result = 0;
  *(result + 80) = -1;
  if (*(a2 + 80) <= 1u)
  {
    if (*(a2 + 80))
    {
      *result = *a2;
      goto LABEL_9;
    }

    v3 = *a2;
    *(result + 8) = *(a2 + 2);
    *result = v3;
    a3 = a2[2];
    *(result + 16) = a3;
    if ((a3 & 0x8000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  if (*(a2 + 80) == 2)
  {
    *result = *a2;
    v4 = *(a2 + 1);
    v5 = *(a2 + 2);
    v6 = *(a2 + 4);
    *(result + 48) = *(a2 + 3);
    *(result + 64) = v6;
    *(result + 16) = v4;
    *(result + 32) = v5;
    goto LABEL_9;
  }

LABEL_10:
  *(result + 88) = 1;
  return result;
}

uint64_t WebCore::GraphicsContextState::GraphicsContextState(uint64_t this, const WebCore::GraphicsContextState *a2)
{
  v2 = *a2;
  *this = *a2;
  if ((v2 & 0x8000000000000) != 0)
  {
    atomic_fetch_add((v2 & 0xFFFFFFFFFFFFLL), 1u);
  }

  *(this + 8) = 0;
  *(this + 64) = -1;
  v3 = *(a2 + 64);
  if (!*(a2 + 64))
  {
    goto LABEL_4;
  }

  if (v3 != 255)
  {
    v16 = this;
    if (v3 == 2)
    {
      v13 = *(a2 + 1);
      atomic_fetch_add(v13, 1u);
      *(this + 8) = v13;
    }

    else
    {
      v9 = a2;
      mpark::detail::constructor<mpark::detail::traits<std::monostate,WebCore::SourceBrushLogicalGradient,WTF::Ref<WebCore::Pattern,WTF::RawPtrTraits<WebCore::Pattern>,WTF::DefaultRefDerefTraits<WebCore::Pattern>>>>::construct_alt<1ul,WebCore::SourceBrushLogicalGradient,WebCore::SourceBrushLogicalGradient const&>(this + 8, a2 + 1);
      a2 = v9;
    }

    this = v16;
LABEL_4:
    *(this + 64) = *(a2 + 64);
  }

  v4 = *(a2 + 9);
  *(this + 72) = v4;
  if ((v4 & 0x8000000000000) != 0)
  {
    atomic_fetch_add((v4 & 0xFFFFFFFFFFFFLL), 1u);
  }

  *(this + 80) = 0;
  *(this + 136) = -1;
  v5 = *(a2 + 136);
  if (!*(a2 + 136))
  {
    goto LABEL_8;
  }

  if (v5 != 255)
  {
    v17 = this;
    if (v5 == 2)
    {
      v14 = *(a2 + 10);
      atomic_fetch_add(v14, 1u);
      *(this + 80) = v14;
    }

    else
    {
      v10 = a2;
      mpark::detail::constructor<mpark::detail::traits<std::monostate,WebCore::SourceBrushLogicalGradient,WTF::Ref<WebCore::Pattern,WTF::RawPtrTraits<WebCore::Pattern>,WTF::DefaultRefDerefTraits<WebCore::Pattern>>>>::construct_alt<1ul,WebCore::SourceBrushLogicalGradient,WebCore::SourceBrushLogicalGradient const&>(this + 80, a2 + 10);
      a2 = v10;
    }

    this = v17;
LABEL_8:
    *(this + 136) = *(a2 + 136);
  }

  v6 = *(a2 + 18);
  v7 = *(a2 + 38);
  *(this + 160) = 0;
  *(this + 152) = v7;
  *(this + 144) = v6;
  *(this + 192) = 0;
  if (*(a2 + 192) == 1)
  {
    v11 = *(a2 + 20);
    *(this + 168) = *(a2 + 42);
    *(this + 160) = v11;
    v12 = *(a2 + 22);
    *(this + 176) = v12;
    if ((v12 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v12 & 0xFFFFFFFFFFFFLL), 1u);
    }

    *(this + 184) = *(a2 + 23);
    *(this + 192) = 1;
  }

  *(this + 200) = 0;
  *(this + 288) = 0;
  if (*(a2 + 288) == 1)
  {
    v15 = a2;
    v18 = this;
    std::__optional_storage_base<mpark::variant<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>,false>::__construct[abi:sn200100]<mpark::variant<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix> const&>(this + 200, a2 + 25, this + 200);
    a2 = v15;
    this = v18;
  }

  v8 = *(a2 + 37);
  *(this + 304) = *(a2 + 76);
  *(this + 296) = v8;
  return this;
}

_BYTE *std::optional<IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::FilteredNativeImage>>::optional[abi:sn200100]<IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::FilteredNativeImage>,0>(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  a1[96] = -1;
  if (a2[96] != 255)
  {
    if (a2[96])
    {
      *a1 = *a2;
    }

    else
    {
      v4 = *a2;
      *a2 = 0;
      *a1 = v4;
      a1[8] = 0;
      v5 = (a1 + 8);
      a1[88] = 0;
      if (a2[88] == 1)
      {
        WebCore::ShareableBitmapHandle::ShareableBitmapHandle(v5, (a2 + 8));
        a1[88] = 1;
      }
    }

    a1[96] = a2[96];
  }

  a1[104] = 1;
  return a1;
}

uint64_t *IPC::Decoder::operator>><std::tuple<std::optional<WebCore::ShareableBitmapHandle>>>(uint64_t *a1, WTF::MachSendRight *a2)
{
  IPC::ArgumentCoder<std::tuple<std::optional<WebCore::ShareableBitmapHandle>>,void>::decode<IPC::Decoder>(a1, v10);
  if ((v14 & 1) == 0)
  {
    v6 = *a1;
    v7 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v8 = a1[3];
    if (v8 && v7 != 0)
    {
      (*(*v8 + 16))(v8, v6);
    }
  }

  std::__optional_storage_base<std::tuple<std::optional<WebCore::ShareableBitmapHandle>>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<std::tuple<std::optional<WebCore::ShareableBitmapHandle>>,false>>(a2, v10);
  if (v14 == 1 && v13 == 1)
  {
    if (v12 == 1)
    {
      v4 = cf;
      cf = 0;
      if (v4)
      {
        CFRelease(v4);
      }
    }

    WTF::MachSendRight::~MachSendRight(v10);
  }

  return a1;
}

void std::__optional_storage_base<std::tuple<std::optional<WebCore::ShareableBitmapHandle>>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<std::tuple<std::optional<WebCore::ShareableBitmapHandle>>,false>>(WTF::MachSendRight *this, uint64_t a2)
{
  if (*(this + 88) == *(a2 + 88))
  {
    if (*(this + 88))
    {

      std::__optional_storage_base<WebCore::ShareableBitmapHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::ShareableBitmapHandle,false>>(this, a2);
    }
  }

  else if (*(this + 88))
  {
    if (*(this + 80) == 1)
    {
      if (*(this + 32) == 1)
      {
        v3 = *(this + 3);
        *(this + 3) = 0;
        if (v3)
        {
          CFRelease(v3);
        }
      }

      WTF::MachSendRight::~MachSendRight(this);
    }

    *(this + 88) = 0;
  }

  else
  {
    *this = 0;
    *(this + 80) = 0;
    if (*(a2 + 80) == 1)
    {
      WebCore::ShareableBitmapHandle::ShareableBitmapHandle(this, a2);
      *(this + 80) = 1;
    }

    *(this + 88) = 1;
  }
}

uint64_t IPC::ConnectionSendSyncResult<Messages::RemoteImageBuffer::FilteredNativeImage>::ConnectionSendSyncResult(uint64_t a1, IPC::Decoder **a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v8 = v4;
  v9[0] = 0;
  v12 = 0;
  if (*(a3 + 80))
  {
    WebCore::ShareableBitmapHandle::ShareableBitmapHandle(v9, a3);
    v12 = 1;
    *a1 = v8;
    *(a1 + 8) = 0;
    *(a1 + 88) = 0;
    WebCore::ShareableBitmapHandle::ShareableBitmapHandle(a1 + 8, v9);
    *(a1 + 88) = 1;
    v5 = v12;
    *(a1 + 96) = 0;
    if (v5)
    {
      if (v11 == 1)
      {
        v6 = cf;
        cf = 0;
        if (v6)
        {
          CFRelease(v6);
        }
      }

      WTF::MachSendRight::~MachSendRight(v9);
    }
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  return a1;
}

IPC::Encoder *IPC::Connection::sendSync<Messages::RemoteImageBuffer::FlushContextSync>(_BYTE *a1, unsigned __int8 *a2, uint64_t a3, double a4)
{
  IPC::Connection::createSyncMessageEncoder(0x1003, a3, v20);
  v7 = IPC::Connection::sendSyncMessage(a2, v20[1], v20, 0, &v18, a4);
  if (v19)
  {
    if (v19 != 1)
    {
      mpark::throw_bad_variant_access(v7);
    }

    *a1 = v18;
    a1[16] = 1;
  }

  else
  {
    v9 = v18;
    v18 = 0;
    if (*(v9 + 25) == 3194)
    {
      *a1 = 11;
      a1[16] = 1;
      IPC::Decoder::~Decoder(v9);
      bmalloc::api::tzoneFree(v10, v11);
      if (!v19)
      {
        v12 = v18;
        v18 = 0;
        if (v12)
        {
          IPC::Decoder::~Decoder(v12);
          bmalloc::api::tzoneFree(v13, v14);
        }
      }
    }

    else
    {
      *a1 = v9;
      a1[16] = 0;
    }
  }

  result = v20[0];
  v20[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v16, v17);
  }

  return result;
}

uint64_t std::optional<WebKit::BufferSetBackendHandle>::operator=[abi:sn200100]<WebKit::BufferSetBackendHandle,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 168) == 1)
  {
    std::__optional_storage_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>>(a1, a2);
    *(a1 + 96) = *(a2 + 96);
    v8 = *(a2 + 112);
    v9 = *(a2 + 128);
    v10 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 128) = v9;
    *(a1 + 144) = v10;
    *(a1 + 112) = v8;
  }

  else
  {
    *a1 = 0;
    *(a1 + 88) = 0;
    if (*(a2 + 88) == 1)
    {
      mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>::variant(a1, a2);
      *(a1 + 88) = 1;
    }

    *(a1 + 96) = *(a2 + 96);
    v4 = *(a2 + 112);
    v5 = *(a2 + 128);
    v6 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 128) = v5;
    *(a1 + 144) = v6;
    *(a1 + 112) = v4;
    *(a1 + 168) = 1;
  }

  return a1;
}

uint64_t IPC::Connection::send<Messages::RemoteImageBufferSet::EndPrepareForDisplay>(uint64_t *a1, void **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1372;
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

void WebKit::anonymous namespace::RemoteImageBufferSetProxyFlusher::~RemoteImageBufferSetProxyFlusher(WebKit::_anonymous_namespace_::RemoteImageBufferSetProxyFlusher *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteImageBufferSetProxyFlushFence,(WTF::DestructionThread)0>::deref(v3, a2);
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteImageBufferSetProxyFlushFence,(WTF::DestructionThread)0>::deref(v3, a2);
  }

  bmalloc::api::tzoneFree(this, a2);
}

uint64_t WebKit::anonymous namespace::RemoteImageBufferSetProxyFlusher::flushAndCollectHandles(WTF::MonotonicTime *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = 0;
  v5 = *(a1 + 2);
  v6 = (v5 + 4);
  atomic_compare_exchange_strong_explicit((v5 + 4), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    goto LABEL_47;
  }

  while (1)
  {
    if ((*(v5 + 176) & 1) == 0)
    {
      v7 = *(v5 + 192);
      if (fabs(v7) != INFINITY)
      {
        WTF::MonotonicTime::now(a1);
        v7 = v7 + v8;
      }

      v43 = v7;
      v44 = 1;
      WTF::Condition::waitUntilUnchecked<WTF::Lock>(v5 + 5, v6, &v43);
    }

    v9 = 1;
    kdebug_trace();
    v10 = *(v5 + 176);
    atomic_compare_exchange_strong_explicit((v5 + 4), &v9, 0, memory_order_release, memory_order_relaxed);
    if (v9 != 1)
    {
      WTF::Lock::unlockSlow(v6);
    }

    if (!v10)
    {
      break;
    }

    v11 = 0;
    v5 = *(v3 + 2);
    v6 = (v5 + 4);
    atomic_compare_exchange_strong_explicit((v5 + 4), &v11, 1u, memory_order_acquire, memory_order_acquire);
    if (v11)
    {
      MEMORY[0x19EB01E30](v5 + 4);
    }

    LOBYTE(v43) = 0;
    v51 = 0;
    if (*(v5 + 176) == 1)
    {
      v45 = 0;
      if (*(v5 + 96) == 1)
      {
        mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>::variant(&v43, v5 + 8);
        v45 = 1;
        v12 = *(v5 + 176);
        v46 = *(v5 + 104);
        v13 = *(v5 + 120);
        v14 = *(v5 + 136);
        v15 = *(v5 + 152);
        v50 = *(v5 + 168);
        v48 = v14;
        v49 = v15;
        v47 = v13;
        v51 = 1;
        if ((v12 & 1) == 0)
        {
          goto LABEL_17;
        }

        if (*(v5 + 96))
        {
          mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor((v5 + 8));
        }
      }

      else
      {
        v38 = *(v5 + 120);
        v39 = *(v5 + 136);
        v40 = *(v5 + 152);
        v50 = *(v5 + 168);
        v41 = *(v5 + 104);
        v48 = v39;
        v49 = v40;
        v46 = v41;
        v47 = v38;
        v51 = 1;
      }

      *(v5 + 176) = 0;
    }

LABEL_17:
    v16 = 1;
    atomic_compare_exchange_strong_explicit(v6, &v16, 0, memory_order_release, memory_order_relaxed);
    if (v16 != 1)
    {
      WTF::Lock::unlockSlow((v5 + 4));
    }

    if (v51)
    {
      v17 = WTF::fastMalloc(0xA8);
      *v17 = 0;
      *(v17 + 88) = 0;
      if (v45 == 1)
      {
        mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>::variant(v17, &v43);
        *(v17 + 88) = 1;
      }

      *(v17 + 96) = v46;
      v18 = v47;
      v19 = v48;
      v20 = v49;
      *(v17 + 160) = v50;
      *(v17 + 128) = v19;
      *(v17 + 144) = v20;
      *(v17 + 112) = v18;
      v52 = v17;
      v21 = *(v3 + 1);
      if (v21 == -1 || !v21)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1DF1C8);
      }

      v22 = *a2;
      if (!*a2)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0);
        v22 = *a2;
        v21 = *(v3 + 1);
      }

      v23 = *(v22 - 8);
      v24 = (v21 + ~(v21 << 32)) ^ ((v21 + ~(v21 << 32)) >> 22);
      v25 = 9 * ((v24 + ~(v24 << 13)) ^ ((v24 + ~(v24 << 13)) >> 8));
      v26 = (v25 ^ (v25 >> 15)) + ~((v25 ^ (v25 >> 15)) << 27);
      v27 = v23 & ((v26 >> 31) ^ v26);
      v28 = (v22 + 16 * v27);
      v29 = *v28;
      if (*v28)
      {
        v36 = 0;
        v37 = 1;
        while (v29 != v21)
        {
          if (v29 == -1)
          {
            v36 = v28;
          }

          v27 = (v27 + v37) & v23;
          v28 = (v22 + 16 * v27);
          v29 = *v28;
          ++v37;
          if (!*v28)
          {
            if (v36)
            {
              *v36 = 0;
              v36[1] = 0;
              --*(*a2 - 16);
              v21 = *(v3 + 1);
              v28 = v36;
            }

            goto LABEL_27;
          }
        }

        goto LABEL_31;
      }

LABEL_27:
      *v28 = v21;
      v30 = v52;
      v52 = 0;
      v53 = 0;
      std::unique_ptr<WebKit::BufferSetBackendHandle>::reset[abi:sn200100](v28 + 1, v30);
      std::unique_ptr<WebKit::BufferSetBackendHandle>::reset[abi:sn200100](&v53, 0);
      v31 = *a2;
      if (*a2)
      {
        v32 = *(v31 - 12) + 1;
      }

      else
      {
        v32 = 1;
      }

      *(v31 - 12) = v32;
      v33 = (*(v31 - 16) + v32);
      v34 = *(v31 - 4);
      if (v34 > 0x400)
      {
        if (v34 > 2 * v33)
        {
          goto LABEL_31;
        }
      }

      else if (3 * v34 > 4 * v33)
      {
LABEL_31:
        std::unique_ptr<WebKit::BufferSetBackendHandle>::reset[abi:sn200100](&v52, 0);
        if (v51 == 1 && v45 == 1)
        {
          mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(&v43);
        }

        return v10;
      }

      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::BufferSetBackendHandle>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::BufferSetBackendHandle>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v28);
      goto LABEL_31;
    }

    __break(1u);
LABEL_47:
    a1 = MEMORY[0x19EB01E30](v6);
  }

  v42 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v43) = 0;
    _os_log_impl(&dword_19D52D000, v42, OS_LOG_TYPE_DEFAULT, "RemoteImageBufferSetProxyFlusher::flushAndCollectHandlers - failed", &v43, 2u);
  }

  return v10;
}

uint64_t IPC::Connection::send<Messages::RemoteImageBufferSet::UpdateConfiguration>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1373;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebKit::RemoteImageBufferSetConfiguration,void>::encode(v6, *a2);
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

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>@<X0>(atomic_uchar *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = this;
  v6 = 0;
  atomic_compare_exchange_strong_explicit(this, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    this = MEMORY[0x19EB01E30](this);
  }

  if (*(v4 + 3))
  {
    ++*(v4 + 1);
  }

  else
  {
    a2 = 0;
  }

  *a3 = a2;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v4);
  }

  return this;
}

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::Rotate>(uint64_t *a1, float *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1099;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::Scale>(uint64_t *a1, float **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1101;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetLineDash>(uint64_t *a1, float *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1115;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v7 = 0;
  v8 = 0;
  v16 = v6;
  v9 = **a2;
  if (v9)
  {
    v7 = *v9;
    v8 = v9 + 2;
  }

  IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::encode<IPC::Encoder>(v6, v8, v7);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v6, a2[2]);
  v11 = IPC::Connection::sendMessageImpl(a1, &v16, 1, 0);
  v12 = v16;
  v16 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v10);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v11;
}

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetMiterLimit>(uint64_t *a1, float *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1117;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::Clip>(uint64_t *a1, float **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1054;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::ClipRoundedRect>(uint64_t *a1, float **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1059;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::encode(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::ClipOut>(uint64_t *a1, float **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1055;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::ClipOutRoundedRect>(uint64_t *a1, float **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1056;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::encode(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::DrawFilteredImageBuffer>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1066;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v6, *a2);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v6, a2[1]);
  IPC::ArgumentCoder<WebCore::Filter,void>::encode(v6, *a2[2]);
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

uint64_t WTF::Vector<WebCore::FloatSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<CGSize const,18446744073709551615ul>(uint64_t result, const CGSize *a2, unint64_t a3)
{
  v4 = result;
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = a3;
  if (!a3)
  {
    return v4;
  }

  if (!(a3 >> 29))
  {
    v6 = WTF::fastMalloc((8 * a3));
    *(v4 + 8) = a3;
    *v4 = v6;
    v7 = 16 * a3;
    do
    {
      v6 = (WebCore::FloatSize::FloatSize(v6, a2++) + 8);
      v7 -= 16;
    }

    while (v7);
    return v4;
  }

  __break(0xC471u);
  return result;
}

void *IPC::ArgumentCoder<IPC::ArrayReferenceTuple<unsigned short,WebCore::FloatSize>,void>::encode<IPC::StreamConnectionEncoder,0ul,1ul>(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  v5 = -*result;
  v6 = v5 & 7 | 8;
  if (result[1] < v6)
  {
    *result = 0;
    result[1] = 0;
  }

  else
  {
    *(*result + (v5 & 7)) = v4;
    v7 = result[1];
    v8 = v7 >= v6;
    v9 = v7 - v6;
    if (!v8)
    {
      __break(1u);
      return result;
    }

    *result += v6;
    result[1] = v9;
  }

  if (v4)
  {
    IPC::StreamConnectionEncoder::encodeSpan<unsigned short const,18446744073709551615ul>(result, *(a2 + 8), *a2);
    v10 = *(a2 + 16);
    v11 = *a2;

    return IPC::StreamConnectionEncoder::encodeSpan<WebCore::FloatSize const,18446744073709551615ul>(v3, v10, v11);
  }

  return result;
}

uint64_t IPC::StreamConnectionEncoder::encodeSpan<WebCore::FloatSize const,18446744073709551615ul>(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = 8 * a3;
  v5 = *(a1 + 8);
  v6 = -*a1;
  v7 = v4 & 0xFFFFFFFFFFFFFFFCLL | v6 & 3;
  if (v5 < v7)
  {
    goto LABEL_9;
  }

  v8 = v6 & 3;
  if (v5 < v8)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    *a1 = 0;
    *(a1 + 8) = 0;
    return v5 >= v7;
  }

  if (v5 - v8 >= v4)
  {
    memcpy((*a1 + v8), a2, v4);
    v9 = *(a1 + 8);
    v10 = v9 >= v7;
    v11 = v9 - v7;
    if (v10)
    {
      *a1 += v7;
      *(a1 + 8) = v11;
      return v5 >= v7;
    }

    goto LABEL_8;
  }

  result = 1067;
  __break(0xC471u);
  return result;
}

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::DrawGlyphs>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1069;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  Messages::RemoteDisplayListRecorder::DrawGlyphs::encode<IPC::Encoder>(a2, v6);
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

uint64_t Messages::RemoteDisplayListRecorder::DrawGlyphs::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<IPC::ArrayReferenceTuple<unsigned short,WebCore::FloatSize>,void>::encode<IPC::Encoder,0ul,1ul>(a2, *(a1 + 8));
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(a2, *(a1 + 16));
  v4 = *(a1 + 24);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a2, v4);
}

uint64_t IPC::ArgumentCoder<IPC::ArrayReferenceTuple<unsigned short,WebCore::FloatSize>,void>::encode<IPC::Encoder,0ul,1ul>(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *a2;
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  if (v4)
  {
    IPC::Encoder::encodeSpan<unsigned short const,18446744073709551615ul>(a1, *(a2 + 8), *a2);
    v6 = *(a2 + 16);
    v7 = *a2;

    return IPC::Encoder::encodeSpan<WebCore::FloatSize const,18446744073709551615ul>(a1, v6, v7);
  }

  return result;
}

uint64_t IPC::Encoder::encodeSpan<WebCore::FloatSize const,18446744073709551615ul>(IPC::Encoder *a1, const void *a2, uint64_t a3)
{
  v5 = 8 * a3;
  v6 = IPC::Encoder::grow(a1, 4uLL, 8 * a3);
  if (v7 < 8 * a3)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {

    return memcpy(v6, a2, v5);
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::DrawDecomposedGlyphs>(uint64_t *a1, uint64_t **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1063;
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::DrawPatternImageBuffer,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, void **a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v10, v7);
    if (v12 == 1)
    {
      result = IPC::StreamClientConnection::trySendStream<Messages::RemoteDisplayListRecorder::DrawPatternImageBuffer>(a1, v10, v11, a2);
      if (result)
      {
        return 0;
      }

      else if (v12)
      {
        IPC::StreamClientConnection::sendProcessOutOfStreamMessage(a1, v10, v11);
        return IPC::Connection::send<Messages::RemoteDisplayListRecorder::DrawPatternImageBuffer>(*(a1 + 8), a2, a3);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      return 16;
    }
  }

  return result;
}

uint64_t IPC::StreamClientConnection::trySendStream<Messages::RemoteDisplayListRecorder::DrawPatternImageBuffer>(uint64_t a1, _WORD *a2, unint64_t a3, uint64_t a4)
{
  v9 = a3;
  if (a3 <= 1)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *a2 = 1075;
    v7 = a2 + 1;
    v8 = a3 - 2;
    Messages::RemoteDisplayListRecorder::DrawPatternImageBuffer::encode<IPC::StreamConnectionEncoder>(a4, &v7);
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

void *Messages::RemoteDisplayListRecorder::DrawPatternImageBuffer::encode<IPC::StreamConnectionEncoder>(uint64_t a1, void *a2)
{
  IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a2, *a1);
  IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(a2, *(a1 + 8));
  IPC::ArgumentCoder<WebCore::PathEllipseInRect,void>::encode(a2, *(a1 + 16));
  IPC::ArgumentCoder<WebCore::AffineTransform,void>::encode(a2, *(a1 + 24));
  IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(a2, *(a1 + 32));
  IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(a2, *(a1 + 40));
  v4 = *(a1 + 48);

  return IPC::ArgumentCoder<WebCore::ImagePaintingOptions,void>::encode(a2, v4);
}

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::DrawPatternImageBuffer>(uint64_t *a1, void **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1075;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, **a2);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v6, a2[1]);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v6, a2[2]);
  IPC::ArgumentCoder<std::span<double const,6ul>,void>::encode<IPC::Encoder>(v6, a2[3]);
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v6, a2[4]);
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v6, a2[5]);
  IPC::ArgumentCoder<WebCore::ImagePaintingOptions,void>::encode(v6, a2[6]);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::BeginTransparencyLayer>(uint64_t *a1, float *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1051;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::DrawRect>(uint64_t *a1, float *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1077;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v6, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v6, a2[2]);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::DrawLinesForText>(uint64_t *a1, float **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1072;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v18 = v6;
  IPC::ArgumentCoder<WebCore::FloatPoint,void>::encode(v6, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v6, *(a2 + 2));
  v7 = a2[2];
  v8 = *v7;
  v9 = *(v7 + 1);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v6, v9);
  if (v9)
  {
    v10 = IPC::Encoder::grow(v6, 4uLL, 8 * v9);
    if (v11 < 8 * v9)
    {
      result = 1067;
      __break(0xC471u);
      return result;
    }

    memcpy(v10, v8, 8 * v9);
  }

  IPC::Encoder::operator<<<BOOL &>(v6, a2 + 24);
  IPC::Encoder::operator<<<BOOL &>(v6, a2 + 25);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v6, *(a2 + 26));
  v13 = IPC::Connection::sendMessageImpl(a1, &v18, 1, 0);
  v14 = v18;
  v18 = 0;
  if (v14)
  {
    IPC::Encoder::~Encoder(v14, v12);
    bmalloc::api::tzoneFree(v16, v17);
  }

  return v13;
}

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::DrawFocusRingRects>(uint64_t *a1, float *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1068;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::VectorArgumentCoder<false,WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v6, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v6, a2[2]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v6, a2[3]);
  IPC::ArgumentCoder<WebCore::Color,void>::encode(v6, *(a2 + 2));
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

void WebKit::RemoteDisplayListRecorderProxy::fillPath(WebCore::Path const&)::$_0::operator()<WebCore::PathMoveTo const&>(uint64_t a1, _BYTE *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((a2[56] & 1) == 0)
  {
    __break(1u);
LABEL_10:
    v4 = *(v2 + 3544);
    if (v4)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v4, *(v2 + 3536), buf);
      if (*buf)
      {
        v12 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v11);
        if (v12)
        {
          (*(*v12 + 168))(v12);
        }

        v14 = *buf;
        *buf = 0;
        if (v14)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v14 + 8), v13);
        }
      }
    }

    *(v2 + 3584) = 1;
    goto LABEL_5;
  }

  v2 = a1;
  v15 = a2;
  v3 = *(a1 + 3512);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  else
  {
    v7 = *(a1 + 3520);
    if (!v7)
    {
      return;
    }

    v8 = *(v7 + 8);
    if (!v8)
    {
      return;
    }

    ++*(v8 + 5);
    v9 = WebKit::RemoteRenderingBackendProxy::connection(v8, a2, buf);
    v3 = *buf;
    if (*(v8 + 5) == 1)
    {
      (*(*v8 + 24))(v8, v9);
      if (!v3)
      {
        return;
      }
    }

    else
    {
      --*(v8 + 5);
      if (!v3)
      {
        return;
      }
    }

    atomic_fetch_add(v3, 1u);
    v10 = *(v2 + 3512);
    *(v2 + 3512) = v3;
    if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      IPC::StreamClientConnection::operator delete(v10);
    }
  }

  if ((*(v2 + 3584) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::FillPathSegment,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, &v15, *(v2 + 3504)))
  {
    v5 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v6 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteDisplayListRecorder_FillPathSegment";
      v17 = 2082;
      v18 = v6;
      _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
    }

    WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v2 + 3520));
  }

  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::fillPath(WebCore::Path const&)::$_4::operator()(uint64_t a1, _DWORD *a2)
{
  v3 = a1;
  v54 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 3512);
  if (!v4)
  {
    goto LABEL_60;
  }

  atomic_fetch_add(v4, 1u);
  while (1)
  {
    if ((*(v3 + 3584) & 1) == 0)
    {
      a1 = *(v3 + 3544);
      if (a1)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(a1, *(v3 + 3536), buf);
        a1 = *buf;
        if (*buf)
        {
          a1 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v47);
          if (a1)
          {
            a1 = (*(*a1 + 168))(a1);
          }

          v49 = *buf;
          *buf = 0;
          if (v49)
          {
            a1 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v49 + 8), v48);
          }
        }
      }

      *(v3 + 3584) = 1;
    }

    v5 = *(v3 + 3504);
    v6 = *(v4 + 128);
    v7 = INFINITY;
    if (fabs(v6) != INFINITY)
    {
      WTF::ApproximateTime::now(a1);
      v7 = v6 + v8;
    }

    if (*(v4 + 64) != v5)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, buf, v7);
      if (buf[16] != 1)
      {
        goto LABEL_53;
      }

      v28 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_80:
        __break(0xC471u);
        JUMPOUT(0x19E1E0BF4);
      }

      v29 = *buf;
      **buf = 3198;
      v30 = v29 + 2;
      if (v28 - 2 < (-v30 & 7 | 8uLL))
      {
        goto LABEL_53;
      }

      v31 = -v30 & 7;
      *(v30 + v31) = v5;
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

    IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, &v50, v7);
    if ((v52 & 1) == 0)
    {
      goto LABEL_53;
    }

    v9 = v50;
    v10 = v51;
    *&buf[16] = v51;
    if (v51 <= 1)
    {
      goto LABEL_80;
    }

    *v50 = 1090;
    *buf = v9 + 1;
    *&buf[8] = v10 - 2;
    IPC::ArgumentCoder<WebCore::PathBezierCurveTo,void>::encode(buf, a2);
    if (!*buf)
    {
      break;
    }

    v11 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
    {
      v11 = 16;
    }

    v12 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v4 + 72);
    if (v12 + 16 >= v13)
    {
      v12 = 0;
    }

    v14 = v12 + v11;
    if (v13 <= v14)
    {
      v14 = 0;
    }

    *(v4 + 88) = v14;
    v15 = *(v4 + 80);
    if (*(v15 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v15 + 16) + 128), v14) == 0x80000000 || *(v4 + 124))
      {
        if (*(v4 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v4 + 100));
        }

        *(v4 + 124) = 0;
      }

      goto LABEL_56;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v44 = *(v3 + 3520);
    if (!v44)
    {
      return;
    }

    v45 = *(v44 + 8);
    if (!v45)
    {
      return;
    }

    ++*(v45 + 5);
    v46 = WebKit::RemoteRenderingBackendProxy::connection(v45, a2, buf);
    v4 = *buf;
    if (*(v45 + 5) == 1)
    {
      (*(*v45 + 24))(v45, v46);
      if (!v4)
      {
        return;
      }
    }

    else
    {
      --*(v45 + 5);
      if (!v4)
      {
        return;
      }
    }

    atomic_fetch_add(v4, 1u);
    a1 = *(v3 + 3512);
    *(v3 + 3512) = v4;
    if (a1 && atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a1);
      IPC::StreamClientConnection::operator delete(a1);
    }
  }

  if ((v52 & 1) == 0)
  {
    goto LABEL_59;
  }

  if (v51 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1E0C14);
  }

  *v50 = 3197;
  v16 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v4 + 72);
  if (v16 + 16 >= v17)
  {
    v16 = 0;
  }

  v18 = v16 + 16;
  v19 = v17 <= v18 ? 0 : v18;
  *(v4 + 88) = v19;
  v20 = *(v4 + 80);
  if (*(v20 + 8) <= 0xFFuLL)
  {
    goto LABEL_59;
  }

  atomic_exchange((*(v20 + 16) + 128), v19);
  *(v4 + 124) = 0;
  v21 = *(v4 + 8);
  v22 = IPC::Encoder::operator new(0x238, a2);
  *v22 = 1090;
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 1) = v5;
  *(v22 + 68) = 0;
  *(v22 + 70) = 0;
  *(v22 + 69) = 0;
  IPC::Encoder::encodeHeader(v22);
  *buf = v22;
  IPC::ArgumentCoder<WebCore::PathBezierCurveTo,void>::encode(v22, a2);
  v24 = IPC::Connection::sendMessageImpl(v21, buf, 1, 0);
  v25 = *buf;
  *buf = 0;
  if (v25)
  {
    IPC::Encoder::~Encoder(v25, v23);
    bmalloc::api::tzoneFree(v26, v27);
    if (!v24)
    {
      goto LABEL_56;
    }
  }

  else if (!v24)
  {
    goto LABEL_56;
  }

LABEL_53:
  v42 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v43 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_FillQuadCurve";
    *&buf[12] = 2082;
    *&buf[14] = v43;
    _os_log_impl(&dword_19D52D000, v42, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v3 + 3520));
LABEL_56:
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    IPC::StreamClientConnection::operator delete(v4);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::fillPath(WebCore::Path const&)::$_5::operator()(uint64_t a1, _DWORD *a2)
{
  v3 = a1;
  v54 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 3512);
  if (!v4)
  {
    goto LABEL_60;
  }

  atomic_fetch_add(v4, 1u);
  while (1)
  {
    if ((*(v3 + 3584) & 1) == 0)
    {
      a1 = *(v3 + 3544);
      if (a1)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(a1, *(v3 + 3536), buf);
        a1 = *buf;
        if (*buf)
        {
          a1 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v47);
          if (a1)
          {
            a1 = (*(*a1 + 168))(a1);
          }

          v49 = *buf;
          *buf = 0;
          if (v49)
          {
            a1 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v49 + 8), v48);
          }
        }
      }

      *(v3 + 3584) = 1;
    }

    v5 = *(v3 + 3504);
    v6 = *(v4 + 128);
    v7 = INFINITY;
    if (fabs(v6) != INFINITY)
    {
      WTF::ApproximateTime::now(a1);
      v7 = v6 + v8;
    }

    if (*(v4 + 64) != v5)
    {
      IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, buf, v7);
      if (buf[16] != 1)
      {
        goto LABEL_53;
      }

      v28 = *&buf[8];
      if (*&buf[8] <= 1uLL)
      {
LABEL_80:
        __break(0xC471u);
        JUMPOUT(0x19E1E118CLL);
      }

      v29 = *buf;
      **buf = 3198;
      v30 = v29 + 2;
      if (v28 - 2 < (-v30 & 7 | 8uLL))
      {
        goto LABEL_53;
      }

      v31 = -v30 & 7;
      *(v30 + v31) = v5;
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

    IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, &v50, v7);
    if ((v52 & 1) == 0)
    {
      goto LABEL_53;
    }

    v9 = v50;
    v10 = v51;
    *&buf[16] = v51;
    if (v51 <= 1)
    {
      goto LABEL_80;
    }

    *v50 = 1083;
    *buf = v9 + 1;
    *&buf[8] = v10 - 2;
    IPC::ArgumentCoder<WebCore::PathDataBezierCurve,void>::encode(buf, a2);
    if (!*buf)
    {
      break;
    }

    v11 = *&buf[16] - *&buf[8];
    if (*&buf[16] - *&buf[8] <= 0x10uLL)
    {
      v11 = 16;
    }

    v12 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v4 + 72);
    if (v12 + 16 >= v13)
    {
      v12 = 0;
    }

    v14 = v12 + v11;
    if (v13 <= v14)
    {
      v14 = 0;
    }

    *(v4 + 88) = v14;
    v15 = *(v4 + 80);
    if (*(v15 + 8) > 0xFFuLL)
    {
      if (atomic_exchange((*(v15 + 16) + 128), v14) == 0x80000000 || *(v4 + 124))
      {
        if (*(v4 + 112) == 1)
        {
          MEMORY[0x19EB16320](*(v4 + 100));
        }

        *(v4 + 124) = 0;
      }

      goto LABEL_56;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v44 = *(v3 + 3520);
    if (!v44)
    {
      return;
    }

    v45 = *(v44 + 8);
    if (!v45)
    {
      return;
    }

    ++*(v45 + 5);
    v46 = WebKit::RemoteRenderingBackendProxy::connection(v45, a2, buf);
    v4 = *buf;
    if (*(v45 + 5) == 1)
    {
      (*(*v45 + 24))(v45, v46);
      if (!v4)
      {
        return;
      }
    }

    else
    {
      --*(v45 + 5);
      if (!v4)
      {
        return;
      }
    }

    atomic_fetch_add(v4, 1u);
    a1 = *(v3 + 3512);
    *(v3 + 3512) = v4;
    if (a1 && atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a1);
      IPC::StreamClientConnection::operator delete(a1);
    }
  }

  if ((v52 & 1) == 0)
  {
    goto LABEL_59;
  }

  if (v51 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1E11ACLL);
  }

  *v50 = 3197;
  v16 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v4 + 72);
  if (v16 + 16 >= v17)
  {
    v16 = 0;
  }

  v18 = v16 + 16;
  v19 = v17 <= v18 ? 0 : v18;
  *(v4 + 88) = v19;
  v20 = *(v4 + 80);
  if (*(v20 + 8) <= 0xFFuLL)
  {
    goto LABEL_59;
  }

  atomic_exchange((*(v20 + 16) + 128), v19);
  *(v4 + 124) = 0;
  v21 = *(v4 + 8);
  v22 = IPC::Encoder::operator new(0x238, a2);
  *v22 = 1083;
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 1) = v5;
  *(v22 + 68) = 0;
  *(v22 + 70) = 0;
  *(v22 + 69) = 0;
  IPC::Encoder::encodeHeader(v22);
  *buf = v22;
  IPC::ArgumentCoder<WebCore::PathDataBezierCurve,void>::encode(v22, a2);
  v24 = IPC::Connection::sendMessageImpl(v21, buf, 1, 0);
  v25 = *buf;
  *buf = 0;
  if (v25)
  {
    IPC::Encoder::~Encoder(v25, v23);
    bmalloc::api::tzoneFree(v26, v27);
    if (!v24)
    {
      goto LABEL_56;
    }
  }

  else if (!v24)
  {
    goto LABEL_56;
  }

LABEL_53:
  v42 = qword_1ED6410D0;
  if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
  {
    v43 = IPC::errorAsString();
    *buf = 136446466;
    *&buf[4] = "RemoteDisplayListRecorder_FillBezierCurve";
    *&buf[12] = 2082;
    *&buf[14] = v43;
    _os_log_impl(&dword_19D52D000, v42, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
  }

  WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v3 + 3520));
LABEL_56:
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    IPC::StreamClientConnection::operator delete(v4);
  }
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::FillPathSegment,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t *a2, uint64_t a3)
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

    v21 = v38;
    if (v38 <= 1)
    {
LABEL_50:
      result = 1067;
      __break(0xC471u);
      return result;
    }

    v22 = v37;
    *v37 = 3198;
    v23 = v22 + 1;
    if (v21 - 2 < (-v23 & 7 | 8uLL))
    {
      return 18;
    }

    v24 = -v23 & 7;
    *(v23 + v24) = a3;
    if (v24 != 7)
    {
      v24 = 6;
    }

    v25 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(a1 + 72);
    v26 = *(a1 + 80);
    v28 = v24 + 10;
    if (v25 + 16 >= v27)
    {
      v25 = 0;
    }

    v29 = v28 + v25;
    if (v27 <= v29)
    {
      v29 = 0;
    }

    *(a1 + 88) = v29;
    if (*(v26 + 8) <= 0xFFuLL)
    {
      goto LABEL_49;
    }

    v30 = atomic_exchange((*(v26 + 16) + 128), v29);
    v31 = *(a1 + 124);
    if (v30 == 0x80000000 || v31 != 0)
    {
      v33 = v31 + 1;
      *(a1 + 124) = v33;
      if (v33 >= *(a1 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v34, v7);
  if (v36 != 1)
  {
    return 16;
  }

  v9 = v34;
  v10 = v35;
  v39 = v35;
  if (v35 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  *v34 = 1089;
  v37 = v9 + 1;
  v38 = v10 - 2;
  IPC::ArgumentCoder<WebCore::PathSegment,void>::encode(&v37, *a2);
  if (!v37)
  {
    if (v36)
    {
      IPC::StreamClientConnection::sendProcessOutOfStreamMessage(a1, v34, v35);
      return IPC::Connection::send<Messages::RemoteDisplayListRecorder::FillPathSegment>(*(a1 + 8), a2, a3);
    }

    goto LABEL_49;
  }

  v11 = 16;
  if (v39 - v38 > 0x10)
  {
    v11 = v39 - v38;
  }

  v12 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(a1 + 72);
  v13 = *(a1 + 80);
  if (v12 + 16 >= v14)
  {
    v12 = 0;
  }

  v15 = v12 + v11;
  if (v14 <= v15)
  {
    v15 = 0;
  }

  *(a1 + 88) = v15;
  if (*(v13 + 8) <= 0xFFuLL)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v16 = atomic_exchange((*(v13 + 16) + 128), v15);
  v17 = *(a1 + 124);
  if (v16 == 0x80000000 || v17 != 0)
  {
    v20 = v17 + 1;
    *(a1 + 124) = v20;
    if (v20 >= *(a1 + 120))
    {
      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      *(a1 + 124) = 0;
    }
  }

  return 0;
}

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::FillPathSegment>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1089;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::PathSegment,void>::encode(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::FillArc>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1082;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::PathArc,void>::encode(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::FillLine>(uint64_t *a1, _OWORD **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1087;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<std::span<float const,4ul>,void>::encode<IPC::Encoder>(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::FillRect>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1091;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  Messages::RemoteDisplayListRecorder::FillRect::encode<IPC::Encoder>(a2, v6);
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

uint64_t Messages::RemoteDisplayListRecorder::FillRect::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a2, *a1);
  v5 = *(a1 + 8);
  return IPC::Encoder::operator<<<BOOL>(a2, &v5);
}

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::FillRectWithColor>(uint64_t *a1, WebCore::Color **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1092;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v6, *a2);
  IPC::ArgumentCoder<WebCore::Color,void>::encode(v6, a2[1]);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::FillRectWithGradient>(uint64_t *a1, uint64_t **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1093;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v6, *a2);
  IPC::ArgumentCoder<WebCore::Gradient,void>::encode(v6, *a2[1]);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::FillCompositedRect>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1085;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  Messages::RemoteDisplayListRecorder::FillCompositedRect::encode<IPC::Encoder>(a2, v6);
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

uint64_t Messages::RemoteDisplayListRecorder::FillCompositedRect::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a2, *a1);
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a2, *(a1 + 8));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a2, *(a1 + 16));
  v4 = *(a1 + 17);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a2, v4);
}

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::FillRectWithRoundedHole>(uint64_t *a1, float **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1095;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v6, *a2);
  IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::encode(v6, a2[1]);
  IPC::ArgumentCoder<WebCore::Color,void>::encode(v6, a2[2]);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::FillEllipse>(uint64_t *a1, float **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1086;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v6, *a2);
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

void WTF::Detail::CallableWrapper<WebKit::RemoteDisplayListRecorderProxy::drawVideoFrame(WebCore::VideoFrame &,WebCore::FloatRect const&,WebCore::ImageOrientation,BOOL)::$_0,void,IPC::Semaphore &>::call(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *(v3 + 3512);
  if (!v4)
  {
    goto LABEL_44;
  }

  atomic_fetch_add(v4, 1u);
  while (1)
  {
    if ((*(v3 + 3584) & 1) == 0)
    {
      a1 = *(v3 + 3544);
      if (a1)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(a1, *(v3 + 3536), buf);
        a1 = *buf;
        if (*buf)
        {
          a1 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v39);
          if (a1)
          {
            a1 = (*(*a1 + 168))(a1);
          }

          v41 = *buf;
          *buf = 0;
          if (v41)
          {
            a1 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v41 + 8), v40);
          }
        }
      }

      *(v3 + 3584) = 1;
    }

    v5 = *(v3 + 3504);
    v6 = *(v4 + 128);
    v7 = INFINITY;
    if (fabs(v6) != INFINITY)
    {
      WTF::ApproximateTime::now(a1);
      v7 = v6 + v8;
    }

    if (*(v4 + 64) == v5)
    {
      break;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, buf, v7);
    if (buf[16] != 1)
    {
      goto LABEL_37;
    }

    v20 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
LABEL_62:
      __break(0xC471u);
      JUMPOUT(0x19E1E1FE0);
    }

    v21 = *buf;
    **buf = 3198;
    v22 = v21 + 2;
    if (v20 - 2 < (-v22 & 7 | 8uLL))
    {
      goto LABEL_37;
    }

    v23 = -v22 & 7;
    *(v22 + v23) = v5;
    v24 = 6;
    if (v23 > 6)
    {
      v24 = v23;
    }

    v25 = v24 + 10;
    v26 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(v4 + 72);
    if (v26 + 16 >= v27)
    {
      v26 = 0;
    }

    v28 = v25 + v26;
    if (v27 <= v28)
    {
      v28 = 0;
    }

    *(v4 + 88) = v28;
    v29 = *(v4 + 80);
    if (*(v29 + 8) > 0xFFuLL)
    {
      v30 = atomic_exchange((*(v29 + 16) + 128), v28);
      v31 = *(v4 + 124);
      if (v30 == 0x80000000 || v31 != 0)
      {
        v33 = v31 + 1;
        *(v4 + 124) = v33;
        if (v33 >= *(v4 + 120))
        {
          if (*(v4 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v4 + 100));
          }

          *(v4 + 124) = 0;
        }
      }

      *(v4 + 64) = v5;
      break;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    v36 = *(v3 + 3520);
    if (!v36)
    {
      return;
    }

    v37 = *(v36 + 8);
    if (!v37)
    {
      return;
    }

    ++*(v37 + 5);
    v38 = WebKit::RemoteRenderingBackendProxy::connection(v37, a2, buf);
    v4 = *buf;
    if (*(v37 + 5) == 1)
    {
      (*(*v37 + 24))(v37, v38);
      if (!v4)
      {
        return;
      }
    }

    else
    {
      --*(v37 + 5);
      if (!v4)
      {
        return;
      }
    }

    atomic_fetch_add(v4, 1u);
    a1 = *(v3 + 3512);
    *(v3 + 3512) = v4;
    if (a1 && atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a1);
      IPC::StreamClientConnection::operator delete(a1);
    }
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, buf, v7);
  if ((buf[16] & 1) == 0)
  {
    goto LABEL_37;
  }

  if (*&buf[8] <= 1uLL)
  {
    goto LABEL_62;
  }

  **buf = 3197;
  v9 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v11 = *(v4 + 72);
  v10 = *(v4 + 80);
  if (v9 + 16 >= v11)
  {
    v9 = 0;
  }

  v12 = v9 + 16;
  if (v11 <= v12)
  {
    v12 = 0;
  }

  *(v4 + 88) = v12;
  if (*(v10 + 8) <= 0xFFuLL)
  {
    goto LABEL_43;
  }

  atomic_exchange((*(v10 + 16) + 128), v12);
  *(v4 + 124) = 0;
  v13 = *(v4 + 8);
  v14 = IPC::Encoder::operator new(0x238, a2);
  *v14 = 1120;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = v5;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  IPC::Encoder::encodeHeader(v14);
  v42 = v14;
  IPC::ArgumentCoder<IPC::Semaphore,void>::encode(v14, a2);
  v16 = IPC::Connection::sendMessageImpl(v13, &v42, 1, 0);
  v17 = v42;
  v42 = 0;
  if (v17)
  {
    IPC::Encoder::~Encoder(v17, v15);
    bmalloc::api::tzoneFree(v18, v19);
    if (v16)
    {
LABEL_37:
      v34 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v35 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_SetSharedVideoFrameSemaphore";
        *&buf[12] = 2082;
        *&buf[14] = v35;
        _os_log_impl(&dword_19D52D000, v34, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      }

      WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v3 + 3520));
    }
  }

  else if (v16)
  {
    goto LABEL_37;
  }

  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    IPC::StreamClientConnection::operator delete(v4);
  }
}

void WTF::Detail::CallableWrapper<WebKit::RemoteDisplayListRecorderProxy::drawVideoFrame(WebCore::VideoFrame &,WebCore::FloatRect const&,WebCore::ImageOrientation,BOOL)::$_1,void,WebCore::SharedMemoryHandle &&>::call(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *(v3 + 3512);
  if (!v4)
  {
    goto LABEL_44;
  }

  atomic_fetch_add(v4, 1u);
  while (1)
  {
    if ((*(v3 + 3584) & 1) == 0)
    {
      a1 = *(v3 + 3544);
      if (a1)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(a1, *(v3 + 3536), buf);
        a1 = *buf;
        if (*buf)
        {
          a1 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v39);
          if (a1)
          {
            a1 = (*(*a1 + 168))(a1);
          }

          v41 = *buf;
          *buf = 0;
          if (v41)
          {
            a1 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v41 + 8), v40);
          }
        }
      }

      *(v3 + 3584) = 1;
    }

    v5 = *(v3 + 3504);
    v6 = *(v4 + 128);
    v7 = INFINITY;
    if (fabs(v6) != INFINITY)
    {
      WTF::ApproximateTime::now(a1);
      v7 = v6 + v8;
    }

    if (*(v4 + 64) == v5)
    {
      break;
    }

    IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, buf, v7);
    if (buf[16] != 1)
    {
      goto LABEL_37;
    }

    v20 = *&buf[8];
    if (*&buf[8] <= 1uLL)
    {
LABEL_62:
      __break(0xC471u);
      JUMPOUT(0x19E1E2484);
    }

    v21 = *buf;
    **buf = 3198;
    v22 = v21 + 2;
    if (v20 - 2 < (-v22 & 7 | 8uLL))
    {
      goto LABEL_37;
    }

    v23 = -v22 & 7;
    *(v22 + v23) = v5;
    v24 = 6;
    if (v23 > 6)
    {
      v24 = v23;
    }

    v25 = v24 + 10;
    v26 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(v4 + 72);
    if (v26 + 16 >= v27)
    {
      v26 = 0;
    }

    v28 = v25 + v26;
    if (v27 <= v28)
    {
      v28 = 0;
    }

    *(v4 + 88) = v28;
    v29 = *(v4 + 80);
    if (*(v29 + 8) > 0xFFuLL)
    {
      v30 = atomic_exchange((*(v29 + 16) + 128), v28);
      v31 = *(v4 + 124);
      if (v30 == 0x80000000 || v31 != 0)
      {
        v33 = v31 + 1;
        *(v4 + 124) = v33;
        if (v33 >= *(v4 + 120))
        {
          if (*(v4 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(v4 + 100));
          }

          *(v4 + 124) = 0;
        }
      }

      *(v4 + 64) = v5;
      break;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    v36 = *(v3 + 3520);
    if (!v36)
    {
      return;
    }

    v37 = *(v36 + 8);
    if (!v37)
    {
      return;
    }

    ++*(v37 + 5);
    v38 = WebKit::RemoteRenderingBackendProxy::connection(v37, a2, buf);
    v4 = *buf;
    if (*(v37 + 5) == 1)
    {
      (*(*v37 + 24))(v37, v38);
      if (!v4)
      {
        return;
      }
    }

    else
    {
      --*(v37 + 5);
      if (!v4)
      {
        return;
      }
    }

    atomic_fetch_add(v4, 1u);
    a1 = *(v3 + 3512);
    *(v3 + 3512) = v4;
    if (a1 && atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a1);
      IPC::StreamClientConnection::operator delete(a1);
    }
  }

  IPC::StreamClientConnectionBuffer::tryAcquire(v4 + 72, buf, v7);
  if ((buf[16] & 1) == 0)
  {
    goto LABEL_37;
  }

  if (*&buf[8] <= 1uLL)
  {
    goto LABEL_62;
  }

  **buf = 3197;
  v9 = (*(v4 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v11 = *(v4 + 72);
  v10 = *(v4 + 80);
  if (v9 + 16 >= v11)
  {
    v9 = 0;
  }

  v12 = v9 + 16;
  if (v11 <= v12)
  {
    v12 = 0;
  }

  *(v4 + 88) = v12;
  if (*(v10 + 8) <= 0xFFuLL)
  {
    goto LABEL_43;
  }

  atomic_exchange((*(v10 + 16) + 128), v12);
  *(v4 + 124) = 0;
  v13 = *(v4 + 8);
  v14 = IPC::Encoder::operator new(0x238, a2);
  *v14 = 1119;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = v5;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  IPC::Encoder::encodeHeader(v14);
  v42 = v14;
  IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::encode(v14, a2);
  v16 = IPC::Connection::sendMessageImpl(v13, &v42, 1, 0);
  v17 = v42;
  v42 = 0;
  if (v17)
  {
    IPC::Encoder::~Encoder(v17, v15);
    bmalloc::api::tzoneFree(v18, v19);
    if (v16)
    {
LABEL_37:
      v34 = qword_1ED6410D0;
      if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
      {
        v35 = IPC::errorAsString();
        *buf = 136446466;
        *&buf[4] = "RemoteDisplayListRecorder_SetSharedVideoFrameMemory";
        *&buf[12] = 2082;
        *&buf[14] = v35;
        _os_log_impl(&dword_19D52D000, v34, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
      }

      WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(v3 + 3520));
    }
  }

  else if (v16)
  {
    goto LABEL_37;
  }

  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    IPC::StreamClientConnection::operator delete(v4);
  }
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::StrokeLine,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, _OWORD **a2, uint64_t a3)
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
    IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v36, v7);
    if (v38 != 1)
    {
      return 16;
    }

    v23 = v37;
    if (v37 <= 1)
    {
LABEL_48:
      result = 1067;
      __break(0xC471u);
      return result;
    }

    v24 = v36;
    *v36 = 3198;
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

    v32 = atomic_exchange((*(v28 + 16) + 128), v31);
    v33 = *(a1 + 124);
    if (v32 == 0x80000000 || v33 != 0)
    {
      v35 = v33 + 1;
      *(a1 + 124) = v35;
      if (v35 >= *(a1 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v36, v7);
  if (v38 != 1)
  {
    return 16;
  }

  v9 = v37;
  if (v37 <= 1)
  {
    __break(0xC471u);
    goto LABEL_47;
  }

  v10 = v36;
  *v36 = 1139;
  v11 = v10 + 1;
  if (v9 - 2 < (-v11 & 3 | 0x10uLL))
  {
    if (v38)
    {
      IPC::StreamClientConnection::sendProcessOutOfStreamMessage(a1, v36, v37);
      return IPC::Connection::send<Messages::RemoteDisplayListRecorder::StrokeLine>(*(a1 + 8), a2, a3);
    }

    goto LABEL_47;
  }

  v12 = -v11 & 3;
  *(v11 + v12) = **a2;
  v13 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(a1 + 72);
  v14 = *(a1 + 80);
  v16 = v12 + 18;
  if (v13 + 16 >= v15)
  {
    v13 = 0;
  }

  v17 = v16 + v13;
  if (v15 <= v17)
  {
    v17 = 0;
  }

  *(a1 + 88) = v17;
  if (*(v14 + 8) <= 0xFFuLL)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v18 = atomic_exchange((*(v14 + 16) + 128), v17);
  v19 = *(a1 + 124);
  if (v18 != 0x80000000 && v19 == 0)
  {
    return 0;
  }

  v22 = v19 + 1;
  *(a1 + 124) = v22;
  if (v22 < *(a1 + 120))
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::StrokeLine>(uint64_t *a1, _OWORD **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1139;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<std::span<float const,4ul>,void>::encode<IPC::Encoder>(v6, *a2);
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

void WebKit::RemoteDisplayListRecorderProxy::strokePath(WebCore::Path const&)::$_0::operator()<WebCore::PathLineTo const&>(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v3 = *(a1 + 3512);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  else
  {
    v7 = *(a1 + 3520);
    if (!v7)
    {
      return;
    }

    v8 = *(v7 + 8);
    if (!v8)
    {
      return;
    }

    ++*(v8 + 5);
    v9 = WebKit::RemoteRenderingBackendProxy::connection(v8, a2, buf);
    v3 = *buf;
    if (*(v8 + 5) == 1)
    {
      (*(*v8 + 24))(v8, v9);
      if (!v3)
      {
        return;
      }
    }

    else
    {
      --*(v8 + 5);
      if (!v3)
      {
        return;
      }
    }

    atomic_fetch_add(v3, 1u);
    v10 = *(a1 + 3512);
    *(a1 + 3512) = v3;
    if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      IPC::StreamClientConnection::operator delete(v10);
    }
  }

  if ((*(a1 + 3584) & 1) == 0)
  {
    v4 = *(a1 + 3544);
    if (v4)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v4, *(a1 + 3536), buf);
      if (*buf)
      {
        v12 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v11);
        if (v12)
        {
          (*(*v12 + 168))(v12);
        }

        v14 = *buf;
        *buf = 0;
        if (v14)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v14 + 8), v13);
        }
      }
    }

    *(a1 + 3584) = 1;
  }

  if (IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::StrokePathSegment,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, &v15, *(a1 + 3504)))
  {
    v5 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v6 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteDisplayListRecorder_StrokePathSegment";
      v17 = 2082;
      v18 = v6;
      _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
    }

    WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
  }

  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

void WebKit::RemoteDisplayListRecorderProxy::strokePath(WebCore::Path const&)::$_3::operator()(uint64_t a1, _OWORD *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v3 = *(a1 + 3512);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  else
  {
    v4 = *(a1 + 3520);
    if (!v4)
    {
      return;
    }

    v5 = *(v4 + 8);
    if (!v5)
    {
      return;
    }

    ++*(v5 + 5);
    v6 = WebKit::RemoteRenderingBackendProxy::connection(v5, a2, buf);
    v3 = *buf;
    if (*(v5 + 5) == 1)
    {
      (*(*v5 + 24))(v5, v6);
      if (!v3)
      {
        return;
      }
    }

    else
    {
      --*(v5 + 5);
      if (!v3)
      {
        return;
      }
    }

    atomic_fetch_add(v3, 1u);
    v7 = *(a1 + 3512);
    *(a1 + 3512) = v3;
    if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v7);
      IPC::StreamClientConnection::operator delete(v7);
    }
  }

  if ((*(a1 + 3584) & 1) == 0)
  {
    v8 = *(a1 + 3544);
    if (v8)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteImageBufferProxy>(v8, *(a1 + 3536), buf);
      if (*buf)
      {
        v12 = WebKit::RemoteImageBufferProxy::ensureBackend(*buf, v11);
        if (v12)
        {
          (*(*v12 + 168))(v12);
        }

        v14 = *buf;
        *buf = 0;
        if (v14)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v14 + 8), v13);
        }
      }
    }

    *(a1 + 3584) = 1;
  }

  if (IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::StrokeLine,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v3, &v15, *(a1 + 3504)))
  {
    v9 = qword_1ED6410D0;
    if (os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = IPC::errorAsString();
      *buf = 136446466;
      *&buf[4] = "RemoteDisplayListRecorder_StrokeLine";
      v17 = 2082;
      v18 = v10;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "RemoteDisplayListRecorderProxy::send - failed, name:%{public}s, error:%{public}s", buf, 0x16u);
    }

    WebKit::RemoteDisplayListRecorderProxy::didBecomeUnresponsive(*(a1 + 3520));
  }

  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    IPC::StreamClientConnection::operator delete(v3);
  }
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::StrokePathSegment,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t *a2, uint64_t a3)
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

    v21 = v38;
    if (v38 <= 1)
    {
LABEL_50:
      result = 1067;
      __break(0xC471u);
      return result;
    }

    v22 = v37;
    *v37 = 3198;
    v23 = v22 + 1;
    if (v21 - 2 < (-v23 & 7 | 8uLL))
    {
      return 18;
    }

    v24 = -v23 & 7;
    *(v23 + v24) = a3;
    if (v24 != 7)
    {
      v24 = 6;
    }

    v25 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(a1 + 72);
    v26 = *(a1 + 80);
    v28 = v24 + 10;
    if (v25 + 16 >= v27)
    {
      v25 = 0;
    }

    v29 = v28 + v25;
    if (v27 <= v29)
    {
      v29 = 0;
    }

    *(a1 + 88) = v29;
    if (*(v26 + 8) <= 0xFFuLL)
    {
      goto LABEL_49;
    }

    v30 = atomic_exchange((*(v26 + 16) + 128), v29);
    v31 = *(a1 + 124);
    if (v30 == 0x80000000 || v31 != 0)
    {
      v33 = v31 + 1;
      *(a1 + 124) = v33;
      if (v33 >= *(a1 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v34, v7);
  if (v36 != 1)
  {
    return 16;
  }

  v9 = v34;
  v10 = v35;
  v39 = v35;
  if (v35 <= 1)
  {
    __break(0xC471u);
    goto LABEL_49;
  }

  *v34 = 1142;
  v37 = v9 + 1;
  v38 = v10 - 2;
  IPC::ArgumentCoder<WebCore::PathSegment,void>::encode(&v37, *a2);
  if (!v37)
  {
    if (v36)
    {
      IPC::StreamClientConnection::sendProcessOutOfStreamMessage(a1, v34, v35);
      return IPC::Connection::send<Messages::RemoteDisplayListRecorder::StrokePathSegment>(*(a1 + 8), a2, a3);
    }

    goto LABEL_49;
  }

  v11 = 16;
  if (v39 - v38 > 0x10)
  {
    v11 = v39 - v38;
  }

  v12 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(a1 + 72);
  v13 = *(a1 + 80);
  if (v12 + 16 >= v14)
  {
    v12 = 0;
  }

  v15 = v12 + v11;
  if (v14 <= v15)
  {
    v15 = 0;
  }

  *(a1 + 88) = v15;
  if (*(v13 + 8) <= 0xFFuLL)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v16 = atomic_exchange((*(v13 + 16) + 128), v15);
  v17 = *(a1 + 124);
  if (v16 == 0x80000000 || v17 != 0)
  {
    v20 = v17 + 1;
    *(a1 + 124) = v20;
    if (v20 >= *(a1 + 120))
    {
      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      *(a1 + 124) = 0;
    }
  }

  return 0;
}

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::StrokePathSegment>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1142;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::PathSegment,void>::encode(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::StrokeClosedArc>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1137;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::PathArc,void>::encode(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::StrokeQuadCurve>(uint64_t *a1, float **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1143;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::PathBezierCurveTo,void>::encode(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::StrokeBezierCurve>(uint64_t *a1, float **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1136;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::PathDataBezierCurve,void>::encode(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::StrokeRect>(uint64_t *a1, float *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1144;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v6, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v6, a2[2]);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::StrokeEllipse>(uint64_t *a1, float **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1138;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::ClearRect>(uint64_t *a1, float **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1053;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetFillPackedColor>(uint64_t *a1, _DWORD **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1110;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v6, **a2);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::SetFillPattern,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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

    v38 = v56;
    if (v56 <= 1)
    {
LABEL_61:
      __break(0xC471u);
      JUMPOUT(0x19E1E3850);
    }

    v39 = v55;
    *v55 = 3198;
    v40 = v39 + 2;
    if (v38 - 2 < (-v40 & 7 | 8uLL))
    {
      return 18;
    }

    v41 = -v40 & 7;
    *&v40[v41] = a3;
    if (v41 != 7)
    {
      v41 = 6;
    }

    v42 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v44 = *(a1 + 72);
    v43 = *(a1 + 80);
    v45 = v41 + 10;
    if (v42 + 16 >= v44)
    {
      v42 = 0;
    }

    v46 = v45 + v42;
    if (v44 <= v46)
    {
      v46 = 0;
    }

    *(a1 + 88) = v46;
    if (*(v43 + 8) <= 0xFFuLL)
    {
      goto LABEL_60;
    }

    v47 = atomic_exchange((*(v43 + 16) + 128), v46);
    v48 = *(a1 + 124);
    if (v47 == 0x80000000 || v48 != 0)
    {
      v50 = v48 + 1;
      *(a1 + 124) = v50;
      if (v50 >= *(a1 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v52, v7);
  if (v54 != 1)
  {
    return 16;
  }

  v9 = v52;
  v10 = v53;
  v57 = v53;
  if (v53 <= 1)
  {
    goto LABEL_61;
  }

  *v52 = 1111;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 7 | 8;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 7)) = **a2;
    v55 = (v11 + v13);
    v56 = v15;
  }

  else
  {
    v55 = 0;
    v56 = 0;
  }

  IPC::ArgumentCoder<WebCore::PatternParameters,void>::encode(&v55, *(a2 + 8));
  if (v55)
  {
    v17 = v57 - v56;
    if (v57 - v56 <= 0x10)
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
      v22 = atomic_exchange((*(v21 + 16) + 128), v20);
      v23 = *(a1 + 124);
      if (v22 == 0x80000000 || v23 != 0)
      {
        v25 = v23 + 1;
        *(a1 + 124) = v25;
        if (v25 >= *(a1 + 120))
        {
          if (*(a1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a1 + 100));
          }

          *(a1 + 124) = 0;
        }
      }

      return 0;
    }

    goto LABEL_60;
  }

  if ((v54 & 1) == 0)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v53 <= 1)
  {
    __break(0xC471u);
    goto LABEL_60;
  }

  *v52 = 3197;
  v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(a1 + 72);
  if (v27 + 16 >= v28)
  {
    v27 = 0;
  }

  v29 = v27 + 16;
  if (v28 <= v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v29;
  }

  *(a1 + 88) = v30;
  v31 = *(a1 + 80);
  if (*(v31 + 8) <= 0xFFuLL)
  {
    goto LABEL_60;
  }

  atomic_exchange((*(v31 + 16) + 128), v30);
  *(a1 + 124) = 0;
  v32 = *(a1 + 8);
  v33 = IPC::Encoder::operator new(0x238, v16);
  *v33 = 1111;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 1) = a3;
  *(v33 + 68) = 0;
  *(v33 + 70) = 0;
  *(v33 + 69) = 0;
  IPC::Encoder::encodeHeader(v33);
  v55 = v33;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v33, **a2);
  IPC::ArgumentCoder<WebCore::PatternParameters,void>::encode(v33, *(a2 + 8));
  v26 = IPC::Connection::sendMessageImpl(v32, &v55, 1, 0);
  v35 = v55;
  v55 = 0;
  if (v35)
  {
    IPC::Encoder::~Encoder(v35, v34);
    bmalloc::api::tzoneFree(v36, v37);
  }

  return v26;
}

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetFillGradient>(uint64_t *a1, __int128 **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1109;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<WebCore::Gradient,void>::encode(v6, **a2);
  IPC::ArgumentCoder<std::span<double const,6ul>,void>::encode<IPC::Encoder>(v6, a2[1]);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::SetFillColor,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, WebCore::Color **a2, uint64_t a3)
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

    v32 = v50;
    if (v50 <= 1)
    {
LABEL_57:
      __break(0xC471u);
      JUMPOUT(0x19E1E3CA4);
    }

    v33 = v49;
    *v49 = 3198;
    v34 = v33 + 2;
    if (v32 - 2 < (-v34 & 7 | 8uLL))
    {
      return 18;
    }

    v35 = -v34 & 7;
    *&v34[v35] = a3;
    if (v35 != 7)
    {
      v35 = 6;
    }

    v36 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v38 = *(a1 + 72);
    v37 = *(a1 + 80);
    v39 = v35 + 10;
    if (v36 + 16 >= v38)
    {
      v36 = 0;
    }

    v40 = v39 + v36;
    if (v38 <= v40)
    {
      v40 = 0;
    }

    *(a1 + 88) = v40;
    if (*(v37 + 8) <= 0xFFuLL)
    {
      goto LABEL_56;
    }

    v41 = atomic_exchange((*(v37 + 16) + 128), v40);
    v42 = *(a1 + 124);
    if (v41 == 0x80000000 || v42 != 0)
    {
      v44 = v42 + 1;
      *(a1 + 124) = v44;
      if (v44 >= *(a1 + 120))
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
    goto LABEL_57;
  }

  *v46 = 1108;
  v49 = (v9 + 1);
  v50 = v10 - 2;
  IPC::ArgumentCoder<WebCore::Color,void>::encode(&v49, *a2);
  if (v49)
  {
    v12 = 16;
    if (v51 - v50 > 0x10)
    {
      v12 = v51 - v50;
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
      v17 = atomic_exchange((*(v14 + 16) + 128), v16);
      v18 = *(a1 + 124);
      if (v17 == 0x80000000 || v18 != 0)
      {
        v20 = v18 + 1;
        *(a1 + 124) = v20;
        if (v20 >= *(a1 + 120))
        {
          if (*(a1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a1 + 100));
          }

          *(a1 + 124) = 0;
        }
      }

      return 0;
    }

    goto LABEL_56;
  }

  if ((v48 & 1) == 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v47 <= 1)
  {
    __break(0xC471u);
    goto LABEL_56;
  }

  *v46 = 3197;
  v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(a1 + 72);
  v23 = *(a1 + 80);
  if (v22 + 16 >= v24)
  {
    v22 = 0;
  }

  v25 = v22 + 16;
  if (v24 <= v25)
  {
    v25 = 0;
  }

  *(a1 + 88) = v25;
  if (*(v23 + 8) <= 0xFFuLL)
  {
    goto LABEL_56;
  }

  atomic_exchange((*(v23 + 16) + 128), v25);
  *(a1 + 124) = 0;
  v26 = *(a1 + 8);
  v27 = IPC::Encoder::operator new(0x238, v11);
  *v27 = 1108;
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 1) = a3;
  *(v27 + 68) = 0;
  *(v27 + 70) = 0;
  *(v27 + 69) = 0;
  IPC::Encoder::encodeHeader(v27);
  v49 = v27;
  IPC::ArgumentCoder<WebCore::Color,void>::encode(v27, *a2);
  v21 = IPC::Connection::sendMessageImpl(v26, &v49, 1, 0);
  v29 = v49;
  v49 = 0;
  if (v29)
  {
    IPC::Encoder::~Encoder(v29, v28);
    bmalloc::api::tzoneFree(v30, v31);
  }

  return v21;
}

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetStrokePackedColor>(uint64_t *a1, _DWORD **a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1127;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v6, **a2);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::SetStrokePattern,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
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

    v38 = v56;
    if (v56 <= 1)
    {
LABEL_61:
      __break(0xC471u);
      JUMPOUT(0x19E1E4144);
    }

    v39 = v55;
    *v55 = 3198;
    v40 = v39 + 2;
    if (v38 - 2 < (-v40 & 7 | 8uLL))
    {
      return 18;
    }

    v41 = -v40 & 7;
    *&v40[v41] = a3;
    if (v41 != 7)
    {
      v41 = 6;
    }

    v42 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v44 = *(a1 + 72);
    v43 = *(a1 + 80);
    v45 = v41 + 10;
    if (v42 + 16 >= v44)
    {
      v42 = 0;
    }

    v46 = v45 + v42;
    if (v44 <= v46)
    {
      v46 = 0;
    }

    *(a1 + 88) = v46;
    if (*(v43 + 8) <= 0xFFuLL)
    {
      goto LABEL_60;
    }

    v47 = atomic_exchange((*(v43 + 16) + 128), v46);
    v48 = *(a1 + 124);
    if (v47 == 0x80000000 || v48 != 0)
    {
      v50 = v48 + 1;
      *(a1 + 124) = v50;
      if (v50 >= *(a1 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v52, v7);
  if (v54 != 1)
  {
    return 16;
  }

  v9 = v52;
  v10 = v53;
  v57 = v53;
  if (v53 <= 1)
  {
    goto LABEL_61;
  }

  *v52 = 1129;
  v11 = v9 + 1;
  v12 = v10 - 2;
  v13 = -v11 & 7 | 8;
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    *(v11 + (-v11 & 7)) = **a2;
    v55 = (v11 + v13);
    v56 = v15;
  }

  else
  {
    v55 = 0;
    v56 = 0;
  }

  IPC::ArgumentCoder<WebCore::PatternParameters,void>::encode(&v55, *(a2 + 8));
  if (v55)
  {
    v17 = v57 - v56;
    if (v57 - v56 <= 0x10)
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
      v22 = atomic_exchange((*(v21 + 16) + 128), v20);
      v23 = *(a1 + 124);
      if (v22 == 0x80000000 || v23 != 0)
      {
        v25 = v23 + 1;
        *(a1 + 124) = v25;
        if (v25 >= *(a1 + 120))
        {
          if (*(a1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a1 + 100));
          }

          *(a1 + 124) = 0;
        }
      }

      return 0;
    }

    goto LABEL_60;
  }

  if ((v54 & 1) == 0)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v53 <= 1)
  {
    __break(0xC471u);
    goto LABEL_60;
  }

  *v52 = 3197;
  v27 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(a1 + 72);
  if (v27 + 16 >= v28)
  {
    v27 = 0;
  }

  v29 = v27 + 16;
  if (v28 <= v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v29;
  }

  *(a1 + 88) = v30;
  v31 = *(a1 + 80);
  if (*(v31 + 8) <= 0xFFuLL)
  {
    goto LABEL_60;
  }

  atomic_exchange((*(v31 + 16) + 128), v30);
  *(a1 + 124) = 0;
  v32 = *(a1 + 8);
  v33 = IPC::Encoder::operator new(0x238, v16);
  *v33 = 1129;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 1) = a3;
  *(v33 + 68) = 0;
  *(v33 + 70) = 0;
  *(v33 + 69) = 0;
  IPC::Encoder::encodeHeader(v33);
  v55 = v33;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v33, **a2);
  IPC::ArgumentCoder<WebCore::PatternParameters,void>::encode(v33, *(a2 + 8));
  v26 = IPC::Connection::sendMessageImpl(v32, &v55, 1, 0);
  v35 = v55;
  v55 = 0;
  if (v35)
  {
    IPC::Encoder::~Encoder(v35, v34);
    bmalloc::api::tzoneFree(v36, v37);
  }

  return v26;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::SetStrokeColor,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, WebCore::Color **a2, uint64_t a3)
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

    v32 = v50;
    if (v50 <= 1)
    {
LABEL_57:
      __break(0xC471u);
      JUMPOUT(0x19E1E44E0);
    }

    v33 = v49;
    *v49 = 3198;
    v34 = v33 + 2;
    if (v32 - 2 < (-v34 & 7 | 8uLL))
    {
      return 18;
    }

    v35 = -v34 & 7;
    *&v34[v35] = a3;
    if (v35 != 7)
    {
      v35 = 6;
    }

    v36 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v38 = *(a1 + 72);
    v37 = *(a1 + 80);
    v39 = v35 + 10;
    if (v36 + 16 >= v38)
    {
      v36 = 0;
    }

    v40 = v39 + v36;
    if (v38 <= v40)
    {
      v40 = 0;
    }

    *(a1 + 88) = v40;
    if (*(v37 + 8) <= 0xFFuLL)
    {
      goto LABEL_56;
    }

    v41 = atomic_exchange((*(v37 + 16) + 128), v40);
    v42 = *(a1 + 124);
    if (v41 == 0x80000000 || v42 != 0)
    {
      v44 = v42 + 1;
      *(a1 + 124) = v44;
      if (v44 >= *(a1 + 120))
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
    goto LABEL_57;
  }

  *v46 = 1125;
  v49 = (v9 + 1);
  v50 = v10 - 2;
  IPC::ArgumentCoder<WebCore::Color,void>::encode(&v49, *a2);
  if (v49)
  {
    v12 = 16;
    if (v51 - v50 > 0x10)
    {
      v12 = v51 - v50;
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
      v17 = atomic_exchange((*(v14 + 16) + 128), v16);
      v18 = *(a1 + 124);
      if (v17 == 0x80000000 || v18 != 0)
      {
        v20 = v18 + 1;
        *(a1 + 124) = v20;
        if (v20 >= *(a1 + 120))
        {
          if (*(a1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a1 + 100));
          }

          *(a1 + 124) = 0;
        }
      }

      return 0;
    }

    goto LABEL_56;
  }

  if ((v48 & 1) == 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v47 <= 1)
  {
    __break(0xC471u);
    goto LABEL_56;
  }

  *v46 = 3197;
  v22 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(a1 + 72);
  v23 = *(a1 + 80);
  if (v22 + 16 >= v24)
  {
    v22 = 0;
  }

  v25 = v22 + 16;
  if (v24 <= v25)
  {
    v25 = 0;
  }

  *(a1 + 88) = v25;
  if (*(v23 + 8) <= 0xFFuLL)
  {
    goto LABEL_56;
  }

  atomic_exchange((*(v23 + 16) + 128), v25);
  *(a1 + 124) = 0;
  v26 = *(a1 + 8);
  v27 = IPC::Encoder::operator new(0x238, v11);
  *v27 = 1125;
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 1) = a3;
  *(v27 + 68) = 0;
  *(v27 + 70) = 0;
  *(v27 + 69) = 0;
  IPC::Encoder::encodeHeader(v27);
  v49 = v27;
  IPC::ArgumentCoder<WebCore::Color,void>::encode(v27, *a2);
  v21 = IPC::Connection::sendMessageImpl(v26, &v49, 1, 0);
  v29 = v49;
  v49 = 0;
  if (v29)
  {
    IPC::Encoder::~Encoder(v29, v28);
    bmalloc::api::tzoneFree(v30, v31);
  }

  return v21;
}

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetFillRule>(uint64_t *a1, char *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1112;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  v14 = *a2;
  IPC::Encoder::operator<<<BOOL>(v6, &v14);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetStrokeStyle>(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1130;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetCompositeMode>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1104;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v14 = v6;
  v7 = *a2;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v6, **a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v6, v7[1]);
  v9 = IPC::Connection::sendMessageImpl(a1, &v14, 1, 0);
  v10 = v14;
  v14 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v8);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return v9;
}

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetShadowsIgnoreTransforms>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1118;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::Encoder::operator<<<BOOL &>(v6, a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetDropShadow>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1106;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v15 = v6;
  v7 = *a2;
  if (*(*a2 + 32))
  {
    v16 = 1;
    IPC::Encoder::operator<<<BOOL>(v6, &v16);
    if ((*(v7 + 32) & 1) == 0)
    {
      v14 = std::__throw_bad_optional_access[abi:sn200100]();
      return IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::SetStyle,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(v14);
    }

    IPC::ArgumentCoder<WebCore::GraphicsDropShadow,void>::encode(v6, v7);
  }

  else
  {
    v17 = 0;
    IPC::Encoder::operator<<<BOOL>(v6, &v17);
  }

  v9 = IPC::Connection::sendMessageImpl(a1, &v15, 1, 0);
  v10 = v15;
  v15 = 0;
  if (v10)
  {
    IPC::Encoder::~Encoder(v10, v8);
    bmalloc::api::tzoneFree(v12, v13);
  }

  return v9;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::SetStyle,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t *a2, uint64_t a3)
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

    v43 = v61;
    if (v61 <= 1)
    {
LABEL_98:
      __break(0xC471u);
      JUMPOUT(0x19E1E4DF0);
    }

    v44 = v60;
    *v60 = 3198;
    v45 = v44 + 2;
    if (v43 - 2 < (-v45 & 7 | 8uLL))
    {
      return 18;
    }

    v46 = -v45 & 7;
    *&v45[v46] = a3;
    if (v46 != 7)
    {
      v46 = 6;
    }

    v47 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v49 = *(a1 + 72);
    v48 = *(a1 + 80);
    v50 = v46 + 10;
    if (v47 + 16 >= v49)
    {
      v47 = 0;
    }

    v51 = v50 + v47;
    if (v49 <= v51)
    {
      v51 = 0;
    }

    *(a1 + 88) = v51;
    if (*(v48 + 8) <= 0xFFuLL)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v52 = atomic_exchange((*(v48 + 16) + 128), v51);
    v53 = *(a1 + 124);
    if (v52 == 0x80000000 || v53 != 0)
    {
      v55 = v53 + 1;
      *(a1 + 124) = v55;
      if (v55 >= *(a1 + 120))
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

  v9 = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v57, v7);
  if (v59 != 1)
  {
    return 16;
  }

  v11 = v57;
  v10 = v58;
  v62 = v58;
  if (v58 <= 1)
  {
    goto LABEL_98;
  }

  *v57 = 1132;
  v12 = *a2;
  if ((*(*a2 + 88) & 1) == 0)
  {
    if (v10 != 2)
    {
      v11[2] = 0;
      v17 = v10 - 3;
      v60 = (v11 + 3);
      v61 = v10 - 3;
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if (v10 == 2)
  {
    v13 = (v12 + 80);
    v14 = *(v12 + 80);
LABEL_88:
    v15 = 0;
    v16 = 0;
    v60 = 0;
    v61 = 0;
    goto LABEL_11;
  }

  v11[2] = 1;
  if ((*(v12 + 88) & 1) == 0)
  {
    goto LABEL_92;
  }

  v13 = (v12 + 80);
  v14 = *(v12 + 80);
  if (v10 == 3)
  {
    goto LABEL_88;
  }

  v11[3] = v14;
  v15 = v10 - 4;
  v16 = (v11 + 4);
  v60 = v16;
  v61 = v15;
LABEL_11:
  switch(v14)
  {
    case 2:
      if (*v13 != 2)
      {
        goto LABEL_93;
      }

      for (i = 0; i != 80; i += 4)
      {
        v37 = -v16 & 3 | 4;
        if (v15 < v37)
        {
          v15 = 0;
          v16 = 0;
          v60 = 0;
          v61 = 0;
        }

        else
        {
          *(v16 + (-v16 & 3)) = *(v12 + i);
          v15 = v61 - v37;
          if (v61 < v37)
          {
            goto LABEL_97;
          }

          v16 = (v60 + v37);
          v60 = (v60 + v37);
          v61 -= v37;
        }
      }

      break;
    case 1:
      if (*v13 != 1)
      {
        goto LABEL_93;
      }

      IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(&v60, v12);
      break;
    case 0:
      if (*v13)
      {
        goto LABEL_93;
      }

      IPC::ArgumentCoder<WebCore::GraphicsDropShadow,void>::encode(&v60, v12);
      break;
  }

  if (v60)
  {
    v17 = v61;
    v10 = v62;
LABEL_22:
    v18 = v10 - v17;
    v19 = 16;
    if (v18 > 0x10)
    {
      v19 = v18;
    }

    v20 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v22 = *(a1 + 72);
    v21 = *(a1 + 80);
    if (v20 + 16 >= v22)
    {
      v20 = 0;
    }

    v23 = v20 + v19;
    if (v22 <= v23)
    {
      v23 = 0;
    }

    *(a1 + 88) = v23;
    if (*(v21 + 8) > 0xFFuLL)
    {
      v24 = atomic_exchange((*(v21 + 16) + 128), v23);
      v25 = *(a1 + 124);
      if (v24 == 0x80000000 || v25 != 0)
      {
        v27 = v25 + 1;
        *(a1 + 124) = v27;
        if (v27 >= *(a1 + 120))
        {
          if (*(a1 + 112) == 1)
          {
            MEMORY[0x19EB16320](*(a1 + 100));
          }

          *(a1 + 124) = 0;
        }
      }

      return 0;
    }

    goto LABEL_97;
  }

LABEL_35:
  if ((v59 & 1) == 0)
  {
    goto LABEL_97;
  }

  if (v58 <= 1)
  {
    __break(0xC471u);
    goto LABEL_97;
  }

  *v57 = 3197;
  v29 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v31 = *(a1 + 72);
  v30 = *(a1 + 80);
  if (v29 + 16 >= v31)
  {
    v29 = 0;
  }

  v32 = v29 + 16;
  if (v31 <= v32)
  {
    v32 = 0;
  }

  *(a1 + 88) = v32;
  if (*(v30 + 8) <= 0xFFuLL)
  {
    goto LABEL_97;
  }

  atomic_exchange((*(v30 + 16) + 128), v32);
  *(a1 + 124) = 0;
  v33 = *(a1 + 8);
  v34 = IPC::Encoder::operator new(0x238, v12);
  *v34 = 1132;
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  *(v34 + 1) = a3;
  *(v34 + 68) = 0;
  *(v34 + 70) = 0;
  *(v34 + 69) = 0;
  IPC::Encoder::encodeHeader(v34);
  v60 = v34;
  v35 = *a2;
  if ((*(v35 + 88) & 1) == 0)
  {
    v63 = 0;
    IPC::Encoder::operator<<<BOOL>(v34, &v63);
    goto LABEL_58;
  }

  v63 = 1;
  IPC::Encoder::operator<<<BOOL>(v34, &v63);
  if ((*(v35 + 88) & 1) == 0)
  {
LABEL_92:
    v9 = std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_93;
  }

  v63 = *(v35 + 80);
  v9 = IPC::Encoder::operator<<<BOOL>(v34, &v63);
  if (v63 == 2)
  {
    if (*(v35 + 80) != 2)
    {
      goto LABEL_93;
    }

    for (j = 0; j != 80; j += 4)
    {
      IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v34, *(v35 + j));
    }
  }

  else
  {
    if (v63 != 1)
    {
      if (v63)
      {
        goto LABEL_58;
      }

      if (!*(v35 + 80))
      {
        IPC::ArgumentCoder<WebCore::GraphicsDropShadow,void>::encode(v34, v35);
        goto LABEL_58;
      }

LABEL_93:
      mpark::throw_bad_variant_access(v9);
    }

    if (*(v35 + 80) != 1)
    {
      goto LABEL_93;
    }

    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v34, *v35);
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(v34, *(v35 + 4));
  }

LABEL_58:
  v28 = IPC::Connection::sendMessageImpl(v33, &v60, 1, 0);
  v39 = v60;
  v60 = 0;
  if (v39)
  {
    IPC::Encoder::~Encoder(v39, v38);
    bmalloc::api::tzoneFree(v40, v41);
  }

  return v28;
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::SetTextDrawingMode,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, char **a2, uint64_t a3)
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

    v21 = v46;
    if (v46 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1E5198);
    }

    v22 = v45;
    *v45 = 3198;
    v23 = v22 + 1;
    if (v21 - 2 < (-v23 & 7 | 8uLL))
    {
      return 18;
    }

    v24 = -v23 & 7;
    *(v23 + v24) = a3;
    if (v24 != 7)
    {
      v24 = 6;
    }

    v25 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(a1 + 72);
    v26 = *(a1 + 80);
    v28 = v24 + 10;
    if (v25 + 16 >= v27)
    {
      v25 = 0;
    }

    v29 = v28 + v25;
    if (v27 <= v29)
    {
      v29 = 0;
    }

    *(a1 + 88) = v29;
    if (*(v26 + 8) <= 0xFFuLL)
    {
      goto LABEL_55;
    }

    v30 = atomic_exchange((*(v26 + 16) + 128), v29);
    v31 = *(a1 + 124);
    if (v30 == 0x80000000 || v31 != 0)
    {
      v33 = v31 + 1;
      *(a1 + 124) = v33;
      if (v33 >= *(a1 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v45, v7);
  if (v47 != 1)
  {
    return 16;
  }

  v10 = v46;
  if (v46 <= 1)
  {
    __break(0xC471u);
    goto LABEL_56;
  }

  v11 = v45;
  *v45 = 1133;
  if (v10 != 2)
  {
    *(v11 + 2) = **a2;
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
      v16 = atomic_exchange((*(v13 + 16) + 128), v15);
      v17 = *(a1 + 124);
      if (v16 != 0x80000000 && v17 == 0)
      {
        return 0;
      }

      v19 = v17 + 1;
      *(a1 + 124) = v19;
      if (v19 < *(a1 + 120))
      {
        return 0;
      }

      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      v20 = 0;
      *(a1 + 124) = 0;
      return v20;
    }

    goto LABEL_55;
  }

  if ((v47 & 1) == 0)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    JUMPOUT(0x19E1E5178);
  }

  if (v46 <= 1)
  {
    __break(0xC471u);
    goto LABEL_55;
  }

  *v45 = 3197;
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
    goto LABEL_55;
  }

  atomic_exchange((*(v36 + 16) + 128), v38);
  *(a1 + 124) = 0;
  v39 = *(a1 + 8);
  v40 = IPC::Encoder::operator new(0x238, v9);
  *v40 = 1133;
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 1) = a3;
  *(v40 + 68) = 0;
  *(v40 + 70) = 0;
  *(v40 + 69) = 0;
  IPC::Encoder::encodeHeader(v40);
  v48 = v40;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v40, **a2);
  v20 = IPC::Connection::sendMessageImpl(v39, &v48, 1, 0);
  v42 = v48;
  v48 = 0;
  if (v42)
  {
    IPC::Encoder::~Encoder(v42, v41);
    bmalloc::api::tzoneFree(v43, v44);
  }

  return v20;
}

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetImageInterpolationQuality>(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1113;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v6, *a2);
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

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetShouldAntialias>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1121;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::Encoder::operator<<<BOOL &>(v6, a2);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::SetShouldSmoothFonts,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, char *a2, uint64_t a3)
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

    v21 = v46;
    if (v46 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1E5668);
    }

    v22 = v45;
    *v45 = 3198;
    v23 = v22 + 1;
    if (v21 - 2 < (-v23 & 7 | 8uLL))
    {
      return 18;
    }

    v24 = -v23 & 7;
    *(v23 + v24) = a3;
    if (v24 != 7)
    {
      v24 = 6;
    }

    v25 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(a1 + 72);
    v26 = *(a1 + 80);
    v28 = v24 + 10;
    if (v25 + 16 >= v27)
    {
      v25 = 0;
    }

    v29 = v28 + v25;
    if (v27 <= v29)
    {
      v29 = 0;
    }

    *(a1 + 88) = v29;
    if (*(v26 + 8) <= 0xFFuLL)
    {
      goto LABEL_55;
    }

    v30 = atomic_exchange((*(v26 + 16) + 128), v29);
    v31 = *(a1 + 124);
    if (v30 == 0x80000000 || v31 != 0)
    {
      v33 = v31 + 1;
      *(a1 + 124) = v33;
      if (v33 >= *(a1 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v45, v7);
  if (v47 != 1)
  {
    return 16;
  }

  v10 = v46;
  if (v46 <= 1)
  {
    __break(0xC471u);
    goto LABEL_56;
  }

  v11 = v45;
  *v45 = 1122;
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
      v16 = atomic_exchange((*(v13 + 16) + 128), v15);
      v17 = *(a1 + 124);
      if (v16 != 0x80000000 && v17 == 0)
      {
        return 0;
      }

      v19 = v17 + 1;
      *(a1 + 124) = v19;
      if (v19 < *(a1 + 120))
      {
        return 0;
      }

      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      v20 = 0;
      *(a1 + 124) = 0;
      return v20;
    }

    goto LABEL_55;
  }

  if ((v47 & 1) == 0)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    JUMPOUT(0x19E1E5648);
  }

  if (v46 <= 1)
  {
    __break(0xC471u);
    goto LABEL_55;
  }

  *v45 = 3197;
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
    goto LABEL_55;
  }

  atomic_exchange((*(v36 + 16) + 128), v38);
  *(a1 + 124) = 0;
  v39 = *(a1 + 8);
  v40 = IPC::Encoder::operator new(0x238, v9);
  *v40 = 1122;
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 1) = a3;
  *(v40 + 68) = 0;
  *(v40 + 70) = 0;
  *(v40 + 69) = 0;
  IPC::Encoder::encodeHeader(v40);
  v48 = v40;
  IPC::Encoder::operator<<<BOOL &>(v40, a2);
  v20 = IPC::Connection::sendMessageImpl(v39, &v48, 1, 0);
  v42 = v48;
  v48 = 0;
  if (v42)
  {
    IPC::Encoder::~Encoder(v42, v41);
    bmalloc::api::tzoneFree(v43, v44);
  }

  return v20;
}

uint64_t IPC::Connection::send<Messages::RemoteDisplayListRecorder::SetShouldSubpixelQuantizeFonts>(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1123;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v13 = v6;
  IPC::Encoder::operator<<<BOOL &>(v6, a2);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteDisplayListRecorder::SetDrawLuminanceMask,WebKit::RemoteDisplayListRecorderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, char *a2, uint64_t a3)
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

    v21 = v46;
    if (v46 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1E5A90);
    }

    v22 = v45;
    *v45 = 3198;
    v23 = v22 + 1;
    if (v21 - 2 < (-v23 & 7 | 8uLL))
    {
      return 18;
    }

    v24 = -v23 & 7;
    *(v23 + v24) = a3;
    if (v24 != 7)
    {
      v24 = 6;
    }

    v25 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(a1 + 72);
    v26 = *(a1 + 80);
    v28 = v24 + 10;
    if (v25 + 16 >= v27)
    {
      v25 = 0;
    }

    v29 = v28 + v25;
    if (v27 <= v29)
    {
      v29 = 0;
    }

    *(a1 + 88) = v29;
    if (*(v26 + 8) <= 0xFFuLL)
    {
      goto LABEL_55;
    }

    v30 = atomic_exchange((*(v26 + 16) + 128), v29);
    v31 = *(a1 + 124);
    if (v30 == 0x80000000 || v31 != 0)
    {
      v33 = v31 + 1;
      *(a1 + 124) = v33;
      if (v33 >= *(a1 + 120))
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

  IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v45, v7);
  if (v47 != 1)
  {
    return 16;
  }

  v10 = v46;
  if (v46 <= 1)
  {
    __break(0xC471u);
    goto LABEL_56;
  }

  v11 = v45;
  *v45 = 1105;
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
      v16 = atomic_exchange((*(v13 + 16) + 128), v15);
      v17 = *(a1 + 124);
      if (v16 != 0x80000000 && v17 == 0)
      {
        return 0;
      }

      v19 = v17 + 1;
      *(a1 + 124) = v19;
      if (v19 < *(a1 + 120))
      {
        return 0;
      }

      if (*(a1 + 112) == 1)
      {
        MEMORY[0x19EB16320](*(a1 + 100));
      }

      v20 = 0;
      *(a1 + 124) = 0;
      return v20;
    }

    goto LABEL_55;
  }

  if ((v47 & 1) == 0)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    JUMPOUT(0x19E1E5A70);
  }

  if (v46 <= 1)
  {
    __break(0xC471u);
    goto LABEL_55;
  }

  *v45 = 3197;
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
    goto LABEL_55;
  }

  atomic_exchange((*(v36 + 16) + 128), v38);
  *(a1 + 124) = 0;
  v39 = *(a1 + 8);
  v40 = IPC::Encoder::operator new(0x238, v9);
  *v40 = 1105;
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 1) = a3;
  *(v40 + 68) = 0;
  *(v40 + 70) = 0;
  *(v40 + 69) = 0;
  IPC::Encoder::encodeHeader(v40);
  v48 = v40;
  IPC::Encoder::operator<<<BOOL &>(v40, a2);
  v20 = IPC::Connection::sendMessageImpl(v39, &v48, 1, 0);
  v42 = v48;
  v48 = 0;
  if (v42)
  {
    IPC::Encoder::~Encoder(v42, v41);
    bmalloc::api::tzoneFree(v43, v44);
  }

  return v20;
}

atomic_uchar **WTF::Detail::CallableWrapper<WebKit::RemoteGraphicsContextGLProxy::initializeIPC(WTF::Ref<IPC::StreamClientConnection,WTF::RawPtrTraits<IPC::StreamClientConnection>,WTF::DefaultRefDerefTraits<IPC::StreamClientConnection>> &&,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::StreamServerConnectionHandle &&,WTF::SerialFunctionDispatcher &)::$_0,void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v21 = WebKit::WebProcess::operator new(0x370, a2);
    v4 = WebKit::WebProcess::WebProcess(v21);
    WebKit::WebProcess::singleton(void)::process = v4;
  }

  v5 = WebKit::WebProcess::ensureGPUProcessConnection(v4);
  v6 = (v5 + 3);
  while (1)
  {
    v7 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v8 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_8:
  v9 = *(v3 + 72);
  v10 = *(v3 + 65);
  v22 = *(v3 + 57);
  v23 = v10;
  v11 = *(a1 + 24);
  v12 = **(a1 + 16);
  v26 = v9;
  v24[3] = v11;
  v25 = v12;
  v13 = v5[4];
  v24[0] = &v26;
  v24[1] = &v22;
  v24[2] = &v25;
  IPC::Connection::send<Messages::GPUConnectionToWebProcess::CreateGraphicsContextGL>(v13, v24, 0, 1, 0);
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v5 + 2, v5);
  v15 = v5[1];
  atomic_fetch_add(v15, 1u);
  v16 = *(v3 + 80);
  *(v3 + 80) = v15;
  if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v16);
    WTF::fastFree(v16, v14);
  }

  v18 = WebKit::GPUProcessConnection::videoFrameObjectHeapProxy(v5);
  atomic_fetch_add(v18, 1u);
  v19 = *(v3 + 160);
  *(v3 + 160) = v18;
  if (v19)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteVideoFrameObjectHeapProxy,(WTF::DestructionThread)2>::deref(v19);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUProcessConnection,(WTF::DestructionThread)0>::deref(v6, v17);
}

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::EnsureExtensionEnabled,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, uint64_t **a2, uint64_t a3)
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
      JUMPOUT(0x19E1E5F24);
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

  *v38 = 1256;
  v41 = (v9 + 1);
  v42 = v10 - 2;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(&v41, *a2);
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
  *v23 = 1256;
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 1) = a3;
  *(v23 + 68) = 0;
  *(v23 + 70) = 0;
  *(v23 + 69) = 0;
  IPC::Encoder::encodeHeader(v23);
  v41 = v23;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v23, *a2);
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

uint64_t IPC::StreamClientConnection::send<Messages::RemoteGraphicsContextGL::Reshape,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>(uint64_t a1, int *a2, uint64_t a3)
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
      JUMPOUT(0x19E1E62C4);
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
  *v43 = 1287;
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
  *v28 = 1287;
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

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::DrawSurfaceBufferToImageBuffer,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>)
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
    goto LABEL_47;
  }

LABEL_4:
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v75, v9);
  if ((v77 & 1) == 0)
  {
LABEL_58:
    v57 = 16;
LABEL_59:
    *a4 = v57;
    goto LABEL_60;
  }

  if (WTF::ObjectIdentifierGeneric<IPC::SyncRequestIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    goto LABEL_86;
  }

  v13 = v75;
  v12 = v76;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a1 + 8), IdentifierInternal);
  if (!result)
  {
    v33 = 12;
LABEL_43:
    *a4 = v33;
LABEL_60:
    v45 = 1;
    goto LABEL_61;
  }

  if (v12 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1E68F0);
  }

  *v13 = 4032;
  v16 = v13 + 1;
  v17 = -v16 & 7 | 8;
  if (v12 - 2 >= v17)
  {
    v18 = -v16 & 7;
    *(v16 + v18) = IdentifierInternal;
    if (v12 - 2 != v17)
    {
      v19 = v16 + v17;
      *v19 = *a2;
      v20 = v19 + 1;
      v21 = (v18 ^ 0xFFFFFFFFFFFFFFF7) + v12 - 2;
      v22 = -v20 & 7 | 8;
      if (v21 >= v22)
      {
        *&v20[-v20 & 7] = **(a2 + 8);
        v23 = v12 - v21 + v22;
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
          goto LABEL_46;
        }

        if (atomic_exchange((*(v27 + 16) + 128), v26) == 0x80000000 || *(a1 + 124))
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
          v28 = *(a1 + 80);
          if (*(v28 + 8) <= 0xFFuLL)
          {
            goto LABEL_46;
          }

          v29 = atomic_exchange(*(v28 + 16), 0x80000000uLL);
          v30 = *(a1 + 80);
          if (*(v30 + 8) <= 0xFFuLL)
          {
            goto LABEL_46;
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
              WTF::ApproximateTime::now(v31);
              if (v32 < v9)
              {
                continue;
              }
            }
          }

          result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
          v33 = 17;
          goto LABEL_43;
        }

        v34 = *(a1 + 80);
        if (*(v34 + 8) <= 0xFFuLL)
        {
          goto LABEL_46;
        }

        atomic_store(0, *(v34 + 16));
        *(a1 + 88) = 0;
        v35 = *(a1 + 80);
        v36 = *(v35 + 8);
        if (v36 <= 0xFF)
        {
          goto LABEL_46;
        }

        v37 = *(a1 + 72);
        v38 = *(v35 + 16);
        a3 = v36 - 256;
        if (v37)
        {
          v46 = v37 - 1;
          v47 = a3 >= v46;
          a3 = v46;
          if (!v47)
          {
            goto LABEL_46;
          }
        }

        v39 = IPC::Decoder::operator new(0x58, v15);
        if (*(IPC::Decoder::Decoder(v39, v38 + 256, a3, *(a1 + 64)) + 25) == 3197)
        {
          IPC::Decoder::~Decoder(v39);
          bmalloc::api::tzoneFree(v40, v41);
          IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0xFC0u, &v80, v9);
          v42 = v81;
          if (v81)
          {
            if (v81 == 255)
            {
              v74 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
              mpark::throw_bad_variant_access(v74);
            }

            v33 = v80;
            result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
            if (v42 != 1)
            {
LABEL_39:
              mpark::throw_bad_variant_access(result);
            }

            goto LABEL_43;
          }

          v39 = v80;
        }

        result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
        if (*(v39 + 25) != 3194)
        {
          v45 = 0;
          *a4 = v39;
LABEL_61:
          a4[16] = v45;
          return result;
        }

        IPC::Decoder::~Decoder(v39);
        result = bmalloc::api::tzoneFree(v43, v44);
        v33 = 11;
        goto LABEL_43;
      }
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v77 & 1) == 0)
  {
    while (1)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v75, v9);
      if (v77 != 1)
      {
        goto LABEL_58;
      }

      v48 = v76;
      if (v76 <= 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1E6910);
      }

      v49 = v75;
      *v75 = 3198;
      v50 = v49 + 1;
      if (v48 - 2 < (-v50 & 7 | 8uLL))
      {
        break;
      }

      v51 = -v50 & 7;
      *(v50 + v51) = a3;
      if (v51 != 7)
      {
        v51 = 6;
      }

      v52 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v54 = *(a1 + 72);
      v53 = *(a1 + 80);
      v55 = v51 + 10;
      if (v52 + 16 >= v54)
      {
        v52 = 0;
      }

      v56 = v55 + v52;
      if (v54 <= v56)
      {
        v56 = 0;
      }

      *(a1 + 88) = v56;
      if (*(v53 + 8) > 0xFFuLL)
      {
        IPC::StreamClientConnection::wakeUpServerBatched(a1, atomic_exchange((*(v53 + 16) + 128), v56) == 0x80000000);
        *(a1 + 64) = a3;
        goto LABEL_4;
      }
    }

    v57 = 18;
    goto LABEL_59;
  }

  if (v76 <= 1)
  {
LABEL_86:
    __break(0xC471u);
    JUMPOUT(0x19E1E68D0);
  }

  *v75 = 3197;
  v58 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
  v59 = *(a1 + 72);
  if (v58 + 16 >= v59)
  {
    v58 = 0;
  }

  v60 = v58 + 16;
  if (v59 <= v60)
  {
    v61 = 0;
  }

  else
  {
    v61 = v60;
  }

  *(a1 + 88) = v61;
  v62 = *(a1 + 80);
  if (*(v62 + 8) <= 0xFFuLL)
  {
    goto LABEL_46;
  }

  atomic_exchange((*(v62 + 16) + 128), v61);
  *(a1 + 124) = 0;
  v63 = *(a1 + 8);
  IPC::Connection::createSyncMessageEncoder(0xFC0, a3, &v80);
  v64 = v80;
  LOBYTE(v78) = *a2;
  IPC::Encoder::operator<<<BOOL>(v80, &v78);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v64, **(a2 + 8));
  result = IPC::Connection::sendSyncMessage(v63, v81, &v80, 0, &v78, v9);
  if (v79)
  {
    if (v79 != 1)
    {
      goto LABEL_39;
    }

    *a4 = v78;
    a4[16] = 1;
  }

  else
  {
    v66 = v78;
    v78 = 0;
    if (*(v66 + 25) == 3194)
    {
      *a4 = 11;
      a4[16] = 1;
      IPC::Decoder::~Decoder(v66);
      bmalloc::api::tzoneFree(v67, v68);
      if (!v79)
      {
        v69 = v78;
        v78 = 0;
        if (v69)
        {
          IPC::Decoder::~Decoder(v69);
          bmalloc::api::tzoneFree(v70, v71);
        }
      }
    }

    else
    {
      *a4 = v66;
      a4[16] = 0;
    }
  }

  result = v80;
  v80 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v65);
    return bmalloc::api::tzoneFree(v72, v73);
  }

  return result;
}

mpark *IPC::StreamClientConnection::sendSync<Messages::RemoteGraphicsContextGL::SurfaceBufferToVideoFrame,WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v76, v9);
  if ((v78 & 1) == 0)
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

  v12 = v76;
  v13 = v77;
  IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  result = IPC::Connection::pushPendingSyncRequestID(*(a1 + 8), IdentifierInternal);
  if (!result)
  {
    v30 = 12;
LABEL_46:
    *a4 = v30;
LABEL_62:
    v40 = 1;
    goto LABEL_63;
  }

  if (v13 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1E6F60);
  }

  *v12 = 4097;
  v16 = v12 + 1;
  v17 = -v16 & 7 | 8;
  if (v13 - 2 >= v17)
  {
    v18 = -v16 & 7;
    *(v16 + v18) = IdentifierInternal;
    if (v13 - 2 != v17)
    {
      *(v16 + v17) = *a2;
      v19 = 5;
      if (v18 > 5)
      {
        v19 = -v16 & 7;
      }

      v20 = v19 + 11;
      v21 = (*(a1 + 88) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v22 = *(a1 + 72);
      if (v21 + 16 >= v22)
      {
        v21 = 0;
      }

      v23 = v20 + v21;
      if (v22 <= v23)
      {
        v23 = 0;
      }

      *(a1 + 88) = v23;
      v24 = *(a1 + 80);
      if (*(v24 + 8) <= 0xFFuLL)
      {
        goto LABEL_48;
      }

      if (atomic_exchange((*(v24 + 16) + 128), v23) == 0x80000000 || *(a1 + 124))
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
        v25 = *(a1 + 80);
        if (*(v25 + 8) <= 0xFFuLL)
        {
          goto LABEL_48;
        }

        v26 = atomic_exchange(*(v25 + 16), 0x80000000uLL);
        v27 = *(a1 + 80);
        if (*(v27 + 8) <= 0xFFuLL)
        {
          goto LABEL_48;
        }

        if (!(v26 | atomic_load_explicit((*(v27 + 16) + 128), memory_order_acquire) & 0xFFFFFFFF7FFFFFFFLL))
        {
          break;
        }

        if (*(a1 + 112) == 1)
        {
          v28 = IPC::Semaphore::waitFor((a1 + 104), v9);
          if (v28)
          {
            WTF::ApproximateTime::now(v28);
            if (v29 < v9)
            {
              continue;
            }
          }
        }

        result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
        v30 = 17;
        goto LABEL_46;
      }

      v31 = *(a1 + 80);
      if (*(v31 + 8) <= 0xFFuLL)
      {
        goto LABEL_48;
      }

      atomic_store(0, *(v31 + 16));
      *(a1 + 88) = 0;
      v32 = *(a1 + 80);
      v33 = *(v32 + 8);
      if (v33 <= 0xFF)
      {
        goto LABEL_48;
      }

      v34 = *(a1 + 72);
      v35 = *(v32 + 16);
      a3 = v33 - 256;
      if (v34)
      {
        v45 = v34 - 1;
        v46 = a3 >= v45;
        a3 = v45;
        if (!v46)
        {
          goto LABEL_48;
        }
      }

      v36 = IPC::Decoder::operator new(0x58, v15);
      if (*(IPC::Decoder::Decoder(v36, v35 + 256, a3, *(a1 + 64)) + 25) == 3197)
      {
        IPC::Decoder::~Decoder(v36);
        bmalloc::api::tzoneFree(v37, v38);
        IPC::Connection::waitForSyncReply(*(a1 + 8), IdentifierInternal, 0x1001u, &v79, v9);
        v39 = BYTE8(v79);
        if (BYTE8(v79))
        {
          if (BYTE8(v79) == 255)
          {
            v75 = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
            mpark::throw_bad_variant_access(v75);
          }

          v30 = v79;
          result = IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
          if (v39 != 1)
          {
LABEL_38:
            mpark::throw_bad_variant_access(result);
          }

          goto LABEL_46;
        }

        v36 = v79;
      }

      IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
      if (*(v36 + 25) == 3194)
      {
        v30 = 11;
      }

      else
      {
        LOBYTE(v79) = 0;
        v83 = 0;
        result = IPC::Decoder::operator>><std::tuple<std::optional<WebKit::RemoteVideoFrameProxyProperties>>>(v36, &v79);
        if (v83)
        {
          v40 = 0;
          v41 = v80;
          *(a4 + 8) = v79;
          *(a4 + 24) = v41;
          v42 = v82;
          *(a4 + 40) = v81;
          *(a4 + 56) = v42;
          *a4 = v36;
LABEL_63:
          *(a4 + 72) = v40;
          return result;
        }

        v30 = 14;
      }

      IPC::Decoder::~Decoder(v36);
      result = bmalloc::api::tzoneFree(v43, v44);
      goto LABEL_46;
    }
  }

  IPC::Connection::popPendingSyncRequestID(*(a1 + 8));
  if ((v78 & 1) == 0)
  {
    while (1)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      result = IPC::StreamClientConnectionBuffer::tryAcquire(a1 + 72, &v79, v9);
      if (v80 != 1)
      {
        goto LABEL_60;
      }

      v47 = *(&v79 + 1);
      if (*(&v79 + 1) <= 1uLL)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1E6F80);
      }

      v48 = v79;
      *v79 = 3198;
      v49 = v48 + 2;
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

  if (v77 <= 1)
  {
LABEL_92:
    __break(0xC471u);
    JUMPOUT(0x19E1E6F40);
  }

  *v76 = 3197;
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
  IPC::Connection::createSyncMessageEncoder(0x1001, a3, v86);
  LOBYTE(v79) = *a2;
  IPC::Encoder::operator<<<BOOL>(v86[0], &v79);
  result = IPC::Connection::sendSyncMessage(v62, v86[1], v86, 0, &v84, v9);
  if (v85)
  {
    if (v85 != 1)
    {
      goto LABEL_38;
    }

    *a4 = v84;
    *(a4 + 72) = 1;
    goto LABEL_82;
  }

  v64 = v84;
  v84 = 0;
  if (*(v64 + 25) == 3194)
  {
    v65 = 11;
  }

  else
  {
    LOBYTE(v79) = 0;
    v83 = 0;
    v64 = IPC::Decoder::operator>><std::tuple<std::optional<WebKit::RemoteVideoFrameProxyProperties>>>(v64, &v79);
    if (v83 == 1)
    {
      v66 = v80;
      *(a4 + 8) = v79;
      *(a4 + 24) = v66;
      v67 = v82;
      *(a4 + 40) = v81;
      *(a4 + 56) = v67;
      *a4 = v64;
      *(a4 + 72) = 0;
      goto LABEL_82;
    }

    v65 = 14;
  }

  *a4 = v65;
  *(a4 + 72) = 1;
  IPC::Decoder::~Decoder(v64);
  bmalloc::api::tzoneFree(v68, v69);
LABEL_82:
  if (!v85)
  {
    v70 = v84;
    v84 = 0;
    if (v70)
    {
      IPC::Decoder::~Decoder(v70);
      bmalloc::api::tzoneFree(v73, v74);
    }
  }

  result = v86[0];
  v86[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v63);
    return bmalloc::api::tzoneFree(v71, v72);
  }

  return result;
}
@interface WKNFReaderSessionDelegate
- (WKNFReaderSessionDelegate)initWithConnection:(void *)connection;
- (uint64_t)readerSession:(WTF *)this didDetectTags:(void *)tags;
- (void)readerSession:(id)session didDetectTags:(id)tags;
- (void)readerSession:(uint64_t)session didDetectTags:;
- (void)readerSession:(void *)session didDetectTags:(void *)tags;
@end

@implementation WKNFReaderSessionDelegate

- (WKNFReaderSessionDelegate)initWithConnection:(void *)connection
{
  v11.receiver = self;
  v11.super_class = WKNFReaderSessionDelegate;
  v5 = [(WKNFReaderSessionDelegate *)&v11 init];
  if (v5)
  {
    if (!*connection)
    {
      v6 = WTF::fastCompactMalloc(0x10);
      *v6 = 1;
      *(v6 + 8) = connection;
      v7 = *connection;
      *connection = v6;
      if (v7)
      {
        if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v7);
          WTF::fastFree(v7, v4);
        }
      }
    }

    v8 = *connection;
    atomic_fetch_add(*connection, 1u);
    m_ptr = v5->_connection.m_impl.m_ptr;
    v5->_connection.m_impl.m_ptr = v8;
    if (m_ptr && atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, m_ptr);
      WTF::fastFree(m_ptr, v4);
    }
  }

  return v5;
}

- (void)readerSession:(id)session didDetectTags:(id)tags
{
  WTF::RunLoop::mainSingleton(self);
  m_ptr = self->_connection.m_impl.m_ptr;
  if (m_ptr)
  {
    atomic_fetch_add(m_ptr, 1u);
  }

  if (tags)
  {
    tagsCopy = tags;
  }

  v8 = WTF::fastMalloc(0x18);
  *v8 = &unk_1F110BBC8;
  v8[1] = m_ptr;
  v8[2] = tags;
  v9 = v8;
  WTF::RunLoop::dispatch();
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }
}

- (void)readerSession:(void *)session didDetectTags:(void *)tags
{
  *session = &unk_1F110BBC8;
  v3 = session[2];
  session[2] = 0;
  if (v3)
  {
  }

  v4 = session[1];
  session[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, tags);
  }

  return session;
}

- (uint64_t)readerSession:(WTF *)this didDetectTags:(void *)tags
{
  *this = &unk_1F110BBC8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, tags);
  }

  return WTF::fastFree(this, tags);
}

- (void)readerSession:(uint64_t)session didDetectTags:
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = *(session + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = *(v2 + 32);
      if (v3)
      {
        v4 = *(v3 + 8);
        if (v4)
        {
          v5 = *(session + 16);
          ++*(v4 + 24);
          if ([v5 count])
          {
            v6 = [objc_msgSend(v5 objectAtIndexedSubscript:{0), "tagID"}];
            v7 = v6;
            if (v6)
            {
              v8 = v6;
            }

            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v9 = [v5 countByEnumeratingWithState:&v40 objects:v46 count:16];
            if (v9)
            {
              v10 = *v41;
              while (2)
              {
                for (i = 0; i != v9; ++i)
                {
                  if (*v41 != v10)
                  {
                    objc_enumerationMutation(v5);
                  }

                  if (([v7 isEqualToData:{objc_msgSend(*(*(&v40 + 1) + 8 * i), "tagID")}] & 1) == 0)
                  {
                    v31 = *(v4 + 16);
                    if (v31)
                    {
                      v32 = *(v31 + 8);
                      if (v32)
                      {
                        (**v32)(v32);
                        (*(*v32 + 40))(v32, 0);
                        (*(*v32 + 8))(v32);
                      }
                    }

                    [*(v2 + 16) stopPolling];
                    WTF::RunLoop::TimerBase::start();
                    goto LABEL_56;
                  }
                }

                v9 = [v5 countByEnumeratingWithState:&v40 objects:v46 count:16];
                if (v9)
                {
                  continue;
                }

                break;
              }
            }

            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v12 = [v5 countByEnumeratingWithState:&v36 objects:v45 count:16];
            if (v12)
            {
              v13 = *v37;
              while (2)
              {
                v14 = 0;
                do
                {
                  if (*v37 != v13)
                  {
                    objc_enumerationMutation(v5);
                  }

                  v15 = *(*(&v36 + 1) + 8 * v14);
                  if ([v15 type] == 3 || objc_msgSend(v15, "type") == 6 || objc_msgSend(v15, "type") == 16) && (objc_msgSend(*(v2 + 16), "connectTag:", v15))
                  {
                    v16 = *(v2 + 16);
                    v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&fido::kCtapNfcAppletSelectionCommand length:13];
                    v18 = [v16 transceive:v17];
                    v19 = v18;
                    if (v18)
                    {
                      v20 = v18;
                    }

                    if (v17)
                    {
                    }

                    if (v19)
                    {
                      if ((v21 = [v19 bytes], objc_msgSend(v19, "length") == 8) && *v21 == 0x9032565F463255 || (v22 = objc_msgSend(v19, "bytes"), objc_msgSend(v19, "length") == 10) && (*v22 == 0x305F325F4F444946 ? (v23 = *(v22 + 8) == 144) : (v23 = 0), v23))
                      {

LABEL_62:
                        v33 = *(v4 + 40);
                        if (v33)
                        {
                          ++*(v33 + 8);
                        }

                        NonCompactSlow = bmalloc::api::tzoneAllocateNonCompactSlow();
                        *(NonCompactSlow + 16) = 1;
                        *(NonCompactSlow + 24) = 1;
                        *(NonCompactSlow + 28) = 0;
                        *(NonCompactSlow + 32) = 0;
                        *NonCompactSlow = &unk_1F11210E0;
                        *(NonCompactSlow + 8) = 0;
                        *(NonCompactSlow + 40) = v33;
                        v44 = NonCompactSlow;
                        WebKit::FidoService::getInfo(v4, &v44);
                        v35 = v44;
                        v44 = 0;
                        if (v35)
                        {
                          if (v35[4] == 1)
                          {
                            (*(*v35 + 8))(v35);
                          }

                          else
                          {
                            --v35[4];
                          }
                        }

                        goto LABEL_56;
                      }
                    }

                    v24 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&fido::kCtapNfcU2fVersionCommand length:5];
                    v25 = [v16 transceive:v24];
                    v26 = v25;
                    if (v25)
                    {
                      v27 = v25;
                    }

                    if (v19)
                    {
                    }

                    if (v24)
                    {
                    }

                    if (v26)
                    {
                      bytes = [v26 bytes];
                      if ([v26 length] == 8)
                      {
                        v29 = *bytes;

                        if (v29 == 0x9032565F463255)
                        {
                          goto LABEL_62;
                        }
                      }

                      else
                      {
                      }
                    }

                    [*(v2 + 16) disconnectTag];
                  }

                  ++v14;
                }

                while (v12 != v14);
                v30 = [v5 countByEnumeratingWithState:&v36 objects:v45 count:16];
                v12 = v30;
                if (v30)
                {
                  continue;
                }

                break;
              }
            }

            [*(v2 + 16) stopPolling];
            WTF::RunLoop::TimerBase::start();
LABEL_56:
            if (v7)
            {
            }
          }

          if (*(v4 + 24) == 1)
          {
            (*(*v4 + 24))(v4);
          }

          else
          {
            --*(v4 + 24);
          }
        }
      }
    }
  }
}

@end
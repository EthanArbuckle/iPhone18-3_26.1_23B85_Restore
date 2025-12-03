@interface _WKAPSConnectionDelegate
- (_WKAPSConnectionDelegate)initWithConnection:(void *)connection;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
@end

@implementation _WKAPSConnectionDelegate

- (_WKAPSConnectionDelegate)initWithConnection:(void *)connection
{
  v9.receiver = self;
  v9.super_class = _WKAPSConnectionDelegate;
  v5 = [(_WKAPSConnectionDelegate *)&v9 init];
  if (v5)
  {
    if (connection)
    {
      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(connection + 2, connection);
      v6 = *(connection + 1);
      if (v6)
      {
        atomic_fetch_add(v6, 1u);
      }
    }

    else
    {
      v6 = 0;
    }

    m_ptr = v5->_connection.m_impl.m_ptr;
    v5->_connection.m_impl.m_ptr = v6;
    if (m_ptr && atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, m_ptr);
      WTF::fastFree(m_ptr, v4);
    }
  }

  return v5;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  m_ptr = self->_connection.m_impl.m_ptr;
  if (m_ptr)
  {
    v5 = *(m_ptr + 1);
    if (v5)
    {
      ++v5[4];
      if ([token length])
      {
        if (token)
        {
          bytes = [token bytes];
          v8 = [token length];
          v9 = v8;
          v14 = 0;
          LODWORD(v15) = 0;
          HIDWORD(v15) = v8;
          if (v8)
          {
            if (HIDWORD(v8))
            {
              __break(0xC471u);
              return;
            }

            v10 = WTF::fastMalloc(v8);
            LODWORD(v15) = v9;
            v14 = v10;
            do
            {
              v11 = *bytes++;
              *v10 = v11;
              v10 = (v10 + 1);
              --v9;
            }

            while (v9);
          }
        }

        else
        {
          v14 = 0;
          v15 = 0;
        }

        WebPushD::PushServiceConnection::didReceivePublicToken(v5, &v14);
        v13 = v14;
        if (v14)
        {
          v14 = 0;
          LODWORD(v15) = 0;
          WTF::fastFree(v13, v12);
        }
      }

      if (v5[4] == 1)
      {
        (*(*v5 + 8))(v5);
      }

      else
      {
        --v5[4];
      }
    }
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  m_ptr = self->_connection.m_impl.m_ptr;
  if (m_ptr)
  {
    v5 = *(m_ptr + 1);
    if (v5)
    {
      ++*(v5 + 4);
      WebPushD::PushServiceConnection::didReceivePushMessage(v5, [message topic], objc_msgSend(message, "userInfo"));
      if (*(v5 + 4) == 1)
      {
        v6 = *(*v5 + 8);

        v6(v5);
      }

      else
      {
        --*(v5 + 4);
      }
    }
  }
}

@end
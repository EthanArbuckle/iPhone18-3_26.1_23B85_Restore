@interface BUISAgentXPCConnection
- (BOOL)_entitledAndReturnError:(id *)error;
- (void)_xpcSendReplyError:(id)error request:(id)request;
- (void)invalidate;
- (void)xpcConnectionEvent:(id)event;
- (void)xpcConnectionMessage:(id)message;
- (void)xpcSendMessage:(int)message;
@end

@implementation BUISAgentXPCConnection

- (void)invalidate
{
  [(BluetoothUIService *)self->_agent xpcConnectionInvalidated:self];
  xpcCnx = self->_xpcCnx;
  if (xpcCnx)
  {

    xpc_connection_cancel(xpcCnx);
  }
}

- (BOOL)_entitledAndReturnError:(id *)error
{
  if (self->_entitled)
  {
    return 1;
  }

  xpcCnx = self->_xpcCnx;
  if (xpc_connection_has_entitlement())
  {
    result = 1;
    self->_entitled = 1;
  }

  else
  {
    v7 = NSErrorF();
    if (dword_10001E9A0 <= 90 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
    {
      pid = self->_pid;
      LogPrintF();
    }

    if (error)
    {
      v8 = v7;
      *error = v7;
    }

    return 0;
  }

  return result;
}

- (void)xpcConnectionEvent:(id)event
{
  eventCopy = event;
  if (xpc_get_type(eventCopy) == &_xpc_type_dictionary)
  {
    [(BUISAgentXPCConnection *)self xpcConnectionMessage:eventCopy];
  }

  else if (eventCopy == &_xpc_error_connection_invalid)
  {
    if (dword_10001E9A0 <= 20 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000BEAC(self);
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    [(BUISAgentXPCConnection *)self invalidate];
  }

  else if (dword_10001E9A0 <= 90 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000BE6C();
  }

  _objc_release_x1();
}

- (void)xpcSendMessage:(int)message
{
  connection = self->_xpcCnx;
  if (connection)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v5, [@"BUISKeyType" UTF8String], message);
    xpc_connection_send_message_with_reply(connection, v5, self->_dispatchQueue, &stru_100018578);
  }

  else
  {
    sub_10000BEF0();
  }
}

- (void)_xpcSendReplyError:(id)error request:(id)request
{
  errorCopy = error;
  requestCopy = request;
  v7 = self->_xpcCnx;
  if (v7)
  {
    reply = xpc_dictionary_create_reply(requestCopy);
    if (reply)
    {
      CUXPCEncodeNSError();
      xpc_connection_send_message(v7, reply);
    }

    else
    {
      sub_10000C000();
    }
  }

  else
  {
    sub_10000C060();
  }
}

- (void)xpcConnectionMessage:(id)message
{
  messageCopy = message;
  string = xpc_dictionary_get_string(messageCopy, "BUISKeyType");
  if (!string)
  {
    if (dword_10001E9A0 <= 90 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!xpc_dictionary_expects_reply())
    {
      goto LABEL_18;
    }

    v10 = 0;
    goto LABEL_17;
  }

  v6 = string;
  if (strcmp(string, "BUISKeyArgType"))
  {
    if (dword_10001E9A0 <= 90 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!xpc_dictionary_expects_reply())
    {
      goto LABEL_18;
    }

    v10 = v6;
LABEL_17:
    v9 = NSErrorF();
    [(BUISAgentXPCConnection *)self _xpcSendReplyError:v9 request:messageCopy, v10];

LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  v11 = 0;
  v7 = [(BUISAgentXPCConnection *)self _entitledAndReturnError:&v11];
  v8 = v11;
  if (v7)
  {
    [(BluetoothUIService *)self->_agent activateBanner:messageCopy withXPCConnection:self];
  }

LABEL_19:
}

@end
@interface ATXPCMessage
- (ATXPCMessage)initWithName:(id)a3;
- (id)_createXPCMessage;
- (id)_initWithXPCMessage:(id)a3 onConnection:(id)a4;
- (void)dealloc;
- (void)sendReply:(id)a3;
@end

@implementation ATXPCMessage

- (void)sendReply:(id)a3
{
  v5 = a3;
  x_reply = self->_x_reply;
  v10 = v5;
  if (x_reply && self->_x_reply_connection)
  {
    if (v5)
    {
      v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:v5 format:200 options:0 error:0];
      x_reply = self->_x_reply;
      if (v7)
      {
        v8 = v7;
        xpc_dictionary_set_data(x_reply, "kDKMessageInfoKey", [v7 bytes], objc_msgSend(v7, "length"));

        x_reply = self->_x_reply;
      }
    }

    xpc_connection_send_message(self->_x_reply_connection, x_reply);
    [(ATXPCConnection *)self->_receivingConnection _removeMessage:self];
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"ATXPCConnection.m" lineNumber:471 description:@"Trying to send reply where one isn't expected"];
  }
}

- (id)_createXPCMessage
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = xpc_string_create([(NSString *)self->_name UTF8String]);
  info = self->_info;
  if (info)
  {
    v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:info format:200 options:0 error:0];
    v6 = v5;
    if (v5)
    {
      v7 = xpc_data_create([v5 bytes], objc_msgSend(v5, "length"));
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *keys = xmmword_278C6DD18;
  v8 = v3;
  v14[0] = v8;
  v9 = v7;
  v14[1] = v9;
  v10 = xpc_dictionary_create(keys, v14, 2uLL);
  for (i = 1; i != -1; --i)
  {
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_initWithXPCMessage:(id)a3 onConnection:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = ATXPCMessage;
  v8 = [(ATXPCMessage *)&v25 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_receivingConnection, a4);
    string = xpc_dictionary_get_string(v6, "kDKMessageNameKey");
    if (string)
    {
      string = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
    }

    name = v9->_name;
    v9->_name = string;

    v24 = 0;
    data = xpc_dictionary_get_data(v6, "kDKMessageInfoKey", &v24);
    v13 = 0;
    if (data && v24)
    {
      v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:data length:v24 freeWhenDone:0];
      if (v14)
      {
        v26 = 0;
        v13 = [MEMORY[0x277CCAC58] propertyListWithData:v14 options:0 format:0 error:&v26];
        v15 = v26;
        if (v15)
        {
          v16 = v15;
          v17 = os_log_create("com.apple.amp.AirTraffic", "XPC");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v28 = v16;
            _os_log_impl(&dword_23EC61000, v17, OS_LOG_TYPE_ERROR, "Error deserializing plist %{public}@", buf, 0xCu);
          }
        }
      }

      else
      {
        v13 = 0;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v9->_info, v13);
    }

    reply = xpc_dictionary_create_reply(v6);
    x_reply = v9->_x_reply;
    v9->_x_reply = reply;

    if (v9->_x_reply)
    {
      [(ATXPCConnection *)v9->_receivingConnection _registerMessage:v9];
      v20 = xpc_dictionary_get_remote_connection(v6);
      x_reply_connection = v9->_x_reply_connection;
      v9->_x_reply_connection = v20;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ATXPCMessage;
  [(ATXPCMessage *)&v2 dealloc];
}

- (ATXPCMessage)initWithName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXPCMessage;
  v5 = [(ATXPCMessage *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

@end
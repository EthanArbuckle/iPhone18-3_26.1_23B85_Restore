@interface AXUIMessageReplyHandler
+ (id)createReplyObject:(id)a3 fromMessage:(id)a4 withError:(id)a5;
+ (void)sendReply:(id)a3 withError:(id)a4 andOriginalXPCMessage:(id)a5 usingConnection:(id)a6 customDataAddingBlock:(id)a7;
@end

@implementation AXUIMessageReplyHandler

+ (id)createReplyObject:(id)a3 fromMessage:(id)a4 withError:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7 || (v17 = v9, v10 = [MEMORY[0x277CE69B8] copyXPCMessageFromDictionary:v7 inReplyToXPCMessage:v8 error:&v17], v11 = v17, v9, v9 = v11, !v10))
  {
    reply = xpc_dictionary_create_reply(v8);
    v10 = reply;
    if (reply)
    {
      if (v7 | v9)
      {
        v13 = [v9 domain];
        v14 = [v9 localizedDescription];
        if (!v13)
        {
          v13 = @"AXUIErrorDomainCommunication";
        }

        if (!v14)
        {
          v14 = @"Unexpected error converting reply to an XPC object.";
        }

        v15 = AXLogUI();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [AXUIMessageReplyHandler createReplyObject:v13 fromMessage:v14 withError:v15];
        }

        xpc_dictionary_set_string(v10, _AXUIMessageReplyKeyErrorDomain[0], [(__CFString *)v13 UTF8String]);
        xpc_dictionary_set_string(v10, _AXUIMessageReplyKeyErrorDescription[0], [(__CFString *)v14 UTF8String]);
      }

      else
      {
        xpc_dictionary_set_BOOL(reply, _AXUIMessageReplyKeyDidSucceed[0], 1);
        v9 = 0;
      }
    }
  }

  return v10;
}

+ (void)sendReply:(id)a3 withError:(id)a4 andOriginalXPCMessage:(id)a5 usingConnection:(id)a6 customDataAddingBlock:(id)a7
{
  v18 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [a1 createReplyObject:a3 fromMessage:v18 withError:a4];
  if (v14)
  {
    if (v13)
    {
      v13[2](v13, v14);
    }

    v15 = [v12 connection];

    if (v15)
    {
      v16 = [v12 connection];
      xpc_connection_send_message(v16, v14);
    }

    else
    {
      v16 = [v12 serviceConnection];
      v17 = [(_xpc_connection_s *)v16 remoteTarget];
      [v17 sendBoardServiceMessage:v18 callback:&__block_literal_global_0];
    }
  }
}

+ (void)createReplyObject:(uint64_t)a1 fromMessage:(uint64_t)a2 withError:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_23DC04000, log, OS_LOG_TYPE_ERROR, "Unexpected error with domain %{public}@: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end
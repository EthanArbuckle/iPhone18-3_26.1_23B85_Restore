@interface AXUIMessageReplyHandler
+ (id)createReplyObject:(id)object fromMessage:(id)message withError:(id)error;
+ (void)sendReply:(id)reply withError:(id)error andOriginalXPCMessage:(id)message usingConnection:(id)connection customDataAddingBlock:(id)block;
@end

@implementation AXUIMessageReplyHandler

+ (id)createReplyObject:(id)object fromMessage:(id)message withError:(id)error
{
  objectCopy = object;
  messageCopy = message;
  errorCopy = error;
  if (!objectCopy || (v17 = errorCopy, v10 = [MEMORY[0x277CE69B8] copyXPCMessageFromDictionary:objectCopy inReplyToXPCMessage:messageCopy error:&v17], v11 = v17, errorCopy, errorCopy = v11, !v10))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    v10 = reply;
    if (reply)
    {
      if (objectCopy | errorCopy)
      {
        domain = [errorCopy domain];
        localizedDescription = [errorCopy localizedDescription];
        if (!domain)
        {
          domain = @"AXUIErrorDomainCommunication";
        }

        if (!localizedDescription)
        {
          localizedDescription = @"Unexpected error converting reply to an XPC object.";
        }

        v15 = AXLogUI();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [AXUIMessageReplyHandler createReplyObject:domain fromMessage:localizedDescription withError:v15];
        }

        xpc_dictionary_set_string(v10, _AXUIMessageReplyKeyErrorDomain[0], [(__CFString *)domain UTF8String]);
        xpc_dictionary_set_string(v10, _AXUIMessageReplyKeyErrorDescription[0], [(__CFString *)localizedDescription UTF8String]);
      }

      else
      {
        xpc_dictionary_set_BOOL(reply, _AXUIMessageReplyKeyDidSucceed[0], 1);
        errorCopy = 0;
      }
    }
  }

  return v10;
}

+ (void)sendReply:(id)reply withError:(id)error andOriginalXPCMessage:(id)message usingConnection:(id)connection customDataAddingBlock:(id)block
{
  messageCopy = message;
  connectionCopy = connection;
  blockCopy = block;
  v14 = [self createReplyObject:reply fromMessage:messageCopy withError:error];
  if (v14)
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy, v14);
    }

    connection = [connectionCopy connection];

    if (connection)
    {
      connection2 = [connectionCopy connection];
      xpc_connection_send_message(connection2, v14);
    }

    else
    {
      connection2 = [connectionCopy serviceConnection];
      remoteTarget = [(_xpc_connection_s *)connection2 remoteTarget];
      [remoteTarget sendBoardServiceMessage:messageCopy callback:&__block_literal_global_0];
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
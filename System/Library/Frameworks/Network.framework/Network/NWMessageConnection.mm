@interface NWMessageConnection
- (void)readMessageWithCompletionHandler:(id)handler;
- (void)writeMessage:(id)message completionHandler:(id)handler;
@end

@implementation NWMessageConnection

- (void)writeMessage:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  v8 = nw_content_context_create("NWMessageConnection");
  [messageCopy relativePriority];
  nw_content_context_set_relative_priority(v8, v9);
  nw_content_context_set_expiration_milliseconds(v8, [messageCopy expirationMilliseconds]);
  internalConnection = [(NWConnection *)self internalConnection];
  internalContent = [messageCopy internalContent];

  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = __54__NWMessageConnection_writeMessage_completionHandler___block_invoke;
  completion[3] = &unk_1E6A39D90;
  v14 = handlerCopy;
  v12 = handlerCopy;
  nw_connection_send(internalConnection, internalContent, v8, 1, completion);
}

void __54__NWMessageConnection_writeMessage_completionHandler___block_invoke(uint64_t a1, nw_error_t error)
{
  v2 = *(a1 + 32);
  v3 = nw_error_copy_cf_error(error);
  (*(v2 + 16))(v2, v3);
}

- (void)readMessageWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  internalConnection = [(NWConnection *)self internalConnection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__NWMessageConnection_readMessageWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E6A39D68;
  v8 = handlerCopy;
  v6 = handlerCopy;
  nw_connection_receive_internal(internalConnection, 0, 0xFFFFFFFF, 0xFFFFFFFF, v7);
}

void __56__NWMessageConnection_readMessageWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a3;
  v10 = a2;
  v13 = [(NWMessage *)[NWInboundMessage alloc] initWithContent:v10 context:v9];

  v11 = *(a1 + 32);
  v12 = nw_error_copy_cf_error(v8);

  (*(v11 + 16))(v11, v13, v12);
}

@end
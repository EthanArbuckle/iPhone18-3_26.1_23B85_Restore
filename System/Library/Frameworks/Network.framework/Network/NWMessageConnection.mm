@interface NWMessageConnection
- (void)readMessageWithCompletionHandler:(id)a3;
- (void)writeMessage:(id)a3 completionHandler:(id)a4;
@end

@implementation NWMessageConnection

- (void)writeMessage:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = nw_content_context_create("NWMessageConnection");
  [v7 relativePriority];
  nw_content_context_set_relative_priority(v8, v9);
  nw_content_context_set_expiration_milliseconds(v8, [v7 expirationMilliseconds]);
  v10 = [(NWConnection *)self internalConnection];
  v11 = [v7 internalContent];

  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = __54__NWMessageConnection_writeMessage_completionHandler___block_invoke;
  completion[3] = &unk_1E6A39D90;
  v14 = v6;
  v12 = v6;
  nw_connection_send(v10, v11, v8, 1, completion);
}

void __54__NWMessageConnection_writeMessage_completionHandler___block_invoke(uint64_t a1, nw_error_t error)
{
  v2 = *(a1 + 32);
  v3 = nw_error_copy_cf_error(error);
  (*(v2 + 16))(v2, v3);
}

- (void)readMessageWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(NWConnection *)self internalConnection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__NWMessageConnection_readMessageWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E6A39D68;
  v8 = v4;
  v6 = v4;
  nw_connection_receive_internal(v5, 0, 0xFFFFFFFF, 0xFFFFFFFF, v7);
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
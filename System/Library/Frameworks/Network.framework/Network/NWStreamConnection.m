@interface NWStreamConnection
+ (id)connectionWithConnectedSocket:(int)a3;
- (BOOL)readDataWithMinimumLength:(unint64_t)a3 maximumLength:(unint64_t)a4 completionHandler:(id)a5;
- (BOOL)writeCloseWithCompletionHandler:(id)a3;
- (BOOL)writeData:(id)a3 completionHandler:(id)a4;
@end

@implementation NWStreamConnection

- (BOOL)writeCloseWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(NWConnection *)self internalConnection];
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = __54__NWStreamConnection_writeCloseWithCompletionHandler___block_invoke;
  completion[3] = &unk_1E6A39D90;
  v9 = v4;
  v6 = v4;
  nw_connection_send(v5, 0, &__block_literal_global_6_44667, 1, completion);

  return 1;
}

void __54__NWStreamConnection_writeCloseWithCompletionHandler___block_invoke(uint64_t a1, nw_error_t error)
{
  if (error)
  {
    error = nw_error_copy_cf_error(error);
  }

  v3 = error;
  (*(*(a1 + 32) + 16))();
}

- (BOOL)writeData:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NWConnection *)self internalConnection];
  if (v7)
  {
    v9 = [v7 _createDispatchData];
  }

  else
  {
    v9 = 0;
  }

  if (v6 == &__block_literal_global_14824)
  {
    nw_connection_send(v8, v9, &__block_literal_global_44658, 1, &__block_literal_global_24512);
  }

  else
  {
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = __50__NWStreamConnection_writeData_completionHandler___block_invoke;
    completion[3] = &unk_1E6A39D90;
    v12 = v6;
    nw_connection_send(v8, v9, &__block_literal_global_44658, 1, completion);
  }

  return 1;
}

void __50__NWStreamConnection_writeData_completionHandler___block_invoke(uint64_t a1, nw_error_t error)
{
  if (error)
  {
    error = nw_error_copy_cf_error(error);
  }

  v3 = error;
  (*(*(a1 + 32) + 16))();
}

- (BOOL)readDataWithMinimumLength:(unint64_t)a3 maximumLength:(unint64_t)a4 completionHandler:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(NWConnection *)self internalConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__NWStreamConnection_readDataWithMinimumLength_maximumLength_completionHandler___block_invoke;
  v12[3] = &unk_1E6A39D68;
  v13 = v8;
  v10 = v8;
  nw_connection_receive_internal(v9, 0, v6, v5, v12);

  return 1;
}

void __80__NWStreamConnection_readDataWithMinimumLength_maximumLength_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  error = a5;
  v8 = a2;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  if (error)
  {
    v11 = nw_error_copy_cf_error(error);
    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (a4 && !v11)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:57 userInfo:0];
  }

LABEL_10:
  (*(*(a1 + 32) + 16))();
}

+ (id)connectionWithConnectedSocket:(int)a3
{
  v3 = [(NWConnection *)[NWStreamConnection alloc] initWithConnectedSocket:*&a3];

  return v3;
}

@end
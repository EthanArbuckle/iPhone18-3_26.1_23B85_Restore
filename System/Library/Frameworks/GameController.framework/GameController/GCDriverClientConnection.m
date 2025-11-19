@interface GCDriverClientConnection
@end

@implementation GCDriverClientConnection

id __63___GCDriverClientConnection_connectToDeviceService_withClient___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v5 = a1[4];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63___GCDriverClientConnection_connectToDeviceService_withClient___block_invoke_89;
  v12[3] = &unk_1E8419E30;
  v12[4] = &v13;
  v6 = [v5 synchronousRemoteProxyWithErrorHandler:v12];
  v7 = a1[5];
  v8 = a1[6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63___GCDriverClientConnection_connectToDeviceService_withClient___block_invoke_2;
  v11[3] = &unk_1E8419E58;
  v11[4] = &v19;
  v11[5] = &v13;
  ConnectToDriverService(v7, v6, v8, v11);
  *a3 = v14[5];
  v9 = v20[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __63___GCDriverClientConnection_connectToDeviceService_withClient___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __63___GCDriverClientConnection_connectToDeviceService_withClient___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63___GCDriverClientConnection_connectToDeviceService_withClient___block_invoke_4;
  v12[3] = &unk_1E8419EA8;
  v5 = v3;
  v13 = v5;
  v6 = [v4 remoteProxyWithErrorHandler:v12];
  v8 = a1[5];
  v7 = a1[6];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63___GCDriverClientConnection_connectToDeviceService_withClient___block_invoke_5;
  v10[3] = &unk_1E8419ED0;
  v11 = v5;
  v9 = v5;
  ConnectToDriverService(v8, v6, v7, v10);
}

uint64_t __63___GCDriverClientConnection_connectToDeviceService_withClient___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 succeedWithResult:a2];
  }

  else
  {
    return [v2 failWithError:?];
  }
}

@end
@interface GCBluetoothDeviceDisconnectionRequest
@end

@implementation GCBluetoothDeviceDisconnectionRequest

void __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _gc_log_bluetooth();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_cold_1();
  }
}

void __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_52(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = _gc_log_bluetooth();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_52_cold_1();
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      (*(v5 + 16))(v5, v3);
    }

    [*(a1 + 32) invalidate];
  }

  else
  {
    v6 = objc_opt_new();
    [v6 setDispatchQueue:*(a1 + 40)];
    [v6 setServiceFlags:0xFFFFFFFFLL];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [*(a1 + 32) discoveredDevices];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v12 btAddressData];
          v14 = [v13 isEqual:*(a1 + 48)];

          if (v14)
          {
            [v6 setPeerDevice:v12];
            goto LABEL_17;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_54;
    v17[3] = &unk_1E841A370;
    v18 = v6;
    v20 = *(a1 + 56);
    v19 = *(a1 + 32);
    v15 = v6;
    [v15 disconnectWithCompletion:v17];
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _gc_log_bluetooth();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_54_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_54_cold_2(a1, v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  [*(a1 + 32) invalidate];
  [*(a1 + 40) invalidate];
}

void __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  _os_log_error_impl(&dword_1D2CD5000, v0, OS_LOG_TYPE_ERROR, "CBDiscovery error: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_52_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  _os_log_error_impl(&dword_1D2CD5000, v0, OS_LOG_TYPE_ERROR, "CBDiscovery activation error: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_54_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) peerDevice];
  OUTLINED_FUNCTION_13();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1D2CD5000, a3, OS_LOG_TYPE_ERROR, "Request disconnection of %@ failed: %@", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_54_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) peerDevice];
  OUTLINED_FUNCTION_13();
  _os_log_debug_impl(&dword_1D2CD5000, a2, OS_LOG_TYPE_DEBUG, "Request disconnection of %@ success", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end
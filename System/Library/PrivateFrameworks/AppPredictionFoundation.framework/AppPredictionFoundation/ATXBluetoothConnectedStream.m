@interface ATXBluetoothConnectedStream
+ (int64_t)deviceTypeFromBiomeBluetoothDeviceType:(int)a3;
- (void)_enumerateEventsConnected:(BOOL)a3 startDate:(id)a4 endDate:(id)a5 filterBlock:(id)a6 limit:(unint64_t)a7 ascending:(BOOL)a8 block:(id)a9;
@end

@implementation ATXBluetoothConnectedStream

+ (int64_t)deviceTypeFromBiomeBluetoothDeviceType:(int)a3
{
  if (a3 > 0x32)
  {
    return 2;
  }

  else
  {
    return qword_22638AC80[a3];
  }
}

- (void)_enumerateEventsConnected:(BOOL)a3 startDate:(id)a4 endDate:(id)a5 filterBlock:(id)a6 limit:(unint64_t)a7 ascending:(BOOL)a8 block:(id)a9
{
  v9 = a8;
  v15 = a6;
  v16 = a9;
  v17 = a5;
  v18 = a4;
  v19 = objc_opt_new();
  v20 = !v9;
  v21 = [(ATXBluetoothConnectedStream *)self _bluetoothPublisherWithStartDate:v18 endDate:v17 limit:a7 shouldReverse:!v9];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __109__ATXBluetoothConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2;
  v26[3] = &unk_2785904D0;
  v30 = v20;
  v31 = a3;
  v26[4] = self;
  v27 = v19;
  v28 = v15;
  v29 = v16;
  v22 = v16;
  v23 = v15;
  v24 = v19;
  v25 = [v21 sinkWithCompletion:&__block_literal_global_11 shouldContinue:v26];
}

void __109__ATXBluetoothConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state])
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __109__ATXBluetoothConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_cold_1(v2, v3);
    }
  }
}

uint64_t __109__ATXBluetoothConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  v5 = *(a1 + 65);
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = [v3 eventBody];
  v9 = [v7 deviceTypeFromBiomeBluetoothDeviceType:{objc_msgSend(v8, "deviceType")}];

  if ((v9 - 5) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __109__ATXBluetoothConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2_cold_3(v3, v10);
    }

    goto LABEL_29;
  }

  v11 = [v3 eventBody];
  v12 = [v11 address];
  if (!v12)
  {

LABEL_10:
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __109__ATXBluetoothConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2_cold_2(v3, v10);
    }

    goto LABEL_29;
  }

  v13 = v12;
  v14 = [v3 eventBody];
  v15 = [v14 name];

  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = [v3 eventBody];
  v10 = [v16 address];

  v17 = [v3 eventBody];
  v18 = [v17 starting];

  if (v5 == v4)
  {
    if ((v18 & 1) == 0)
    {
LABEL_8:
      [*(a1 + 40) setObject:v3 forKeyedSubscript:v10];
      goto LABEL_29;
    }
  }

  else if (v18)
  {
    goto LABEL_8;
  }

  v19 = [*(a1 + 40) objectForKeyedSubscript:v10];
  v20 = v19;
  if (v3 && v19)
  {
    v21 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v20 timestamp];
    v22 = [v21 initWithTimeIntervalSinceReferenceDate:?];
    v23 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v3 timestamp];
    v24 = [v23 initWithTimeIntervalSinceReferenceDate:?];
    v25 = [ATXBluetoothConnectedEvent alloc];
    if (*(a1 + 64))
    {
      v26 = v24;
    }

    else
    {
      v26 = v22;
    }

    v37 = v26;
    v38 = v25;
    v39 = v24;
    v40 = v22;
    if (*(a1 + 64))
    {
      v27 = v22;
    }

    else
    {
      v27 = v24;
    }

    v36 = *(a1 + 65);
    v28 = [v20 eventBody];
    v29 = [v28 address];
    v30 = [v20 eventBody];
    v31 = [v30 name];
    v32 = [(ATXBluetoothConnectedEvent *)v38 initWithStartTime:v37 endTime:v27 connected:v36 deviceAddress:v29 deviceName:v31 deviceType:v9];

    [*(a1 + 40) setObject:0 forKeyedSubscript:v10];
    v33 = *(a1 + 48);
    if (!v33 || (*(v33 + 16))(v33, v32))
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v34 = __atxlog_handle_default();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      __112__ATXAudioRouteStream__enumerateAudioOutputEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2_cold_1(v20, v3, v34);
    }
  }

LABEL_29:
  return 1;
}

void __109__ATXBluetoothConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 136315394;
  v6 = "[ATXBluetoothConnectedStream _enumerateEventsConnected:startDate:endDate:filterBlock:limit:ascending:block:]_block_invoke";
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "%s: error fetching latest Device.Wireless.Bluetooth event from biome %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

void __109__ATXBluetoothConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2_cold_2(void *a1, NSObject *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [a1 eventBody];
  v5 = [v4 address];
  v6 = [a1 eventBody];
  v7 = [v6 name];
  v9 = 138412802;
  v10 = a1;
  v11 = 2112;
  v12 = v5;
  v13 = 2112;
  v14 = v7;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "Skipping event: %@ because address %@ or name %@ is nil", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __109__ATXBluetoothConnectedStream__enumerateEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2_cold_3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_226368000, a2, OS_LOG_TYPE_DEBUG, "Skipping event as deviceType not supported: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
@interface ValidationMetrics
+ (void)dispatchMetrics:(id)a3;
+ (void)sendSHA1CodeDirectoryMetricWithFilename:(id)a3 withSigningID:(id)a4 withCDHash:(id)a5 withTeamID:(id)a6 withBundleID:(id)a7 withVersion:(id)a8 withIsApple:(BOOL)a9 withSigningYear:(id)a10 withExecutableFormat:(id)a11 withHasRestrictedEntitlements:(BOOL)a12;
@end

@implementation ValidationMetrics

+ (void)dispatchMetrics:(id)a3
{
  v3 = a3;
  if (dispatchMetrics__onceToken != -1)
  {
    +[ValidationMetrics dispatchMetrics:];
  }

  if (dispatch_semaphore_wait(dispatchMetrics___metricsSemaphore, 0))
  {
    v4 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [ValidationMetrics dispatchMetrics:v4];
    }
  }

  else
  {
    v5 = dispatchMetrics___metricsQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__ValidationMetrics_dispatchMetrics___block_invoke_2;
    block[3] = &unk_278CBBAE0;
    v7 = v3;
    dispatch_async(v5, block);
    v4 = v7;
  }
}

void __37__ValidationMetrics_dispatchMetrics___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("amfid.validation.metrics", attr);
  v2 = dispatchMetrics___metricsQueue;
  dispatchMetrics___metricsQueue = v1;

  v3 = dispatch_semaphore_create(40);
  v4 = dispatchMetrics___metricsSemaphore;
  dispatchMetrics___metricsSemaphore = v3;
}

intptr_t __37__ValidationMetrics_dispatchMetrics___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = dispatchMetrics___metricsSemaphore;

  return dispatch_semaphore_signal(v1);
}

+ (void)sendSHA1CodeDirectoryMetricWithFilename:(id)a3 withSigningID:(id)a4 withCDHash:(id)a5 withTeamID:(id)a6 withBundleID:(id)a7 withVersion:(id)a8 withIsApple:(BOOL)a9 withSigningYear:(id)a10 withExecutableFormat:(id)a11 withHasRestrictedEntitlements:(BOOL)a12
{
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a10;
  v32 = a11;
  v17 = v32;
  v18 = v31;
  v19 = v30;
  v20 = v29;
  v21 = v28;
  v22 = v27;
  v23 = v26;
  v24 = v25;
  AnalyticsSendEventLazy();
}

id __201__ValidationMetrics_sendSHA1CodeDirectoryMetricWithFilename_withSigningID_withCDHash_withTeamID_withBundleID_withVersion_withIsApple_withSigningYear_withExecutableFormat_withHasRestrictedEntitlements___block_invoke(uint64_t a1)
{
  v30[10] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v28 = v2;
  v29[0] = @"filename";
  if (!v2)
  {
    v2 = [MEMORY[0x277CBEB68] null];
  }

  v25 = v2;
  v30[0] = v2;
  v29[1] = @"signing_identifier";
  v3 = *(a1 + 40);
  v27 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v24 = v3;
  v30[1] = v3;
  v29[2] = @"cdhash";
  v4 = *(a1 + 48);
  v26 = v4;
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v23 = v4;
  v30[2] = v4;
  v29[3] = @"team_identifier";
  v5 = *(a1 + 56);
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v22 = v6;
  v30[3] = v6;
  v29[4] = @"bundle_identifier";
  v7 = *(a1 + 64);
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v21 = v8;
  v30[4] = v8;
  v29[5] = @"version";
  v9 = *(a1 + 72);
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v20 = v10;
  v30[5] = v10;
  v29[6] = @"is_apple";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 96)];
  v30[6] = v11;
  v29[7] = @"signing_timestamp";
  v12 = *(a1 + 80);
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v30[7] = v13;
  v29[8] = @"executable_format";
  v14 = *(a1 + 88);
  v15 = v14;
  if (!v14)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v30[8] = v15;
  v29[9] = @"has_restricted_entitlements";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 97)];
  v30[9] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:10];

  if (v14)
  {
    if (v12)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (v12)
    {
      goto LABEL_19;
    }
  }

LABEL_19:
  if (v9)
  {
    if (v7)
    {
      goto LABEL_21;
    }

LABEL_34:

    if (v5)
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if (!v7)
  {
    goto LABEL_34;
  }

LABEL_21:
  if (v5)
  {
    goto LABEL_22;
  }

LABEL_35:

LABEL_22:
  if (!v26)
  {
  }

  if (!v27)
  {
  }

  if (!v28)
  {
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end
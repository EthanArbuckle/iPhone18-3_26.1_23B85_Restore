@interface AWUnitTestSampler
+ (id)sharedSampler;
- (AWUnitTestSampler)init;
- (id)_connect;
- (id)connect;
- (id)invokeSampler:(id)a3;
- (void)getStatsWithBlock:(id)a3;
- (void)resetStats;
- (void)setCarPlayConnected:(BOOL)a3;
- (void)setDisplayState:(BOOL)a3;
- (void)setPearlErrorState:(BOOL)a3;
- (void)setSampleState:(BOOL)a3;
- (void)setSampleState:(BOOL)a3 deliverEvent:(BOOL)a4;
- (void)setSmartCoverClosed:(BOOL)a3;
@end

@implementation AWUnitTestSampler

- (void)setPearlErrorState:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__AWUnitTestSampler_setPearlErrorState___block_invoke;
  v10[3] = &__block_descriptor_33_e38___NSError_16__0___AWUnitTestSampler__8l;
  v11 = a3;
  v4 = [(AWUnitTestSampler *)self invokeSampler:v10];
  if (v4 && currentLogLevel >= 3)
  {
    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = absTimeNS();
      if (v7 == -1)
      {
        v8 = INFINITY;
      }

      else
      {
        v8 = v7 / 1000000000.0;
      }

      v9 = "clear";
      *buf = 134218498;
      v13 = v8;
      if (v3)
      {
        v9 = "set";
      }

      v14 = 2080;
      v15 = v9;
      v16 = 2112;
      v17 = v4;
      _os_log_error_impl(&dword_1BB2EF000, v5, OS_LOG_TYPE_ERROR, "%13.5f: failed to %s error: %@", buf, 0x20u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

id __40__AWUnitTestSampler_setPearlErrorState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1630;
  v12 = __Block_byref_object_dispose__1631;
  v13 = 0;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__AWUnitTestSampler_setPearlErrorState___block_invoke_2;
  v7[3] = &unk_1E7F37D00;
  v7[4] = &v8;
  [v3 setPearlErrorState:v4 reply:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __40__AWUnitTestSampler_setPearlErrorState___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    __assert_rtn("[AWUnitTestSampler setPearlErrorState:]_block_invoke_2", "PearlUnitTestSupport.m", 286, "!error");
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)setCarPlayConnected:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__AWUnitTestSampler_setCarPlayConnected___block_invoke;
  v10[3] = &__block_descriptor_33_e38___NSError_16__0___AWUnitTestSampler__8l;
  v11 = a3;
  v4 = [(AWUnitTestSampler *)self invokeSampler:v10];
  if (v4 && currentLogLevel >= 3)
  {
    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = absTimeNS();
      if (v7 == -1)
      {
        v8 = INFINITY;
      }

      else
      {
        v8 = v7 / 1000000000.0;
      }

      v9 = "disconnected";
      *buf = 134218498;
      v13 = v8;
      if (v3)
      {
        v9 = "connected";
      }

      v14 = 2080;
      v15 = v9;
      v16 = 2112;
      v17 = v4;
      _os_log_error_impl(&dword_1BB2EF000, v5, OS_LOG_TYPE_ERROR, "%13.5f: failed to set CarPlay connected %s: %@", buf, 0x20u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

id __41__AWUnitTestSampler_setCarPlayConnected___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1630;
  v12 = __Block_byref_object_dispose__1631;
  v13 = 0;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__AWUnitTestSampler_setCarPlayConnected___block_invoke_2;
  v7[3] = &unk_1E7F37D00;
  v7[4] = &v8;
  [v3 setCarPlayConnected:v4 reply:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __41__AWUnitTestSampler_setCarPlayConnected___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    __assert_rtn("[AWUnitTestSampler setCarPlayConnected:]_block_invoke_2", "PearlUnitTestSupport.m", 262, "!error");
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)setSmartCoverClosed:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__AWUnitTestSampler_setSmartCoverClosed___block_invoke;
  v10[3] = &__block_descriptor_33_e38___NSError_16__0___AWUnitTestSampler__8l;
  v11 = a3;
  v4 = [(AWUnitTestSampler *)self invokeSampler:v10];
  if (v4 && currentLogLevel >= 3)
  {
    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = absTimeNS();
      if (v7 == -1)
      {
        v8 = INFINITY;
      }

      else
      {
        v8 = v7 / 1000000000.0;
      }

      v9 = "open";
      *buf = 134218498;
      v13 = v8;
      if (v3)
      {
        v9 = "closed";
      }

      v14 = 2080;
      v15 = v9;
      v16 = 2112;
      v17 = v4;
      _os_log_error_impl(&dword_1BB2EF000, v5, OS_LOG_TYPE_ERROR, "%13.5f: failed to set smart cover state %s: %@", buf, 0x20u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

id __41__AWUnitTestSampler_setSmartCoverClosed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1630;
  v12 = __Block_byref_object_dispose__1631;
  v13 = 0;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__AWUnitTestSampler_setSmartCoverClosed___block_invoke_2;
  v7[3] = &unk_1E7F37D00;
  v7[4] = &v8;
  [v3 setSmartCoverClosed:v4 reply:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __41__AWUnitTestSampler_setSmartCoverClosed___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    __assert_rtn("[AWUnitTestSampler setSmartCoverClosed:]_block_invoke_2", "PearlUnitTestSupport.m", 231, "!error");
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)setSampleState:(BOOL)a3 deliverEvent:(BOOL)a4
{
  v4 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__AWUnitTestSampler_setSampleState_deliverEvent___block_invoke;
  v11[3] = &__block_descriptor_34_e38___NSError_16__0___AWUnitTestSampler__8l;
  v12 = a3;
  v13 = a4;
  v5 = [(AWUnitTestSampler *)self invokeSampler:v11];
  if (v5 && currentLogLevel >= 3)
  {
    v6 = _AALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = absTimeNS();
      if (v8 == -1)
      {
        v9 = INFINITY;
      }

      else
      {
        v9 = v8 / 1000000000.0;
      }

      v10 = "absent";
      *buf = 134218498;
      v15 = v9;
      if (v4)
      {
        v10 = "present";
      }

      v16 = 2080;
      v17 = v10;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_1BB2EF000, v6, OS_LOG_TYPE_ERROR, "%13.5f: failed to set sample state %s: %@", buf, 0x20u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

id __49__AWUnitTestSampler_setSampleState_deliverEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1630;
  v13 = __Block_byref_object_dispose__1631;
  v14 = 0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__AWUnitTestSampler_setSampleState_deliverEvent___block_invoke_2;
  v8[3] = &unk_1E7F37D00;
  v8[4] = &v9;
  [v3 setSampleState:v4 deliverEvent:v5 reply:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __49__AWUnitTestSampler_setSampleState_deliverEvent___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    __assert_rtn("[AWUnitTestSampler setSampleState:deliverEvent:]_block_invoke_2", "PearlUnitTestSupport.m", 205, "!error");
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)setSampleState:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__AWUnitTestSampler_setSampleState___block_invoke;
  v10[3] = &__block_descriptor_33_e38___NSError_16__0___AWUnitTestSampler__8l;
  v11 = a3;
  v4 = [(AWUnitTestSampler *)self invokeSampler:v10];
  if (v4 && currentLogLevel >= 3)
  {
    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = absTimeNS();
      if (v7 == -1)
      {
        v8 = INFINITY;
      }

      else
      {
        v8 = v7 / 1000000000.0;
      }

      v9 = "absent";
      *buf = 134218498;
      v13 = v8;
      if (v3)
      {
        v9 = "present";
      }

      v14 = 2080;
      v15 = v9;
      v16 = 2112;
      v17 = v4;
      _os_log_error_impl(&dword_1BB2EF000, v5, OS_LOG_TYPE_ERROR, "%13.5f: failed to set sample state %s: %@", buf, 0x20u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

id __36__AWUnitTestSampler_setSampleState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1630;
  v12 = __Block_byref_object_dispose__1631;
  v13 = 0;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__AWUnitTestSampler_setSampleState___block_invoke_2;
  v7[3] = &unk_1E7F37D00;
  v7[4] = &v8;
  [v3 setSampleState:v4 reply:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __36__AWUnitTestSampler_setSampleState___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    __assert_rtn("[AWUnitTestSampler setSampleState:]_block_invoke_2", "PearlUnitTestSupport.m", 178, "!error");
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)setDisplayState:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__AWUnitTestSampler_setDisplayState___block_invoke;
  v10[3] = &__block_descriptor_33_e38___NSError_16__0___AWUnitTestSampler__8l;
  v11 = a3;
  v4 = [(AWUnitTestSampler *)self invokeSampler:v10];
  if (v4 && currentLogLevel >= 3)
  {
    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = absTimeNS();
      if (v7 == -1)
      {
        v8 = INFINITY;
      }

      else
      {
        v8 = v7 / 1000000000.0;
      }

      v9 = "off";
      *buf = 134218498;
      v13 = v8;
      if (v3)
      {
        v9 = "on";
      }

      v14 = 2080;
      v15 = v9;
      v16 = 2112;
      v17 = v4;
      _os_log_error_impl(&dword_1BB2EF000, v5, OS_LOG_TYPE_ERROR, "%13.5f: failed to set display state %s: %@", buf, 0x20u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

id __37__AWUnitTestSampler_setDisplayState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1630;
  v12 = __Block_byref_object_dispose__1631;
  v13 = 0;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__AWUnitTestSampler_setDisplayState___block_invoke_2;
  v7[3] = &unk_1E7F37D00;
  v7[4] = &v8;
  [v3 setDisplayState:v4 reply:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __37__AWUnitTestSampler_setDisplayState___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    __assert_rtn("[AWUnitTestSampler setDisplayState:]_block_invoke_2", "PearlUnitTestSupport.m", 147, "!error");
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)resetStats
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(AWUnitTestSampler *)self invokeSampler:&__block_literal_global_1646];
  if (v2)
  {
    v3 = currentLogLevel < 3;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = _AALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = absTimeNS();
      if (v6 == -1)
      {
        v7 = INFINITY;
      }

      else
      {
        v7 = v6 / 1000000000.0;
      }

      v8 = 134218242;
      v9 = v7;
      v10 = 2112;
      v11 = v2;
      _os_log_error_impl(&dword_1BB2EF000, v4, OS_LOG_TYPE_ERROR, "%13.5f: failed to reset unit test sampler stats: %@", &v8, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)getStatsWithBlock:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3810000000;
  v15 = &unk_1BB3357FB;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __39__AWUnitTestSampler_getStatsWithBlock___block_invoke;
  v11[3] = &unk_1E7F37A70;
  v11[4] = &v12;
  v5 = [(AWUnitTestSampler *)self invokeSampler:v11];
  if (v5 && currentLogLevel >= 3)
  {
    v6 = _AALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = absTimeNS();
      if (v9 == -1)
      {
        v10 = INFINITY;
      }

      else
      {
        v10 = v9 / 1000000000.0;
      }

      *buf = 134218242;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_error_impl(&dword_1BB2EF000, v6, OS_LOG_TYPE_ERROR, "%13.5f: failed to get unit test sampler stats: %@", buf, 0x16u);
    }
  }

  v7 = v4[2];
  *buf = *(v13 + 2);
  *&buf[16] = v13[6];
  v7(v4, buf);

  _Block_object_dispose(&v12, 8);
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __39__AWUnitTestSampler_getStatsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__AWUnitTestSampler_getStatsWithBlock___block_invoke_2;
  v3[3] = &unk_1E7F37A48;
  v3[4] = *(a1 + 32);
  [a2 getStatsWithBlock:v3];
  return 0;
}

__n128 __39__AWUnitTestSampler_getStatsWithBlock___block_invoke_2(uint64_t a1, __n128 *a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *a2;
  v2[3].n128_u64[0] = a2[1].n128_u64[0];
  v2[2] = result;
  return result;
}

- (id)invokeSampler:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1630;
  v16 = __Block_byref_object_dispose__1631;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AWUnitTestSampler_invokeSampler___block_invoke;
  block[3] = &unk_1E7F37A20;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __35__AWUnitTestSampler_invokeSampler___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__1630;
  v40 = __Block_byref_object_dispose__1631;
  v41 = 0;
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    goto LABEL_33;
  }

  v3 = *MEMORY[0x1E696A250];
  v4 = MEMORY[0x1E69E9820];
  v5 = &unk_1E7F37D00;
  v6 = 1;
  while (1)
  {
    v35[0] = v4;
    v35[1] = 3221225472;
    v35[2] = __35__AWUnitTestSampler_invokeSampler___block_invoke_2;
    v35[3] = v5;
    v35[4] = &v36;
    v7 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v35];
    v8 = (*(*(a1 + 40) + 16))();
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      break;
    }

    v11 = v37[5];
    if (!v11)
    {
      break;
    }

    if (currentLogLevel >= 3)
    {
      v12 = _AALog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v23 = absTimeNS();
        if (v23 == -1)
        {
          v24 = INFINITY;
        }

        else
        {
          v24 = v23 / 1000000000.0;
        }

        v25 = v37[5];
        *buf = 134218242;
        v45 = v24;
        v46 = 2112;
        *v47 = v25;
        _os_log_error_impl(&dword_1BB2EF000, v12, OS_LOG_TYPE_ERROR, "%13.5f: XPC proxy error: %@", buf, 0x16u);
      }

      v11 = v37[5];
    }

    v13 = [v11 domain];
    if (v13 != v3 || [v37[5] code] != 4099)
    {
LABEL_34:

      break;
    }

    if ((v6 & 1) == 0)
    {
      break;
    }

    v14 = [*(a1 + 32) connect];
    if (currentLogLevel < 7)
    {
      goto LABEL_27;
    }

    v15 = _AALog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v16 = v5;
    v17 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Unit Testing/PearlUnitTestSupport.m";
    for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/Unit Testing/PearlUnitTestSupport.m"; *(i - 1) == 47; ++i)
    {
      v17 = i;
LABEL_18:
      ;
    }

    if (*(i - 1))
    {
      goto LABEL_18;
    }

    v19 = absTimeNS();
    if (v19 == -1)
    {
      v20 = INFINITY;
      if (!v14)
      {
        goto LABEL_23;
      }

LABEL_21:
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed: %@", v14];
      v21 = v34;
    }

    else
    {
      v20 = v19 / 1000000000.0;
      if (v14)
      {
        goto LABEL_21;
      }

LABEL_23:
      v21 = @"succeeded";
    }

    *buf = 136316162;
    v45 = *&v17;
    v46 = 1024;
    *v47 = 91;
    *&v47[4] = 2048;
    *&v47[6] = v20;
    v48 = 1024;
    v49 = 1;
    v50 = 2112;
    v51 = v21;
    _os_log_impl(&dword_1BB2EF000, v15, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: XPC proxy invalid: reconnect %u %@", buf, 0x2Cu);
    v5 = v16;
    if (v14)
    {
    }

LABEL_26:

LABEL_27:
    v22 = v37[5];
    v37[5] = 0;

    v6 = 0;
    v2 = *(*(a1 + 32) + 8);
    if (!v2)
    {
LABEL_33:
      v26 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A578];
      v43 = @" Not connected to server";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v27 = [v26 errorWithDomain:*MEMORY[0x1E696A798] code:57 userInfo:v7];
      v28 = *(*(a1 + 48) + 8);
      v13 = *(v28 + 40);
      *(v28 + 40) = v27;
      goto LABEL_34;
    }
  }

  v29 = *(*(a1 + 48) + 8);
  v31 = *(v29 + 40);
  v30 = (v29 + 40);
  if (!v31)
  {
    v32 = v37[5];
    if (v32)
    {
      objc_storeStrong(v30, v32);
    }
  }

  _Block_object_dispose(&v36, 8);

  v33 = *MEMORY[0x1E69E9840];
}

- (id)connect
{
  dispatch_assert_queue_V2(self->_queue);

  return [(AWUnitTestSampler *)self _connect];
}

- (id)_connect
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__AWUnitTestSampler__connect__block_invoke;
  v6[3] = &unk_1E7F379F8;
  v6[4] = self;
  v2 = self;
  v3 = MEMORY[0x1BFB0D030](v6);
  v4 = [AWServiceManager invokeWithService:v3];

  return v4;
}

uint64_t __29__AWUnitTestSampler__connect__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __29__AWUnitTestSampler__connect__block_invoke_2;
  v3[3] = &unk_1E7F379D0;
  v3[4] = *(a1 + 32);
  [a2 getUnitTestSamplerWithReply:v3];
  return 0;
}

- (AWUnitTestSampler)init
{
  v6.receiver = self;
  v6.super_class = AWUnitTestSampler;
  v2 = [(AWUnitTestSampler *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.AttentionAwareness.AWUnitTestSampler", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

+ (id)sharedSampler
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__AWUnitTestSampler_sharedSampler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedSampler_onceToken != -1)
  {
    dispatch_once(&sharedSampler_onceToken, block);
  }

  v2 = sharedSampler_sampler;

  return v2;
}

void __34__AWUnitTestSampler_sharedSampler__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(AWUnitTestSampler);
  v3 = sharedSampler_sampler;
  sharedSampler_sampler = v2;

  v4 = [sharedSampler_sampler _connect];
  if (v4)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E696A790];
    v10 = v4;
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v5 raise:v6 format:{@"%@ sharedSampler not available", v9}];

    v4 = v10;
  }
}

@end
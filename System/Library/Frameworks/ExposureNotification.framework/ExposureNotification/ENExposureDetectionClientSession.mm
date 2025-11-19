@interface ENExposureDetectionClientSession
- (BOOL)_runActivateStart;
- (BOOL)_runAddFile;
- (BOOL)_runFinishStart;
- (ENExposureDetectionClientSession)init;
- (ENExposureDetectionClientSession)initWithXPCObject:(id)a3 error:(id *)a4;
- (void)_reportError:(id)a3 where:(const char *)a4;
- (void)_run;
- (void)_runAddFile;
- (void)_runDetectionDone;
- (void)activate;
- (void)encodeWithXPCObject:(id)a3;
- (void)invalidate;
@end

@implementation ENExposureDetectionClientSession

- (ENExposureDetectionClientSession)init
{
  v6.receiver = self;
  v6.super_class = ENExposureDetectionClientSession;
  v2 = [(ENExposureDetectionClientSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (ENExposureDetectionClientSession)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ENExposureDetectionClientSession *)self init];
  if (!v7)
  {
    if (a4)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (MEMORY[0x2383EE9C0](v6) != MEMORY[0x277D86468])
  {
    if (a4)
    {
LABEL_8:
      ENErrorF(2);
      *a4 = v8 = 0;
      goto LABEL_4;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_4;
  }

  [(ENExposureDetectionClientSession *)v6 initWithXPCObject:a4 error:v7, &v10];
  v8 = v10;
LABEL_4:

  return v8;
}

- (void)encodeWithXPCObject:(id)a3
{
  configuration = self->_configuration;
  if (configuration)
  {
    v5 = configuration;
    v6 = a3;
    value = xpc_dictionary_create(0, 0, 0);
    [(ENExposureConfiguration *)v5 encodeWithXPCObject:value];

    xpc_dictionary_set_value(v6, "expC", value);
  }
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ENExposureDetectionClientSession_activate__block_invoke;
  block[3] = &unk_278A4B058;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __44__ENExposureDetectionClientSession_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_ENExposureDetection <= 30 && (gLogCategory_ENExposureDetection != -1 || _LogCategory_Initialize()))
  {
    __44__ENExposureDetectionClientSession_activate__block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ENExposureDetectionClientSession_invalidate__block_invoke;
  block[3] = &unk_278A4B058;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __46__ENExposureDetectionClientSession_invalidate__block_invoke(uint64_t result)
{
  v1 = result;
  if (gLogCategory_ENExposureDetection <= 30)
  {
    if (gLogCategory_ENExposureDetection != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __46__ENExposureDetectionClientSession_invalidate__block_invoke_cold_1();
    }
  }

  v2 = *(v1 + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    *(v2 + 8) = 1;
  }

  return result;
}

- (void)_reportError:(id)a3 where:(const char *)a4
{
  v7 = a3;
  if (gLogCategory__ENExposureDetection <= 90 && (gLogCategory__ENExposureDetection != -1 || _LogCategory_Initialize()))
  {
    [ENExposureDetectionClientSession _reportError:where:];
  }

  self->_runState = 3;
  v5 = MEMORY[0x2383EE560](self->_completionHandler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  if (v5)
  {
    (v5)[2](v5, 0, v7);
  }
}

- (BOOL)_runActivateStart
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mainFileURLs = self->_mainFileURLs;
  self->_mainFileURLs = v3;

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = self->_diagnosisKeyURLs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v53;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v52 + 1) + 8 * i);
        v11 = [v10 pathExtension];
        v12 = [v11 caseInsensitiveCompare:@"sig"];

        if (v12)
        {
          [(NSMutableArray *)self->_mainFileURLs addObject:v10];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v7);
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  signatureURLMap = self->_signatureURLMap;
  self->_signatureURLMap = v13;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = self->_diagnosisKeyURLs;
  v15 = [(NSArray *)obj countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v49;
    v42 = self;
    v39 = *v49;
    do
    {
      v18 = 0;
      v40 = v16;
      do
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v48 + 1) + 8 * v18);
        v20 = [v19 pathExtension];
        v21 = [v20 caseInsensitiveCompare:@"sig"];

        if (!v21)
        {
          v22 = [v19 URLByDeletingPathExtension];
          v23 = [v22 absoluteString];

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v24 = self->_mainFileURLs;
          v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v44 objects:v56 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v45;
            while (2)
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v45 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v44 + 1) + 8 * j);
                v30 = [v29 URLByDeletingPathExtension];
                v31 = [v30 absoluteString];

                if (![v31 caseInsensitiveCompare:v23])
                {
                  [(NSMutableDictionary *)v42->_signatureURLMap setObject:v19 forKeyedSubscript:v29];

                  goto LABEL_26;
                }
              }

              v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v44 objects:v56 count:16];
              if (v26)
              {
                continue;
              }

              break;
            }
          }

LABEL_26:

          self = v42;
          v17 = v39;
          v16 = v40;
        }

        ++v18;
      }

      while (v18 != v16);
      v16 = [(NSArray *)obj countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v16);
  }

  self->_mainFileIndex = 0;
  v32 = [(NSMutableArray *)self->_mainFileURLs count];
  self->_mainFileCount = v32;
  if (gLogCategory_ENExposureDetection <= 30)
  {
    mainFileCount = v32;
    if (gLogCategory_ENExposureDetection == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_33;
      }

      mainFileCount = self->_mainFileCount;
    }

    v37 = mainFileCount;
    v38 = [(NSMutableDictionary *)self->_signatureURLMap count];
    LogPrintF_safe();
  }

LABEL_33:
  self->_guardActivateDone = 0;
  manager = self->_manager;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __53__ENExposureDetectionClientSession__runActivateStart__block_invoke;
  v43[3] = &unk_278A4B210;
  v43[4] = self;
  [(ENManager *)manager exposureDetectionFileActivate:self completion:v43, v37, v38];
  v35 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __53__ENExposureDetectionClientSession__runActivateStart__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 _reportError:a2 where:"Activate"];
  }

  v3[10] = 1;
  return [*(a1 + 32) _run];
}

- (BOOL)_runAddFile
{
  p_mainFileIndex = &self->_mainFileIndex;
  mainFileIndex = self->_mainFileIndex;
  mainFileURLs = self->_mainFileURLs;
  *p_mainFileIndex = mainFileIndex + 1;
  v6 = [(NSMutableArray *)mainFileURLs objectAtIndexedSubscript:?];
  v7 = [p_mainFileIndex[2] objectForKeyedSubscript:v6];
  if (gLogCategory_ENExposureDetection <= 30 && (gLogCategory_ENExposureDetection != -1 || _LogCategory_Initialize()))
  {
    [(ENExposureDetectionClientSession *)p_mainFileIndex _runAddFile:v6];
  }

  self->_guardAddFileDone = 0;
  manager = self->_manager;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__ENExposureDetectionClientSession__runAddFile__block_invoke;
  v10[3] = &unk_278A4B210;
  v10[4] = self;
  [(ENManager *)manager exposureDetectionFileAdd:v6 signatureURL:v7 completion:v10];

  return 1;
}

uint64_t __47__ENExposureDetectionClientSession__runAddFile__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 _reportError:a2 where:"AddFile"];
  }

  v3[11] = 1;
  return [*(a1 + 32) _run];
}

- (BOOL)_runFinishStart
{
  self->_guardFinishDone = 0;
  manager = self->_manager;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__ENExposureDetectionClientSession__runFinishStart__block_invoke;
  v4[3] = &unk_278A4B238;
  v4[4] = self;
  [(ENManager *)manager exposureDetectionFileFinishWithCompletion:v4];
  return 1;
}

void __51__ENExposureDetectionClientSession__runFinishStart__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v6 = *(a1 + 32);
  if (a3)
  {
    [v6 _reportError:a3 where:"Finish"];
  }

  else
  {
    objc_storeStrong(v6 + 3, a2);
    *(*(a1 + 32) + 12) = 1;
    [*(a1 + 32) _run];
  }
}

- (void)_runDetectionDone
{
  v5 = MEMORY[0x2383EE560](self->_completionHandler, a2);
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  v4 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, self->_summary, 0);
    v4 = v5;
  }
}

- (void)_run
{
  if (!self->_invalidateCalled)
  {
    while (1)
    {
      runState = self->_runState;
      v4 = 10;
      switch(runState)
      {
        case 0:
          goto LABEL_19;
        case 10:
          v5 = [(ENExposureDetectionClientSession *)self _runActivateStart];
          goto LABEL_15;
        case 11:
          if (self->_guardActivateDone)
          {
            v4 = 12;
            goto LABEL_19;
          }

          v4 = 11;
          break;
        case 12:
          goto LABEL_13;
        case 13:
          if (self->_mainFileIndex >= self->_mainFileCount)
          {
            v4 = 15;
            goto LABEL_19;
          }

          v5 = [(ENExposureDetectionClientSession *)self _runAddFile];
LABEL_15:
          v4 = self->_runState;
          if (v5)
          {
            ++v4;
            goto LABEL_19;
          }

          break;
        case 14:
          if (self->_guardAddFileDone)
          {
LABEL_13:
            v4 = 13;
            goto LABEL_19;
          }

          v4 = 14;
          break;
        case 15:
          v4 = 16;
          goto LABEL_19;
        case 16:
          v5 = [(ENExposureDetectionClientSession *)self _runFinishStart];
          goto LABEL_15;
        case 17:
          if (self->_guardFinishDone)
          {
            v4 = 18;
LABEL_19:
            self->_runState = v4;
          }

          else
          {
            v4 = 17;
          }

          break;
        case 18:
          [(ENExposureDetectionClientSession *)self _runDetectionDone];
          v4 = 4;
          goto LABEL_19;
        default:
          return;
      }

      if (v4 == runState)
      {
        break;
      }

      if (gLogCategory_ENExposureDetection <= 30 && (gLogCategory_ENExposureDetection != -1 || _LogCategory_Initialize()))
      {
        if (runState <= 0x12)
        {
          v6 = off_278A4B310[runState];
        }

        v7 = self->_runState;
        if (v7 <= 0x12)
        {
          v8 = off_278A4B310[v7];
        }

        LogPrintF_safe();
      }
    }
  }
}

- (void)initWithXPCObject:(void *)a3 error:(ENExposureConfiguration *)a4 .cold.1(void *a1, uint64_t a2, void *a3, ENExposureConfiguration **a4)
{
  v9 = xpc_dictionary_get_value(a1, "expC");
  if (v9)
  {
    v7 = [[ENExposureConfiguration alloc] initWithXPCObject:v9 error:a2];
    if (!v7)
    {
      goto LABEL_5;
    }

    v8 = a3[9];
    a3[9] = v7;
  }

  v7 = a3;
LABEL_5:
  *a4 = v7;
}

- (void)_reportError:where:.cold.1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

- (void)_runAddFile
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v8 = [a3 lastPathComponent];
  v7 = [a4 lastPathComponent];
  LogPrintF_safe();
}

@end
@interface ENFileSession
- (BOOL)_activateHandleReply:(id)a3 error:(id *)a4;
- (BOOL)_activateSyncWithRequest:(id)a3 error:(id *)a4;
- (BOOL)activateWithArchivePath:(id)a3 error:(id *)a4;
- (BOOL)activateWithFilePath:(id)a3 error:(id *)a4;
- (ENFileSession)initWithServiceClient:(id)a3;
- (NSDate)endDate;
- (NSDate)startDate;
- (id)_activateCreateXPCRequestWithFD:(int)a3 archive:(BOOL)a4 signatureData:(id)a5 error:(id *)a6;
- (id)_readTEKBatchHandleReply:(id)a3 error:(id *)a4;
- (id)readTEKBatchAndReturnError:(id *)a3;
- (id)verifySignatureWithPublicKey:(__SecKey *)a3 error:(id *)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation ENFileSession

- (ENFileSession)initWithServiceClient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ENFileSession;
  v6 = [(ENFileSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceClient, a3);
    v7->_batchSize = 256;
  }

  return v7;
}

- (void)dealloc
{
  if (self->_activateSucceeded && !self->_invalidated)
  {
    v2 = [ENExposureDetectionSession dealloc];
    [(ENFileSession *)v2 startDate];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = ENFileSession;
    [(ENFileSession *)&v4 dealloc];
  }
}

- (NSDate)startDate
{
  v2 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"startTS"];
  v3 = v2;
  if (v2)
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v2, "unsignedLongValue")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)endDate
{
  v2 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"endTS"];
  v3 = v2;
  if (v2)
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v2, "unsignedLongValue")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __27__ENFileSession_invalidate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (gLogCategory__ENFileSession <= 90)
    {
      v6 = v3;
      if (gLogCategory__ENFileSession != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
      {
        __27__ENFileSession_invalidate__block_invoke_cold_1(a1);
        v4 = v6;
      }
    }
  }
}

void __27__ENFileSession_invalidate__block_invoke_2(uint64_t a1)
{
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(*(a1 + 32) + 16))();
}

- (BOOL)activateWithFilePath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 stringByDeletingPathExtension];
  v8 = [v7 stringByAppendingPathExtension:@"sig"];

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v9 fileExistsAtPath:v8];

  if (v10)
  {
    v17 = 0;
    v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v8 options:0 error:&v17];
    v12 = v17;
    v13 = v12;
    if (!v11)
    {
      if (a4)
      {
        ENNestedErrorF(v12, 1);
        *a4 = v15 = 0;
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_8;
    }

    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(ENFileSession *)self _activateCreateXPCRequestWithPath:v6 archive:0 signatureData:v13 error:a4];
  if (v14)
  {
    v15 = [(ENFileSession *)self _activateSyncWithRequest:v14 error:a4];
  }

  else
  {
    v15 = 0;
  }

LABEL_8:
  return v15;
}

- (id)_activateCreateXPCRequestWithFD:(int)a3 archive:(BOOL)a4 signatureData:(id)a5 error:(id *)a6
{
  v7 = a4;
  v10 = a5;
  v11 = xpc_fd_create(a3);
  if (v11)
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    v13 = v12;
    if (v7)
    {
      v14 = 10;
    }

    else
    {
      v14 = 11;
    }

    xpc_dictionary_set_int64(v12, "smTyp", v14);
    xpc_dictionary_set_uint64(v13, "btSz", self->_batchSize);
    xpc_dictionary_set_value(v13, "fd", v11);
    xpc_dictionary_set_uint64(v13, "fileSF", self->_flags);
    if (v10)
    {
      v15 = v10;
      v16 = v13;
      v17 = v10;
      v18 = [v17 bytes];
      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = "";
      }

      v20 = [v17 length];

      xpc_dictionary_set_data(v16, "sigD", v19, v20);
    }

    if ((a3 & 0x80000000) == 0)
    {
      close(a3);
    }
  }

  else if (a6)
  {
    ENErrorF(1);
    *a6 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_activateSyncWithRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self->_activateCalled)
  {
    if (a4)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (self->_invalidated)
  {
    if (a4)
    {
LABEL_10:
      ENErrorF(10);
      *a4 = v10 = 0;
      goto LABEL_6;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_6;
  }

  v7 = [(ENXPCServiceClient *)self->_serviceClient getXPCConnectionAndReturnError:a4];
  v8 = v7;
  if (v7)
  {
    self->_activateCalled = 1;
    v9 = xpc_connection_send_message_with_reply_sync(v7, v6);
    v10 = [(ENFileSession *)self _activateHandleReply:v9 error:a4];
  }

  else
  {
    v10 = 0;
  }

LABEL_6:
  return v10;
}

- (BOOL)_activateHandleReply:(id)a3 error:(id *)a4
{
  v5 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = CUXPCDecodeNSErrorIfNeeded();
  v6 = v10[5];
  if (v6)
  {
    if (a4)
    {
      *a4 = v6;
    }
  }

  else
  {
    v7 = xpc_dictionary_get_value(v5, "meta");
    if (v7)
    {
      if ((CUXPCDecodeNSData() & 1) != 0 && a4)
      {
        *a4 = ENErrorF(16);
      }
    }

    else if (a4)
    {
      *a4 = ENErrorF(16);
    }
  }

  _Block_object_dispose(&v9, 8);

  return 0;
}

BOOL __44__ENFileSession__activateHandleReply_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x2383EE9C0]() == MEMORY[0x277D86468])
  {
    v5 = [ENSignature alloc];
    v6 = *(*(a1 + 40) + 8);
    obj = *(v6 + 40);
    v7 = [(ENSignature *)v5 initWithXPCObject:v4 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    v8 = v7 != 0;
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    else
    {
      __44__ENFileSession__activateHandleReply_error___block_invoke_cold_2(a1 + 40);
    }
  }

  else
  {
    __44__ENFileSession__activateHandleReply_error___block_invoke_cold_1();
    v8 = 0;
  }

  return v8;
}

- (id)readTEKBatchAndReturnError:(id *)a3
{
  if (self->_activateSucceeded)
  {
    if (!self->_invalidated)
    {
      [(ENFileSession *)&self->super.isa readTEKBatchAndReturnError:a3, &v8];
      v4 = v8;
      goto LABEL_4;
    }

    if (a3)
    {
      goto LABEL_10;
    }
  }

  else if (a3)
  {
LABEL_10:
    v6 = ENErrorF(10);
    v7 = v6;
    v4 = 0;
    *a3 = v6;
    goto LABEL_4;
  }

  v4 = 0;
LABEL_4:

  return v4;
}

- (id)_readTEKBatchHandleReply:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = CUXPCDecodeNSErrorIfNeeded();
  v7 = v17[5];
  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = xpc_dictionary_get_array(v6, "tekA");
    v10 = v9;
    if (v9)
    {
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __48__ENFileSession__readTEKBatchHandleReply_error___block_invoke;
      applier[3] = &unk_278A4B1E8;
      applier[4] = v8;
      applier[5] = &v16;
      xpc_array_apply(v9, applier);
    }

    v11 = v17[5];
    if (v11)
    {
      if (a4)
      {
        v13 = 0;
        *a4 = v11;
        goto LABEL_9;
      }
    }

    else
    {
      v22 = 0;
      v12 = CUXPCDecodeUInt64RangedEx();
      if (v12 == 6)
      {
        self->_invalidKeyCount = v22;
LABEL_8:
        v13 = v8;
LABEL_9:

        goto LABEL_10;
      }

      if (v12 != 5)
      {
        goto LABEL_8;
      }
    }

    v13 = 0;
    goto LABEL_9;
  }

  v13 = 0;
  if (a4)
  {
    *a4 = v7;
  }

LABEL_10:
  _Block_object_dispose(&v16, 8);

  return v13;
}

BOOL __48__ENFileSession__readTEKBatchHandleReply_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x2383EE9C0]() == MEMORY[0x277D86468])
  {
    v5 = [ENTemporaryExposureKey alloc];
    v6 = *(*(a1 + 40) + 8);
    obj = *(v6 + 40);
    v7 = [(ENTemporaryExposureKey *)v5 initWithXPCObject:v4 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    v8 = v7 != 0;
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    else
    {
      __48__ENFileSession__readTEKBatchHandleReply_error___block_invoke_cold_2(a1 + 40);
    }
  }

  else
  {
    __48__ENFileSession__readTEKBatchHandleReply_error___block_invoke_cold_1();
    v8 = 0;
  }

  return v8;
}

- (id)verifySignatureWithPublicKey:(__SecKey *)a3 error:(id *)a4
{
  v43 = *MEMORY[0x277D85DE8];
  if (!self->_activateSucceeded)
  {
    if (!a4)
    {
      goto LABEL_47;
    }

LABEL_43:
    v33 = 10;
LABEL_46:
    ENErrorF(v33);
    *a4 = v30 = 0;
    goto LABEL_37;
  }

  if (self->_invalidated)
  {
    if (!a4)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

  sha256Data = self->_sha256Data;
  if (sha256Data)
  {
    v7 = self->_signatures;
    v8 = v7;
    if (v7)
    {
      v9 = [(NSArray *)v7 firstObject];

      if (v9)
      {
        v34 = a4;
        v35 = v8;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v10 = v8;
        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *MEMORY[0x277CDC2B8];
          v14 = *v39;
          v15 = *MEMORY[0x277CCA590];
          do
          {
            v16 = 0;
            v36 = v12;
            do
            {
              if (*v39 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v17 = *(*(&v38 + 1) + 8 * v16);
              v18 = [v17 signatureData];

              if (v18)
              {
                error = 0;
                if (SecKeyVerifySignature(a3, v13, sha256Data, v18, &error))
                {
                  v30 = v17;

                  goto LABEL_35;
                }

                v19 = error;
                if (error)
                {
                  v20 = [(__CFError *)error domain];
                  if ([v20 isEqualToString:v15])
                  {
                    v21 = v14;
                    v22 = v13;
                    v23 = sha256Data;
                    v24 = v10;
                    v25 = a3;
                    v26 = v15;
                    v27 = [(__CFError *)v19 code];

                    v28 = v27 == -67808;
                    v15 = v26;
                    a3 = v25;
                    v10 = v24;
                    sha256Data = v23;
                    v13 = v22;
                    v14 = v21;
                    v12 = v36;
                    if (!v28)
                    {
LABEL_23:
                      if (gLogCategory__ENFileSession <= 90 && (gLogCategory__ENFileSession != -1 || _LogCategory_Initialize()))
                      {
                        [ENFileSession verifySignatureWithPublicKey:error:];
                      }
                    }

                    goto LABEL_27;
                  }

                  goto LABEL_23;
                }
              }

              else if (gLogCategory__ENFileSession <= 90 && (gLogCategory__ENFileSession != -1 || _LogCategory_Initialize()))
              {
                [ENFileSession verifySignatureWithPublicKey:v17 error:?];
              }

LABEL_27:
              ++v16;
            }

            while (v12 != v16);
            v29 = [(NSArray *)v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
            v12 = v29;
          }

          while (v29);
        }

        if (v34)
        {
          ENErrorF(2);
          *v34 = v30 = 0;
        }

        else
        {
          v30 = 0;
        }

LABEL_35:
        v8 = v35;
        goto LABEL_36;
      }

      if (a4)
      {
        goto LABEL_51;
      }
    }

    else if (a4)
    {
LABEL_51:
      ENErrorF(2);
      *a4 = v30 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v30 = 0;
    goto LABEL_36;
  }

  if (a4)
  {
    v33 = 2;
    goto LABEL_46;
  }

LABEL_47:
  v30 = 0;
LABEL_37:
  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    if (self->_activateCalled)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __27__ENFileSession_invalidate__block_invoke;
      v11[3] = &unk_278A4B210;
      v11[4] = self;
      v3 = MEMORY[0x2383EE560](v11, a2);
      serviceClient = self->_serviceClient;
      v10 = 0;
      v5 = [(ENXPCServiceClient *)serviceClient getXPCConnectionAndReturnError:&v10];
      v6 = v10;
      if (v5)
      {
        v7 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_int64(v7, "smTyp", 12);
        v8 = [(ENXPCServiceClient *)self->_serviceClient dispatchQueue];
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __27__ENFileSession_invalidate__block_invoke_2;
        handler[3] = &unk_278A4B720;
        handler[4] = v3;
        xpc_connection_send_message_with_reply(v5, v7, v8, handler);
      }

      else
      {
        (v3)[2](v3, v6);
      }
    }
  }
}

- (BOOL)activateWithArchivePath:(id)a3 error:(id *)a4
{
  v6 = [(ENFileSession *)self _activateCreateXPCRequestWithPath:a3 archive:1 signatureData:0 error:a4];
  if (v6)
  {
    v7 = [(ENFileSession *)self _activateSyncWithRequest:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __27__ENFileSession_invalidate__block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v4 = NSStringFromClass(v2);
  v3 = CUPrintNSError();
  LogPrintF_safe();
}

void __44__ENFileSession__activateHandleReply_error___block_invoke_cold_1()
{
  ENErrorF(15);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 40);
  *(v0 + 40) = v2;
}

void __44__ENFileSession__activateHandleReply_error___block_invoke_cold_2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9(a1);
  ENNestedErrorF(v1, 2);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  v3 = *(v2 + 40);
  *(v2 + 40) = v4;
}

- (void)readTEKBatchAndReturnError:(uint64_t *)a3 .cold.1(id *a1, uint64_t a2, uint64_t *a3)
{
  v6 = [a1[7] getXPCConnectionAndReturnError:a2];
  if (v6)
  {
    connection = v6;
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "smTyp", 13);
    v8 = xpc_connection_send_message_with_reply_sync(connection, v7);
    v9 = [a1 _readTEKBatchHandleReply:v8 error:a2];

    v6 = connection;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
}

void __48__ENFileSession__readTEKBatchHandleReply_error___block_invoke_cold_1()
{
  ENErrorF(15);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 40);
  *(v0 + 40) = v2;
}

void __48__ENFileSession__readTEKBatchHandleReply_error___block_invoke_cold_2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9(a1);
  ENNestedErrorF(v1, 2);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  v3 = *(v2 + 40);
  *(v2 + 40) = v4;
}

- (void)verifySignatureWithPublicKey:error:.cold.1()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

- (void)verifySignatureWithPublicKey:(void *)a1 error:.cold.2(void *a1)
{
  v2 = [a1 keyID];
  v3 = [a1 keyVersion];
  LogPrintF_safe();
}

@end
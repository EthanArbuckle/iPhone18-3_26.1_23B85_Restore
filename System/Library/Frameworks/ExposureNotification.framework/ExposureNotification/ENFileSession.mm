@interface ENFileSession
- (BOOL)_activateHandleReply:(id)reply error:(id *)error;
- (BOOL)_activateSyncWithRequest:(id)request error:(id *)error;
- (BOOL)activateWithArchivePath:(id)path error:(id *)error;
- (BOOL)activateWithFilePath:(id)path error:(id *)error;
- (ENFileSession)initWithServiceClient:(id)client;
- (NSDate)endDate;
- (NSDate)startDate;
- (id)_activateCreateXPCRequestWithFD:(int)d archive:(BOOL)archive signatureData:(id)data error:(id *)error;
- (id)_readTEKBatchHandleReply:(id)reply error:(id *)error;
- (id)readTEKBatchAndReturnError:(id *)error;
- (id)verifySignatureWithPublicKey:(__SecKey *)key error:(id *)error;
- (void)dealloc;
- (void)invalidate;
@end

@implementation ENFileSession

- (ENFileSession)initWithServiceClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = ENFileSession;
  v6 = [(ENFileSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceClient, client);
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

- (BOOL)activateWithFilePath:(id)path error:(id *)error
{
  pathCopy = path;
  stringByDeletingPathExtension = [pathCopy stringByDeletingPathExtension];
  v8 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"sig"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [defaultManager fileExistsAtPath:v8];

  if (v10)
  {
    v17 = 0;
    v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v8 options:0 error:&v17];
    v12 = v17;
    v13 = v12;
    if (!v11)
    {
      if (error)
      {
        ENNestedErrorF(v12, 1);
        *error = v15 = 0;
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

  v14 = [(ENFileSession *)self _activateCreateXPCRequestWithPath:pathCopy archive:0 signatureData:v13 error:error];
  if (v14)
  {
    v15 = [(ENFileSession *)self _activateSyncWithRequest:v14 error:error];
  }

  else
  {
    v15 = 0;
  }

LABEL_8:
  return v15;
}

- (id)_activateCreateXPCRequestWithFD:(int)d archive:(BOOL)archive signatureData:(id)data error:(id *)error
{
  archiveCopy = archive;
  dataCopy = data;
  v11 = xpc_fd_create(d);
  if (v11)
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    v13 = v12;
    if (archiveCopy)
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
    if (dataCopy)
    {
      v15 = dataCopy;
      v16 = v13;
      v17 = dataCopy;
      bytes = [v17 bytes];
      if (bytes)
      {
        v19 = bytes;
      }

      else
      {
        v19 = "";
      }

      v20 = [v17 length];

      xpc_dictionary_set_data(v16, "sigD", v19, v20);
    }

    if ((d & 0x80000000) == 0)
    {
      close(d);
    }
  }

  else if (error)
  {
    ENErrorF(1);
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_activateSyncWithRequest:(id)request error:(id *)error
{
  requestCopy = request;
  if (self->_activateCalled)
  {
    if (error)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (self->_invalidated)
  {
    if (error)
    {
LABEL_10:
      ENErrorF(10);
      *error = v10 = 0;
      goto LABEL_6;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_6;
  }

  v7 = [(ENXPCServiceClient *)self->_serviceClient getXPCConnectionAndReturnError:error];
  v8 = v7;
  if (v7)
  {
    self->_activateCalled = 1;
    v9 = xpc_connection_send_message_with_reply_sync(v7, requestCopy);
    v10 = [(ENFileSession *)self _activateHandleReply:v9 error:error];
  }

  else
  {
    v10 = 0;
  }

LABEL_6:
  return v10;
}

- (BOOL)_activateHandleReply:(id)reply error:(id *)error
{
  replyCopy = reply;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = CUXPCDecodeNSErrorIfNeeded();
  v6 = v10[5];
  if (v6)
  {
    if (error)
    {
      *error = v6;
    }
  }

  else
  {
    v7 = xpc_dictionary_get_value(replyCopy, "meta");
    if (v7)
    {
      if ((CUXPCDecodeNSData() & 1) != 0 && error)
      {
        *error = ENErrorF(16);
      }
    }

    else if (error)
    {
      *error = ENErrorF(16);
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

- (id)readTEKBatchAndReturnError:(id *)error
{
  if (self->_activateSucceeded)
  {
    if (!self->_invalidated)
    {
      [(ENFileSession *)&self->super.isa readTEKBatchAndReturnError:error, &v8];
      v4 = v8;
      goto LABEL_4;
    }

    if (error)
    {
      goto LABEL_10;
    }
  }

  else if (error)
  {
LABEL_10:
    v6 = ENErrorF(10);
    v7 = v6;
    v4 = 0;
    *error = v6;
    goto LABEL_4;
  }

  v4 = 0;
LABEL_4:

  return v4;
}

- (id)_readTEKBatchHandleReply:(id)reply error:(id *)error
{
  replyCopy = reply;
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
    v9 = xpc_dictionary_get_array(replyCopy, "tekA");
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
      if (error)
      {
        v13 = 0;
        *error = v11;
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
  if (error)
  {
    *error = v7;
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

- (id)verifySignatureWithPublicKey:(__SecKey *)key error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  if (!self->_activateSucceeded)
  {
    if (!error)
    {
      goto LABEL_47;
    }

LABEL_43:
    v33 = 10;
LABEL_46:
    ENErrorF(v33);
    *error = v30 = 0;
    goto LABEL_37;
  }

  if (self->_invalidated)
  {
    if (!error)
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
      firstObject = [(NSArray *)v7 firstObject];

      if (firstObject)
      {
        errorCopy = error;
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
              signatureData = [v17 signatureData];

              if (signatureData)
              {
                error = 0;
                if (SecKeyVerifySignature(key, v13, sha256Data, signatureData, &error))
                {
                  v30 = v17;

                  goto LABEL_35;
                }

                errorCopy2 = error;
                if (error)
                {
                  domain = [(__CFError *)error domain];
                  if ([domain isEqualToString:v15])
                  {
                    v21 = v14;
                    v22 = v13;
                    v23 = sha256Data;
                    v24 = v10;
                    keyCopy = key;
                    v26 = v15;
                    code = [(__CFError *)errorCopy2 code];

                    v28 = code == -67808;
                    v15 = v26;
                    key = keyCopy;
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

        if (errorCopy)
        {
          ENErrorF(2);
          *errorCopy = v30 = 0;
        }

        else
        {
          v30 = 0;
        }

LABEL_35:
        v8 = v35;
        goto LABEL_36;
      }

      if (error)
      {
        goto LABEL_51;
      }
    }

    else if (error)
    {
LABEL_51:
      ENErrorF(2);
      *error = v30 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v30 = 0;
    goto LABEL_36;
  }

  if (error)
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
        dispatchQueue = [(ENXPCServiceClient *)self->_serviceClient dispatchQueue];
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __27__ENFileSession_invalidate__block_invoke_2;
        handler[3] = &unk_278A4B720;
        handler[4] = v3;
        xpc_connection_send_message_with_reply(v5, v7, dispatchQueue, handler);
      }

      else
      {
        (v3)[2](v3, v6);
      }
    }
  }
}

- (BOOL)activateWithArchivePath:(id)path error:(id *)error
{
  v6 = [(ENFileSession *)self _activateCreateXPCRequestWithPath:path archive:1 signatureData:0 error:error];
  if (v6)
  {
    v7 = [(ENFileSession *)self _activateSyncWithRequest:v6 error:error];
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
@interface NFCISO15693ReaderSessionTag
+ (BOOL)decodeIdentifier:(id)a3 manufacturerCode:(unint64_t *)a4 serialNumber:(id *)a5;
+ (id)reverseByteOrder:(id)a3;
- (BOOL)_transceiveWithData:(id)a3 receivedData:(id *)a4 commandConfig:(id)a5 error:(id *)a6;
- (NSData)icSerialNumber;
- (NSData)identifier;
- (id)_parseResponseData:(id)a3 outError:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)_parseResponseErrorWithData:(id)a3;
- (unint64_t)icManufacturerCode;
- (void)authenticateWithRequestFlags:(unsigned __int8)a3 cryptoSuiteIdentifier:(int64_t)a4 message:(id)a5 completionHandler:(id)a6;
- (void)challengeWithRequestFlags:(unsigned __int8)a3 cryptoSuiteIdentifier:(int64_t)a4 message:(id)a5 completionHandler:(id)a6;
- (void)customCommandWithRequestFlag:(unsigned __int8)a3 customCommandCode:(int64_t)a4 customRequestParameters:(id)a5 completionHandler:(id)a6;
- (void)extendedFastReadMultipleBlocksWithRequestFlag:(unsigned __int8)a3 blockRange:(_NSRange)a4 completionHandler:(id)a5;
- (void)extendedGetMultipleBlockSecurityStatusWithRequestFlag:(unsigned __int8)a3 blockRange:(_NSRange)a4 completionHandler:(id)a5;
- (void)extendedLockBlockWithRequestFlags:(unsigned __int8)a3 blockNumber:(int64_t)a4 completionHandler:(id)a5;
- (void)extendedReadMultipleBlocksWithRequestFlags:(unsigned __int8)a3 blockRange:(_NSRange)a4 completionHandler:(id)a5;
- (void)extendedReadSingleBlockWithRequestFlags:(unsigned __int8)a3 blockNumber:(int64_t)a4 completionHandler:(id)a5;
- (void)extendedWriteMultipleBlocksWithRequestFlags:(unsigned __int8)a3 blockRange:(_NSRange)a4 dataBlocks:(id)a5 completionHandler:(id)a6;
- (void)extendedWriteSingleBlockWithRequestFlags:(unsigned __int8)a3 blockNumber:(int64_t)a4 dataBlock:(id)a5 completionHandler:(id)a6;
- (void)fastReadMultipleBlocksWithRequestFlag:(unsigned __int8)a3 blockRange:(_NSRange)a4 completionHandler:(id)a5;
- (void)getMultipleBlockSecurityStatusWithRequestFlag:(unsigned __int8)a3 blockRange:(_NSRange)a4 completionHandler:(id)a5;
- (void)getSystemInfoAndUIDWithRequestFlag:(unsigned __int8)a3 completionHandler:(id)a4;
- (void)getSystemInfoWithRequestFlag:(unsigned __int8)a3 completionHandler:(id)a4;
- (void)keyUpdateWithRequestFlags:(unsigned __int8)a3 keyIdentifier:(int64_t)a4 message:(id)a5 completionHandler:(id)a6;
- (void)lockAFIWithRequestFlag:(unsigned __int8)a3 completionHandler:(id)a4;
- (void)lockBlockWithRequestFlags:(unsigned __int8)a3 blockNumber:(unsigned __int8)a4 completionHandler:(id)a5;
- (void)lockDFSIDWithRequestFlag:(unsigned __int8)a3 completionHandler:(id)a4;
- (void)lockDSFIDWithRequestFlag:(unsigned __int8)a3 completionHandler:(id)a4;
- (void)readBufferWithRequestFlags:(unsigned __int8)a3 completionHandler:(id)a4;
- (void)readMultipleBlocksWithConfiguration:(id)a3 completionHandler:(id)a4;
- (void)readMultipleBlocksWithRequestFlags:(unsigned __int8)a3 blockRange:(_NSRange)a4 completionHandler:(id)a5;
- (void)readSingleBlockWithRequestFlags:(unsigned __int8)a3 blockNumber:(unsigned __int8)a4 completionHandler:(id)a5;
- (void)resetToReadyWithRequestFlags:(unsigned __int8)a3 completionHandler:(id)a4;
- (void)selectWithRequestFlags:(unsigned __int8)a3 completionHandler:(id)a4;
- (void)sendCustomCommandWithConfiguration:(id)a3 completionHandler:(id)a4;
- (void)sendRequestWithFlag:(int64_t)a3 commandCode:(int64_t)a4 data:(id)a5 completionHandler:(id)a6;
- (void)stayQuietWithCompletionHandler:(id)a3;
- (void)writeAFIWithRequestFlag:(unsigned __int8)a3 afi:(unsigned __int8)a4 completionHandler:(id)a5;
- (void)writeDSFIDWithRequestFlag:(unsigned __int8)a3 dsfid:(unsigned __int8)a4 completionHandler:(id)a5;
- (void)writeMultipleBlocksWithRequestFlags:(unsigned __int8)a3 blockRange:(_NSRange)a4 dataBlocks:(id)a5 completionHandler:(id)a6;
- (void)writeSingleBlockWithRequestFlags:(unsigned __int8)a3 blockNumber:(unsigned __int8)a4 dataBlock:(id)a5 completionHandler:(id)a6;
@end

@implementation NFCISO15693ReaderSessionTag

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = NFCISO15693ReaderSessionTag;
  return [(NFCTag *)&v4 copyWithZone:a3];
}

- (BOOL)_transceiveWithData:(id)a3 receivedData:(id *)a4 commandConfig:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [v11 maximumRetries];
  if (v12 <= +[NFCTag _MaxRetry](NFCTag, "_MaxRetry") && ([v11 retryInterval], v14 = v13, +[NFCTag _MaxRetryInterval](NFCTag, "_MaxRetryInterval"), v14 <= v15) && (objc_msgSend(v11, "retryInterval"), v16 >= 0.0))
  {
    v18 = [v11 maximumRetries];
    v26 = [(NFCTag *)self _getInternalReaderSession];
    if (v26)
    {
      v19 = v18 + 1;
      if (v18 == -1)
      {
        v21 = 0;
        v20 = 0;
      }

      else
      {
        v20 = 0;
        v21 = 0;
        while (1)
        {
          v22 = v20;
          v27 = v20;
          [(NFCTag *)self _transceiveWithSession:v26 sendData:v10 receivedData:a4 error:&v27, v26];
          v20 = v27;

          if (a6)
          {
            v23 = v20;
            *a6 = v20;
          }

          if (!v20 || [v20 code] == 202)
          {
            break;
          }

          if (v21 < v18)
          {
            [v11 retryInterval];
            usleep((v24 * 1000000.0));
          }

          if (v19 == ++v21)
          {
            v21 = v18 + 1;
            break;
          }
        }
      }

      if (a6 && v21 == v19)
      {
        *a6 = [NFCError errorWithCode:101];
      }

      v17 = v20 == 0;
    }

    else if (a6)
    {
      [NFCError errorWithCode:103];
      *a6 = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else if (a6)
  {
    [NFCError errorWithCode:300];
    *a6 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (unint64_t)_parseResponseErrorWithData:(id)a3
{
  v3 = [a3 bytes];
  if (*v3)
  {
    return v3[1];
  }

  else
  {
    return 0;
  }
}

+ (id)reverseByteOrder:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(v3, "length")}];
  v6 = [v3 length];
  if (v6 - 1 >= 0)
  {
    v7 = -v6;
    v8 = v4 + v6 - 1;
    do
    {
      [v5 appendBytes:v8-- length:1];
    }

    while (!__CFADD__(v7++, 1));
  }

  return v5;
}

+ (BOOL)decodeIdentifier:(id)a3 manufacturerCode:(unint64_t *)a4 serialNumber:(id *)a5
{
  v9 = a3;
  if ([v9 length] != 8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"NFCISO15693ReaderSessionTag.m" lineNumber:242 description:@"Invalid UID length"];
  }

  v10 = [v9 length];
  if (v10 == 8)
  {
    if (a4)
    {
      *a4 = *([v9 bytes] + 1);
    }

    if (a5)
    {
      *a5 = [v9 subdataWithRange:{2, 6}];
    }
  }

  return v10 == 8;
}

- (NSData)identifier
{
  v5.receiver = self;
  v5.super_class = NFCISO15693ReaderSessionTag;
  v2 = [(NFCTag *)&v5 identifier];
  v3 = [NFCISO15693ReaderSessionTag reverseByteOrder:v2];

  return v3;
}

- (unint64_t)icManufacturerCode
{
  v5 = 0;
  v2 = [(NFCISO15693ReaderSessionTag *)self identifier];
  v3 = [NFCISO15693ReaderSessionTag decodeIdentifier:v2 manufacturerCode:&v5 serialNumber:0];

  if (v3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (NSData)icSerialNumber
{
  v2 = [(NFCISO15693ReaderSessionTag *)self identifier];
  v8 = 0;
  v3 = [NFCISO15693ReaderSessionTag decodeIdentifier:v2 manufacturerCode:0 serialNumber:&v8];
  v4 = v8;

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  return v6;
}

- (id)_parseResponseData:(id)a3 outError:(id *)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NFCISO15693ReaderSessionTag *)self _parseResponseErrorWithData:v6];
  if (v7)
  {
    if (a4)
    {
      v14 = @"ISO15693TagResponseErrorCode";
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
      v15[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      *a4 = [NFCError errorWithCode:102 userInfo:v9];
    }

    v10 = objc_opt_new();
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    v10 = [v6 subdataWithRange:{1, objc_msgSend(v6, "length") - 1}];
  }

  v11 = v10;

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)sendCustomCommandWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = _os_activity_create(&dword_23728C000, "NFCISO15693ReaderSessionTag sendCustomCommandWithConfiguration:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v9, state);
  os_activity_scope_leave(state);

  Logger = NFLogGetLogger();
  if (Logger)
  {
    v11 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v15 = 45;
    if (isMetaClass)
    {
      v15 = 43;
    }

    v11(6, "%c[%{public}s %{public}s]:%i ", v15, ClassName, Name, 303);
  }

  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = object_getClass(self);
    if (class_isMetaClass(v17))
    {
      v18 = 43;
    }

    else
    {
      v18 = 45;
    }

    v19 = object_getClassName(self);
    v20 = sel_getName(a2);
    *state = 67109890;
    *&state[4] = v18;
    *&state[8] = 2082;
    *&state[10] = v19;
    v72 = 2082;
    v73 = v20;
    v74 = 1024;
    v75 = 303;
    _os_log_impl(&dword_23728C000, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", state, 0x22u);
  }

  v70 = 0;
  v21 = [v7 asNSDataWithError:&v70];
  v22 = v70;
  if (v22)
  {
    v23 = v22;
    v24 = NFLogGetLogger();
    if (v24)
    {
      v25 = v24;
      v26 = object_getClass(self);
      v27 = class_isMetaClass(v26);
      v57 = object_getClassName(self);
      v60 = sel_getName(a2);
      v28 = 45;
      if (v27)
      {
        v28 = 43;
      }

      v25(3, "%c[%{public}s %{public}s]:%i %@ in commandConfiguration asNSDataWithError", v28, v57, v60, 320, v23);
    }

    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = object_getClass(self);
      if (class_isMetaClass(v30))
      {
        v31 = 43;
      }

      else
      {
        v31 = 45;
      }

      v32 = object_getClassName(self);
      v33 = sel_getName(a2);
      *state = 67110146;
      *&state[4] = v31;
      *&state[8] = 2082;
      *&state[10] = v32;
      v72 = 2082;
      v73 = v33;
      v74 = 1024;
      v75 = 320;
      v76 = 2112;
      v77 = v23;
      _os_log_impl(&dword_23728C000, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ in commandConfiguration asNSDataWithError", state, 0x2Cu);
    }

    v34 = 0;
    v35 = 0;
  }

  else
  {
    v68 = 0;
    v69 = 0;
    [(NFCISO15693ReaderSessionTag *)self _transceiveWithData:v21 receivedData:&v69 commandConfig:v7 error:&v68];
    v35 = v69;
    v36 = v68;
    if (v36 || [v35 length] < 2)
    {
      sel = a2;
      v23 = [NFCError errorWithCode:100];

      v37 = NFLogGetLogger();
      if (v37)
      {
        v38 = v37;
        v39 = object_getClass(self);
        v40 = class_isMetaClass(v39);
        v41 = v7;
        v42 = v21;
        v43 = v8;
        v44 = object_getClassName(self);
        v45 = sel_getName(sel);
        v61 = [v35 length];
        v46 = 45;
        if (v40)
        {
          v46 = 43;
        }

        v58 = v44;
        v8 = v43;
        v21 = v42;
        v7 = v41;
        v38(3, "%c[%{public}s %{public}s]:%i %@ with response length = %lu", v46, v58, v45, 316, v23, v61);
      }

      v47 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = object_getClass(self);
        if (class_isMetaClass(v48))
        {
          v49 = 43;
        }

        else
        {
          v49 = 45;
        }

        v50 = object_getClassName(self);
        v51 = sel_getName(sel);
        v52 = [v35 length];
        *state = 67110402;
        *&state[4] = v49;
        *&state[8] = 2082;
        *&state[10] = v50;
        v72 = 2082;
        v73 = v51;
        v74 = 1024;
        v75 = 316;
        v76 = 2112;
        v77 = v23;
        v78 = 2048;
        v79 = v52;
        _os_log_impl(&dword_23728C000, v47, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ with response length = %lu", state, 0x36u);
      }

      v34 = 0;
    }

    else
    {
      v67 = 0;
      v34 = [(NFCISO15693ReaderSessionTag *)self _parseResponseData:v35 outError:&v67];
      v23 = v67;
    }
  }

  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = sub_2372ADA34;
  v63[3] = &unk_278A29C60;
  v65 = v23;
  v66 = v8;
  v64 = v34;
  v53 = v23;
  v54 = v34;
  v55 = v8;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v63];

  v56 = *MEMORY[0x277D85DE8];
}

- (void)readMultipleBlocksWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v92 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = _os_activity_create(&dword_23728C000, "NFCISO15693ReaderSessionTag readMultipleBlocksWithConfiguration:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v9, state);
  os_activity_scope_leave(state);

  v10 = objc_opt_new();
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v12 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v16 = 45;
    if (isMetaClass)
    {
      v16 = 43;
    }

    v12(6, "%c[%{public}s %{public}s]:%i ", v16, ClassName, Name, 336);
  }

  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = object_getClass(self);
    if (class_isMetaClass(v18))
    {
      v19 = 43;
    }

    else
    {
      v19 = 45;
    }

    v20 = object_getClassName(self);
    v21 = sel_getName(a2);
    *state = 67109890;
    *&state[4] = v19;
    *&state[8] = 2082;
    *&state[10] = v20;
    v83 = 2082;
    v84 = v21;
    v85 = 1024;
    v86 = 336;
    _os_log_impl(&dword_23728C000, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", state, 0x22u);
  }

  v81.receiver = self;
  v81.super_class = NFCISO15693ReaderSessionTag;
  v22 = [(NFCTag *)&v81 identifier];
  v80 = 0;
  v23 = [v7 asNSDataArrayWithUID:v22 error:&v80];
  v24 = v80;

  v69 = v7;
  if (v24)
  {
    v25 = NFLogGetLogger();
    if (v25)
    {
      v26 = v25;
      v27 = object_getClass(self);
      v28 = class_isMetaClass(v27);
      v60 = object_getClassName(self);
      v63 = sel_getName(a2);
      v29 = 45;
      if (v28)
      {
        v29 = 43;
      }

      v26(3, "%c[%{public}s %{public}s]:%i %@ in readConfiguration asNSDataArrayWithUID", v29, v60, v63, 366, v24);
    }

    v30 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = object_getClass(self);
      v32 = v23;
      if (class_isMetaClass(v31))
      {
        v33 = 43;
      }

      else
      {
        v33 = 45;
      }

      v34 = object_getClassName(self);
      v35 = sel_getName(a2);
      *state = 67110146;
      *&state[4] = v33;
      v23 = v32;
      *&state[8] = 2082;
      *&state[10] = v34;
      v83 = 2082;
      v84 = v35;
      v85 = 1024;
      v86 = 366;
      v87 = 2112;
      v88 = v24;
      _os_log_impl(&dword_23728C000, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@ in readConfiguration asNSDataArrayWithUID", state, 0x2Cu);
    }
  }

  else
  {
    sel = a2;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v30 = v23;
    v36 = [v30 countByEnumeratingWithState:&v76 objects:v91 count:16];
    if (v36)
    {
      v37 = v36;
      v65 = v23;
      v66 = v8;
      v68 = v10;
      v38 = *v77;
      while (2)
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v77 != v38)
          {
            objc_enumerationMutation(v30);
          }

          v40 = *(*(&v76 + 1) + 8 * i);
          v74 = 0;
          v75 = 0;
          [(NFCISO15693ReaderSessionTag *)self _transceiveWithData:v40 receivedData:&v75 commandConfig:v7 error:&v74];
          v41 = v75;
          v24 = v74;
          if ([v41 length] >= 2)
          {
            v42 = [(NFCISO15693ReaderSessionTag *)self _parseResponseErrorWithData:v41];
            if (v42)
            {
              v89 = @"ISO15693TagResponseErrorCode";
              v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v42];
              v90 = v43;
              v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
              v45 = [NFCError errorWithCode:102 userInfo:v44];

              v7 = v69;
              v24 = v45;
            }

            else
            {
              v43 = [v41 subdataWithRange:{1, objc_msgSend(v41, "length") - 1}];
              [v68 appendData:v43];
            }
          }

          if (v24)
          {
            v46 = NFLogGetLogger();
            if (v46)
            {
              v47 = v46;
              v48 = object_getClass(self);
              v49 = class_isMetaClass(v48);
              v61 = object_getClassName(self);
              v64 = sel_getName(sel);
              v50 = 45;
              if (v49)
              {
                v50 = 43;
              }

              v47(3, "%c[%{public}s %{public}s]:%i %@", v50, v61, v64, 360, v24);
            }

            v51 = NFSharedLogGetLogger();
            v10 = v68;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v52 = object_getClass(self);
              if (class_isMetaClass(v52))
              {
                v53 = 43;
              }

              else
              {
                v53 = 45;
              }

              v54 = object_getClassName(self);
              v55 = sel_getName(sel);
              *state = 67110146;
              *&state[4] = v53;
              *&state[8] = 2082;
              *&state[10] = v54;
              v83 = 2082;
              v84 = v55;
              v85 = 1024;
              v86 = 360;
              v87 = 2112;
              v88 = v24;
              _os_log_impl(&dword_23728C000, v51, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %@", state, 0x2Cu);
            }

            v23 = v65;
            v8 = v66;
            goto LABEL_45;
          }
        }

        v37 = [v30 countByEnumeratingWithState:&v76 objects:v91 count:16];
        if (v37)
        {
          continue;
        }

        break;
      }

      v24 = 0;
      v23 = v65;
      v8 = v66;
      v10 = v68;
    }

    else
    {
      v24 = 0;
    }
  }

LABEL_45:

  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = sub_2372AE12C;
  v70[3] = &unk_278A29C60;
  v72 = v24;
  v73 = v8;
  v71 = v10;
  v56 = v24;
  v57 = v10;
  v58 = v8;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v70];

  v59 = *MEMORY[0x277D85DE8];
}

- (void)stayQuietWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2372AE224;
  v6[3] = &unk_278A29C38;
  v7 = v4;
  v5 = v4;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v6];
}

- (void)readSingleBlockWithRequestFlags:(unsigned __int8)a3 blockNumber:(unsigned __int8)a4 completionHandler:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AE320;
  v8[3] = &unk_278A29C38;
  v9 = v6;
  v7 = v6;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)writeSingleBlockWithRequestFlags:(unsigned __int8)a3 blockNumber:(unsigned __int8)a4 dataBlock:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AE434;
  v9[3] = &unk_278A29C38;
  v10 = v7;
  v8 = v7;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v9];
}

- (void)lockBlockWithRequestFlags:(unsigned __int8)a3 blockNumber:(unsigned __int8)a4 completionHandler:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AE530;
  v8[3] = &unk_278A29C38;
  v9 = v6;
  v7 = v6;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)readMultipleBlocksWithRequestFlags:(unsigned __int8)a3 blockRange:(_NSRange)a4 completionHandler:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AE62C;
  v8[3] = &unk_278A29C38;
  v9 = v6;
  v7 = v6;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)writeMultipleBlocksWithRequestFlags:(unsigned __int8)a3 blockRange:(_NSRange)a4 dataBlocks:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AE740;
  v9[3] = &unk_278A29C38;
  v10 = v7;
  v8 = v7;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v9];
}

- (void)selectWithRequestFlags:(unsigned __int8)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372AE83C;
  v7[3] = &unk_278A29C38;
  v8 = v5;
  v6 = v5;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)resetToReadyWithRequestFlags:(unsigned __int8)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372AE938;
  v7[3] = &unk_278A29C38;
  v8 = v5;
  v6 = v5;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)writeAFIWithRequestFlag:(unsigned __int8)a3 afi:(unsigned __int8)a4 completionHandler:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AEA34;
  v8[3] = &unk_278A29C38;
  v9 = v6;
  v7 = v6;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)lockAFIWithRequestFlag:(unsigned __int8)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372AEB30;
  v7[3] = &unk_278A29C38;
  v8 = v5;
  v6 = v5;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)writeDSFIDWithRequestFlag:(unsigned __int8)a3 dsfid:(unsigned __int8)a4 completionHandler:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AEC2C;
  v8[3] = &unk_278A29C38;
  v9 = v6;
  v7 = v6;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)lockDFSIDWithRequestFlag:(unsigned __int8)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372AED28;
  v7[3] = &unk_278A29C38;
  v8 = v5;
  v6 = v5;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)lockDSFIDWithRequestFlag:(unsigned __int8)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372AEE24;
  v7[3] = &unk_278A29C38;
  v8 = v5;
  v6 = v5;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)getSystemInfoWithRequestFlag:(unsigned __int8)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372AEF20;
  v7[3] = &unk_278A29C38;
  v8 = v5;
  v6 = v5;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)getSystemInfoAndUIDWithRequestFlag:(unsigned __int8)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372AF030;
  v7[3] = &unk_278A29C38;
  v8 = v5;
  v6 = v5;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)getMultipleBlockSecurityStatusWithRequestFlag:(unsigned __int8)a3 blockRange:(_NSRange)a4 completionHandler:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AF144;
  v8[3] = &unk_278A29C38;
  v9 = v6;
  v7 = v6;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)fastReadMultipleBlocksWithRequestFlag:(unsigned __int8)a3 blockRange:(_NSRange)a4 completionHandler:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AF258;
  v8[3] = &unk_278A29C38;
  v9 = v6;
  v7 = v6;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)customCommandWithRequestFlag:(unsigned __int8)a3 customCommandCode:(int64_t)a4 customRequestParameters:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AF36C;
  v9[3] = &unk_278A29C38;
  v10 = v7;
  v8 = v7;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v9];
}

- (void)extendedReadSingleBlockWithRequestFlags:(unsigned __int8)a3 blockNumber:(int64_t)a4 completionHandler:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AF480;
  v8[3] = &unk_278A29C38;
  v9 = v6;
  v7 = v6;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)extendedWriteSingleBlockWithRequestFlags:(unsigned __int8)a3 blockNumber:(int64_t)a4 dataBlock:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AF594;
  v9[3] = &unk_278A29C38;
  v10 = v7;
  v8 = v7;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v9];
}

- (void)extendedLockBlockWithRequestFlags:(unsigned __int8)a3 blockNumber:(int64_t)a4 completionHandler:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AF690;
  v8[3] = &unk_278A29C38;
  v9 = v6;
  v7 = v6;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)extendedReadMultipleBlocksWithRequestFlags:(unsigned __int8)a3 blockRange:(_NSRange)a4 completionHandler:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AF78C;
  v8[3] = &unk_278A29C38;
  v9 = v6;
  v7 = v6;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)extendedWriteMultipleBlocksWithRequestFlags:(unsigned __int8)a3 blockRange:(_NSRange)a4 dataBlocks:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AF8A0;
  v9[3] = &unk_278A29C38;
  v10 = v7;
  v8 = v7;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v9];
}

- (void)authenticateWithRequestFlags:(unsigned __int8)a3 cryptoSuiteIdentifier:(int64_t)a4 message:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AF99C;
  v9[3] = &unk_278A29C38;
  v10 = v7;
  v8 = v7;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v9];
}

- (void)keyUpdateWithRequestFlags:(unsigned __int8)a3 keyIdentifier:(int64_t)a4 message:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AFAB4;
  v9[3] = &unk_278A29C38;
  v10 = v7;
  v8 = v7;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v9];
}

- (void)challengeWithRequestFlags:(unsigned __int8)a3 cryptoSuiteIdentifier:(int64_t)a4 message:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AFBCC;
  v9[3] = &unk_278A29C38;
  v10 = v7;
  v8 = v7;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v9];
}

- (void)readBufferWithRequestFlags:(unsigned __int8)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2372AFCC8;
  v7[3] = &unk_278A29C38;
  v8 = v5;
  v6 = v5;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v7];
}

- (void)extendedGetMultipleBlockSecurityStatusWithRequestFlag:(unsigned __int8)a3 blockRange:(_NSRange)a4 completionHandler:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AFDE0;
  v8[3] = &unk_278A29C38;
  v9 = v6;
  v7 = v6;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)extendedFastReadMultipleBlocksWithRequestFlag:(unsigned __int8)a3 blockRange:(_NSRange)a4 completionHandler:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2372AFEF4;
  v8[3] = &unk_278A29C38;
  v9 = v6;
  v7 = v6;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v8];
}

- (void)sendRequestWithFlag:(int64_t)a3 commandCode:(int64_t)a4 data:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372B0008;
  v9[3] = &unk_278A29C38;
  v10 = v7;
  v8 = v7;
  [(NFCTag *)self dispatchOnDelegateQueueAsync:v9];
}

@end
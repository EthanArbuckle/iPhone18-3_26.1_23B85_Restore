@interface NSBinaryObjectStoreFile
- (BOOL)_writeMetadataData:(id)a3 andMapDataData:(id)a4 toFile:(id)a5 error:(id *)a6;
- (BOOL)readFromFile:(void *)a3 error:;
- (uint64_t)readMetadataFromFile:(int)a3 securely:(void *)a4 error:;
- (uint64_t)writeMetadataToFile:(id *)a3 error:;
- (uint64_t)writeToFile:(uint64_t)a3 error:;
- (void)clearCurrentValues;
- (void)dealloc;
@end

@implementation NSBinaryObjectStoreFile

- (void)dealloc
{
  self->_fullMetadata = 0;

  self->_mapData = 0;
  self->_storeOptions = 0;
  v3.receiver = self;
  v3.super_class = NSBinaryObjectStoreFile;
  [(NSBinaryObjectStoreFile *)&v3 dealloc];
}

- (void)clearCurrentValues
{
  *(a1 + 8) = 0;
  if (*(a1 + 16))
  {
    v2 = [0 copy];

    *(a1 + 16) = v2;
  }

  *(a1 + 24) = 0;

  [(NSXPCStoreServerConnectionContext *)a1 setActiveStore:?];
}

- (BOOL)readFromFile:(void *)a3 error:
{
  v62 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_12;
  }

  [(NSBinaryObjectStoreFile *)a1 clearCurrentValues];
  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:a2 options:1 error:a3];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [v6 length];
  if (v8)
  {
    if (v8 <= 0x3F)
    {

      if (a3)
      {
        v9 = objc_alloc(MEMORY[0x1E695DF20]);
        v10 = [v9 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
        v11 = MEMORY[0x1E696ABC0];
        v12 = *MEMORY[0x1E696A250];
        v13 = 259;
LABEL_11:
        *a3 = [v11 errorWithDomain:v12 code:v13 userInfo:v10];

        goto LABEL_12;
      }

      goto LABEL_12;
    }

    if (*[v7 bytes] != 0x6174614465726F43)
    {

      if (a3)
      {
        v15 = objc_alloc(MEMORY[0x1E695DF20]);
        v10 = [v15 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
        v11 = MEMORY[0x1E696ABC0];
        v12 = *MEMORY[0x1E696A250];
        v13 = 134000;
        goto LABEL_11;
      }

LABEL_12:
      v14 = 0;
      goto LABEL_13;
    }

    if ([v7 length] > 0x3F)
    {
      v54 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      if (byte_1ED4BEEC6 == 1)
      {
        v20 = [*(a1 + 40) objectForKey:@"_NSBinaryStoreInsecureDecodingCompatibilityOption"];
        if (v20)
        {
          v21 = [v20 BOOLValue] ^ 1;
        }

        else
        {
          v21 = 1;
        }
      }

      else
      {
        v21 = 0;
      }

      v55 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      *&v22 = SetHostHeaderWithBigHeader(&v58, [v7 bytes]);
      v14 = DWORD2(v58) == 1;
      if (DWORD2(v58) == 1)
      {
        *(a1 + 8) = HIDWORD(v58);
        v23 = [v7 subdataWithRange:{v59, v22}];
        v24 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v23 error:&v55];
        if (v55)
        {
          v42 = [v55 code];
          v56 = *MEMORY[0x1E696AA08];
          v57 = v55;
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v44 = [_NSCoreDataException exceptionWithName:v42 code:@"Keyed archiver failure" reason:v43 userInfo:?];
          objc_exception_throw(v44);
        }

        v25 = +[_PFRoutines plistClassesForSecureCoding];
        if (v21)
        {
          [v24 setRequiresSecureCoding:1];
          [v24 _allowDecodingCyclesInSecureMode];
          v26 = [*(a1 + 40) objectForKey:@"NSBinaryStoreSecureDecodingClasses"];
          if (v26)
          {
            v25 = [v25 mutableCopy];
            [v25 unionSet:v26];
          }
        }

        else
        {
          [v24 setRequiresSecureCoding:0];
        }

        [v24 setDecodingFailurePolicy:1];
        v31 = [v24 decodeObjectOfClasses:v25 forKey:@"metadata"];
        if ([v24 error])
        {
          v55 = [v24 error];
          v45 = [v55 code];
          v56 = *MEMORY[0x1E696AA08];
          v57 = v55;
          v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v47 = [_NSCoreDataException exceptionWithName:v45 code:@"Keyed archiver failure" reason:v46 userInfo:?];
          objc_exception_throw(v47);
        }

        [v24 finishDecoding];

        if (*(a1 + 16) != v31)
        {
          v32 = [v31 copy];

          *(a1 + 16) = v32;
        }

        v33 = *(&v60 + 1);
        *(a1 + 24) = v61;
        v34 = [v7 subdataWithRange:{v60, v33}];
        v35 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v34 error:&v55];
        if (v55)
        {
          v48 = [v55 code];
          v56 = *MEMORY[0x1E696AA08];
          v57 = v55;
          v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v50 = [_NSCoreDataException exceptionWithName:v48 code:@"Keyed archiver failure" reason:v49 userInfo:?];
          objc_exception_throw(v50);
        }

        v36 = +[NSBinaryObjectStore _classesForPropertyValues];
        if (v21)
        {
          [v35 setRequiresSecureCoding:1];
          [v35 _allowDecodingCyclesInSecureMode];
          v37 = [*(a1 + 40) objectForKey:@"NSBinaryStoreSecureDecodingClasses"];
          if (v37)
          {
            v36 = [v36 mutableCopy];
            [v36 unionSet:v37];
          }
        }

        else
        {
          [v35 setRequiresSecureCoding:0];
        }

        [v35 setDecodingFailurePolicy:1];
        v38 = [v35 decodeObjectOfClasses:v36 forKey:@"mapData"];
        if ([v35 error])
        {
          v55 = [v35 error];
          v51 = [v55 code];
          v56 = *MEMORY[0x1E696AA08];
          v57 = v55;
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v53 = [_NSCoreDataException exceptionWithName:v51 code:@"Keyed archiver failure" reason:v52 userInfo:?];
          objc_exception_throw(v53);
        }

        [v35 finishDecoding];

        [(NSXPCStoreServerConnectionContext *)a1 setActiveStore:v38];
        v30 = 0;
      }

      else if (a3)
      {
        v27 = objc_alloc(MEMORY[0x1E695DF20]);
        v28 = [v27 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = [v29 initWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:v28];
      }

      else
      {
        v30 = 0;
      }

      v39 = v30;

      [v54 drain];
      v40 = 0;
      v41 = v30;
      if (a3 && v30)
      {
        *a3 = v30;
      }
    }

    else
    {
      if (a3)
      {
        v18 = objc_alloc(MEMORY[0x1E695DF20]);
        v19 = [v18 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
        *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:v19];
      }

      v14 = 0;
    }
  }

  else
  {

    v14 = 1;
  }

LABEL_13:
  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (uint64_t)writeMetadataToFile:(id *)a3 error:
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_9:
    v12 = 0;
    goto LABEL_18;
  }

  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v25 = 0;
  v7 = [MEMORY[0x1E696AC00] fileHandleForUpdatingAtPath:a2];
  if (!v7)
  {
    [v6 drain];
    if (a3)
    {
      v13 = objc_alloc(MEMORY[0x1E695DF20]);
      v14 = [v13 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:v14];
    }

    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 readDataOfLength:64];
  if (*[v9 bytes] == 0x6174614465726F43)
  {
    v27 = 0u;
    v28 = 0u;
    memset(v26, 0, sizeof(v26));
    *&v15 = SetHostHeaderWithBigHeader(v26, [v9 bytes]);
    if (DWORD2(v26[0]) == 1)
    {
      [v8 seekToFileOffset:{v27, v15}];
      v16 = [v8 readDataOfLength:*(&v27 + 1)];
      v17 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:512];
      v18 = [objc_alloc(MEMORY[0x1E696ACC8]) initForWritingWithMutableData:v17];
      [v18 encodeObject:a1[2] forKey:@"metadata"];
      [v18 finishEncoding];

      v12 = [a1 _writeMetadataData:v17 andMapDataData:v16 toFile:a2 error:&v25];
    }

    else
    {
      if (a3)
      {
        v19 = objc_alloc(MEMORY[0x1E695DF20]);
        v20 = [v19 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
        v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:v20];
      }

      v12 = 0;
    }
  }

  else
  {
    if (a3)
    {
      v10 = objc_alloc(MEMORY[0x1E695DF20]);
      v11 = [v10 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
      v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:v11];
    }

    v12 = 0;
  }

  v21 = v25;
  [v8 closeFile];
  [v6 drain];
  v22 = v25;
  if (a3 && v25)
  {
    *a3 = v25;
  }

LABEL_18:
  v23 = *MEMORY[0x1E69E9840];
  return v12;
}

- (uint64_t)readMetadataFromFile:(int)a3 securely:(void *)a4 error:
{
  v56 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_9:
    v18 = 0;
    goto LABEL_39;
  }

  [(NSBinaryObjectStoreFile *)a1 clearCurrentValues];
  v8 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v9 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:a2];
  if (!v9)
  {
    [v8 drain];
    if (a4)
    {
      v16 = objc_alloc(MEMORY[0x1E695DF20]);
      v17 = [v16 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:v17];
    }

    goto LABEL_9;
  }

  v10 = v9;
  v46 = 0;
  v11 = [v9 readDataOfLength:64];
  v12 = [v11 length];
  if (!v12)
  {
    v19 = 0;
    v15 = 0;
    v20 = 0;
    v47 = 1;
    goto LABEL_34;
  }

  if (v12 <= 0x3F)
  {
    if (a4)
    {
      v13 = objc_alloc(MEMORY[0x1E695DF20]);
      v14 = [v13 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:v14];
    }

    else
    {
      v15 = 0;
    }

    v19 = 0;
    v20 = 0;
    v47 = 0;
    goto LABEL_34;
  }

  if (*[v11 bytes] != 0x6174614465726F43)
  {
    if (a4)
    {
      v21 = objc_alloc(MEMORY[0x1E695DF20]);
      v22 = [v21 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:v22];
    }

    else
    {
      v15 = 0;
    }

    v20 = 0;
    goto LABEL_33;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  *&v23 = SetHostHeaderWithBigHeader(&v52, [v11 bytes]);
  v20 = DWORD2(v52) == 1;
  if (DWORD2(v52) == 1)
  {
    *(a1 + 8) = HIDWORD(v52);
    v24 = v53;
    *(a1 + 24) = v55;
    [v10 seekToFileOffset:{v24, v23}];
    v25 = [v10 readDataOfLength:*(&v53 + 1)];
    v26 = [v25 length];
    if (v26 != *(&v53 + 1))
    {
      if (a4)
      {
        v32 = objc_alloc(MEMORY[0x1E695DF20]);
        v33 = [v32 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
        v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:v33];
      }

      else
      {
        v15 = 0;
      }

      v47 = 0;
      v19 = 0;
      v20 = 0;
      goto LABEL_34;
    }

    v27 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v25 error:&v46];
    if (v46)
    {
      v40 = [v46 code];
      v50 = *MEMORY[0x1E696AA08];
      v51 = v46;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v42 = [_NSCoreDataException exceptionWithName:v40 code:@"Keyed archiver failure" reason:v41 userInfo:?];
      objc_exception_throw(v42);
    }

    v28 = +[_PFRoutines plistClassesForSecureCoding];
    if (a3)
    {
      [v27 setRequiresSecureCoding:1];
      [v27 _allowDecodingCyclesInSecureMode];
      v29 = [*(a1 + 40) valueForKey:@"NSBinaryStoreSecureDecodingClasses"];
      if (v29)
      {
        v28 = [v28 mutableCopy];
        [v28 unionSet:v29];
      }
    }

    else
    {
      [v27 setRequiresSecureCoding:0];
    }

    [v27 setDecodingFailurePolicy:1];
    v34 = [v27 decodeObjectOfClasses:v28 forKey:@"metadata"];
    if ([v27 error])
    {
      v46 = [v27 error];
      v43 = [v46 code];
      v48 = *MEMORY[0x1E696AA08];
      v49 = v46;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v45 = [_NSCoreDataException exceptionWithName:v43 code:@"Keyed archiver failure" reason:v44 userInfo:?];
      objc_exception_throw(v45);
    }

    [v27 finishDecoding];

    if (*(a1 + 16) != v34)
    {
      v35 = [v34 copy];

      v15 = 0;
      *(a1 + 16) = v35;
      goto LABEL_33;
    }

LABEL_32:
    v15 = 0;
    goto LABEL_33;
  }

  if (!a4)
  {
    goto LABEL_32;
  }

  v30 = objc_alloc(MEMORY[0x1E695DF20]);
  v31 = [v30 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:v31];

LABEL_33:
  v19 = 1;
LABEL_34:
  v36 = v15;
  [v10 closeFile];
  [v8 drain];
  v37 = v15;
  if (a4 && v15)
  {
    *a4 = v15;
  }

  v18 = v47;
  if (v19)
  {
    v18 = v20;
  }

LABEL_39:
  v38 = *MEMORY[0x1E69E9840];
  return v18 & 1;
}

- (BOOL)_writeMetadataData:(id)a3 andMapDataData:(id)a4 toFile:(id)a5 error:(id *)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v11 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v35 = 0x6174614465726F43;
  v36 = 0x1000000;
  if (self)
  {
    databaseVersion = self->_databaseVersion;
  }

  else
  {
    databaseVersion = 0;
  }

  v42 = 0u;
  v37 = bswap32(databaseVersion);
  v38 = bswap64([a4 length] + 64);
  v39 = bswap64([a3 length]);
  v40 = 0x4000000000000000;
  v41 = bswap64([a4 length]);
  if (self)
  {
    primaryKeyGeneration = self->_primaryKeyGeneration;
  }

  else
  {
    primaryKeyGeneration = 0;
  }

  v42 = bswap64(primaryKeyGeneration);
  v14 = [a4 length];
  v15 = [a3 length];
  v16 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v14 + v15 + 64];
  [v16 appendBytes:&v35 length:64];
  [v16 appendData:a4];
  [v16 appendData:a3];
  v17 = [(NSDictionary *)self->_storeOptions valueForKey:@"NSPersistentStoreFileProtectionKey"];
  if (v17)
  {
    if ([*MEMORY[0x1E696A3A8] isEqualToString:v17])
    {
      v18 = 268435457;
      goto LABEL_23;
    }

    if ([*MEMORY[0x1E696A388] isEqualToString:v17])
    {
      v18 = 1073741825;
      goto LABEL_23;
    }

    if ([*MEMORY[0x1E696A380] isEqualToString:v17])
    {
      v18 = 805306369;
      goto LABEL_23;
    }

    if ([*MEMORY[0x1E696A378] isEqualToString:v17])
    {
      v18 = 536870913;
      goto LABEL_23;
    }

    v19 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_22;
    }

    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v17;
LABEL_36:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey\n", buf, 0xCu);
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v17;
        goto LABEL_36;
      }
    }

LABEL_22:
    _NSCoreDataLog_console(1, "Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey", v17);
    objc_autoreleasePoolPop(v19);
    v18 = 1;
    goto LABEL_23;
  }

  if (BYTE5(z9dsptsiQ80etb9782fsrs98bfdle88))
  {
    v18 = 1073741825;
  }

  else
  {
    v18 = 1;
  }

LABEL_23:
  v21 = [v16 writeToFile:a5 options:v18 error:&v30];
  if ((v21 & 1) == 0)
  {
    v22 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v23 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }
      }

      else
      {
        v23 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
LABEL_34:
          v28 = v30;
          v29 = [v30 userInfo];
          *buf = 138412546;
          v32 = v28;
          v33 = 2112;
          v34 = v29;
          _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error: Binary store: writeToFile error = %@ and userInfo = %@\n", buf, 0x16u);
        }
      }
    }

    _NSCoreDataLog_console(1, "Binary store: writeToFile error = %@ and userInfo = %@", v30, [v30 userInfo]);
    objc_autoreleasePoolPop(v22);
  }

  v24 = v30;
  [v11 drain];
  if (v30)
  {
    v25 = v30;
    if (a6)
    {
      *a6 = v30;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v21;
}

- (uint64_t)writeToFile:(uint64_t)a3 error:
{
  if (!a1)
  {
    return 0;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:512];
  v7 = [objc_alloc(MEMORY[0x1E696ACC8]) initForWritingWithMutableData:v6];
  [v7 encodeObject:a1[2] forKey:@"metadata"];
  [v7 finishEncoding];

  v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:4096];
  v9 = [objc_alloc(MEMORY[0x1E696ACC8]) initForWritingWithMutableData:v8];
  [v9 encodeObject:a1[4] forKey:@"mapData"];
  [v9 finishEncoding];
  v10 = [a1 _writeMetadataData:v6 andMapDataData:v8 toFile:a2 error:a3];
  [v9 finishEncoding];

  return v10;
}

@end
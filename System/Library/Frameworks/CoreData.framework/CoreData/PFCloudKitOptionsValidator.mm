@interface PFCloudKitOptionsValidator
- (BOOL)validateOptions:(void *)options andStoreOptions:(uint64_t *)storeOptions error:;
- (void)dealloc;
@end

@implementation PFCloudKitOptionsValidator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFCloudKitOptionsValidator;
  [(PFCloudKitOptionsValidator *)&v3 dealloc];
}

- (BOOL)validateOptions:(void *)options andStoreOptions:(uint64_t *)storeOptions error:
{
  v78[1] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_45;
  }

  v7 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v9 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v10 = 17;
  }

  else
  {
    v10 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v10 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v11 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (os_log_type_enabled(Stream, v12))
  {
    *buf = 136315906;
    v66 = "[PFCloudKitOptionsValidator validateOptions:andStoreOptions:error:]";
    v67 = 1024;
    v68 = 36;
    v69 = 2112;
    v70 = a2;
    v71 = 2112;
    optionsCopy = options;
    _os_log_impl(&dword_18565F000, v9, v12, "CoreData+CloudKit: %s(%d): Validating options: %@\nstoreOptions: %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v7);
  containerIdentifier = [a2 containerIdentifier];
  if (!containerIdentifier)
  {
    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A250];
    v73 = *MEMORY[0x1E696A588];
    v74 = @"A container identifier is required for the CloudKit integration.";
    v29 = MEMORY[0x1E695DF20];
    v30 = &v74;
    v31 = &v73;
    goto LABEL_33;
  }

  v14 = containerIdentifier;
  if (![containerIdentifier isNSString])
  {
    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A250];
    v75 = *MEMORY[0x1E696A588];
    v32 = MEMORY[0x1E696AEC0];
    v33 = objc_opt_class();
    v76 = [v32 stringWithFormat:@"NSCloudKitMirroringDelegateOptions.containerIdentifier only accepts values of type '%@'. The following is not a valid value:\n%@", NSStringFromClass(v33), v14];
    v29 = MEMORY[0x1E695DF20];
    v30 = &v76;
    v31 = &v75;
    goto LABEL_33;
  }

  if (![v14 length])
  {
    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A250];
    v77 = *MEMORY[0x1E696A588];
    v78[0] = @"NSCloudKitMirroringDelegateOptions.containerIdentifier requires a value with a length greather than 0";
    v29 = MEMORY[0x1E695DF20];
    v30 = v78;
    v31 = &v77;
LABEL_33:
    v34 = [v27 errorWithDomain:v28 code:134060 userInfo:{objc_msgSend(v29, "dictionaryWithObjects:forKeys:count:", v30, v31, 1)}];
    if (v34)
    {
      goto LABEL_37;
    }

    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v66 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
      v67 = 1024;
      v68 = 87;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v36 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_37;
    }

    *buf = 136315394;
    v66 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
    v67 = 1024;
    v68 = 87;
    goto LABEL_58;
  }

  if (![options objectForKey:@"NSPersistentHistoryTrackingKey"])
  {
    v40 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A250];
    v77 = *MEMORY[0x1E696A588];
    v78[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is required for the CloudKit integration.", @"NSPersistentHistoryTrackingKey"];
    v34 = [v40 errorWithDomain:v41 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v78, &v77, 1)}];
    if (v34)
    {
      goto LABEL_37;
    }

    v42 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v66 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
      v67 = 1024;
      v68 = 105;
      _os_log_error_impl(&dword_18565F000, v42, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v36 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_37;
    }

    *buf = 136315394;
    v66 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
    v67 = 1024;
    v68 = 105;
    goto LABEL_58;
  }

  containerOptions = [a2 containerOptions];
  if (containerOptions)
  {
    v16 = containerOptions;
    getCloudKitCKContainerOptionsClass();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v43 = MEMORY[0x1E696ABC0];
      v44 = *MEMORY[0x1E696A250];
      v77 = *MEMORY[0x1E696A588];
      v45 = MEMORY[0x1E696AEC0];
      getCloudKitCKContainerOptionsClass();
      v46 = objc_opt_class();
      v78[0] = [v45 stringWithFormat:@"NSCloudKitMirroringDelegateOptions.containerOptions only accepts values of type '%@'. The following is not a valid value:\n%@", NSStringFromClass(v46), v16];
      v34 = [v43 errorWithDomain:v44 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v78, &v77, 1)}];
      if (v34)
      {
        goto LABEL_37;
      }

      v47 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v66 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
        v67 = 1024;
        v68 = 132;
        _os_log_error_impl(&dword_18565F000, v47, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v36 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_37;
      }

      *buf = 136315394;
      v66 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
      v67 = 1024;
      v68 = 132;
      goto LABEL_58;
    }
  }

  ckAssetThresholdBytes = [a2 ckAssetThresholdBytes];
  if (ckAssetThresholdBytes)
  {
    v18 = ckAssetThresholdBytes;
    if ([ckAssetThresholdBytes isNSNumber])
    {
      if ([v18 integerValue] > 99)
      {
        goto LABEL_26;
      }

      v48 = MEMORY[0x1E696ABC0];
      v49 = *MEMORY[0x1E696A250];
      v77 = *MEMORY[0x1E696A588];
      v78[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"The value for 'NSCloudKitMirroringDelegateOptions.ckAssetThresholdBytes' must be at least %@ bytes. The following value is invalid: %@", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 100), v18];
      v52 = MEMORY[0x1E695DF20];
      v53 = v78;
      v54 = &v77;
    }

    else
    {
      v48 = MEMORY[0x1E696ABC0];
      v49 = *MEMORY[0x1E696A250];
      v75 = *MEMORY[0x1E696A588];
      v50 = MEMORY[0x1E696AEC0];
      v51 = objc_opt_class();
      v76 = [v50 stringWithFormat:@"The value for 'NSCloudKitMirroringDelegateOptions.ckAssetThresholdBytes' must be an instance of '%@'. The following value is invalid: %@", NSStringFromClass(v51), v18];
      v52 = MEMORY[0x1E695DF20];
      v53 = &v76;
      v54 = &v75;
    }

    v34 = [v48 errorWithDomain:v49 code:134060 userInfo:{objc_msgSend(v52, "dictionaryWithObjects:forKeys:count:", v53, v54, 1)}];
    if (v34)
    {
      goto LABEL_37;
    }

    v60 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v66 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
      v67 = 1024;
      v68 = 162;
      _os_log_error_impl(&dword_18565F000, v60, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v36 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_37;
    }

    *buf = 136315394;
    v66 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
    v67 = 1024;
    v68 = 162;
    goto LABEL_58;
  }

LABEL_26:
  operationMemoryThresholdBytes = [a2 operationMemoryThresholdBytes];
  if (!operationMemoryThresholdBytes)
  {
    goto LABEL_72;
  }

  v20 = operationMemoryThresholdBytes;
  if ([operationMemoryThresholdBytes isNSNumber])
  {
    longLongValue = [&unk_1EF435E30 longLongValue];
    if ([v20 longLongValue] < longLongValue)
    {
      v22 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A250];
      v75 = *MEMORY[0x1E696A588];
      v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The value for 'NSCloudKitMirroringDelegateOptions.operationMemoryThresholdBytes' must be at least %@ bytes. The following value is invalid: %@", &unk_1EF435E30, v20];
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v25 = v22;
      v26 = v23;
      goto LABEL_60;
    }

    longLongValue2 = [v20 longLongValue];
    if (longLongValue2 > [objc_msgSend(a2 "ckAssetThresholdBytes")])
    {
LABEL_72:
      result = 1;
      goto LABEL_45;
    }

    v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The value for 'NSCloudKitMirroringDelegateOptions.operationMemoryThresholdBytes', %@, must be larger than the value of 'NSCloudKitMirroringDelegateOptions.ckAssetThresholdBytes', %@.", v20, objc_msgSend(a2, "ckAssetThresholdBytes")];
    v63 = MEMORY[0x1E696ABC0];
    v64 = *MEMORY[0x1E696A250];
    v77 = *MEMORY[0x1E696A588];
    v78[0] = v62;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:&v77 count:1];
    v25 = v63;
    v26 = v64;
  }

  else
  {
    v55 = MEMORY[0x1E696ABC0];
    v56 = *MEMORY[0x1E696A250];
    v73 = *MEMORY[0x1E696A588];
    v57 = MEMORY[0x1E696AEC0];
    v58 = objc_opt_class();
    v74 = [v57 stringWithFormat:@"The value for 'NSCloudKitMirroringDelegateOptions.operationMemoryThresholdBytes' must be an instance of '%@'. The following value is invalid: %@", NSStringFromClass(v58), v20];
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    v25 = v55;
    v26 = v56;
  }

LABEL_60:
  v34 = [v25 errorWithDomain:v26 code:134060 userInfo:v24];
  if (v34)
  {
    goto LABEL_37;
  }

  v59 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v66 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
    v67 = 1024;
    v68 = 200;
    _os_log_error_impl(&dword_18565F000, v59, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v36 = _PFLogGetLogStream(17);
  if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
  {
    goto LABEL_37;
  }

  *buf = 136315394;
  v66 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
  v67 = 1024;
  v68 = 200;
LABEL_58:
  _os_log_fault_impl(&dword_18565F000, v36, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
LABEL_37:
  if (v34)
  {
    if (storeOptions)
    {
      result = 0;
      *storeOptions = v34;
      goto LABEL_45;
    }

LABEL_44:
    result = 0;
    goto LABEL_45;
  }

  v37 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v66 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
    v67 = 1024;
    v68 = 56;
    _os_log_error_impl(&dword_18565F000, v37, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v38 = _PFLogGetLogStream(17);
  result = os_log_type_enabled(v38, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *buf = 136315394;
    v66 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
    v67 = 1024;
    v68 = 56;
    _os_log_fault_impl(&dword_18565F000, v38, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_44;
  }

LABEL_45:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

@end
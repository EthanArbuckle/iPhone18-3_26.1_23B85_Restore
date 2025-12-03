@interface ARRecon3DLogger
- (ARRecon3DLogger)initWithInternalLogging:(BOOL)logging;
- (void)dealloc;
@end

@implementation ARRecon3DLogger

- (ARRecon3DLogger)initWithInternalLogging:(BOOL)logging
{
  loggingCopy = logging;
  v46 = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = ARRecon3DLogger;
  v4 = [(ARRecon3DLogger *)&v43 init];
  if (!v4)
  {
    goto LABEL_41;
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v36 = __43__ARRecon3DLogger_initWithInternalLogging___block_invoke;
  v37 = &unk_1E817C268;
  v38 = &v39;
  v5 = CV3DReconLoggingHandleCreate();
  v6 = v40[3];
  if (!v6)
  {
    v11 = v5;
    v12 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.sceneReconstruction.recon3DLoggingLevel.api"];
    if (CV3DReconLoggingHandleEnable())
    {
      v13 = _ARLogGeneral_51();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_24;
      }

      *buf = 67109120;
      LODWORD(v45) = v12;
      v14 = "Recon3D API logging level enabled: %i";
      v15 = v13;
      v16 = OS_LOG_TYPE_INFO;
      v17 = 8;
    }

    else
    {
      if (ARShouldUseLogTypeError_onceToken_56 != -1)
      {
        [ARRecon3DLogger initWithInternalLogging:];
      }

      v19 = ARShouldUseLogTypeError_internalOSVersion_56;
      v20 = _ARLogGeneral_51();
      v13 = v20;
      if (v19 == 1)
      {
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        v21 = v40[3];
        *buf = 138412290;
        v45 = v21;
        v14 = "Error enabling Recon3D API logging: %@";
        v15 = v13;
        v16 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          goto LABEL_24;
        }

        v22 = v40[3];
        *buf = 138412290;
        v45 = v22;
        v14 = "Error: Error enabling Recon3D API logging: %@";
        v15 = v13;
        v16 = OS_LOG_TYPE_INFO;
      }

      v17 = 12;
    }

    _os_log_impl(&dword_1C241C000, v15, v16, v14, buf, v17);
LABEL_24:

    if (!loggingCopy)
    {
LABEL_38:
      v4->_loggingHandle = v11;
      goto LABEL_39;
    }

    v23 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.sceneReconstruction.recon3DLoggingLevel.internal"];
    if (CV3DReconLoggingHandleEnableInternal())
    {
      v24 = _ARLogGeneral_51();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v45) = v23;
        v25 = "Recon3D internal logging level enabled: %i";
        v26 = v24;
        v27 = OS_LOG_TYPE_INFO;
        v28 = 8;
LABEL_36:
        _os_log_impl(&dword_1C241C000, v26, v27, v25, buf, v28);
      }

LABEL_37:

      goto LABEL_38;
    }

    if (ARShouldUseLogTypeError_onceToken_56 != -1)
    {
      [ARRecon3DLogger initWithInternalLogging:];
    }

    v29 = ARShouldUseLogTypeError_internalOSVersion_56;
    v30 = _ARLogGeneral_51();
    v24 = v30;
    if (v29 == 1)
    {
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      v31 = v40[3];
      *buf = 138412290;
      v45 = v31;
      v25 = "Error enabling Recon3D internal logging: %@";
      v26 = v24;
      v27 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        goto LABEL_37;
      }

      v32 = v40[3];
      *buf = 138412290;
      v45 = v32;
      v25 = "Error: Error enabling Recon3D internal logging: %@";
      v26 = v24;
      v27 = OS_LOG_TYPE_INFO;
    }

    v28 = 12;
    goto LABEL_36;
  }

  if (ARShouldUseLogTypeError_onceToken_56 != -1)
  {
    [ARRecon3DLogger initWithInternalLogging:];
  }

  v7 = ARShouldUseLogTypeError_internalOSVersion_56;
  v8 = _ARLogGeneral_51();
  v9 = v8;
  if (v7 == 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = v40[3];
      *buf = 138412290;
      v45 = v10;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "Error creating recon logging handle: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v18 = v40[3];
    *buf = 138412290;
    v45 = v18;
    _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "Error: Error creating recon logging handle: %@", buf, 0xCu);
  }

LABEL_39:
  v36(v35);
  _Block_object_dispose(&v39, 8);
  if (!v6)
  {
LABEL_41:
    v33 = v4;
    goto LABEL_42;
  }

  v33 = 0;
LABEL_42:

  return v33;
}

void __43__ARRecon3DLogger_initWithInternalLogging___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

- (void)dealloc
{
  CV3DReconLoggingHandleRelease();
  v3.receiver = self;
  v3.super_class = ARRecon3DLogger;
  [(ARRecon3DLogger *)&v3 dealloc];
}

@end
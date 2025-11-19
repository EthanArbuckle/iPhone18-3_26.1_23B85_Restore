@interface CLKWatchFaceLibrary
+ (BOOL)_unzipFile:(id)a3 toPath:(id)a4;
+ (CLKWatchFaceLibrary)sharedInstance;
+ (id)errorWithCode:(int64_t)a3;
- (CLKWatchFaceLibrary)init;
- (void)_addWatchFaceAtURL:(id)a3 shouldValidate:(BOOL)a4 completionHandler:(id)a5;
- (void)_importWatchFaceAtURL:(id)a3 completionHandler:(id)a4;
- (void)_validateWatchFaceAtURL:(id)a3 completionHandler:(id)a4;
- (void)addWatchFaceAtURL:(NSURL *)fileURL completionHandler:(void *)handler;
@end

@implementation CLKWatchFaceLibrary

+ (CLKWatchFaceLibrary)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CLKWatchFaceLibrary_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_3 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3, block);
  }

  v2 = sharedInstance___shared;

  return v2;
}

uint64_t __37__CLKWatchFaceLibrary_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance___shared;
  sharedInstance___shared = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (CLKWatchFaceLibrary)init
{
  v7.receiver = self;
  v7.super_class = CLKWatchFaceLibrary;
  v2 = [(CLKWatchFaceLibrary *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.ClockKit.CLKWatchFaceLibrary", v3);
    helperQueue = v2->_helperQueue;
    v2->_helperQueue = v4;
  }

  return v2;
}

- (void)addWatchFaceAtURL:(NSURL *)fileURL completionHandler:(void *)handler
{
  v6 = MEMORY[0x277CCAC38];
  v7 = handler;
  v8 = fileURL;
  v9 = [v6 processInfo];
  v10 = [v9 processName];
  v11 = [v10 lowercaseString];

  -[CLKWatchFaceLibrary _addWatchFaceAtURL:shouldValidate:completionHandler:](self, "_addWatchFaceAtURL:shouldValidate:completionHandler:", v8, [v11 isEqualToString:@"mobilesms"] ^ 1, v7);
}

- (void)_addWatchFaceAtURL:(id)a3 shouldValidate:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = CLKLoggingObjectForDomain(9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v8;
    _os_log_impl(&dword_23702D000, v10, OS_LOG_TYPE_DEFAULT, "importWatchFaceAtURL: %@", buf, 0xCu);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __75__CLKWatchFaceLibrary__addWatchFaceAtURL_shouldValidate_completionHandler___block_invoke;
  v24[3] = &unk_278A1E728;
  v11 = v9;
  v25 = v11;
  v12 = MEMORY[0x2383C4AF0](v24);
  if ([v8 isFileURL])
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __75__CLKWatchFaceLibrary__addWatchFaceAtURL_shouldValidate_completionHandler___block_invoke_3;
    v21[3] = &unk_278A1FAD0;
    v21[4] = self;
    v13 = v8;
    v22 = v13;
    v14 = v12;
    v23 = v14;
    v15 = MEMORY[0x2383C4AF0](v21);
    v16 = v15;
    if (v6)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __75__CLKWatchFaceLibrary__addWatchFaceAtURL_shouldValidate_completionHandler___block_invoke_4;
      v18[3] = &unk_278A1FE08;
      v19 = v14;
      v20 = v16;
      [(CLKWatchFaceLibrary *)self _validateWatchFaceAtURL:v13 completionHandler:v18];
    }

    else
    {
      (*(v15 + 16))(v15);
    }
  }

  else
  {
    v17 = [CLKWatchFaceLibrary errorWithCode:1];
    (v12)[2](v12, v17);
  }
}

void __75__CLKWatchFaceLibrary__addWatchFaceAtURL_shouldValidate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__CLKWatchFaceLibrary__addWatchFaceAtURL_shouldValidate_completionHandler___block_invoke_2;
  v6[3] = &unk_278A1FB48;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __75__CLKWatchFaceLibrary__addWatchFaceAtURL_shouldValidate_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

+ (id)errorWithCode:(int64_t)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if ((a3 - 1) > 4)
  {
    v5 = @"IMPORT_FACE_ERROR_UNKNOWN";
  }

  else
  {
    v5 = off_278A1FE28[a3 - 1];
  }

  v6 = CLKGreenfieldLocalizedString(v5);
  if (v6)
  {
    v5 = v6;
  }

  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277CCA450]];
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLKWatchFaceLibraryErrorDomain" code:a3 userInfo:v4];

  return v7;
}

- (void)_validateWatchFaceAtURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  helperQueue = self->_helperQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke;
  v11[3] = &unk_278A1FBE8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(helperQueue, v11);
}

void __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [v2 UUIDString];

  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:v3];

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  if ([CLKWatchFaceLibrary _unzipFile:*(a1 + 32) toPath:v6])
  {
    v7 = [v5 stringByAppendingPathComponent:@"face.json"];
    v32 = 0;
    v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v7 options:0 error:&v32];
    v9 = v32;
    if (v9)
    {
      v10 = v9;
      v11 = CLKLoggingObjectForDomain(9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_cold_2();
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_41;
      block[3] = &unk_278A1FA30;
      v31 = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], block);
      v12 = v31;
    }

    else
    {
      v29 = 0;
      v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v29];
      v10 = v29;
      if (v10)
      {
        v14 = CLKLoggingObjectForDomain(9);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_cold_3();
        }

        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_43;
        v27[3] = &unk_278A1FA30;
        v28 = *(a1 + 40);
        dispatch_async(MEMORY[0x277D85CD0], v27);
        v15 = v28;
      }

      else
      {
        v15 = [v12 objectForKeyedSubscript:@"face type"];
        if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v16 = [v12 objectForKeyedSubscript:@"bundle id"];
          if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v20 = CLKLoggingObjectForDomain(9);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_cold_4();
            }

            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_46;
            v23[3] = &unk_278A1FA30;
            v19 = &v24;
            v24 = *(a1 + 40);
            dispatch_async(MEMORY[0x277D85CD0], v23);
          }

          else
          {
            v18 = +[CLKWatchFaceLibraryServer sharedInstance];
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_2;
            v21[3] = &unk_278A1E728;
            v19 = &v22;
            v22 = *(a1 + 40);
            [v18 validateFaceType:v15 faceBundleId:v16 completionHandler:v21];
          }
        }

        else
        {
          v17 = CLKLoggingObjectForDomain(9);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_cold_4();
          }

          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_45;
          v25[3] = &unk_278A1FA30;
          v26 = *(a1 + 40);
          dispatch_async(MEMORY[0x277D85CD0], v25);
          v16 = v26;
        }
      }
    }
  }

  else
  {
    v13 = CLKLoggingObjectForDomain(9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_cold_1();
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_39;
    v33[3] = &unk_278A1FA30;
    v34 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v33);
    v10 = v34;
  }
}

void __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_39(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CLKWatchFaceLibrary errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_41(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CLKWatchFaceLibrary errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_43(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CLKWatchFaceLibrary errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_45(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CLKWatchFaceLibrary errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_46(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CLKWatchFaceLibrary errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_3;
  v5[3] = &unk_278A1FBE8;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v4 = [CLKWatchFaceLibrary errorWithCode:4];
    (*(v1 + 16))(v1, v4);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3, 0);
  }
}

+ (BOOL)_unzipFile:(id)a3 toPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  archive_read_new();
  archive_read_support_format_zip();
  archive_read_support_filter_gzip();
  [v5 fileSystemRepresentation];
  if (archive_read_open_filename())
  {
    v7 = CLKLoggingObjectForDomain(9);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CLKWatchFaceLibrary _unzipFile:v5 toPath:v7];
    }

    v8 = 0;
  }

  else
  {
    while (1)
    {
      next_header = archive_read_next_header();
      if (next_header)
      {
        break;
      }

      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:archive_entry_pathname()];
      v11 = [v6 path];
      v12 = [v11 stringByAppendingPathComponent:v10];

      [v12 UTF8String];
      archive_entry_set_pathname();
      if (archive_read_extract())
      {
        v13 = CLKLoggingObjectForDomain(9);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          +[CLKWatchFaceLibrary _unzipFile:toPath:];
        }

        goto LABEL_15;
      }
    }

    if (next_header == 1)
    {
      v8 = 1;
      goto LABEL_16;
    }

    v10 = CLKLoggingObjectForDomain(9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CLKWatchFaceLibrary _unzipFile:toPath:];
    }

LABEL_15:

    v8 = 0;
LABEL_16:
    archive_read_free();
  }

  return v8;
}

- (void)_importWatchFaceAtURL:(id)a3 completionHandler:(id)a4
{
  v5 = MEMORY[0x277CCAC90];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithURL:v7 readonly:1];

  if (v8)
  {
    v9 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [v9 bundleIdentifier];

    v11 = +[CLKWatchFaceLibraryServer sharedInstance];
    [v11 openWatchFaceURLWithSecurityScopedURL:v8 sourceApplicationBundleIdentifier:v10 completionHandler:v6];
  }

  else
  {
    v12 = CLKLoggingObjectForDomain(9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CLKWatchFaceLibrary _importWatchFaceAtURL:completionHandler:];
    }

    v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CLKWatchFaceLibraryErrorDomain" code:5 userInfo:0];
    (*(v6 + 2))(v6, v13);
  }
}

void __65__CLKWatchFaceLibrary__validateWatchFaceAtURL_completionHandler___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)_unzipFile:(void *)a1 toPath:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = [a1 fileSystemRepresentation];
  _os_log_error_impl(&dword_23702D000, a2, OS_LOG_TYPE_ERROR, "Decompression failed. Could not open source: %s", &v3, 0xCu);
}

@end
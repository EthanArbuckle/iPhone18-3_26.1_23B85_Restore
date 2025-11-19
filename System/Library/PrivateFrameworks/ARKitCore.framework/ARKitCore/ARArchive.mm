@interface ARArchive
- (ARArchive)init;
- (ARArchive)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (ARArchive)initWithData:(id)a3 error:(id *)a4;
- (BOOL)_loadArchiveFromMemory:(id)a3 error:(id *)a4;
- (BOOL)_loadArchiveFromURL:(id)a3 error:(id *)a4;
- (BOOL)_readDataForEntry:(archive_entry *)a3 archive:(archive *)a4;
- (BOOL)_readDataFromArchive:(archive *)a3;
- (BOOL)_writeToArchive:(archive *)a3;
- (BOOL)writeToURL:(id)a3 error:(id *)a4;
- (archive)_createArchiveForReading;
- (id)dataForResource:(id)a3 withExtension:(id)a4;
- (id)dataRepresentation;
- (void)addData:(id)a3 withFilename:(id)a4 extension:(id)a5;
- (void)removeDataWithFilename:(id)a3 extension:(id)a4;
@end

@implementation ARArchive

- (ARArchive)init
{
  v6.receiver = self;
  v6.super_class = ARArchive;
  v2 = [(ARArchive *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dataByPath = v2->_dataByPath;
    v2->_dataByPath = v3;
  }

  return v2;
}

- (ARArchive)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ARArchive *)self init];
  v8 = v7;
  if (v7 && ![(ARArchive *)v7 _loadArchiveFromURL:v6 error:a4])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (ARArchive)initWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ARArchive *)self init];
  v8 = v7;
  if (v7 && ![(ARArchive *)v7 _loadArchiveFromMemory:v6 error:a4])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (void)addData:(id)a3 withFilename:(id)a4 extension:(id)a5
{
  v8 = a3;
  v9 = [a4 stringByAppendingPathExtension:a5];
  [(ARArchive *)self addData:v8 withPath:v9];
}

- (void)removeDataWithFilename:(id)a3 extension:(id)a4
{
  v5 = [a3 stringByAppendingPathExtension:a4];
  [(ARArchive *)self removeDataWithPath:v5];
}

- (id)dataForResource:(id)a3 withExtension:(id)a4
{
  v5 = [a3 stringByAppendingPathExtension:a4];
  v6 = [(ARArchive *)self dataForResourceAtPath:v5];

  return v6;
}

- (BOOL)writeToURL:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = archive_write_new();
  if (v7)
  {
    v8 = v7;
    archive_write_set_format_zip();
    [v6 fileSystemRepresentation];
    if (archive_write_open_filename())
    {
      archive_write_free();
    }

    else
    {
      v16 = [(ARArchive *)self _writeToArchive:v8];
      archive_write_free();
      if (v16)
      {
        LOBYTE(a4) = 1;
        goto LABEL_15;
      }
    }

    v17 = _ARLogGeneral_47();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [v6 path];
      *buf = 138543875;
      v27 = v19;
      v28 = 2048;
      v29 = self;
      v30 = 2113;
      v31 = v20;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to write to archive at path: %{private}@.", buf, 0x20u);
    }

    if (a4)
    {
      v22 = *MEMORY[0x1E696A998];
      v23 = v6;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      goto LABEL_14;
    }
  }

  else
  {
    v9 = _ARLogGeneral_47();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v6 path];
      *buf = 138543875;
      v27 = v11;
      v28 = 2048;
      v29 = self;
      v30 = 2113;
      v31 = v12;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create archive at path: %{private}@.", buf, 0x20u);
    }

    if (a4)
    {
      v24 = *MEMORY[0x1E696A588];
      v13 = ARKitCoreBundle();
      v14 = [v13 localizedStringForKey:@"Unable to create archive." value:&stru_1F4208A80 table:@"Localizable"];
      v25 = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];

LABEL_14:
      *a4 = ARErrorWithCodeAndUserInfo(500, v15);

      LOBYTE(a4) = 0;
    }
  }

LABEL_15:

  return a4;
}

- (id)dataRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = archive_write_new();
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_new();
    archive_write_set_format_zip();
    if (archive_write_open())
    {
      archive_write_free();
    }

    else
    {
      v8 = [(ARArchive *)self _writeToArchive:v4];
      archive_write_free();
      if (v8)
      {
        v5 = v5;
        v9 = v5;
        goto LABEL_12;
      }
    }

    v7 = _ARLogGeneral_47();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v13 = 138543618;
      v14 = v11;
      v15 = 2048;
      v16 = self;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to write archive to memory", &v13, 0x16u);
    }

    goto LABEL_10;
  }

  v5 = _ARLogGeneral_47();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v13 = 138543618;
    v14 = v7;
    v15 = 2048;
    v16 = self;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create archive.", &v13, 0x16u);
LABEL_10:
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (BOOL)_loadArchiveFromMemory:(id)a3 error:(id *)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    if (!a4)
    {
LABEL_15:
      v21 = 0;
      goto LABEL_16;
    }

    v39 = *MEMORY[0x1E696A588];
    v12 = ARKitCoreBundle();
    v13 = [v12 localizedStringForKey:@"Unable to read archive from memory." value:&stru_1F4208A80 table:@"Localizable"];
    v40[0] = v13;
    v14 = MEMORY[0x1E695DF20];
    v15 = v40;
    v16 = &v39;
LABEL_14:
    v20 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];

    *a4 = ARErrorWithCodeAndUserInfo(500, v20);

    goto LABEL_15;
  }

  v7 = [(ARArchive *)self _createArchiveForReading];
  if (!v7)
  {
    v17 = _ARLogGeneral_47();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138543618;
      v36 = v19;
      v37 = 2048;
      v38 = self;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Cannot read archive from memory", buf, 0x16u);
    }

    if (!a4)
    {
      goto LABEL_15;
    }

    v33 = *MEMORY[0x1E696A588];
    v12 = ARKitCoreBundle();
    v13 = [v12 localizedStringForKey:@"Unable to read archive from memory." value:&stru_1F4208A80 table:@"Localizable"];
    v34 = v13;
    v14 = MEMORY[0x1E695DF20];
    v15 = &v34;
    v16 = &v33;
    goto LABEL_14;
  }

  v8 = v7;
  [v6 bytes];
  [v6 length];
  if (archive_read_open_memory())
  {
    archive_read_free();
    v9 = _ARLogGeneral_47();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138543618;
      v36 = v11;
      v37 = 2048;
      v38 = self;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Cannot read archive from memory", buf, 0x16u);
    }

    if (!a4)
    {
      goto LABEL_15;
    }

    v31 = *MEMORY[0x1E696A588];
    v12 = ARKitCoreBundle();
    v13 = [v12 localizedStringForKey:@"Unable to read archive from memory." value:&stru_1F4208A80 table:@"Localizable"];
    v32 = v13;
    v14 = MEMORY[0x1E695DF20];
    v15 = &v32;
    v16 = &v31;
    goto LABEL_14;
  }

  v21 = [(ARArchive *)self _readDataFromArchive:v8];
  if (!v21)
  {
    v23 = _ARLogGeneral_47();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138543618;
      v36 = v25;
      v37 = 2048;
      v38 = self;
      _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Cannot read archive from memory", buf, 0x16u);
    }

    if (a4)
    {
      v29 = *MEMORY[0x1E696A588];
      v26 = ARKitCoreBundle();
      v27 = [v26 localizedStringForKey:@"Unable to read archive from memory." value:&stru_1F4208A80 table:{@"Localizable", v29}];
      v30 = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

      *a4 = ARErrorWithCodeAndUserInfo(500, v28);
    }
  }

  archive_read_free();
LABEL_16:

  return v21;
}

- (BOOL)_loadArchiveFromURL:(id)a3 error:(id *)a4
{
  v47[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v18 = _ARLogGeneral_47();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138543618;
      v41 = v20;
      v42 = 2048;
      v43 = self;
      _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Cannot read archive from nil URL", buf, 0x16u);
    }

    if (!a4)
    {
      goto LABEL_17;
    }

    v46 = *MEMORY[0x1E696A998];
    v47[0] = @"NULL";
    v15 = MEMORY[0x1E695DF20];
    v16 = v47;
    v17 = &v46;
    goto LABEL_16;
  }

  v7 = [(ARArchive *)self _createArchiveForReading];
  if (!v7)
  {
    v21 = _ARLogGeneral_47();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [v6 path];
      *buf = 138543875;
      v41 = v23;
      v42 = 2048;
      v43 = self;
      v44 = 2113;
      v45 = v24;
      _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to read archive at path: %{private}@.", buf, 0x20u);
    }

    if (!a4)
    {
      goto LABEL_17;
    }

    v38 = *MEMORY[0x1E696A998];
    v39 = v6;
    v15 = MEMORY[0x1E695DF20];
    v16 = &v39;
    v17 = &v38;
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v6 path];
  [v9 UTF8String];
  open_filename = archive_read_open_filename();

  if (open_filename)
  {
    archive_read_free();
    v11 = _ARLogGeneral_47();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v6 path];
      *buf = 138543875;
      v41 = v13;
      v42 = 2048;
      v43 = self;
      v44 = 2113;
      v45 = v14;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to read archive at path: %{private}@.", buf, 0x20u);
    }

    if (!a4)
    {
      goto LABEL_17;
    }

    v36 = *MEMORY[0x1E696A998];
    v37 = v6;
    v15 = MEMORY[0x1E695DF20];
    v16 = &v37;
    v17 = &v36;
LABEL_16:
    v25 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    *a4 = ARErrorWithCodeAndUserInfo(500, v25);

LABEL_17:
    v26 = 0;
    goto LABEL_18;
  }

  v26 = [(ARArchive *)self _readDataFromArchive:v8];
  if (!v26)
  {
    v28 = _ARLogGeneral_47();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = [v6 path];
      *buf = 138543875;
      v41 = v30;
      v42 = 2048;
      v43 = self;
      v44 = 2113;
      v45 = v31;
      _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to read archive at path: %{private}@.", buf, 0x20u);
    }

    if (a4)
    {
      v34[0] = *MEMORY[0x1E696A588];
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", archive_error_string()];
      v34[1] = *MEMORY[0x1E696A998];
      v35[0] = v32;
      v35[1] = v6;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

      *a4 = ARErrorWithCodeAndUserInfo(500, v33);
    }
  }

  archive_read_free();
LABEL_18:

  return v26;
}

- (BOOL)_writeToArchive:(archive *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_dataByPath;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_dataByPath objectForKeyedSubscript:v9, v15];
        archive_entry_new();
        [v9 fileSystemRepresentation];
        archive_entry_set_pathname();
        [v10 length];
        archive_entry_set_size();
        archive_entry_set_filetype();
        archive_entry_set_perm();
        time(0);
        archive_entry_set_birthtime();
        archive_entry_set_ctime();
        archive_entry_set_mtime();
        archive_entry_set_atime();
        if (archive_write_header())
        {
          archive_entry_free();
LABEL_13:

          v13 = 0;
          goto LABEL_14;
        }

        [v10 bytes];
        [v10 length];
        v11 = archive_write_data();
        v12 = [v10 length];
        archive_entry_free();
        if (v11 != v12)
        {
          goto LABEL_13;
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v13 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 1;
  }

LABEL_14:

  return v13;
}

- (archive)_createArchiveForReading
{
  v2 = archive_read_new();
  if (v2)
  {
    archive_read_support_format_zip();
    archive_read_support_filter_compress();
  }

  return v2;
}

- (BOOL)_readDataFromArchive:(archive *)a3
{
  while (1)
  {
    next_header = archive_read_next_header();
    if (next_header)
    {
      break;
    }

    if (archive_entry_filetype() == 0x8000 && [(ARArchive *)self _readDataForEntry:0 archive:a3])
    {
      next_header = 1;
      return next_header < 2;
    }
  }

  return next_header < 2;
}

- (BOOL)_readDataForEntry:(archive_entry *)a3 archive:(archive *)a4
{
  v4 = (MEMORY[0x1EEE9AC00])(self, a2, a3, a4);
  v33 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:archive_entry_pathname()];
  if (!v5)
  {
    if (ARShouldUseLogTypeError_onceToken_53 != -1)
    {
      [ARArchive _readDataForEntry:archive:];
    }

    v8 = ARShouldUseLogTypeError_internalOSVersion_53;
    v9 = _ARLogGeneral_47();
    v6 = v9;
    if (v8 == 1)
    {
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138543618;
      v30 = v11;
      v31 = 2048;
      v32 = v4;
      v12 = "%{public}@ <%p>: Unable to construct path";
      v13 = v6;
      v14 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

      v22 = objc_opt_class();
      v11 = NSStringFromClass(v22);
      *buf = 138543618;
      v30 = v11;
      v31 = 2048;
      v32 = v4;
      v12 = "Error: %{public}@ <%p>: Unable to construct path";
      v13 = v6;
      v14 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v13, v14, v12, buf, 0x16u);
    goto LABEL_22;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF88]);
  data = archive_read_data();
  if (data >= 1)
  {
    do
    {
      [v6 appendBytes:buf length:data];
      data = archive_read_data();
    }

    while (data > 0);
  }

  if (data < 0)
  {
    if (ARShouldUseLogTypeError_onceToken_53 != -1)
    {
      [ARArchive _readDataForEntry:archive:];
    }

    v15 = ARShouldUseLogTypeError_internalOSVersion_53;
    v16 = _ARLogGeneral_47();
    v11 = v16;
    if (v15 == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v25 = 138543618;
        v26 = v18;
        v27 = 2048;
        v28 = v4;
        v19 = "%{public}@ <%p>: Could not read data to buffer.";
        v20 = v11;
        v21 = OS_LOG_TYPE_ERROR;
LABEL_21:
        _os_log_impl(&dword_1C241C000, v20, v21, v19, &v25, 0x16u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v18 = NSStringFromClass(v23);
      v25 = 138543618;
      v26 = v18;
      v27 = 2048;
      v28 = v4;
      v19 = "Error: %{public}@ <%p>: Could not read data to buffer.";
      v20 = v11;
      v21 = OS_LOG_TYPE_INFO;
      goto LABEL_21;
    }

LABEL_22:

    goto LABEL_23;
  }

  [*(v4 + 8) setObject:v6 forKeyedSubscript:v5];
LABEL_23:

  return 0;
}

@end
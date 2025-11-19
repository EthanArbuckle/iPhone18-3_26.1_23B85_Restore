@interface _HKZipArchiveExtractor
- (BOOL)enumerateEntriesWithError:(id *)a3 block:(id)a4;
- (_HKZipArchiveExtractor)init;
- (_HKZipArchiveExtractor)initWithData:(id)a3;
- (_HKZipArchiveExtractor)initWithFileHandle:(id)a3;
- (_HKZipArchiveExtractor)initWithPathname:(id)a3;
- (_HKZipArchiveExtractor)initWithURL:(id)a3;
- (id)_initWithData:(id)a3 fileHandle:(id)a4 path:(id)a5;
- (id)description;
- (id)numberOfEntriesWithError:(id *)a3;
@end

@implementation _HKZipArchiveExtractor

- (_HKZipArchiveExtractor)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)_initWithData:(id)a3 fileHandle:(id)a4 path:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if ((!v9 || v10 || v11) && (v9 || (v10 == 0) == (v11 == 0)))
  {
    [_HKZipArchiveExtractor _initWithData:fileHandle:path:];
  }

  v18.receiver = self;
  v18.super_class = _HKZipArchiveExtractor;
  v13 = [(_HKZipArchiveExtractor *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_archive = 0;
    objc_storeStrong(&v13->_archiveData, a3);
    objc_storeStrong(&v14->_fileHandle, a4);
    v15 = [v12 copy];
    pathname = v14->_pathname;
    v14->_pathname = v15;

    v14->_enumerationCount = 0;
  }

  return v14;
}

- (_HKZipArchiveExtractor)initWithPathname:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "pathname"}];
  }

  if (![v4 length])
  {
    [_HKZipArchiveExtractor initWithPathname:];
  }

  v5 = [(_HKZipArchiveExtractor *)self _initWithData:0 fileHandle:0 path:v4];

  return v5;
}

- (_HKZipArchiveExtractor)initWithURL:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "url"}];
  }

  v5 = [v4 path];
  v6 = v5;
  if (!v5 || ![v5 length])
  {
    [_HKZipArchiveExtractor initWithURL:];
  }

  v7 = [(_HKZipArchiveExtractor *)self _initWithData:0 fileHandle:0 path:v6];

  return v7;
}

- (_HKZipArchiveExtractor)initWithFileHandle:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "fileHandle"}];
  }

  v5 = [(_HKZipArchiveExtractor *)self _initWithData:0 fileHandle:v4 path:0];

  return v5;
}

- (_HKZipArchiveExtractor)initWithData:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "archiveData"}];
  }

  if (![v4 length])
  {
    [_HKZipArchiveExtractor initWithData:];
  }

  v5 = [(_HKZipArchiveExtractor *)self _initWithData:v4 fileHandle:0 path:0];

  return v5;
}

- (id)description
{
  pathname = self->_pathname;
  if (pathname)
  {
    goto LABEL_2;
  }

  if (self->_archiveData)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ length %lu", objc_opt_class(), -[NSData length](self->_archiveData, "length")];
    goto LABEL_5;
  }

  pathname = self->_fileHandle;
  if (pathname)
  {
LABEL_2:
    v4 = pathname;
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_6:
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p %@>", objc_opt_class(), self, v5];

  return v6;
}

- (BOOL)enumerateEntriesWithError:(id *)a3 block:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (self->_isEnumeratingEntries)
  {
    v8 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"self" class:objc_opt_class() selector:a2 format:@"Already enumerating this archive"];
    v9 = v8;
    if (v8)
    {
      if (a3)
      {
        v10 = v8;
        *a3 = v9;
      }

      else
      {
        _HKLogDroppedError(v8);
      }
    }

    goto LABEL_27;
  }

  self->_isEnumeratingEntries = 1;
  ++self->_enumerationCount;
  self->_archive = archive_read_new();
  if (!archive_read_support_format_zip())
  {
    archive = self->_archive;
    if (!archive_read_support_filter_all())
    {
      archiveData = self->_archiveData;
      if (archiveData)
      {
        v13 = self->_archive;
        [(NSData *)archiveData bytes];
        [(NSData *)self->_archiveData length];
        open_memory = archive_read_open_memory();
LABEL_15:
        if (!open_memory)
        {
          v32 = 0;
          while (1)
          {
            v19 = self->_archive;
            next_header = archive_read_next_header();
            if (next_header)
            {
              break;
            }

            if (archive_entry_filetype() == 0x8000)
            {
              v31 = 0;
              v21 = objc_autoreleasePoolPush();
              v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:archive_entry_pathname()];
              v23 = [_HKZipArchiveEntry alloc];
              v24 = [(_HKZipArchiveEntry *)v23 initWithExtractor:self currentEntry:v32 pathname:v22];
              v7[2](v7, v24, &v31);
              v25 = [(_HKZipArchiveEntry *)v24 didReadEntryData];

              objc_autoreleasePoolPop(v21);
              if (v31)
              {
                next_header = 0;
                break;
              }

              if (!v25)
              {
                v26 = self->_archive;
                next_header = archive_read_data_skip();
                if (next_header)
                {
                  break;
                }
              }
            }
          }

          if (next_header < 2)
          {
            v27 = 1;
            goto LABEL_28;
          }
        }

        goto LABEL_26;
      }

      fileHandle = self->_fileHandle;
      if (fileHandle)
      {
        v16 = self->_archive;
        [(NSFileHandle *)fileHandle fileDescriptor];
        open_memory = archive_read_open_fd();
        goto LABEL_15;
      }

      pathname = self->_pathname;
      if (pathname)
      {
        v18 = self->_archive;
        [(NSString *)pathname UTF8String];
        open_memory = archive_read_open_filename();
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  v28 = self->_archive;
  [MEMORY[0x1E696ABC0] hk_assignError:a3 code:920 format:{@"Unable to open/read data: %s", archive_error_string()}];
LABEL_27:
  v27 = 0;
LABEL_28:
  if (self->_archive)
  {
    archive_read_free();
    self->_archive = 0;
  }

  if (self->_isEnumeratingEntries)
  {
    self->_isEnumeratingEntries = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)numberOfEntriesWithError:(id *)a3
{
  numberOfEntries = self->_numberOfEntries;
  if (numberOfEntries)
  {
    v4 = numberOfEntries;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51___HKZipArchiveExtractor_numberOfEntriesWithError___block_invoke;
    v9[3] = &unk_1E7379F48;
    v9[4] = &v10;
    if ([(_HKZipArchiveExtractor *)self enumerateEntriesWithError:a3 block:v9])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:v11[3]];
      v7 = self->_numberOfEntries;
      self->_numberOfEntries = v6;

      v4 = self->_numberOfEntries;
    }

    else
    {
      v4 = 0;
    }

    _Block_object_dispose(&v10, 8);
  }

  return v4;
}

- (void)_initWithData:fileHandle:path:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"((data != nil) && (fileHandle == nil) && (path == nil)) || ((data == nil) && (fileHandle != nil) && (path == nil)) || ((data == nil) && (fileHandle == nil) && (path != nil))" object:? file:? lineNumber:? description:?];
}

- (void)initWithPathname:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[pathname length] > 0" object:? file:? lineNumber:? description:?];
}

- (void)initWithURL:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"(path != nil) && (path.length > 0)" object:? file:? lineNumber:? description:?];
}

- (void)initWithData:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"archiveData.length > 0" object:? file:? lineNumber:? description:?];
}

- (void)enumerateEntriesWithError:(uint64_t)a3 block:(NSObject *)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  v6 = a1;
  _os_log_fault_impl(&dword_19197B000, a4, OS_LOG_TYPE_FAULT, "Caught exception in %{public}@: %{public}@", a3, 0x16u);
}

@end
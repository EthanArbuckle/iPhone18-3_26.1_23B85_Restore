@interface _HKArchiveCreator
+ (BOOL)archiveContentsOfDirectoryAtURL:(id)a3 archiveURL:(id)a4 error:(id *)a5;
- (_HKArchiveCreator)initWithURL:(id)a3 fileHandle:(id)a4 archiveType:(int64_t)a5;
- (int64_t)writeData:(const void *)a3 ofLength:(unint64_t)a4;
- (void)_addDataOfSize:(int64_t)a3 toPathInArchive:(id)a4 fromByteProvider:(id)a5;
- (void)_closeArchiveWithError:(id)a3;
- (void)addDataToArchive:(id)a3 pathInArchive:(id)a4;
- (void)addFileToArchive:(id)a3 pathInArchive:(id)a4;
- (void)dealloc;
@end

@implementation _HKArchiveCreator

- (_HKArchiveCreator)initWithURL:(id)a3 fileHandle:(id)a4 archiveType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (v8 | v9)
  {
    v23.receiver = self;
    v23.super_class = _HKArchiveCreator;
    v11 = [(_HKArchiveCreator *)&v23 init];
    if (!v11)
    {
      goto LABEL_13;
    }

    v11->_archive = archive_write_new();
    if (a5)
    {
      goto LABEL_13;
    }

    archive_write_set_format_zip();
    if (v8)
    {
      v12 = [v8 copy];
      archiveURL = v11->_archiveURL;
      v11->_archiveURL = v12;

      archive = v11->_archive;
      [(NSURL *)v11->_archiveURL fileSystemRepresentation];
      v15 = archive_write_open_filename();
    }

    else
    {
      if (!v9)
      {
        v19 = 4294967266;
LABEL_12:
        v20 = v11->_archive;
        v21 = [MEMORY[0x1E696ABC0] hk_error:102 format:{@"Failed to open archive: %s (%d)", archive_error_string(), v19}];
        [(_HKArchiveCreator *)v11 _closeArchiveWithError:v21];

LABEL_13:
        self = v11;
        v10 = self;
        goto LABEL_14;
      }

      v16 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:dup(objc_msgSend(v9 closeOnDealloc:{"fileDescriptor")), 1}];
      fileHandle = v11->_fileHandle;
      v11->_fileHandle = v16;

      v18 = v11->_archive;
      [(NSFileHandle *)v11->_fileHandle fileDescriptor];
      v15 = archive_write_open_fd();
    }

    v19 = v15;
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = 0;
LABEL_14:

  return v10;
}

+ (BOOL)archiveContentsOfDirectoryAtURL:(id)a3 archiveURL:(id)a4 error:(id *)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v43 = 0;
  v10 = [v7 path];
  v11 = [v9 fileExistsAtPath:v10 isDirectory:&v43];

  if (v11)
  {
    if (v43)
    {
      v34 = a5;
      v36 = v8;
      v12 = [[_HKArchiveCreator alloc] initWithURL:v8 archiveType:0];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __70___HKArchiveCreator_archiveContentsOfDirectoryAtURL_archiveURL_error___block_invoke;
      v41[3] = &unk_1E737A220;
      v13 = v12;
      v42 = v13;
      v35 = v9;
      [v9 enumeratorAtURL:v7 includingPropertiesForKeys:0 options:16 errorHandler:v41];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v14 = v40 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v38;
LABEL_5:
        v18 = 0;
        while (1)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v37 + 1) + 8 * v18);
          if (![(_HKArchiveCreator *)v13 archiveIsValid])
          {
            break;
          }

          if (([v19 hasDirectoryPath] & 1) == 0)
          {
            v20 = MEMORY[0x1E695DFF8];
            v21 = [v19 relativePath];
            v22 = [v20 fileURLWithPath:v21];

            [(_HKArchiveCreator *)v13 addFileToArchive:v19 pathInArchive:v22];
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v37 objects:v44 count:16];
            if (v16)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      v23 = [(_HKArchiveCreator *)v13 archiveIsValid];
      if (v23)
      {
        [(_HKArchiveCreator *)v13 closeArchive];
        v9 = v35;
LABEL_33:

        goto LABEL_34;
      }

      v27 = [(_HKArchiveCreator *)v13 error];
      v28 = v27;
      if (v27)
      {
        v29 = v27;
        v30 = v34;
      }

      else
      {
        v29 = [MEMORY[0x1E696ABC0] hk_error:2000 description:@"Unknown error"];
        v30 = v34;
        if (!v29)
        {
          v9 = v35;
          v8 = v36;
LABEL_31:

LABEL_32:
          goto LABEL_33;
        }
      }

      if (v30)
      {
        v31 = v29;
        *v30 = v29;
      }

      else
      {
        _HKLogDroppedError(v29);
      }

      v9 = v35;
      v8 = v36;

      if (v28)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 format:{@"%@ is not a directory", v7}];
  }

  else
  {
    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
    v25 = v24;
    if (v24)
    {
      if (a5)
      {
        v26 = v24;
        *a5 = v25;
      }

      else
      {
        _HKLogDroppedError(v24);
      }
    }
  }

  v23 = 0;
LABEL_34:

  v32 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)dealloc
{
  [(_HKArchiveCreator *)self closeArchive];
  v3.receiver = self;
  v3.super_class = _HKArchiveCreator;
  [(_HKArchiveCreator *)&v3 dealloc];
}

- (int64_t)writeData:(const void *)a3 ofLength:(unint64_t)a4
{
  result = self->_archive;
  if (result)
  {
    return MEMORY[0x1EEE63760]();
  }

  return result;
}

- (void)addFileToArchive:(id)a3 pathInArchive:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(_HKArchiveCreator *)self archiveIsValid])
  {
    if ([v7 isFileURL])
    {
      v9 = [MEMORY[0x1E696AC08] defaultManager];
      v10 = [v7 path];
      v22 = 0;
      v11 = [v9 attributesOfItemAtPath:v10 error:&v22];
      v12 = v22;

      if (v11)
      {
        v21 = 0;
        v13 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:v7 error:&v21];
        v14 = v21;
        if (v13)
        {
          v15 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
          v16 = [v15 longLongValue];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __52___HKArchiveCreator_addFileToArchive_pathInArchive___block_invoke;
          v18[3] = &unk_1E737A248;
          v19 = v13;
          v20 = self;
          [(_HKArchiveCreator *)self _addDataOfSize:v16 toPathInArchive:v8 fromByteProvider:v18];
        }

        else
        {
          [(_HKArchiveCreator *)self _closeArchiveWithError:v14];
        }
      }

      else
      {
        [(_HKArchiveCreator *)self _closeArchiveWithError:v12];
      }
    }

    else
    {
      v17 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"%@ is not a file URL", v7}];
      [(_HKArchiveCreator *)self _closeArchiveWithError:v17];
    }
  }
}

- (void)addDataToArchive:(id)a3 pathInArchive:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52___HKArchiveCreator_addDataToArchive_pathInArchive___block_invoke;
  v10[3] = &unk_1E737A270;
  v11 = v6;
  v9 = v6;
  [(_HKArchiveCreator *)self _addDataOfSize:v8 toPathInArchive:v7 fromByteProvider:v10];
}

- (void)_addDataOfSize:(int64_t)a3 toPathInArchive:(id)a4 fromByteProvider:(id)a5
{
  v13 = a4;
  v8 = a5;
  if ([(_HKArchiveCreator *)self archiveIsValid])
  {
    archive_entry_new();
    *[v13 fileSystemRepresentation];
    archive_entry_set_pathname();
    archive_entry_set_size();
    archive_entry_set_filetype();
    archive_entry_set_perm();
    time(0);
    archive_entry_set_birthtime();
    archive_entry_set_ctime();
    archive_entry_set_mtime();
    archive_entry_set_atime();
    archive = self->_archive;
    if (archive_write_header())
    {
      v10 = [MEMORY[0x1E696ABC0] hk_error:102 description:@"Failed to write archive header"];
    }

    else
    {
      v11 = v8[2](v8, self);
      if (v11 >= a3)
      {
LABEL_7:
        archive_entry_free();
        goto LABEL_8;
      }

      v10 = [MEMORY[0x1E696ABC0] hk_error:102 format:{@"Wrote %ld bytes, expected %ld", v11, a3}];
    }

    v12 = v10;
    [(_HKArchiveCreator *)self _closeArchiveWithError:v10];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)_closeArchiveWithError:(id)a3
{
  v5 = a3;
  if (self->_archive)
  {
    archive_write_close();
    archive = self->_archive;
    archive_write_free();
    self->_archive = 0;
    if (v5)
    {
      _HKInitializeLogging();
      v7 = HKLogInfrastructure();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(_HKArchiveCreator *)self _closeArchiveWithError:v5, v7];
      }
    }

    objc_storeStrong(&self->_error, a3);
  }
}

- (void)_closeArchiveWithError:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 138412546;
  v8 = objc_opt_class();
  v9 = 2114;
  v10 = a2;
  v5 = v8;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "%@: closing archive unexpectedly: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end
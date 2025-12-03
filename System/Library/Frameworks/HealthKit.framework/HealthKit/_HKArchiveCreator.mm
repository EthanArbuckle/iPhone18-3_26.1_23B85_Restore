@interface _HKArchiveCreator
+ (BOOL)archiveContentsOfDirectoryAtURL:(id)l archiveURL:(id)rL error:(id *)error;
- (_HKArchiveCreator)initWithURL:(id)l fileHandle:(id)handle archiveType:(int64_t)type;
- (int64_t)writeData:(const void *)data ofLength:(unint64_t)length;
- (void)_addDataOfSize:(int64_t)size toPathInArchive:(id)archive fromByteProvider:(id)provider;
- (void)_closeArchiveWithError:(id)error;
- (void)addDataToArchive:(id)archive pathInArchive:(id)inArchive;
- (void)addFileToArchive:(id)archive pathInArchive:(id)inArchive;
- (void)dealloc;
@end

@implementation _HKArchiveCreator

- (_HKArchiveCreator)initWithURL:(id)l fileHandle:(id)handle archiveType:(int64_t)type
{
  lCopy = l;
  handleCopy = handle;
  if (lCopy | handleCopy)
  {
    v23.receiver = self;
    v23.super_class = _HKArchiveCreator;
    v11 = [(_HKArchiveCreator *)&v23 init];
    if (!v11)
    {
      goto LABEL_13;
    }

    v11->_archive = archive_write_new();
    if (type)
    {
      goto LABEL_13;
    }

    archive_write_set_format_zip();
    if (lCopy)
    {
      v12 = [lCopy copy];
      archiveURL = v11->_archiveURL;
      v11->_archiveURL = v12;

      archive = v11->_archive;
      [(NSURL *)v11->_archiveURL fileSystemRepresentation];
      v15 = archive_write_open_filename();
    }

    else
    {
      if (!handleCopy)
      {
        v19 = 4294967266;
LABEL_12:
        v20 = v11->_archive;
        v21 = [MEMORY[0x1E696ABC0] hk_error:102 format:{@"Failed to open archive: %s (%d)", archive_error_string(), v19}];
        [(_HKArchiveCreator *)v11 _closeArchiveWithError:v21];

LABEL_13:
        self = v11;
        selfCopy = self;
        goto LABEL_14;
      }

      v16 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:dup(objc_msgSend(handleCopy closeOnDealloc:{"fileDescriptor")), 1}];
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

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

+ (BOOL)archiveContentsOfDirectoryAtURL:(id)l archiveURL:(id)rL error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v43 = 0;
  path = [lCopy path];
  v11 = [defaultManager fileExistsAtPath:path isDirectory:&v43];

  if (v11)
  {
    if (v43)
    {
      errorCopy = error;
      v36 = rLCopy;
      v12 = [[_HKArchiveCreator alloc] initWithURL:rLCopy archiveType:0];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __70___HKArchiveCreator_archiveContentsOfDirectoryAtURL_archiveURL_error___block_invoke;
      v41[3] = &unk_1E737A220;
      v13 = v12;
      v42 = v13;
      v35 = defaultManager;
      [defaultManager enumeratorAtURL:lCopy includingPropertiesForKeys:0 options:16 errorHandler:v41];
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
            relativePath = [v19 relativePath];
            v22 = [v20 fileURLWithPath:relativePath];

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

      archiveIsValid = [(_HKArchiveCreator *)v13 archiveIsValid];
      if (archiveIsValid)
      {
        [(_HKArchiveCreator *)v13 closeArchive];
        defaultManager = v35;
LABEL_33:

        goto LABEL_34;
      }

      error = [(_HKArchiveCreator *)v13 error];
      v28 = error;
      if (error)
      {
        v29 = error;
        v30 = errorCopy;
      }

      else
      {
        v29 = [MEMORY[0x1E696ABC0] hk_error:2000 description:@"Unknown error"];
        v30 = errorCopy;
        if (!v29)
        {
          defaultManager = v35;
          rLCopy = v36;
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

      defaultManager = v35;
      rLCopy = v36;

      if (v28)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"%@ is not a directory", lCopy}];
  }

  else
  {
    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
    v25 = v24;
    if (v24)
    {
      if (error)
      {
        v26 = v24;
        *error = v25;
      }

      else
      {
        _HKLogDroppedError(v24);
      }
    }
  }

  archiveIsValid = 0;
LABEL_34:

  v32 = *MEMORY[0x1E69E9840];
  return archiveIsValid;
}

- (void)dealloc
{
  [(_HKArchiveCreator *)self closeArchive];
  v3.receiver = self;
  v3.super_class = _HKArchiveCreator;
  [(_HKArchiveCreator *)&v3 dealloc];
}

- (int64_t)writeData:(const void *)data ofLength:(unint64_t)length
{
  result = self->_archive;
  if (result)
  {
    return MEMORY[0x1EEE63760]();
  }

  return result;
}

- (void)addFileToArchive:(id)archive pathInArchive:(id)inArchive
{
  archiveCopy = archive;
  inArchiveCopy = inArchive;
  if ([(_HKArchiveCreator *)self archiveIsValid])
  {
    if ([archiveCopy isFileURL])
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [archiveCopy path];
      v22 = 0;
      v11 = [defaultManager attributesOfItemAtPath:path error:&v22];
      v12 = v22;

      if (v11)
      {
        v21 = 0;
        v13 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:archiveCopy error:&v21];
        v14 = v21;
        if (v13)
        {
          v15 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
          longLongValue = [v15 longLongValue];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __52___HKArchiveCreator_addFileToArchive_pathInArchive___block_invoke;
          v18[3] = &unk_1E737A248;
          v19 = v13;
          selfCopy = self;
          [(_HKArchiveCreator *)self _addDataOfSize:longLongValue toPathInArchive:inArchiveCopy fromByteProvider:v18];
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
      v17 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"%@ is not a file URL", archiveCopy}];
      [(_HKArchiveCreator *)self _closeArchiveWithError:v17];
    }
  }
}

- (void)addDataToArchive:(id)archive pathInArchive:(id)inArchive
{
  archiveCopy = archive;
  inArchiveCopy = inArchive;
  v8 = [archiveCopy length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52___HKArchiveCreator_addDataToArchive_pathInArchive___block_invoke;
  v10[3] = &unk_1E737A270;
  v11 = archiveCopy;
  v9 = archiveCopy;
  [(_HKArchiveCreator *)self _addDataOfSize:v8 toPathInArchive:inArchiveCopy fromByteProvider:v10];
}

- (void)_addDataOfSize:(int64_t)size toPathInArchive:(id)archive fromByteProvider:(id)provider
{
  archiveCopy = archive;
  providerCopy = provider;
  if ([(_HKArchiveCreator *)self archiveIsValid])
  {
    archive_entry_new();
    *[archiveCopy fileSystemRepresentation];
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
      v11 = providerCopy[2](providerCopy, self);
      if (v11 >= size)
      {
LABEL_7:
        archive_entry_free();
        goto LABEL_8;
      }

      v10 = [MEMORY[0x1E696ABC0] hk_error:102 format:{@"Wrote %ld bytes, expected %ld", v11, size}];
    }

    v12 = v10;
    [(_HKArchiveCreator *)self _closeArchiveWithError:v10];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)_closeArchiveWithError:(id)error
{
  errorCopy = error;
  if (self->_archive)
  {
    archive_write_close();
    archive = self->_archive;
    archive_write_free();
    self->_archive = 0;
    if (errorCopy)
    {
      _HKInitializeLogging();
      v7 = HKLogInfrastructure();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(_HKArchiveCreator *)self _closeArchiveWithError:errorCopy, v7];
      }
    }

    objc_storeStrong(&self->_error, error);
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
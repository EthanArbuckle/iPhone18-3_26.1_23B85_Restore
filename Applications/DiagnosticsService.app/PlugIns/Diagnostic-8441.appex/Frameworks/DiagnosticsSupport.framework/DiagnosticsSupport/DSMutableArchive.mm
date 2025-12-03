@interface DSMutableArchive
+ (BOOL)extractArchive:(id)archive toDirectory:(id)directory;
+ (BOOL)extractEntry:(archive *)entry toArchive:(archive *)archive;
+ (id)archive;
- (BOOL)_addDirectoryToContents:(id)contents searchQueue:(id)queue flatten:(BOOL)flatten error:(id *)error;
- (BOOL)_addFile:(id)file archive:(archive *)archive error:(id *)error;
- (BOOL)_writeArchive:(archive *)archive error:(id *)error;
- (BOOL)archiveAsFile:(id)file error:(id *)error;
- (BOOL)archiveAsFileUsingDescriptor:(int)descriptor error:(id *)error;
- (DSMutableArchive)init;
- (id)archiveAsDataWithError:(id *)error;
- (id)archiveAsTempDirectoryWithName:(id)name error:(id *)error;
- (id)archiveAsTempFileWithTemplate:(id)template directory:(id)directory suffix:(id)suffix error:(id *)error;
- (void)_setFormatOnArchive:(archive *)archive;
@end

@implementation DSMutableArchive

+ (id)archive
{
  v2 = objc_alloc_init(DSMutableArchive);

  return v2;
}

- (DSMutableArchive)init
{
  v6.receiver = self;
  v6.super_class = DSMutableArchive;
  v2 = [(DSMutableArchive *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    tableOfContents = v2->_tableOfContents;
    v2->_tableOfContents = v3;

    v2->_format = 0;
  }

  return v2;
}

- (BOOL)_addDirectoryToContents:(id)contents searchQueue:(id)queue flatten:(BOOL)flatten error:(id *)error
{
  contentsCopy = contents;
  queueCopy = queue;
  v11 = +[NSFileManager defaultManager];
  sourceUrl = [contentsCopy sourceUrl];
  v31 = 0;
  v13 = [v11 contentsOfDirectoryAtURL:sourceUrl includingPropertiesForKeys:0 options:0 error:&v31];
  v14 = v31;

  if (v13)
  {
    prefix = [contentsCopy prefix];
    v26 = v14;
    if (([contentsCopy root] & 1) == 0 && !flatten)
    {
      sourceUrl2 = [contentsCopy sourceUrl];
      lastPathComponent = [sourceUrl2 lastPathComponent];
      v18 = [prefix stringByAppendingPathComponent:lastPathComponent];

      prefix = v18;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = v13;
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        v23 = 0;
        do
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [DSArchivePath archivePathWithSource:*(*(&v27 + 1) + 8 * v23) prefix:prefix root:0];
          [queueCopy addObject:v24];

          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v21);
    }

    v14 = v26;
  }

  else
  {
    if (error)
    {
      *error = [NSError errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:5 userInfo:0];
    }

    prefix = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(prefix, OS_LOG_TYPE_ERROR))
    {
      [DSMutableArchive _addDirectoryToContents:contentsCopy searchQueue:? flatten:? error:?];
    }
  }

  return v13 != 0;
}

- (BOOL)_addFile:(id)file archive:(archive *)archive error:(id *)error
{
  fileCopy = file;
  sourceUrl = [fileCopy sourceUrl];
  path = [sourceUrl path];

  prefix = [fileCopy prefix];
  sourceUrl2 = [fileCopy sourceUrl];
  lastPathComponent = [sourceUrl2 lastPathComponent];
  v12 = [prefix stringByAppendingPathComponent:lastPathComponent];

  v13 = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = path;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Archiving [%@] as [%@]", buf, 0x16u);
  }

  v14 = open([path UTF8String], 0);
  if (v14 == -1)
  {
    v15 = [NSError errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:3 userInfo:0];
    v20 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [DSMutableArchive _addFile:archive:error:];
    }

    if (v15)
    {
      v19 = 0;
      goto LABEL_29;
    }
  }

  if (fstat(v14, &v24))
  {
    v15 = [NSError errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:2 userInfo:0];
    v16 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [DSMutableArchive _addFile:archive:error:];
    }

    if (v15)
    {
      goto LABEL_26;
    }
  }

  v17 = archive_entry_new();
  if (!v17)
  {
    v15 = [NSError errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:8 userInfo:0];
    v21 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [DSMutableArchive _addFile:v21 archive:? error:?];
    }

    if (v15)
    {
LABEL_26:
      v19 = 0;
      goto LABEL_27;
    }
  }

  archive_entry_copy_stat();
  [v12 UTF8String];
  archive_entry_set_pathname();
  if (!archive_write_header())
  {
    goto LABEL_19;
  }

  v15 = [NSError errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:9 userInfo:0];
  v18 = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [DSMutableArchive _addFile:archive:error:];
  }

  if (!v15)
  {
LABEL_19:
    bzero(buf, 0x2000uLL);
    if (read(v14, buf, 0x2000uLL) >= 1)
    {
      do
      {
        archive_write_data();
      }

      while (read(v14, buf, 0x2000uLL) > 0);
    }

    v15 = 0;
    v19 = 1;
    if (!v17)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  v19 = 0;
  if (v17)
  {
LABEL_22:
    archive_entry_free();
  }

LABEL_27:
  if ((v14 & 0x80000000) == 0)
  {
    close(v14);
  }

LABEL_29:
  if (error)
  {
    v22 = v15;
    *error = v15;
  }

  return v19;
}

- (void)_setFormatOnArchive:(archive *)archive
{
  format = [(DSMutableArchive *)self format];
  if (format == 2)
  {
    archive_write_add_filter_gzip();
    goto LABEL_5;
  }

  if (format == 1)
  {
    archive_write_add_filter_compress();
LABEL_5:

    _archive_write_set_format_cpio(archive);
    return;
  }

  archive_write_add_filter_gzip();

  _archive_write_set_format_ustar(archive);
}

- (BOOL)_writeArchive:(archive *)archive error:(id *)error
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  tableOfContents = [(DSMutableArchive *)self tableOfContents];
  v8 = [tableOfContents countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(tableOfContents);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (![(DSMutableArchive *)self _addFile:v12 archive:archive error:error])
        {
          v15 = DiagnosticLogHandleForCategory(3);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            [DSMutableArchive _writeArchive:v12 error:v15];
          }

          goto LABEL_17;
        }
      }

      v9 = [tableOfContents countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = archive_write_free();
  if (!v13)
  {
    return 1;
  }

  v14 = v13;
  if (error)
  {
    *error = [NSError errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:10 userInfo:0];
  }

  tableOfContents = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(tableOfContents, OS_LOG_TYPE_FAULT))
  {
    [DSMutableArchive _writeArchive:v14 error:tableOfContents];
  }

LABEL_17:

  return 0;
}

- (id)archiveAsDataWithError:(id *)error
{
  v5 = archive_write_new();
  [(DSMutableArchive *)self _setFormatOnArchive:v5];
  if (archive_write_open())
  {
    v6 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DSMutableArchive archiveAsDataWithError:];
    }

    if (error)
    {
      v7 = [NSError errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:1 userInfo:0];
      v8 = v7;
      dataBuffer = 0;
      *error = v7;
      goto LABEL_9;
    }
  }

  else if ([(DSMutableArchive *)self _writeArchive:v5 error:error])
  {
    dataBuffer = [(DSMutableArchive *)self dataBuffer];
    goto LABEL_9;
  }

  dataBuffer = 0;
LABEL_9:

  return dataBuffer;
}

- (id)archiveAsTempDirectoryWithName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = DiagnosticLogHandleForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = nameCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Archiving as temp directory with name %@", buf, 0xCu);
  }

  v8 = +[NSFileManager defaultManager];
  v9 = NSTemporaryDirectory();
  v10 = [NSURL fileURLWithPath:v9];

  v11 = [v10 URLByAppendingPathComponent:nameCopy];

  path = [v11 path];
  v13 = [v8 fileExistsAtPath:path];

  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = DiagnosticLogHandleForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = v11;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Cleaning up prior temp directory archive at [%@]", buf, 0xCu);
  }

  [v8 removeItemAtURL:v11 error:error];
  if (*error)
  {
    v15 = DiagnosticLogHandleForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [DSMutableArchive archiveAsTempDirectoryWithName:v11 error:error];
    }

    v16 = 0;
  }

  else
  {
LABEL_10:
    [v8 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:error];
    if (!*error)
    {
      v38 = v8;
      v35 = nameCopy;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = self->_tableOfContents;
      v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v39 objects:v49 count:16];
      if (v17)
      {
        v18 = v17;
        v37 = *v40;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v40 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v39 + 1) + 8 * i);
            prefix = [v20 prefix];
            v22 = v11;
            v23 = [v11 URLByAppendingPathComponent:prefix];
            sourceUrl = [v20 sourceUrl];
            lastPathComponent = [sourceUrl lastPathComponent];
            v26 = [v23 URLByAppendingPathComponent:lastPathComponent];

            uRLByDeletingLastPathComponent = [v26 URLByDeletingLastPathComponent];
            [v38 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:error];

            sourceUrl2 = [v20 sourceUrl];
            if (*error)
            {
              errorCopy = 0;
            }

            else
            {
              errorCopy = error;
            }

            v30 = [v38 copyItemAtURL:sourceUrl2 toURL:v26 error:errorCopy];

            if ((v30 & 1) == 0)
            {
              v31 = DiagnosticLogHandleForCategory(0);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                sourceUrl3 = [v20 sourceUrl];
                v33 = [*error description];
                *buf = 138412802;
                v44 = sourceUrl3;
                v45 = 2112;
                v46 = v26;
                v47 = 2112;
                v48 = v33;
                _os_log_error_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "Failed to copy file in archive to temp directory from [%@] to [%@]. Error: [%@]", buf, 0x20u);
              }
            }

            v11 = v22;
          }

          v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v39 objects:v49 count:16];
        }

        while (v18);
      }

      nameCopy = v35;
      v8 = v38;
    }

    v16 = v11;
  }

  return v16;
}

- (id)archiveAsTempFileWithTemplate:(id)template directory:(id)directory suffix:(id)suffix error:(id *)error
{
  templateCopy = template;
  directoryCopy = directory;
  suffixCopy = suffix;
  if (!directoryCopy)
  {
    v13 = NSTemporaryDirectory();
    directoryCopy = [NSURL fileURLWithPath:v13];
  }

  v14 = [directoryCopy URLByAppendingPathComponent:templateCopy];
  path = [v14 path];

  if (suffixCopy)
  {
    v16 = [path stringByAppendingString:suffixCopy];

    v17 = [suffixCopy length];
    path = v16;
  }

  else
  {
    v17 = 0;
  }

  fileSystemRepresentation = [path fileSystemRepresentation];
  v19 = strlen(fileSystemRepresentation);
  v20 = malloc_type_malloc(v19 + 1, 0x100004077774924uLL);
  if (v20)
  {
    v21 = v20;
    v22 = strcpy(v20, fileSystemRepresentation);
    v23 = mkstemps(v22, v17);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    v29 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [DSMutableArchive archiveAsTempFileWithTemplate:directory:suffix:error:];
    }

    v30 = [NSError errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:4 userInfo:0];
    if (!v30)
    {
LABEL_29:
      if ([(DSMutableArchive *)self archiveAsFileUsingDescriptor:v23 error:error])
      {
        v24 = +[NSFileManager defaultManager];
        v25 = [v24 stringWithFileSystemRepresentation:v21 length:strlen(v21)];

        v26 = [NSURL fileURLWithPath:v25];
      }

      else
      {
        v26 = 0;
      }

      free(v21);
      if ((v23 & 0x80000000) == 0)
      {
        close(v23);
      }

      v28 = 0;
      goto LABEL_24;
    }

    v28 = v30;
    free(v21);
  }

  else
  {
    v27 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [DSMutableArchive archiveAsTempFileWithTemplate:directory:suffix:error:];
    }

    v28 = [NSError errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:7 userInfo:0];
  }

  v26 = 0;
  if (error && v28)
  {
    v31 = v28;
    v26 = 0;
    *error = v28;
  }

LABEL_24:

  return v26;
}

- (BOOL)archiveAsFile:(id)file error:(id *)error
{
  fileCopy = file;
  v7 = archive_write_new();
  [(DSMutableArchive *)self _setFormatOnArchive:v7];
  v8 = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    path = [fileCopy path];
    v15 = 138412290;
    v16 = path;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Attempting to write archive to [%@]", &v15, 0xCu);
  }

  path2 = [fileCopy path];
  [path2 UTF8String];
  v11 = archive_write_open_filename();

  if (v11)
  {
    v12 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DSMutableArchive archiveAsDataWithError:];
    }

    if (error)
    {
      [NSError errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:1 userInfo:0];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [(DSMutableArchive *)self _writeArchive:v7 error:error];
  }

  return v13;
}

- (BOOL)archiveAsFileUsingDescriptor:(int)descriptor error:(id *)error
{
  v6 = archive_write_new();
  [(DSMutableArchive *)self _setFormatOnArchive:v6];
  v7 = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Attempting to write archive to file descriptor.", v12, 2u);
  }

  if (!archive_write_open_fd())
  {
    return [(DSMutableArchive *)self _writeArchive:v6 error:error];
  }

  v8 = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [DSMutableArchive archiveAsDataWithError:];
  }

  if (!error)
  {
    return 0;
  }

  v9 = [NSError errorWithDomain:@"com.apple.Diagnostics.DSMutableArchive" code:1 userInfo:0];
  v10 = v9;
  result = 0;
  *error = v9;
  return result;
}

+ (BOOL)extractEntry:(archive *)entry toArchive:(archive *)archive
{
  while (1)
  {
    data_block = archive_read_data_block();
    if (data_block)
    {
      break;
    }

    if (archive_write_data_block() < 0)
    {
      return 0;
    }
  }

  return data_block == 1;
}

+ (BOOL)extractArchive:(id)archive toDirectory:(id)directory
{
  archiveCopy = archive;
  directoryCopy = directory;
  v7 = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = archiveCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Opening archive for extraction: %@", buf, 0xCu);
  }

  v8 = archive_read_new();
  v9 = archive_write_disk_new();
  archive_write_disk_set_options();
  archive_write_disk_set_standard_lookup();
  archive_read_support_format_all();
  archive_read_support_filter_all();
  v10 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  [archiveCopy getFileSystemRepresentation:v10 maxLength:1024];
  v11 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  [directoryCopy getFileSystemRepresentation:v11 maxLength:1024];
  v12 = strlen(v11);
  if (v12 + 1 > 0x3FF)
  {
    v16 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[DSMutableArchive extractArchive:toDirectory:];
    }

    v15 = 0;
    v13 = v11;
  }

  else
  {
    v11[v12] = 47;
    v11[v12 + 1] = 0;
    v13 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
    __strcpy_chk();
    if (archive_read_open_filename())
    {
      v14 = DiagnosticLogHandleForCategory(3);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[DSMutableArchive extractArchive:toDirectory:];
      }
    }

    else
    {
      v15 = 1;
      while (1)
      {
        next_header = archive_read_next_header();
        if (next_header)
        {
          break;
        }

        v19 = archive_entry_pathname();
        v20 = strlen(v11);
        strcpy(&v13[v20], v19);
        archive_entry_set_pathname();
        v21 = DiagnosticLogHandleForCategory(3);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v30 = v13;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Extracting %s", buf, 0xCu);
        }

        if ((archive_write_header() & 0x80000000) != 0)
        {
          v26 = DiagnosticLogHandleForCategory(3);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            +[DSMutableArchive extractArchive:toDirectory:];
          }

          v14 = DiagnosticLogHandleForCategory(3);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
LABEL_31:
            +[DSMutableArchive extractArchive:toDirectory:];
            goto LABEL_7;
          }

          goto LABEL_7;
        }

        v22 = [DSMutableArchive extractEntry:v8 toArchive:v9];
        v15 = v22;
        if (!v22 || archive_write_finish_entry())
        {
          v23 = DiagnosticLogHandleForCategory(3);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v30 = archiveCopy;
            _os_log_error_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "Failed to extract %@", buf, 0xCu);
          }

          v24 = DiagnosticLogHandleForCategory(3);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [(DSMutableArchive *)v27 extractArchive:v8 toDirectory:&v28, v24];
          }
        }
      }

      if (next_header == 1)
      {
        v14 = DiagnosticLogHandleForCategory(3);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = archiveCopy;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Finished extracting %@", buf, 0xCu);
        }

        goto LABEL_8;
      }

      v25 = DiagnosticLogHandleForCategory(3);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        +[DSMutableArchive extractArchive:toDirectory:];
      }

      v14 = DiagnosticLogHandleForCategory(3);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }
    }

LABEL_7:
    v15 = 0;
LABEL_8:

    archive_read_close();
    archive_read_free();
    archive_write_close();
    archive_write_free();
    free(v10);
    v10 = v11;
  }

  free(v10);
  free(v13);

  return v15 & 1;
}

- (void)_addPathToContents:(void *)a1 searchQueue:flatten:error:.cold.1(void *a1)
{
  v1 = [a1 sourceUrl];
  v2 = [v1 path];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_addDirectoryToContents:(void *)a1 searchQueue:flatten:error:.cold.1(void *a1)
{
  v1 = [a1 sourceUrl];
  v2 = [v1 path];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_addFile:archive:error:.cold.1()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_addFile:archive:error:.cold.2()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_addFile:archive:error:.cold.4()
{
  archive_error_string();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_writeArchive:(void *)a1 error:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v3 = [a1 sourceUrl];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "Failed to add file to archive: %@", v4, 0xCu);
}

- (void)_writeArchive:(int)a1 error:(NSObject *)a2 .cold.2(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "Failed to write completed archive to storage with archive status: %d", v2, 8u);
}

- (void)archiveAsDataWithError:.cold.1()
{
  archive_error_string();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)archiveAsTempDirectoryWithName:(uint64_t)a1 error:(id *)a2 .cold.1(uint64_t a1, id *a2)
{
  v7 = [*a2 description];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)archiveAsTempFileWithTemplate:directory:suffix:error:.cold.1()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)extractArchive:(uint64_t *)a3 toDirectory:(NSObject *)a4 .cold.3(uint8_t *a1, uint64_t a2, uint64_t *a3, NSObject *a4)
{
  v7 = archive_error_string();
  *a1 = 136315138;
  *a3 = v7;
  _os_log_error_impl(&dword_0, a4, OS_LOG_TYPE_ERROR, "Extract error: %s", a1, 0xCu);
}

+ (void)extractArchive:toDirectory:.cold.5()
{
  archive_error_string();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end
@interface ENArchive
- (BOOL)_checkEntryAndReturnError:(id *)error;
- (BOOL)_openArchiveAndReturnError:(id *)error;
- (BOOL)advanceEntryAndReturnError:(id *)error;
- (BOOL)readDataIntoBuffer:(void *)buffer length:(unint64_t)length error:(id *)error;
- (BOOL)resetAndReturnError:(id *)error;
- (BOOL)resetToCurrentEntryAndReturnError:(id *)error;
- (BOOL)skipBytes:(unint64_t)bytes error:(id *)error;
- (ENArchive)initWithFD:(int)d error:(id *)error;
- (ENArchive)initWithPath:(id)path error:(id *)error;
- (NSString)entryPath;
- (int64_t)readDataIntoBuffer:(void *)buffer maxLength:(unint64_t)length error:(id *)error;
- (unsigned)entryFileType;
- (void)_closeArchive;
- (void)close;
- (void)dealloc;
@end

@implementation ENArchive

- (ENArchive)initWithPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = realpath_DARWIN_EXTSN([pathCopy fileSystemRepresentation], 0);
  if (v7)
  {
    v8 = v7;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __32__ENArchive_initWithPath_error___block_invoke;
    v13[3] = &__block_descriptor_40_e5_v8__0l;
    v13[4] = v7;
    v9 = MEMORY[0x2383EE560](v13);
    v10 = open(v8, 0);
    if ((v10 & 0x80000000) != 0 && (!*__error() || *__error()))
    {
      if (error)
      {
        ENErrorF(2);
        *error = selfCopy = 0;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      self = [(ENArchive *)self initWithFD:v10 error:error];
      selfCopy = self;
    }

    v9[2](v9);
  }

  else if (error)
  {
    ENErrorF(2);
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ENArchive)initWithFD:(int)d error:(id *)error
{
  selfCopy = self;
  if (d < 0)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v10.receiver = self;
  v10.super_class = ENArchive;
  selfCopy = [(ENArchive *)&v10 init];
  if (!selfCopy)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v7 = fdopen(d, "rb");
  if (!v7 && (!*__error() || *__error()))
  {
    if (!error)
    {
      goto LABEL_11;
    }

LABEL_9:
    ENErrorF(2);
    *error = v8 = 0;
    goto LABEL_12;
  }

  selfCopy->_fileHandle = v7;
  if (![(ENArchive *)selfCopy _openArchiveAndReturnError:error])
  {
    goto LABEL_11;
  }

  selfCopy = selfCopy;
  v8 = selfCopy;
LABEL_12:

  return v8;
}

- (BOOL)_openArchiveAndReturnError:(id *)error
{
  if (!self->_fileHandle)
  {
    if (error)
    {
      v10 = 16;
      goto LABEL_13;
    }

    return 0;
  }

  if (fseeko(self->_fileHandle, 0, 0) && (!*__error() || *__error()))
  {
    if (error)
    {
      v10 = 15;
LABEL_13:
      ENErrorF(v10);
      *error = v8 = 0;
      return v8;
    }

    return 0;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = archive_read_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__ENArchive__openArchiveAndReturnError___block_invoke;
  v13[3] = &unk_278A4AF10;
  v13[4] = &v14;
  v5 = MEMORY[0x2383EE560](v13);
  if (!v15[3])
  {
    if (error)
    {
      v11 = ENErrorF(12);
LABEL_23:
      v8 = 0;
      *error = v11;
      goto LABEL_9;
    }

    goto LABEL_24;
  }

  if (archive_read_support_format_zip())
  {
    if (error)
    {
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  v6 = v15[3];
  if (archive_read_open_FILE())
  {
    if (error)
    {
LABEL_22:
      v12 = v15[3];
      archive_error_string();
      v11 = ENErrorF(15);
      goto LABEL_23;
    }

LABEL_24:
    v8 = 0;
    goto LABEL_9;
  }

  v7 = v15;
  self->_archive = v15[3];
  v7[3] = 0;
  v8 = 1;
LABEL_9:
  v5[2](v5);

  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __40__ENArchive__openArchiveAndReturnError___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return MEMORY[0x2821F6FE8]();
  }

  return result;
}

- (void)dealloc
{
  [(ENArchive *)self close];
  if (self->_archive)
  {
    archive_read_free();
  }

  v3.receiver = self;
  v3.super_class = ENArchive;
  [(ENArchive *)&v3 dealloc];
}

- (BOOL)advanceEntryAndReturnError:(id *)error
{
  fileHandle = self->_fileHandle;
  if (fileHandle)
  {
    archive = self->_archive;
    if (archive_read_next_header() == 1)
    {
      self->_endOfArchive = 1;
    }
  }

  else
  {
    [ENArchive advanceEntryAndReturnError:error];
  }

  return fileHandle != 0;
}

- (void)close
{
  [(ENArchive *)self _closeArchive];
  fileHandle = self->_fileHandle;
  if (fileHandle)
  {
    fclose(fileHandle);
    self->_fileHandle = 0;
  }
}

- (void)_closeArchive
{
  p_archive = &self->_archive;
  if (self->_archive)
  {
    archive_read_free();
    *p_archive = 0;
    p_archive[1] = 0;
  }
}

- (BOOL)_checkEntryAndReturnError:(id *)error
{
  if (!self->_fileHandle)
  {
    if (!error)
    {
      return 0;
    }

LABEL_10:
    v5 = ENErrorF(10);
    v6 = v5;
    result = 0;
    *error = v5;
    return result;
  }

  if (self->_endOfArchive)
  {
    if (!error)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (self->_entry)
  {
    return 1;
  }

  if (error)
  {
    goto LABEL_10;
  }

  return 0;
}

- (BOOL)readDataIntoBuffer:(void *)buffer length:(unint64_t)length error:(id *)error
{
  v7 = [ENArchive readDataIntoBuffer:"readDataIntoBuffer:maxLength:error:" maxLength:buffer error:?];
  if (v7 < 1)
  {
    return 0;
  }

  if (v7 == length)
  {
    return 1;
  }

  if (!error)
  {
    return 0;
  }

  v9 = ENErrorF(15);
  v10 = v9;
  result = 0;
  *error = v9;
  return result;
}

- (BOOL)resetAndReturnError:(id *)error
{
  if (self->_fileHandle)
  {
    [(ENArchive *)self _closeArchive];

    return [(ENArchive *)self _openArchiveAndReturnError:error];
  }

  else
  {
    if (error)
    {
      *error = ENErrorF(10);
    }

    return 0;
  }
}

- (NSString)entryPath
{
  if ([(ENArchive *)self _checkEntryAndReturnError:0])
  {
    entry = self->_entry;
    v4 = archive_entry_pathname();
    if (v4)
    {
      v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v4];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)entryFileType
{
  v3 = [(ENArchive *)self _checkEntryAndReturnError:0];
  if (v3)
  {
    entry = self->_entry;

    LOWORD(v3) = MEMORY[0x2821F6EC8](entry);
  }

  return v3;
}

- (int64_t)readDataIntoBuffer:(void *)buffer maxLength:(unint64_t)length error:(id *)error
{
  if (![(ENArchive *)self _checkEntryAndReturnError:error])
  {
    return 0;
  }

  archive = self->_archive;
  data = archive_read_data();
  if (data < 0)
  {
    if (error)
    {
      v10 = self->_archive;
      archive_error_string();
      ENErrorF(16);
      *error = data = 0;
      return data;
    }

    return 0;
  }

  return data;
}

- (BOOL)resetToCurrentEntryAndReturnError:(id *)error
{
  if (![(ENArchive *)self _checkEntryAndReturnError:?])
  {
    return 0;
  }

  entryPath = [(ENArchive *)self entryPath];
  if ([(ENArchive *)self resetAndReturnError:error])
  {
    while (![(ENArchive *)self endOfArchive])
    {
      entryPath2 = [(ENArchive *)self entryPath];
      v7 = entryPath;
      v8 = entryPath2;
      v9 = v8;
      if (v7 == v8)
      {

LABEL_15:
        v11 = 1;
        goto LABEL_16;
      }

      if ((entryPath != 0) != (v8 == 0))
      {
        v10 = [v7 isEqual:v8];

        if (v10)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      if (![(ENArchive *)self advanceEntryAndReturnError:error])
      {
        goto LABEL_13;
      }
    }

    if (!error)
    {
      goto LABEL_13;
    }

    ENErrorF(16);
    *error = v11 = 0;
  }

  else
  {
LABEL_13:
    v11 = 0;
  }

LABEL_16:

  return v11;
}

- (BOOL)skipBytes:(unint64_t)bytes error:(id *)error
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(ENArchive *)self _checkEntryAndReturnError:error])
  {
    bzero(v11, 0x400uLL);
    do
    {
      v7 = bytes == 0;
      if (!bytes)
      {
        break;
      }

      v8 = bytes >= 0x400 ? 1024 : bytes;
      bytes -= v8;
    }

    while ([(ENArchive *)self readDataIntoBuffer:v11 length:v8 error:error]);
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)advanceEntryAndReturnError:(void *)result .cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = ENErrorF(10);
    *v1 = result;
  }

  return result;
}

@end
@interface AMKArchiveReader
- (AMKArchiveReader)initWithFileHandle:(id)a3 error:(id *)a4;
- (BOOL)_configureReadArchiveWithFileHandle:(id)a3 error:(id *)a4;
- (BOOL)_configureWriteArchiveWithError:(id *)a3;
- (BOOL)_readAndExpandIntoURL:(id)a3 error:(id *)a4;
- (BOOL)copyDataWithError:(id *)a3;
- (void)dealloc;
- (void)readAndExpandIntoURL:(id)a3 completion:(id)a4;
@end

@implementation AMKArchiveReader

- (AMKArchiveReader)initWithFileHandle:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = AMKArchiveReader;
  v7 = [(AMKArchiveReader *)&v13 init];
  if (v7)
  {
    v7->_readArchive = archive_read_new();
    v7->_writeArchive = archive_write_disk_new();
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(v8, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v10 = dispatch_queue_create("archive-reader", v9);
    queue = v7->_queue;
    v7->_queue = v10;

    objc_storeStrong(&v7->_fileHandle, a3);
  }

  return v7;
}

- (void)dealloc
{
  readArchive = self->_readArchive;
  archive_read_close();
  writeArchive = self->_writeArchive;
  archive_write_close();
  v5 = self->_readArchive;
  archive_free();
  v6 = self->_writeArchive;
  archive_free();
  v7.receiver = self;
  v7.super_class = AMKArchiveReader;
  [(AMKArchiveReader *)&v7 dealloc];
}

- (BOOL)_configureReadArchiveWithFileHandle:(id)a3 error:(id *)a4
{
  v6 = a3;
  readArchive = self->_readArchive;
  if (archive_read_support_format_all() || (v8 = self->_readArchive, archive_read_support_filter_all()) || (v9 = self->_readArchive, [v6 fileDescriptor], archive_read_open_fd()))
  {
    [MEMORY[0x29EDB9FA0] amk_errorFromArchive:self->_readArchive];
    *a4 = v10 = 0;
  }

  else
  {
    v12 = self->_readArchive;
    v13 = archive_filter_name();
    if (v13)
    {
      v14 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v13];
    }

    else
    {
      v14 = @"none";
    }

    compressionScheme = self->_compressionScheme;
    self->_compressionScheme = &v14->isa;

    v16 = self->_readArchive;
    v17 = archive_format_name();
    if (v17)
    {
      v18 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v17];
      archiveFormat = self->_archiveFormat;
      self->_archiveFormat = v18;
    }

    else
    {
      archiveFormat = self->_archiveFormat;
      self->_archiveFormat = @"unknown";
    }

    v10 = 1;
  }

  return v10;
}

- (BOOL)_configureWriteArchiveWithError:(id *)a3
{
  writeArchive = self->_writeArchive;
  if (!archive_write_disk_set_options())
  {
    v6 = self->_writeArchive;
    if (!archive_write_disk_set_standard_lookup())
    {
      return 1;
    }
  }

  v7 = [MEMORY[0x29EDB9FA0] amk_errorFromArchive:self->_writeArchive];
  v8 = v7;
  result = 0;
  *a3 = v7;
  return result;
}

- (BOOL)copyDataWithError:(id *)a3
{
  if (self->_isCancelled)
  {
LABEL_2:
    v4 = [MEMORY[0x29EDB9FA0] amk_canceledError];
  }

  else
  {
    p_readArchive = &self->_readArchive;
    p_writeArchive = &self->_writeArchive;
    while (1)
    {
      v8 = *p_readArchive;
      LODWORD(v9) = archive_read_data_block();
      if (v9)
      {
        break;
      }

      v10 = *p_writeArchive;
      if (archive_write_data_block() < 0)
      {
        p_readArchive = p_writeArchive;
        goto LABEL_11;
      }

      if (self->_isCancelled)
      {
        goto LABEL_2;
      }
    }

    if (v9 == 1)
    {
      return v9;
    }

LABEL_11:
    v4 = [MEMORY[0x29EDB9FA0] amk_errorFromArchive:*p_readArchive];
  }

  v11 = v4;
  v9 = v4;
  LOBYTE(v9) = 0;
  *a3 = v11;
  return v9;
}

- (void)readAndExpandIntoURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __52__AMKArchiveReader_readAndExpandIntoURL_completion___block_invoke;
  block[3] = &unk_29F37F7C8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __52__AMKArchiveReader_readAndExpandIntoURL_completion___block_invoke(void *a1)
{
  if (*(a1[4] + 32) != 1)
  {
    v3 = [MEMORY[0x29EDB9FB8] defaultManager];
    [v3 createDirectoryAtURL:a1[5] withIntermediateDirectories:1 attributes:0 error:0];

    v4 = a1[4];
    v5 = v4[3];
    v18 = 0;
    v6 = [v4 _configureReadArchiveWithFileHandle:v5 error:&v18];
    v7 = v18;
    if (v6)
    {
      v8 = a1[4];
      v17 = v7;
      v9 = [v8 _configureWriteArchiveWithError:&v17];
      v10 = v17;

      if ((v9 & 1) == 0)
      {
        (*(a1[6] + 16))();
        v7 = v10;
        goto LABEL_11;
      }

      v11 = a1[4];
      v12 = a1[5];
      v16 = v10;
      [v11 _readAndExpandIntoURL:v12 error:&v16];
      v7 = v16;

      v13 = *(a1[4] + 72);
      v14 = *(a1[6] + 16);
    }

    else
    {
      v14 = *(a1[6] + 16);
    }

    v14();
LABEL_11:

    return;
  }

  v2 = a1[6];
  v15 = [MEMORY[0x29EDB9FA0] amk_canceledError];
  (*(v2 + 16))(v2, 0, v15);
}

- (BOOL)_readAndExpandIntoURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = 0;
  v32[1] = 0;
  p_symlinkCount = &self->_symlinkCount;
LABEL_2:
  v9 = 0;
  while (1)
  {
    readArchive = self->_readArchive;
    next_header = archive_read_next_header();
    v12 = next_header;
    v13 = !next_header || next_header == -10;
    if (!v13 || self->_isCancelled || v9 > 4)
    {
      break;
    }

    v14 = objc_autoreleasePoolPush();
    if (v12 == -10)
    {
      ++v9;
    }

    else
    {
      v15 = archive_entry_filetype();
      v16 = v15;
      if (v15 == 0x4000 || v15 == 0x8000 || v15 == 40960)
      {
        v17 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:archive_entry_pathname_utf8()];
        if (validatePathInArchive(v17, 0))
        {
          v31 = a4;
          if (v16 == 0x4000)
          {
            p_dirCount = &self->_dirCount;
          }

          else
          {
            if (v16 != 40960)
            {
              if (v16 != 0x8000 || (++self->_fileCount, v18 = archive_entry_size(), p_dirCount = &self->_uncompressedBytes, v18 <= 0))
              {
LABEL_28:
                v20 = [v6 URLByAppendingPathComponent:{v17, p_symlinkCount}];
                v21 = [v20 path];
                [v21 UTF8String];
                archive_entry_set_pathname_utf8();

                writeArchive = self->_writeArchive;
                if (archive_write_header())
                {
                  goto LABEL_34;
                }

                if (archive_entry_size_is_set() && archive_entry_size() < 1 || (v32[0] = v7, v23 = [(AMKArchiveReader *)self copyDataWithError:v32], v24 = v32[0], v7, v7 = v24, v23))
                {
                  v25 = self->_writeArchive;
                  if (!archive_write_finish_entry())
                  {

                    objc_autoreleasePoolPop(v14);
                    p_symlinkCount = v30;
                    a4 = v31;
                    goto LABEL_2;
                  }

LABEL_34:
                  v24 = [MEMORY[0x29EDB9FA0] amk_errorFromArchive:self->_writeArchive];
                }

                objc_autoreleasePoolPop(v14);
                v7 = v24;
                a4 = v31;
                break;
              }

LABEL_27:
              *p_dirCount += v18;
              goto LABEL_28;
            }

            p_dirCount = p_symlinkCount;
          }

          v18 = 1;
          goto LABEL_27;
        }

        ++self->_ignoredFilesCount;

        v9 = 0;
      }

      else
      {
        v9 = 0;
        ++self->_ignoredFilesCount;
      }
    }

    objc_autoreleasePoolPop(v14);
  }

  if (v7)
  {
    v26 = v7;
LABEL_44:
    v28 = 0;
    *a4 = v26;
    goto LABEL_45;
  }

  if (self->_isCancelled)
  {
    v27 = [MEMORY[0x29EDB9FA0] amk_errorFromPosixCode:60];
LABEL_43:
    v26 = v27;
    goto LABEL_44;
  }

  if (v12 != 1)
  {
    v27 = [MEMORY[0x29EDB9FA0] amk_errorFromArchive:self->_readArchive];
    goto LABEL_43;
  }

  v28 = 1;
LABEL_45:

  return v28;
}

@end
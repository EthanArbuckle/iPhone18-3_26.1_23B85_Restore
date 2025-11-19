@interface AMKArchiveWriter
- (AMKArchiveWriter)initWithArchiveFormat:(unint64_t)a3 compressionScheme:(unint64_t)a4 fileHandle:(id)a5 progress:(id)a6 updateProgress:(BOOL)a7 error:(id *)a8;
- (BOOL)_appendContentsOfDirectory:(id)a3 pathInArchive:(id)a4 error:(id *)a5;
- (BOOL)_appendItemAtURL:(id)a3 pathInArchive:(id)a4 error:(id *)a5;
- (BOOL)_applyArchiveFormat:(unint64_t)a3 error:(id *)a4;
- (BOOL)_applyCompressionScheme:(unint64_t)a3 error:(id *)a4;
- (BOOL)_closeWithError:(id *)a3;
- (BOOL)_fillSymlinkEntryFromURL:(id)a3 entry:(archive_entry *)a4 error:(id *)a5;
- (BOOL)_writeContentsOfFdToArchive:(int)a3 error:(id *)a4;
- (void)appendItemAtURL:(id)a3 pathInArchive:(id)a4 completion:(id)a5;
- (void)closeWithCompletion:(id)a3;
- (void)dealloc;
@end

@implementation AMKArchiveWriter

- (AMKArchiveWriter)initWithArchiveFormat:(unint64_t)a3 compressionScheme:(unint64_t)a4 fileHandle:(id)a5 progress:(id)a6 updateProgress:(BOOL)a7 error:(id *)a8
{
  v15 = a5;
  v16 = a6;
  v25.receiver = self;
  v25.super_class = AMKArchiveWriter;
  v17 = [(AMKArchiveWriter *)&v25 init];
  if (!v17)
  {
    goto LABEL_9;
  }

  v17->_archive = archive_write_new();
  objc_storeStrong(&v17->_fileHandle, a5);
  objc_storeStrong(&v17->_progress, a6);
  v17->_updateProgress = a7;
  v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v19 = dispatch_queue_attr_make_with_autorelease_frequency(v18, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

  v20 = dispatch_queue_create("archive-read", v19);
  queue = v17->_queue;
  v17->_queue = v20;

  if ([(AMKArchiveWriter *)v17 _applyCompressionScheme:a4 error:a8]&& [(AMKArchiveWriter *)v17 _applyArchiveFormat:a3 error:a8])
  {
    archive = v17->_archive;
    if (archive_write_open2())
    {
      if (a8)
      {
        *a8 = [MEMORY[0x29EDB9FA0] amk_errorFromArchive:v17->_archive];
      }

      goto LABEL_7;
    }

LABEL_9:
    v23 = v17;
    goto LABEL_10;
  }

LABEL_7:

  v23 = 0;
LABEL_10:

  return v23;
}

- (BOOL)_applyArchiveFormat:(unint64_t)a3 error:(id *)a4
{
  if (a3)
  {
    if (a4)
    {
      v5 = [MEMORY[0x29EDB9FA0] amk_errorFromPosixCode:22];
LABEL_7:
      v8 = v5;
      v9 = v5;
      result = 0;
      *a4 = v8;
      return result;
    }

    return 0;
  }

  archive = self->_archive;
  if (archive_write_set_format_gnutar())
  {
    if (a4)
    {
      v5 = [MEMORY[0x29EDB9FA0] amk_errorFromArchive:self->_archive];
      goto LABEL_7;
    }

    return 0;
  }

  return 1;
}

- (BOOL)_applyCompressionScheme:(unint64_t)a3 error:(id *)a4
{
  if (!a3)
  {
    return 1;
  }

  if (a3 != 1)
  {
    if (a4)
    {
      v7 = [MEMORY[0x29EDB9FA0] amk_errorFromPosixCode:22];
      goto LABEL_9;
    }

    return 0;
  }

  archive = self->_archive;
  if (archive_write_add_filter_gzip())
  {
    if (a4)
    {
      v7 = [MEMORY[0x29EDB9FA0] amk_errorFromArchive:self->_archive];
LABEL_9:
      v9 = v7;
      v10 = v7;
      result = 0;
      *a4 = v9;
      return result;
    }

    return 0;
  }

  return 1;
}

- (void)closeWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __40__AMKArchiveWriter_closeWithCompletion___block_invoke;
  v7[3] = &unk_29F37F778;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __40__AMKArchiveWriter_closeWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  [v2 _closeWithError:&v4];
  v3 = v4;
  (*(*(a1 + 40) + 16))();
}

- (BOOL)_closeWithError:(id *)a3
{
  archive = self->_archive;
  archive_write_close();
  fileHandle = self->_fileHandle;

  return [(NSFileHandle *)fileHandle closeAndReturnError:a3];
}

- (void)dealloc
{
  [(AMKArchiveWriter *)self _closeWithError:0];
  archive = self->_archive;
  archive_free();
  v4.receiver = self;
  v4.super_class = AMKArchiveWriter;
  [(AMKArchiveWriter *)&v4 dealloc];
}

- (BOOL)_writeContentsOfFdToArchive:(int)a3 error:(id *)a4
{
  v16 = *MEMORY[0x29EDCA608];
  if (![(NSProgress *)self->_progress isCancelled])
  {
    do
    {
      v7 = read(a3, v15, 0x2000uLL);
      if (v7 < 1)
      {
        break;
      }

      archive = self->_archive;
      v9 = archive_write_data();
      if (self->_updateProgress)
      {
        [(NSProgress *)self->_progress setCompletedUnitCount:[(NSProgress *)self->_progress completedUnitCount]+ v7];
      }

      self->_uncompressedBytes += v7;
      if (v9 < 0)
      {
        v10 = [MEMORY[0x29EDB9FA0] amk_errorFromArchive:self->_archive];
        goto LABEL_15;
      }
    }

    while (![(NSProgress *)self->_progress isCancelled]);
    if ([(NSProgress *)self->_progress isCancelled])
    {
      goto LABEL_10;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    v10 = [MEMORY[0x29EDB9FA0] amk_errorFromErrno];
LABEL_15:
    v12 = v10;
    v13 = v10;
    result = 0;
    *a4 = v12;
    goto LABEL_16;
  }

  if ([(NSProgress *)self->_progress isCancelled])
  {
LABEL_10:
    v10 = [MEMORY[0x29EDB9FA0] amk_canceledError];
    goto LABEL_15;
  }

LABEL_12:
  result = 1;
LABEL_16:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

- (BOOL)_appendContentsOfDirectory:(id)a3 pathInArchive:(id)a4 error:(id *)a5
{
  v47[2] = *MEMORY[0x29EDCA608];
  v8 = a3;
  v9 = a4;
  disk_new = archive_read_disk_new();
  archive_read_disk_set_standard_lookup();
  v47[0] = [v8 fileSystemRepresentation];
  v47[1] = 0;
  v11 = fts_open(v47, 84, 0);
  v12 = 0;
  if (!v11)
  {
    v12 = [MEMORY[0x29EDB9FA0] amk_errorFromErrno];
  }

  v13 = [v8 lastPathComponent];
  v14 = [v13 isEqualToString:v9];

  if (v14)
  {
    v15 = [v8 URLByDeletingLastPathComponent];
    v16 = strlen([v15 fileSystemRepresentation]);
  }

  else
  {
    v16 = strlen([v8 fileSystemRepresentation]);
  }

  if (!v11)
  {
    v18 = 0;
    goto LABEL_39;
  }

  p_directoryCount = &self->_directoryCount;
  p_symlinkCount = &self->_symlinkCount;
  p_fileCount = &self->_fileCount;
  v44 = v16;
  v45 = a5;
  while (2)
  {
    v17 = fts_read(v11);
    v18 = v17 == 0;
    if (v17)
    {
      v19 = v17;
      while (1)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = v20;
        fts_info = v19->fts_info;
        if (fts_info > 0xE)
        {
          goto LABEL_15;
        }

        v23 = 1 << fts_info;
        if ((v23 & 0x4264) == 0)
        {
          break;
        }

        objc_autoreleasePoolPop(v20);
        v19 = fts_read(v11);
        if (!v19)
        {
          v18 = 1;
LABEL_38:
          a5 = v45;
          goto LABEL_39;
        }
      }

      if ((v23 & 0x490) == 0)
      {
LABEL_15:
        if ([(NSProgress *)self->_progress isCancelled])
        {
          v31 = [MEMORY[0x29EDB9FA0] amk_canceledError];
          goto LABEL_37;
        }

        v40 = open(v19->fts_accpath, 4);
        if ((v40 & 0x80000000) == 0)
        {
          archive_entry_new();
          v37 = self;
          if ((v14 & 1) == 0)
          {
            v38 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:&v19->fts_path[v44 + 1]];
            v24 = [v9 stringByAppendingPathComponent:v38];
            v36 = [v24 fileSystemRepresentation];
          }

          archive_entry_set_pathname();
          fts_path = v19->fts_path;
          archive_entry_copy_sourcepath();
          fts_statp = v19->fts_statp;
          if (archive_read_disk_entry_from_file())
          {
            v36 = [MEMORY[0x29EDB9FA0] amk_errorFromArchive:disk_new];
            v39 = 0;
            self = v37;
          }

          else
          {
            self = v37;
            archive = v37->_archive;
            if (archive_write_header())
            {
              v36 = [MEMORY[0x29EDB9FA0] amk_errorFromArchive:v37->_archive];
              v39 = 0;
            }

            else
            {
              if ((v19->fts_statp->st_mode & 0xF000) != 0x8000)
              {
                v39 = 1;
LABEL_26:
                v28 = v19->fts_statp->st_mode & 0xF000;
                if (v28 == 0x4000)
                {
                  v29 = p_directoryCount;
                  v30 = v39;
                }

                else
                {
                  v29 = p_fileCount;
                  v30 = v39;
                  if (v28 != 0x8000)
                  {
                    v29 = p_symlinkCount;
                    if (v28 != 40960)
                    {
LABEL_32:
                      archive_entry_free();
                      close(v40);
                      objc_autoreleasePoolPop(v21);
                      a5 = v45;
                      if (v30)
                      {
                        continue;
                      }

                      break;
                    }
                  }
                }

                ++*v29;
                goto LABEL_32;
              }

              v46 = v12;
              v39 = [(AMKArchiveWriter *)v37 _writeContentsOfFdToArchive:v40 error:&v46];
              v36 = v46;
            }
          }

          v12 = v36;
          goto LABEL_26;
        }
      }

      v31 = [MEMORY[0x29EDB9FA0] amk_errorFromErrno];
LABEL_37:
      v32 = v31;

      objc_autoreleasePoolPop(v21);
      v18 = 0;
      v12 = v32;
      goto LABEL_38;
    }

    break;
  }

LABEL_39:
  if (disk_new)
  {
    archive_read_free();
  }

  if (v11)
  {
    fts_close(v11);
  }

  if (a5 && v12)
  {
    v33 = v12;
    *a5 = v12;
  }

  v34 = *MEMORY[0x29EDCA608];
  return v18;
}

- (BOOL)_fillSymlinkEntryFromURL:(id)a3 entry:(archive_entry *)a4 error:(id *)a5
{
  v11 = *MEMORY[0x29EDCA608];
  v6 = readlink([a3 fileSystemRepresentation], v10, 0x3FFuLL);
  v7 = v6;
  if (v6 == -1)
  {
    if (a5)
    {
      *a5 = [MEMORY[0x29EDB9FA0] amk_errorFromErrno];
    }
  }

  else
  {
    v10[v6] = 0;
    archive_entry_set_symlink();
  }

  result = v7 != -1;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

- (void)appendItemAtURL:(id)a3 pathInArchive:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __61__AMKArchiveWriter_appendItemAtURL_pathInArchive_completion___block_invoke;
  v15[3] = &unk_29F37F7A0;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(queue, v15);
}

void __61__AMKArchiveWriter_appendItemAtURL_pathInArchive_completion___block_invoke(void *a1)
{
  if ([*(a1[4] + 24) isCancelled])
  {
    v2 = a1[7];
    v10 = [MEMORY[0x29EDB9FA0] amk_canceledError];
    (*(v2 + 16))(v2, v10);
  }

  else
  {
    v3 = a1[5];
    v12 = 0;
    v4 = validatePathInArchive(v3, &v12);
    v5 = v12;
    if (v4)
    {
      v7 = a1[5];
      v6 = a1[6];
      v8 = a1[4];
      v11 = v5;
      [v8 _appendItemAtURL:v6 pathInArchive:v7 error:&v11];
      v9 = v11;

      v5 = v9;
    }

    (*(a1[7] + 16))();
  }
}

- (BOOL)_appendItemAtURL:(id)a3 pathInArchive:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = archive_entry_new();
  v11 = open([v8 fileSystemRepresentation], 2129920);
  if ((v11 & 0x80000000) != 0)
  {
    [MEMORY[0x29EDB9FA0] amk_errorFromErrno];
    *a5 = v14 = 0;
    goto LABEL_7;
  }

  v12 = v11;
  if (!fstat(v11, &v19))
  {
    v16 = v19.st_mode & 0xF000;
    switch(v16)
    {
      case 16384:
        if (![(AMKArchiveWriter *)self _appendContentsOfDirectory:v8 pathInArchive:v9 error:a5])
        {
          goto LABEL_18;
        }

        break;
      case 40960:
        archive_entry_copy_stat();
        [v9 UTF8String];
        archive_entry_set_pathname();
        if (![(AMKArchiveWriter *)self _fillSymlinkEntryFromURL:v8 entry:v10 error:a5])
        {
          goto LABEL_18;
        }

        archive = self->_archive;
        if (archive_write_header())
        {
LABEL_16:
          v13 = [MEMORY[0x29EDB9FA0] amk_errorFromArchive:self->_archive];
          goto LABEL_4;
        }

        ++self->_symlinkCount;
        break;
      case 32768:
        archive_entry_copy_stat();
        [v9 UTF8String];
        archive_entry_set_pathname();
        ++self->_fileCount;
        v17 = self->_archive;
        if (!archive_write_header())
        {
          if ([(AMKArchiveWriter *)self _writeContentsOfFdToArchive:v12 error:a5])
          {
            break;
          }

LABEL_18:
          v14 = 0;
          goto LABEL_5;
        }

        goto LABEL_16;
      default:
        v13 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9E30] code:3328 userInfo:0];
        goto LABEL_4;
    }

    v14 = 1;
    goto LABEL_5;
  }

  v13 = [MEMORY[0x29EDB9FA0] amk_errorFromErrno];
LABEL_4:
  v14 = 0;
  *a5 = v13;
LABEL_5:
  close(v12);
LABEL_7:
  archive_entry_free();

  return v14;
}

@end
@interface AMKArchiveWriter
- (AMKArchiveWriter)initWithArchiveFormat:(unint64_t)format compressionScheme:(unint64_t)scheme fileHandle:(id)handle progress:(id)progress updateProgress:(BOOL)updateProgress error:(id *)error;
- (BOOL)_appendContentsOfDirectory:(id)directory pathInArchive:(id)archive error:(id *)error;
- (BOOL)_appendItemAtURL:(id)l pathInArchive:(id)archive error:(id *)error;
- (BOOL)_applyArchiveFormat:(unint64_t)format error:(id *)error;
- (BOOL)_applyCompressionScheme:(unint64_t)scheme error:(id *)error;
- (BOOL)_closeWithError:(id *)error;
- (BOOL)_fillSymlinkEntryFromURL:(id)l entry:(archive_entry *)entry error:(id *)error;
- (BOOL)_writeContentsOfFdToArchive:(int)archive error:(id *)error;
- (void)appendItemAtURL:(id)l pathInArchive:(id)archive completion:(id)completion;
- (void)closeWithCompletion:(id)completion;
- (void)dealloc;
@end

@implementation AMKArchiveWriter

- (AMKArchiveWriter)initWithArchiveFormat:(unint64_t)format compressionScheme:(unint64_t)scheme fileHandle:(id)handle progress:(id)progress updateProgress:(BOOL)updateProgress error:(id *)error
{
  handleCopy = handle;
  progressCopy = progress;
  v25.receiver = self;
  v25.super_class = AMKArchiveWriter;
  v17 = [(AMKArchiveWriter *)&v25 init];
  if (!v17)
  {
    goto LABEL_9;
  }

  v17->_archive = archive_write_new();
  objc_storeStrong(&v17->_fileHandle, handle);
  objc_storeStrong(&v17->_progress, progress);
  v17->_updateProgress = updateProgress;
  v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v19 = dispatch_queue_attr_make_with_autorelease_frequency(v18, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

  v20 = dispatch_queue_create("archive-read", v19);
  queue = v17->_queue;
  v17->_queue = v20;

  if ([(AMKArchiveWriter *)v17 _applyCompressionScheme:scheme error:error]&& [(AMKArchiveWriter *)v17 _applyArchiveFormat:format error:error])
  {
    archive = v17->_archive;
    if (archive_write_open2())
    {
      if (error)
      {
        *error = [MEMORY[0x29EDB9FA0] amk_errorFromArchive:v17->_archive];
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

- (BOOL)_applyArchiveFormat:(unint64_t)format error:(id *)error
{
  if (format)
  {
    if (error)
    {
      v5 = [MEMORY[0x29EDB9FA0] amk_errorFromPosixCode:22];
LABEL_7:
      v8 = v5;
      v9 = v5;
      result = 0;
      *error = v8;
      return result;
    }

    return 0;
  }

  archive = self->_archive;
  if (archive_write_set_format_gnutar())
  {
    if (error)
    {
      v5 = [MEMORY[0x29EDB9FA0] amk_errorFromArchive:self->_archive];
      goto LABEL_7;
    }

    return 0;
  }

  return 1;
}

- (BOOL)_applyCompressionScheme:(unint64_t)scheme error:(id *)error
{
  if (!scheme)
  {
    return 1;
  }

  if (scheme != 1)
  {
    if (error)
    {
      v7 = [MEMORY[0x29EDB9FA0] amk_errorFromPosixCode:22];
      goto LABEL_9;
    }

    return 0;
  }

  archive = self->_archive;
  if (archive_write_add_filter_gzip())
  {
    if (error)
    {
      v7 = [MEMORY[0x29EDB9FA0] amk_errorFromArchive:self->_archive];
LABEL_9:
      v9 = v7;
      v10 = v7;
      result = 0;
      *error = v9;
      return result;
    }

    return 0;
  }

  return 1;
}

- (void)closeWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __40__AMKArchiveWriter_closeWithCompletion___block_invoke;
  v7[3] = &unk_29F37F778;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
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

- (BOOL)_closeWithError:(id *)error
{
  archive = self->_archive;
  archive_write_close();
  fileHandle = self->_fileHandle;

  return [(NSFileHandle *)fileHandle closeAndReturnError:error];
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

- (BOOL)_writeContentsOfFdToArchive:(int)archive error:(id *)error
{
  v16 = *MEMORY[0x29EDCA608];
  if (![(NSProgress *)self->_progress isCancelled])
  {
    do
    {
      v7 = read(archive, v15, 0x2000uLL);
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
        amk_errorFromErrno = [MEMORY[0x29EDB9FA0] amk_errorFromArchive:self->_archive];
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

    amk_errorFromErrno = [MEMORY[0x29EDB9FA0] amk_errorFromErrno];
LABEL_15:
    v12 = amk_errorFromErrno;
    v13 = amk_errorFromErrno;
    result = 0;
    *error = v12;
    goto LABEL_16;
  }

  if ([(NSProgress *)self->_progress isCancelled])
  {
LABEL_10:
    amk_errorFromErrno = [MEMORY[0x29EDB9FA0] amk_canceledError];
    goto LABEL_15;
  }

LABEL_12:
  result = 1;
LABEL_16:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

- (BOOL)_appendContentsOfDirectory:(id)directory pathInArchive:(id)archive error:(id *)error
{
  v47[2] = *MEMORY[0x29EDCA608];
  directoryCopy = directory;
  archiveCopy = archive;
  disk_new = archive_read_disk_new();
  archive_read_disk_set_standard_lookup();
  v47[0] = [directoryCopy fileSystemRepresentation];
  v47[1] = 0;
  v11 = fts_open(v47, 84, 0);
  amk_errorFromErrno = 0;
  if (!v11)
  {
    amk_errorFromErrno = [MEMORY[0x29EDB9FA0] amk_errorFromErrno];
  }

  lastPathComponent = [directoryCopy lastPathComponent];
  v14 = [lastPathComponent isEqualToString:archiveCopy];

  if (v14)
  {
    uRLByDeletingLastPathComponent = [directoryCopy URLByDeletingLastPathComponent];
    v16 = strlen([uRLByDeletingLastPathComponent fileSystemRepresentation]);
  }

  else
  {
    v16 = strlen([directoryCopy fileSystemRepresentation]);
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
  errorCopy = error;
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
          error = errorCopy;
          goto LABEL_39;
        }
      }

      if ((v23 & 0x490) == 0)
      {
LABEL_15:
        if ([(NSProgress *)self->_progress isCancelled])
        {
          amk_canceledError = [MEMORY[0x29EDB9FA0] amk_canceledError];
          goto LABEL_37;
        }

        v40 = open(v19->fts_accpath, 4);
        if ((v40 & 0x80000000) == 0)
        {
          archive_entry_new();
          selfCopy = self;
          if ((v14 & 1) == 0)
          {
            v38 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:&v19->fts_path[v44 + 1]];
            v24 = [archiveCopy stringByAppendingPathComponent:v38];
            fileSystemRepresentation = [v24 fileSystemRepresentation];
          }

          archive_entry_set_pathname();
          fts_path = v19->fts_path;
          archive_entry_copy_sourcepath();
          fts_statp = v19->fts_statp;
          if (archive_read_disk_entry_from_file())
          {
            fileSystemRepresentation = [MEMORY[0x29EDB9FA0] amk_errorFromArchive:disk_new];
            v39 = 0;
            self = selfCopy;
          }

          else
          {
            self = selfCopy;
            archive = selfCopy->_archive;
            if (archive_write_header())
            {
              fileSystemRepresentation = [MEMORY[0x29EDB9FA0] amk_errorFromArchive:selfCopy->_archive];
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
                      error = errorCopy;
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

              v46 = amk_errorFromErrno;
              v39 = [(AMKArchiveWriter *)selfCopy _writeContentsOfFdToArchive:v40 error:&v46];
              fileSystemRepresentation = v46;
            }
          }

          amk_errorFromErrno = fileSystemRepresentation;
          goto LABEL_26;
        }
      }

      amk_canceledError = [MEMORY[0x29EDB9FA0] amk_errorFromErrno];
LABEL_37:
      v32 = amk_canceledError;

      objc_autoreleasePoolPop(v21);
      v18 = 0;
      amk_errorFromErrno = v32;
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

  if (error && amk_errorFromErrno)
  {
    v33 = amk_errorFromErrno;
    *error = amk_errorFromErrno;
  }

  v34 = *MEMORY[0x29EDCA608];
  return v18;
}

- (BOOL)_fillSymlinkEntryFromURL:(id)l entry:(archive_entry *)entry error:(id *)error
{
  v11 = *MEMORY[0x29EDCA608];
  v6 = readlink([l fileSystemRepresentation], v10, 0x3FFuLL);
  v7 = v6;
  if (v6 == -1)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] amk_errorFromErrno];
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

- (void)appendItemAtURL:(id)l pathInArchive:(id)archive completion:(id)completion
{
  lCopy = l;
  archiveCopy = archive;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __61__AMKArchiveWriter_appendItemAtURL_pathInArchive_completion___block_invoke;
  v15[3] = &unk_29F37F7A0;
  v15[4] = self;
  v16 = archiveCopy;
  v17 = lCopy;
  v18 = completionCopy;
  v12 = lCopy;
  v13 = archiveCopy;
  v14 = completionCopy;
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

- (BOOL)_appendItemAtURL:(id)l pathInArchive:(id)archive error:(id *)error
{
  lCopy = l;
  archiveCopy = archive;
  v10 = archive_entry_new();
  v11 = open([lCopy fileSystemRepresentation], 2129920);
  if ((v11 & 0x80000000) != 0)
  {
    [MEMORY[0x29EDB9FA0] amk_errorFromErrno];
    *error = v14 = 0;
    goto LABEL_7;
  }

  v12 = v11;
  if (!fstat(v11, &v19))
  {
    v16 = v19.st_mode & 0xF000;
    switch(v16)
    {
      case 16384:
        if (![(AMKArchiveWriter *)self _appendContentsOfDirectory:lCopy pathInArchive:archiveCopy error:error])
        {
          goto LABEL_18;
        }

        break;
      case 40960:
        archive_entry_copy_stat();
        [archiveCopy UTF8String];
        archive_entry_set_pathname();
        if (![(AMKArchiveWriter *)self _fillSymlinkEntryFromURL:lCopy entry:v10 error:error])
        {
          goto LABEL_18;
        }

        archive = self->_archive;
        if (archive_write_header())
        {
LABEL_16:
          amk_errorFromErrno = [MEMORY[0x29EDB9FA0] amk_errorFromArchive:self->_archive];
          goto LABEL_4;
        }

        ++self->_symlinkCount;
        break;
      case 32768:
        archive_entry_copy_stat();
        [archiveCopy UTF8String];
        archive_entry_set_pathname();
        ++self->_fileCount;
        v17 = self->_archive;
        if (!archive_write_header())
        {
          if ([(AMKArchiveWriter *)self _writeContentsOfFdToArchive:v12 error:error])
          {
            break;
          }

LABEL_18:
          v14 = 0;
          goto LABEL_5;
        }

        goto LABEL_16;
      default:
        amk_errorFromErrno = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9E30] code:3328 userInfo:0];
        goto LABEL_4;
    }

    v14 = 1;
    goto LABEL_5;
  }

  amk_errorFromErrno = [MEMORY[0x29EDB9FA0] amk_errorFromErrno];
LABEL_4:
  v14 = 0;
  *error = amk_errorFromErrno;
LABEL_5:
  close(v12);
LABEL_7:
  archive_entry_free();

  return v14;
}

@end
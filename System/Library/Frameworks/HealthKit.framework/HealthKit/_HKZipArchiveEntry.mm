@interface _HKZipArchiveEntry
- (BOOL)_enumerateLinesInCurrentEntryWithError:(id *)a3 block:(id)a4;
- (BOOL)_isExtractorStateValidWithError:(id *)a3;
- (BOOL)enumerateLinesWithError:(id *)a3 block:(id)a4;
- (_HKZipArchiveEntry)initWithExtractor:(id)a3 currentEntry:(archive_entry *)a4 pathname:(id)a5;
- (id)_getDataWithBufferingWithMaxSizeBytes:(unint64_t)a3 error:(id *)a4;
- (id)_getDataWithSize:(unint64_t)a3 error:(id *)a4;
- (id)dataWithMaxSizeBytes:(unint64_t)a3 error:(id *)a4;
@end

@implementation _HKZipArchiveEntry

- (_HKZipArchiveEntry)initWithExtractor:(id)a3 currentEntry:(archive_entry *)a4 pathname:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = _HKZipArchiveEntry;
  v10 = [(_HKZipArchiveEntry *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_extractor, v8);
    v11->_entry = a4;
    objc_storeStrong(&v11->_pathname, a5);
    v11->_enumerationCount = [v8 enumerationCount];
  }

  return v11;
}

- (id)dataWithMaxSizeBytes:(unint64_t)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  if (![(_HKZipArchiveEntry *)self _isExtractorStateValidWithError:a4])
  {
    v12 = 0;
    goto LABEL_17;
  }

  if (!self->_didReadEntryData)
  {
    data = self->_data;
    self->_data = 0;

    entry = self->_entry;
    if (archive_entry_size_is_set())
    {
      v9 = self->_entry;
      v10 = archive_entry_size();
      if (v10)
      {
        if (a3 && v10 > a3)
        {
          [MEMORY[0x1E696ABC0] hk_assignError:a4 code:11 format:{@"Entry size %ld is larger than specified max size %ld", v10, a3}];
          v11 = self->_data;
          self->_data = 0;
        }

        else
        {
          v17 = [(_HKZipArchiveEntry *)self _getDataWithSize:v10 error:a4];
          v11 = self->_data;
          self->_data = v17;
        }

        goto LABEL_15;
      }

      _HKInitializeLogging();
      v13 = HKLogInfrastructure();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_entry;
        *buf = 136446210;
        v21 = archive_entry_pathname();
        _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "archive entry data zero bytes: %{public}s", buf, 0xCu);
      }
    }

    v15 = [(_HKZipArchiveEntry *)self _getDataWithBufferingWithMaxSizeBytes:a3 error:a4];
    v16 = self->_data;
    self->_data = v15;

LABEL_15:
    self->_didReadEntryData = 1;
  }

  v12 = self->_data;
LABEL_17:
  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)enumerateLinesWithError:(id *)a3 block:(id)a4
{
  v7 = a4;
  if (![(_HKZipArchiveEntry *)self _isExtractorStateValidWithError:a3])
  {
    goto LABEL_14;
  }

  if (self->_didReadEntryData)
  {
    v8 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"self" class:objc_opt_class() selector:a2 format:@"Data has already been read for this entry"];
    v9 = v8;
    if (!v8)
    {
LABEL_13:

LABEL_14:
      v13 = 0;
      goto LABEL_15;
    }

    if (!a3)
    {
      _HKLogDroppedError(v8);
      goto LABEL_13;
    }

LABEL_12:
    v14 = v9;
    *a3 = v9;
    goto LABEL_13;
  }

  data = self->_data;
  self->_data = 0;

  self->_didReadEntryData = 1;
  v16 = 0;
  v11 = [(_HKZipArchiveEntry *)self _enumerateLinesInCurrentEntryWithError:&v16 block:v7];
  v12 = v16;
  if (!v11)
  {
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = [MEMORY[0x1E696ABC0] hk_error:122 description:@"Archive entry line enumeration failed without setting an error"];
      if (!v9)
      {
        goto LABEL_13;
      }
    }

    if (!a3)
    {
      _HKLogDroppedError(v9);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v13 = 1;
LABEL_15:

  return v13;
}

- (BOOL)_isExtractorStateValidWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_extractor);
  if ([WeakRetained archive])
  {
    v6 = objc_loadWeakRetained(&self->_extractor);
    v7 = [v6 enumerationCount];
    enumerationCount = self->_enumerationCount;

    if (v7 == enumerationCount)
    {
      return 1;
    }
  }

  else
  {
  }

  v10 = MEMORY[0x1E696ABC0];
  v11 = NSStringFromSelector(sel_enumerateEntriesWithError_block_);
  [v10 hk_assignError:a3 code:119 format:{@"%@ is invalid outside of '%@' block", self, v11}];

  return 0;
}

- (id)_getDataWithSize:(unint64_t)a3 error:(id *)a4
{
  v7 = malloc_type_malloc(a3, 0x22B41EA7uLL);
  WeakRetained = objc_loadWeakRetained(&self->_extractor);
  v9 = [WeakRetained archive];

  if (archive_read_data() < 0)
  {
    [objc_opt_class() _assignReadError:a4 archive:v9];
    free(v7);
    v10 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v7 length:a3 freeWhenDone:1];
  }

  return v10;
}

- (id)_getDataWithBufferingWithMaxSizeBytes:(unint64_t)a3 error:(id *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_extractor);
  v7 = [WeakRetained archive];

  v8 = objc_alloc_init(MEMORY[0x1E695DF88]);
  data = archive_read_data();
  if (data < 1)
  {
LABEL_6:
    if (data < 0)
    {
      [objc_opt_class() _assignReadError:a4 archive:v7];
      v11 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
    while (1)
    {
      v10 += data;
      if (a3)
      {
        if (v10 > a3)
        {
          break;
        }
      }

      [v8 appendBytes:v14 length:?];
      data = archive_read_data();
      if (data <= 0)
      {
        goto LABEL_6;
      }
    }

    v8 = 0;
  }

  v8 = v8;
  v11 = v8;
LABEL_10:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)_enumerateLinesInCurrentEntryWithError:(id *)a3 block:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_extractor);
  v8 = [WeakRetained archive];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67___HKZipArchiveEntry__enumerateLinesInCurrentEntryWithError_block___block_invoke;
  v10[3] = &unk_1E7379F70;
  v10[4] = self;
  v10[5] = v8;
  LOBYTE(a3) = [HKLineEnumerator enumerateUTF8LinesWithError:a3 dataProvider:v10 lineHandler:v6];

  return a3;
}

- (void)dataWithMaxSizeBytes:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
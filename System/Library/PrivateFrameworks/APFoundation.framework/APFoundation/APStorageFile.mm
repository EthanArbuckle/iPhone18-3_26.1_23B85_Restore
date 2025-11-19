@interface APStorageFile
+ (__sFILE)_constructFileForURL:(id)a3 forMode:(char *)a4 error:(id *)a5;
- (BOOL)addData:(id)a3 error:(id *)a4;
- (BOOL)addObject:(id)a3 error:(id *)a4;
- (id)_initForWritingFile:(__sFILE *)a3 forURL:(id)a4 loggablePath:(id)a5;
- (id)_initWithFile:(__sFILE *)a3 forURL:(id)a4 loggablePath:(id)a5;
- (id)allObjects;
- (id)initForAppendingAtURL:(id)a3;
- (id)initForMode:(int64_t)a3 atURL:(id)a4;
- (id)initForReadingAtURL:(id)a3;
- (id)initForWritingAtURL:(id)a3;
- (id)nextObject;
- (id)nextObjectData;
- (void)_removeCorruptedFile:(id)a3;
- (void)close;
- (void)dealloc;
@end

@implementation APStorageFile

- (void)dealloc
{
  objc_msgSend_close(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = APStorageFile;
  [(APStorageFile *)&v5 dealloc];
}

- (void)close
{
  fp = self->_fp;
  if (fp)
  {
    fclose(fp);
    self->_fp = 0;
  }
}

- (id)initForWritingAtURL:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8 = objc_msgSend_safePath(v4, v5, v6, v7);
  v12 = objc_msgSend_URLByDeletingLastPathComponent(v4, v9, v10, v11);
  v13 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v24 = 0;
  objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v13, v14, v12, 1, 0, &v24);
  v15 = v24;

  if (!v15)
  {
    v23 = 0;
    v18 = objc_msgSend__constructFileForURL_forMode_error_(APStorageFile, v16, v4, "w", &v23);
    v15 = v23;
    if (v18)
    {
      self = objc_msgSend__initForWritingFile_forURL_loggablePath_(self, v19, v18, v4, v8);
      v17 = self;
      goto LABEL_5;
    }

    v22 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138740227;
      v26 = v8;
      v27 = 2114;
      v28 = v15;
      _os_log_impl(&dword_1BADC1000, v22, OS_LOG_TYPE_ERROR, "ERROR: Unable to open file(%{sensitive}@): %{public}@", buf, 0x16u);
    }
  }

  v17 = 0;
LABEL_5:

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)_initForWritingFile:(__sFILE *)a3 forURL:(id)a4 loggablePath:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = APStorageFile;
  v11 = [(APStorageFile *)&v14 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    v11->_fp = a3;
    objc_storeStrong(&v11->_fileURL, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  return p_isa;
}

- (id)initForAppendingAtURL:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v9 = objc_msgSend_safePath(v5, v6, v7, v8);
  v13 = objc_msgSend_URLByDeletingLastPathComponent(v5, v10, v11, v12);
  v14 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v36 = 0;
  objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v14, v15, v13, 1, 0, &v36);
  v16 = v36;

  if (v16)
  {
    v18 = APLogForCategory(0x33uLL);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_4:

      v19 = 0;
      goto LABEL_5;
    }

LABEL_3:
    *buf = 138740227;
    v40 = v9;
    v41 = 2114;
    v42 = v16;
    _os_log_impl(&dword_1BADC1000, v18, OS_LOG_TYPE_ERROR, "ERROR: Unable to open file(%{sensitive}@): %{public}@", buf, 0x16u);
    goto LABEL_4;
  }

  v35 = 0;
  v22 = objc_msgSend__constructFileForURL_forMode_error_(APStorageFile, v17, v5, "a+", &v35);
  v16 = v35;
  if (!v22)
  {
    v18 = APLogForCategory(0x33uLL);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (fseek(v22, 0, 2))
  {
    v24 = MEMORY[0x1E696ABC0];
    v25 = kSFSFileInconsistencyError;
    v37 = @"reason";
    v38 = @"Could not seek to end of file.";
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, &v38, &v37, 1);
    v28 = objc_msgSend_errorWithDomain_code_userInfo_(v24, v27, @"com.apple.ap.StorageFileSystem", v25, v26);

    v29 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138740227;
      v40 = v9;
      v41 = 2114;
      v42 = v28;
      _os_log_impl(&dword_1BADC1000, v29, OS_LOG_TYPE_ERROR, "ERROR: Could not initialize file(%{sensitive}@) for appending: %{public}@", buf, 0x16u);
    }

    fclose(v22);
    v19 = 0;
    v16 = v28;
  }

  else
  {
    if (MEMORY[0x1BFB05610](v22))
    {
      v34.receiver = self;
      v34.super_class = APStorageFile;
      v31 = [(APStorageFile *)&v34 init];
      p_isa = &v31->super.isa;
      if (v31)
      {
        v31->_fp = v22;
        objc_storeStrong(&v31->_fileURL, a3);
        objc_storeStrong(p_isa + 3, v9);
      }

      v33 = p_isa;
    }

    else
    {
      v33 = objc_msgSend__initForWritingFile_forURL_loggablePath_(self, v30, v22, v5, v9);
    }

    self = v33;
    v19 = v33;
  }

LABEL_5:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)initForReadingAtURL:(id)a3
{
  v5 = a3;
  v9 = objc_msgSend_safePath(v5, v6, v7, v8);
  v18 = 0;
  v11 = objc_msgSend__constructFileForURL_forMode_error_(APStorageFile, v10, v5, "r", &v18);
  v12 = v18;
  if (v11)
  {
    v17.receiver = self;
    v17.super_class = APStorageFile;
    v13 = [(APStorageFile *)&v17 init];
    p_isa = &v13->super.isa;
    if (v13)
    {
      v13->_fp = v11;
      objc_storeStrong(&v13->_fileURL, a3);
      objc_storeStrong(p_isa + 3, v9);
    }

    self = p_isa;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)initForMode:(int64_t)a3 atURL:(id)a4
{
  v8 = a4;
  switch(a3)
  {
    case 'a':
      v9 = objc_msgSend_initForAppendingAtURL_(self, v6, v8, v7);
      goto LABEL_7;
    case 'w':
      v9 = objc_msgSend_initForWritingAtURL_(self, v6, v8, v7);
      goto LABEL_7;
    case 'r':
      v9 = objc_msgSend_initForReadingAtURL_(self, v6, v8, v7);
LABEL_7:
      self = v9;
      break;
  }

  return self;
}

- (id)_initWithFile:(__sFILE *)a3 forURL:(id)a4 loggablePath:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = APStorageFile;
  v11 = [(APStorageFile *)&v14 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    v11->_fp = a3;
    objc_storeStrong(&v11->_fileURL, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  return p_isa;
}

- (BOOL)addObject:(id)a3 error:(id *)a4
{
  v7 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], a2, a3, 1, a4);
  if (v7)
  {
    v8 = objc_msgSend_addData_error_(self, v6, v7, a4);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)allObjects
{
  v5 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3);
  v6 = objc_autoreleasePoolPush();
  v10 = objc_msgSend_nextObject(self, v7, v8, v9);
  if (v10)
  {
    v13 = v10;
    do
    {
      objc_msgSend_addObject_(v5, v11, v13, v12);
      objc_autoreleasePoolPop(v6);
      v6 = objc_autoreleasePoolPush();
      v17 = objc_msgSend_nextObject(self, v14, v15, v16);

      v13 = v17;
    }

    while (v17);
  }

  objc_autoreleasePoolPop(v6);
  v20 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v18, v5, v19);

  return v20;
}

- (id)nextObject
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_nextObjectData(self, a2, v2, v3);
  if (v8)
  {
    v9 = objc_msgSend_classes(APSupportedSecureEncodedClass, v5, v6, v7);
    v31 = 0;
    v11 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x1E696ACD0], v10, v9, v8, &v31);
    v12 = v31;
    if (v12)
    {
      v13 = APLogForCategory(0x33uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        loggablePath = self->_loggablePath;
        *buf = 138478339;
        v35 = v15;
        v36 = 2117;
        v37 = loggablePath;
        v38 = 2114;
        v39 = v12;
        _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_ERROR, "[%{private}@] Error occurred getting nextObject for file(%{sensitive}@):%{public}@", buf, 0x20u);
      }

      objc_msgSend__removeCorruptedFile_(self, v17, v12, v18);
      v32[0] = @"storage_error";
      v22 = objc_msgSend_debugDescription(v12, v19, v20, v21);
      v24 = v22;
      v25 = @"nil";
      if (v22)
      {
        v26 = v22;
      }

      else
      {
        v26 = @"nil";
      }

      v32[1] = @"storage_path";
      v33[0] = v26;
      if (self->_loggablePath)
      {
        v25 = self->_loggablePath;
      }

      v33[1] = v25;
      v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, v33, v32, 2);

      CreateDiagnosticReport(@"Error occurred getting nextObject for file", v27, @"Storage File");
      v28 = 0;
    }

    else
    {
      v28 = v11;
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (BOOL)addData:(id)a3 error:(id *)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v10 = objc_msgSend_length(v6, v7, v8, v9);
  v14 = v10;
  if (v10 <= 0x10000)
  {
    if (!v10)
    {
LABEL_11:
      LOBYTE(a4) = 1;
      goto LABEL_19;
    }
  }

  else
  {
    v15 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v50 = v14;
      v51 = 1024;
      v52 = 0x10000;
      _os_log_impl(&dword_1BADC1000, v15, OS_LOG_TYPE_ERROR, "EFS size warning: The data of length(%lu) is larger than %d.", buf, 0x12u);
    }
  }

  __ptr = objc_msgSend_length(v6, v11, v12, v13);
  if (fwrite(&__ptr, 4uLL, 1uLL, self->_fp) == 1)
  {
    v16 = v6;
    v20 = objc_msgSend_bytes(v16, v17, v18, v19);
    v24 = objc_msgSend_length(v6, v21, v22, v23);
    v25 = fwrite(v20, 1uLL, v24, self->_fp);
    v26 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v50 = v25;
      _os_log_impl(&dword_1BADC1000, v26, OS_LOG_TYPE_DEBUG, "bytesWritten = %zu", buf, 0xCu);
    }

    if (v25 == objc_msgSend_length(v6, v27, v28, v29))
    {
      fflush(self->_fp);
      goto LABEL_11;
    }

    if (!a4)
    {
      goto LABEL_19;
    }

    v37 = MEMORY[0x1E696ABC0];
    v38 = kSFSFileInconsistencyError;
    v45 = @"reason";
    v46 = @"Bytes written did not match expectation for encrypted data.";
    v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v30, &v46, &v45, 1);
    *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v37, v40, @"com.apple.ap.StorageFileSystem", v38, v39);

    objc_msgSend_sendAnalyticError_domain_code_(APStorageManager, v41, @"Failed", @"SFS", 16104);
LABEL_18:
    LOBYTE(a4) = 0;
    goto LABEL_19;
  }

  v31 = APLogForCategory(0x33uLL);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1BADC1000, v31, OS_LOG_TYPE_ERROR, "Can't write header for data object", buf, 2u);
  }

  if (a4)
  {
    v33 = MEMORY[0x1E696ABC0];
    v34 = kSFSWritingToFileError;
    v47 = @"reason";
    v48 = @"Couldn't write header for data object.";
    v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v32, &v48, &v47, 1);
    *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v33, v36, @"com.apple.ap.StorageFileSystem", v34, v35);

    goto LABEL_18;
  }

LABEL_19:

  v42 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)nextObjectData
{
  v90[2] = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_fp(self, a2, v2, v3))
  {
    v13 = 0;
    goto LABEL_19;
  }

  __ptr = 0;
  v5 = fread(&__ptr, 4uLL, 1uLL, self->_fp);
  v6 = *__error();
  if (feof(self->_fp))
  {
    v9 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      loggablePath = self->_loggablePath;
      *buf = 138478083;
      v82 = v11;
      v83 = 2117;
      v84 = loggablePath;
      _os_log_impl(&dword_1BADC1000, v9, OS_LOG_TYPE_INFO, "[%{private}@] Reached End of File for file(%{sensitive}@)", buf, 0x16u);
    }

    goto LABEL_17;
  }

  if (v5 != 1)
  {
    v27 = MEMORY[0x1E696ABC0];
    v28 = kSFSFileInconsistencyError;
    v90[0] = @"Could not read item header.";
    v89[0] = @"reason";
    v89[1] = @"code";
    v29 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v7, v6, v8);
    v90[1] = v29;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v30, v90, v89, 2);
    v9 = objc_msgSend_errorWithDomain_code_userInfo_(v27, v32, @"com.apple.ap.StorageFileSystem", v28, v31);

    v33 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = self->_loggablePath;
      *buf = 138478339;
      v82 = v35;
      v83 = 2117;
      v84 = v36;
      v85 = 2112;
      v86 = v9;
      _os_log_impl(&dword_1BADC1000, v33, OS_LOG_TYPE_ERROR, "[%{private}@] Read error occurred getting nextObjectData for file(%{sensitive}@):\n%@", buf, 0x20u);
    }

    objc_msgSend_sendAnalyticError_domain_code_(APStorageManager, v37, @"Failed", @"SFS", 16105);
    goto LABEL_16;
  }

  v14 = __ptr;
  if (__ptr > 0x40000)
  {
    v15 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v82) = v14;
      _os_log_impl(&dword_1BADC1000, v15, OS_LOG_TYPE_ERROR, "data appears to be corrupt, data.length(%d) is too big.  We are aborting reading file data.", buf, 8u);
    }

    v16 = MEMORY[0x1E696ABC0];
    v17 = kSFSFileInconsistencyError;
    v87 = @"reason";
    v88 = @"Data is larger than intended for read.";
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, &v88, &v87, 1);
    v9 = objc_msgSend_errorWithDomain_code_userInfo_(v16, v20, @"com.apple.ap.StorageFileSystem", v17, v19);

    v21 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = self->_loggablePath;
      *buf = 138478339;
      v82 = v23;
      v83 = 2117;
      v84 = v24;
      v85 = 2114;
      v86 = v9;
      _os_log_impl(&dword_1BADC1000, v21, OS_LOG_TYPE_ERROR, "[%{private}@] Header error occurred getting nextObjectData for file(%{sensitive}@):\n%{public}@", buf, 0x20u);
    }

LABEL_16:
    objc_msgSend__removeCorruptedFile_(self, v25, v9, v26);
    goto LABEL_17;
  }

  v40 = objc_alloc(MEMORY[0x1E695DF88]);
  v9 = objc_msgSend_initWithCapacity_(v40, v41, v14, v42);
  v46 = 0;
  if (v14)
  {
    while (1)
    {
      v47 = objc_autoreleasePoolPush();
      v48 = v14 - v46 >= 0x40 ? 64 : v14 - v46;
      v49 = fread(buf, 1uLL, v48, self->_fp);
      if (v49 != v48)
      {
        break;
      }

      v51 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v50, buf, v48, 0);
      objc_msgSend_appendData_(v9, v52, v51, v53);
      v57 = objc_msgSend_length(v51, v54, v55, v56);

      v46 += v57;
      objc_autoreleasePoolPop(v47);
      if (v46 >= v14)
      {
        goto LABEL_30;
      }
    }

    v46 += v49;
    objc_autoreleasePoolPop(v47);
  }

LABEL_30:
  if (v46 == v14)
  {
    v13 = v9;
    goto LABEL_18;
  }

  v58 = MEMORY[0x1E696AEC0];
  v59 = objc_msgSend_length(v9, v43, v44, v45);
  v62 = objc_msgSend_stringWithFormat_(v58, v60, @"The data is wrong length(%lu) not (%lu).", v61, v59, v14);
  v63 = MEMORY[0x1E696ABC0];
  v64 = kSFSFileInconsistencyError;
  v79 = @"reason";
  v80 = v62;
  v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v65, &v80, &v79, 1);
  v68 = objc_msgSend_errorWithDomain_code_userInfo_(v63, v67, @"com.apple.ap.StorageFileSystem", v64, v66);

  v69 = APLogForCategory(0x33uLL);
  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    v70 = objc_opt_class();
    v71 = NSStringFromClass(v70);
    *v75 = 138478083;
    v76 = v71;
    v77 = 2114;
    v78 = v68;
    _os_log_impl(&dword_1BADC1000, v69, OS_LOG_TYPE_ERROR, "[%{private}@] %{public}@", v75, 0x16u);
  }

  objc_msgSend__removeCorruptedFile_(self, v72, v68, v73);
LABEL_17:
  v13 = 0;
LABEL_18:

LABEL_19:
  v38 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (__sFILE)_constructFileForURL:(id)a3 forMode:(char *)a4 error:(id *)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v11 = objc_msgSend_fileSystemRepresentation(v7, v8, v9, v10);
  v12 = fopen(v11, a4);
  v14 = v12;
  if (a5 && !v12)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = kSFSInvalidPathError;
    v21 = @"reason";
    v22[0] = @"Invalid path for SFS.";
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v22, &v21, 1);
    *a5 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v18, @"com.apple.ap.StorageFileSystem", v16, v17);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)_removeCorruptedFile:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = APLogForCategory(0x33uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    loggablePath = self->_loggablePath;
    *buf = 138478083;
    v23 = v6;
    v24 = 2117;
    v25 = loggablePath;
    _os_log_impl(&dword_1BADC1000, v4, OS_LOG_TYPE_ERROR, "[%{private}@] Removing corrupted file at path: %{sensitive}@", buf, 0x16u);
  }

  objc_msgSend_close(self, v8, v9, v10);
  v11 = objc_alloc_init(MEMORY[0x1E696AC08]);
  fileURL = self->_fileURL;
  v21 = 0;
  objc_msgSend_removeItemAtURL_error_(v11, v13, fileURL, &v21);
  v14 = v21;

  if (v14)
  {
    v16 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = self->_loggablePath;
      *buf = 138478339;
      v23 = v18;
      v24 = 2117;
      v25 = v19;
      v26 = 2114;
      v27 = v14;
      _os_log_impl(&dword_1BADC1000, v16, OS_LOG_TYPE_ERROR, "[%{private}@] Failed to remove file(%{sensitive}@):\n%{public}@", buf, 0x20u);
    }
  }

  objc_msgSend_sendAnalyticError_domain_code_(APStorageManager, v15, @"Failed", @"SFS", 16106);

  v20 = *MEMORY[0x1E69E9840];
}

@end
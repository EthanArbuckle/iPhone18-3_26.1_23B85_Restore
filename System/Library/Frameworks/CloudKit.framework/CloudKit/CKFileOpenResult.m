@interface CKFileOpenResult
- (CKFileOpenResult)initWithCoder:(id)a3;
- (CKFileOpenResult)initWithFileHandle:(id)a3 fileSize:(id)a4;
- (CKFileOpenResult)initWithMobileKeyBagHandle:(_mkbbackupref *)a3 path:(id)a4 error:(id *)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKFileOpenResult

- (CKFileOpenResult)initWithFileHandle:(id)a3 fileSize:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CKFileOpenResult;
  v9 = [(CKFileOpenResult *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileHandle, a3);
    v13 = objc_msgSend_copy(v8, v11, v12);
    fileSize = v10->_fileSize;
    v10->_fileSize = v13;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v17 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_fileHandle(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v17, v8, v7, @"fileHandle");

  v11 = objc_msgSend_encryptedFileHandle(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v17, v12, v11, @"encryptedFileHandle");

  v15 = objc_msgSend_fileSize(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(v17, v16, v15, @"fileSize");

  objc_autoreleasePoolPop(v4);
}

- (CKFileOpenResult)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CKFileOpenResult;
  v5 = [(CKFileOpenResult *)&v20 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"fileHandle");
    fileHandle = v5->_fileHandle;
    v5->_fileHandle = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"encryptedFileHandle");
    encryptedFileHandle = v5->_encryptedFileHandle;
    v5->_encryptedFileHandle = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"fileSize");
    fileSize = v5->_fileSize;
    v5->_fileSize = v17;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (CKFileOpenResult)initWithMobileKeyBagHandle:(_mkbbackupref *)a3 path:(id)a4 error:(id *)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v11 = objc_msgSend_init(self, v9, v10);
  if (!v11)
  {
    goto LABEL_30;
  }

  FileDescriptors = MKBBackupGetFileDescriptors();
  if (!FileDescriptors)
  {
    v17 = fcntl(-1, 63);
    if ((v17 & 0x80000000) != 0)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v21 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        v39 = v21;
        v40 = *__error();
        v45.st_dev = 138543618;
        *&v45.st_mode = v8;
        WORD2(v45.st_ino) = 1024;
        *(&v45.st_ino + 6) = v40;
        _os_log_error_impl(&dword_1883EA000, v39, OS_LOG_TYPE_ERROR, "could not get protection class of file %{public}@: %{errno}d\n", &v45, 0x12u);
      }
    }

    else
    {
      v18 = v17;
      if ((v17 - 1) >= 3)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v37 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          v45.st_dev = 138543618;
          *&v45.st_mode = v8;
          WORD2(v45.st_ino) = 1024;
          *(&v45.st_ino + 6) = v18;
          _os_log_error_impl(&dword_1883EA000, v37, OS_LOG_TYPE_ERROR, "attempting to open unprotected file %{public}@: %d", &v45, 0x12u);
          if (!a5)
          {
            goto LABEL_9;
          }
        }

        else if (!a5)
        {
          goto LABEL_9;
        }

        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v38, @"CKInternalErrorDomain", 1017, @"Attempted to open raw encrypted bytes of unprotected file %@ with class:%d", v8, v18);
        goto LABEL_8;
      }

      memset(&v45, 0, sizeof(v45));
      if (!fstat(-1, &v45) && (v45.st_flags & 0x20) != 0)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v19 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v42 = v8;
          v43 = 1024;
          v44 = v18;
          _os_log_error_impl(&dword_1883EA000, v19, OS_LOG_TYPE_ERROR, "attempting to open compressed file %{public}@ with class %d", buf, 0x12u);
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }
        }

        v20 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1883EA000, v20, OS_LOG_TYPE_ERROR, "sleeping for 10", buf, 2u);
        }

        sleep(0xAu);
        __assert_rtn("[CKFileOpenResult initWithMobileKeyBagHandle:path:error:]", "CKFileOpenResult.m", 99, "attempting to open compressed file && 0");
      }
    }

    v22 = objc_alloc(MEMORY[0x1E696AC00]);
    v24 = objc_msgSend_initWithFileDescriptor_closeOnDealloc_(v22, v23, 0xFFFFFFFFLL, 0);
    v25 = v11[1];
    v11[1] = v24;

    v26 = objc_alloc(MEMORY[0x1E696AC00]);
    v28 = objc_msgSend_initWithFileDescriptor_closeOnDealloc_(v26, v27, 0xFFFFFFFFLL, 0);
    v29 = v11[2];
    v11[2] = v28;

    v30 = MKBBackupSize();
    v32 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v31, v30);
    v33 = v11[3];
    v11[3] = v32;

    v11[4] = a3;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v34 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v45.st_dev = 138544130;
      *&v45.st_mode = v8;
      WORD2(v45.st_ino) = 1024;
      *(&v45.st_ino + 6) = -1;
      HIWORD(v45.st_uid) = 1024;
      v45.st_gid = -1;
      LOWORD(v45.st_rdev) = 2048;
      *(&v45.st_rdev + 2) = v30;
      _os_log_debug_impl(&dword_1883EA000, v34, OS_LOG_TYPE_DEBUG, "MKBBackupGetFileDescriptors succeeded at %{public}@ - fd:%d, efd:%d, size:%llu", &v45, 0x22u);
    }

LABEL_30:
    v16 = v11;
    goto LABEL_31;
  }

  v13 = FileDescriptors;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v14 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v45.st_dev = 138543618;
    *&v45.st_mode = v8;
    WORD2(v45.st_ino) = 1024;
    *(&v45.st_ino + 6) = v13;
    _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "MKBBackupGetFileDescriptors failed at %{public}@: %d", &v45, 0x12u);
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (a5)
  {
LABEL_7:
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v15, @"CKInternalErrorDomain", 3001, @"MKBBackupGetFileDescriptors failed with rc:%d", v13);
    *a5 = LABEL_8:;
  }

LABEL_9:
  v16 = 0;
LABEL_31:

  v35 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)dealloc
{
  if (self->_handle)
  {
    MKBBackupClose();
  }

  v3.receiver = self;
  v3.super_class = CKFileOpenResult;
  [(CKFileOpenResult *)&v3 dealloc];
}

@end
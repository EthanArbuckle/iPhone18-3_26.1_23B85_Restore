@interface APStorageManager
+ (BOOL)_removeStorageForSubdirectory:(id)subdirectory;
+ (BOOL)areThereStoredItems;
+ (BOOL)removeStorage;
+ (id)_applicationSupportSubdirectory:(id)subdirectory;
+ (id)_validatedPath:(id)path error:(id *)error;
+ (void)cleanupOldStorage;
+ (void)sendAnalyticError:(id)error domain:(id)domain code:(int64_t)code;
- (APStorageManager)init;
- (APStorageManager)initWithPathPrefix:(id)prefix rootPath:(id)path;
- (BOOL)_createDirectoriesForURL:(id)l error:(id *)error;
- (BOOL)_fileExistsAtPath:(id)path isDirectory:(BOOL *)directory error:(id *)error;
- (BOOL)directoryExistsAtPath:(id)path error:(id *)error;
- (BOOL)fileExistsAtPath:(id)path error:(id *)error;
- (BOOL)moveItemAtPath:(id)path toPath:(id)toPath error:(id *)error;
- (BOOL)removeObjectAtPath:(id)path error:(id *)error;
- (BOOL)storeData:(id)data atPath:(id)path error:(id *)error;
- (BOOL)storeObject:(id)object atPath:(id)path error:(id *)error;
- (BOOL)touchFileAtPath:(id)path error:(id *)error;
- (id)_makeApplicationSupportSubdirectory:(id)subdirectory;
- (id)_rootURL;
- (id)_validatedFullPathForPath:(id)path error:(id *)error;
- (id)_validatedFullURLForPath:(id)path error:(id *)error;
- (id)_validatedPath:(id)path error:(id *)error;
- (id)addedToDirectoryDateForFileAtPath:(id)path error:(id *)error;
- (id)contentsOfDirectoryAtPath:(id)path error:(id *)error;
- (id)createdDateForFileAtPath:(id)path error:(id *)error;
- (id)dataStoredAtPath:(id)path error:(id *)error;
- (id)fileAtKeyPath:(id)path forMode:(int64_t)mode error:(id *)error;
- (id)fileForAppendingAtKeyPath:(id)path error:(id *)error;
- (id)fileForReadingAtKeyPath:(id)path error:(id *)error;
- (id)fileForWritingAtKeyPath:(id)path error:(id *)error;
- (id)iterateObjectsIncludingFolders:(BOOL)folders;
- (id)lastModifiedDateForFileAtPath:(id)path error:(id *)error;
- (id)objectStoredAtPath:(id)path error:(id *)error;
- (id)subpathsOfDirectoryAtPath:(id)path error:(id *)error;
- (void)_initWithPathPrefix:(id)prefix rootPath:(id)path;
- (void)_initWithSubdirectory:(id)subdirectory;
- (void)dfsWithStartPath:(id)path nodeCallback:(id)callback;
- (void)getStorageSize:(unint64_t *)size allocatedSize:(unint64_t *)allocatedSize files:(unint64_t *)files;
@end

@implementation APStorageManager

- (id)_rootURL
{
  v5 = objc_msgSend_rootPath(self, a2, v2, v3);

  if (v5)
  {
    v6 = [APSafeFileURL alloc];
    v10 = objc_msgSend_rootPath(self, v7, v8, v9);
    inited = objc_msgSend_initFileURLWithPath_(v6, v11, v10, v12);
  }

  else
  {
    v14 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_1BADC1000, v14, OS_LOG_TYPE_ERROR, "root URL nil", v17, 2u);
    }

    objc_msgSend_sendAnalyticError_domain_code_(APStorageManager, v15, @"Failed", @"SFS", 16101);
    inited = 0;
  }

  return inited;
}

- (APStorageManager)init
{
  v5 = objc_msgSend__rootSubdirectory(APStorageManager, a2, v2, v3);
  v11.receiver = self;
  v11.super_class = APStorageManager;
  v6 = [(APStorageManager *)&v11 init];
  v9 = v6;
  if (v6)
  {
    objc_msgSend__initWithSubdirectory_(v6, v7, v5, v8);
  }

  return v9;
}

+ (void)cleanupOldStorage
{
  v3 = objc_msgSend__applicationSupportSubdirectory_(APStorageManager, a2, @"EFS", v2);
  v7 = objc_msgSend_path(v3, v4, v5, v6);

  v16 = 0;
  v11 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v8, v9, v10);
  isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v11, v12, v7, &v16);

  if (isDirectory && v16 == 1)
  {
    objc_msgSend__removeStorageForSubdirectory_(APStorageManager, v14, @"EFS", v15);
  }
}

- (void)_initWithSubdirectory:(id)subdirectory
{
  v4 = MEMORY[0x1E696AC08];
  subdirectoryCopy = subdirectory;
  v6 = objc_alloc_init(v4);
  fileManager = self->_fileManager;
  self->_fileManager = v6;

  v10 = objc_msgSend__makeApplicationSupportSubdirectory_(self, v8, subdirectoryCopy, v9);

  rootPath = self->_rootPath;
  self->_rootPath = v10;
}

- (APStorageManager)initWithPathPrefix:(id)prefix rootPath:(id)path
{
  prefixCopy = prefix;
  pathCopy = path;
  v11 = objc_msgSend__rootSubdirectory(APStorageManager, v8, v9, v10);
  v18.receiver = self;
  v18.super_class = APStorageManager;
  v12 = [(APStorageManager *)&v18 init];
  v15 = v12;
  if (v12)
  {
    objc_msgSend__initWithSubdirectory_(v12, v13, v11, v14);
    objc_msgSend__initWithPathPrefix_rootPath_(v15, v16, prefixCopy, pathCopy);
  }

  return v15;
}

- (void)_initWithPathPrefix:(id)prefix rootPath:(id)path
{
  prefixCopy = prefix;
  pathCopy = path;
  v8 = objc_alloc_init(MEMORY[0x1E696AC08]);
  fileManager = self->_fileManager;
  self->_fileManager = v8;

  objc_storeStrong(&self->_pathPrefix, prefix);
  v13 = objc_msgSend_length(pathCopy, v10, v11, v12);
  v16 = pathCopy;
  if (!v13)
  {
    if (!objc_msgSend_length(qword_1EBC37090, pathCopy, v14, v15))
    {
      goto LABEL_5;
    }

    v16 = qword_1EBC37090;
  }

  objc_storeStrong(&self->_rootPath, v16);
LABEL_5:
}

- (BOOL)storeObject:(id)object atPath:(id)path error:(id *)error
{
  pathCopy = path;
  v11 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v9, object, 1, error);
  if (v11)
  {
    v12 = objc_msgSend_storeData_atPath_error_(self, v10, v11, pathCopy, error);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)objectStoredAtPath:(id)path error:(id *)error
{
  v8 = objc_msgSend_dataStoredAtPath_error_(self, a2, path, error);
  if (v8)
  {
    v9 = objc_msgSend_classes(APSupportedSecureEncodedClass, v5, v6, v7);
    v11 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x1E696ACD0], v10, v9, v8, error);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)storeData:(id)data atPath:(id)path error:(id *)error
{
  dataCopy = data;
  v10 = objc_msgSend_fileForWritingAtKeyPath_error_(self, v9, path, error);
  v12 = v10;
  if (v10)
  {
    v13 = objc_msgSend_addData_error_(v10, v11, dataCopy, error);
    objc_msgSend_close(v12, v14, v15, v16);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)dataStoredAtPath:(id)path error:(id *)error
{
  v5 = objc_msgSend_fileForReadingAtKeyPath_error_(self, a2, path, error);
  v9 = v5;
  if (error)
  {
    if (*error)
    {
      v10 = 1;
    }

    else
    {
      v10 = v5 == 0;
    }

    if (!v10)
    {
      goto LABEL_9;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_10;
  }

  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_9:
  v11 = objc_msgSend_nextObjectData(v5, v6, v7, v8);
  objc_msgSend_close(v9, v12, v13, v14);
LABEL_10:

  return v11;
}

- (BOOL)fileExistsAtPath:(id)path error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v19 = 0;
  isDirectory_error = objc_msgSend__fileExistsAtPath_isDirectory_error_(self, v7, pathCopy, &v19, error);
  v11 = v19;
  if (isDirectory_error && error && (v19 & 1) != 0 && !*error)
  {
    v12 = MEMORY[0x1E696ABC0];
    v20 = @"reason";
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"A directory exists at the path (%@)!", v9, pathCopy);
    v21[0] = v13;
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, v21, &v20, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v12, v16, @"com.apple.ap.StorageFileSystem", 1025, v15);

    v11 = v19;
  }

  if (v11)
  {
    LOBYTE(isDirectory_error) = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return isDirectory_error;
}

- (BOOL)directoryExistsAtPath:(id)path error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v19 = 0;
  if (!objc_msgSend__fileExistsAtPath_isDirectory_error_(self, v7, pathCopy, &v19, error))
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = v19;
  if (error && !v19)
  {
    if (!*error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = kSFSErrorDeterminingIfPathIsDirectory;
      v20 = @"reason";
      v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"A file exists at path (%@) but it is not a directory!", v9, pathCopy);
      v21[0] = v15;
      v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v21, &v20, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v13, v18, @"com.apple.ap.StorageFileSystem", v14, v17);

      v10 = v19;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

- (BOOL)_fileExistsAtPath:(id)path isDirectory:(BOOL *)directory error:(id *)error
{
  v8 = objc_msgSend__validatedFullPathForPath_error_(self, a2, path, error);
  if (v8)
  {
    isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(self->_fileManager, v7, v8, directory);
  }

  else
  {
    isDirectory = 0;
  }

  return isDirectory;
}

- (BOOL)removeObjectAtPath:(id)path error:(id *)error
{
  v7 = objc_msgSend__validatedFullURLForPath_error_(self, a2, path, error);
  if (v7)
  {
    v8 = objc_msgSend_removeItemAtURL_error_(self->_fileManager, v6, v7, error);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fileForReadingAtKeyPath:(id)path error:(id *)error
{
  v40[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v11 = objc_msgSend__validatedFullURLForPath_error_(self, v7, pathCopy, error);
  if (v11)
  {
    v12 = objc_alloc(objc_msgSend__classForEncryptedFile(self, v8, v9, v10));
    v15 = objc_msgSend_initForReadingAtURL_(v12, v13, v11, v14);
    v17 = v15;
    if (error && !v15)
    {
      v34 = 0;
      if (objc_msgSend__fileExistsAtPath_isDirectory_error_(self, v16, pathCopy, &v34, 0))
      {
        v19 = APLogForCategory(0x33uLL);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v23 = objc_msgSend_safePath(v11, v20, v21, v22);
          *buf = 138739971;
          v38 = v23;
          _os_log_impl(&dword_1BADC1000, v19, OS_LOG_TYPE_ERROR, "ERROR: Unable to open file: %{sensitive}@", buf, 0xCu);
        }

        v24 = MEMORY[0x1E696ABC0];
        v25 = kSFSCouldNotConstructFile;
        v35 = @"reason";
        v36 = @"Could not construct StorageFile for reading.";
        v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v26, &v36, &v35, 1);
        objc_msgSend_errorWithDomain_code_userInfo_(v24, v28, @"com.apple.ap.StorageFileSystem", v25, v27);
      }

      else
      {
        v29 = MEMORY[0x1E696ABC0];
        v30 = *MEMORY[0x1E696A250];
        v39 = @"reason";
        v40[0] = @"Could not construct EncryptedFile for reading because a specified file does not exist.";
        v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, v40, &v39, 1);
        objc_msgSend_errorWithDomain_code_userInfo_(v29, v31, v30, 260, v27);
      }
      *error = ;
    }
  }

  else
  {
    v17 = 0;
  }

  v32 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)fileForWritingAtKeyPath:(id)path error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  v9 = objc_msgSend__validatedFullURLForPath_error_(self, a2, path, error);
  if (v9)
  {
    v10 = objc_alloc(objc_msgSend__classForEncryptedFile(self, v6, v7, v8));
    v13 = objc_msgSend_initForWritingAtURL_(v10, v11, v9, v12);
    v15 = v13;
    if (error && !v13)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = kSFSCouldNotConstructFile;
      v22 = @"reason";
      v23[0] = @"Could not construct StorageFile for writing.";
      v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, v23, &v22, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v16, v19, @"com.apple.ap.StorageFileSystem", v17, v18);
    }
  }

  else
  {
    v15 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)fileForAppendingAtKeyPath:(id)path error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  v9 = objc_msgSend__validatedFullURLForPath_error_(self, a2, path, error);
  if (v9)
  {
    v10 = objc_alloc(objc_msgSend__classForEncryptedFile(self, v6, v7, v8));
    v13 = objc_msgSend_initForAppendingAtURL_(v10, v11, v9, v12);
    v15 = v13;
    if (error && !v13)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = kSFSCouldNotConstructFile;
      v22 = @"reason";
      v23[0] = @"Could not construct StorageFile for appending.";
      v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, v23, &v22, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v16, v19, @"com.apple.ap.StorageFileSystem", v17, v18);
    }
  }

  else
  {
    v15 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)fileAtKeyPath:(id)path forMode:(int64_t)mode error:(id *)error
{
  v10 = objc_msgSend__validatedFullURLForPath_error_(self, a2, path, error);
  if (v10)
  {
    v11 = objc_alloc(objc_msgSend__classForEncryptedFile(self, v7, v8, v9));
    v13 = objc_msgSend_initForMode_atURL_(v11, v12, mode, v10);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)lastModifiedDateForFileAtPath:(id)path error:(id *)error
{
  v5 = objc_msgSend__validatedFullURLForPath_error_(self, a2, path, error);
  v7 = v5;
  if (v5)
  {
    v10 = 0;
    objc_msgSend_getResourceValue_forKey_error_(v5, v6, &v10, *MEMORY[0x1E695DA98], error);
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createdDateForFileAtPath:(id)path error:(id *)error
{
  v5 = objc_msgSend__validatedFullURLForPath_error_(self, a2, path, error);
  v7 = v5;
  if (v5)
  {
    v10 = 0;
    objc_msgSend_getResourceValue_forKey_error_(v5, v6, &v10, *MEMORY[0x1E695DAA8], error);
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)addedToDirectoryDateForFileAtPath:(id)path error:(id *)error
{
  v5 = objc_msgSend__validatedFullURLForPath_error_(self, a2, path, error);
  v7 = v5;
  if (v5)
  {
    v10 = 0;
    objc_msgSend_getResourceValue_forKey_error_(v5, v6, &v10, *MEMORY[0x1E695DA78], error);
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)touchFileAtPath:(id)path error:(id *)error
{
  v8 = objc_msgSend__validatedFullURLForPath_error_(self, a2, path, error);
  if (v8)
  {
    v9 = objc_msgSend_now(MEMORY[0x1E695DF00], v5, v6, v7);
    v11 = objc_msgSend_setResourceValue_forKey_error_(v8, v10, v9, *MEMORY[0x1E695DA98], error);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)iterateObjectsIncludingFolders:(BOOL)folders
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend__validatedFullURLForPath_error_(self, a2, &stru_1F38FD5F0, 0);
  v9 = v5;
  if (v5 && (objc_msgSend_absoluteString(v5, v6, v7, v8), v10 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend_length(v10, v11, v12, v13), v10, v14))
  {
    if (folders)
    {
      v16 = 0;
      objc_msgSend_enumeratorAtURL_includingPropertiesForKeys_options_errorHandler_(self->_fileManager, v15, v9, 0, 16, &unk_1F38F48E0);
    }

    else
    {
      v27[0] = *MEMORY[0x1E695DB78];
      v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v15, v27, 1);
      objc_msgSend_enumeratorAtURL_includingPropertiesForKeys_options_errorHandler_(self->_fileManager, v18, v9, v16, 16, &unk_1F38F48E0);
    }
    v19 = ;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1BAF17B70;
    v24[3] = &unk_1E7F1D120;
    v25 = v19;
    foldersCopy = folders;
    v20 = v19;
    v21 = _Block_copy(v24);
    v17 = _Block_copy(v21);
  }

  else
  {
    v17 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)getStorageSize:(unint64_t *)size allocatedSize:(unint64_t *)allocatedSize files:(unint64_t *)files
{
  v72[3] = *MEMORY[0x1E69E9840];
  if (size && allocatedSize && files)
  {
    *size = 0;
    *allocatedSize = 0;
    *files = 0;
    v9 = objc_msgSend__validatedFullURLForPath_error_(self, a2, &stru_1F38FD5F0, 0);
    v13 = v9;
    if (v9)
    {
      v14 = objc_msgSend_absoluteString(v9, v10, v11, v12);
      v18 = objc_msgSend_length(v14, v15, v16, v17);

      if (v18)
      {
        sizeCopy = size;
        allocatedSizeCopy = allocatedSize;
        filesCopy = files;
        v20 = *MEMORY[0x1E695DBB8];
        v21 = *MEMORY[0x1E695DAC0];
        v72[0] = *MEMORY[0x1E695DBB8];
        v72[1] = v21;
        v58 = v21;
        v72[2] = *MEMORY[0x1E695DC58];
        objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, v72, 3);
        v53 = v55 = v13;
        objc_msgSend_enumeratorAtURL_includingPropertiesForKeys_options_errorHandler_(self->_fileManager, v22, v13, v53, 0, &unk_1F38F4A20);
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        obj = v70 = 0u;
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v67, v71, 16);
        if (v24)
        {
          v25 = v24;
          v60 = 0;
          v61 = 0;
          v59 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = *v68;
          v62 = *MEMORY[0x1E695DB50];
          do
          {
            for (i = 0; i != v25; ++i)
            {
              v31 = v26;
              if (*v68 != v29)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v67 + 1) + 8 * i);
              v33 = objc_autoreleasePoolPush();
              v66 = 0;
              objc_msgSend_getResourceValue_forKey_error_(v32, v34, &v66, v20, 0);
              v26 = v66;

              if (objc_msgSend_BOOLValue(v26, v35, v36, v37))
              {

                v65 = 0;
                ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v32, v38, &v65, v62, 0);
                v40 = v65;
                v27 = v40;
                if (ResourceValue_forKey_error)
                {
                  v42 = v40 == 0;
                }

                else
                {
                  v42 = 1;
                }

                if (v42)
                {
                  v28 = 0;
                }

                else
                {
                  v64 = 0;
                  v43 = objc_msgSend_getResourceValue_forKey_error_(v32, v41, &v64, v58, 0);
                  v44 = v64;
                  v28 = v44;
                  if (v43 && v44)
                  {
                    ++v59;
                    v61 += objc_msgSend_unsignedLongLongValue(v27, v45, v46, v47);
                    v60 += objc_msgSend_unsignedLongLongValue(v28, v48, v49, v50);
                  }
                }
              }

              objc_autoreleasePoolPop(v33);
            }

            v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v51, &v67, v71, 16);
          }

          while (v25);
        }

        else
        {
          v60 = 0;
          v61 = 0;
          v59 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
        }

        *sizeCopy = v61;
        *allocatedSizeCopy = v60;
        *filesCopy = v59;

        v13 = v55;
      }
    }
  }

  v52 = *MEMORY[0x1E69E9840];
}

- (void)dfsWithStartPath:(id)path nodeCallback:(id)callback
{
  v79[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  callbackCopy = callback;
  v11 = objc_msgSend_stringByDeletingLastPathComponent(pathCopy, v8, v9, v10);
  selfCopy = self;
  v13 = objc_msgSend__validatedFullURLForPath_error_(self, v12, v11, 0);

  if (v13)
  {
    v17 = objc_msgSend_absoluteString(v13, v14, v15, v16);
    v21 = objc_msgSend_length(v17, v18, v19, v20);

    if (v21)
    {
      v24 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v22, 15, v23);
      v28 = objc_msgSend_lastPathComponent(pathCopy, v25, v26, v27);
      v79[0] = v28;
      v30 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v29, v79, 1);
      objc_msgSend_addObject_(v24, v31, v30, v32);

      v77 = 0;
      if (objc_msgSend_count(v24, v33, v34, v35))
      {
        v39 = 0;
        v71 = v13;
        v70 = pathCopy;
        do
        {
          v40 = v39;
          v77 = 0;
          v39 = objc_msgSend_lastObject(v24, v36, v37, v38, v70);

          objc_msgSend_removeLastObject(v24, v41, v42, v43);
          callbackCopy[2](callbackCopy, v39, &v77);
          if ((v77 & 1) == 0)
          {
            v47 = objc_msgSend_pathWithComponents_(MEMORY[0x1E696AEC0], v44, v39, v46);
            v50 = objc_msgSend_URLByAppendingPathComponent_(v13, v48, v47, v49);
            fileManager = selfCopy->_fileManager;
            v55 = objc_msgSend_path(v50, v52, v53, v54);
            v57 = objc_msgSend_contentsOfDirectoryAtPath_error_(fileManager, v56, v55, 0);

            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v58 = v57;
            v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v73, v78, 16);
            if (v60)
            {
              v63 = v60;
              v64 = *v74;
              do
              {
                for (i = 0; i != v63; ++i)
                {
                  if (*v74 != v64)
                  {
                    objc_enumerationMutation(v58);
                  }

                  v66 = objc_msgSend_arrayByAddingObject_(v39, v61, *(*(&v73 + 1) + 8 * i), v62);
                  objc_msgSend_addObject_(v24, v67, v66, v68);
                }

                v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v61, &v73, v78, 16);
              }

              while (v63);
            }

            v13 = v71;
          }
        }

        while (objc_msgSend_count(v24, v44, v45, v46));

        pathCopy = v70;
      }
    }
  }

  v69 = *MEMORY[0x1E69E9840];
}

- (id)_validatedPath:(id)path error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (pathCopy)
  {
    v8 = objc_msgSend__validatedPath_error_(APStorageManager, v6, pathCopy, error);
    v11 = v8;
    if (v8)
    {
      if (self->_pathPrefix)
      {
        v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"%@/%@", v10, self->_pathPrefix, v8);
      }

      else
      {
        v12 = v8;
      }

      v18 = v12;
      error = objc_msgSend__validatedPath_error_(APStorageManager, v13, v12, error);
    }

    else
    {
      error = 0;
    }
  }

  else if (error)
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = kSFSMissingPathError;
    v21 = @"reason";
    v22[0] = @"path was nil.";
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v22, &v21, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v14, v17, @"com.apple.ap.StorageFileSystem", v15, v16);

    error = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return error;
}

+ (id)_validatedPath:(id)path error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ((objc_msgSend_hasPrefix_(pathCopy, v6, @"/", v7) & 1) != 0 || (objc_msgSend_hasPrefix_(pathCopy, v8, @"..", v9) & 1) != 0 || (objc_msgSend_hasPrefix_(pathCopy, v8, @".", v10) & 1) != 0 || (objc_msgSend_hasPrefix_(pathCopy, v8, @"~", v11) & 1) != 0 || (objc_msgSend_containsString_(pathCopy, v8, @"/../", v12) & 1) != 0 || objc_msgSend_containsString_(pathCopy, v8, @"/./", v13))
  {
    if (error)
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = kSFSInvalidPathError;
      v23 = @"reason";
      v24[0] = @"Invalid path for SFS.";
      v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, v24, &v23, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v14, v17, @"com.apple.ap.StorageFileSystem", v15, v16);
    }

    v18 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_impl(&dword_1BADC1000, v18, OS_LOG_TYPE_ERROR, "Invalid characters in URL.", v22, 2u);
    }

    v19 = 0;
  }

  else
  {
    v19 = pathCopy;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)_validatedFullPathForPath:(id)path error:(id *)error
{
  v4 = objc_msgSend__validatedFullURLForPath_error_(self, a2, path, error);
  v8 = v4;
  if (v4)
  {
    v9 = objc_msgSend_path(v4, v5, v6, v7);
    if (objc_msgSend_hasPrefix_(v9, v10, @"//localhost", v11))
    {
      v15 = objc_msgSend_length(@"//localhost", v12, v13, v14);
      v18 = objc_msgSend_substringFromIndex_(v9, v16, v15, v17);

      v9 = v18;
    }

    if (objc_msgSend_hasPrefix_(v9, v12, @"/localhost", v14))
    {
      v22 = objc_msgSend_length(@"/localhost", v19, v20, v21);
      v25 = objc_msgSend_substringFromIndex_(v9, v23, v22, v24);

      v9 = v25;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_validatedFullURLForPath:(id)path error:(id *)error
{
  v23[2] = *MEMORY[0x1E69E9840];
  v9 = objc_msgSend__validatedPath_error_(self, a2, path, error);
  if (v9)
  {
    v10 = objc_msgSend__rootURL(self, v6, v7, v8);
    v13 = objc_msgSend_URLByAppendingPathComponent_(v10, v11, v9, v12);
    v15 = v13;
    if (error && !v13)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = kSFSCouldNotAppendPathError;
      v22[0] = @"name";
      v22[1] = @"reason";
      v23[0] = v9;
      v23[1] = @"Could not append path";
      v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, v23, v22, 2);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v16, v19, @"com.apple.ap.StorageFileSystem", v17, v18);
    }
  }

  else
  {
    v15 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)subpathsOfDirectoryAtPath:(id)path error:(id *)error
{
  v7 = objc_msgSend__validatedFullPathForPath_error_(self, a2, path, error);
  if (v7)
  {
    v8 = objc_msgSend_subpathsOfDirectoryAtPath_error_(self->_fileManager, v6, v7, error);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)contentsOfDirectoryAtPath:(id)path error:(id *)error
{
  v7 = objc_msgSend__validatedFullPathForPath_error_(self, a2, path, error);
  if (v7)
  {
    v8 = objc_msgSend_contentsOfDirectoryAtPath_error_(self->_fileManager, v6, v7, error);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)moveItemAtPath:(id)path toPath:(id)toPath error:(id *)error
{
  toPathCopy = toPath;
  v11 = objc_msgSend__validatedFullURLForPath_error_(self, v9, path, error);
  if (v11)
  {
    v13 = objc_msgSend__validatedFullURLForPath_error_(self, v10, toPathCopy, error);
    if (v13 && objc_msgSend__createDirectoriesForURL_error_(self, v12, v13, error))
    {
      v15 = objc_msgSend_moveItemAtURL_toURL_error_(self->_fileManager, v14, v11, v13, error);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_applicationSupportSubdirectory:(id)subdirectory
{
  v19[2] = *MEMORY[0x1E69E9840];
  subdirectoryCopy = subdirectory;
  v4 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v8 = objc_msgSend_lastObject(v4, v5, v6, v7);

  v9 = MEMORY[0x1E695DFF8];
  v19[0] = v8;
  v19[1] = @"com.apple.ap.promotedcontentd";
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v19, 2);
  v14 = objc_msgSend_fileURLWithPathComponents_(v9, v12, v11, v13);

  if (subdirectoryCopy)
  {
    v16 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v14, v15, subdirectoryCopy, 1);

    v14 = v16;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_makeApplicationSupportSubdirectory:(id)subdirectory
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend__applicationSupportSubdirectory_(APStorageManager, a2, subdirectory, v3);
  fileManager = self->_fileManager;
  v26 = 0;
  v8 = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(fileManager, v7, v5, 1, 0, &v26);
  v12 = v26;
  if (v8)
  {
    v13 = objc_msgSend_path(v5, v9, v10, v11);
  }

  else
  {
    v14 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_msgSend_localizedFailureReason(v12, v15, v16, v17);
      v22 = objc_msgSend_userInfo(v12, v19, v20, v21);
      *buf = 138740483;
      v28 = v5;
      v29 = 2114;
      v30 = v18;
      v31 = 2114;
      v32 = v22;
      _os_log_impl(&dword_1BADC1000, v14, OS_LOG_TYPE_ERROR, "Failed to create Application Support subdirectory: %{sensitive}@ %{public}@ %{public}@", buf, 0x20u);
    }

    objc_msgSend_sendAnalyticError_domain_code_(APStorageManager, v23, @"Failed", @"SFS", 16109);
    v13 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)_createDirectoriesForURL:(id)l error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_URLByDeletingLastPathComponent(l, a2, l, error);
  DirectoryAtURL_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(self->_fileManager, v7, v6, 1, 0, error);
  if ((DirectoryAtURL_withIntermediateDirectories_attributes_error & 1) == 0)
  {
    v9 = APLogForCategory(0x33uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *error;
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_1BADC1000, v9, OS_LOG_TYPE_ERROR, "Failed to create directory, %{public}@", &v13, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return DirectoryAtURL_withIntermediateDirectories_attributes_error;
}

+ (BOOL)areThereStoredItems
{
  v5 = objc_msgSend__rootSubdirectory(APStorageManager, a2, v2, v3);
  v8 = objc_msgSend__applicationSupportSubdirectory_(self, v6, v5, v7);
  v12 = objc_msgSend_path(v8, v9, v10, v11);

  v16 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v13, v14, v15);
  v24 = 0;
  v18 = objc_msgSend_contentsOfDirectoryAtPath_error_(v16, v17, v12, &v24);

  if (v18)
  {
    v22 = objc_msgSend_count(v18, v19, v20, v21) != 0;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (BOOL)removeStorage
{
  v5 = objc_msgSend__rootSubdirectory(APStorageManager, a2, v2, v3);
  LOBYTE(self) = objc_msgSend__removeStorageForSubdirectory_(self, v6, v5, v7);

  return self;
}

+ (BOOL)_removeStorageForSubdirectory:(id)subdirectory
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend__applicationSupportSubdirectory_(self, a2, subdirectory, v3);
  v8 = objc_msgSend_path(v4, v5, v6, v7);

  v12 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v9, v10, v11);
  isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v12, v13, v8, 0);

  if (isDirectory)
  {
    v18 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v15, v16, v17);
    v22 = objc_msgSend_UUIDString(v18, v19, v20, v21);

    v23 = NSTemporaryDirectory();
    v26 = objc_msgSend_stringByAppendingPathComponent_(v23, v24, v22, v25);

    v30 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v27, v28, v29);
    v50 = 0;
    v32 = objc_msgSend_moveItemAtPath_toPath_error_(v30, v31, v8, v26, &v50);
    v33 = v50;

    if (v32)
    {
      v34 = dispatch_get_global_queue(9, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1BAF191B0;
      block[3] = &unk_1E7F1CE98;
      v49 = v26;
      dispatch_async(v34, block);
    }

    else
    {
      v36 = APLogForCategory(0x33uLL);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v52 = v33;
        _os_log_impl(&dword_1BADC1000, v36, OS_LOG_TYPE_ERROR, "Failed to move SFS folder: %{public}@", buf, 0xCu);
      }

      v40 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v37, v38, v39);
      v47 = 0;
      v42 = objc_msgSend_removeItemAtPath_error_(v40, v41, v8, &v47);
      v33 = v47;

      if ((v42 & 1) == 0)
      {
        v43 = APLogForCategory(0x33uLL);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v52 = v33;
          _os_log_impl(&dword_1BADC1000, v43, OS_LOG_TYPE_ERROR, "Failed to remove SFS folder in place: %{public}@", buf, 0xCu);
        }

        objc_msgSend_sendAnalyticError_domain_code_(APStorageManager, v44, @"Failed", @"SFS", 161003);
        v35 = 0;
        goto LABEL_14;
      }
    }

    v35 = 1;
LABEL_14:

    goto LABEL_15;
  }

  v22 = APLogForCategory(0x33uLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1BADC1000, v22, OS_LOG_TYPE_DEBUG, "There is no SFS folder.", buf, 2u);
  }

  v35 = 1;
LABEL_15:

  v45 = *MEMORY[0x1E69E9840];
  return v35;
}

+ (void)sendAnalyticError:(id)error domain:(id)domain code:(int64_t)code
{
  v26[1] = *MEMORY[0x1E69E9840];
  v25 = @"code";
  v7 = MEMORY[0x1E696AD98];
  domainCopy = domain;
  errorCopy = error;
  v12 = objc_msgSend_numberWithInteger_(v7, v10, code, v11);
  v26[0] = v12;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v26, &v25, 1);

  v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"%@%@", v16, domainCopy, errorCopy);

  v18 = APLogForCategory(0x33uLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v22 = v17;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&dword_1BADC1000, v18, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
  }

  objc_msgSend_sendEvent_customPayload_(APAnalytics, v19, v17, v14);
  v20 = *MEMORY[0x1E69E9840];
}

@end
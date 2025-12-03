@interface CKAssetDownloadStagingManager
- (BOOL)finishWithAssetDownloadStagingInfo:(id)info fileURL:(id *)l fileHandle:(id *)handle error:(id *)error;
- (BOOL)keepInflightFilesOpen;
- (BOOL)openWithAssetDownloadStagingInfo:(id)info fileDescriptor:(int *)descriptor closeOnDealloc:(BOOL *)dealloc error:(id *)error;
- (CKAssetDownloadStagingManager)initWithDirectory:(id)directory;
- (id)finishedURLWithInfo:(id)info;
- (id)inflightLastPathComponentWithInfo:(id)info;
- (id)inflightURLWithLastPathComponent:(id)component;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)setKeepInflightFilesOpen:(BOOL)open;
@end

@implementation CKAssetDownloadStagingManager

- (CKAssetDownloadStagingManager)initWithDirectory:(id)directory
{
  directoryCopy = directory;
  if (!directoryCopy)
  {
    v19 = [CKException alloc];
    v21 = objc_msgSend_initWithCode_format_(v19, v20, 12, @"Missing root directory");
    goto LABEL_14;
  }

  v7 = directoryCopy;
  v8 = objc_msgSend_URLByAppendingPathComponent_(directoryCopy, v6, @"inflight");
  if (!v8)
  {
    v22 = [CKException alloc];
    v21 = objc_msgSend_initWithCode_format_(v22, v23, 12, @"Unable to create inflight file URL");
    goto LABEL_14;
  }

  v10 = v8;
  if ((CKCreateDirectoryAtURL(v8, 0, v9) & 1) == 0)
  {
    v24 = [CKException alloc];
    v21 = objc_msgSend_initWithCode_format_(v24, v25, 12, @"Unable to initialize inflight file directory");
    goto LABEL_14;
  }

  v12 = objc_msgSend_URLByAppendingPathComponent_(v7, v11, @"finished");
  if (!v12)
  {
    v26 = [CKException alloc];
    v21 = objc_msgSend_initWithCode_format_(v26, v27, 12, @"Unable to create finished file URL");
    goto LABEL_14;
  }

  v14 = v12;
  if ((CKCreateDirectoryAtURL(v12, 0, v13) & 1) == 0)
  {
    v28 = [CKException alloc];
    v21 = objc_msgSend_initWithCode_format_(v28, v29, 12, @"Unable to initialize finished file directory");
LABEL_14:
    objc_exception_throw(v21);
  }

  v30.receiver = self;
  v30.super_class = CKAssetDownloadStagingManager;
  v15 = [(CKAssetDownloadStagingManager *)&v30 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_directory, directory);
    objc_storeStrong(&v16->_inflightDownloadDirectory, v10);
    objc_storeStrong(&v16->_finishedDownloadDirectory, v14);
    fileHandlesForInflightLastPathComponent = v16->_fileHandlesForInflightLastPathComponent;
    v16->_fileHandlesForInflightLastPathComponent = 0;

    objc_storeStrong(&v16->_fileProtectionType, *MEMORY[0x1E696A388]);
  }

  return v16;
}

- (BOOL)keepInflightFilesOpen
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_fileHandlesForInflightLastPathComponent(selfCopy, v3, v4);
  v6 = v5 != 0;

  objc_sync_exit(selfCopy);
  return v6;
}

- (void)setKeepInflightFilesOpen:(BOOL)open
{
  openCopy = open;
  obj = self;
  objc_sync_enter(obj);
  if (openCopy)
  {
    v6 = objc_msgSend_fileHandlesForInflightLastPathComponent(obj, v4, v5);

    if (!v6)
    {
      v7 = objc_opt_new();
      objc_msgSend_setFileHandlesForInflightLastPathComponent_(obj, v8, v7);
    }
  }

  else
  {
    objc_msgSend_setFileHandlesForInflightLastPathComponent_(obj, v4, 0);
  }

  objc_sync_exit(obj);
}

- (BOOL)openWithAssetDownloadStagingInfo:(id)info fileDescriptor:(int *)descriptor closeOnDealloc:(BOOL *)dealloc error:(id *)error
{
  v92[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v11 = objc_msgSend_inflightLastPathComponentWithInfo_(self, v9, infoCopy);
  if (v11)
  {
    v12 = objc_msgSend_inflightURLWithLastPathComponent_(self, v10, v11);
    if (v12)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v16 = objc_msgSend_fileHandlesForInflightLastPathComponent(selfCopy, v14, v15);

      if (v16 && (objc_msgSend_fileHandlesForInflightLastPathComponent(selfCopy, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v19, v20, v11), v21 = objc_claimAutoreleasedReturnValue(), v19, v21))
      {
        LODWORD(v22) = objc_msgSend_fileDescriptor(v21, v17, v18);

        v83 = 0;
        if ((v22 & 0x80000000) == 0)
        {
          v23 = 2;
LABEL_20:
          v84 = objc_msgSend_fileProtectionType(selfCopy, v17, v18);
          if (v23 < 0x200 || !v84)
          {
            goto LABEL_25;
          }

          v50 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v48, v49);
          v91 = *MEMORY[0x1E696A3A0];
          v92[0] = v84;
          v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v51, v92, &v91, 1);
          v55 = objc_msgSend_path(v12, v53, v54);
          v88 = 0;
          v57 = objc_msgSend_setAttributes_ofItemAtPath_error_(v50, v56, v52, v55, &v88);
          v82 = v88;
          if (v82)
          {
            v57 = 0;
          }

          if (v57)
          {
LABEL_25:

            objc_sync_exit(selfCopy);
            if (descriptor)
            {
              *descriptor = v22;
            }

            if (dealloc)
            {
              *dealloc = v83;
            }

            v26 = 1;
            goto LABEL_61;
          }

          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v65 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v90 = v82;
            _os_log_error_impl(&dword_1883EA000, v65, OS_LOG_TYPE_ERROR, "Failed to set fileProtectionType for inflightFile with error %@", buf, 0xCu);
          }

          if (error)
          {
            *error = objc_msgSend_errorWithDomain_code_error_format_(CKPrettyError, v66, @"CKInternalErrorDomain", 1000, v82, @"Failed to set fileProtectionType for inflightFile");
          }

          v68 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v66, v67);
          v87 = 0;
          v70 = objc_msgSend_removeItemAtURL_error_(v68, v69, v12, &v87);
          v71 = v87;
          if (v71)
          {
            v70 = 0;
          }

          if ((v70 & 1) == 0)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v74 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v90 = v71;
              _os_log_error_impl(&dword_1883EA000, v74, OS_LOG_TYPE_ERROR, "Failed to remove inflightFile with error %@", buf, 0xCu);
            }
          }

          v75 = objc_msgSend_fileHandlesForInflightLastPathComponent(selfCopy, v72, v73);

          if (v75)
          {
            v78 = objc_msgSend_fileHandlesForInflightLastPathComponent(selfCopy, v76, v77);
            objc_msgSend_setObject_forKeyedSubscript_(v78, v79, 0, v11);
          }

          objc_sync_exit(selfCopy);
          goto LABEL_60;
        }
      }

      else
      {
        v83 = 1;
      }

      v27 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v17, v18);
      v30 = objc_msgSend_path(v12, v28, v29);
      v32 = objc_msgSend_fileExistsAtPath_(v27, v31, v30);

      if (v32)
      {
        v23 = 2;
      }

      else
      {
        v23 = 514;
      }

      v33 = v12;
      v36 = objc_msgSend_fileSystemRepresentation(v33, v34, v35);
      v22 = open(v36, v23, 384);
      v37 = __error();
      if ((v22 & 0x80000000) == 0)
      {
        v40 = objc_msgSend_fileHandlesForInflightLastPathComponent(selfCopy, v38, v39);

        if (v40)
        {
          v41 = objc_alloc(MEMORY[0x1E696AC00]);
          v43 = objc_msgSend_initWithFileDescriptor_closeOnDealloc_(v41, v42, v22, 1);
          v46 = objc_msgSend_fileHandlesForInflightLastPathComponent(selfCopy, v44, v45);
          objc_msgSend_setObject_forKeyedSubscript_(v46, v47, v43, v11);

          v83 = 0;
        }

        goto LABEL_20;
      }

      v60 = *v37;
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v61 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v90) = v60;
        _os_log_error_impl(&dword_1883EA000, v61, OS_LOG_TYPE_ERROR, "open failed with errno:%d", buf, 8u);
      }

      if (error)
      {
        v63 = objc_msgSend_errorCodeFromPOSIXCode_(CKAsset, v62, v60);
        *error = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v64, @"CKInternalErrorDomain", v63, @"open failed with errno:%d", v60);
      }

      objc_sync_exit(selfCopy);
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v58 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1883EA000, v58, OS_LOG_TYPE_ERROR, "Failed to create inflightFileURL.", buf, 2u);
      }

      if (error)
      {
        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v59, @"CKInternalErrorDomain", 1000, @"Failed to create inflightFileURL.");
        *error = v26 = 0;
LABEL_61:

        goto LABEL_62;
      }
    }

LABEL_60:
    v26 = 0;
    goto LABEL_61;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v24 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1883EA000, v24, OS_LOG_TYPE_ERROR, "Failed to create inflightLastPathComponent.", buf, 2u);
  }

  if (error)
  {
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v25, @"CKInternalErrorDomain", 1000, @"Failed to create inflightLastPathComponent.");
    *error = v26 = 0;
  }

  else
  {
    v26 = 0;
  }

LABEL_62:

  v80 = *MEMORY[0x1E69E9840];
  return v26;
}

- (BOOL)finishWithAssetDownloadStagingInfo:(id)info fileURL:(id *)l fileHandle:(id *)handle error:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v13 = objc_msgSend_inflightLastPathComponentWithInfo_(self, v11, infoCopy);
  if (v13)
  {
    v15 = objc_msgSend_inflightURLWithLastPathComponent_(self, v12, v13);
    if (v15)
    {
      v18 = objc_msgSend_finishedURLWithInfo_(self, v14, infoCopy);
      if (v18)
      {
        v19 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v16, v17);
        v49 = 0;
        v21 = objc_msgSend_moveItemAtURL_toURL_error_(v19, v20, v15, v18, &v49);
        v48 = v49;
        if (v48)
        {
          v21 = 0;
        }

        if (v21)
        {
          selfCopy = self;
          objc_sync_enter(selfCopy);
          v25 = objc_msgSend_fileHandlesForInflightLastPathComponent(selfCopy, v23, v24);

          if (v25)
          {
            v28 = objc_msgSend_fileHandlesForInflightLastPathComponent(selfCopy, v26, v27);
            v30 = objc_msgSend_objectForKeyedSubscript_(v28, v29, v13);

            v33 = objc_msgSend_fileHandlesForInflightLastPathComponent(selfCopy, v31, v32);
            objc_msgSend_setObject_forKeyedSubscript_(v33, v34, 0, v13);

            objc_msgSend_seekToFileOffset_(v30, v35, 0);
          }

          else
          {
            v30 = 0;
          }

          objc_sync_exit(selfCopy);

          if (l)
          {
            v44 = v18;
            *l = v18;
          }

          if (handle)
          {
            v45 = v30;
            *handle = v30;
          }

          goto LABEL_35;
        }

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v42 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v51 = v15;
          v52 = 2112;
          v53 = v18;
          v54 = 2112;
          v55 = v48;
          _os_log_error_impl(&dword_1883EA000, v42, OS_LOG_TYPE_ERROR, "Failed to move existing item at path %@ to path %@ with error %@", buf, 0x20u);
          if (!error)
          {
            goto LABEL_35;
          }
        }

        else if (!error)
        {
LABEL_35:

          goto LABEL_36;
        }

        *error = objc_msgSend_errorWithDomain_code_error_format_(CKPrettyError, v43, @"CKInternalErrorDomain", 1000, v48, @"Failed to move existing item at path %@ to path %@", v15, v18);
        goto LABEL_35;
      }

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v40 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1883EA000, v40, OS_LOG_TYPE_ERROR, "Failed to create finishedFileURL.", buf, 2u);
        if (error)
        {
          goto LABEL_23;
        }
      }

      else if (error)
      {
LABEL_23:
        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v41, @"CKInternalErrorDomain", 1000, @"Failed to create finishedFileURL.");
        *error = v21 = 0;
LABEL_36:

        goto LABEL_37;
      }

      v21 = 0;
      goto LABEL_36;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v38 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1883EA000, v38, OS_LOG_TYPE_ERROR, "Failed to create inflightFileURL.", buf, 2u);
      if (error)
      {
        goto LABEL_18;
      }
    }

    else if (error)
    {
LABEL_18:
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v39, @"CKInternalErrorDomain", 1000, @"Failed to create inflightFileURL.");
      *error = v21 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v21 = 0;
    goto LABEL_37;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v36 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1883EA000, v36, OS_LOG_TYPE_ERROR, "Failed to create inflightLastPathComponent.", buf, 2u);
    if (error)
    {
      goto LABEL_13;
    }

LABEL_40:
    v21 = 0;
    goto LABEL_38;
  }

  if (!error)
  {
    goto LABEL_40;
  }

LABEL_13:
  objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v37, @"CKInternalErrorDomain", 1000, @"Failed to create inflightLastPathComponent.");
  *error = v21 = 0;
LABEL_38:

  v46 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v6 = objc_msgSend_directory(self, v4, v5);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v7, @"directory", v6, 1);

  v10 = objc_msgSend_fileProtectionType(self, v8, v9);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v11, @"fileProtectionType", v10, 0);

  if (objc_msgSend_keepInflightFilesOpen(self, v12, v13))
  {
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v14, @"keepInflightFilesOpen", @"true", 0);
  }
}

- (id)inflightLastPathComponentWithInfo:(id)info
{
  infoCopy = info;
  v6 = objc_msgSend_itemID(infoCopy, v4, v5);
  v9 = v6;
  if (v6)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_msgSend_longLongValue(v6, v7, v8);
    v15 = objc_msgSend_stringWithFormat_(v10, v12, @"%llu", v11);
    if (v15)
    {
      v18 = objc_msgSend_signature(infoCopy, v13, v14);
      if (v18)
      {
        v19 = objc_msgSend_signature(infoCopy, v16, v17);
        v20 = CKStringWithData(v19);

        v21 = objc_alloc(MEMORY[0x1E696AEC0]);
        v23 = objc_msgSend_initWithFormat_(v21, v22, @"%@.%@", v15, v20);
        v24 = v23;
        if (v23)
        {
          v25 = v23;
        }

        else
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v29 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
          {
            *v31 = 0;
            _os_log_error_impl(&dword_1883EA000, v29, OS_LOG_TYPE_ERROR, "Failed to create inflightLastPathComponent.", v31, 2u);
          }
        }
      }

      else
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v28 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          *v32 = 0;
          _os_log_error_impl(&dword_1883EA000, v28, OS_LOG_TYPE_ERROR, "Missing signature.", v32, 2u);
        }

        v24 = 0;
      }
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v27 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *v33 = 0;
        _os_log_error_impl(&dword_1883EA000, v27, OS_LOG_TYPE_ERROR, "Failed to create inflightLastPathComponent.", v33, 2u);
      }

      v24 = 0;
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v26 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1883EA000, v26, OS_LOG_TYPE_ERROR, "Missing itemID.", buf, 2u);
    }

    v24 = 0;
  }

  return v24;
}

- (id)inflightURLWithLastPathComponent:(id)component
{
  componentCopy = component;
  if (!componentCopy)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKAssetDownloadStagingManager.m", 227, @"Missing inflightLastPathComponent.");
  }

  v8 = objc_msgSend_inflightDownloadDirectory(self, v5, v6);
  v10 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v8, v9, componentCopy, 0);

  return v10;
}

- (id)finishedURLWithInfo:(id)info
{
  infoCopy = info;
  v9 = objc_msgSend_trackingUUID(infoCopy, v5, v6);
  if (v9)
  {
    v12 = objc_msgSend_signature(infoCopy, v7, v8);
    if (v12)
    {
      v13 = objc_msgSend_signature(infoCopy, v10, v11);
      v14 = CKStringWithData(v13);

      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v19 = objc_msgSend_initWithFormat_(v15, v16, @"%@.%@", v9, v14);
      if (v19)
      {
        v20 = objc_msgSend_finishedDownloadDirectory(self, v17, v18);
        v22 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v20, v21, v19, 0);
      }

      else
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v25 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          *v27 = 0;
          _os_log_error_impl(&dword_1883EA000, v25, OS_LOG_TYPE_ERROR, "Failed to create finishedLastPathComponent.", v27, 2u);
        }

        v22 = 0;
      }
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v24 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *v28 = 0;
        _os_log_error_impl(&dword_1883EA000, v24, OS_LOG_TYPE_ERROR, "Missing signature.", v28, 2u);
      }

      v22 = 0;
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v23 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1883EA000, v23, OS_LOG_TYPE_ERROR, "Missing trackingUUID.", buf, 2u);
    }

    v22 = 0;
  }

  return v22;
}

@end
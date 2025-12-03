@interface UNAttachmentUtilities
+ (id)_systemDirectoryURL;
+ (void)_deleteFile:(id)file;
+ (void)_processAttachment:(id)attachment;
+ (void)deleteAttachmentFilesInContentsIfNecessary:(id)necessary;
+ (void)deleteAttachmentFilesInRequestsIfNecessary:(id)necessary;
@end

@implementation UNAttachmentUtilities

+ (void)deleteAttachmentFilesInRequestsIfNecessary:(id)necessary
{
  v18 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = necessaryCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        content = [*(*(&v13 + 1) + 8 * v10) content];
        if (content)
        {
          [array addObject:content];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [self deleteAttachmentFilesInContentsIfNecessary:array];
  v12 = *MEMORY[0x1E69E9840];
}

+ (void)deleteAttachmentFilesInContentsIfNecessary:(id)necessary
{
  v25 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [necessaryCopy countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(necessaryCopy);
        }

        attachments = [*(*(&v19 + 1) + 8 * v8) attachments];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = [attachments countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v16;
          do
          {
            v13 = 0;
            do
            {
              if (*v16 != v12)
              {
                objc_enumerationMutation(attachments);
              }

              [self _processAttachment:*(*(&v15 + 1) + 8 * v13++)];
            }

            while (v11 != v13);
            v11 = [attachments countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v11);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [necessaryCopy countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (void)_processAttachment:(id)attachment
{
  v40 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  v5 = [attachmentCopy URL];
  if (v5)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    bundleRecordForCurrentProcess = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
    v8 = [bundleRecordForCurrentProcess URL];
    if (v8 && (v36 = 2, [defaultManager getRelationship:&v36 ofDirectoryAtURL:v8 toItemAtURL:v5 error:0], !v36))
    {
      v27 = UNLogAttachmentsService;
      if (os_log_type_enabled(UNLogAttachmentsService, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v39 = v5;
        _os_log_impl(&dword_1B85E3000, v27, OS_LOG_TYPE_DEFAULT, "Contained in the bundle: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      selfCopy = self;
      dataContainerURL = [bundleRecordForCurrentProcess dataContainerURL];
      groupContainerURLs = [bundleRecordForCurrentProcess groupContainerURLs];
      allValues = [groupContainerURLs allValues];

      array = [MEMORY[0x1E695DF70] array];
      v13 = array;
      if (dataContainerURL)
      {
        [array addObject:dataContainerURL];
      }

      v30 = dataContainerURL;
      if (allValues)
      {
        [v13 addObjectsFromArray:allValues];
      }

      v29 = allValues;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v33;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v33 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v32 + 1) + 8 * i);
            v36 = 2;
            [defaultManager getRelationship:&v36 ofDirectoryAtURL:v19 toItemAtURL:v5 error:0];
            if (!v36)
            {
              v25 = UNLogAttachmentsService;
              if (os_log_type_enabled(UNLogAttachmentsService, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v39 = v5;
                _os_log_impl(&dword_1B85E3000, v25, OS_LOG_TYPE_DEFAULT, "Contained in a group container. Deleting file: %{public}@", buf, 0xCu);
              }

              [selfCopy _deleteFile:v5];
              _systemDirectoryURL = v14;
              goto LABEL_26;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      _systemDirectoryURL = [selfCopy _systemDirectoryURL];
      v36 = 2;
      [defaultManager getRelationship:&v36 ofDirectoryAtURL:_systemDirectoryURL toItemAtURL:v5 error:0];
      if (v36)
      {
        path = [v5 path];
        v22 = [defaultManager isWritableFileAtPath:path];

        if (v22)
        {
          v23 = UNLogAttachmentsService;
          if (os_log_type_enabled(UNLogAttachmentsService, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v39 = v5;
            _os_log_impl(&dword_1B85E3000, v23, OS_LOG_TYPE_DEFAULT, "File is writable. Deleting file: %{public}@", buf, 0xCu);
          }

          [selfCopy _deleteFile:v5];
        }
      }

      else
      {
        v28 = UNLogAttachmentsService;
        if (os_log_type_enabled(UNLogAttachmentsService, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v39 = v5;
          _os_log_impl(&dword_1B85E3000, v28, OS_LOG_TYPE_DEFAULT, "Contained in the System directory: %{public}@", buf, 0xCu);
        }
      }

LABEL_26:
    }

    goto LABEL_28;
  }

  v24 = UNLogAttachmentsService;
  if (os_log_type_enabled(UNLogAttachmentsService, OS_LOG_TYPE_DEFAULT))
  {
    defaultManager = v24;
    bundleRecordForCurrentProcess = [attachmentCopy identifier];
    *buf = 138543362;
    v39 = bundleRecordForCurrentProcess;
    _os_log_impl(&dword_1B85E3000, defaultManager, OS_LOG_TYPE_DEFAULT, "No attachment URL for %{public}@", buf, 0xCu);
LABEL_28:
  }

  v26 = *MEMORY[0x1E69E9840];
}

+ (id)_systemDirectoryURL
{
  if (_systemDirectoryURL_onceToken != -1)
  {
    +[UNAttachmentUtilities _systemDirectoryURL];
  }

  v3 = _systemDirectoryURL_systemDirectoryURL;

  return v3;
}

void __44__UNAttachmentUtilities__systemDirectoryURL__block_invoke()
{
  v0 = MEMORY[0x1E695DFF8];
  v4 = BSSystemRootDirectory();
  v1 = [v4 stringByAppendingPathComponent:@"System"];
  v2 = [v0 fileURLWithPath:v1];
  v3 = _systemDirectoryURL_systemDirectoryURL;
  _systemDirectoryURL_systemDirectoryURL = v2;
}

+ (void)_deleteFile:(id)file
{
  fileCopy = file;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v9 = 0;
  [defaultManager removeItemAtURL:fileCopy error:&v9];
  v5 = v9;

  if (v5)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundlePath = [mainBundle bundlePath];

    v8 = UNLogAttachmentsService;
    if (os_log_type_enabled(UNLogAttachmentsService, OS_LOG_TYPE_FAULT))
    {
      [(UNAttachmentUtilities *)bundlePath _deleteFile:v8, fileCopy];
    }
  }
}

+ (void)_deleteFile:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 absoluteString];
  v8 = 138543618;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  _os_log_fault_impl(&dword_1B85E3000, v5, OS_LOG_TYPE_FAULT, "[Notification Attachment] Failed to delete an attachment file. Bundle: '%{public}@', Attachment: '%{public}@'", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end
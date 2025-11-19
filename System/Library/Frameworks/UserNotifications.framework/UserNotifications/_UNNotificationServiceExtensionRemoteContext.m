@interface _UNNotificationServiceExtensionRemoteContext
- (_UNNotificationServiceExtensionRemoteContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5;
- (id)_stageAttachmentsForNotificationContent:(id)a3;
- (void)deleteAttachmentFilesInContentIfNecessary:(id)a3;
- (void)didReceiveNotificationRequest:(id)a3 withCompletionHandler:(id)a4;
- (void)serviceExtensionPerformCleanup;
- (void)serviceExtensionTimeWillExpire;
@end

@implementation _UNNotificationServiceExtensionRemoteContext

- (_UNNotificationServiceExtensionRemoteContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = _UNNotificationServiceExtensionRemoteContext;
  v5 = [(_UNNotificationServiceExtensionRemoteContext *)&v12 initWithInputItems:a3 listenerEndpoint:a4 contextUUID:a5];
  v6 = v5;
  if (v5)
  {
    atomic_store(0, &v5->_hasRepliedFlag);
    v7 = UNLogServiceExtension;
    if (os_log_type_enabled(UNLogServiceExtension, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(_UNNotificationServiceExtensionRemoteContext *)v6 _UUID];
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&dword_1B85E3000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Service extension context initialized", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)didReceiveNotificationRequest:(id)a3 withCompletionHandler:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_UNNotificationServiceExtensionRemoteContext *)self extensionInstance];
  v9 = UNLogServiceExtension;
  if (os_log_type_enabled(UNLogServiceExtension, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(_UNNotificationServiceExtensionRemoteContext *)self _UUID];
    v12 = [v6 identifier];
    v13 = [v12 un_logDigest];
    *buf = 138543618;
    v21 = v11;
    v22 = 2114;
    v23 = v13;
    _os_log_impl(&dword_1B85E3000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request replacement content for notification request %{public}@", buf, 0x16u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __100___UNNotificationServiceExtensionRemoteContext_didReceiveNotificationRequest_withCompletionHandler___block_invoke;
  v17[3] = &unk_1E7CFF710;
  v17[4] = self;
  v18 = v6;
  v19 = v7;
  v14 = v7;
  v15 = v6;
  [v8 didReceiveNotificationRequest:v15 withContentHandler:v17];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)deleteAttachmentFilesInContentIfNecessary:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a3;
    v3 = MEMORY[0x1E695DEC8];
    v4 = a3;
    v5 = [v3 arrayWithObjects:&v7 count:1];
    [UNAttachmentUtilities deleteAttachmentFilesInContentsIfNecessary:v5, v7, v8];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)serviceExtensionTimeWillExpire
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(_UNNotificationServiceExtensionRemoteContext *)self extensionInstance];
  v4 = UNLogServiceExtension;
  if (os_log_type_enabled(UNLogServiceExtension, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(_UNNotificationServiceExtensionRemoteContext *)self _UUID];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1B85E3000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Service extension time will expire", &v8, 0xCu);
  }

  [v3 serviceExtensionTimeWillExpire];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)serviceExtensionPerformCleanup
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = UNLogServiceExtension;
  if (os_log_type_enabled(UNLogServiceExtension, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(_UNNotificationServiceExtensionRemoteContext *)self _UUID];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1B85E3000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cleaning up extension", &v7, 0xCu);
  }

  [(_UNNotificationServiceExtensionRemoteContext *)self setExtensionInstance:0];
  [(_UNNotificationServiceExtensionRemoteContext *)self completeRequestReturningItems:0 completionHandler:0];
  v6 = *MEMORY[0x1E69E9840];
}

- (id)_stageAttachmentsForNotificationContent:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v35 = a3;
  v3 = [v35 attachments];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = MEMORY[0x1E695DFF8];
  v6 = NSTemporaryDirectory();
  v7 = [v5 fileURLWithPath:v6 isDirectory:1];

  v8 = [MEMORY[0x1E695DF70] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v43;
    v38 = *v43;
    v39 = v8;
    v36 = v9;
    do
    {
      v13 = 0;
      v40 = v11;
      do
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v42 + 1) + 8 * v13);
        v15 = [v14 URL];
        v41 = 2;
        [v4 getRelationship:&v41 ofDirectoryAtURL:v7 toItemAtURL:v15 error:0];
        if (v41)
        {
          [v8 addObject:v14];
        }

        else
        {
          v16 = [MEMORY[0x1E696AFB0] UUID];
          v17 = [v16 UUIDString];
          v18 = [v7 URLByAppendingPathComponent:v17];

          v19 = [v15 pathExtension];
          v20 = [v18 URLByAppendingPathExtension:v19];

          v21 = [v4 moveItemAtURL:v15 toURL:v20 error:0];
          if (v21)
          {
            v22 = [UNNotificationAttachment alloc];
            v23 = [v14 identifier];
            [v14 type];
            v24 = v7;
            v26 = v25 = v4;
            v27 = [v14 options];
            v28 = [(UNNotificationAttachment *)v22 initWithIdentifier:v23 URL:v20 type:v26 options:v27];

            v4 = v25;
            v7 = v24;
            v9 = v36;

            v8 = v39;
            [v39 addObject:v28];
          }

          v29 = UNLogServiceExtension;
          if (os_log_type_enabled(UNLogServiceExtension, OS_LOG_TYPE_DEFAULT))
          {
            v30 = v29;
            v31 = [(_UNNotificationServiceExtensionRemoteContext *)self _UUID];
            *buf = 138543618;
            v47 = v31;
            v48 = 1024;
            v49 = v21;
            _os_log_impl(&dword_1B85E3000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handled temporary attachment %{BOOL}d", buf, 0x12u);

            v8 = v39;
          }

          v12 = v38;
          v11 = v40;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v11);
  }

  v32 = [v35 mutableCopy];
  [v32 setAttachments:v8];

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

@end
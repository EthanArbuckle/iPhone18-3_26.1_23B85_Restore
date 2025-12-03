@interface _UNNotificationServiceExtensionRemoteContext
- (_UNNotificationServiceExtensionRemoteContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
- (id)_stageAttachmentsForNotificationContent:(id)content;
- (void)deleteAttachmentFilesInContentIfNecessary:(id)necessary;
- (void)didReceiveNotificationRequest:(id)request withCompletionHandler:(id)handler;
- (void)serviceExtensionPerformCleanup;
- (void)serviceExtensionTimeWillExpire;
@end

@implementation _UNNotificationServiceExtensionRemoteContext

- (_UNNotificationServiceExtensionRemoteContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = _UNNotificationServiceExtensionRemoteContext;
  v5 = [(_UNNotificationServiceExtensionRemoteContext *)&v12 initWithInputItems:items listenerEndpoint:endpoint contextUUID:d];
  v6 = v5;
  if (v5)
  {
    atomic_store(0, &v5->_hasRepliedFlag);
    v7 = UNLogServiceExtension;
    if (os_log_type_enabled(UNLogServiceExtension, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      _UUID = [(_UNNotificationServiceExtensionRemoteContext *)v6 _UUID];
      *buf = 138543362;
      v14 = _UUID;
      _os_log_impl(&dword_1B85E3000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Service extension context initialized", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)didReceiveNotificationRequest:(id)request withCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  extensionInstance = [(_UNNotificationServiceExtensionRemoteContext *)self extensionInstance];
  v9 = UNLogServiceExtension;
  if (os_log_type_enabled(UNLogServiceExtension, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    _UUID = [(_UNNotificationServiceExtensionRemoteContext *)self _UUID];
    identifier = [requestCopy identifier];
    un_logDigest = [identifier un_logDigest];
    *buf = 138543618;
    v21 = _UUID;
    v22 = 2114;
    v23 = un_logDigest;
    _os_log_impl(&dword_1B85E3000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request replacement content for notification request %{public}@", buf, 0x16u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __100___UNNotificationServiceExtensionRemoteContext_didReceiveNotificationRequest_withCompletionHandler___block_invoke;
  v17[3] = &unk_1E7CFF710;
  v17[4] = self;
  v18 = requestCopy;
  v19 = handlerCopy;
  v14 = handlerCopy;
  v15 = requestCopy;
  [extensionInstance didReceiveNotificationRequest:v15 withContentHandler:v17];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)deleteAttachmentFilesInContentIfNecessary:(id)necessary
{
  v8 = *MEMORY[0x1E69E9840];
  if (necessary)
  {
    necessaryCopy = necessary;
    v3 = MEMORY[0x1E695DEC8];
    necessaryCopy2 = necessary;
    v5 = [v3 arrayWithObjects:&necessaryCopy count:1];
    [UNAttachmentUtilities deleteAttachmentFilesInContentsIfNecessary:v5, necessaryCopy, v8];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)serviceExtensionTimeWillExpire
{
  v10 = *MEMORY[0x1E69E9840];
  extensionInstance = [(_UNNotificationServiceExtensionRemoteContext *)self extensionInstance];
  v4 = UNLogServiceExtension;
  if (os_log_type_enabled(UNLogServiceExtension, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    _UUID = [(_UNNotificationServiceExtensionRemoteContext *)self _UUID];
    v8 = 138543362;
    v9 = _UUID;
    _os_log_impl(&dword_1B85E3000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Service extension time will expire", &v8, 0xCu);
  }

  [extensionInstance serviceExtensionTimeWillExpire];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)serviceExtensionPerformCleanup
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = UNLogServiceExtension;
  if (os_log_type_enabled(UNLogServiceExtension, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    _UUID = [(_UNNotificationServiceExtensionRemoteContext *)self _UUID];
    v7 = 138543362;
    v8 = _UUID;
    _os_log_impl(&dword_1B85E3000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cleaning up extension", &v7, 0xCu);
  }

  [(_UNNotificationServiceExtensionRemoteContext *)self setExtensionInstance:0];
  [(_UNNotificationServiceExtensionRemoteContext *)self completeRequestReturningItems:0 completionHandler:0];
  v6 = *MEMORY[0x1E69E9840];
}

- (id)_stageAttachmentsForNotificationContent:(id)content
{
  v51 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  attachments = [contentCopy attachments];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = MEMORY[0x1E695DFF8];
  v6 = NSTemporaryDirectory();
  v7 = [v5 fileURLWithPath:v6 isDirectory:1];

  array = [MEMORY[0x1E695DF70] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = attachments;
  v10 = [v9 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v43;
    v38 = *v43;
    v39 = array;
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
        [defaultManager getRelationship:&v41 ofDirectoryAtURL:v7 toItemAtURL:v15 error:0];
        if (v41)
        {
          [array addObject:v14];
        }

        else
        {
          uUID = [MEMORY[0x1E696AFB0] UUID];
          uUIDString = [uUID UUIDString];
          v18 = [v7 URLByAppendingPathComponent:uUIDString];

          pathExtension = [v15 pathExtension];
          v20 = [v18 URLByAppendingPathExtension:pathExtension];

          v21 = [defaultManager moveItemAtURL:v15 toURL:v20 error:0];
          if (v21)
          {
            v22 = [UNNotificationAttachment alloc];
            identifier = [v14 identifier];
            [v14 type];
            v24 = v7;
            v26 = v25 = defaultManager;
            options = [v14 options];
            v28 = [(UNNotificationAttachment *)v22 initWithIdentifier:identifier URL:v20 type:v26 options:options];

            defaultManager = v25;
            v7 = v24;
            v9 = v36;

            array = v39;
            [v39 addObject:v28];
          }

          v29 = UNLogServiceExtension;
          if (os_log_type_enabled(UNLogServiceExtension, OS_LOG_TYPE_DEFAULT))
          {
            v30 = v29;
            _UUID = [(_UNNotificationServiceExtensionRemoteContext *)self _UUID];
            *buf = 138543618;
            v47 = _UUID;
            v48 = 1024;
            v49 = v21;
            _os_log_impl(&dword_1B85E3000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handled temporary attachment %{BOOL}d", buf, 0x12u);

            array = v39;
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

  v32 = [contentCopy mutableCopy];
  [v32 setAttachments:array];

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

@end
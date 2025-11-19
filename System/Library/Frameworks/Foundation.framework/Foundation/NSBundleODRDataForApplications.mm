@interface NSBundleODRDataForApplications
@end

@implementation NSBundleODRDataForApplications

void __50___NSBundleODRDataForApplications_initWithBundle___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = _NSOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_18075C000, v2, OS_LOG_TYPE_ERROR, "NSBundleResourceRequest could not connect to its helper daemon", v3, 2u);
  }

  dispatch_group_leave(*(*(a1 + 32) + 64));
}

void __50___NSBundleODRDataForApplications_initWithBundle___block_invoke_192(uint64_t a1, void *a2, NSError *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = a3;
    if (![(NSString *)[(NSError *)a3 domain] isEqualToString:@"NSCocoaErrorDomain"])
    {
      v11 = @"NSUnderlyingError";
      v12[0] = a3;
      v5 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4994, [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1]);
    }

    [*(*(a1 + 32) + 16) lock];
    *(*(a1 + 32) + 56) = [(NSError *)v5 copy];
    [*(*(a1 + 32) + 16) unlock];
    v6 = _NSOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = a3;
      _os_log_error_impl(&dword_18075C000, v6, OS_LOG_TYPE_ERROR, "NSBundleResourceRequest helper daemon reports an error in parsing the on demand resources information: %@", &v9, 0xCu);
    }

    dispatch_group_leave(*(*(a1 + 32) + 64));
  }

  else
  {
    [*(*(a1 + 32) + 16) lock];
    *(*(a1 + 32) + 40) = a2;
    [*(*(a1 + 32) + 16) unlock];
    v8 = *(*(a1 + 32) + 64);

    dispatch_group_leave(v8);
  }
}

void __50___NSBundleODRDataForApplications_initWithBundle___block_invoke_194(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = _NSOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_18075C000, v2, OS_LOG_TYPE_ERROR, "NSBundleResourceRequest could not connect to its helper daemon", v3, 2u);
  }

  dispatch_group_leave(*(*(a1 + 32) + 64));
}

void __50___NSBundleODRDataForApplications_initWithBundle___block_invoke_195(uint64_t a1, void *a2, NSError *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = a3;
    if (![(NSString *)[(NSError *)a3 domain] isEqualToString:@"NSCocoaErrorDomain"])
    {
      v23 = @"NSUnderlyingError";
      v24[0] = a3;
      v5 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4994, [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1]);
    }

    v6 = (a1 + 32);
    [*(*(a1 + 32) + 16) lock];
    *(*(a1 + 32) + 56) = [(NSError *)v5 copy];
    [*(*(a1 + 32) + 16) unlock];
    v7 = _NSOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 40) bundleURL];
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = a3;
      _os_log_error_impl(&dword_18075C000, v7, OS_LOG_TYPE_ERROR, "NSBundleResourceRequest helper daemon reports an error beginning for bundle %@: %@", buf, 0x16u);
    }
  }

  else
  {
    v10 = [a2 objectForKey:@"_NSODRSandboxExtensionKey"];
    if (v10)
    {
      [v10 UTF8String];
      *(*(a1 + 32) + 32) = sandbox_extension_consume();
      if ((*(*(a1 + 32) + 32) & 0x8000000000000000) != 0)
      {
        v11 = *__error();
        v12 = _NSOSLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v17 = *(a1 + 40);
          *buf = 138412546;
          v20 = v17;
          v21 = 1024;
          LODWORD(v22) = v11;
          _os_log_error_impl(&dword_18075C000, v12, OS_LOG_TYPE_ERROR, "NSBundleResourceRequest encountered a sandboxing error for bundle %@: %d", buf, 0x12u);
        }
      }
    }

    v14 = *(a1 + 32);
    v13 = (a1 + 32);
    [*(v14 + 16) lock];
    *(*v13 + 72) = [objc_msgSend(a2 objectForKey:{@"_NSODRSandboxRootPathKey", "copy"}];
    v15 = *v13;
    v16 = *(*v13 + 48);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50___NSBundleODRDataForApplications_initWithBundle___block_invoke_196;
    v18[3] = &unk_1E69F6108;
    v18[4] = v15;
    [v16 enumerateObjectsUsingBlock:v18];
    [*(*v13 + 16) unlock];
    v6 = v13;
  }

  dispatch_group_leave(*(*v6 + 64));
}

uint64_t __50___NSBundleODRDataForApplications_initWithBundle___block_invoke_196(uint64_t a1, void *a2)
{
  [*(*(a1 + 32) + 72) UTF8String];
  v3 = sandbox_extension_issue_file();
  v4 = [a2 remoteObjectProxy];
  v5 = [NSString stringWithUTF8String:v3];

  return [v4 accessSandboxExtension:v5];
}

uint64_t __67___NSBundleODRDataForApplications_assetPacksBecameAvailable_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  v4 = *(a1 + 32);

  return [v3 hostApplicationAssetPacksBecameAvailable:v4];
}

uint64_t __69___NSBundleODRDataForApplications_assetPacksBecameUnavailable_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  v4 = *(a1 + 32);

  return [v3 hostApplicationAssetPacksBecameUnavailable:v4];
}

uint64_t __56___NSBundleODRDataForApplications_addExtensionEndpoint___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) lock];
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 16);

  return [v2 unlock];
}

@end
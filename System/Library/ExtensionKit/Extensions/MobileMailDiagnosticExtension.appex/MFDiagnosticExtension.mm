@interface MFDiagnosticExtension
+ (OS_os_log)log;
- (EMDaemonInterface)daemonInterface;
- (id)_attachmentForURL:(id)l;
- (id)attachmentsForParameters:(id)parameters;
- (id)requestDiagnostics:(id)diagnostics isSensitiveCollectionAllowed:(BOOL)allowed;
- (void)dealloc;
@end

@implementation MFDiagnosticExtension

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000DF0;
  block[3] = &unk_100004170;
  block[4] = self;
  if (qword_100008500 != -1)
  {
    dispatch_once(&qword_100008500, block);
  }

  v2 = qword_1000084F8;

  return v2;
}

- (void)dealloc
{
  [(MFDiagnosticExtension *)self setDaemonInterface:0];
  v3.receiver = self;
  v3.super_class = MFDiagnosticExtension;
  [(MFDiagnosticExtension *)&v3 dealloc];
}

- (EMDaemonInterface)daemonInterface
{
  daemonInterface = self->_daemonInterface;
  if (!daemonInterface)
  {
    v4 = objc_alloc_init(EMDaemonInterface);
    v5 = self->_daemonInterface;
    self->_daemonInterface = v4;

    daemonInterface = self->_daemonInterface;
  }

  return daemonInterface;
}

- (id)requestDiagnostics:(id)diagnostics isSensitiveCollectionAllowed:(BOOL)allowed
{
  LODWORD(v4) = allowed;
  diagnosticsCopy = diagnostics;
  v7 = +[MFDiagnosticExtension log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requesting diagnostics...", buf, 2u);
  }

  v8 = +[EFPromise promise];
  if (([diagnosticsCopy isEqualToString:@"com.apple.taptoradard"] & 1) != 0 || objc_msgSend(diagnosticsCopy, "isEqualToString:", @"com.apple.TapToRadar"))
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  v9 = +[MFDiagnosticExtension log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Requesting diagnostics using options %lu", buf, 0xCu);
  }

  daemonInterface = [(MFDiagnosticExtension *)self daemonInterface];
  diagnosticInfoGatherer = [daemonInterface diagnosticInfoGatherer];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000011BC;
  v15[3] = &unk_100004198;
  v12 = v8;
  v16 = v12;
  [diagnosticInfoGatherer gatherDiagnosticsWithOptions:v4 completionHandler:v15];

  future = [v12 future];

  return future;
}

- (id)_attachmentForURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = [DEAttachmentItem attachmentWithPathURL:lCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  v25 = [parametersCopy objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  v4 = [parametersCopy objectForKeyedSubscript:@"DEExtensionAttachmentsParamConsentProvidedKey"];

  v5 = +[MFDiagnosticExtension log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = v25;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Host Application: %{public}@", buf, 0xCu);
  }

  v6 = +[NSMutableArray array];
  v7 = [(MFDiagnosticExtension *)self requestDiagnostics:v25 isSensitiveCollectionAllowed:v4 != 0];
  v31 = 0;
  v24 = [v7 resultWithTimeout:&v31 error:120.0];
  v8 = v31;

  if (v8)
  {
    v9 = +[MFDiagnosticExtension log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000016E0(v8, v9);
    }

    v10 = 0;
    v11 = &__NSArray0__struct;
  }

  else
  {
    startAccessingSecurityScopedResource = [v24 startAccessingSecurityScopedResource];
    v13 = +[NSFileManager defaultManager];
    v22 = startAccessingSecurityScopedResource;
    v30 = 0;
    v8 = [v13 contentsOfDirectoryAtURL:v24 includingPropertiesForKeys:0 options:0 error:&v30];
    v10 = v30;

    if (v10)
    {
      v14 = +[MFDiagnosticExtension log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        path = [v24 path];
        sub_100001758(path, v10, buf, v14);
      }
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v14 = v8;
      v16 = [v14 countByEnumeratingWithState:&v26 objects:v38 count:16];
      if (v16)
      {
        v17 = *v27;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [(MFDiagnosticExtension *)self _attachmentForURL:*(*(&v26 + 1) + 8 * i)];
            [v19 setDeleteOnAttach:&__kCFBooleanTrue];
            [v6 ef_addOptionalObject:v19];
          }

          v16 = [v14 countByEnumeratingWithState:&v26 objects:v38 count:16];
        }

        while (v16);
      }
    }

    if (v22)
    {
      [v24 stopAccessingSecurityScopedResource];
    }

    v20 = +[MFDiagnosticExtension log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 138412546;
      v33 = parametersCopy;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "attachmentsForParameters:%@ %@", v32, 0x16u);
    }

    v11 = v6;
  }

  return v11;
}

@end
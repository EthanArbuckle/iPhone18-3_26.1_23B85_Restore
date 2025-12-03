@interface BKResolveAssetForImportOperation
- (BKResolveAssetForImportOperation)initWithURL:(id)l;
- (BOOL)failed;
- (void)cleanup;
- (void)main;
@end

@implementation BKResolveAssetForImportOperation

- (BKResolveAssetForImportOperation)initWithURL:(id)l
{
  lCopy = l;
  v18.receiver = self;
  v18.super_class = BKResolveAssetForImportOperation;
  v6 = [(BKResolveAssetForImportOperation *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalURL, l);
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:0];
    v10 = [v9 URLByAppendingPathComponent:@"Inbox"];
    inboxURL = v7->_inboxURL;
    v7->_inboxURL = v10;

    v12 = v7->_inboxURL;
    v17 = 0;
    v13 = [v8 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:&v17];
    v14 = v17;
    if ((v13 & 1) == 0)
    {
      v15 = BKLibraryBookImportLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100790C9C();
      }
    }
  }

  return v7;
}

- (void)cleanup
{
  resultURL = [(BKResolveAssetForImportOperation *)self resultURL];

  if (resultURL)
  {
    v4 = +[NSFileManager defaultManager];
    v11 = 2;
    inboxURL = [(BKResolveAssetForImportOperation *)self inboxURL];
    resultURL2 = [(BKResolveAssetForImportOperation *)self resultURL];
    [v4 getRelationship:&v11 ofDirectoryAtURL:inboxURL toItemAtURL:resultURL2 error:0];

    if (!v11)
    {
      resultURL3 = [(BKResolveAssetForImportOperation *)self resultURL];
      v10 = 0;
      [v4 removeItemAtURL:resultURL3 error:&v10];
      v8 = v10;

      if (v8)
      {
        v9 = BKLibraryBookImportLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100790D04();
        }
      }
    }
  }
}

- (void)main
{
  v3 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    originalURL = [(BKResolveAssetForImportOperation *)self originalURL];
    *buf = 141558274;
    v37 = 1752392040;
    v38 = 2112;
    v39 = originalURL;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BKResolveAssetForImportOperation: start main: url: %{mask.hash}@", buf, 0x16u);
  }

  v5 = +[NSFileManager defaultManager];
  originalURL2 = [(BKResolveAssetForImportOperation *)self originalURL];
  startAccessingSecurityScopedResource = [originalURL2 startAccessingSecurityScopedResource];

  if ((startAccessingSecurityScopedResource & 1) == 0)
  {
    v8 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100790D6C(self, v8);
    }
  }

  originalURL3 = [(BKResolveAssetForImportOperation *)self originalURL];
  v10 = [originalURL3 ui_downloadOperationForActivity:0];

  [v10 start];
  if ([v10 isCancelled])
  {
    v11 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "BKResolveAssetForImportOperation: User cancelled import of cloud asset.", buf, 2u);
    }

    goto LABEL_37;
  }

  v35 = 2;
  originalURL4 = [(BKResolveAssetForImportOperation *)self originalURL];
  v34 = 0;
  v13 = [v5 getRelationship:&v35 ofDirectory:9 inDomain:1 toItemAtURL:originalURL4 error:&v34];
  v11 = v34;

  if ((v13 & 1) == 0)
  {
    originalURL6 = BKLibraryBookImportLog();
    if (os_log_type_enabled(originalURL6, OS_LOG_TYPE_ERROR))
    {
      sub_100790E18();
    }

    goto LABEL_34;
  }

  if (v35 != 2)
  {
    if (v35)
    {
      goto LABEL_35;
    }

    v14 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      originalURL5 = [(BKResolveAssetForImportOperation *)self originalURL];
      *buf = 141558274;
      v37 = 1752392040;
      v38 = 2112;
      v39 = originalURL5;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "BKResolveAssetForImportOperation: File is in container. url: %{mask.hash}@", buf, 0x16u);
    }

    originalURL6 = [(BKResolveAssetForImportOperation *)self originalURL];
    goto LABEL_21;
  }

  v17 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "BKResolveAssetForImportOperation: Copying to Inbox.", buf, 2u);
  }

  inboxURL = [(BKResolveAssetForImportOperation *)self inboxURL];
  originalURL7 = [(BKResolveAssetForImportOperation *)self originalURL];
  lastPathComponent = [originalURL7 lastPathComponent];
  originalURL6 = [inboxURL URLByAppendingPathComponent:lastPathComponent];

  originalURL8 = [(BKResolveAssetForImportOperation *)self originalURL];
  v33 = 0;
  LODWORD(originalURL7) = [v5 copyItemAtURL:originalURL8 toURL:originalURL6 error:&v33];
  v11 = v33;

  if (!originalURL7)
  {
    domain = [v11 domain];
    if ([domain isEqualToString:NSCocoaErrorDomain])
    {
      code = [v11 code];

      if (code == 516)
      {
        v24 = BKLibraryBookImportLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 141558274;
          v37 = 1752392040;
          v38 = 2112;
          v39 = originalURL6;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "BKResolveAssetForImportOperation: Removing exising file from Inbox. url: %{mask.hash}@", buf, 0x16u);
        }

        v32 = 0;
        v25 = [v5 removeItemAtURL:originalURL6 error:&v32];
        v26 = v32;
        v11 = v26;
        if (v25)
        {

          originalURL9 = [(BKResolveAssetForImportOperation *)self originalURL];
          v31 = 0;
          v28 = [v5 copyItemAtURL:originalURL9 toURL:originalURL6 error:&v31];
          v11 = v31;

          if (v28)
          {
            goto LABEL_21;
          }

          v29 = BKLibraryBookImportLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_100790F50();
          }
        }

        else
        {
          v29 = BKLibraryBookImportLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_100790EE8();
          }
        }

LABEL_33:

        goto LABEL_34;
      }
    }

    else
    {
    }

    v29 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100790E80();
    }

    goto LABEL_33;
  }

LABEL_21:
  [(BKResolveAssetForImportOperation *)self setResultURL:originalURL6];
LABEL_34:

LABEL_35:
  if (startAccessingSecurityScopedResource)
  {
    originalURL10 = [(BKResolveAssetForImportOperation *)self originalURL];
    [originalURL10 stopAccessingSecurityScopedResource];
  }

LABEL_37:
}

- (BOOL)failed
{
  resultURL = [(BKResolveAssetForImportOperation *)self resultURL];
  v3 = resultURL == 0;

  return v3;
}

@end
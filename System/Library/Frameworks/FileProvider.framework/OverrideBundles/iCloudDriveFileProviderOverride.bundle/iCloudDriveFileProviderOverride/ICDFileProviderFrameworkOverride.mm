@interface ICDFileProviderFrameworkOverride
+ (BOOL)_isURLExcludedFromSync:(id)sync syncRoot:(id)root error:(id *)error;
- (void)FPDocumentURLFromUniversalBookmarkableString:(id)string completionHandler:(id)handler;
- (void)FPStateForDomainWithID:(id)d completionHandler:(id)handler;
- (void)FPUniversalBookmarkableStringFromDocumentURL:(id)l completionHandler:(id)handler;
- (void)FPValuesForAttributes:(id)attributes forItemAtURL:(id)l completionHandler:(id)handler;
@end

@implementation ICDFileProviderFrameworkOverride

+ (BOOL)_isURLExcludedFromSync:(id)sync syncRoot:(id)root error:(id *)error
{
  syncCopy = sync;
  rootCopy = root;
  br_realpathURL = [syncCopy br_realpathURL];
  br_realpathURL2 = [rootCopy br_realpathURL];

  if (br_realpathURL && br_realpathURL2)
  {
    while (1)
    {
      path = [br_realpathURL2 path];
      path2 = [br_realpathURL path];
      v13 = [path isEqualToString:path2];

      if (v13)
      {
        uRLByDeletingLastPathComponent = 0;
        goto LABEL_17;
      }

      v14 = objc_autoreleasePoolPush();
      lastPathComponent = [br_realpathURL lastPathComponent];
      if ([lastPathComponent br_isExcludedWithMaximumDepth:1])
      {
        uRLByDeletingLastPathComponent = 0;
LABEL_14:

        objc_autoreleasePoolPop(v14);
        v19 = 1;
        goto LABEL_18;
      }

      v22 = 0;
      v16 = [br_realpathURL br_isIgnoredByFileProviderWithError:&v22];
      v17 = v22;
      uRLByDeletingLastPathComponent = v17;
      if (v16)
      {
        goto LABEL_14;
      }

      if (v17)
      {
        break;
      }

      uRLByDeletingLastPathComponent = [br_realpathURL URLByDeletingLastPathComponent];

      objc_autoreleasePoolPop(v14);
      br_realpathURL = uRLByDeletingLastPathComponent;
      if (!uRLByDeletingLastPathComponent)
      {
        goto LABEL_17;
      }
    }

    objc_autoreleasePoolPop(v14);
    if (error)
    {
      v20 = uRLByDeletingLastPathComponent;
      v19 = 0;
      *error = uRLByDeletingLastPathComponent;
      goto LABEL_18;
    }

LABEL_17:
    v19 = 0;
LABEL_18:
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:2];
    *error = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)FPValuesForAttributes:(id)attributes forItemAtURL:(id)l completionHandler:(id)handler
{
  attributesCopy = attributes;
  handlerCopy = handler;
  v9 = objc_autoreleasePoolPush();
  br_realpathURL = [l br_realpathURL];
  if ([br_realpathURL br_isExistWithNonMateralizingIOPolicy:1])
  {
    v36 = 0;
    v11 = [br_realpathURL br_getSyncRootWithError:&v36];
    v12 = v36;
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      if (geteuid())
      {
        if (!v11)
        {
          (*(handlerCopy + 2))(handlerCopy, 0, 0);
          goto LABEL_30;
        }

        v14 = *MEMORY[0x277CBE8B8];
        if ([attributesCopy containsObject:*MEMORY[0x277CBE8B8]])
        {
          v15 = objc_opt_new();
          v35 = 0;
          v16 = [ICDFileProviderFrameworkOverride _isURLExcludedFromSync:br_realpathURL syncRoot:v11 error:&v35];
          v17 = v35;
          v13 = v17;
          if (v16)
          {
            v18 = MEMORY[0x277CBEC28];
          }

          else
          {
            if (v17)
            {
              (*(handlerCopy + 2))(handlerCopy, 0, 0);
LABEL_28:

              goto LABEL_30;
            }

            v18 = MEMORY[0x277CBEC38];
          }

          [v15 setObject:v18 forKey:v14];
          v31 = [attributesCopy br_copy_if:&unk_284B1A188];

          attributesCopy = v31;
LABEL_12:
          v19 = *MEMORY[0x277CBE990];
          v20 = [attributesCopy containsObject:*MEMORY[0x277CBE990]];
          v21 = v20;
          if (v15 || !v20)
          {
            if (v15)
            {
              goto LABEL_18;
            }
          }

          else if ([br_realpathURL br_isInSyncedLocation])
          {
            mEMORY[0x277CFAEA0] = [MEMORY[0x277CFAEA0] sharedReachabilityMonitor];
            isNetworkReachable = [mEMORY[0x277CFAEA0] isNetworkReachable];

            if (!isNetworkReachable)
            {
              v15 = objc_opt_new();
LABEL_18:
              if ([attributesCopy count])
              {
                v24 = *MEMORY[0x277CBE980];
                v33 = v11;
                if (v21 && ([attributesCopy containsObject:v24] & 1) == 0)
                {
                  v25 = [attributesCopy arrayByAddingObject:v24];

                  attributesCopy = v25;
                }

                mEMORY[0x277CC63A8] = [MEMORY[0x277CC63A8] sharedConnection];
                v34 = v13;
                v27 = [mEMORY[0x277CC63A8] valuesForAttributes:attributesCopy forItemAtURL:br_realpathURL error:&v34];
                v32 = v34;

                [v15 addEntriesFromDictionary:v27];
                v28 = [v27 valueForKey:v24];
                v29 = v28;
                if (v28 && ([v28 BOOLValue] & 1) == 0)
                {
                  v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4355 userInfo:0];
                  [v15 setValue:v30 forKey:v19];
                }

                (*(handlerCopy + 2))(handlerCopy, v15, 0);

                v11 = v33;
                goto LABEL_30;
              }

              (*(handlerCopy + 2))(handlerCopy, v15, 0);
              goto LABEL_28;
            }
          }

          (*(handlerCopy + 2))(handlerCopy, 0, 0);

LABEL_30:
          goto LABEL_31;
        }
      }

      v13 = 0;
    }

    v15 = 0;
    goto LABEL_12;
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
LABEL_31:
  objc_autoreleasePoolPop(v9);
}

- (void)FPStateForDomainWithID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if ([dCopy hasPrefix:@"com.apple.CloudDocs.iCloudDriveFileProvider"] & 1) != 0 || (objc_msgSend(dCopy, "hasPrefix:", @"com.apple.CloudDocs.iCloudDriveFileProviderManaged"))
  {
    defaultConnection = [MEMORY[0x277CFAE38] defaultConnection];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_238353650;
    v14[3] = &unk_278A50D08;
    v8 = handlerCopy;
    v15 = v8;
    v9 = [defaultConnection remoteObjectProxyWithErrorHandler:v14];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_238353668;
    v12[3] = &unk_278A50D30;
    v13 = v8;
    [v9 getSyncState:10 reply:v12];
  }

  else
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_238353954(dCopy, v10, v11);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)FPUniversalBookmarkableStringFromDocumentURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_238353748;
  v8[3] = &unk_278A50D58;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [l br_bookmarkableStringWithEtag:0 onlyAllowItemKnowByServer:1 completion:v8];
}

- (void)FPDocumentURLFromUniversalBookmarkableString:(id)string completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  bookmarkPrefix = [(ICDFileProviderFrameworkOverride *)self bookmarkPrefix];
  v9 = [stringCopy hasPrefix:bookmarkPrefix];

  if (v9)
  {
    bookmarkPrefix2 = [(ICDFileProviderFrameworkOverride *)self bookmarkPrefix];
    v11 = [stringCopy substringFromIndex:{objc_msgSend(bookmarkPrefix2, "length")}];

    v12 = MEMORY[0x277CBEBC0];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_238353944;
    v13[3] = &unk_278A50D80;
    v14 = handlerCopy;
    [v12 br_documentURLFromBookmarkableString:v11 completion:v13];

    stringCopy = v11;
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

@end
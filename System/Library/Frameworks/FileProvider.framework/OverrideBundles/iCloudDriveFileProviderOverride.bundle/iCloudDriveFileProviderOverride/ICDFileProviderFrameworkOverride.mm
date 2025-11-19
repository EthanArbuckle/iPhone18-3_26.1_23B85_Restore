@interface ICDFileProviderFrameworkOverride
+ (BOOL)_isURLExcludedFromSync:(id)a3 syncRoot:(id)a4 error:(id *)a5;
- (void)FPDocumentURLFromUniversalBookmarkableString:(id)a3 completionHandler:(id)a4;
- (void)FPStateForDomainWithID:(id)a3 completionHandler:(id)a4;
- (void)FPUniversalBookmarkableStringFromDocumentURL:(id)a3 completionHandler:(id)a4;
- (void)FPValuesForAttributes:(id)a3 forItemAtURL:(id)a4 completionHandler:(id)a5;
@end

@implementation ICDFileProviderFrameworkOverride

+ (BOOL)_isURLExcludedFromSync:(id)a3 syncRoot:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 br_realpathURL];
  v10 = [v8 br_realpathURL];

  if (v9 && v10)
  {
    while (1)
    {
      v11 = [v10 path];
      v12 = [v9 path];
      v13 = [v11 isEqualToString:v12];

      if (v13)
      {
        v18 = 0;
        goto LABEL_17;
      }

      v14 = objc_autoreleasePoolPush();
      v15 = [v9 lastPathComponent];
      if ([v15 br_isExcludedWithMaximumDepth:1])
      {
        v18 = 0;
LABEL_14:

        objc_autoreleasePoolPop(v14);
        v19 = 1;
        goto LABEL_18;
      }

      v22 = 0;
      v16 = [v9 br_isIgnoredByFileProviderWithError:&v22];
      v17 = v22;
      v18 = v17;
      if (v16)
      {
        goto LABEL_14;
      }

      if (v17)
      {
        break;
      }

      v18 = [v9 URLByDeletingLastPathComponent];

      objc_autoreleasePoolPop(v14);
      v9 = v18;
      if (!v18)
      {
        goto LABEL_17;
      }
    }

    objc_autoreleasePoolPop(v14);
    if (a5)
    {
      v20 = v18;
      v19 = 0;
      *a5 = v18;
      goto LABEL_18;
    }

LABEL_17:
    v19 = 0;
LABEL_18:
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:2];
    *a5 = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)FPValuesForAttributes:(id)a3 forItemAtURL:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v10 = [a4 br_realpathURL];
  if ([v10 br_isExistWithNonMateralizingIOPolicy:1])
  {
    v36 = 0;
    v11 = [v10 br_getSyncRootWithError:&v36];
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
          (*(v8 + 2))(v8, 0, 0);
          goto LABEL_30;
        }

        v14 = *MEMORY[0x277CBE8B8];
        if ([v7 containsObject:*MEMORY[0x277CBE8B8]])
        {
          v15 = objc_opt_new();
          v35 = 0;
          v16 = [ICDFileProviderFrameworkOverride _isURLExcludedFromSync:v10 syncRoot:v11 error:&v35];
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
              (*(v8 + 2))(v8, 0, 0);
LABEL_28:

              goto LABEL_30;
            }

            v18 = MEMORY[0x277CBEC38];
          }

          [v15 setObject:v18 forKey:v14];
          v31 = [v7 br_copy_if:&unk_284B1A188];

          v7 = v31;
LABEL_12:
          v19 = *MEMORY[0x277CBE990];
          v20 = [v7 containsObject:*MEMORY[0x277CBE990]];
          v21 = v20;
          if (v15 || !v20)
          {
            if (v15)
            {
              goto LABEL_18;
            }
          }

          else if ([v10 br_isInSyncedLocation])
          {
            v22 = [MEMORY[0x277CFAEA0] sharedReachabilityMonitor];
            v23 = [v22 isNetworkReachable];

            if (!v23)
            {
              v15 = objc_opt_new();
LABEL_18:
              if ([v7 count])
              {
                v24 = *MEMORY[0x277CBE980];
                v33 = v11;
                if (v21 && ([v7 containsObject:v24] & 1) == 0)
                {
                  v25 = [v7 arrayByAddingObject:v24];

                  v7 = v25;
                }

                v26 = [MEMORY[0x277CC63A8] sharedConnection];
                v34 = v13;
                v27 = [v26 valuesForAttributes:v7 forItemAtURL:v10 error:&v34];
                v32 = v34;

                [v15 addEntriesFromDictionary:v27];
                v28 = [v27 valueForKey:v24];
                v29 = v28;
                if (v28 && ([v28 BOOLValue] & 1) == 0)
                {
                  v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4355 userInfo:0];
                  [v15 setValue:v30 forKey:v19];
                }

                (*(v8 + 2))(v8, v15, 0);

                v11 = v33;
                goto LABEL_30;
              }

              (*(v8 + 2))(v8, v15, 0);
              goto LABEL_28;
            }
          }

          (*(v8 + 2))(v8, 0, 0);

LABEL_30:
          goto LABEL_31;
        }
      }

      v13 = 0;
    }

    v15 = 0;
    goto LABEL_12;
  }

  (*(v8 + 2))(v8, 0, 0);
LABEL_31:
  objc_autoreleasePoolPop(v9);
}

- (void)FPStateForDomainWithID:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 hasPrefix:@"com.apple.CloudDocs.iCloudDriveFileProvider"] & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"com.apple.CloudDocs.iCloudDriveFileProviderManaged"))
  {
    v7 = [MEMORY[0x277CFAE38] defaultConnection];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_238353650;
    v14[3] = &unk_278A50D08;
    v8 = v6;
    v15 = v8;
    v9 = [v7 remoteObjectProxyWithErrorHandler:v14];

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
      sub_238353954(v5, v10, v11);
    }

    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)FPUniversalBookmarkableStringFromDocumentURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_238353748;
  v8[3] = &unk_278A50D58;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 br_bookmarkableStringWithEtag:0 onlyAllowItemKnowByServer:1 completion:v8];
}

- (void)FPDocumentURLFromUniversalBookmarkableString:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICDFileProviderFrameworkOverride *)self bookmarkPrefix];
  v9 = [v6 hasPrefix:v8];

  if (v9)
  {
    v10 = [(ICDFileProviderFrameworkOverride *)self bookmarkPrefix];
    v11 = [v6 substringFromIndex:{objc_msgSend(v10, "length")}];

    v12 = MEMORY[0x277CBEBC0];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_238353944;
    v13[3] = &unk_278A50D80;
    v14 = v7;
    [v12 br_documentURLFromBookmarkableString:v11 completion:v13];

    v6 = v11;
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

@end
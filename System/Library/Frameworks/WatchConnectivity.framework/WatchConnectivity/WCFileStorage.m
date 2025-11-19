@interface WCFileStorage
+ (id)sharedInstance;
- (BOOL)removeItemAtURL:(id)a3 numberOfRetries:(unint64_t)a4 error:(id *)a5;
- (WCFileStorage)init;
- (id)appContextFolderURL:(BOOL)a3;
- (id)appendPathForFileTransfer:(id)a3 toPath:(id)a4;
- (id)homeDirectoryURL;
- (id)loadAppContextDataFromInbox;
- (id)loadAppContextReceived:(BOOL)a3;
- (id)loadOutstandingFileTransfers;
- (id)loadOutstandingUserInfoTransfersAndComplicationUserInfo:(id *)a3;
- (id)localAppContextFolderURL;
- (id)outgoingFileTransferPath;
- (id)persistOutgoingUserInfoTransfer:(id)a3;
- (id)receivedAppContextFolderURL;
- (void)cleanUpOldPairingIDFolderInFolder:(id)a3 pairedDevicesPairingIDs:(id)a4;
- (void)cleanUpOldPairingIDFoldersWithPairedDevicesPairingIDs:(id)a3;
- (void)cleanUpWatchContentDirectoryWithCurrentAppInstallationID:(id)a3;
- (void)cleanupSessionFileFromInbox:(id)a3;
- (void)createWatchDirectoryIfNeeded:(id)a3;
- (void)deleteAppContextDataFromInbox;
- (void)deleteFileFolderForSessionFileFromInbox:(id)a3;
- (void)deleteOutstandingFileTransfer:(id)a3;
- (void)deleteOutstandingUserInfoTransfer:(id)a3;
- (void)deleteRelatedMetadataForSessionFileFromInbox:(id)a3;
- (void)deleteUserInfoTransferFromInbox:(id)a3;
- (void)enumerateFileTransferResultsWithBlock:(id)a3;
- (void)enumerateIncomingFilesWithBlock:(id)a3;
- (void)enumerateIncomingUserInfosWithBlock:(id)a3;
- (void)enumerateUserInfoResultsWithBlock:(id)a3;
- (void)loadAppContextDataFromInbox;
- (void)persistOutgoingFileTransfer:(id)a3;
- (void)resetIndexes;
- (void)setPairingID:(id)a3;
@end

@implementation WCFileStorage

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__WCFileStorage_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __31__WCFileStorage_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (WCFileStorage)init
{
  v6.receiver = self;
  v6.super_class = WCFileStorage;
  v2 = [(WCFileStorage *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.private.watchconnectivity.file-storage-queue", 0);
    fileQueue = v2->_fileQueue;
    v2->_fileQueue = v3;
  }

  return v2;
}

- (void)setPairingID:(id)a3
{
  v6 = a3;
  if (([(NSString *)self->_pairingID isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    pairingID = self->_pairingID;
    self->_pairingID = v4;

    [(WCFileStorage *)self resetIndexes];
  }
}

- (void)resetIndexes
{
  v3 = [(WCFileStorage *)self fileIndex];
  [v3 invalidate];

  [(WCFileStorage *)self setFileIndex:0];
  v4 = [(WCFileStorage *)self fileResultsIndex];
  [v4 invalidate];

  [(WCFileStorage *)self setFileResultsIndex:0];
  v5 = [(WCFileStorage *)self userInfoIndex];
  [v5 invalidate];

  [(WCFileStorage *)self setUserInfoIndex:0];
  v6 = [(WCFileStorage *)self userInfoResultsIndex];
  [v6 invalidate];

  [(WCFileStorage *)self setUserInfoResultsIndex:0];
}

- (id)loadOutstandingFileTransfers
{
  v35[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEBC0];
  v3 = [(WCFileStorage *)self outgoingFileTransferPath];
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  v35[0] = *MEMORY[0x277CBE8A8];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 enumeratorAtURL:v4 includingPropertiesForKeys:v5 options:4 errorHandler:&__block_literal_global_3];

  v8 = objc_opt_new();
  v9 = [v7 nextObject];
  if (v9)
  {
    v10 = v9;
    do
    {
      v11 = [v10 lastPathComponent];
      v12 = [v11 isEqual:@"file-transfer-data"];

      if (v12)
      {
        v13 = MEMORY[0x277CBEA90];
        v14 = [v10 path];
        v15 = [v13 dataWithContentsOfFile:v14];

        if (v15)
        {
          v16 = MEMORY[0x277CCAAC8];
          v17 = objc_opt_class();
          v28 = 0;
          v18 = [v16 unarchivedObjectOfClass:v17 fromData:v15 error:&v28];
          v19 = v28;
          if (v18)
          {
            v20 = [v18 transferIdentifier];
            [v8 setObject:v18 forKeyedSubscript:v20];
          }

          else
          {
            v20 = wc_log();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v27 = [v10 path];
              v25 = v19;
              v26 = NSPrintF();
              *buf = 136446722;
              v30 = "[WCFileStorage loadOutstandingFileTransfers]";
              v31 = 2114;
              v32 = v27;
              v33 = 2114;
              v34 = v26;
              _os_log_error_impl(&dword_23B2FA000, v20, OS_LOG_TYPE_ERROR, "%{public}s could not unarchive file at path %{public}@ due to %{public}@", buf, 0x20u);
            }
          }
        }

        else
        {
          v19 = wc_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v21 = [v10 path];
            *buf = 136446466;
            v30 = "[WCFileStorage loadOutstandingFileTransfers]";
            v31 = 2114;
            v32 = v21;
            _os_log_error_impl(&dword_23B2FA000, v19, OS_LOG_TYPE_ERROR, "%{public}s could not find file at path %{public}@", buf, 0x16u);
          }
        }
      }

      v22 = [v7 nextObject];

      v10 = v22;
    }

    while (v22);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __45__WCFileStorage_loadOutstandingFileTransfers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ([v3 code] != -1100 && objc_msgSend(v3, "code") != 260)
  {
    v4 = wc_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__WCFileStorage_loadOutstandingFileTransfers__block_invoke_cold_1();
    }
  }

  return 1;
}

- (void)persistOutgoingFileTransfer:(id)a3
{
  v4 = a3;
  v5 = [(WCFileStorage *)self outgoingFileTransferPath];
  v6 = [(WCFileStorage *)self appendPathForFileTransfer:v4 toPath:v5];

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = 0;
  [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v16];
  v8 = v16;

  if (v8)
  {
    v9 = wc_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [WCFileStorage persistOutgoingFileTransfer:];
    }
  }

  else
  {
    v15 = 0;
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v15];
    v8 = v15;
    if (v9)
    {
      v10 = [v6 stringByAppendingPathComponent:@"file-transfer-data"];
      v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10 isDirectory:0];

      v14 = 0;
      v12 = [v9 writeToURL:v11 options:1073741825 error:&v14];
      v8 = v14;
      if ((v12 & 1) == 0)
      {
        v13 = wc_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [WCFileStorage persistOutgoingFileTransfer:];
        }
      }
    }

    else
    {
      v10 = wc_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [WCFileStorage persistOutgoingFileTransfer:];
      }
    }
  }
}

- (void)deleteOutstandingFileTransfer:(id)a3
{
  v4 = a3;
  v5 = [(WCFileStorage *)self outgoingFileTransferPath];
  v6 = [(WCFileStorage *)self appendPathForFileTransfer:v4 toPath:v5];

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  v8 = [v7 removeItemAtPath:v6 error:&v11];
  v9 = v11;

  if ((v8 & 1) == 0 && [v9 code] != -1100 && objc_msgSend(v9, "code") != 260 && objc_msgSend(v9, "code") != 4)
  {
    v10 = wc_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WCFileStorage deleteOutstandingFileTransfer:];
    }
  }
}

- (id)persistOutgoingUserInfoTransfer:(id)a3
{
  v4 = a3;
  v5 = [(WCFileStorage *)self homeDirectoryURL];
  v6 = [(WCFileStorage *)self pairingID];
  v7 = WCUserInfoTransfersInContainer(v5, v6);

  v8 = [v4 transferIdentifier];
  v9 = [v7 URLByAppendingPathComponent:v8 isDirectory:1];

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v25 = 0;
  LODWORD(v7) = [v10 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v25];
  v11 = v25;

  if (v7)
  {
    v12 = [v9 URLByAppendingPathComponent:@"userinfo-transfer-object-data" isDirectory:0];

    v24 = 0;
    v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v24];
    v14 = v24;
    v11 = v14;
    if (v13)
    {
      v23 = v14;
      v15 = [v13 writeToURL:v12 options:1073741825 error:&v23];
      v16 = v23;

      if (!v15)
      {
        v18 = wc_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [WCFileStorage persistOutgoingUserInfoTransfer:];
        }

        v17 = 0;
        v11 = v16;
        goto LABEL_17;
      }

      v17 = [v9 URLByAppendingPathComponent:@"userinfo-transfer-wire-data" isDirectory:0];
      v18 = [v4 protobufData];
      v22 = v16;
      v19 = [v18 writeToURL:v17 options:1073741825 error:&v22];
      v11 = v22;

      if (v19)
      {
LABEL_17:

        goto LABEL_18;
      }

      v20 = wc_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [WCFileStorage persistOutgoingUserInfoTransfer:];
      }
    }

    else
    {
      v18 = wc_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [WCFileStorage persistOutgoingUserInfoTransfer:];
      }
    }

    v17 = 0;
    goto LABEL_17;
  }

  v12 = wc_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [WCFileStorage persistOutgoingUserInfoTransfer:];
  }

  v17 = 0;
LABEL_18:

  return v17;
}

- (id)loadOutstandingUserInfoTransfersAndComplicationUserInfo:(id *)a3
{
  v42[1] = *MEMORY[0x277D85DE8];
  v5 = [(WCFileStorage *)self homeDirectoryURL];
  v6 = [(WCFileStorage *)self pairingID];
  v7 = WCUserInfoTransfersInContainer(v5, v6);

  v42[0] = *MEMORY[0x277CBE8A8];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v34 = v7;
  v10 = [v9 enumeratorAtURL:v7 includingPropertiesForKeys:v8 options:4 errorHandler:&__block_literal_global_12];

  v11 = objc_opt_new();
  v12 = [v10 nextObject];
  if (v12)
  {
    v13 = v12;
    do
    {
      v14 = [v13 lastPathComponent];
      v15 = [v14 isEqual:@"userinfo-transfer-object-data"];

      if (v15)
      {
        v16 = MEMORY[0x277CBEA90];
        v17 = [v13 path];
        v18 = [v16 dataWithContentsOfFile:v17];

        if (v18)
        {
          v19 = MEMORY[0x277CCAAC8];
          v20 = objc_opt_class();
          v35 = 0;
          v21 = [v19 unarchivedObjectOfClass:v20 fromData:v18 error:&v35];
          v22 = v35;
          if (v21)
          {
            v23 = [v21 transferIdentifier];
            [v11 setObject:v21 forKeyedSubscript:v23];

            v24 = [v21 isCurrentComplicationInfo];
            if (a3 && v24)
            {
              v25 = v21;
              *a3 = v21;
            }
          }

          else
          {
            v27 = wc_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v33 = [v13 path];
              v31 = v22;
              v32 = NSPrintF();
              *buf = 136446722;
              v37 = "[WCFileStorage loadOutstandingUserInfoTransfersAndComplicationUserInfo:]";
              v38 = 2114;
              v39 = v33;
              v40 = 2114;
              v41 = v32;
              _os_log_error_impl(&dword_23B2FA000, v27, OS_LOG_TYPE_ERROR, "%{public}s could not unarchive user info at path %{public}@ due to %{public}@", buf, 0x20u);
            }
          }
        }

        else
        {
          v22 = wc_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v26 = [v13 path];
            *buf = 136446466;
            v37 = "[WCFileStorage loadOutstandingUserInfoTransfersAndComplicationUserInfo:]";
            v38 = 2114;
            v39 = v26;
            _os_log_error_impl(&dword_23B2FA000, v22, OS_LOG_TYPE_ERROR, "%{public}s could not find file at path %{public}@", buf, 0x16u);
          }
        }
      }

      v28 = [v10 nextObject];

      v13 = v28;
    }

    while (v28);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __73__WCFileStorage_loadOutstandingUserInfoTransfersAndComplicationUserInfo___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ([v3 code] != -1100 && objc_msgSend(v3, "code") != 260)
  {
    v4 = wc_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __73__WCFileStorage_loadOutstandingUserInfoTransfersAndComplicationUserInfo___block_invoke_cold_1();
    }
  }

  return 1;
}

- (void)deleteOutstandingUserInfoTransfer:(id)a3
{
  v4 = a3;
  v5 = [(WCFileStorage *)self pairingID];

  if (v5)
  {
    v6 = [(WCFileStorage *)self homeDirectoryURL];
    v7 = [(WCFileStorage *)self pairingID];
    v8 = WCUserInfoTransfersInContainer(v6, v7);

    v9 = [v4 transferIdentifier];
    v10 = [v8 URLByAppendingPathComponent:v9 isDirectory:1];

    v14 = 0;
    LOBYTE(v9) = [(WCFileStorage *)self removeItemAtURL:v10 numberOfRetries:5 error:&v14];
    v11 = v14;
    v12 = v11;
    if ((v9 & 1) == 0 && [v11 code] != -1100 && objc_msgSend(v12, "code") != 260 && objc_msgSend(v12, "code") != 4)
    {
      v13 = wc_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [WCFileStorage deleteOutstandingUserInfoTransfer:];
      }
    }
  }
}

- (void)enumerateFileTransferResultsWithBlock:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WCFileStorage *)self homeDirectoryURL];
  v6 = [(WCFileStorage *)self pairingID];
  v7 = WCFileTransfersURLInContainer(v5, v6);

  v8 = v7;
  v9 = [(WCFileStorage *)self fileResultsIndex];

  if (!v9)
  {
    v10 = [[WCContentIndex alloc] initWithContainingFolder:v7];
    [(WCFileStorage *)self setFileResultsIndex:v10];
  }

  v11 = [(WCFileStorage *)self fileResultsIndex];
  v12 = [v11 index];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v12;
  v48 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
  if (v48)
  {
    v47 = *v57;
    v43 = v4;
    v44 = v7;
    do
    {
      v13 = 0;
      do
      {
        if (*v57 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v56 + 1) + 8 * v13);
        v15 = wc_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v61 = "[WCFileStorage enumerateFileTransferResultsWithBlock:]";
          v62 = 2114;
          v63 = v14;
          _os_log_impl(&dword_23B2FA000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
        }

        v16 = [v8 URLByAppendingPathComponent:v14 isDirectory:1];
        v17 = [v16 URLByAppendingPathComponent:@"file-transfer-result" isDirectory:0];

        v18 = MEMORY[0x277CBEA90];
        v19 = [v17 path];
        v55 = 0;
        v20 = [v18 dataWithContentsOfFile:v19 options:2 error:&v55];
        v21 = v55;

        if (v20)
        {
          v22 = MEMORY[0x277CBEB98];
          v66[0] = objc_opt_class();
          v66[1] = objc_opt_class();
          v66[2] = objc_opt_class();
          v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:3];
          v24 = [v22 setWithArray:v23];

          v54 = 0;
          v25 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v24 fromData:v20 error:&v54];
          v21 = v54;
          if (v25)
          {
            v46 = v25;
            v26 = [v17 URLByDeletingLastPathComponent];
            v27 = [v26 URLByAppendingPathComponent:@"file-transfer-data" isDirectory:0];

            v28 = MEMORY[0x277CBEA90];
            log = v27;
            v29 = [v27 path];
            v53 = 0;
            v30 = [v28 dataWithContentsOfFile:v29 options:2 error:&v53];
            v21 = v53;

            v31 = v14;
            if (v30)
            {

              v32 = MEMORY[0x277CCAAC8];
              v33 = objc_opt_class();
              v52 = 0;
              v34 = [v32 unarchivedObjectOfClass:v33 fromData:v30 error:&v52];
              v21 = v52;
              if (v34)
              {
                v35 = [v46 objectForKeyedSubscript:@"WCFileTransferResultError"];
                [v34 setTransferError:v35];
                goto LABEL_24;
              }

              v35 = wc_log();
              v8 = v44;
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v40 = NSPrintF();
                *buf = 136446722;
                v61 = "[WCFileStorage enumerateFileTransferResultsWithBlock:]";
                v62 = 2114;
                v63 = v31;
                v64 = 2114;
                v65 = v40;
                _os_log_error_impl(&dword_23B2FA000, v35, OS_LOG_TYPE_ERROR, "%{public}s could not unarchive file %{public}@ due to %{public}@", buf, 0x20u);

                v8 = v44;
              }

              v34 = 0;
            }

            else
            {
              v36 = [v17 URLByDeletingLastPathComponent];

              WCDeleteItemAtURL(v36);
              v35 = wc_log();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                [(WCFileStorage *)&v50 enumerateFileTransferResultsWithBlock:v51, v35];
              }

              v34 = 0;
              v17 = v36;
LABEL_24:
              v8 = v44;
            }

            v4 = v43;
            v25 = v46;
          }

          else
          {
            log = wc_log();
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              v39 = NSPrintF();
              *buf = 136446722;
              v61 = "[WCFileStorage enumerateFileTransferResultsWithBlock:]";
              v62 = 2114;
              v31 = v14;
              v63 = v14;
              v64 = 2114;
              v65 = v39;
              _os_log_error_impl(&dword_23B2FA000, log, OS_LOG_TYPE_ERROR, "%{public}s could not unarchive results %{public}@ due to %{public}@", buf, 0x20u);

              v25 = 0;
            }

            else
            {
              v31 = v14;
            }

            v34 = 0;
          }

          goto LABEL_30;
        }

        v31 = v14;
        v24 = wc_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v38 = [v17 path];
          *buf = 136446466;
          v61 = "[WCFileStorage enumerateFileTransferResultsWithBlock:]";
          v62 = 2114;
          v63 = v38;
          _os_log_error_impl(&dword_23B2FA000, v24, OS_LOG_TYPE_ERROR, "%{public}s could not load file data at path %{public}@", buf, 0x16u);
        }

        v34 = 0;
LABEL_30:

        buf[0] = 0;
        (v4)[2](v4, v34, v31, buf);
        v37 = buf[0];

        if (v37)
        {
          goto LABEL_35;
        }

        ++v13;
      }

      while (v48 != v13);
      v41 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
      v48 = v41;
    }

    while (v41);
  }

LABEL_35:

  v42 = *MEMORY[0x277D85DE8];
}

- (id)loadAppContextReceived:(BOOL)a3
{
  v3 = [(WCFileStorage *)self appContextFolderURL:?];
  v4 = [v3 URLByAppendingPathComponent:@"context" isDirectory:0];
  v13 = 0;
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4 options:0 error:&v13];
  v6 = v13;
  v7 = v6;
  if (v5)
  {
    v12 = v6;
    v8 = WCDeserializePayloadData(v5, &v12);
    v9 = v12;

    if (v9)
    {
      v10 = wc_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [WCFileStorage loadAppContextReceived:];
      }

LABEL_6:
      v8 = MEMORY[0x277CBEC10];
      v7 = v9;
      goto LABEL_13;
    }

    v7 = 0;
  }

  else
  {
    if (v6 && [v6 code] != -1100 && objc_msgSend(v7, "code") != 260 && objc_msgSend(v7, "code") != 4)
    {
      v8 = wc_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [WCFileStorage loadAppContextReceived:];
      }

      v9 = v7;
      goto LABEL_6;
    }

    v8 = MEMORY[0x277CBEC10];
  }

LABEL_13:

  return v8;
}

- (id)loadAppContextDataFromInbox
{
  v3 = [(WCFileStorage *)self homeDirectoryURL];
  v4 = [(WCFileStorage *)self pairingID];
  v5 = WCInboxAppContextFolderURLInContainer(v3, v4);

  v6 = [v5 URLByAppendingPathComponent:@"context" isDirectory:0];
  v12 = 0;
  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v6 options:0 error:&v12];
  v8 = v12;
  v9 = v8;
  if (v8 && [v8 code] != -1100 && objc_msgSend(v9, "code") != 260 && objc_msgSend(v9, "code") != 4)
  {
    v10 = wc_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WCFileStorage loadAppContextDataFromInbox];
    }
  }

  return v7;
}

- (void)deleteAppContextDataFromInbox
{
  OUTLINED_FUNCTION_17();
  v9 = *MEMORY[0x277D85DE8];
  v1 = [v0 path];
  v2 = NSPrintF();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)enumerateIncomingFilesWithBlock:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WCFileStorage *)self homeDirectoryURL];
  v6 = [(WCFileStorage *)self pairingID];
  v33 = WCSessionFilesURLInContainer(v5, v6);

  v7 = [(WCFileStorage *)self fileIndex];

  if (!v7)
  {
    v8 = [[WCContentIndex alloc] initWithContainingFolder:v33];
    [(WCFileStorage *)self setFileIndex:v8];
  }

  v9 = [(WCFileStorage *)self fileIndex];
  v10 = [v9 index];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v32 = *v37;
    do
    {
      v13 = 0;
      do
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v36 + 1) + 8 * v13);
        v15 = wc_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v41 = "[WCFileStorage enumerateIncomingFilesWithBlock:]";
          v42 = 2114;
          v43 = v14;
          _os_log_impl(&dword_23B2FA000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
        }

        v16 = [v33 URLByAppendingPathComponent:v14 isDirectory:1];
        v17 = [v16 URLByAppendingPathComponent:@"session-file-data" isDirectory:0];

        v18 = MEMORY[0x277CBEA90];
        v19 = [v17 path];
        v35 = 0;
        v20 = [v18 dataWithContentsOfFile:v19 options:2 error:&v35];
        v21 = v35;

        if (v20)
        {

          v22 = MEMORY[0x277CCAAC8];
          v23 = objc_opt_class();
          v34 = 0;
          v24 = [v22 unarchivedObjectOfClass:v23 fromData:v20 error:&v34];
          v21 = v34;
          if (v24)
          {
            goto LABEL_17;
          }

          v25 = wc_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = NSPrintF();
            *buf = 136446722;
            v41 = "[WCFileStorage enumerateIncomingFilesWithBlock:]";
            v42 = 2114;
            v43 = v14;
            v44 = 2114;
            v45 = v26;
            _os_log_error_impl(&dword_23B2FA000, v25, OS_LOG_TYPE_ERROR, "%{public}s couldn't unarchive file %{public}@ due to %{public}@", buf, 0x20u);
          }
        }

        else
        {
          v25 = wc_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v28 = [v17 path];
            v30 = NSPrintF();
            *buf = 136446722;
            v41 = "[WCFileStorage enumerateIncomingFilesWithBlock:]";
            v42 = 2114;
            v43 = v28;
            v44 = 2114;
            v45 = v30;
            _os_log_error_impl(&dword_23B2FA000, v25, OS_LOG_TYPE_ERROR, "%{public}s could not load file data at path %{public}@ due to %{public}@", buf, 0x20u);
          }
        }

        v24 = 0;
LABEL_17:
        buf[0] = 0;
        (v4)[2](v4, v24, v14, buf);
        v27 = buf[0];

        if (v27)
        {
          goto LABEL_20;
        }

        ++v13;
      }

      while (v12 != v13);
      v12 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v12);
  }

LABEL_20:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)cleanupSessionFileFromInbox:(id)a3
{
  v4 = a3;
  [(WCFileStorage *)self deleteRelatedMetadataForSessionFileFromInbox:v4];
  [(WCFileStorage *)self deleteFileFolderForSessionFileFromInbox:v4];
}

- (void)deleteRelatedMetadataForSessionFileFromInbox:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WCFileStorage *)self homeDirectoryURL];
  v6 = [(WCFileStorage *)self pairingID];
  v7 = WCSessionFilesURLInContainer(v5, v6);

  v8 = [v4 fileIdentifier];
  v9 = [v7 URLByAppendingPathComponent:v8 isDirectory:1];

  v15 = 0;
  LOBYTE(v8) = [(WCFileStorage *)self removeItemAtURL:v9 numberOfRetries:5 error:&v15];
  v10 = v15;
  if ((v8 & 1) == 0)
  {
    v11 = wc_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [v9 path];
      v14 = NSPrintF();
      *buf = 136446978;
      v17 = "[WCFileStorage deleteRelatedMetadataForSessionFileFromInbox:]";
      v18 = 2114;
      v19 = v4;
      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      _os_log_error_impl(&dword_23B2FA000, v11, OS_LOG_TYPE_ERROR, "%{public}s couldn't delete persistent session file %{public}@ %{public}@ %{public}@", buf, 0x2Au);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deleteFileFolderForSessionFileFromInbox:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WCFileStorage *)self homeDirectoryURL];
  v6 = [(WCFileStorage *)self pairingID];
  v7 = WCTransferredFilesURLInContainer(v5, v6);

  v8 = [v4 fileIdentifier];
  v9 = [v7 URLByAppendingPathComponent:v8 isDirectory:1];

  v15 = 0;
  LOBYTE(v8) = [(WCFileStorage *)self removeItemAtURL:v9 numberOfRetries:5 error:&v15];
  v10 = v15;
  if ((v8 & 1) == 0)
  {
    v11 = wc_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [v9 path];
      v14 = NSPrintF();
      *buf = 136446978;
      v17 = "[WCFileStorage deleteFileFolderForSessionFileFromInbox:]";
      v18 = 2114;
      v19 = v4;
      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      _os_log_error_impl(&dword_23B2FA000, v11, OS_LOG_TYPE_ERROR, "%{public}s couldn't delete file folder %{public}@ %{public}@ %{public}@", buf, 0x2Au);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)enumerateIncomingUserInfosWithBlock:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WCFileStorage *)self homeDirectoryURL];
  v6 = [(WCFileStorage *)self pairingID];
  v35 = WCTransferredUserInfoInboxURLInContainer(v5, v6);

  v7 = [(WCFileStorage *)self userInfoIndex];

  if (!v7)
  {
    v8 = [[WCContentIndex alloc] initWithContainingFolder:v35];
    [(WCFileStorage *)self setUserInfoIndex:v8];
  }

  v9 = [(WCFileStorage *)self userInfoIndex];
  v10 = [v9 index];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v34 = *v39;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        v15 = [v35 URLByAppendingPathComponent:v14 isDirectory:{1, v30}];
        v16 = [v15 URLByAppendingPathComponent:@"userinfo-transfer-object-data" isDirectory:0];

        v17 = MEMORY[0x277CBEA90];
        v18 = [v16 path];
        v37 = 0;
        v19 = [v17 dataWithContentsOfFile:v18 options:2 error:&v37];
        v20 = v37;

        if (!v19)
        {
          v26 = wc_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v28 = [v16 path];
            v30 = v20;
            v32 = NSPrintF();
            *buf = 136446722;
            v43 = "[WCFileStorage enumerateIncomingUserInfosWithBlock:]";
            v44 = 2114;
            v45 = v28;
            v46 = 2114;
            v47 = v32;
            _os_log_error_impl(&dword_23B2FA000, v26, OS_LOG_TYPE_ERROR, "%{public}s could not load user info data at path %{public}@ due to %{public}@", buf, 0x20u);
          }

          goto LABEL_17;
        }

        v21 = MEMORY[0x277CCAAC8];
        v22 = objc_opt_class();
        v36 = 0;
        v23 = [v21 unarchivedObjectOfClass:v22 fromData:v19 error:&v36];
        v20 = v36;
        if (!v23 || ([v23 transferIdentifier], v24 = objc_claimAutoreleasedReturnValue(), v24, !v24))
        {
          v25 = wc_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v30 = v20;
            v31 = NSPrintF();
            *buf = 136446722;
            v43 = "[WCFileStorage enumerateIncomingUserInfosWithBlock:]";
            v44 = 2114;
            v45 = v14;
            v46 = 2114;
            v47 = v31;
            _os_log_error_impl(&dword_23B2FA000, v25, OS_LOG_TYPE_ERROR, "%{public}s user info malformed %{public}@ due to %{public}@", buf, 0x20u);
          }

          WCDeleteItemAtURL(v16);
LABEL_17:
          v23 = 0;
        }

        buf[0] = 0;
        (v4)[2](v4, v23, v14, buf);
        v27 = buf[0];

        if (v27)
        {
          goto LABEL_21;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v12);
  }

LABEL_21:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)deleteUserInfoTransferFromInbox:(id)a3
{
  v4 = a3;
  v5 = [(WCFileStorage *)self homeDirectoryURL];
  v6 = [(WCFileStorage *)self pairingID];
  v7 = WCTransferredUserInfoInboxURLInContainer(v5, v6);

  v8 = [v4 transferIdentifier];

  v9 = [v7 URLByAppendingPathComponent:v8 isDirectory:0];

  v12 = 0;
  LOBYTE(v8) = [(WCFileStorage *)self removeItemAtURL:v9 numberOfRetries:5 error:&v12];
  v10 = v12;
  if ((v8 & 1) == 0)
  {
    v11 = wc_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WCFileStorage deleteUserInfoTransferFromInbox:v9];
    }
  }
}

- (void)enumerateUserInfoResultsWithBlock:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WCFileStorage *)self homeDirectoryURL];
  v6 = [(WCFileStorage *)self pairingID];
  v7 = WCUserInfoTransfersInContainer(v5, v6);

  v8 = [(WCFileStorage *)self userInfoResultsIndex];

  if (!v8)
  {
    v9 = [[WCContentIndex alloc] initWithContainingFolder:v7];
    [(WCFileStorage *)self setUserInfoResultsIndex:v9];
  }

  v10 = [(WCFileStorage *)self userInfoResultsIndex];
  v11 = [v10 index];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v11;
  v41 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v41)
  {
    v40 = *v50;
    v36 = v4;
    v37 = v7;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v50 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v49 + 1) + 8 * v12);
      v14 = [v7 URLByAppendingPathComponent:v13 isDirectory:{1, v35}];
      v15 = [v14 URLByAppendingPathComponent:@"userinfo-transfer-result" isDirectory:0];

      v48 = 0;
      v16 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v15 options:2 error:&v48];
      v17 = v48;
      if (v16)
      {
        v42 = v13;
        v18 = MEMORY[0x277CBEB98];
        v59[0] = objc_opt_class();
        v59[1] = objc_opt_class();
        v59[2] = objc_opt_class();
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];
        v20 = [v18 setWithArray:v19];

        v47 = 0;
        v21 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v20 fromData:v16 error:&v47];
        v17 = v47;
        if (v21)
        {
          v39 = v21;
          v22 = [v15 URLByDeletingLastPathComponent];
          v23 = [v22 URLByAppendingPathComponent:@"userinfo-transfer-object-data" isDirectory:0];

          v46 = 0;
          v24 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v23 options:2 error:&v46];
          v25 = v46;
          v17 = v25;
          if (v24)
          {

            v26 = MEMORY[0x277CCAAC8];
            v27 = objc_opt_class();
            v45 = 0;
            v28 = [v26 unarchivedObjectOfClass:v27 fromData:v24 error:&v45];
            v17 = v45;
            if (v28)
            {
              v29 = [v39 objectForKeyedSubscript:@"WCUserInfoTransferResultError"];
              [v28 setTransferError:v29];
            }

            else
            {
              v29 = wc_log();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v54 = "[WCFileStorage enumerateUserInfoResultsWithBlock:]";
                v55 = 2114;
                v56 = v42;
                _os_log_error_impl(&dword_23B2FA000, v29, OS_LOG_TYPE_ERROR, "%{public}s didn't unarchive transfer %{public}@", buf, 0x16u);
              }

              v28 = 0;
            }
          }

          else
          {
            v31 = [v15 URLByDeletingLastPathComponent];

            WCDeleteItemAtURL(v31);
            v29 = wc_log();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              [(WCFileStorage *)&v43 enumerateUserInfoResultsWithBlock:v44, v29];
            }

            v28 = 0;
            v15 = v31;
            v4 = v36;
          }

          v7 = v37;
          v21 = v39;
        }

        else
        {
          v23 = wc_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v35 = v17;
            v33 = NSPrintF();
            *buf = 136446722;
            v54 = "[WCFileStorage enumerateUserInfoResultsWithBlock:]";
            v55 = 2114;
            v56 = v42;
            v57 = 2114;
            v58 = v33;
            _os_log_error_impl(&dword_23B2FA000, v23, OS_LOG_TYPE_ERROR, "%{public}s didn't unarchive results %{public}@ due to %{public}@", buf, 0x20u);

            v21 = 0;
          }

          v28 = 0;
        }

        v13 = v42;
      }

      else
      {
        v20 = wc_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v17;
          v30 = NSPrintF();
          *buf = 136446722;
          v54 = "[WCFileStorage enumerateUserInfoResultsWithBlock:]";
          v55 = 2114;
          v56 = v13;
          v57 = 2114;
          v58 = v30;
          _os_log_impl(&dword_23B2FA000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s result does not exist, removing from index %{public}@ due to %{public}@", buf, 0x20u);
        }

        v28 = 0;
      }

      buf[0] = 0;
      v4[2](v4, v28, v13, buf);
      v32 = buf[0];

      if (v32)
      {
        break;
      }

      if (v41 == ++v12)
      {
        v41 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
        if (v41)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)createWatchDirectoryIfNeeded:(id)a3
{
  v3 = a3;
  v13 = 0;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5 isDirectory:&v13];

  if (v6)
  {
    if (v13)
    {
LABEL_12:
      v10 = 0;
      goto LABEL_13;
    }

    v7 = wc_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [WCFileStorage createWatchDirectoryIfNeeded:v7];
    }

    WCDeleteItemAtURL(v3);
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  v9 = [v8 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v12];
  v10 = v12;

  if ((v9 & 1) == 0 && v10)
  {
    v11 = wc_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WCFileStorage createWatchDirectoryIfNeeded:v3];
    }
  }

LABEL_13:
}

- (void)cleanUpWatchContentDirectoryWithCurrentAppInstallationID:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WCFileStorage *)self pairingID];

  if (v5)
  {
    v6 = [(WCFileStorage *)self homeDirectoryURL];
    v7 = [(WCFileStorage *)self pairingID];
    v8 = WCWatchDirectoryLocationInContainer(v6, v7);

    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v26 = 0;
    v10 = [v9 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:0 options:4 error:&v26];
    v11 = v26;

    if (v11)
    {
      if ([v11 code] == -1100 || objc_msgSend(v11, "code") == 260)
      {
        goto LABEL_18;
      }

      v12 = wc_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [WCFileStorage cleanUpWatchContentDirectoryWithCurrentAppInstallationID:];
      }
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v21 = v10;
        v15 = *v23;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v22 + 1) + 8 * i);
            v18 = [v17 lastPathComponent];
            v19 = [v4 isEqual:v18];

            if ((v19 & 1) == 0)
            {
              WCDeleteItemAtURL(v17);
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v14);
        v10 = v21;
      }
    }

LABEL_18:
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpOldPairingIDFoldersWithPairedDevicesPairingIDs:(id)a3
{
  v4 = a3;
  v5 = [(WCFileStorage *)self pairingID];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [(WCFileStorage *)self pairingID];
    v8 = [v4 containsObject:v7];

    if (v8)
    {
      v9 = [(WCFileStorage *)self homeDirectoryURL];
      v10 = [(WCFileStorage *)self pairingID];
      v11 = WCInboxURLInContainer(v9, v10);

      v12 = [v11 URLByDeletingLastPathComponent];

      v13 = [(WCFileStorage *)self homeDirectoryURL];
      v14 = [(WCFileStorage *)self pairingID];
      v15 = WCApplicationSupportURLInContainer(v13, v14);

      v16 = [v15 URLByDeletingLastPathComponent];

      [(WCFileStorage *)self cleanUpOldPairingIDFolderInFolder:v12 pairedDevicesPairingIDs:v4];
      [(WCFileStorage *)self cleanUpOldPairingIDFolderInFolder:v16 pairedDevicesPairingIDs:v4];

      goto LABEL_8;
    }
  }

  else
  {
  }

  v12 = wc_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [WCFileStorage cleanUpOldPairingIDFoldersWithPairedDevicesPairingIDs:];
  }

LABEL_8:
}

- (void)cleanUpOldPairingIDFolderInFolder:(id)a3 pairedDevicesPairingIDs:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v26 = 0;
  v8 = [v7 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:4 error:&v26];
  v9 = v26;

  if (!v9)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v20 = v8;
      v21 = v5;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v15 lastPathComponent];
          if (([v6 containsObject:v16] & 1) == 0)
          {
            v17 = wc_log();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = [v15 path];
              *buf = 136446722;
              v28 = "[WCFileStorage cleanUpOldPairingIDFolderInFolder:pairedDevicesPairingIDs:]";
              v29 = 2114;
              v30 = v6;
              v31 = 2114;
              v32 = v18;
              _os_log_impl(&dword_23B2FA000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@, deleting %{public}@", buf, 0x20u);
            }

            WCDeleteItemAtURL(v15);
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v33 count:16];
      }

      while (v12);
      v8 = v20;
      v5 = v21;
    }

    goto LABEL_18;
  }

  if ([v9 code] != -1100 && objc_msgSend(v9, "code") != 260)
  {
    v10 = wc_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WCFileStorage cleanUpOldPairingIDFolderInFolder:pairedDevicesPairingIDs:];
    }

LABEL_18:
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeItemAtURL:(id)a3 numberOfRetries:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (a4)
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v9 removeItemAtURL:v8 error:a5];

    v11 = (v10 & 1) != 0 || [(WCFileStorage *)self removeItemAtURL:v8 numberOfRetries:a4 - 1 error:a5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)appendPathForFileTransfer:(id)a3 toPath:(id)a4
{
  v5 = a4;
  v6 = [a3 transferIdentifier];
  v7 = [v5 stringByAppendingPathComponent:v6];

  return v7;
}

- (id)outgoingFileTransferPath
{
  v3 = [(WCFileStorage *)self homeDirectoryURL];
  v4 = [(WCFileStorage *)self pairingID];
  v5 = WCFileTransfersURLInContainer(v3, v4);
  v6 = [v5 path];

  return v6;
}

- (id)homeDirectoryURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = NSHomeDirectory();
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  return v4;
}

- (id)appContextFolderURL:(BOOL)a3
{
  if (a3)
  {
    [(WCFileStorage *)self receivedAppContextFolderURL];
  }

  else
  {
    [(WCFileStorage *)self localAppContextFolderURL];
  }
  v3 = ;

  return v3;
}

- (id)localAppContextFolderURL
{
  v3 = [(WCFileStorage *)self homeDirectoryURL];
  v4 = [(WCFileStorage *)self pairingID];
  v5 = WCApplicationSupportURLInContainer(v3, v4);

  v6 = [v5 URLByAppendingPathComponent:@"ApplicationContext" isDirectory:1];

  return v6;
}

- (id)receivedAppContextFolderURL
{
  v3 = [(WCFileStorage *)self homeDirectoryURL];
  v4 = [(WCFileStorage *)self pairingID];
  v5 = WCApplicationSupportURLInContainer(v3, v4);

  v6 = [v5 URLByAppendingPathComponent:@"ReceivedApplicationContext" isDirectory:1];

  return v6;
}

void __45__WCFileStorage_loadOutstandingFileTransfers__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = NSPrintF();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)persistOutgoingFileTransfer:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)persistOutgoingFileTransfer:.cold.2()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)persistOutgoingFileTransfer:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136446722;
  OUTLINED_FUNCTION_4_0();
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_23B2FA000, v2, OS_LOG_TYPE_ERROR, "%{public}s error serializing file transfer %{public}@ due to %{public}@", v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)deleteOutstandingFileTransfer:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)persistOutgoingUserInfoTransfer:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)persistOutgoingUserInfoTransfer:.cold.2()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)persistOutgoingUserInfoTransfer:.cold.3()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)persistOutgoingUserInfoTransfer:.cold.4()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  v0 = NSPrintF();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

void __73__WCFileStorage_loadOutstandingUserInfoTransfersAndComplicationUserInfo___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = NSPrintF();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteOutstandingUserInfoTransfer:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136446466;
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(&dword_23B2FA000, v0, OS_LOG_TYPE_ERROR, "%{public}s failed to remove user info transfer %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)enumerateFileTransferResultsWithBlock:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_23B2FA000, log, OS_LOG_TYPE_ERROR, "result exists without file transfer", buf, 2u);
}

- (void)persistAppContextData:received:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  v0 = NSPrintF();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)persistAppContextData:received:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  v0 = NSPrintF();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)loadAppContextReceived:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  v0 = NSPrintF();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)loadAppContextReceived:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  v0 = NSPrintF();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteAppContextReceived:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  v0 = NSPrintF();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)loadAppContextDataFromInbox
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = NSPrintF();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteUserInfoTransferFromInbox:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)enumerateUserInfoResultsWithBlock:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_23B2FA000, log, OS_LOG_TYPE_ERROR, "results exist without file transfer", buf, 2u);
}

- (void)createWatchDirectoryIfNeeded:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpWatchContentDirectoryWithCurrentAppInstallationID:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v9 = *MEMORY[0x277D85DE8];
  v1 = [v0 path];
  v2 = NSPrintF();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpOldPairingIDFoldersWithPairedDevicesPairingIDs:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v1 pairingID];
  v9 = WCCompactStringFromCollection(v0);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpOldPairingIDFolderInFolder:pairedDevicesPairingIDs:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v9 = *MEMORY[0x277D85DE8];
  v1 = [v0 path];
  v2 = NSPrintF();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

@end
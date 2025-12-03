@interface ASTMaterializedConnectionManager
- (ASTConnectionManagerDelegate)delegate;
- (ASTMaterializedConnectionManager)initWithSOCKSProxyServer:(id)server port:(id)port;
- (BOOL)isValidUUID:(id)d;
- (void)cancelAllTestResults;
- (void)connection:(id)connection connectionStateChanged:(int64_t)changed;
- (void)connection:(id)connection didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpected:(int64_t)expected;
- (void)dealloc;
- (void)postSealableFile:(id)file fileSequence:(id)sequence totalFiles:(id)files testId:(id)id dataId:(id)dataId allowsCellularAccess:(BOOL)access completion:(id)completion;
@end

@implementation ASTMaterializedConnectionManager

- (ASTMaterializedConnectionManager)initWithSOCKSProxyServer:(id)server port:(id)port
{
  serverCopy = server;
  portCopy = port;
  v12.receiver = self;
  v12.super_class = ASTMaterializedConnectionManager;
  v8 = [(ASTMaterializedConnectionManager *)&v12 init];
  if (v8)
  {
    v9 = [[ASTNetworking alloc] initWithSOCKSProxyServer:serverCopy port:portCopy];
    networking = v8->_networking;
    v8->_networking = v9;
  }

  return v8;
}

void __137__ASTMaterializedConnectionManager_postSessionStatusForIdentities_ticket_timeout_allowsCellularAccess_requestQueuedSuiteInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = ASTLogHandleForCategory(1);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[Session] < Session Successful", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __137__ASTMaterializedConnectionManager_postSessionStatusForIdentities_ticket_timeout_allowsCellularAccess_requestQueuedSuiteInfo_completion___block_invoke_cold_1();
  }

  v45 = v5;

  v8 = [v4 objectForKeyedSubscript:@"diagsChannel"];
  if (v8 && (v9 = v8, [v4 objectForKeyedSubscript:@"diagsChannel"], v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, v9, (isKindOfClass & 1) != 0))
  {
    v12 = [v4 objectForKeyedSubscript:@"diagsChannel"];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v4 objectForKeyedSubscript:@"configCode"];
  if (v13 && (v14 = v13, [v4 objectForKeyedSubscript:@"configCode"], v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v16 = objc_opt_isKindOfClass(), v15, v14, (v16 & 1) != 0))
  {
    v17 = [v4 objectForKeyedSubscript:@"configCode"];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v4 objectForKeyedSubscript:@"guided"];
  if (v18)
  {
    v19 = v18;
    v20 = [v4 objectForKeyedSubscript:@"guided"];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if ((v21 & 1) == 0)
    {
      v22 = [v4 objectForKeyedSubscript:@"guided"];
      [v22 BOOLValue];
    }
  }

  v23 = [v4 objectForKeyedSubscript:@"queuedSuiteType"];
  if (v23)
  {
    v24 = v23;
    v25 = [v4 objectForKeyedSubscript:@"queuedSuiteType"];
    objc_opt_class();
    v26 = objc_opt_isKindOfClass();

    if (v26)
    {
      v27 = [v4 objectForKeyedSubscript:@"queuedSuiteType"];
      if (([v27 isEqualToString:@"None"] & 1) == 0)
      {
        [v27 isEqualToString:@"Logging"];
      }
    }
  }

  v28 = [v4 objectForKeyedSubscript:@"deviceIndex"];
  [v28 intValue];

  v29 = [v4 objectForKeyedSubscript:@"sessionType"];
  if (v29)
  {
    v30 = v29;
    v31 = [v4 objectForKeyedSubscript:@"sessionType"];
    objc_opt_class();
    v32 = objc_opt_isKindOfClass();

    if (v32)
    {
      v33 = [v4 objectForKeyedSubscript:@"sessionType"];
      v34 = [v33 lowercaseString];

      if (([v34 isEqualToString:@"diags"] & 1) == 0 && (objc_msgSend(v34, "isEqualToString:", @"nonguided") & 1) == 0 && (objc_msgSend(v34, "isEqualToString:", @"logging") & 1) == 0 && (objc_msgSend(v34, "isEqualToString:", @"mas") & 1) == 0 && (objc_msgSend(v34, "isEqualToString:", @"wbd") & 1) == 0)
      {
        [v34 isEqualToString:@"ssr"];
      }
    }
  }

  v35 = [v4 objectForKeyedSubscript:@"assetURL"];
  if (v35 && (v36 = v35, [v4 objectForKeyedSubscript:@"assetURL"], v37 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v38 = objc_opt_isKindOfClass(), v37, v36, (v38 & 1) != 0))
  {
    v39 = MEMORY[0x277CBEBC0];
    v40 = [v4 objectForKeyedSubscript:@"assetURL"];
    v41 = [v39 URLWithString:v40];
  }

  else
  {
    v41 = 0;
  }

  v42 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v47 = v12;
    _os_log_impl(&dword_240F3C000, v42, OS_LOG_TYPE_DEFAULT, "[Session] Received diags channel: %@", buf, 0xCu);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v4 != 0);
  v43 = *MEMORY[0x277D85DE8];
}

void __123__ASTMaterializedConnectionManager_downloadAsset_serverURL_endpoint_destinationFileHandle_allowsCellularAccess_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = ASTLogHandleForCategory(1);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[Asset] < %@ Download Successful", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __123__ASTMaterializedConnectionManager_downloadAsset_serverURL_endpoint_destinationFileHandle_allowsCellularAccess_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

void __69__ASTMaterializedConnectionManager_postEnrollAllowingCellularAccess___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 objectForKeyedSubscript:@"sessionId"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [v5 objectForKeyedSubscript:@"sessionId"];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __69__ASTMaterializedConnectionManager_postEnrollAllowingCellularAccess___block_invoke_cold_1();
    }
  }

  v12 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 32) identity];
    v14 = *(*(*(a1 + 48) + 8) + 40);
    v16 = 138412546;
    v17 = v13;
    v18 = 2112;
    v19 = v14;
    _os_log_impl(&dword_240F3C000, v12, OS_LOG_TYPE_DEFAULT, "[Enroll] < Identity: %@, Session: %@", &v16, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v15 = *MEMORY[0x277D85DE8];
}

void __70__ASTMaterializedConnectionManager_postAuthInfo_allowsCellularAccess___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = ASTLogHandleForCategory(1);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[AuthInfo] < Auth Info Successful", v8, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __70__ASTMaterializedConnectionManager_postAuthInfo_allowsCellularAccess___block_invoke_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __69__ASTMaterializedConnectionManager_postProfile_allowsCellularAccess___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = ASTLogHandleForCategory(1);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[Profile] < Profile Successful", v8, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __69__ASTMaterializedConnectionManager_postProfile_allowsCellularAccess___block_invoke_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __69__ASTMaterializedConnectionManager_postRequest_allowsCellularAccess___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = ASTLogHandleForCategory(1);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "Response: %@, error: %@", &v18, 0x16u);
    }

    v9 = [ASTResponse responseWithDictionary:v5];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = *(*(*(a1 + 48) + 8) + 40);
    v13 = ASTLogHandleForCategory(1);
    v8 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(*(*(a1 + 48) + 8) + 40);
        v18 = 138412290;
        v19 = v14;
        _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[Status] < %@", &v18, 0xCu);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __69__ASTMaterializedConnectionManager_postRequest_allowsCellularAccess___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __69__ASTMaterializedConnectionManager_postRequest_allowsCellularAccess___block_invoke_cold_2();
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v15 = [*(a1 + 40) completion];

  if (v15)
  {
    v16 = [*(a1 + 40) completion];
    v16[2]();
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __83__ASTMaterializedConnectionManager_postTestResult_allowsCellularAccess_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = ASTLogHandleForCategory(1);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[Test Results] < Test Results Successful", v9, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __83__ASTMaterializedConnectionManager_postTestResult_allowsCellularAccess_completion___block_invoke_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v8 = *(*(*(a1 + 40) + 8) + 24);
  (*(*(a1 + 32) + 16))();
}

- (void)postSealableFile:(id)file fileSequence:(id)sequence totalFiles:(id)files testId:(id)id dataId:(id)dataId allowsCellularAccess:(BOOL)access completion:(id)completion
{
  accessCopy = access;
  v44 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  completionCopy = completion;
  v15 = MEMORY[0x277CCAA00];
  dataIdCopy = dataId;
  idCopy = id;
  filesCopy = files;
  sequenceCopy = sequence;
  defaultManager = [v15 defaultManager];
  fileURL = [fileCopy fileURL];
  path = [fileURL path];
  v22 = [defaultManager attributesOfItemAtPath:path error:0];
  fileSize = [v22 fileSize];

  v24 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    fileURL2 = [fileCopy fileURL];
    path2 = [fileURL2 path];
    *buf = 138412546;
    v41 = path2;
    v42 = 2048;
    v43 = fileSize;
    _os_log_impl(&dword_240F3C000, v24, OS_LOG_TYPE_DEFAULT, "[File Upload] > File: %@, File Size: %llu bytes", buf, 0x16u);
  }

  v27 = [[ASTConnectionTestResultBinary alloc] initWithSealableFile:fileCopy fileSequence:sequenceCopy totalFiles:filesCopy testId:idCopy dataId:dataIdCopy];
  identity = [(ASTMaterializedConnectionManager *)self identity];
  [(ASTMaterializedConnection *)v27 setIdentity:identity];

  sessionId = [(ASTMaterializedConnectionManager *)self sessionId];
  [(ASTMaterializedConnection *)v27 setSessionId:sessionId];

  [(ASTMaterializedConnection *)v27 setAllowsCellularAccess:accessCopy];
  [(ASTMaterializedConnection *)v27 setDelegate:self];
  [(ASTMaterializedConnection *)v27 setRetryOnNetworkDisconnected:1];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __123__ASTMaterializedConnectionManager_postSealableFile_fileSequence_totalFiles_testId_dataId_allowsCellularAccess_completion___block_invoke;
  v37[3] = &unk_278CBD360;
  v38 = fileCopy;
  v39 = completionCopy;
  v30 = completionCopy;
  v31 = fileCopy;
  [(ASTMaterializedConnection *)v27 setDidReceiveResponse:v37];
  networking = [(ASTMaterializedConnectionManager *)self networking];
  [networking addConnection:v27];

  v33 = *MEMORY[0x277D85DE8];
}

void __123__ASTMaterializedConnectionManager_postSealableFile_fileSequence_totalFiles_testId_dataId_allowsCellularAccess_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASTLogHandleForCategory(1);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[File Upload] < File Upload Successful", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __123__ASTMaterializedConnectionManager_postSealableFile_fileSequence_totalFiles_testId_dataId_allowsCellularAccess_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = *(a1 + 32);
  v10 = (a1 + 32);
  v12 = [v11 fileURL];
  v16 = 0;
  v13 = [v9 removeItemAtURL:v12 error:&v16];
  v14 = v16;

  if ((v13 & 1) == 0)
  {
    v15 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __123__ASTMaterializedConnectionManager_postSealableFile_fileSequence_totalFiles_testId_dataId_allowsCellularAccess_completion___block_invoke_cold_2(v10);
    }
  }
}

- (void)cancelAllTestResults
{
  networking = [(ASTMaterializedConnectionManager *)self networking];
  [networking cancelConnectionsOfClass:objc_opt_class()];

  networking2 = [(ASTMaterializedConnectionManager *)self networking];
  [networking2 cancelConnectionsOfClass:objc_opt_class()];
}

void __128__ASTMaterializedConnectionManager_requestSessionArchiveWithSessionID_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v9 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __128__ASTMaterializedConnectionManager_requestSessionArchiveWithSessionID_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_2();
    }

    v10 = *(a1 + 40);
    v11 = MEMORY[0x277CCA9B8];
    v12 = -7000;
    goto LABEL_10;
  }

  v7 = [v5 objectForKeyedSubscript:@"archived"];
  v8 = [v7 BOOLValue];

  if ((v8 & 1) == 0)
  {
    v13 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __128__ASTMaterializedConnectionManager_requestSessionArchiveWithSessionID_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_1();
    }

    v10 = *(a1 + 40);
    v11 = MEMORY[0x277CCA9B8];
    v12 = -1008;
LABEL_10:
    v14 = [v11 errorWithDomain:@"ASTErrorDomain" code:v12 userInfo:0];
    (*(v10 + 16))(v10, v14);

    goto LABEL_11;
  }

  (*(*(a1 + 40) + 16))();
LABEL_11:
  dispatch_semaphore_signal(*(a1 + 32));
}

void __141__ASTMaterializedConnectionManager_requestSelfServiceSuitesAvailableWithConfigCode_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = [v5 objectForKeyedSubscript:@"suites"];
    v9 = [v8 arrayDroppingNSNullValues];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __141__ASTMaterializedConnectionManager_requestSelfServiceSuitesAvailableWithConfigCode_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_103;
    v13[3] = &unk_278CBD428;
    v14 = v7;
    v10 = v7;
    [v9 enumerateObjectsUsingBlock:v13];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __141__ASTMaterializedConnectionManager_requestSelfServiceSuitesAvailableWithConfigCode_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_1(a1);
    }

    v12 = *(a1 + 40);
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
    (*(v12 + 16))(v12, 0, v9);
  }
}

void __141__ASTMaterializedConnectionManager_requestSelfServiceSuitesAvailableWithConfigCode_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_103(uint64_t a1, void *a2)
{
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v12 objectForKeyedSubscript:@"id"];
    v4 = [v12 objectForKeyedSubscript:@"name"];
    v5 = [v12 objectForKeyedSubscript:@"description"];
    v6 = [v12 objectForKeyedSubscript:@"timeEstimateStr"];
    v7 = [v12 objectForKeyedSubscript:@"assets"];
    v8 = [ASTSuite alloc];
    v9 = [v7 objectForKeyedSubscript:@"primary"];
    v10 = [v7 objectForKeyedSubscript:@"secondary"];
    v11 = [(ASTSuite *)v8 initWithId:v3 suiteNameLocalizedString:v4 suiteDescriptionLocalizedString:v5 estimatedCompletionTimeLocalizedString:v6 primaryAssetLocator:v9 secondaryAssetLocator:v10];

    [*(a1 + 32) addObject:v11];
  }
}

void __120__ASTMaterializedConnectionManager_postSelectSelfServiceSuite_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    v9 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __120__ASTMaterializedConnectionManager_postSelectSelfServiceSuite_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_2(a1);
    }

    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
    v8 = *(v10 + 16);
    goto LABEL_7;
  }

  v6 = [a2 objectForKeyedSubscript:@"diagnosticEventId"];
  if ([*(a1 + 40) isValidUUID:v6])
  {
    v7 = *(a1 + 32);
    v8 = *(*(a1 + 48) + 16);
LABEL_7:
    v8();
    goto LABEL_11;
  }

  v12 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    __120__ASTMaterializedConnectionManager_postSelectSelfServiceSuite_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_1();
  }

  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
  (*(v13 + 16))(v13, v14, 0, 0, v15);

LABEL_11:
}

void __145__ASTMaterializedConnectionManager_requestSelfServiceSuiteResultsWithDiagnosticEventID_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 dictionaryDroppingNSNullValues];
    v11 = 0;
    v7 = [[ASTSuiteResult alloc] initWithDictionary:v6 error:&v11];
    v8 = v11;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __145__ASTMaterializedConnectionManager_requestSelfServiceSuiteResultsWithDiagnosticEventID_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_1(a1);
    }

    v10 = *(a1 + 40);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
    (*(v10 + 16))(v10, 0, v8);
  }
}

void __165__ASTMaterializedConnectionManager_requestInstructionalPromptDetailsWithInstructionID_type_withPayloadSigner_language_locale_allowsCellularAccess_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 dictionaryDroppingNSNullValues];
    v7 = [v6 objectForKeyedSubscript:@"messages"];
    v8 = [v6 objectForKeyedSubscript:@"images"];
    v9 = v8;
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = ASTLogHandleForCategory(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __165__ASTMaterializedConnectionManager_requestInstructionalPromptDetailsWithInstructionID_type_withPayloadSigner_language_locale_allowsCellularAccess_completionHandler___block_invoke_cold_1();
      }
    }

    else
    {
      if ([*(a1 + 32) isEqualToString:@"Alert"])
      {
        v24 = v5;
        v16 = 1;
LABEL_18:
        v17 = [v6 objectForKeyedSubscript:@"iconIdentifier"];
        v18 = [v6 objectForKeyedSubscript:@"title"];
        v19 = [v6 objectForKeyedSubscript:@"subtitle"];
        v20 = [v6 objectForKeyedSubscript:@"options"];
        v21 = [v6 objectForKeyedSubscript:@"navigationBarActions"];
        v22 = [[ASTInstructionalPrompt alloc] initWithID:*(a1 + 40) type:v16 iconLocator:v17 localizedTitle:v18 localizedSubtitle:v19 imageLocators:v9 instructions:v7 options:v20];
        [(ASTInstructionalPrompt *)v22 setNavigationBarActions:v21];
        (*(*(a1 + 48) + 16))();

        v5 = v24;
        goto LABEL_19;
      }

      if ([*(a1 + 32) isEqualToString:@"Query"])
      {
        v24 = v5;
        v16 = 0;
        goto LABEL_18;
      }

      v23 = ASTLogHandleForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __165__ASTMaterializedConnectionManager_requestInstructionalPromptDetailsWithInstructionID_type_withPayloadSigner_language_locale_allowsCellularAccess_completionHandler___block_invoke_cold_2((a1 + 32));
      }
    }

    v12 = *(a1 + 48);
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
    (*(v12 + 16))(v12, 0, v13);

LABEL_19:
    goto LABEL_20;
  }

  v14 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    __165__ASTMaterializedConnectionManager_requestInstructionalPromptDetailsWithInstructionID_type_withPayloadSigner_language_locale_allowsCellularAccess_completionHandler___block_invoke_cold_3();
  }

  v15 = *(a1 + 48);
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
  (*(v15 + 16))(v15, 0, v6);
LABEL_20:
}

void __107__ASTMaterializedConnectionManager_postPrepareDeviceWithIdentities_allowsCellularAccess_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v11 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __107__ASTMaterializedConnectionManager_postPrepareDeviceWithIdentities_allowsCellularAccess_completionHandler___block_invoke_cold_2();
    }

    v10 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v7 = [v5 objectForKeyedSubscript:@"response"];
  v8 = [v7 lowercaseString];
  v9 = [v8 isEqualToString:@"success"];

  if (v9)
  {
    v10 = *(*(a1 + 32) + 16);
LABEL_7:
    v10();
    goto LABEL_11;
  }

  v12 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    __107__ASTMaterializedConnectionManager_postPrepareDeviceWithIdentities_allowsCellularAccess_completionHandler___block_invoke_cold_1();
  }

  v13 = *(a1 + 32);
  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
  (*(v13 + 16))(v13, v14);

LABEL_11:
}

- (void)connection:(id)connection connectionStateChanged:(int64_t)changed
{
  connectionCopy = connection;
  if ([connectionCopy conformsToProtocol:&unk_2852DAEB8])
  {
    testId = [connectionCopy testId];
    if (changed == 1)
    {
      request = [connectionCopy request];
      allowsCellularAccess = [request allowsCellularAccess];

      delegate = [(ASTMaterializedConnectionManager *)self delegate];
      [delegate connectionManager:self pausedSendingResultForTest:testId reason:allowsCellularAccess == 0];
    }

    else
    {
      delegate = [(ASTMaterializedConnectionManager *)self delegate];
      [delegate connectionManager:self resumedSendingResultForTest:testId];
    }
  }

  else
  {
    delegate2 = [(ASTMaterializedConnectionManager *)self delegate];
    testId = delegate2;
    if (changed == 1)
    {
      [delegate2 connectionManagerRequestPaused:self];
    }

    else
    {
      [delegate2 connectionManagerRequestResumed:self];
    }
  }
}

- (void)connection:(id)connection didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpected:(int64_t)expected
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = ASTLogHandleForCategory(1);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (expected < 1)
  {
    if (v10)
    {
      v16 = 134218240;
      dataCopy2 = data;
      v18 = 2048;
      sentCopy2 = sent;
      v12 = "bytes sent: %lld, total bytes sent: %lld";
      v13 = v9;
      v14 = 22;
      goto LABEL_6;
    }
  }

  else if (v10)
  {
    v11 = sent / expected;
    v16 = 134218752;
    dataCopy2 = data;
    v18 = 2048;
    sentCopy2 = sent;
    v20 = 2048;
    expectedCopy = expected;
    v22 = 2048;
    v23 = (v11 * 100.0);
    v12 = "bytes sent: %lld, total bytes sent: %lld, expected: %lld, complete: %0.1f%%";
    v13 = v9;
    v14 = 42;
LABEL_6:
    _os_log_impl(&dword_240F3C000, v13, OS_LOG_TYPE_DEFAULT, v12, &v16, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  networking = [(ASTMaterializedConnectionManager *)self networking];
  [networking invalidate];

  v4.receiver = self;
  v4.super_class = ASTMaterializedConnectionManager;
  [(ASTMaterializedConnectionManager *)&v4 dealloc];
}

- (BOOL)isValidUUID:(id)d
{
  v3 = MEMORY[0x277CCAD78];
  dCopy = d;
  v5 = [[v3 alloc] initWithUUIDString:dCopy];

  return v5 != 0;
}

- (ASTConnectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __137__ASTMaterializedConnectionManager_postSessionStatusForIdentities_ticket_timeout_allowsCellularAccess_requestQueuedSuiteInfo_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __123__ASTMaterializedConnectionManager_downloadAsset_serverURL_endpoint_destinationFileHandle_allowsCellularAccess_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_240F3C000, v1, v2, "[Asset] <ERROR> %@, %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __69__ASTMaterializedConnectionManager_postEnrollAllowingCellularAccess___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __70__ASTMaterializedConnectionManager_postAuthInfo_allowsCellularAccess___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __69__ASTMaterializedConnectionManager_postProfile_allowsCellularAccess___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __69__ASTMaterializedConnectionManager_postRequest_allowsCellularAccess___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__ASTMaterializedConnectionManager_postRequest_allowsCellularAccess___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __83__ASTMaterializedConnectionManager_postTestResult_allowsCellularAccess_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __123__ASTMaterializedConnectionManager_postSealableFile_fileSequence_totalFiles_testId_dataId_allowsCellularAccess_completion___block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) fileURL];
  v2 = [v1 path];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_240F3C000, v3, v4, "[File Upload] <ERROR> File: %@, Error %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __123__ASTMaterializedConnectionManager_postSealableFile_fileSequence_totalFiles_testId_dataId_allowsCellularAccess_completion___block_invoke_cold_2(id *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [*a1 fileURL];
  v2 = [v1 path];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_240F3C000, v3, v4, "[File Upload] <ERROR> Could not remove file: %@, Error %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __128__ASTMaterializedConnectionManager_requestSessionArchiveWithSessionID_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __128__ASTMaterializedConnectionManager_requestSessionArchiveWithSessionID_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __141__ASTMaterializedConnectionManager_requestSelfServiceSuitesAvailableWithConfigCode_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_240F3C000, v1, v2, "[ASTConnectionManager] Self service session failed to retrieve the suites available for config: %@, error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __120__ASTMaterializedConnectionManager_postSelectSelfServiceSuite_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __120__ASTMaterializedConnectionManager_postSelectSelfServiceSuite_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_240F3C000, v1, v2, "[ASTConnectionManager] Failed to select suite with ID: %@, error %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __145__ASTMaterializedConnectionManager_requestSelfServiceSuiteResultsWithDiagnosticEventID_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_240F3C000, v1, v2, "[ASTConnectionManager] Failed to retrieve suite run results, deid: %@, error %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __165__ASTMaterializedConnectionManager_requestInstructionalPromptDetailsWithInstructionID_type_withPayloadSigner_language_locale_allowsCellularAccess_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __165__ASTMaterializedConnectionManager_requestInstructionalPromptDetailsWithInstructionID_type_withPayloadSigner_language_locale_allowsCellularAccess_completionHandler___block_invoke_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __165__ASTMaterializedConnectionManager_requestInstructionalPromptDetailsWithInstructionID_type_withPayloadSigner_language_locale_allowsCellularAccess_completionHandler___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __107__ASTMaterializedConnectionManager_postPrepareDeviceWithIdentities_allowsCellularAccess_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __107__ASTMaterializedConnectionManager_postPrepareDeviceWithIdentities_allowsCellularAccess_completionHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end
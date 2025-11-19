@interface CloudKitUploadController
+ (void)unregisterCloudKitUploadActivities;
- (BOOL)logUploadRequiresConsent:(id)a3;
- (BOOL)shouldDeferFromCloudKitError:(id)a3;
- (BOOL)validateCaseAttachmentsForDiagnosticCaseStorage:(id)a3 record:(id)a4;
- (CloudKitUploadController)initWithWorkspace:(id)a3;
- (id)_fetchCasesInternal:(id)a3 limit:(unint64_t)a4;
- (id)_fetchRecentPendingCaseSummariesInternal:(id)a3 limit:(unint64_t)a4;
- (id)currentCloudKitContainerForEnvironment:(int64_t)a3;
- (id)fetchCaseSummariesWithIdentifiers:(id)a3;
- (id)fetchCasesWithIdentifiers:(id)a3 limit:(unint64_t)a4;
- (id)locallyFilterCases:(id)a3;
- (id)processCloudkitDecisionServiceResponse:(id)a3;
- (id)randomlySelectCasesFrom:(id)a3 maximum:(unint64_t)a4;
- (void)_save;
- (void)ckcodeDecisionService:(id)a3 response:(id)a4;
- (void)configureCaseSummaryDiscretionaryActivityCriteria:(id)a3;
- (void)configureLogUploadDiscretionaryActivityCriteria:(id)a3;
- (void)configureWorkspace:(id)a3;
- (void)deferXPCActivity:(id)a3;
- (void)filterCasesPendingUpload:(id)a3 activity:(id)a4 reply:(id)a5;
- (void)filterCasesViaCloudkitDecisionService:(id)a3 activity:(id)a4 response:(id)a5;
- (void)finishXPCActivity:(id)a3;
- (void)operationCompletedWithID:(id)a3 savedRecords:(id)a4 deletedRecords:(id)a5 error:(id)a6 activity:(id)a7;
- (void)performSubmissionOfCaseSummariesWithIdentifiers:(id)a3 reply:(id)a4;
- (void)performSubmissionOfRecentCaseSummaries:(unint64_t)a3 reply:(id)a4;
- (void)performUploadDecisionForCaseIdentifiers:(id)a3 reply:(id)a4;
- (void)performUploadForCaseIdentifiers:(id)a3;
- (void)performUploadForRecentCases:(unint64_t)a3;
- (void)recordOperationCompleteForOperationID:(id)a3 completionTime:(id)a4 success:(BOOL)a5;
- (void)registerCaseSummaryActivities;
- (void)registerCloudKitUploadActivities;
- (void)registerLogUploadActivities;
- (void)save;
- (void)startPeriodicSummaryTask:(id)a3;
- (void)startPeriodicUploadTask:(id)a3;
- (void)submitCaseSummaries:(id)a3 activity:(id)a4;
- (void)submitCaseSummariesWithIdentifiers:(id)a3 reply:(id)a4;
- (void)submitRecentCaseSummaries:(unint64_t)a3 reply:(id)a4;
- (void)uploadCasesWithIdentifiers:(id)a3;
- (void)uploadDecisionWithIdentifiers:(id)a3 reply:(id)a4;
- (void)uploadDiagnosticCases:(id)a3 activity:(id)a4;
- (void)uploadMostRecentCases:(unint64_t)a3;
- (void)uploadToCloudKitContainer:(id)a3 withRecords:(id)a4 activity:(id)a5;
@end

@implementation CloudKitUploadController

- (CloudKitUploadController)initWithWorkspace:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CloudKitUploadController;
  v5 = [(CloudKitUploadController *)&v14 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("com.apple.autobugcapture.CKUpload", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = v5->_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__CloudKitUploadController_initWithWorkspace___block_invoke;
    v11[3] = &unk_278CF04F8;
    v12 = v5;
    v13 = v4;
    dispatch_sync(v9, v11);
  }

  return v5;
}

- (void)configureWorkspace:(id)a3
{
  v4 = a3;
  v5 = uploadLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v14 = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "Configuring CoreData workspace", v14, 2u);
  }

  v6 = [v4 copy];
  workspace = self->_workspace;
  self->_workspace = v6;

  v8 = [[DiagnosticCaseStorageAnalytics alloc] initWithWorkspace:self->_workspace withCache:0];
  caseStorageAnalytics = self->_caseStorageAnalytics;
  self->_caseStorageAnalytics = v8;

  v10 = [[DiagnosticCaseSummaryAnalytics alloc] initWithWorkspace:self->_workspace withCache:0];
  caseSummaryAnalytics = self->_caseSummaryAnalytics;
  self->_caseSummaryAnalytics = v10;

  v12 = [[UploadRecordAnalytics alloc] initWithWorkspace:self->_workspace withCache:0];
  uploadRecordAnalytics = self->_uploadRecordAnalytics;
  self->_uploadRecordAnalytics = v12;
}

- (id)_fetchCasesInternal:(id)a3 limit:(unint64_t)a4
{
  v5 = MEMORY[0x277CCAC30];
  v6 = a3;
  v7 = [v5 predicateWithFormat:@"uploadState == %d", 0];
  v8 = MEMORY[0x277CCAC30];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
  v10 = [v8 predicateWithFormat:@"timeStamp >= %@", v9];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseDampeningType == %d", 0];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseClosureType == %d OR caseClosureType == %d OR caseClosureType == %d", 1, 5, 2];
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseAttachments != nil"];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"attachmentsIncomplete != %@", MEMORY[0x277CBEC38]];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:{v7, v10, v11, v12, v13, v14, v6, 0}];

  v16 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v15];
  caseStorageAnalytics = self->_caseStorageAnalytics;
  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timeStamp" ascending:0];
  v19 = [(ObjectAnalytics *)caseStorageAnalytics fetchEntitiesFreeForm:v16 sortDesc:v18 limit:a4];

  return v19;
}

- (id)fetchCasesWithIdentifiers:(id)a3 limit:(unint64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v13 length])
        {
          v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseID == %@", v13];
          [v7 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v15 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v7];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(CloudKitUploadController *)self _fetchCasesInternal:v15 limit:a4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)_save
{
  v3 = uploadLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_INFO, "Saving...", v4, 2u);
  }

  [(AnalyticsWorkspace *)self->_workspace save];
}

- (void)save
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v3 = uploadLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_INFO, "Scheduling delayed save", buf, 2u);
  }

  v4 = v16[5];
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = v16[5];
    v16[5] = 0;
  }

  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  v7 = v16[5];
  v16[5] = v6;

  v8 = v16[5];
  v9 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
  v10 = v16[5];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __32__CloudKitUploadController_save__block_invoke;
  handler[3] = &unk_278CF08D0;
  handler[4] = self;
  handler[5] = &v15;
  dispatch_source_set_event_handler(v10, handler);
  v11 = v16[5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__CloudKitUploadController_save__block_invoke_2;
  v12[3] = &unk_278CF22D8;
  v12[4] = &v15;
  dispatch_source_set_cancel_handler(v11, v12);
  dispatch_activate(v16[5]);
  _Block_object_dispose(&v15, 8);
}

uint64_t __32__CloudKitUploadController_save__block_invoke(uint64_t a1)
{
  dispatch_source_cancel(*(*(*(a1 + 40) + 8) + 40));
  v2 = *(a1 + 32);

  return [v2 _save];
}

void __32__CloudKitUploadController_save__block_invoke_2(uint64_t a1)
{
  v2 = uploadLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Cancelling delay timer", v5, 2u);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (id)locallyFilterCases:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v28 = [MEMORY[0x277CBEB18] array];
    v5 = uploadLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "Locally filtering cases ineligible for uploading...", buf, 2u);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v7)
    {
      v8 = v7;
      obj = v6;
      v27 = v4;
      v9 = 0;
      v10 = *v31;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v13 = [v12 uploadRecord];
          if (!v13)
          {
            v14 = uploadLogHandle();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v15 = [v12 caseID];
              *buf = 138412290;
              v35 = v15;
              _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "Creating new upload record for case %@", buf, 0xCu);
            }

            v13 = [(ObjectAnalytics *)self->_uploadRecordAnalytics createEntity];
            [v13 setCaseStorage:v12];
            v9 = 1;
          }

          v16 = [v13 uploadState] >= 1 && objc_msgSend(v13, "uploadState") != 4;
          v17 = [v13 operationID];

          if (v16 || v17)
          {
            v18 = uploadLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [v12 caseID];
              if (v16)
              {
                v20 = "Yes";
              }

              else
              {
                v20 = "No";
              }

              v21 = [v13 uploadState];
              *buf = 138544130;
              v22 = "No";
              if (v17)
              {
                v22 = "Yes";
              }

              v35 = v19;
              v36 = 2080;
              v37 = v20;
              v38 = 1024;
              v39 = v21;
              v40 = 2080;
              v41 = v22;
              _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_DEFAULT, "Skipping case %{public}@ as it's already uploading, or has been uploaded. (alreadyScheduled: %s(%d), hasOperation: %s)", buf, 0x26u);
            }
          }

          else if ([(CloudKitUploadController *)self validateCaseAttachmentsForDiagnosticCaseStorage:v12 record:v13])
          {
            [v28 addObject:v12];
          }

          else
          {
            [v12 setUploadState:3];
            [v13 setUploadState:1];
            v23 = uploadLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v12 caseID];
              *buf = 138543362;
              v35 = v24;
              _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_DEFAULT, "Case %{public}@ is missing required files. Marked as ineligible for upload.)", buf, 0xCu);
            }

            v9 = 1;
          }
        }

        v8 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v8);

      if (v9)
      {
        [(CloudKitUploadController *)self save];
      }

      v4 = v27;
    }

    else
    {
    }
  }

  else
  {
    v28 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)filterCasesPendingUpload:(id)a3 activity:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = [(CloudKitUploadController *)self locallyFilterCases:v8];
    if ([v11 count])
    {
      if (v9 && xpc_activity_should_defer(v9))
      {
        v12 = uploadLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, "Stopping before decision server check due to activity deferral", buf, 2u);
        }

        [(CloudKitUploadController *)self deferXPCActivity:v9];
        v10[2](v10, 0);
      }

      else
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __68__CloudKitUploadController_filterCasesPendingUpload_activity_reply___block_invoke;
        v15[3] = &unk_278CF2300;
        v16 = v9;
        v17 = self;
        v19 = v10;
        v18 = v11;
        [(CloudKitUploadController *)self filterCasesViaCloudkitDecisionService:v18 activity:v16 response:v15];
      }
    }

    else
    {
      v14 = uploadLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "Skipping decision service check since the pruned cases list is empty", buf, 2u);
      }

      (v10)[2](v10, v11);
    }
  }

  else
  {
    v13 = uploadLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "Skipping decision service check since we received an empty case list", buf, 2u);
    }

    (v10)[2](v10, v8);
  }
}

void __68__CloudKitUploadController_filterCasesPendingUpload_activity_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7 && xpc_activity_should_defer(v7))
  {
    v8 = uploadLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "Stopping log uploads due to activity deferral", &buf, 2u);
    }

    [*(a1 + 40) deferXPCActivity:*(a1 + 32)];
    v9 = *(*(a1 + 40) + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__CloudKitUploadController_filterCasesPendingUpload_activity_reply___block_invoke_87;
    block[3] = &unk_278CEFF50;
    v10 = *(a1 + 56);
    v43 = 0;
    v44 = v10;
    dispatch_async(v9, block);

    v11 = v44;
    goto LABEL_30;
  }

  if (v6)
  {
    v12 = [v6 domain];
    if ([v12 isEqualToString:*MEMORY[0x277CCA5B8]])
    {
      v13 = [v6 code];

      if (v13 == 89)
      {
        v14 = uploadLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEFAULT, "CloudKit cancelled the decision service operation. Ending upload task.", &buf, 2u);
        }

        v15 = 0;
LABEL_22:

        v26 = *(*(a1 + 40) + 8);
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __68__CloudKitUploadController_filterCasesPendingUpload_activity_reply___block_invoke_89;
        v39[3] = &unk_278CEFF50;
        v27 = *(a1 + 56);
        v40 = v15;
        v41 = v27;
        v11 = v15;
        dispatch_async(v26, v39);

        goto LABEL_30;
      }
    }

    else
    {
    }

    v20 = uploadLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_ERROR, "Decision service responded with an error: %@", &buf, 0xCu);
    }

    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    v23 = +[ABCAdministrator sharedInstance];
    v24 = [v23 configurationManager];
    v15 = [v21 randomlySelectCasesFrom:v22 maximum:{objc_msgSend(v24, "cloudKitFallbackMaximumLogCount")}];

    v14 = uploadLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v15 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v25;
      _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEFAULT, "Proceeding to upload %ld cases with only local filtering", &buf, 0xCu);
    }

    goto LABEL_22;
  }

  v16 = [v5 objectForKeyedSubscript:@"summary"];
  v17 = v16;
  if (v16)
  {
    if ([v16 BOOLValue])
    {
      v18 = *(a1 + 48);
      v19 = uploadLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_DEFAULT, "Decision service permitted upload for ALL cases.", &buf, 2u);
      }
    }

    else
    {
      v31 = uploadLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_241804000, v31, OS_LOG_TYPE_DEFAULT, "Decision service declined upload for ALL cases.", &buf, 2u);
      }

      v18 = 0;
    }
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__6;
    v50 = __Block_byref_object_dispose__6;
    v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __68__CloudKitUploadController_filterCasesPendingUpload_activity_reply___block_invoke_2;
    v38[3] = &unk_278CF0DA8;
    v38[4] = &buf;
    [v5 enumerateKeysAndObjectsUsingBlock:v38];
    v28 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:*(*(&buf + 1) + 40)];
    v18 = [*(a1 + 48) filteredArrayUsingPredicate:v28];
    v29 = uploadLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v18 count];
      *v45 = 134217984;
      v46 = v30;
      _os_log_impl(&dword_241804000, v29, OS_LOG_TYPE_DEFAULT, "Decision service permitted upload for %ld cases.", v45, 0xCu);
    }

    _Block_object_dispose(&buf, 8);
  }

  v32 = *(*(a1 + 40) + 8);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __68__CloudKitUploadController_filterCasesPendingUpload_activity_reply___block_invoke_96;
  v35[3] = &unk_278CEFF50;
  v33 = *(a1 + 56);
  v36 = v18;
  v37 = v33;
  v11 = v18;
  dispatch_async(v32, v35);

LABEL_30:
  v34 = *MEMORY[0x277D85DE8];
}

void __68__CloudKitUploadController_filterCasesPendingUpload_activity_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 isEqualToString:@"summary"] & 1) == 0)
    {
      if ([v6 BOOLValue])
      {
        v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseID == %@", v5];
        [*(*(*(a1 + 32) + 8) + 40) addObject:v7];
        v8 = uploadLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v11 = v5;
          _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEBUG, " Adding predicate for caseID == %@", buf, 0xCu);
        }
      }

      else
      {
        v7 = uploadLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v11 = v5;
          _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEBUG, " Skipping caseID %@ (server denied)", buf, 0xCu);
        }
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)logUploadRequiresConsent:(id)a3
{
  v3 = a3;
  v4 = +[ABCAdministrator sharedInstance];
  v5 = [v4 configurationManager];
  v6 = [v5 autoBugCaptureUploadPreapproved];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 hasSuffix:@".pcapng"];
  }

  return v7;
}

- (id)randomlySelectCasesFrom:(id)a3 maximum:(unint64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    if ([v5 count] >= a4)
    {
      v7 = [MEMORY[0x277CBEB18] array];
      v8 = [v6 count];
      v9 = uploadLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v21 = a4;
        v22 = 1024;
        v23 = v8;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_INFO, "Randomly choosing %ld out of %d cases for upload", buf, 0x12u);
      }

      if ([v7 count] < a4)
      {
        v10 = 3 * v8 + 2;
        while (1)
        {
          v11 = [v6 objectAtIndex:arc4random_uniform(v8)];
          v12 = [v7 containsObject:v11];
          v13 = uploadLogHandle();
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
          if (v12)
          {
            if (v14)
            {
              v15 = [v11 caseID];
              *buf = 138412290;
              v21 = v15;
              _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_INFO, "Already chose case %@, skipping...", buf, 0xCu);
            }
          }

          else
          {
            if (v14)
            {
              v16 = [v11 caseID];
              *buf = 138412290;
              v21 = v16;
              _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_INFO, "Selecting case %@ for upload", buf, 0xCu);
            }

            [v7 addObject:v11];
          }

          if (!--v10)
          {
            break;
          }

          if ([v7 count] >= a4)
          {
            goto LABEL_22;
          }
        }

        v17 = uploadLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v21 = 3 * v8;
          _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_ERROR, "Randomization retry count exceeded reasonable threshold (%ld). Bailing out!", buf, 0xCu);
        }
      }
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_22:

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)validateCaseAttachmentsForDiagnosticCaseStorage:(id)a3 record:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = uploadLogHandle();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 caseID];
      *buf = 138412290;
      v64 = v10;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_INFO, "Preflighting attachments for case %@", buf, 0xCu);
    }

    v50 = objc_autoreleasePoolPush();
    v11 = [v6 caseAttachments];
    v12 = [DiagnosticCase attachmentsFromStringRepresentation:v11];

    v55 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [v7 fileURLs];

    v51 = v6;
    if (v13)
    {
      v14 = [v7 fileURLs];
      [v14 removeAllObjects];
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v7 setFileURLs:v14];
    }

    [v7 setTotalBytes:0];
    v52 = v7;
    [v7 setNumberOfFiles:0];
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v16 = v12;
    v17 = [v16 countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v59;
      v53 = *MEMORY[0x277CBE838];
      v20 = 0x277CBE000uLL;
      v54 = v16;
      do
      {
        v21 = 0;
        do
        {
          if (*v59 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = [*(v20 + 3008) URLWithString:*(*(&v58 + 1) + 8 * v21)];
          v23 = [v22 lastPathComponent];
          if (![(CloudKitUploadController *)self logUploadRequiresConsent:v23])
          {
            v25 = self;
            v26 = [v22 path];
            v27 = [v55 fileExistsAtPath:v26];

            v28 = uploadLogHandle();
            v24 = v28;
            if (v27)
            {
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                v29 = [v22 absoluteString];
                *buf = 138412290;
                v64 = v29;
                _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_INFO, "  Attachment file exists: %@", buf, 0xCu);
              }

              v56 = 0;
              v57 = 0;
              v30 = [v22 getResourceValue:&v57 forKey:v53 error:&v56];
              v24 = v57;
              v31 = v56;
              v32 = uploadLogHandle();
              v33 = v32;
              if (v30)
              {
                if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                {
                  v34 = [v24 integerValue];
                  *buf = 134217984;
                  v64 = v34;
                  _os_log_impl(&dword_241804000, v33, OS_LOG_TYPE_INFO, "  File size is: %ld", buf, 0xCu);
                }

                if ([v24 integerValue])
                {
                  [v52 setTotalBytes:{objc_msgSend(v52, "totalBytes") + -[NSObject unsignedIntegerValue](v24, "unsignedIntegerValue")}];
                  [v52 setNumberOfFiles:{(objc_msgSend(v52, "numberOfFiles") + 1)}];
                  v35 = v52;
                  goto LABEL_31;
                }

                v37 = uploadLogHandle();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_241804000, v37, OS_LOG_TYPE_INFO, "  Ignoring attachment with zero file size.", buf, 2u);
                }
              }

              else
              {
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v64 = v31;
                  _os_log_impl(&dword_241804000, v33, OS_LOG_TYPE_DEFAULT, "  Error getting file size: %@", buf, 0xCu);
                }

                [v52 setNumberOfFiles:{(objc_msgSend(v52, "numberOfFiles") + 1)}];
                v35 = v52;
LABEL_31:
                v37 = [v35 fileURLs];
                [v37 addObject:v22];
              }

              v16 = v54;
            }

            else if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v36 = [v22 absoluteString];
              *buf = 138412290;
              v64 = v36;
              _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_ERROR, "Attachment file at path %@ does not exist.", buf, 0xCu);
            }

            self = v25;
            v20 = 0x277CBE000;
            goto LABEL_34;
          }

          v24 = uploadLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_DEFAULT, "Privacy sensitive log content cannot be uploaded.", buf, 2u);
          }

LABEL_34:

          ++v21;
        }

        while (v18 != v21);
        v38 = [v16 countByEnumeratingWithState:&v58 objects:v62 count:16];
        v18 = v38;
      }

      while (v38);
    }

    v7 = v52;
    v39 = [v52 fileURLs];
    v40 = [v39 count];
    v41 = [v16 count];

    v15 = v40 == v41;
    if (v40 == v41)
    {
      [v52 setPreflightResult:1];
      v42 = uploadLogHandle();
      v43 = v50;
      v44 = v55;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v42, OS_LOG_TYPE_INFO, "Preflight successful: all files for this case are available", buf, 2u);
      }

      v6 = v51;
      goto LABEL_50;
    }

    v45 = [v52 fileURLs];
    v46 = [v45 count];

    v43 = v50;
    v44 = v55;
    if (v46)
    {
      [v52 setPreflightResult:2];
      v42 = uploadLogHandle();
      v6 = v51;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v47 = "Preflight failed: some files for this case are unavailable";
LABEL_49:
        _os_log_impl(&dword_241804000, v42, OS_LOG_TYPE_ERROR, v47, buf, 2u);
      }
    }

    else
    {
      [v52 setPreflightResult:3];
      v42 = uploadLogHandle();
      v6 = v51;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v47 = "Preflight failed: all files for this case are unavailable";
        goto LABEL_49;
      }
    }

LABEL_50:

    objc_autoreleasePoolPop(v43);
    goto LABEL_51;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "Cannot validate attachments for a nil caseStorage!", buf, 2u);
  }

  v15 = 0;
LABEL_51:

  v48 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)recordOperationCompleteForOperationID:(id)a3 completionTime:(id)a4 success:(BOOL)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"operationID == %@", v8];
    uploadRecordAnalytics = self->_uploadRecordAnalytics;
    v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startTime" ascending:1];
    v13 = [(ObjectAnalytics *)uploadRecordAnalytics fetchEntitiesFreeForm:v10 sortDesc:v12 limit:0];

    v14 = uploadLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      *&buf[4] = [v13 count];
      *&buf[12] = 2112;
      *&buf[14] = v8;
      _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "Found %ld records with matching operationID %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v22 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __89__CloudKitUploadController_recordOperationCompleteForOperationID_completionTime_success___block_invoke;
    v16[3] = &unk_278CF2328;
    v20 = a5;
    v17 = v9;
    v19 = buf;
    v18 = v8;
    [v13 enumerateObjectsUsingBlock:v16];
    if (*(*&buf[8] + 24) == 1)
    {
      [(CloudKitUploadController *)self save];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = uploadLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Not expecting a nil operation ID!", buf, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __89__CloudKitUploadController_recordOperationCompleteForOperationID_completionTime_success___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    [v4 setOperationID:0];
    if (*(a1 + 56))
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }

    [v4 setUploadState:v5];
    if (*(a1 + 56) == 1)
    {
      v6 = [v4 caseStorage];
      [v6 setUploadState:4];
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = v4;
    }

    else
    {
      [v4 setStartTime:?];
      v8 = v4;
      v7 = 0;
    }

    [v8 setFinishTime:v7];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v12 = uploadLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_INFO, "Recording completion for upload record %@", &v14, 0xCu);
    }
  }

  else
  {
    v4 = uploadLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(a1 + 40);
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_ERROR, "Unexpected class %@ for object with operationID %@ (expecting UploadRecord)", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)currentCloudKitContainerForEnvironment:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = +[ABCAdministrator sharedInstance];
  v5 = [v4 configurationManager];
  v6 = [v5 cloudKitContainerIdentifier];

  v7 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:v6 environment:a3];
  v8 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v7];
  v9 = uploadLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = "Production";
    if (a3 == 2)
    {
      v10 = "Sandbox";
    }

    v13 = 138412546;
    v14 = v6;
    v15 = 2080;
    v16 = v10;
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEBUG, "DiagnosticCaseSummaryLog: Returning CKContainer with identifier %@ in the %s environment", &v13, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)uploadToCloudKitContainer:(id)a3 withRecords:(id)a4 activity:(id)a5
{
  v138 = *MEMORY[0x277D85DE8];
  v95 = a3;
  v7 = a4;
  v8 = a5;
  v9 = uploadLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEBUG, "Resetting outstanding operation count to zero", buf, 2u);
  }

  self->_outstandingOperationCount = 0;
  self->_aggregateOperationResult = 1;
  v10 = uploadLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 count];
    *buf = 134217984;
    v120 = v11;
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "Ready to upload %ld cases", buf, 0xCu);
  }

  v116 = 0u;
  v117 = 0u;
  v115 = 0u;
  v114 = 0u;
  obj = v7;
  v94 = [obj countByEnumeratingWithState:&v114 objects:v137 count:16];
  if (v94)
  {
    v13 = 0x277CBE000uLL;
    v93 = *v115;
    *&v12 = 134217984;
    v88 = v12;
    v92 = v8;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v115 != v93)
        {
          objc_enumerationMutation(obj);
        }

        v106 = *(*(&v114 + 1) + 8 * v14);
        if (v8 && xpc_activity_should_defer(v8))
        {
          v86 = uploadLogHandle();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241804000, v86, OS_LOG_TYPE_DEFAULT, "Stopping log uploads due to activity defer", buf, 2u);
          }

          [(CloudKitUploadController *)self deferXPCActivity:v8];
          goto LABEL_57;
        }

        v101 = v14;
        v103 = objc_alloc_init(*(v13 + 2840));
        v15 = +[SystemProperties sharedInstance];
        v99 = [v15 npiDevice];

        v16 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ABCCase"];
        v102 = +[SystemProperties sharedInstance];
        v17 = objc_alloc_init(*(v13 + 2840));
        v18 = [v106 caseStorage];
        v19 = [v18 caseID];
        [v16 setObject:v19 forKeyedSubscript:@"caseID"];

        v20 = [v106 caseStorage];
        v21 = [v20 caseGroupID];
        [v16 setObject:v21 forKeyedSubscript:@"caseGroupID"];

        v22 = [v106 caseStorage];
        v23 = [v22 timeStamp];
        [v16 setObject:v23 forKeyedSubscript:@"caseDetectionTime"];

        v24 = [v106 caseStorage];
        v25 = [v24 caseDomain];
        [v16 setObject:v25 forKeyedSubscript:@"caseDomain"];

        v26 = [v16 objectForKeyedSubscript:@"caseDomain"];

        v104 = v17;
        if (v26)
        {
          v27 = [v16 objectForKeyedSubscript:@"caseDomain"];
          [v17 addObject:v27];
        }

        else
        {
          [v17 addObject:&stru_285368168];
        }

        v28 = [v106 caseStorage];
        v29 = [v28 caseType];
        [v16 setObject:v29 forKeyedSubscript:@"caseType"];

        v30 = [v16 objectForKeyedSubscript:@"caseType"];

        if (v30)
        {
          v31 = [v16 objectForKeyedSubscript:@"caseType"];
          [v17 addObject:v31];
        }

        else
        {
          [v17 addObject:&stru_285368168];
        }

        v32 = [v106 caseStorage];
        v33 = [v32 caseSubtype];
        [v16 setObject:v33 forKeyedSubscript:@"caseSubtype"];

        v34 = [v16 objectForKeyedSubscript:@"caseSubtype"];

        if (v34)
        {
          v35 = [v16 objectForKeyedSubscript:@"caseSubtype"];
          v36 = v17;
          [v17 addObject:v35];
        }

        else
        {
          v36 = v17;
          [v17 addObject:&stru_285368168];
        }

        v37 = [v106 caseStorage];
        v38 = [v37 caseSubtypeContext];
        [v16 setObject:v38 forKeyedSubscript:@"caseSubtypeContext"];

        v39 = [v16 objectForKeyedSubscript:@"caseSubtypeContext"];

        if (v39)
        {
          v40 = [v16 objectForKeyedSubscript:@"caseSubtypeContext"];
          [v36 addObject:v40];
        }

        else
        {
          [v36 addObject:&stru_285368168];
        }

        v41 = [v106 caseStorage];
        v42 = [v41 caseDetectedProcess];
        [v16 setObject:v42 forKeyedSubscript:@"caseProcess"];

        v43 = [v16 objectForKeyedSubscript:@"caseProcess"];

        if (v43)
        {
          v44 = [v16 objectForKeyedSubscript:@"caseProcess"];
          [v36 addObject:v44];
        }

        else
        {
          [v36 addObject:&stru_285368168];
        }

        v45 = [v36 componentsJoinedByString:@"^"];
        [v16 setObject:v45 forKeyedSubscript:@"caseSignature"];

        v46 = [v106 caseStorage];
        v47 = [v46 buildVersion];
        v48 = v47;
        if (v47)
        {
          v49 = v47;
        }

        else
        {
          v49 = [v102 buildVersion];
        }

        v50 = v49;

        [v16 setObject:v50 forKeyedSubscript:@"build"];
        if ([v50 length] >= 4)
        {
          v51 = [v50 substringToIndex:3];
          [v16 setObject:v51 forKeyedSubscript:@"buildPrefix"];
        }

        v52 = [v106 caseStorage];
        v53 = [v52 buildVariant];
        v105 = v16;
        v98 = v50;
        if (v53)
        {
          [v16 setObject:v53 forKeyedSubscript:@"buildVariant"];
        }

        else
        {
          v54 = [v102 buildVariant];
          [v105 setObject:v54 forKeyedSubscript:@"buildVariant"];

          v16 = v105;
        }

        v55 = [v102 buildPlatform];
        [v16 setObject:v55 forKeyedSubscript:@"buildPlatform"];

        v56 = [v102 productType];
        [v16 setObject:v56 forKeyedSubscript:@"deviceModel"];

        v57 = [v102 deviceClassString];
        [v16 setObject:v57 forKeyedSubscript:@"deviceCategory"];

        v58 = uploadLogHandle();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          v91 = [v105 objectForKeyedSubscript:@"caseID"];
          v97 = [v105 objectForKeyedSubscript:@"caseDomain"];
          v59 = [v105 objectForKeyedSubscript:@"caseType"];
          v60 = [v105 objectForKeyedSubscript:@"caseSubtype"];
          v61 = [v105 objectForKeyedSubscript:@"caseSubtypeContext"];
          v62 = [v105 objectForKeyedSubscript:@"caseProcess"];
          v90 = [v105 objectForKeyedSubscript:@"build"];
          v63 = [v105 objectForKeyedSubscript:@"buildVariant"];
          v64 = [v105 objectForKeyedSubscript:@"deviceModel"];
          *buf = 138414338;
          v120 = v91;
          v121 = 2112;
          v122 = v97;
          v123 = 2112;
          v124 = v59;
          v125 = 2112;
          v126 = v60;
          v127 = 2112;
          v128 = v61;
          v129 = 2112;
          v130 = v62;
          v131 = 2112;
          v132 = v90;
          v133 = 2112;
          v134 = v63;
          v135 = 2112;
          v136 = v64;
          _os_log_impl(&dword_241804000, v58, OS_LOG_TYPE_DEBUG, "Creating case record for %@ : [%@/%@/%@/%@/%@] (%@/%@/%@)", buf, 0x5Cu);
        }

        v65 = [MEMORY[0x277CBEB18] array];
        v66 = [MEMORY[0x277CBEB18] array];
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v67 = [v106 fileURLs];
        v68 = [v67 countByEnumeratingWithState:&v110 objects:v118 count:16];
        if (v68)
        {
          v69 = v68;
          v70 = *v111;
          do
          {
            for (i = 0; i != v69; ++i)
            {
              if (*v111 != v70)
              {
                objc_enumerationMutation(v67);
              }

              v72 = *(*(&v110 + 1) + 8 * i);
              v73 = uploadLogHandle();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v120 = v72;
                _os_log_impl(&dword_241804000, v73, OS_LOG_TYPE_INFO, "Creating asset for attachment %@", buf, 0xCu);
              }

              v74 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileURL:v72];
              [v65 addObject:v74];
              v75 = [v72 lastPathComponent];
              [v66 addObject:v75];
            }

            v69 = [v67 countByEnumeratingWithState:&v110 objects:v118 count:16];
          }

          while (v69);
        }

        v76 = uploadLogHandle();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
          v77 = [v65 count];
          *buf = v88;
          v120 = v77;
          _os_log_impl(&dword_241804000, v76, OS_LOG_TYPE_DEBUG, "Adding %ld assets to case record", buf, 0xCu);
        }

        [v105 setObject:v65 forKeyedSubscript:@"attachments"];
        [v105 setObject:v66 forKeyedSubscript:@"attachmentFilenames"];
        [v103 addObject:v105];
        v78 = [(CloudKitUploadController *)self uploadOperationWithRecordsToSave:v103 recordIDsToDelete:0 allowCellular:v99 activity:v92];
        v79 = [v78 operationID];
        [v106 setOperationID:v79];

        [v106 setAllowsCellular:v99];
        v80 = [v78 operationID];
        v107[0] = MEMORY[0x277D85DD0];
        v107[1] = 3221225472;
        v107[2] = __75__CloudKitUploadController_uploadToCloudKitContainer_withRecords_activity___block_invoke;
        v107[3] = &unk_278CF2350;
        v107[4] = self;
        v108 = v80;
        v109 = v92;
        v100 = v80;
        [v78 setModifyRecordsCompletionBlock:v107];
        v81 = [MEMORY[0x277CBEAA8] date];
        [v106 setStartTime:v81];

        [v106 setUploadState:2];
        v82 = +[ABCAdministrator sharedInstance];
        v83 = [v82 configurationManager];
        if ([v83 cloudKitSandboxEnvironment])
        {
          v84 = 2;
        }

        else
        {
          v84 = 1;
        }

        v8 = v92;
        [v106 setEnvironment:v84];

        ++self->_outstandingOperationCount;
        v85 = [v95 publicCloudDatabase];
        [v85 addOperation:v78];

        v14 = v101 + 1;
        v13 = 0x277CBE000;
      }

      while (v101 + 1 != v94);
      v94 = [obj countByEnumeratingWithState:&v114 objects:v137 count:16];
      if (v94)
      {
        continue;
      }

      break;
    }
  }

LABEL_57:

  [(CloudKitUploadController *)self save];
  v87 = *MEMORY[0x277D85DE8];
}

void __75__CloudKitUploadController_uploadToCloudKitContainer_withRecords_activity___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = uploadLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "Completion callback for CloudKit upload operations", v11, 2u);
  }

  [*(a1 + 32) operationCompletedWithID:*(a1 + 40) savedRecords:v9 deletedRecords:v8 error:v7 activity:*(a1 + 48)];
}

- (void)operationCompletedWithID:(id)a3 savedRecords:(id)a4 deletedRecords:(id)a5 error:(id)a6 activity:(id)a7
{
  v40 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [MEMORY[0x277CBEAA8] date];
  v16 = uploadLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v37 = [v12 count];
    _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_INFO, "Upload operation complete for %ld records", buf, 0xCu);
  }

  if (v13)
  {
    v17 = [v13 userInfo];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    if (v18)
    {
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __96__CloudKitUploadController_operationCompletedWithID_savedRecords_deletedRecords_error_activity___block_invoke;
      v34[3] = &unk_278CF0C68;
      v35 = v11;
      [v18 enumerateKeysAndObjectsUsingBlock:v34];
      v19 = v35;
    }

    else
    {
      v19 = uploadLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v37 = v11;
        v38 = 2112;
        v39 = v13;
        _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_ERROR, "Failed upload operation %@ with error: %@", buf, 0x16u);
      }
    }

    v20 = [(CloudKitUploadController *)self shouldDeferFromCloudKitError:v13];
  }

  else
  {
    v20 = 0;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__CloudKitUploadController_operationCompletedWithID_savedRecords_deletedRecords_error_activity___block_invoke_181;
  block[3] = &unk_278CF2378;
  block[4] = self;
  v31 = v11;
  v32 = v15;
  v33 = v13 == 0;
  v22 = v15;
  v23 = v11;
  dispatch_async(queue, block);
  if (v14 && v20)
  {
    [(CloudKitUploadController *)self deferXPCActivity:v14];
  }

  v24 = self->_queue;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __96__CloudKitUploadController_operationCompletedWithID_savedRecords_deletedRecords_error_activity___block_invoke_2;
  v27[3] = &unk_278CF1310;
  v29 = v13 == 0;
  v27[4] = self;
  v28 = v14;
  v25 = v14;
  dispatch_async(v24, v27);

  v26 = *MEMORY[0x277D85DE8];
}

void __96__CloudKitUploadController_operationCompletedWithID_savedRecords_deletedRecords_error_activity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = uploadLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "%@ Failed to upload record %@ with error %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __96__CloudKitUploadController_operationCompletedWithID_savedRecords_deletedRecords_error_activity___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  --*(*(a1 + 32) + 48);
  v2 = *(a1 + 32);
  if (*(v2 + 56) == 1)
  {
    v3 = *(a1 + 48);
  }

  else
  {
    v3 = 0;
  }

  *(v2 + 56) = v3 & 1;
  v4 = *(*(a1 + 32) + 48);
  v5 = uploadLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (!v6)
    {
LABEL_8:

      goto LABEL_21;
    }

    v7 = *(*(a1 + 32) + 48);
    v18 = 134217984;
    v19 = v7;
    v8 = "Waiting for %ld outstanding operations...";
    v9 = v5;
    v10 = 12;
LABEL_7:
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, v8, &v18, v10);
    goto LABEL_8;
  }

  if (v6)
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "No more outstanding CKOperations remaining", &v18, 2u);
  }

  v11 = *(*(a1 + 32) + 56);
  v12 = uploadLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11 == 1)
  {
    if (!v13)
    {
      goto LABEL_17;
    }

    LOWORD(v18) = 0;
    v14 = "All upload operations completed successfully.";
  }

  else
  {
    if (!v13)
    {
      goto LABEL_17;
    }

    LOWORD(v18) = 0;
    v14 = "All upload operations completed, but one or more operations failed with an error.";
  }

  _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, v14, &v18, 2u);
LABEL_17:

  v15 = *(a1 + 40);
  v16 = uploadLogHandle();
  v5 = v16;
  if (!v15)
  {
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    LOWORD(v18) = 0;
    v8 = "XPC activity not set for this CKOperation";
    v9 = v5;
    v10 = 2;
    goto LABEL_7;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "Ready to set activity state to Done", &v18, 2u);
  }

  [*(a1 + 32) finishXPCActivity:*(a1 + 40)];
LABEL_21:
  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldDeferFromCloudKitError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = *MEMORY[0x277CBBF50];
  if ([v4 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    v6 = [v3 code];

    if (v6 == 20)
    {
      v7 = [v3 userInfo];
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      v9 = [v8 domain];
      v10 = [v9 isEqualToString:v5];

      if (!v10)
      {
LABEL_13:

        goto LABEL_14;
      }

      v11 = [v8 code];
      LOBYTE(v10) = v11 != 130;
      if (v11 == 130)
      {
        v12 = uploadLogHandle();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_9;
        }

        v17 = 0;
        v13 = "Activity passed to CloudKit is not in the expected Continue state";
        v14 = &v17;
      }

      else
      {
        if ([v8 code] != 131)
        {
          LOBYTE(v10) = 0;
          goto LABEL_13;
        }

        v12 = uploadLogHandle();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_9;
        }

        v16 = 0;
        v13 = "CloudKit informed us to defer the current activity";
        v14 = &v16;
      }

      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
LABEL_9:

      goto LABEL_13;
    }
  }

  else
  {
  }

  LOBYTE(v10) = 0;
LABEL_14:

  return v10;
}

- (void)deferXPCActivity:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (xpc_activity_get_state(v3) == 3)
    {
      v5 = uploadLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        v13 = v4;
        v6 = "Activity state is already set to defer (%p)";
        v7 = v5;
        v8 = OS_LOG_TYPE_INFO;
LABEL_10:
        _os_log_impl(&dword_241804000, v7, v8, v6, &v12, 0xCu);
      }
    }

    else
    {
      v9 = xpc_activity_set_state(v4, 3);
      v10 = uploadLogHandle();
      v5 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 134217984;
          v13 = v4;
          v6 = "Set activity state to DEFER (%p)";
          v7 = v5;
          v8 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_10;
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = 134217984;
        v13 = v4;
        v6 = "Unable to set activity state to DEFER! (%p)";
        v7 = v5;
        v8 = OS_LOG_TYPE_ERROR;
        goto LABEL_10;
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)finishXPCActivity:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (xpc_activity_get_state(v3) == 4)
    {
      v5 = xpc_activity_set_state(v4, 5);
      v6 = uploadLogHandle();
      v7 = v6;
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 134217984;
          v14 = v4;
          v8 = "Set activity state to DONE (%p)";
          v9 = v7;
          v10 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
          v11 = 12;
          goto LABEL_11;
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v13 = 134217984;
        v14 = v4;
        v8 = "Unable to set activity state to DONE! (%p)";
        v9 = v7;
        v10 = OS_LOG_TYPE_ERROR;
        goto LABEL_10;
      }
    }

    else
    {
      v7 = uploadLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        v8 = "XPC activity is not in Continue state. Will not change the state to DONE";
        v9 = v7;
        v10 = OS_LOG_TYPE_DEFAULT;
        v11 = 2;
LABEL_11:
        _os_log_impl(&dword_241804000, v9, v10, v8, &v13, v11);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)uploadDiagnosticCases:(id)a3 activity:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    if (v7 && xpc_activity_should_defer(v7))
    {
      v8 = uploadLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "Will not start log uploads due to activity defer", buf, 2u);
      }

      [(CloudKitUploadController *)self deferXPCActivity:v7];
    }

    else
    {
      v9 = uploadLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218242;
        *&buf[4] = [v6 count];
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEBUG, "Will attempt to upload %ld cases: %@", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v18 = __Block_byref_object_copy__6;
      v19 = __Block_byref_object_dispose__6;
      v20 = [MEMORY[0x277CBEB18] array];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __59__CloudKitUploadController_uploadDiagnosticCases_activity___block_invoke;
      v16[3] = &unk_278CF0F08;
      v16[4] = self;
      v16[5] = buf;
      [v6 enumerateObjectsUsingBlock:v16];
      v10 = +[ABCAdministrator sharedInstance];
      v11 = [v10 configurationManager];
      if ([v11 cloudKitSandboxEnvironment])
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      v13 = [(CloudKitUploadController *)self currentCloudKitContainerForEnvironment:v12];

      [(CloudKitUploadController *)self uploadToCloudKitContainer:v13 withRecords:*(*&buf[8] + 40) activity:v7];
      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v14 = uploadLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_INFO, "No cases were requested to be uploaded (empty list)", buf, 2u);
    }

    if (v7)
    {
      [(CloudKitUploadController *)self finishXPCActivity:v7];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __59__CloudKitUploadController_uploadDiagnosticCases_activity___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 uploadRecord];
  if (!v3)
  {
    v3 = [*(*(a1 + 32) + 40) createEntity];
    [v3 setCaseStorage:v6];
  }

  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [v6 uploadRecord];
  [v4 addObject:v5];
}

- (void)performUploadForCaseIdentifiers:(id)a3
{
  v4 = [(CloudKitUploadController *)self fetchCasesWithIdentifiers:a3 limit:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__CloudKitUploadController_performUploadForCaseIdentifiers___block_invoke;
  v5[3] = &unk_278CF1768;
  v5[4] = self;
  [(CloudKitUploadController *)self filterCasesPendingUpload:v4 activity:0 reply:v5];
}

- (void)performUploadForRecentCases:(unint64_t)a3
{
  v4 = [(CloudKitUploadController *)self fetchRecentCasesPendingUpload:a3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__CloudKitUploadController_performUploadForRecentCases___block_invoke;
  v5[3] = &unk_278CF1768;
  v5[4] = self;
  [(CloudKitUploadController *)self filterCasesPendingUpload:v4 activity:0 reply:v5];
}

- (void)performUploadDecisionForCaseIdentifiers:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = [(CloudKitUploadController *)self fetchCasesWithIdentifiers:a3 limit:0];
  [(CloudKitUploadController *)self filterCasesViaCloudkitDecisionService:v7 activity:0 response:v6];
}

- (void)performSubmissionOfRecentCaseSummaries:(unint64_t)a3 reply:(id)a4
{
  v8 = a4;
  v6 = [(CloudKitUploadController *)self fetchRecentPendingCaseSummaries:a3];
  [(CloudKitUploadController *)self submitCaseSummaries:v6 activity:0];
  if (v8)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sent submit request for %ld case summaries", objc_msgSend(v6, "count")];
    v8[2](v8, v7);
  }
}

- (void)performSubmissionOfCaseSummariesWithIdentifiers:(id)a3 reply:(id)a4
{
  v8 = a4;
  v6 = [(CloudKitUploadController *)self fetchCaseSummariesWithIdentifiers:a3];
  [(CloudKitUploadController *)self submitCaseSummaries:v6 activity:0];
  if (v8)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sent submit request for %ld case summaries", objc_msgSend(v6, "count")];
    v8[2](v8, v7);
  }
}

- (void)startPeriodicUploadTask:(id)a3
{
  v4 = a3;
  v5 = [(CloudKitUploadController *)self fetchRecentCasesPendingUpload:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__CloudKitUploadController_startPeriodicUploadTask___block_invoke;
  v7[3] = &unk_278CF16F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CloudKitUploadController *)self filterCasesPendingUpload:v5 activity:v6 reply:v7];
}

- (void)startPeriodicSummaryTask:(id)a3
{
  v4 = a3;
  v5 = +[ABCAdministrator sharedInstance];
  v6 = [v5 configurationManager];
  v7 = -[CloudKitUploadController fetchRecentPendingCaseSummaries:](self, "fetchRecentPendingCaseSummaries:", [v6 maxCaseSummaryPerSubmission]);

  [(CloudKitUploadController *)self submitCaseSummaries:v7 activity:v4];
}

- (void)ckcodeDecisionService:(id)a3 response:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(ObjectAnalytics *)self->_caseStorageAnalytics createTemporaryEntity];
  [v6 setCaseDomain:@"TestDomain"];
  [v6 setCaseType:@"TestType"];
  [v6 setCaseSubtypeContext:@"TestSubType"];
  [v6 setCaseSubtypeContext:@"TestSubtypeContext"];
  [v6 setCaseDetectedProcess:@"symptomsd"];
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [v7 UUIDString];
  [v6 setCaseID:v8];

  v14[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__CloudKitUploadController_ckcodeDecisionService_response___block_invoke;
  v12[3] = &unk_278CF2288;
  v13 = v5;
  v10 = v5;
  [(CloudKitUploadController *)self filterCasesViaCloudkitDecisionService:v9 activity:0 response:v12];

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __59__CloudKitUploadController_ckcodeDecisionService_response___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)filterCasesViaCloudkitDecisionService:(id)a3 activity:(id)a4 response:(id)a5
{
  v96 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = uploadLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v82 = [v7 count];
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_INFO, "CloudkitDecisionService request for %ld cases", buf, 0xCu);
  }

  v11 = uploadLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v82 = v7;
    _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEBUG, "  Cases: %{private}@", buf, 0xCu);
  }

  if ([v7 count])
  {
    v64 = v9;
    v65 = v8;
    v12 = +[SystemProperties sharedInstance];
    v13 = objc_alloc_init(ABCPbSigGrantRequest);
    [(ABCPbSigGrantRequest *)v13 setVer:1];
    v14 = [v12 productType];
    [(ABCPbSigGrantRequest *)v13 setDeviceModel:v14];

    v15 = [v12 buildPlatform];
    v73 = v13;
    [(ABCPbSigGrantRequest *)v13 setBuildPlatform:v15];

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v66 = v7;
    obj = v7;
    v16 = [obj countByEnumeratingWithState:&v77 objects:v95 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v78;
      v19 = &OBJC_METACLASS___DiagCollectionServiceImpl;
      v68 = *v78;
      v69 = v12;
      do
      {
        v20 = 0;
        v70 = v17;
        do
        {
          if (*v78 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v77 + 1) + 8 * v20);
          v22 = objc_alloc_init(&v19[21]);
          v23 = [v21 caseDomain];
          [v22 setDomain:v23];

          v24 = [v21 caseType];
          [v22 setType:v24];

          v25 = [v21 caseSubtype];
          [v22 setSubtype:v25];

          v26 = [v21 caseSubtypeContext];
          [v22 setSubtypeContext:v26];

          v27 = [v21 caseDetectedProcess];
          [v22 setProcess:v27];

          v28 = [v21 caseID];
          [v22 setCaseIdentifier:v28];

          v29 = [v12 buildVariant];
          [v22 setBuildVariant:v29];

          v30 = [v12 buildVersion];
          [v22 setBuild:v30];

          v31 = [v21 caseGroupID];
          v32 = [v31 length];

          if (v32)
          {
            v33 = [v21 caseGroupID];
            [v22 setCaseGroupIdentifier:v33];
          }

          v34 = [v21 uploadRecord];
          v35 = [v34 totalBytes];

          if (v35 >= 1)
          {
            v36 = [v21 uploadRecord];
            [v22 setLogSizeTotal:{objc_msgSend(v36, "totalBytes") >> 10}];
          }

          [(ABCPbSigGrantRequest *)v73 addSigRequest:v22];
          v37 = uploadLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            v38 = [v21 caseID];
            v39 = [v21 caseGroupID];
            v40 = v39;
            v41 = @"(no grpID)";
            if (v39)
            {
              v41 = v39;
            }

            v72 = v41;
            v42 = [v21 caseDomain];
            v43 = [v21 caseType];
            v44 = [v21 caseSubtype];
            v45 = [v21 caseSubtypeContext];
            v46 = [v21 caseDetectedProcess];
            *buf = 138479363;
            v82 = v38;
            v83 = 2113;
            v84 = v72;
            v85 = 2113;
            v86 = v42;
            v87 = 2113;
            v88 = v43;
            v89 = 2113;
            v90 = v44;
            v91 = 2113;
            v92 = v45;
            v93 = 2113;
            v94 = v46;
            _os_log_impl(&dword_241804000, v37, OS_LOG_TYPE_DEBUG, "Processed case: %{private}@/%{private}@ {%{private}@/%{private}@/%{private}@/%{private}@/%{private}@}", buf, 0x48u);

            v18 = v68;
            v19 = &OBJC_METACLASS___DiagCollectionServiceImpl;

            v17 = v70;
            v12 = v69;
          }

          ++v20;
        }

        while (v17 != v20);
        v17 = [obj countByEnumeratingWithState:&v77 objects:v95 count:16];
      }

      while (v17);
    }

    v47 = +[ABCAdministrator sharedInstance];
    v48 = [v47 configurationManager];
    if ([v48 cloudKitSandboxEnvironment])
    {
      v49 = 2;
    }

    else
    {
      v49 = 1;
    }

    v50 = [(CloudKitUploadController *)self currentCloudKitContainerForEnvironment:v49];
    v51 = objc_autoreleasePoolPush();
    v52 = +[ABCAdministrator sharedInstance];
    v53 = [v52 configurationManager];
    v54 = [v53 cloudKitInvernessService];

    v55 = [objc_alloc(MEMORY[0x277CBC1F8]) initWithServiceName:v54 functionName:@"grantRequest" responseClass:objc_opt_class()];
    [v55 setRequest:v73];
    [v55 setDestinationServer:0];
    v56 = +[ABCAdministrator sharedInstance];
    v57 = [v56 configurationManager];
    v58 = [v57 cloudKitPrefersAnonymous];
    v59 = [v55 configuration];
    [v59 setPreferAnonymousRequests:v58];

    v60 = [v55 configuration];
    [v60 setAllowsCellularAccess:1];

    v8 = v65;
    if (v65)
    {
      v61 = [v55 configuration];
      [v61 setXpcActivity:v65];
    }

    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __84__CloudKitUploadController_filterCasesViaCloudkitDecisionService_activity_response___block_invoke;
    v74[3] = &unk_278CF23A0;
    v74[4] = self;
    v75 = v65;
    v9 = v64;
    v76 = v64;
    [v55 setCodeOperationCompletionBlock:v74];
    v62 = [v50 publicCloudDatabase];
    [v62 addOperation:v55];

    objc_autoreleasePoolPop(v51);
    v7 = v66;
    goto LABEL_29;
  }

  if (v9)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    (*(v9 + 2))(v9, MEMORY[0x277CBEC10], v12);
LABEL_29:
  }

  v63 = *MEMORY[0x277D85DE8];
}

void __84__CloudKitUploadController_filterCasesViaCloudkitDecisionService_activity_response___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = uploadLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "CKCode Error: %@", buf, 0xCu);
    }

    if ([*(a1 + 32) shouldDeferFromCloudKitError:v6] && *(a1 + 40))
    {
      [*(a1 + 32) deferXPCActivity:?];
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA5B8];
      v22 = *MEMORY[0x277CCA450];
      v23 = @"CloudKit cancelled the operation";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v11 = [v8 errorWithDomain:v9 code:89 userInfo:v10];
    }

    else
    {
      v11 = v6;
    }

    v12 = 0;
  }

  else
  {
    v13 = uploadLogHandle();
    v14 = v13;
    if (v5)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "Received response from Decision Server", buf, 2u);
      }

      v12 = [*(a1 + 32) processCloudkitDecisionServiceResponse:v5];
      v11 = 0;
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_ERROR, "Received a nil response from CKCode", buf, 2u);
      }

      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277CCA5B8];
      v20 = *MEMORY[0x277CCA450];
      v21 = @"CKCode responded with a nil payload";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v11 = [v15 errorWithDomain:v16 code:91 userInfo:v17];

      v12 = &unk_285379FE0;
    }
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    (*(v18 + 16))(v18, v12, v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)processCloudkitDecisionServiceResponse:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = uploadLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v35 = v3;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEBUG, "grantResponse: %{private}@", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [v3 globalDecision];
  if (!v6)
  {
    v7 = MEMORY[0x277CBEC28];
    goto LABEL_7;
  }

  if (v6 == 1)
  {
    v7 = MEMORY[0x277CBEC38];
LABEL_7:
    [v5 setObject:v7 forKeyedSubscript:@"summary"];
    goto LABEL_25;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = v3;
  v8 = [v3 sigResponses];
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = uploadLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          v35 = v13;
          _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "  sigResponse: %{private}@", buf, 0xCu);
        }

        v15 = [v13 caseIdentifier];
        if (v15 && (v16 = v15, v17 = [v13 hasDecision], v16, v17))
        {
          v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "decision")}];
          v19 = [v13 caseIdentifier];
          [v5 setObject:v18 forKeyedSubscript:v19];
        }

        else
        {
          v18 = uploadLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v20 = [v13 caseIdentifier];
            v21 = [v13 hasDecision];
            *buf = 138478083;
            v22 = "missing";
            if (v21)
            {
              v22 = "present";
            }

            v35 = v20;
            v36 = 2080;
            v37 = v22;
            _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_ERROR, " sigResponse is missing an identifier (%{private}@) and/or decision (%s)", buf, 0x16u);
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v10);
  }

  v3 = v29;
LABEL_25:
  v23 = [v3 status];
  v24 = [v23 length];

  if (v24)
  {
    v25 = [v3 status];
    v26 = [v25 copy];
    [v5 setObject:v26 forKeyedSubscript:@"status"];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)fetchCaseSummariesWithIdentifiers:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 length])
        {
          v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseID == %@", v11];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v13 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v5];
    v14 = [(CloudKitUploadController *)self _fetchRecentPendingCaseSummariesInternal:v13 limit:0];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_fetchRecentPendingCaseSummariesInternal:(id)a3 limit:(unint64_t)a4
{
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseSummaryState == %d", 0];
  v8 = v7;
  if (v6)
  {
    v9 = MEMORY[0x277CCA920];
    v17[0] = v6;
    v17[1] = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v11 = [v9 andPredicateWithSubpredicates:v10];
  }

  else
  {
    v11 = v7;
  }

  caseSummaryAnalytics = self->_caseSummaryAnalytics;
  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"caseCreatedTime" ascending:0];
  v14 = [(ObjectAnalytics *)caseSummaryAnalytics fetchEntitiesFreeForm:v11 sortDesc:v13 limit:a4];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)submitCaseSummaries:(id)a3 activity:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = summaryLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v39 = [v6 count];
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: Submission request for %ld cases", buf, 0xCu);
  }

  v9 = summaryLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v39 = v6;
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEBUG, "DiagnosticCaseSummaryLog: Cases: %{private}@", buf, 0xCu);
  }

  if ([v6 count])
  {
    if (v7 && xpc_activity_should_defer(v7))
    {
      v10 = summaryLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: xpc deferral, cannot prepare request", buf, 2u);
      }

      [(CloudKitUploadController *)self deferXPCActivity:v7];
    }

    else
    {
      v11 = [DiagnosticCaseSummaryAnalytics pbRequestForCases:v6];
      v12 = +[ABCAdministrator sharedInstance];
      v13 = [v12 configurationManager];
      if ([v13 cloudKitSandboxEnvironment])
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      v34 = [(CloudKitUploadController *)self currentCloudKitContainerForEnvironment:v14];
      context = objc_autoreleasePoolPush();
      v15 = +[ABCAdministrator sharedInstance];
      v16 = [v15 configurationManager];
      v17 = [v16 cloudKitInvernessService];

      v18 = summaryLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v39 = v17;
        _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_DEBUG, "DiagnosticCaseSummaryLog: Inverness Service: %@", buf, 0xCu);
      }

      v19 = [objc_alloc(MEMORY[0x277CBC1F8]) initWithServiceName:v17 functionName:@"submitCaseSummary" responseClass:objc_opt_class()];
      v20 = v11;
      [v19 setRequest:v11];
      [v19 setDestinationServer:0];
      v21 = +[ABCAdministrator sharedInstance];
      v22 = [v21 configurationManager];
      v23 = [v22 cloudKitPrefersAnonymous];
      v24 = [v19 configuration];
      [v24 setPreferAnonymousRequests:v23];

      v25 = [v19 configuration];
      [v25 setAllowsCellularAccess:1];

      if (v7)
      {
        v26 = [v19 configuration];
        [v26 setXpcActivity:v7];
      }

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __57__CloudKitUploadController_submitCaseSummaries_activity___block_invoke;
      v35[3] = &unk_278CF23C8;
      v35[4] = self;
      v27 = v7;
      v36 = v27;
      v37 = v6;
      [v19 setCodeOperationCompletionBlock:v35];
      v28 = v20;
      if (v7 && xpc_activity_should_defer(v27))
      {
        v29 = summaryLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241804000, v29, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: xpc deferral, cannot schedule CK operation", buf, 2u);
        }

        [(CloudKitUploadController *)self deferXPCActivity:v27];
        v28 = v20;
        v30 = v34;
      }

      else
      {
        v30 = v34;
        v31 = [v34 publicCloudDatabase];
        [v31 addOperation:v19];
      }

      objc_autoreleasePoolPop(context);
    }
  }

  else if (v7)
  {
    [(CloudKitUploadController *)self finishXPCActivity:v7];
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __57__CloudKitUploadController_submitCaseSummaries_activity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = summaryLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "DiagnosticCaseSummaryLog: CKCode Error: %@", buf, 0xCu);
    }

    if ([*(a1 + 32) shouldDeferFromCloudKitError:v6] && *(a1 + 40))
    {
      [*(a1 + 32) deferXPCActivity:?];
      v8 = summaryLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v9 = "DiagnosticCaseSummaryLog: CloudKit cancelled the operation";
LABEL_15:
        v15 = v8;
        v16 = 2;
LABEL_18:
        _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_ERROR, v9, buf, v16);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (!v5)
    {
      v8 = summaryLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v9 = "DiagnosticCaseSummaryLog: Received a nil response from CKCode";
        goto LABEL_15;
      }

LABEL_19:

      goto LABEL_20;
    }

    v10 = [v5 status];
    v11 = [v10 isEqualToString:@"SUCCESS"];

    v12 = summaryLogHandle();
    v8 = v12;
    if (!v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v21 = v5;
        v9 = "DiagnosticCaseSummaryLog: Unsuccessful response: %{private}@";
        v15 = v8;
        v16 = 12;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v21 = v5;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_INFO, "DiagnosticCaseSummaryLog: Successful response: %{private}@", buf, 0xCu);
    }

    v13 = *(a1 + 32);
    v14 = *(v13 + 8);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__CloudKitUploadController_submitCaseSummaries_activity___block_invoke_245;
    v18[3] = &unk_278CF04F8;
    v18[4] = v13;
    v19 = *(a1 + 48);
    dispatch_async(v14, v18);
  }

LABEL_20:
  if (*(a1 + 40))
  {
    [*(a1 + 32) finishXPCActivity:?];
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __57__CloudKitUploadController_submitCaseSummaries_activity___block_invoke_245(uint64_t a1)
{
  v2 = summaryLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "DiagnosticCaseSummaryLog: Ready to update submitted case summary records", v4, 2u);
  }

  [*(*(a1 + 32) + 32) updateSubmittedCases:*(a1 + 40)];
  return [*(a1 + 32) save];
}

- (void)configureLogUploadDiscretionaryActivityCriteria:(id)a3
{
  v3 = a3;
  xpc_dictionary_set_int64(v3, *MEMORY[0x277D86250], 300);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_string(v3, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_string(v3, *MEMORY[0x277D862F8], *MEMORY[0x277D86308]);
  v4 = +[SystemProperties sharedInstance];
  v5 = [v4 npiDevice];

  if (v5)
  {
    v6 = uploadLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "Applying NPI scheduling criteria for log upload activity", v11, 2u);
    }

    xpc_dictionary_set_int64(v3, *MEMORY[0x277D86288], *MEMORY[0x277D862A0]);
    xpc_dictionary_set_int64(v3, *MEMORY[0x277D86270], *MEMORY[0x277D862B0]);
    v7 = *MEMORY[0x277D86230];
    v8 = v3;
    v9 = 1;
  }

  else
  {
    v10 = *MEMORY[0x277D86298];
    xpc_dictionary_set_int64(v3, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
    xpc_dictionary_set_int64(v3, *MEMORY[0x277D86270], v10);
    v7 = *MEMORY[0x277D86230];
    v8 = v3;
    v9 = 0;
  }

  xpc_dictionary_set_BOOL(v8, v7, v9);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86390], 1);
  xpc_dictionary_set_int64(v3, *MEMORY[0x277D86318], 20971520);
}

- (void)configureCaseSummaryDiscretionaryActivityCriteria:(id)a3
{
  v3 = a3;
  xpc_dictionary_set_int64(v3, *MEMORY[0x277D86250], 90);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_string(v3, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86390], 0);
  xpc_dictionary_set_int64(v3, *MEMORY[0x277D86318], 10240);
  xpc_dictionary_set_string(v3, *MEMORY[0x277D862F8], *MEMORY[0x277D86308]);
  v4 = +[SystemProperties sharedInstance];
  v5 = [v4 npiDevice];

  if (v5)
  {
    v6 = uploadLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "Applying NPI scheduling criteria for case summary activity", v9, 2u);
    }

    v7 = *MEMORY[0x277D86288];
    v8 = *MEMORY[0x277D862A0];
  }

  else
  {
    v7 = *MEMORY[0x277D86288];
    v8 = 6 * *MEMORY[0x277D862A0];
  }

  xpc_dictionary_set_int64(v3, v7, v8);
}

- (void)registerCloudKitUploadActivities
{
  [(CloudKitUploadController *)self registerLogUploadActivities];
  v3 = +[ABCAdministrator sharedInstance];
  v4 = [v3 configurationManager];
  v5 = [v4 caseSummaryEnabled];

  if (v5)
  {

    [(CloudKitUploadController *)self registerCaseSummaryActivities];
  }
}

- (void)registerLogUploadActivities
{
  v3 = uploadLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEFAULT, "Registering periodic CloudKit upload activity", buf, 2u);
  }

  v4 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __55__CloudKitUploadController_registerLogUploadActivities__block_invoke;
  handler[3] = &unk_278CF14B0;
  handler[4] = self;
  xpc_activity_register("com.apple.autobugcapture.logupload.discretionary", v4, handler);
}

void __55__CloudKitUploadController_registerLogUploadActivities__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (!state)
  {
    v8 = uploadLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "Checking in to discretionary CloudKit upload activity", buf, 2u);
    }

    v9 = xpc_activity_copy_criteria(v3);
    v10 = uploadLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "Activty already has criteria set %@", buf, 0xCu);
      }

      v12 = xpc_dictionary_create(0, 0, 0);
      [*(a1 + 32) configureLogUploadDiscretionaryActivityCriteria:v12];
      if (xpc_equal(v9, v12))
      {
        goto LABEL_23;
      }

      v13 = uploadLogHandle();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_22:

        xpc_activity_set_criteria(v3, v12);
LABEL_23:

        goto LABEL_24;
      }

      *buf = 0;
      v14 = "Existing activity criteria was different from the default criteria. Replacing with defaults";
      v15 = v13;
      v16 = OS_LOG_TYPE_DEFAULT;
      v17 = 2;
    }

    else
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "Setting activity criteria to defaults", buf, 2u);
      }

      v12 = xpc_dictionary_create(0, 0, 0);
      [*(a1 + 32) configureLogUploadDiscretionaryActivityCriteria:v12];
      v13 = uploadLogHandle();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      *buf = 138412290;
      v22 = v12;
      v14 = "Activity criteria set to %@";
      v15 = v13;
      v16 = OS_LOG_TYPE_DEBUG;
      v17 = 12;
    }

    _os_log_impl(&dword_241804000, v15, v16, v14, buf, v17);
    goto LABEL_22;
  }

  if (state == 2)
  {
    v5 = uploadLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = v3;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "Ready to run discretionary CloudKit upload activity (%p)", buf, 0xCu);
    }

    if (xpc_activity_set_state(v3, 4))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 8);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __55__CloudKitUploadController_registerLogUploadActivities__block_invoke_248;
      v19[3] = &unk_278CF04F8;
      v19[4] = v6;
      v20 = v3;
      dispatch_async(v7, v19);

      goto LABEL_25;
    }

    v9 = uploadLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "Unable to set activity state to CONTINUE!", buf, 2u);
    }

LABEL_24:
  }

LABEL_25:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)registerCaseSummaryActivities
{
  v3 = summaryLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: Registering periodic submission activity", buf, 2u);
  }

  v4 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __57__CloudKitUploadController_registerCaseSummaryActivities__block_invoke;
  handler[3] = &unk_278CF14B0;
  handler[4] = self;
  xpc_activity_register("com.apple.autobugcapture.caseSummary.discretionary", v4, handler);
}

void __57__CloudKitUploadController_registerCaseSummaryActivities__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (!state)
  {
    v8 = summaryLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: Checking in to discretionary submission activity", buf, 2u);
    }

    v9 = xpc_activity_copy_criteria(v3);
    v10 = summaryLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: submission activity already has criteria set %@", buf, 0xCu);
      }

      v12 = xpc_dictionary_create(0, 0, 0);
      [*(a1 + 32) configureCaseSummaryDiscretionaryActivityCriteria:v12];
      if (xpc_equal(v9, v12))
      {
        goto LABEL_23;
      }

      v13 = summaryLogHandle();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_22:

        xpc_activity_set_criteria(v3, v12);
LABEL_23:

        goto LABEL_24;
      }

      *buf = 0;
      v14 = "DiagnosticCaseSummaryLog: Existing submission activity criteria was different from the default criteria. Replacing with defaults";
      v15 = v13;
      v16 = OS_LOG_TYPE_DEFAULT;
      v17 = 2;
    }

    else
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: Setting submission activity criteria to defaults", buf, 2u);
      }

      v12 = xpc_dictionary_create(0, 0, 0);
      [*(a1 + 32) configureCaseSummaryDiscretionaryActivityCriteria:v12];
      v13 = summaryLogHandle();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      *buf = 138412290;
      v22 = v12;
      v14 = "DiagnosticCaseSummaryLog: Submission activity criteria set to %@";
      v15 = v13;
      v16 = OS_LOG_TYPE_DEBUG;
      v17 = 12;
    }

    _os_log_impl(&dword_241804000, v15, v16, v14, buf, v17);
    goto LABEL_22;
  }

  if (state == 2)
  {
    v5 = summaryLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = v3;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: Ready to run discretionary submission activity (%p)", buf, 0xCu);
    }

    if (xpc_activity_set_state(v3, 4))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 8);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __57__CloudKitUploadController_registerCaseSummaryActivities__block_invoke_251;
      v19[3] = &unk_278CF04F8;
      v19[4] = v6;
      v20 = v3;
      dispatch_async(v7, v19);

      goto LABEL_25;
    }

    v9 = summaryLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "DiagnosticCaseSummaryLog: Unable to set activity state to CONTINUE!", buf, 2u);
    }

LABEL_24:
  }

LABEL_25:

  v18 = *MEMORY[0x277D85DE8];
}

+ (void)unregisterCloudKitUploadActivities
{
  v2 = uploadLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_DEFAULT, "Unregistering periodic CloudKit upload activity", buf, 2u);
  }

  xpc_activity_unregister("com.apple.autobugcapture.logupload.discretionary");
  v3 = summaryLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: Unregistering CloudKit submission activity", v4, 2u);
  }

  xpc_activity_unregister("com.apple.autobugcapture.caseSummary.discretionary");
}

- (void)uploadMostRecentCases:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = uploadLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v10 = a3;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "received request to upload recent %ld cases", buf, 0xCu);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__CloudKitUploadController_uploadMostRecentCases___block_invoke;
  v8[3] = &unk_278CF0220;
  v8[4] = self;
  v8[5] = a3;
  dispatch_async(queue, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)uploadCasesWithIdentifiers:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = uploadLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "received request to upload cases: %@", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__CloudKitUploadController_uploadCasesWithIdentifiers___block_invoke;
  v9[3] = &unk_278CF04F8;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)uploadDecisionWithIdentifiers:(id)a3 reply:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = uploadLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEBUG, "received request to request upload decision for cases: %@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CloudKitUploadController_uploadDecisionWithIdentifiers_reply___block_invoke;
  block[3] = &unk_278CEFFF0;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)submitCaseSummariesWithIdentifiers:(id)a3 reply:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = uploadLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEBUG, "DiagnosticCaseSummaryLog: received request to submit cases: %@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CloudKitUploadController_submitCaseSummariesWithIdentifiers_reply___block_invoke;
  block[3] = &unk_278CEFFF0;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)submitRecentCaseSummaries:(unint64_t)a3 reply:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = uploadLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v15 = a3;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEBUG, "DiagnosticCaseSummaryLog: received request to submit recent %ld cases", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CloudKitUploadController_submitRecentCaseSummaries_reply___block_invoke;
  block[3] = &unk_278CF23F0;
  v12 = v6;
  v13 = a3;
  block[4] = self;
  v9 = v6;
  dispatch_async(queue, block);

  v10 = *MEMORY[0x277D85DE8];
}

@end
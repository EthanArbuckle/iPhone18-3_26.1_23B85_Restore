@interface AKFollowUpController
+ (id)followUpPostAnalyticsInfoWithIdentifier:(id)a3 telemetryFlowID:(id)a4 error:(id)a5;
- (AKFollowUpController)initWithFLFollowupController:(id)a3;
- (BOOL)addFollowUpItems:(id)a3 error:(id *)a4;
- (BOOL)addFollowUpItems:(id)a3 telemetryFlowID:(id)a4 error:(id *)a5;
- (BOOL)clearNotificationsForItem:(id)a3 error:(id *)a4;
- (BOOL)clearNotificationsForItem:(id)a3 telemetryFlowID:(id)a4 error:(id *)a5;
- (BOOL)removeAllFollowUpItems:(id *)a3 telemetryFlowID:(id)a4;
- (BOOL)removeFollowUpItems:(id)a3 error:(id *)a4;
- (BOOL)removeFollowUpItems:(id)a3 telemetryFlowID:(id)a4 error:(id *)a5;
- (BOOL)removeFollowUpItemsWithIdentifiers:(id)a3 error:(id *)a4;
- (BOOL)removeFollowUpItemsWithIdentifiers:(id)a3 telemetryFlowID:(id)a4 error:(id *)a5;
- (void)sendEventForFollowUpWithError:(id)a3 eventName:(id)a4 success:(BOOL)a5 telemetryFlowID:(id)a6 error:(id *)a7;
@end

@implementation AKFollowUpController

- (AKFollowUpController)initWithFLFollowupController:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKFollowUpController;
  v8 = [(AKFollowUpController *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_followupController, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (BOOL)removeAllFollowUpItems:(id *)a3 telemetryFlowID:(id)a4
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v14 = 0;
  followupController = v18->_followupController;
  v12 = 0;
  v7 = [(FLFollowUpController *)followupController pendingFollowUpItems:&v12];
  objc_storeStrong(&v14, v12);
  v13 = v7;
  v11 = [v7 aaf_map:&__block_literal_global_37];
  v10 = [(FLFollowUpController *)v18->_followupController clearPendingFollowUpItems:v16];
  v8 = v18;
  v9 = [v11 aaf_arrayAsCommaSeperatedString];
  v5 = *MEMORY[0x1E6985E28];
  [AKFollowUpController sendEventForFollowUpWithError:v8 eventName:"sendEventForFollowUpWithError:eventName:success:telemetryFlowID:error:" success:? telemetryFlowID:? error:?];
  MEMORY[0x1E69E5920](v9);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
  return v10 & 1;
}

id __63__AKFollowUpController_removeAllFollowUpItems_telemetryFlowID___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] uniqueIdentifier];
  objc_storeStrong(location, 0);

  return v3;
}

- (BOOL)addFollowUpItems:(id)a3 telemetryFlowID:(id)a4 error:(id *)a5
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = 0;
  objc_storeStrong(&v27, a4);
  v26 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 838860800;
  v22 = 48;
  v23 = __Block_byref_object_copy__10;
  v24 = __Block_byref_object_dispose__10;
  v25 = 0;
  v11 = location[0];
  v12 = MEMORY[0x1E69E9820];
  v13 = -1073741824;
  v14 = 0;
  v15 = __63__AKFollowUpController_addFollowUpItems_telemetryFlowID_error___block_invoke;
  v16 = &unk_1E73D7FE8;
  v17 = MEMORY[0x1E69E5928](v29);
  v18[1] = &v19;
  v18[0] = MEMORY[0x1E69E5928](v27);
  [v11 enumerateObjectsUsingBlock:&v12];
  if (v26)
  {
    v8 = v20[5];
    v5 = v8;
    *v26 = v8;
  }

  v7 = v20[5] == 0;
  objc_storeStrong(v18, 0);
  objc_storeStrong(&v17, 0);
  _Block_object_dispose(&v19, 8);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  return v7;
}

void __63__AKFollowUpController_addFollowUpItems_telemetryFlowID_error___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20 = a3;
  v19 = a4;
  v18 = a1;
  v4 = *(a1[4] + 8);
  v9 = (*(a1[6] + 8) + 40);
  v16 = *v9;
  v10 = [v4 postFollowUpItem:location[0] error:&v16];
  objc_storeStrong(v9, v16);
  v17 = v10;
  v12 = a1[4];
  v14 = [location[0] uniqueIdentifier];
  v5 = *MEMORY[0x1E6985E58];
  v6 = a1[5];
  v13 = (*(a1[6] + 8) + 40);
  v15 = *v13;
  [v12 sendEventForFollowUpWithError:? eventName:? success:? telemetryFlowID:? error:?];
  objc_storeStrong(v13, v15);
  MEMORY[0x1E69E5920](v14);
  if ((v17 & 1) == 0)
  {
    *v19 = 1;
  }

  objc_storeStrong(location, 0);
}

- (BOOL)addFollowUpItems:(id)a3 error:(id *)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(AKFollowUpController *)v8 addFollowUpItems:location[0] telemetryFlowID:0 error:a4];
  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)removeFollowUpItems:(id)a3 telemetryFlowID:(id)a4 error:(id *)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9[1] = a5;
  v9[0] = [location[0] aaf_map:&__block_literal_global_19_0];
  v8 = [(AKFollowUpController *)v12 removeFollowUpItemsWithIdentifiers:v9[0] telemetryFlowID:v10 error:a5];
  objc_storeStrong(v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v8;
}

id __66__AKFollowUpController_removeFollowUpItems_telemetryFlowID_error___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = [location[0] uniqueIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.authkit.hsa2-password-reset"];
  MEMORY[0x1E69E5920](v5);
  v7 = 0;
  if (v6)
  {
    v2 = MEMORY[0x1E69E5928](0);
  }

  else
  {
    v8 = [location[0] uniqueIdentifier];
    v7 = 1;
    v2 = MEMORY[0x1E69E5928](v8);
  }

  v10 = v2;
  if (v7)
  {
    MEMORY[0x1E69E5920](v8);
  }

  objc_storeStrong(location, 0);
  v3 = v10;

  return v3;
}

- (BOOL)removeFollowUpItems:(id)a3 error:(id *)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(AKFollowUpController *)v8 removeFollowUpItems:location[0] telemetryFlowID:0 error:a4];
  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)removeFollowUpItemsWithIdentifiers:(id)a3 telemetryFlowID:(id)a4 error:(id *)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = [(FLFollowUpController *)v14->_followupController clearPendingFollowUpItemsWithUniqueIdentifiers:location[0] error:a5];
  v9 = v14;
  v10 = [location[0] aaf_arrayAsCommaSeperatedString];
  v5 = *MEMORY[0x1E6985E28];
  [AKFollowUpController sendEventForFollowUpWithError:v9 eventName:"sendEventForFollowUpWithError:eventName:success:telemetryFlowID:error:" success:? telemetryFlowID:? error:?];
  MEMORY[0x1E69E5920](v10);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v11 & 1;
}

- (BOOL)removeFollowUpItemsWithIdentifiers:(id)a3 error:(id *)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(AKFollowUpController *)v8 removeFollowUpItemsWithIdentifiers:location[0] telemetryFlowID:0 error:a4];
  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)clearNotificationsForItem:(id)a3 telemetryFlowID:(id)a4 error:(id *)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = [(FLFollowUpController *)v14->_followupController clearNotificationForItem:location[0] error:a5];
  v9 = v14;
  v10 = [location[0] uniqueIdentifier];
  v5 = *MEMORY[0x1E6985E28];
  [AKFollowUpController sendEventForFollowUpWithError:v9 eventName:"sendEventForFollowUpWithError:eventName:success:telemetryFlowID:error:" success:? telemetryFlowID:? error:?];
  MEMORY[0x1E69E5920](v10);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v11 & 1;
}

- (BOOL)clearNotificationsForItem:(id)a3 error:(id *)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(AKFollowUpController *)v8 clearNotificationsForItem:location[0] telemetryFlowID:0 error:a4];
  objc_storeStrong(location, 0);
  return v6;
}

+ (id)followUpPostAnalyticsInfoWithIdentifier:(id)a3 telemetryFlowID:(id)a4 error:(id)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v15 = objc_alloc_init(MEMORY[0x1E6985DA8]);
  if (v16)
  {
    [v15 setPostedReasonError:v16];
  }

  v14 = +[AKAccountManager sharedInstance];
  v13 = [v14 primaryAuthKitAccount];
  if ([v14 accountAccessTelemetryOptInForAccount:v13])
  {
    v10 = [v14 telemetryDeviceSessionIDForAccount:v13];
    [v15 setDeviceSessionID:?];
    MEMORY[0x1E69E5920](v10);
  }

  if (v17)
  {
    [v15 setFlowID:v17];
  }

  else
  {
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v9 UUIDString];
    [v15 setFlowID:?];
    MEMORY[0x1E69E5920](v8);
    MEMORY[0x1E69E5920](v9);
  }

  [v15 setCfuType:{location[0], &v15}];
  v7 = [v15 copy];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v6, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (void)sendEventForFollowUpWithError:(id)a3 eventName:(id)a4 success:(BOOL)a5 telemetryFlowID:(id)a6 error:(id *)a7
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23 = a5;
  v22 = 0;
  objc_storeStrong(&v22, a6);
  v21 = a7;
  v20 = +[AKAccountManager sharedInstance];
  v19 = [v20 primaryAuthKitAccount];
  v18 = [AKFollowUpController followUpPostAnalyticsInfoWithIdentifier:location[0] telemetryFlowID:v22 error:0];
  v13 = MEMORY[0x1E6985DB0];
  v12 = v24;
  v14 = [v20 altDSIDForAccount:v19];
  v17 = [v13 analyticsEventWithName:v12 eventCategory:0x1F07B4E98 followupAnalyticsData:v18 altDSID:?];
  MEMORY[0x1E69E5920](v14);
  v15 = [MEMORY[0x1E696AD98] numberWithBool:v23];
  v7 = *MEMORY[0x1E6985E40];
  [v17 setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](v15);
  if (a7)
  {
    [v17 populateUnderlyingErrorsStartingWithRootError:*v21];
  }

  v16 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
  [v16 sendEvent:v17];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

@end
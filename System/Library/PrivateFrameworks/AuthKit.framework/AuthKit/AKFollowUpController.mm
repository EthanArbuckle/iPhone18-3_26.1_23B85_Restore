@interface AKFollowUpController
+ (id)followUpPostAnalyticsInfoWithIdentifier:(id)identifier telemetryFlowID:(id)d error:(id)error;
- (AKFollowUpController)initWithFLFollowupController:(id)controller;
- (BOOL)addFollowUpItems:(id)items error:(id *)error;
- (BOOL)addFollowUpItems:(id)items telemetryFlowID:(id)d error:(id *)error;
- (BOOL)clearNotificationsForItem:(id)item error:(id *)error;
- (BOOL)clearNotificationsForItem:(id)item telemetryFlowID:(id)d error:(id *)error;
- (BOOL)removeAllFollowUpItems:(id *)items telemetryFlowID:(id)d;
- (BOOL)removeFollowUpItems:(id)items error:(id *)error;
- (BOOL)removeFollowUpItems:(id)items telemetryFlowID:(id)d error:(id *)error;
- (BOOL)removeFollowUpItemsWithIdentifiers:(id)identifiers error:(id *)error;
- (BOOL)removeFollowUpItemsWithIdentifiers:(id)identifiers telemetryFlowID:(id)d error:(id *)error;
- (void)sendEventForFollowUpWithError:(id)error eventName:(id)name success:(BOOL)success telemetryFlowID:(id)d error:(id *)a7;
@end

@implementation AKFollowUpController

- (AKFollowUpController)initWithFLFollowupController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AKFollowUpController;
  selfCopy = [(AKFollowUpController *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_followupController, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (BOOL)removeAllFollowUpItems:(id *)items telemetryFlowID:(id)d
{
  selfCopy = self;
  v17 = a2;
  itemsCopy = items;
  location = 0;
  objc_storeStrong(&location, d);
  v14 = 0;
  followupController = selfCopy->_followupController;
  v12 = 0;
  v7 = [(FLFollowUpController *)followupController pendingFollowUpItems:&v12];
  objc_storeStrong(&v14, v12);
  v13 = v7;
  v11 = [v7 aaf_map:&__block_literal_global_37];
  v10 = [(FLFollowUpController *)selfCopy->_followupController clearPendingFollowUpItems:itemsCopy];
  v8 = selfCopy;
  aaf_arrayAsCommaSeperatedString = [v11 aaf_arrayAsCommaSeperatedString];
  v5 = *MEMORY[0x1E6985E28];
  [AKFollowUpController sendEventForFollowUpWithError:v8 eventName:"sendEventForFollowUpWithError:eventName:success:telemetryFlowID:error:" success:? telemetryFlowID:? error:?];
  MEMORY[0x1E69E5920](aaf_arrayAsCommaSeperatedString);
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

- (BOOL)addFollowUpItems:(id)items telemetryFlowID:(id)d error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, items);
  v27 = 0;
  objc_storeStrong(&v27, d);
  errorCopy = error;
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
  v17 = MEMORY[0x1E69E5928](selfCopy);
  v18[1] = &v19;
  v18[0] = MEMORY[0x1E69E5928](v27);
  [v11 enumerateObjectsUsingBlock:&v12];
  if (errorCopy)
  {
    v8 = v20[5];
    v5 = v8;
    *errorCopy = v8;
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

- (BOOL)addFollowUpItems:(id)items error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, items);
  v6 = [(AKFollowUpController *)selfCopy addFollowUpItems:location[0] telemetryFlowID:0 error:error];
  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)removeFollowUpItems:(id)items telemetryFlowID:(id)d error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, items);
  v10 = 0;
  objc_storeStrong(&v10, d);
  v9[1] = error;
  v9[0] = [location[0] aaf_map:&__block_literal_global_19_0];
  v8 = [(AKFollowUpController *)selfCopy removeFollowUpItemsWithIdentifiers:v9[0] telemetryFlowID:v10 error:error];
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

- (BOOL)removeFollowUpItems:(id)items error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, items);
  v6 = [(AKFollowUpController *)selfCopy removeFollowUpItems:location[0] telemetryFlowID:0 error:error];
  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)removeFollowUpItemsWithIdentifiers:(id)identifiers telemetryFlowID:(id)d error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifiers);
  v12 = 0;
  objc_storeStrong(&v12, d);
  v11 = [(FLFollowUpController *)selfCopy->_followupController clearPendingFollowUpItemsWithUniqueIdentifiers:location[0] error:error];
  v9 = selfCopy;
  aaf_arrayAsCommaSeperatedString = [location[0] aaf_arrayAsCommaSeperatedString];
  v5 = *MEMORY[0x1E6985E28];
  [AKFollowUpController sendEventForFollowUpWithError:v9 eventName:"sendEventForFollowUpWithError:eventName:success:telemetryFlowID:error:" success:? telemetryFlowID:? error:?];
  MEMORY[0x1E69E5920](aaf_arrayAsCommaSeperatedString);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v11 & 1;
}

- (BOOL)removeFollowUpItemsWithIdentifiers:(id)identifiers error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifiers);
  v6 = [(AKFollowUpController *)selfCopy removeFollowUpItemsWithIdentifiers:location[0] telemetryFlowID:0 error:error];
  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)clearNotificationsForItem:(id)item telemetryFlowID:(id)d error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v12 = 0;
  objc_storeStrong(&v12, d);
  v11 = [(FLFollowUpController *)selfCopy->_followupController clearNotificationForItem:location[0] error:error];
  v9 = selfCopy;
  uniqueIdentifier = [location[0] uniqueIdentifier];
  v5 = *MEMORY[0x1E6985E28];
  [AKFollowUpController sendEventForFollowUpWithError:v9 eventName:"sendEventForFollowUpWithError:eventName:success:telemetryFlowID:error:" success:? telemetryFlowID:? error:?];
  MEMORY[0x1E69E5920](uniqueIdentifier);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v11 & 1;
}

- (BOOL)clearNotificationsForItem:(id)item error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v6 = [(AKFollowUpController *)selfCopy clearNotificationsForItem:location[0] telemetryFlowID:0 error:error];
  objc_storeStrong(location, 0);
  return v6;
}

+ (id)followUpPostAnalyticsInfoWithIdentifier:(id)identifier telemetryFlowID:(id)d error:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v17 = 0;
  objc_storeStrong(&v17, d);
  v16 = 0;
  objc_storeStrong(&v16, error);
  v15 = objc_alloc_init(MEMORY[0x1E6985DA8]);
  if (v16)
  {
    [v15 setPostedReasonError:v16];
  }

  v14 = +[AKAccountManager sharedInstance];
  primaryAuthKitAccount = [v14 primaryAuthKitAccount];
  if ([v14 accountAccessTelemetryOptInForAccount:primaryAuthKitAccount])
  {
    v10 = [v14 telemetryDeviceSessionIDForAccount:primaryAuthKitAccount];
    [v15 setDeviceSessionID:?];
    MEMORY[0x1E69E5920](v10);
  }

  if (v17)
  {
    [v15 setFlowID:v17];
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [v15 setFlowID:?];
    MEMORY[0x1E69E5920](uUIDString);
    MEMORY[0x1E69E5920](uUID);
  }

  [v15 setCfuType:{location[0], &v15}];
  v7 = [v15 copy];
  objc_storeStrong(&primaryAuthKitAccount, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v6, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (void)sendEventForFollowUpWithError:(id)error eventName:(id)name success:(BOOL)success telemetryFlowID:(id)d error:(id *)a7
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v24 = 0;
  objc_storeStrong(&v24, name);
  successCopy = success;
  v22 = 0;
  objc_storeStrong(&v22, d);
  v21 = a7;
  v20 = +[AKAccountManager sharedInstance];
  primaryAuthKitAccount = [v20 primaryAuthKitAccount];
  v18 = [AKFollowUpController followUpPostAnalyticsInfoWithIdentifier:location[0] telemetryFlowID:v22 error:0];
  v13 = MEMORY[0x1E6985DB0];
  v12 = v24;
  v14 = [v20 altDSIDForAccount:primaryAuthKitAccount];
  v17 = [v13 analyticsEventWithName:v12 eventCategory:0x1F07B4E98 followupAnalyticsData:v18 altDSID:?];
  MEMORY[0x1E69E5920](v14);
  v15 = [MEMORY[0x1E696AD98] numberWithBool:successCopy];
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
  objc_storeStrong(&primaryAuthKitAccount, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

@end
@interface CLSServerInterfaceConfigurator
- (CLSServerInterfaceConfigurator)init;
- (id)configureServerInterface;
- (void)configureAdminRequestAPI;
- (void)configureAppsAPI;
- (void)configureAssetSupportAPI;
- (void)configureAuthorizationStatusAPI;
- (void)configureClassAPI;
- (void)configureCollaborationStateAPI;
- (void)configureCollectionsAPI;
- (void)configureContextAPI;
- (void)configureDashboardAppAPI;
- (void)configureDataObserverAPI;
- (void)configureFeatureAvailabilityAPI;
- (void)configureHandoutAPI;
- (void)configureInsightEventsAPI;
- (void)configureProgressReportingAPI;
- (void)configureQueryAPI;
- (void)configureRelayRequestAPI;
- (void)configureRosterQueryAPI;
- (void)configureSaveAPI;
- (void)configureStudentActivityAPI;
- (void)configureSurveyAnswerAPI;
- (void)configureUserNotificationAPI;
- (void)configureUtilityServerAPI;
@end

@implementation CLSServerInterfaceConfigurator

- (CLSServerInterfaceConfigurator)init
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = CLSServerInterfaceConfigurator;
  v3 = [(CLSServerInterfaceConfigurator *)&v16 init];
  if (v3)
  {
    v4 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x277CCAE90], v2, &unk_284A33358);
    interface = v3->_interface;
    v3->_interface = v4;

    v6 = CLSProgressClasses();
    contextsSet = v3->_contextsSet;
    v3->_contextsSet = v6;

    v8 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v17, 1);
    v12 = objc_msgSend_setWithArray_(v8, v11, v10);
    arraySet = v3->_arraySet;
    v3->_arraySet = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)configureServerInterface
{
  objc_msgSend_configureQueryAPI(self, a2, v2);
  objc_msgSend_configureSaveAPI(self, v4, v5);
  objc_msgSend_configureDataObserverAPI(self, v6, v7);
  objc_msgSend_configureContextAPI(self, v8, v9);
  objc_msgSend_configureProgressReportingAPI(self, v10, v11);
  objc_msgSend_configureDashboardAppAPI(self, v12, v13);
  objc_msgSend_configureAppsAPI(self, v14, v15);
  objc_msgSend_configureUserNotificationAPI(self, v16, v17);
  objc_msgSend_configureUtilityServerAPI(self, v18, v19);
  objc_msgSend_configureAuthorizationStatusAPI(self, v20, v21);
  objc_msgSend_configureHandoutAPI(self, v22, v23);
  objc_msgSend_configureCollectionsAPI(self, v24, v25);
  objc_msgSend_configureCollaborationStateAPI(self, v26, v27);
  objc_msgSend_configureClassAPI(self, v28, v29);
  objc_msgSend_configureStudentActivityAPI(self, v30, v31);
  objc_msgSend_configureFeatureAvailabilityAPI(self, v32, v33);
  objc_msgSend_configureAssetSupportAPI(self, v34, v35);
  objc_msgSend_configureAdminRequestAPI(self, v36, v37);
  objc_msgSend_configureSurveyAnswerAPI(self, v38, v39);
  objc_msgSend_configureRelayRequestAPI(self, v40, v41);
  objc_msgSend_configureInsightEventsAPI(self, v42, v43);
  objc_msgSend_configureRosterQueryAPI(self, v44, v45);
  interface = self->_interface;

  return interface;
}

- (void)configureQueryAPI
{
  v10 = CLSQueryInterface();
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(self->_interface, v3, v10, sel_remote_executeQuery_querySpecification_searchSpecification_issueServerRequest_completion_, 0, 0);
  interface = self->_interface;
  v5 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(interface, v6, v5, sel_remote_executeQuery_querySpecification_searchSpecification_issueServerRequest_completion_, 1, 0);
  v7 = self->_interface;
  v8 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v7, v9, v8, sel_remote_executeQuery_querySpecification_searchSpecification_issueServerRequest_completion_, 2, 0);
}

- (void)configureRosterQueryAPI
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = ManagedOrganizationContactsQueryResponse();
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(self->_interface, v4, v3, sel_remote_executeRosterQuery_executeQuery_completion_, 0, 0);
  v5 = MEMORY[0x277CBEB98];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v6, v12, 2);
  v9 = objc_msgSend_setWithArray_(v5, v8, v7);

  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v10, v9, sel_remote_executeRosterQuery_executeQuery_completion_, 1, 0);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)configureSaveAPI
{
  v3 = MEMORY[0x277CBEB98];
  v4 = CLSObjectsClasses();
  v9 = objc_msgSend_setWithUnionOfSets_(v3, v5, v4, self->_arraySet, 0);

  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v6, v9, sel_remote_saveObjects_saveResponse_completion_, 0, 0);
  v7 = CLSSaveResponseInterface();
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(self->_interface, v8, v7, sel_remote_saveObjects_saveResponse_completion_, 1, 0);
}

- (void)configureDataObserverAPI
{
  v8 = objc_opt_new();
  objc_msgSend_setProtocol_(v8, v3, &unk_284A22328);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(self->_interface, v4, v8, sel_remote_registerDataObserver_withID_querySpecification_oldChangeTag_completion_, 0, 0);
  interface = self->_interface;
  v6 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(interface, v7, v6, sel_remote_registerDataObserver_withID_querySpecification_oldChangeTag_completion_, 2, 0);
}

- (void)configureContextAPI
{
  v41[2] = *MEMORY[0x277D85DE8];
  interface = self->_interface;
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v4, v7, v5, v6, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(interface, v9, v8, sel_remote_mainAppContextWithCompletion_, 0, 1);

  v10 = self->_interface;
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v15 = objc_msgSend_setWithObjects_(v11, v14, v12, v13, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v10, v16, v15, sel_remote_fetchContextsForContextIDs_completion_, 0, 1);

  v17 = self->_interface;
  v18 = MEMORY[0x277CBEB98];
  v41[0] = objc_opt_class();
  v41[1] = objc_opt_class();
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v41, 2);
  v22 = objc_msgSend_setWithArray_(v18, v21, v20);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v17, v23, v22, sel_remote_contextsMatchingIdentifierPath_parentContextID_completion_, 0, 0);

  v24 = self->_interface;
  v25 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v24, v26, v25, sel_remote_contextsMatchingIdentifierPath_parentContextID_completion_, 1, 0);
  v27 = self->_interface;
  v29 = objc_msgSend_setWithUnionOfSets_(MEMORY[0x277CBEB98], v28, self->_arraySet, self->_contextsSet, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v27, v30, v29, sel_remote_contextsMatchingIdentifierPath_parentContextID_completion_, 0, 1);

  v31 = self->_interface;
  v32 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v31, v33, v32, sel_remote_fetchThumbnailBlobForContextID_completion_, 0, 0);
  v34 = self->_interface;
  v35 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v34, v36, v35, sel_remote_fetchThumbnailBlobForContextID_completion_, 0, 1);
  v37 = self->_interface;
  v38 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v37, v39, v38, sel_remote_deleteThumbnailBlobForContextID_completion_, 0, 0);
  v40 = *MEMORY[0x277D85DE8];
}

- (void)configureProgressReportingAPI
{
  interface = self->_interface;
  v4 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(interface, v5, v4, sel_remote_fetchProgressReportingCapabilitiesForContextID_completion_, 0, 0);
  v6 = self->_interface;
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v6, v12, v11, sel_remote_fetchProgressReportingCapabilitiesForContextID_completion_, 0, 1);

  v13 = self->_interface;
  v15 = objc_opt_class();

  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v13, v14, v15, sel_remote_deleteProgressReportingCapabilitiesForContextID_completion_, 0, 0);
}

- (void)configureDashboardAppAPI
{
  interface = self->_interface;
  v4 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(interface, v5, v4, sel_remote_getServerSyncStatusWithCompletion_, 0, 1);
  v6 = self->_interface;
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v13 = objc_msgSend_setWithObjects_(v7, v12, v8, v9, v10, v11, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v6, v14, v13, sel_remote_getServerInternalStateInfoWithCompletion_, 0, 1);

  v15 = self->_interface;
  v16 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v15, v17, v16, sel_remote_canSearchRostersWithCompletion_, 0, 1);
  v18 = MEMORY[0x277CBEB98];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v41 = objc_msgSend_setWithObjects_(v18, v26, v19, v20, v21, v22, v23, v24, v25, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v27, v41, sel_remote_currentUserWithCompletion_, 0, 1);
  v28 = self->_interface;
  v29 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v28, v30, v29, sel_remote_fetchCountOfActivitiesForContextID_completion_, 0, 0);
  v31 = self->_interface;
  v32 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v31, v33, v32, sel_remote_fetchCountOfActivitiesForContextID_completion_, 0, 1);
  v34 = self->_interface;
  v35 = MEMORY[0x277CBEB98];
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v39 = objc_msgSend_setWithObjects_(v35, v38, v36, v37, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v34, v40, v39, sel_remote_fetchCountOfActivitiesForContextID_completion_, 1, 1);
}

- (void)configureAppsAPI
{
  v23 = *MEMORY[0x277D85DE8];
  interface = self->_interface;
  v4 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(interface, v5, v4, sel_remote_setOverrideBundleIdentifier_completion_, 0, 0);
  v6 = self->_interface;
  v7 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v6, v8, v7, sel_remote_deleteAppWithBundleIdentifier_completion_, 0, 0);
  v9 = self->_interface;
  v10 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, &v20, 3);
  v14 = objc_msgSend_setWithArray_(v10, v13, v12, v20, v21);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v9, v15, v14, sel_remote_listAppsWithCompletion_, 0, 1);

  v16 = self->_interface;
  v17 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v16, v18, v17, sel_remote_listAppsWithCompletion_, 1, 1);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)configureUserNotificationAPI
{
  interface = self->_interface;
  v4 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(interface, v5, v4, sel_remote_triggerUserNotificationReviewDueHandoutsWithReferenceDate_completion_, 0, 0);
  v6 = self->_interface;
  v7 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v6, v8, v7, sel_remote_triggerUserNotificationRevisedSubmissionWithAttachmentID_studentName_completion_, 0, 0);
  v9 = self->_interface;
  v10 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v9, v11, v10, sel_remote_triggerUserNotificationHandoutPastDueSummaryWithReferenceDate_completion_, 0, 0);
  v12 = self->_interface;
  v13 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v12, v14, v13, sel_remote_triggerUserNotificationHandoutDueSoonWithReferenceDate_completion_, 0, 0);
  v15 = self->_interface;
  v16 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v15, v17, v16, sel_remote_triggerUserNotificationHandoutAssignedWithHandoutID_completion_, 0, 0);
  v18 = self->_interface;
  v19 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v18, v20, v19, sel_remote_triggerUserNotificationWithTitle_message_wrappedImageURL_, 0, 0);
  v21 = self->_interface;
  v22 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v21, v23, v22, sel_remote_triggerUserNotificationWithTitle_message_wrappedImageURL_, 1, 0);
  v24 = self->_interface;
  v26 = objc_opt_class();

  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v24, v25, v26, sel_remote_triggerUserNotificationWithTitle_message_wrappedImageURL_, 2, 0);
}

- (void)configureUtilityServerAPI
{
  v55[4] = *MEMORY[0x277D85DE8];
  v53 = objc_msgSend_classesForSelector_argumentIndex_ofReply_(self->_interface, a2, sel_remote_statusWithCompletion_, 0, 1);
  v3 = objc_opt_class();
  v5 = objc_msgSend_setByAddingObject_(v53, v4, v3);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v6, v5, sel_remote_statusWithCompletion_, 0, 1);
  interface = self->_interface;
  v8 = MEMORY[0x277CBEB98];
  v55[0] = objc_opt_class();
  v55[1] = objc_opt_class();
  v55[2] = objc_opt_class();
  v55[3] = objc_opt_class();
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v55, 4);
  v12 = objc_msgSend_setWithArray_(v8, v11, v10);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(interface, v13, v12, sel_remote_syncStatsWithCompletion_, 0, 1);

  v14 = self->_interface;
  v15 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v14, v16, v15, sel_remote_fetchReportsWithPredicate_completion_, 0, 0);
  v17 = self->_interface;
  v18 = MEMORY[0x277CBEB98];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v22 = objc_msgSend_setWithObjects_(v18, v21, v19, v20, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v17, v23, v22, sel_remote_fetchReportsWithPredicate_completion_, 1, 1);

  v24 = self->_interface;
  v25 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v24, v26, v25, sel_remote_addAdminRequestor_completion_, 0, 0);
  v27 = self->_interface;
  v28 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v27, v29, v28, sel_remote_addAdminRequestor_completion_, 0, 1);
  v30 = self->_interface;
  v31 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v30, v32, v31, sel_remote_addAdminRequestor_completion_, 1, 1);
  v33 = self->_interface;
  v34 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v33, v35, v34, sel_remote_addOrganization_withLocations_completion_, 0, 0);
  v36 = self->_interface;
  v37 = MEMORY[0x277CBEB98];
  v54[0] = objc_opt_class();
  v54[1] = objc_opt_class();
  v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v38, v54, 2);
  v41 = objc_msgSend_setWithArray_(v37, v40, v39);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v36, v42, v41, sel_remote_addOrganization_withLocations_completion_, 1, 0);

  v43 = self->_interface;
  v44 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v43, v45, v44, sel_remote_addOrganization_withLocations_completion_, 0, 1);
  v46 = self->_interface;
  v47 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v46, v48, v47, sel_remote_addOrganization_withLocations_completion_, 1, 1);
  v49 = self->_interface;
  v50 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v49, v51, v50, sel_remote_deleteOrganization_completion_, 0, 0);

  v52 = *MEMORY[0x277D85DE8];
}

- (void)configureAuthorizationStatusAPI
{
  v63[2] = *MEMORY[0x277D85DE8];
  interface = self->_interface;
  v4 = MEMORY[0x277CBEB98];
  v63[0] = objc_opt_class();
  v63[1] = objc_opt_class();
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v63, 2);
  v8 = objc_msgSend_setWithArray_(v4, v7, v6);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(interface, v9, v8, sel_remote_addAuthorizationStatus_forContextAtPath_completion_, 1, 0);

  v10 = self->_interface;
  v11 = MEMORY[0x277CBEB98];
  v62[0] = objc_opt_class();
  v62[1] = objc_opt_class();
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v62, 2);
  v15 = objc_msgSend_setWithArray_(v11, v14, v13);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v10, v16, v15, sel_remote_removeAuthorizationStatus_forContextAtPath_completion_, 1, 0);

  v17 = self->_interface;
  v18 = MEMORY[0x277CBEB98];
  v61[0] = objc_opt_class();
  v61[1] = objc_opt_class();
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v61, 2);
  v22 = objc_msgSend_setWithArray_(v18, v21, v20);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v17, v23, v22, sel_remote_authorizationStatusForContextAtPath_completion_, 0, 0);

  v24 = self->_interface;
  v25 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v24, v26, v25, sel_remote_authorizationStatusForContextAtPath_completion_, 0, 1);
  v27 = self->_interface;
  v28 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v27, v29, v28, sel_remote_authorizationStatusForHandoutAssignedItem_completion_, 0, 0);
  v30 = self->_interface;
  v31 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v30, v32, v31, sel_remote_authorizationStatusForHandoutAssignedItem_completion_, 0, 1);
  v33 = self->_interface;
  v34 = MEMORY[0x277CBEB98];
  v60[0] = objc_opt_class();
  v60[1] = objc_opt_class();
  v36 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v35, v60, 2);
  v38 = objc_msgSend_setWithArray_(v34, v37, v36);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v33, v39, v38, sel_remote_addAuthorizationStatus_forHandoutAssignedItem_completion_, 1, 0);

  v40 = self->_interface;
  v41 = MEMORY[0x277CBEB98];
  v59[0] = objc_opt_class();
  v59[1] = objc_opt_class();
  v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v42, v59, 2);
  v45 = objc_msgSend_setWithArray_(v41, v44, v43);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v40, v46, v45, sel_remote_removeAuthorizationStatus_forHandoutAssignedItem_completion_, 1, 0);

  v47 = self->_interface;
  v48 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v47, v49, v48, sel_remote_authTreeWithCompletion_, 0, 1);
  v50 = self->_interface;
  v51 = MEMORY[0x277CBEB98];
  v58[0] = objc_opt_class();
  v58[1] = objc_opt_class();
  v53 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v52, v58, 2);
  v55 = objc_msgSend_setWithArray_(v51, v54, v53);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v50, v56, v55, sel_remote_authTreeForAttachment_withCompletion_, 0, 1);

  v57 = *MEMORY[0x277D85DE8];
}

- (void)configureHandoutAPI
{
  v3 = CLSHandoutClasses();
  v4 = objc_opt_class();
  v6 = objc_msgSend_setByAddingObject_(v3, v5, v4);

  v7 = CLSSurveyClasses();
  v11 = objc_msgSend_setByAddingObjectsFromSet_(v6, v8, v7);

  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v9, v11, sel_remote_publishHandoutGraph_completion_, 0, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v10, v11, sel_remote_repairHandoutAttachments_completion_, 0, 0);
}

- (void)configureCollectionsAPI
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v9 = objc_msgSend_initWithObjects_(v3, v7, v4, v5, v6, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v8, v9, sel_remote_deleteCollectionRelatedObjectsWithCompletion_completion_, 0, 0);
}

- (void)configureCollaborationStateAPI
{
  v3 = CLSCollaborationStateClasses();
  v6 = objc_msgSend_supportedInfoDictionaryClasses(CLSCollaborationState, v4, v5);
  v49 = objc_msgSend_setByAddingObjectsFromSet_(v3, v7, v6);

  interface = self->_interface;
  v9 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(interface, v10, v9, sel_remote_collaborationStatesForObjectWithID_ownerPersonID_completion_, 0, 0);
  v11 = self->_interface;
  v12 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v11, v13, v12, sel_remote_collaborationStatesForObjectWithID_ownerPersonID_completion_, 1, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v14, v49, sel_remote_collaborationStatesForObjectWithID_ownerPersonID_completion_, 0, 1);
  v15 = self->_interface;
  v16 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v20 = objc_msgSend_setWithObjects_(v16, v19, v17, v18, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v15, v21, v20, sel_remote_collaborationStatesForObjectWithID_ownerPersonID_completion_, 1, 1);

  v22 = self->_interface;
  v23 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v22, v24, v23, sel_remote_collaborationStatesForObjectWithID_classID_forOwnersWithRole_completion_, 0, 0);
  v25 = self->_interface;
  v26 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v25, v27, v26, sel_remote_collaborationStatesForObjectWithID_classID_forOwnersWithRole_completion_, 1, 0);
  v28 = self->_interface;
  v29 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v28, v30, v29, sel_remote_collaborationStatesForObjectWithID_classID_forOwnersWithRole_completion_, 2, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v31, v49, sel_remote_collaborationStatesForObjectWithID_classID_forOwnersWithRole_completion_, 0, 1);
  v32 = self->_interface;
  v33 = MEMORY[0x277CBEB98];
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v37 = objc_msgSend_setWithObjects_(v33, v36, v34, v35, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v32, v38, v37, sel_remote_collaborationStatesForObjectWithID_classID_forOwnersWithRole_completion_, 1, 1);

  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v39, v49, sel_remote_publishCollaborationStateChanges_completion_, 0, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v40, v49, sel_remote_publishCollaborationStateChanges_completion_, 0, 1);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v41, v49, sel_remote_publishCollaborationStateChanges_completion_, 1, 1);
  v42 = self->_interface;
  v43 = MEMORY[0x277CBEB98];
  v44 = objc_opt_class();
  v45 = objc_opt_class();
  v47 = objc_msgSend_setWithObjects_(v43, v46, v44, v45, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v42, v48, v47, sel_remote_publishCollaborationStateChanges_completion_, 2, 1);
}

- (void)configureClassAPI
{
  v3 = CLSRosterClasses();
  v4 = objc_opt_class();
  v6 = objc_msgSend_setByAddingObject_(v3, v5, v4);

  v7 = objc_opt_class();
  v12 = objc_msgSend_setByAddingObject_(v6, v8, v7);

  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v9, v12, sel_remote_publishClass_membersToInsert_membersToDelete_completion_, 0, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v10, v12, sel_remote_publishClass_membersToInsert_membersToDelete_completion_, 1, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v11, v12, sel_remote_publishClass_membersToInsert_membersToDelete_completion_, 2, 0);
}

- (void)configureStudentActivityAPI
{
  v69[2] = *MEMORY[0x277D85DE8];
  interface = self->_interface;
  v4 = MEMORY[0x277CBEB98];
  v69[0] = objc_opt_class();
  v69[1] = objc_opt_class();
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v69, 2);
  v8 = objc_msgSend_setWithArray_(v4, v7, v6);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(interface, v9, v8, sel_remote_studentActivityForAttachmentsWithIDs_completion_, 0, 0);

  v10 = self->_interface;
  v11 = MEMORY[0x277CBEB98];
  v68[0] = objc_opt_class();
  v68[1] = objc_opt_class();
  v68[2] = objc_opt_class();
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v68, 3);
  v15 = objc_msgSend_setWithArray_(v11, v14, v13);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v10, v16, v15, sel_remote_studentActivityForAttachmentsWithIDs_completion_, 0, 1);

  v17 = self->_interface;
  v18 = MEMORY[0x277CBEB98];
  v67[0] = objc_opt_class();
  v67[1] = objc_opt_class();
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v67, 2);
  v22 = objc_msgSend_setWithArray_(v18, v21, v20);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v17, v23, v22, sel_remote_fetchAndCompleteActiveAssignedActivitiesForContextPath_withCompletion_, 0, 0);

  v24 = self->_interface;
  v25 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v24, v26, v25, sel_remote_triggerUserNotificationRevisionRequestedWithAttachmentID_completion_, 0, 0);
  v27 = self->_interface;
  v28 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v27, v29, v28, sel_remote_validateAndCreateHandoutAssignedItem_withCompletion_, 0, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v30, self->_contextsSet, sel_remote_validateAndCreateHandoutAssignedItem_withCompletion_, 0, 1);
  v31 = self->_interface;
  v32 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v31, v33, v32, sel_remote_fetchHandoutAttachmentForDocumentURL_withCompletion_, 0, 0);
  v34 = self->_interface;
  v35 = MEMORY[0x277CBEB98];
  v66[0] = objc_opt_class();
  v66[1] = objc_opt_class();
  v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v36, v66, 2);
  v39 = objc_msgSend_setWithArray_(v35, v38, v37, v66[0]);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v34, v40, v39, sel_remote_fetchHandoutAttachmentForDocumentURL_withCompletion_, 0, 1);

  v41 = self->_interface;
  v42 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v41, v43, v42, sel_remote_startAppActivity_bundleID_activityType_completion_, 0, 0);
  v44 = self->_interface;
  v45 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v44, v46, v45, sel_remote_startAppActivity_bundleID_activityType_completion_, 1, 0);
  v47 = self->_interface;
  v48 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v47, v49, v48, sel_remote_startActivityFailed_completion_, 0, 0);
  v50 = self->_interface;
  v51 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v50, v52, v51, sel_remote_fetchAppBasedAssignmentUsage_completion_, 0, 0);
  v53 = self->_interface;
  v54 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v53, v55, v54, sel_remote_fetchAppBasedAssignmentUsage_completion_, 0, 1);
  v56 = self->_interface;
  v57 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v56, v58, v57, sel_remote_submittableURLByCurrentUser_completion_, 0, 0);
  v59 = self->_interface;
  v60 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v59, v61, v60, sel_remote_submittableURLByCurrentUser_completion_, 0, 1);
  v62 = self->_interface;
  v63 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v62, v64, v63, sel_remote_currentUserIsStudent_, 0, 1);
  v65 = *MEMORY[0x277D85DE8];
}

- (void)configureFeatureAvailabilityAPI
{
  v39[3] = *MEMORY[0x277D85DE8];
  interface = self->_interface;
  v4 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(interface, v5, v4, sel_remote_featureIsEnabled_completion_, 0, 0);
  v6 = self->_interface;
  v7 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v6, v8, v7, sel_remote_featureIsEnabled_completion_, 0, 1);
  v9 = self->_interface;
  v10 = MEMORY[0x277CBEB98];
  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v39[2] = objc_opt_class();
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v39, 3);
  v14 = objc_msgSend_setWithArray_(v10, v13, v12);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v9, v15, v14, sel_remote_getUserDefaultsConfigurationDictionaryWithCompletion_, 0, 1);

  v16 = self->_interface;
  v17 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v16, v18, v17, sel_remote_getUserDefaultForDefaultNamed_completion_, 0, 0);
  v19 = self->_interface;
  v20 = MEMORY[0x277CBEB98];
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v38, 2);
  v24 = objc_msgSend_setWithArray_(v20, v23, v22);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v19, v25, v24, sel_remote_getUserDefaultForDefaultNamed_completion_, 0, 1);

  v26 = self->_interface;
  v27 = MEMORY[0x277CBEB98];
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v28, v37, 2);
  v31 = objc_msgSend_setWithArray_(v27, v30, v29, v37[0]);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v26, v32, v31, sel_remote_setUserDefaultValue_forDefaultNamed_completion_, 0, 0);

  v33 = self->_interface;
  v34 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v33, v35, v34, sel_remote_setUserDefaultValue_forDefaultNamed_completion_, 1, 0);
  v36 = *MEMORY[0x277D85DE8];
}

- (void)configureAssetSupportAPI
{
  v137[5] = *MEMORY[0x277D85DE8];
  interface = self->_interface;
  v4 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(interface, v5, v4, sel_remote_urlSuitableForOpeningForExpectedURL_itemID_ownerName_zoneName_completion_, 0, 0);
  v6 = self->_interface;
  v7 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v6, v8, v7, sel_remote_urlSuitableForOpeningForExpectedURL_itemID_ownerName_zoneName_completion_, 1, 0);
  v9 = self->_interface;
  v10 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v9, v11, v10, sel_remote_urlSuitableForOpeningForExpectedURL_itemID_ownerName_zoneName_completion_, 2, 0);
  v12 = self->_interface;
  v13 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v12, v14, v13, sel_remote_urlSuitableForOpeningForExpectedURL_itemID_ownerName_zoneName_completion_, 3, 0);
  v15 = self->_interface;
  v16 = MEMORY[0x277CBEB98];
  v137[0] = objc_opt_class();
  v137[1] = objc_opt_class();
  v137[2] = objc_opt_class();
  v137[3] = objc_opt_class();
  v137[4] = objc_opt_class();
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v137, 5);
  v20 = objc_msgSend_setWithArray_(v16, v19, v18);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v15, v21, v20, sel_remote_urlSuitableForOpeningForExpectedURL_itemID_ownerName_zoneName_completion_, 0, 1);

  v22 = self->_interface;
  v23 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v22, v24, v23, sel_remote_urlSuitableForOpeningForExpectedURL_itemID_ownerName_zoneName_completion_, 1, 1);
  v25 = CLSAssetDownloadProgressNotifiableInterface();
  v26 = self->_interface;
  v27 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v26, v28, v27, sel_remote_cloudKitUrlSuitableForOpeningForAsset_downloadObserver_completion_, 0, 0);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(self->_interface, v29, v25, sel_remote_cloudKitUrlSuitableForOpeningForAsset_downloadObserver_completion_, 1, 0);
  v30 = self->_interface;
  v31 = MEMORY[0x277CBEB98];
  v136[0] = objc_opt_class();
  v136[1] = objc_opt_class();
  v136[2] = objc_opt_class();
  v136[3] = objc_opt_class();
  v136[4] = objc_opt_class();
  v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v32, v136, 5);
  v35 = objc_msgSend_setWithArray_(v31, v34, v33);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v30, v36, v35, sel_remote_cloudKitUrlSuitableForOpeningForAsset_downloadObserver_completion_, 0, 1);

  v37 = self->_interface;
  v38 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v37, v39, v38, sel_remote_cloudKitUrlSuitableForOpeningForAsset_downloadObserver_completion_, 1, 1);
  v40 = self->_interface;
  v41 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v40, v42, v41, sel_remote_cloudKitThumbnailUrlSuitableForOpeningForAsset_completion_, 0, 0);
  v43 = self->_interface;
  v44 = MEMORY[0x277CBEB98];
  v135[0] = objc_opt_class();
  v135[1] = objc_opt_class();
  v135[2] = objc_opt_class();
  v135[3] = objc_opt_class();
  v135[4] = objc_opt_class();
  v46 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v45, v135, 5);
  v48 = objc_msgSend_setWithArray_(v44, v47, v46);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v43, v49, v48, sel_remote_cloudKitThumbnailUrlSuitableForOpeningForAsset_completion_, 0, 1);

  v50 = self->_interface;
  v51 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v50, v52, v51, sel_remote_cloudKitThumbnailUrlSuitableForOpeningForAsset_completion_, 1, 1);
  v53 = self->_interface;
  v54 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v53, v55, v54, sel_remote_cloudKitUrlSuitableForStreamingAsset_downloadObserver_completion_, 0, 0);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(self->_interface, v56, v25, sel_remote_cloudKitUrlSuitableForStreamingAsset_downloadObserver_completion_, 1, 0);
  v57 = self->_interface;
  v58 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v57, v59, v58, sel_remote_cloudKitUrlSuitableForStreamingAsset_downloadObserver_completion_, 0, 1);
  v60 = self->_interface;
  v61 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v60, v62, v61, sel_remote_cloudKitUrlSuitableForStreamingAsset_downloadObserver_completion_, 1, 1);
  v63 = self->_interface;
  v64 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v63, v65, v64, sel_remote_cloudKitUrlSuitableForStreamingAsset_downloadObserver_completion_, 2, 1);
  v66 = self->_interface;
  v67 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v66, v68, v67, sel_remote_createShareIfNeededForURL_completion_, 0, 0);
  v69 = self->_interface;
  v70 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v69, v71, v70, sel_remote_createShareIfNeededForURL_completion_, 1, 1);
  v72 = self->_interface;
  v73 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v72, v74, v73, sel_remote_createShareIfNeededForURL_completion_, 2, 1);
  v75 = self->_interface;
  v76 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v75, v77, v76, sel_remote_createShareIfNeededForURL_completion_, 3, 1);
  v78 = self->_interface;
  v79 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v78, v80, v79, sel_remote_deleteBackingStoreForAsset_completion_, 0, 0);
  v81 = self->_interface;
  v82 = MEMORY[0x277CBEB98];
  v83 = objc_opt_class();
  v84 = objc_opt_class();
  v86 = objc_msgSend_setWithObjects_(v82, v85, v83, v84, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v81, v87, v86, sel_remote_deleteBackingStoreForAsset_completion_, 1, 1);

  v88 = CLSAssetUploadProgressNotifiableInterface();
  v89 = self->_interface;
  v90 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v89, v91, v90, sel_remote_uploadAsset_createThumbnailIfNeeded_uploadObserver_completion_, 0, 0);
  objc_msgSend_setInterface_forSelector_argumentIndex_ofReply_(self->_interface, v92, v88, sel_remote_uploadAsset_createThumbnailIfNeeded_uploadObserver_completion_, 2, 0);
  v93 = self->_interface;
  v94 = MEMORY[0x277CBEB98];
  v95 = objc_opt_class();
  v96 = objc_opt_class();
  v98 = objc_msgSend_setWithObjects_(v94, v97, v95, v96, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v93, v99, v98, sel_remote_uploadAsset_createThumbnailIfNeeded_uploadObserver_completion_, 0, 1);

  v100 = self->_interface;
  v101 = MEMORY[0x277CBEB98];
  v102 = objc_opt_class();
  v103 = objc_opt_class();
  v105 = objc_msgSend_setWithObjects_(v101, v104, v102, v103, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v100, v106, v105, sel_remote_fetchOrphanedAssetsWithCompletion_, 0, 1);

  v107 = self->_interface;
  v108 = MEMORY[0x277CBEB98];
  v109 = objc_opt_class();
  v110 = objc_opt_class();
  v112 = objc_msgSend_setWithObjects_(v108, v111, v109, v110, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v107, v113, v112, sel_remote_fetchOrphanedAssetsWithCompletion_, 1, 1);

  v114 = self->_interface;
  v115 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v114, v116, v115, sel_remote_topLevelContentStoreCacheDirectoryURLWithCompletion_, 0, 1);
  v117 = self->_interface;
  v118 = MEMORY[0x277CBEB98];
  v119 = objc_opt_class();
  v120 = objc_opt_class();
  v122 = objc_msgSend_setWithObjects_(v118, v121, v119, v120, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v117, v123, v122, sel_remote_topLevelContentStoreCacheDirectoryURLWithCompletion_, 1, 1);

  v124 = self->_interface;
  v125 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v124, v126, v125, sel_remote_currentUserContentStoreCacheDirectoryURLWithCompletion_, 0, 1);
  v127 = self->_interface;
  v128 = MEMORY[0x277CBEB98];
  v129 = objc_opt_class();
  v130 = objc_opt_class();
  v132 = objc_msgSend_setWithObjects_(v128, v131, v129, v130, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v127, v133, v132, sel_remote_currentUserContentStoreCacheDirectoryURLWithCompletion_, 1, 1);

  v134 = *MEMORY[0x277D85DE8];
}

- (void)configureAdminRequestAPI
{
  v34[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  v34[0] = objc_opt_class();
  v34[1] = objc_opt_class();
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v34, 2);
  v7 = objc_msgSend_setWithArray_(v3, v6, v5);

  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v8, v7, sel_remote_publishAdminRequests_withRequestor_adminRequestAccounts_completion_, 0, 0);
  interface = self->_interface;
  v10 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(interface, v11, v10, sel_remote_publishAdminRequests_withRequestor_adminRequestAccounts_completion_, 1, 0);
  v12 = self->_interface;
  v13 = MEMORY[0x277CBEB98];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v33, 2);
  v17 = objc_msgSend_setWithArray_(v13, v16, v15);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v12, v18, v17, sel_remote_publishAdminRequests_withRequestor_adminRequestAccounts_completion_, 2, 0);

  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v19, v7, sel_remote_publishAdminRequests_withRequestor_adminRequestAccounts_completion_, 0, 1);
  v20 = self->_interface;
  v21 = MEMORY[0x277CBEB98];
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v27 = objc_msgSend_setWithObjects_(v21, v26, v22, v23, v24, v25, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v20, v28, v27, sel_remote_publishAdminRequests_withRequestor_adminRequestAccounts_completion_, 1, 1);

  v29 = self->_interface;
  v30 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v29, v31, v30, sel_remote_deleteAdminRequestID_completion_, 0, 0);

  v32 = *MEMORY[0x277D85DE8];
}

- (void)configureSurveyAnswerAPI
{
  v28[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v28[2] = objc_opt_class();
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v28, 3);
  v7 = objc_msgSend_setWithArray_(v3, v6, v5);

  interface = self->_interface;
  v9 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(interface, v10, v9, sel_remote_publishSurveyAnswers_completion_, 0, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v11, v7, sel_remote_publishSurveyAnswers_completion_, 0, 1);
  v12 = self->_interface;
  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v17 = objc_msgSend_setWithObjects_(v13, v16, v14, v15, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v12, v18, v17, sel_remote_publishSurveyAnswers_completion_, 1, 1);

  v19 = MEMORY[0x277CBEB98];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v20, v27, 2);
  v23 = objc_msgSend_setWithArray_(v19, v22, v21);

  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v24, v23, sel_remote_fetchSurveyAnswer_responderIDs_completion_, 0, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v25, v23, sel_remote_fetchSurveyAnswer_responderIDs_completion_, 1, 0);

  v26 = *MEMORY[0x277D85DE8];
}

- (void)configureRelayRequestAPI
{
  interface = self->_interface;
  v4 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(interface, v5, v4, sel_remote_relayRequestWithData_requestType_fileHandle_completion_, 0, 0);
  v6 = self->_interface;
  v7 = objc_opt_class();
  objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v6, v8, v7, sel_remote_relayRequestWithData_requestType_fileHandle_completion_, 2, 0);
  v9 = self->_interface;
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v14 = objc_msgSend_setWithObjects_(v10, v12, v11, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v9, v13, v14, sel_remote_relayRequestWithData_requestType_fileHandle_completion_, 1, 1);
}

- (void)configureInsightEventsAPI
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v17, 2);
  v7 = objc_msgSend_setWithArray_(v3, v6, v5);

  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(self->_interface, v8, v7, sel_remote_saveInsightEvents_completion_, 0, 0);
  interface = self->_interface;
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v14 = objc_msgSend_setWithObjects_(v10, v13, v11, v12, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(interface, v15, v14, sel_remote_saveInsightEvents_completion_, 1, 1);

  v16 = *MEMORY[0x277D85DE8];
}

@end
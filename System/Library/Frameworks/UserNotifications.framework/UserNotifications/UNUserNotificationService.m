@interface UNUserNotificationService
+ (id)clientInterface;
+ (id)serverInterface;
@end

@implementation UNUserNotificationService

void __44__UNUserNotificationService_serverInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30A58E8];
  v1 = serverInterface___interface_0;
  serverInterface___interface_0 = v0;

  v2 = serverInterface___interface_0;
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_setObservingUserNotifications_forBundleIdentifier_ argumentIndex:1 ofReply:0];

  v4 = serverInterface___interface_0;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v5 forSelector:sel_requestAuthorizationWithOptions_forBundleIdentifier_completionHandler_ argumentIndex:1 ofReply:0];

  v6 = serverInterface___interface_0;
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v7 forSelector:sel_requestAuthorizationWithOptions_forBundleIdentifier_completionHandler_ argumentIndex:1 ofReply:1];

  v8 = serverInterface___interface_0;
  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v8 setClasses:v9 forSelector:sel_requestRemoveAuthorizationForBundleIdentifier_completionHandler_ argumentIndex:0 ofReply:0];

  v10 = serverInterface___interface_0;
  v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v10 setClasses:v11 forSelector:sel_requestRemoveAuthorizationForBundleIdentifier_completionHandler_ argumentIndex:1 ofReply:1];

  v12 = serverInterface___interface_0;
  v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v12 setClasses:v13 forSelector:sel_getNotificationSettingsForBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:0];

  v14 = serverInterface___interface_0;
  v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v14 setClasses:v15 forSelector:sel_getNotificationSettingsForBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v16 = serverInterface___interface_0;
  v17 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v16 setClasses:v17 forSelector:sel_getNotificationCategoriesForBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:0];

  v18 = serverInterface___interface_0;
  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  [v18 setClasses:v21 forSelector:sel_getNotificationCategoriesForBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v22 = serverInterface___interface_0;
  v23 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
  [v22 setClasses:v25 forSelector:sel_setNotificationCategories_forBundleIdentifier_ argumentIndex:0 ofReply:0];

  v26 = serverInterface___interface_0;
  v27 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v26 setClasses:v27 forSelector:sel_setNotificationCategories_forBundleIdentifier_ argumentIndex:1 ofReply:0];

  v28 = serverInterface___interface_0;
  v29 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v28 setClasses:v29 forSelector:sel_addNotificationRequest_forBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:0];

  v30 = serverInterface___interface_0;
  v31 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v30 setClasses:v31 forSelector:sel_addNotificationRequest_forBundleIdentifier_withCompletionHandler_ argumentIndex:1 ofReply:0];

  v32 = serverInterface___interface_0;
  v33 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v32 setClasses:v33 forSelector:sel_addNotificationRequest_forBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v34 = serverInterface___interface_0;
  v35 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v34 setClasses:v35 forSelector:sel_replaceContentForRequestWithIdentifier_bundleIdentifier_replacementContent_completionHandler_ argumentIndex:0 ofReply:0];

  v36 = serverInterface___interface_0;
  v37 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v36 setClasses:v37 forSelector:sel_replaceContentForRequestWithIdentifier_bundleIdentifier_replacementContent_completionHandler_ argumentIndex:1 ofReply:0];

  v38 = serverInterface___interface_0;
  v39 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v38 setClasses:v39 forSelector:sel_replaceContentForRequestWithIdentifier_bundleIdentifier_replacementContent_completionHandler_ argumentIndex:2 ofReply:0];

  v40 = serverInterface___interface_0;
  v41 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v40 setClasses:v41 forSelector:sel_replaceContentForRequestWithIdentifier_bundleIdentifier_replacementContent_completionHandler_ argumentIndex:0 ofReply:1];

  v42 = serverInterface___interface_0;
  v43 = MEMORY[0x1E695DFD8];
  v44 = objc_opt_class();
  v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
  [v42 setClasses:v45 forSelector:sel_setNotificationRequests_forBundleIdentifier_ argumentIndex:0 ofReply:0];

  v46 = serverInterface___interface_0;
  v47 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v46 setClasses:v47 forSelector:sel_setNotificationRequests_forBundleIdentifier_ argumentIndex:1 ofReply:0];

  v48 = serverInterface___interface_0;
  v49 = MEMORY[0x1E695DFD8];
  v50 = objc_opt_class();
  v51 = [v49 setWithObjects:{v50, objc_opt_class(), 0}];
  [v48 setClasses:v51 forSelector:sel_setNotificationRequests_forBundleIdentifier_completionHandler_ argumentIndex:0 ofReply:0];

  v52 = serverInterface___interface_0;
  v53 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v52 setClasses:v53 forSelector:sel_setNotificationRequests_forBundleIdentifier_completionHandler_ argumentIndex:1 ofReply:0];

  v54 = serverInterface___interface_0;
  v55 = MEMORY[0x1E695DFD8];
  v56 = objc_opt_class();
  v57 = [v55 setWithObjects:{v56, objc_opt_class(), 0}];
  [v54 setClasses:v57 forSelector:sel_setNotificationRequests_forBundleIdentifier_completionHandler_ argumentIndex:0 ofReply:1];

  v58 = serverInterface___interface_0;
  v59 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v58 setClasses:v59 forSelector:sel_getPendingNotificationRequestsForBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:0];

  v60 = serverInterface___interface_0;
  v61 = MEMORY[0x1E695DFD8];
  v62 = objc_opt_class();
  v63 = [v61 setWithObjects:{v62, objc_opt_class(), 0}];
  [v60 setClasses:v63 forSelector:sel_getPendingNotificationRequestsForBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v64 = serverInterface___interface_0;
  v65 = MEMORY[0x1E695DFD8];
  v66 = objc_opt_class();
  v67 = [v65 setWithObjects:{v66, objc_opt_class(), 0}];
  [v64 setClasses:v67 forSelector:sel_removePendingNotificationRequestsWithIdentifiers_forBundleIdentifier_completionHandler_ argumentIndex:0 ofReply:0];

  v68 = serverInterface___interface_0;
  v69 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v68 setClasses:v69 forSelector:sel_removePendingNotificationRequestsWithIdentifiers_forBundleIdentifier_completionHandler_ argumentIndex:1 ofReply:0];

  v70 = serverInterface___interface_0;
  v71 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v70 setClasses:v71 forSelector:sel_removePendingNotificationRequestsWithIdentifiers_forBundleIdentifier_completionHandler_ argumentIndex:1 ofReply:1];

  v72 = serverInterface___interface_0;
  v73 = MEMORY[0x1E695DFD8];
  v74 = objc_opt_class();
  v75 = [v73 setWithObjects:{v74, objc_opt_class(), 0}];
  [v72 setClasses:v75 forSelector:sel_removeSimilarNotificationRequests_forBundleIdentifier_completionHandler_ argumentIndex:0 ofReply:0];

  v76 = serverInterface___interface_0;
  v77 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v76 setClasses:v77 forSelector:sel_removeSimilarNotificationRequests_forBundleIdentifier_completionHandler_ argumentIndex:1 ofReply:0];

  v78 = serverInterface___interface_0;
  v79 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v78 setClasses:v79 forSelector:sel_removeSimilarNotificationRequests_forBundleIdentifier_completionHandler_ argumentIndex:1 ofReply:1];

  v80 = serverInterface___interface_0;
  v81 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v80 setClasses:v81 forSelector:sel_removeAllPendingNotificationRequestsForBundleIdentifier_completionHandler_ argumentIndex:0 ofReply:0];

  v82 = serverInterface___interface_0;
  v83 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v82 setClasses:v83 forSelector:sel_removeAllPendingNotificationRequestsForBundleIdentifier_completionHandler_ argumentIndex:1 ofReply:1];

  v84 = serverInterface___interface_0;
  v85 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v84 setClasses:v85 forSelector:sel_getDeliveredNotificationsForBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:0];

  v86 = serverInterface___interface_0;
  v87 = MEMORY[0x1E695DFD8];
  v88 = objc_opt_class();
  v89 = [v87 setWithObjects:{v88, objc_opt_class(), 0}];
  [v86 setClasses:v89 forSelector:sel_getDeliveredNotificationsForBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v90 = serverInterface___interface_0;
  v91 = MEMORY[0x1E695DFD8];
  v92 = objc_opt_class();
  v93 = [v91 setWithObjects:{v92, objc_opt_class(), 0}];
  [v90 setClasses:v93 forSelector:sel_removeDeliveredNotificationsWithIdentifiers_forBundleIdentifier_completionHandler_ argumentIndex:0 ofReply:0];

  v94 = serverInterface___interface_0;
  v95 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v94 setClasses:v95 forSelector:sel_removeDeliveredNotificationsWithIdentifiers_forBundleIdentifier_completionHandler_ argumentIndex:1 ofReply:0];

  v96 = serverInterface___interface_0;
  v97 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v96 setClasses:v97 forSelector:sel_removeDeliveredNotificationsWithIdentifiers_forBundleIdentifier_completionHandler_ argumentIndex:1 ofReply:1];

  v98 = serverInterface___interface_0;
  v99 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v98 setClasses:v99 forSelector:sel_removeAllDeliveredNotificationsForBundleIdentifier_completionHandler_ argumentIndex:0 ofReply:0];

  v100 = serverInterface___interface_0;
  v101 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v100 setClasses:v101 forSelector:sel_removeAllDeliveredNotificationsForBundleIdentifier_completionHandler_ argumentIndex:1 ofReply:1];

  v102 = serverInterface___interface_0;
  v103 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v102 setClasses:v103 forSelector:sel_getBadgeNumberForBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:0];

  v104 = serverInterface___interface_0;
  v105 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v104 setClasses:v105 forSelector:sel_getBadgeNumberForBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v106 = serverInterface___interface_0;
  v107 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v106 setClasses:v107 forSelector:sel_setBadgeNumber_forBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:0];

  v108 = serverInterface___interface_0;
  v109 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v108 setClasses:v109 forSelector:sel_setBadgeNumber_forBundleIdentifier_withCompletionHandler_ argumentIndex:1 ofReply:0];

  v110 = serverInterface___interface_0;
  v111 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v110 setClasses:v111 forSelector:sel_setBadgeNumber_forBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v112 = serverInterface___interface_0;
  v113 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v112 setClasses:v113 forSelector:sel_setBadgeString_forBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:0];

  v114 = serverInterface___interface_0;
  v115 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v114 setClasses:v115 forSelector:sel_setBadgeString_forBundleIdentifier_withCompletionHandler_ argumentIndex:1 ofReply:0];

  v116 = serverInterface___interface_0;
  v117 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v116 setClasses:v117 forSelector:sel_setBadgeString_forBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v118 = serverInterface___interface_0;
  v119 = MEMORY[0x1E695DFD8];
  v120 = objc_opt_class();
  v121 = [v119 setWithObjects:{v120, objc_opt_class(), 0}];
  [v118 setClasses:v121 forSelector:sel_setNotificationTopics_forBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:0];

  v122 = serverInterface___interface_0;
  v123 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v122 setClasses:v123 forSelector:sel_setNotificationTopics_forBundleIdentifier_withCompletionHandler_ argumentIndex:1 ofReply:0];

  v124 = serverInterface___interface_0;
  v125 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v124 setClasses:v125 forSelector:sel_setNotificationTopics_forBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v126 = serverInterface___interface_0;
  v127 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v126 setClasses:v127 forSelector:sel_getNotificationTopicsForBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:0];

  v128 = serverInterface___interface_0;
  v129 = MEMORY[0x1E695DFD8];
  v130 = objc_opt_class();
  v131 = [v129 setWithObjects:{v130, objc_opt_class(), 0}];
  [v128 setClasses:v131 forSelector:sel_getNotificationTopicsForBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v132 = serverInterface___interface_0;
  v133 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v132 setClasses:v133 forSelector:sel_getNotificationSettingsForTopicsWithBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:0];

  v134 = serverInterface___interface_0;
  v135 = MEMORY[0x1E695DFD8];
  v136 = objc_opt_class();
  v137 = objc_opt_class();
  v138 = [v135 setWithObjects:{v136, v137, objc_opt_class(), 0}];
  [v134 setClasses:v138 forSelector:sel_getNotificationSettingsForTopicsWithBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:1];
}

+ (id)serverInterface
{
  if (serverInterface_onceToken_0 != -1)
  {
    +[UNUserNotificationService serverInterface];
  }

  v3 = serverInterface___interface_0;

  return v3;
}

+ (id)clientInterface
{
  if (clientInterface_onceToken_0 != -1)
  {
    +[UNUserNotificationService clientInterface];
  }

  v3 = clientInterface___interface_0;

  return v3;
}

void __44__UNUserNotificationService_clientInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30A5040];
  v1 = clientInterface___interface_0;
  clientInterface___interface_0 = v0;

  v2 = clientInterface___interface_0;
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_didReceiveDeviceToken_forBundleIdentifier_ argumentIndex:0 ofReply:0];

  v4 = clientInterface___interface_0;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v5 forSelector:sel_didReceiveDeviceToken_forBundleIdentifier_ argumentIndex:1 ofReply:0];
}

@end
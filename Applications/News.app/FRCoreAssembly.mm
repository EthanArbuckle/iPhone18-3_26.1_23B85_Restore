@interface FRCoreAssembly
- (FRCoreAssembly)initWithCloudContext:(id)a3 configurationManager:(id)a4 appActivityMonitor:(id)a5 networkBehaviorMonitor:(id)a6 offlineModeMonitor:(id)a7;
- (void)loadInRegistry:(id)a3;
@end

@implementation FRCoreAssembly

- (FRCoreAssembly)initWithCloudContext:(id)a3 configurationManager:(id)a4 appActivityMonitor:(id)a5 networkBehaviorMonitor:(id)a6 offlineModeMonitor:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = FRCoreAssembly;
  v17 = [(FRCoreAssembly *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_cloudContext, a3);
    objc_storeStrong(&v18->_configurationManager, a4);
    objc_storeStrong(&v18->_appActivityMonitor, a5);
    objc_storeStrong(&v18->_networkBehaviorMonitor, a6);
    objc_storeStrong(&v18->_offlineModeMonitor, a7);
  }

  return v18;
}

- (void)loadInRegistry:(id)a3
{
  v4 = a3;
  v5 = [(FRCoreAssembly *)self cloudContext];
  v6 = [v4 publicContainer];
  v7 = objc_opt_class();
  v138[0] = _NSConcreteStackBlock;
  v138[1] = 3221225472;
  v138[2] = sub_100021E48;
  v138[3] = &unk_1000C2680;
  v139 = v5;
  v8 = v5;
  v9 = [v6 registerClass:v7 factory:v138];
  v10 = [v9 inScope:2];

  v11 = [v4 publicContainer];
  v137[0] = _NSConcreteStackBlock;
  v137[1] = 3221225472;
  v137[2] = sub_100021E50;
  v137[3] = &unk_1000C26A8;
  v137[4] = self;
  v12 = [v11 registerClass:objc_opt_class() factory:v137];
  v13 = [v12 inScope:2];

  v14 = [v4 publicContainer];
  v136[0] = _NSConcreteStackBlock;
  v136[1] = 3221225472;
  v136[2] = sub_100021E58;
  v136[3] = &unk_1000C26A8;
  v136[4] = self;
  v15 = [v14 registerClass:objc_opt_class() factory:v136];
  v16 = [v15 inScope:2];

  v17 = [v4 publicContainer];
  v18 = [v17 registerClass:objc_opt_class() factory:&stru_1000C26E8];
  v19 = [v18 inScope:2];

  v20 = [v4 publicContainer];
  v21 = [v20 registerProtocol:&OBJC_PROTOCOL___FCAppActivityMonitor factory:&stru_1000C2728];

  v22 = [v4 publicContainer];
  v23 = [v22 registerProtocol:&OBJC_PROTOCOL___FCBackgroundTaskable factory:&stru_1000C2768];

  v24 = [v4 publicContainer];
  v25 = [v24 registerProtocol:&OBJC_PROTOCOL___SXAppStateMonitor factory:&stru_1000C27A8];

  v26 = [v4 publicContainer];
  v27 = [v26 registerClass:objc_opt_class() factory:&stru_1000C27E8];
  v28 = [v27 inScope:2];

  v29 = [v4 publicContainer];
  v30 = [v29 registerClass:objc_opt_class() factory:&stru_1000C2828];
  v31 = [v30 inScope:2];

  v32 = [v4 publicContainer];
  v33 = [v32 registerClass:objc_opt_class() factory:&stru_1000C2868];
  v34 = [v33 inScope:2];

  v35 = [v4 publicContainer];
  v36 = [v35 registerClass:objc_opt_class() factory:&stru_1000C28A8];
  v37 = [v36 inScope:2];

  v38 = [v4 publicContainer];
  v39 = [v38 registerClass:objc_opt_class() factory:&stru_1000C28E8];
  v40 = [v39 inScope:2];

  v41 = [v4 publicContainer];
  v42 = [v41 registerClass:objc_opt_class() factory:&stru_1000C2928];
  v43 = [v42 inScope:2];

  v44 = [v4 publicContainer];
  v45 = [v44 registerClass:objc_opt_class() factory:&stru_1000C2968];
  v46 = [v45 inScope:2];

  v47 = [v4 publicContainer];
  v48 = [v47 registerClass:objc_opt_class() factory:&stru_1000C29A8];
  v49 = [v48 inScope:2];

  v50 = [v4 publicContainer];
  v51 = [v50 registerProtocol:&OBJC_PROTOCOL___FCPurchaseProviderType factory:&stru_1000C29E8];
  v52 = [v51 inScope:2];

  v53 = [v4 publicContainer];
  v54 = [v53 registerProtocol:&OBJC_PROTOCOL___FCPurchaseManagerType factory:&stru_1000C2A28];
  v55 = [v54 inScope:2];

  v56 = [v4 publicContainer];
  v57 = [v56 registerClass:objc_opt_class() factory:&stru_1000C2A68];
  v58 = [v57 inScope:2];

  v59 = [v4 publicContainer];
  v60 = [v59 registerProtocol:&OBJC_PROTOCOL___FCPPTContext factory:&stru_1000C2AA8];
  v61 = [v60 inScope:2];

  v62 = [v4 publicContainer];
  v63 = [v62 registerProtocol:&OBJC_PROTOCOL___FCPaidAccessCheckerType factory:&stru_1000C2AE8];

  v64 = [v4 publicContainer];
  v65 = [v64 registerClass:objc_opt_class() factory:&stru_1000C2B28];
  v66 = [v65 inScope:2];

  v67 = [v4 publicContainer];
  v135[0] = _NSConcreteStackBlock;
  v135[1] = 3221225472;
  v135[2] = sub_1000225A8;
  v135[3] = &unk_1000C2B50;
  v135[4] = self;
  v68 = [v67 registerProtocol:&OBJC_PROTOCOL___FCMagazinesConfigurationManager factory:v135];
  v69 = [v68 inScope:2];

  v70 = [v4 publicContainer];
  v134[0] = _NSConcreteStackBlock;
  v134[1] = 3221225472;
  v134[2] = sub_1000225B0;
  v134[3] = &unk_1000C2B78;
  v134[4] = self;
  v71 = [v70 registerProtocol:&OBJC_PROTOCOL___FCTodayFeedConfigurationManager factory:v134];
  v72 = [v71 inScope:2];

  v73 = [v4 publicContainer];
  v133[0] = _NSConcreteStackBlock;
  v133[1] = 3221225472;
  v133[2] = sub_1000225B8;
  v133[3] = &unk_1000C2BA0;
  v133[4] = self;
  v74 = [v73 registerProtocol:&OBJC_PROTOCOL___FCAudioFeedConfigManager factory:v133];
  v75 = [v74 inScope:2];

  v76 = [v4 publicContainer];
  v132[0] = _NSConcreteStackBlock;
  v132[1] = 3221225472;
  v132[2] = sub_1000225C0;
  v132[3] = &unk_1000C2BC8;
  v132[4] = self;
  v77 = [v76 registerClass:objc_opt_class() factory:v132];
  v78 = [v77 inScope:2];

  v79 = [v4 publicContainer];
  v131[0] = _NSConcreteStackBlock;
  v131[1] = 3221225472;
  v131[2] = sub_1000225C8;
  v131[3] = &unk_1000C2BC8;
  v131[4] = self;
  v80 = [v79 registerProtocol:&OBJC_PROTOCOL___FCCoreConfigurationManager factory:v131];
  v81 = [v80 inScope:2];

  v82 = [v4 publicContainer];
  v83 = [v82 registerProtocol:&OBJC_PROTOCOL___FCTranslationManager factory:&stru_1000C2C08];
  v84 = [v83 inScope:2];

  v85 = [v4 publicContainer];
  v86 = [v85 registerProtocol:&OBJC_PROTOCOL___FCLocalAreasManager factory:&stru_1000C2C48];
  v87 = [v86 inScope:2];

  v88 = [v4 publicContainer];
  v89 = [v88 registerClass:objc_opt_class() factory:&stru_1000C2C88];
  v90 = [v89 inScope:2];

  v91 = [v4 publicContainer];
  v92 = [v91 registerClass:objc_opt_class() factory:&stru_1000C2CC8];
  v93 = [v92 inScope:2];

  v94 = [v4 publicContainer];
  v95 = [v94 registerClass:objc_opt_class() factory:&stru_1000C2D08];

  v96 = [v4 publicContainer];
  v97 = [v96 registerProtocol:&OBJC_PROTOCOL___FCClearableReadingHistory factory:&stru_1000C2D48];
  v98 = [v97 inScope:2];

  v99 = [v4 publicContainer];
  v100 = [v99 registerProtocol:&OBJC_PROTOCOL___FCArticleDownloadServiceType factory:&stru_1000C2D88];

  v101 = [v4 publicContainer];
  v102 = [v101 registerProtocol:&OBJC_PROTOCOL___FCIssueDownloadServiceType factory:&stru_1000C2DC8];

  v103 = [v4 publicContainer];
  v104 = [v103 registerProtocol:&OBJC_PROTOCOL___FCPuzzleDownloadServiceType factory:&stru_1000C2E08];

  v105 = [v4 publicContainer];
  v106 = [v105 registerProtocol:&OBJC_PROTOCOL___FCRecipeDownloadServiceType factory:&stru_1000C2E48];

  v107 = [v4 publicContainer];
  v108 = [v107 registerProtocol:&OBJC_PROTOCOL___FCAVAssetPrewarming factory:&stru_1000C2E88];
  v109 = [v108 inScope:2];

  v110 = [v4 publicContainer];
  v111 = [v110 registerProtocol:&OBJC_PROTOCOL___FCAVAssetFactoryType factory:&stru_1000C2EC8];
  v112 = [v111 inScope:2];

  v113 = [v4 publicContainer];
  v114 = [v113 registerProtocol:&OBJC_PROTOCOL___TSSharedImageCacheType factory:&stru_1000C2F08];
  v115 = [v114 inScope:2];

  v116 = [v4 publicContainer];
  v117 = [v116 registerProtocol:&OBJC_PROTOCOL___TSSharedImageCacheType name:@"Format" factory:&stru_1000C2F28];
  v118 = [v117 inScope:2];

  v119 = [v4 publicContainer];
  v120 = [v119 registerProtocol:&OBJC_PROTOCOL___FCReceiptRefresherType factory:&stru_1000C2F68];

  v121 = [v4 publicContainer];
  v130[0] = _NSConcreteStackBlock;
  v130[1] = 3221225472;
  v130[2] = sub_100022CEC;
  v130[3] = &unk_1000C2F90;
  v130[4] = self;
  v122 = [v121 registerProtocol:&OBJC_PROTOCOL___NUAppActivityMonitor factory:v130];
  v123 = [v122 inScope:2];

  v124 = [v4 publicContainer];
  v125 = [v124 registerProtocol:&OBJC_PROTOCOL___FCNotificationPoolServiceType factory:&stru_1000C2FD0];
  v126 = [v125 inScope:2];

  v127 = [v4 privateContainer];

  v128 = [v127 registerClass:objc_opt_class() factory:&stru_1000C3010];
  v129 = [v128 inScope:2];
}

@end
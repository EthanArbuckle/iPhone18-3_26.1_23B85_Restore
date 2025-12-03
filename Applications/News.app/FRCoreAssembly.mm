@interface FRCoreAssembly
- (FRCoreAssembly)initWithCloudContext:(id)context configurationManager:(id)manager appActivityMonitor:(id)monitor networkBehaviorMonitor:(id)behaviorMonitor offlineModeMonitor:(id)modeMonitor;
- (void)loadInRegistry:(id)registry;
@end

@implementation FRCoreAssembly

- (FRCoreAssembly)initWithCloudContext:(id)context configurationManager:(id)manager appActivityMonitor:(id)monitor networkBehaviorMonitor:(id)behaviorMonitor offlineModeMonitor:(id)modeMonitor
{
  contextCopy = context;
  managerCopy = manager;
  monitorCopy = monitor;
  behaviorMonitorCopy = behaviorMonitor;
  modeMonitorCopy = modeMonitor;
  v21.receiver = self;
  v21.super_class = FRCoreAssembly;
  v17 = [(FRCoreAssembly *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_cloudContext, context);
    objc_storeStrong(&v18->_configurationManager, manager);
    objc_storeStrong(&v18->_appActivityMonitor, monitor);
    objc_storeStrong(&v18->_networkBehaviorMonitor, behaviorMonitor);
    objc_storeStrong(&v18->_offlineModeMonitor, modeMonitor);
  }

  return v18;
}

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  cloudContext = [(FRCoreAssembly *)self cloudContext];
  publicContainer = [registryCopy publicContainer];
  v7 = objc_opt_class();
  v138[0] = _NSConcreteStackBlock;
  v138[1] = 3221225472;
  v138[2] = sub_100021E48;
  v138[3] = &unk_1000C2680;
  v139 = cloudContext;
  v8 = cloudContext;
  v9 = [publicContainer registerClass:v7 factory:v138];
  v10 = [v9 inScope:2];

  publicContainer2 = [registryCopy publicContainer];
  v137[0] = _NSConcreteStackBlock;
  v137[1] = 3221225472;
  v137[2] = sub_100021E50;
  v137[3] = &unk_1000C26A8;
  v137[4] = self;
  v12 = [publicContainer2 registerClass:objc_opt_class() factory:v137];
  v13 = [v12 inScope:2];

  publicContainer3 = [registryCopy publicContainer];
  v136[0] = _NSConcreteStackBlock;
  v136[1] = 3221225472;
  v136[2] = sub_100021E58;
  v136[3] = &unk_1000C26A8;
  v136[4] = self;
  v15 = [publicContainer3 registerClass:objc_opt_class() factory:v136];
  v16 = [v15 inScope:2];

  publicContainer4 = [registryCopy publicContainer];
  v18 = [publicContainer4 registerClass:objc_opt_class() factory:&stru_1000C26E8];
  v19 = [v18 inScope:2];

  publicContainer5 = [registryCopy publicContainer];
  v21 = [publicContainer5 registerProtocol:&OBJC_PROTOCOL___FCAppActivityMonitor factory:&stru_1000C2728];

  publicContainer6 = [registryCopy publicContainer];
  v23 = [publicContainer6 registerProtocol:&OBJC_PROTOCOL___FCBackgroundTaskable factory:&stru_1000C2768];

  publicContainer7 = [registryCopy publicContainer];
  v25 = [publicContainer7 registerProtocol:&OBJC_PROTOCOL___SXAppStateMonitor factory:&stru_1000C27A8];

  publicContainer8 = [registryCopy publicContainer];
  v27 = [publicContainer8 registerClass:objc_opt_class() factory:&stru_1000C27E8];
  v28 = [v27 inScope:2];

  publicContainer9 = [registryCopy publicContainer];
  v30 = [publicContainer9 registerClass:objc_opt_class() factory:&stru_1000C2828];
  v31 = [v30 inScope:2];

  publicContainer10 = [registryCopy publicContainer];
  v33 = [publicContainer10 registerClass:objc_opt_class() factory:&stru_1000C2868];
  v34 = [v33 inScope:2];

  publicContainer11 = [registryCopy publicContainer];
  v36 = [publicContainer11 registerClass:objc_opt_class() factory:&stru_1000C28A8];
  v37 = [v36 inScope:2];

  publicContainer12 = [registryCopy publicContainer];
  v39 = [publicContainer12 registerClass:objc_opt_class() factory:&stru_1000C28E8];
  v40 = [v39 inScope:2];

  publicContainer13 = [registryCopy publicContainer];
  v42 = [publicContainer13 registerClass:objc_opt_class() factory:&stru_1000C2928];
  v43 = [v42 inScope:2];

  publicContainer14 = [registryCopy publicContainer];
  v45 = [publicContainer14 registerClass:objc_opt_class() factory:&stru_1000C2968];
  v46 = [v45 inScope:2];

  publicContainer15 = [registryCopy publicContainer];
  v48 = [publicContainer15 registerClass:objc_opt_class() factory:&stru_1000C29A8];
  v49 = [v48 inScope:2];

  publicContainer16 = [registryCopy publicContainer];
  v51 = [publicContainer16 registerProtocol:&OBJC_PROTOCOL___FCPurchaseProviderType factory:&stru_1000C29E8];
  v52 = [v51 inScope:2];

  publicContainer17 = [registryCopy publicContainer];
  v54 = [publicContainer17 registerProtocol:&OBJC_PROTOCOL___FCPurchaseManagerType factory:&stru_1000C2A28];
  v55 = [v54 inScope:2];

  publicContainer18 = [registryCopy publicContainer];
  v57 = [publicContainer18 registerClass:objc_opt_class() factory:&stru_1000C2A68];
  v58 = [v57 inScope:2];

  publicContainer19 = [registryCopy publicContainer];
  v60 = [publicContainer19 registerProtocol:&OBJC_PROTOCOL___FCPPTContext factory:&stru_1000C2AA8];
  v61 = [v60 inScope:2];

  publicContainer20 = [registryCopy publicContainer];
  v63 = [publicContainer20 registerProtocol:&OBJC_PROTOCOL___FCPaidAccessCheckerType factory:&stru_1000C2AE8];

  publicContainer21 = [registryCopy publicContainer];
  v65 = [publicContainer21 registerClass:objc_opt_class() factory:&stru_1000C2B28];
  v66 = [v65 inScope:2];

  publicContainer22 = [registryCopy publicContainer];
  v135[0] = _NSConcreteStackBlock;
  v135[1] = 3221225472;
  v135[2] = sub_1000225A8;
  v135[3] = &unk_1000C2B50;
  v135[4] = self;
  v68 = [publicContainer22 registerProtocol:&OBJC_PROTOCOL___FCMagazinesConfigurationManager factory:v135];
  v69 = [v68 inScope:2];

  publicContainer23 = [registryCopy publicContainer];
  v134[0] = _NSConcreteStackBlock;
  v134[1] = 3221225472;
  v134[2] = sub_1000225B0;
  v134[3] = &unk_1000C2B78;
  v134[4] = self;
  v71 = [publicContainer23 registerProtocol:&OBJC_PROTOCOL___FCTodayFeedConfigurationManager factory:v134];
  v72 = [v71 inScope:2];

  publicContainer24 = [registryCopy publicContainer];
  v133[0] = _NSConcreteStackBlock;
  v133[1] = 3221225472;
  v133[2] = sub_1000225B8;
  v133[3] = &unk_1000C2BA0;
  v133[4] = self;
  v74 = [publicContainer24 registerProtocol:&OBJC_PROTOCOL___FCAudioFeedConfigManager factory:v133];
  v75 = [v74 inScope:2];

  publicContainer25 = [registryCopy publicContainer];
  v132[0] = _NSConcreteStackBlock;
  v132[1] = 3221225472;
  v132[2] = sub_1000225C0;
  v132[3] = &unk_1000C2BC8;
  v132[4] = self;
  v77 = [publicContainer25 registerClass:objc_opt_class() factory:v132];
  v78 = [v77 inScope:2];

  publicContainer26 = [registryCopy publicContainer];
  v131[0] = _NSConcreteStackBlock;
  v131[1] = 3221225472;
  v131[2] = sub_1000225C8;
  v131[3] = &unk_1000C2BC8;
  v131[4] = self;
  v80 = [publicContainer26 registerProtocol:&OBJC_PROTOCOL___FCCoreConfigurationManager factory:v131];
  v81 = [v80 inScope:2];

  publicContainer27 = [registryCopy publicContainer];
  v83 = [publicContainer27 registerProtocol:&OBJC_PROTOCOL___FCTranslationManager factory:&stru_1000C2C08];
  v84 = [v83 inScope:2];

  publicContainer28 = [registryCopy publicContainer];
  v86 = [publicContainer28 registerProtocol:&OBJC_PROTOCOL___FCLocalAreasManager factory:&stru_1000C2C48];
  v87 = [v86 inScope:2];

  publicContainer29 = [registryCopy publicContainer];
  v89 = [publicContainer29 registerClass:objc_opt_class() factory:&stru_1000C2C88];
  v90 = [v89 inScope:2];

  publicContainer30 = [registryCopy publicContainer];
  v92 = [publicContainer30 registerClass:objc_opt_class() factory:&stru_1000C2CC8];
  v93 = [v92 inScope:2];

  publicContainer31 = [registryCopy publicContainer];
  v95 = [publicContainer31 registerClass:objc_opt_class() factory:&stru_1000C2D08];

  publicContainer32 = [registryCopy publicContainer];
  v97 = [publicContainer32 registerProtocol:&OBJC_PROTOCOL___FCClearableReadingHistory factory:&stru_1000C2D48];
  v98 = [v97 inScope:2];

  publicContainer33 = [registryCopy publicContainer];
  v100 = [publicContainer33 registerProtocol:&OBJC_PROTOCOL___FCArticleDownloadServiceType factory:&stru_1000C2D88];

  publicContainer34 = [registryCopy publicContainer];
  v102 = [publicContainer34 registerProtocol:&OBJC_PROTOCOL___FCIssueDownloadServiceType factory:&stru_1000C2DC8];

  publicContainer35 = [registryCopy publicContainer];
  v104 = [publicContainer35 registerProtocol:&OBJC_PROTOCOL___FCPuzzleDownloadServiceType factory:&stru_1000C2E08];

  publicContainer36 = [registryCopy publicContainer];
  v106 = [publicContainer36 registerProtocol:&OBJC_PROTOCOL___FCRecipeDownloadServiceType factory:&stru_1000C2E48];

  publicContainer37 = [registryCopy publicContainer];
  v108 = [publicContainer37 registerProtocol:&OBJC_PROTOCOL___FCAVAssetPrewarming factory:&stru_1000C2E88];
  v109 = [v108 inScope:2];

  publicContainer38 = [registryCopy publicContainer];
  v111 = [publicContainer38 registerProtocol:&OBJC_PROTOCOL___FCAVAssetFactoryType factory:&stru_1000C2EC8];
  v112 = [v111 inScope:2];

  publicContainer39 = [registryCopy publicContainer];
  v114 = [publicContainer39 registerProtocol:&OBJC_PROTOCOL___TSSharedImageCacheType factory:&stru_1000C2F08];
  v115 = [v114 inScope:2];

  publicContainer40 = [registryCopy publicContainer];
  v117 = [publicContainer40 registerProtocol:&OBJC_PROTOCOL___TSSharedImageCacheType name:@"Format" factory:&stru_1000C2F28];
  v118 = [v117 inScope:2];

  publicContainer41 = [registryCopy publicContainer];
  v120 = [publicContainer41 registerProtocol:&OBJC_PROTOCOL___FCReceiptRefresherType factory:&stru_1000C2F68];

  publicContainer42 = [registryCopy publicContainer];
  v130[0] = _NSConcreteStackBlock;
  v130[1] = 3221225472;
  v130[2] = sub_100022CEC;
  v130[3] = &unk_1000C2F90;
  v130[4] = self;
  v122 = [publicContainer42 registerProtocol:&OBJC_PROTOCOL___NUAppActivityMonitor factory:v130];
  v123 = [v122 inScope:2];

  publicContainer43 = [registryCopy publicContainer];
  v125 = [publicContainer43 registerProtocol:&OBJC_PROTOCOL___FCNotificationPoolServiceType factory:&stru_1000C2FD0];
  v126 = [v125 inScope:2];

  privateContainer = [registryCopy privateContainer];

  v128 = [privateContainer registerClass:objc_opt_class() factory:&stru_1000C3010];
  v129 = [v128 inScope:2];
}

@end
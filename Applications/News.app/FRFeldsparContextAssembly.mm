@interface FRFeldsparContextAssembly
- (FRFeldsparContextAssembly)initWithContext:(id)context privateDataUpdateCoordinator:(id)coordinator;
- (void)loadInRegistry:(id)registry;
@end

@implementation FRFeldsparContextAssembly

- (FRFeldsparContextAssembly)initWithContext:(id)context privateDataUpdateCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  v11.receiver = self;
  v11.super_class = FRFeldsparContextAssembly;
  v9 = [(FRFeldsparContextAssembly *)&v11 init];
  if (v9)
  {
    if (!contextCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10007172C();
      if (!coordinatorCopy)
      {
LABEL_5:
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10007180C();
        }
      }
    }

    else if (!coordinatorCopy)
    {
      goto LABEL_5;
    }

    objc_storeStrong(&v9->_feldsparContext, context);
    objc_storeStrong(&v9->_privateDataUpdateCoordinator, coordinator);
  }

  return v9;
}

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  feldsparContext = [(FRFeldsparContextAssembly *)self feldsparContext];
  publicContainer = [registryCopy publicContainer];
  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3221225472;
  v92[2] = sub_10004EB00;
  v92[3] = &unk_1000C5240;
  v7 = feldsparContext;
  v93 = v7;
  v8 = [publicContainer registerProtocol:&OBJC_PROTOCOL___FRFeldsparContext factory:v92];

  publicContainer2 = [registryCopy publicContainer];
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_10004EB08;
  v90[3] = &unk_1000C5268;
  v10 = v7;
  v91 = v10;
  v11 = [publicContainer2 registerProtocol:&OBJC_PROTOCOL___FCFavoritesPersonalizer factory:v90];
  v12 = [v11 inScope:2];

  publicContainer3 = [registryCopy publicContainer];
  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = sub_10004EB10;
  v88[3] = &unk_1000C5290;
  v14 = v10;
  v89 = v14;
  v15 = [publicContainer3 registerProtocol:&OBJC_PROTOCOL___FCAutoFavoritesPreparer name:@"legacy" factory:v88];
  v16 = [v15 inScope:2];

  publicContainer4 = [registryCopy publicContainer];
  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_10004EB18;
  v86[3] = &unk_1000C52B8;
  v18 = v14;
  v87 = v18;
  v19 = [publicContainer4 registerProtocol:&OBJC_PROTOCOL___FCPersonalizationAllowlistProvider factory:v86];
  v20 = [v19 inScope:2];

  publicContainer5 = [registryCopy publicContainer];
  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = sub_10004EB20;
  v84[3] = &unk_1000C52E0;
  v22 = v18;
  v85 = v22;
  v23 = [publicContainer5 registerProtocol:&OBJC_PROTOCOL___FCPersonalizationBundleIDMappingProvider factory:v84];
  v24 = [v23 inScope:2];

  publicContainer6 = [registryCopy publicContainer];
  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = sub_10004EB28;
  v82[3] = &unk_1000C5308;
  v26 = v22;
  v83 = v26;
  v27 = [publicContainer6 registerProtocol:&OBJC_PROTOCOL___FCPersonalizationURLMappingProvider factory:v82];
  v28 = [v27 inScope:2];

  publicContainer7 = [registryCopy publicContainer];
  v30 = objc_opt_class();
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_10004EB30;
  v80[3] = &unk_1000C5330;
  v31 = v26;
  v81 = v31;
  v32 = [publicContainer7 registerClass:v30 factory:v80];
  v33 = [v32 inScope:3];

  publicContainer8 = [registryCopy publicContainer];
  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3221225472;
  v78[2] = sub_10004EB38;
  v78[3] = &unk_1000C5358;
  v35 = v31;
  v79 = v35;
  v36 = [publicContainer8 registerProtocol:&OBJC_PROTOCOL___TSAppMonitorManagerType factory:v78];

  publicContainer9 = [registryCopy publicContainer];
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_10004EB40;
  v76[3] = &unk_1000C5380;
  v38 = v35;
  v77 = v38;
  v39 = [publicContainer9 registerProtocol:&OBJC_PROTOCOL___NUSpotlightManager factory:v76];

  publicContainer10 = [registryCopy publicContainer];
  v41 = objc_opt_class();
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_10004EB48;
  v74[3] = &unk_1000C53A8;
  v42 = v38;
  v75 = v42;
  v43 = [publicContainer10 registerClass:v41 factory:v74];

  publicContainer11 = [registryCopy publicContainer];
  v45 = objc_opt_class();
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_10004EB50;
  v72[3] = &unk_1000C53D0;
  v46 = v42;
  v73 = v46;
  v47 = [publicContainer11 registerClass:v45 factory:v72];

  publicContainer12 = [registryCopy publicContainer];
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_10004EB58;
  v70[3] = &unk_1000C53F8;
  v71 = v46;
  v49 = v46;
  v50 = [publicContainer12 registerProtocol:&OBJC_PROTOCOL___TSPrefetchedArticlesServiceType factory:v70];

  cloudContext = [v49 cloudContext];
  publicContainer13 = [registryCopy publicContainer];
  v53 = objc_opt_class();
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_10004EBE4;
  v68[3] = &unk_1000C5420;
  v54 = cloudContext;
  v69 = v54;
  v55 = [publicContainer13 registerClass:v53 factory:v68];
  v56 = [v55 inScope:2];

  privateContainer = [registryCopy privateContainer];
  v58 = [privateContainer registerProtocol:&OBJC_PROTOCOL___FRLimitedPersonalizationDataGeneratorType factory:&stru_1000C5460];

  publicContainer14 = [registryCopy publicContainer];

  v60 = objc_opt_class();
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_10004EDE0;
  v65[3] = &unk_1000C5488;
  v66 = v54;
  selfCopy = self;
  v61 = v54;
  v62 = [publicContainer14 registerClass:v60 factory:v65];
  v63 = [v62 inScope:2];
  v64 = [v63 withConfiguration:&stru_1000C54C8];
}

@end
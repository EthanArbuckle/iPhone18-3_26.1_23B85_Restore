@interface FRFeldsparContextAssembly
- (FRFeldsparContextAssembly)initWithContext:(id)a3 privateDataUpdateCoordinator:(id)a4;
- (void)loadInRegistry:(id)a3;
@end

@implementation FRFeldsparContextAssembly

- (FRFeldsparContextAssembly)initWithContext:(id)a3 privateDataUpdateCoordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = FRFeldsparContextAssembly;
  v9 = [(FRFeldsparContextAssembly *)&v11 init];
  if (v9)
  {
    if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10007172C();
      if (!v8)
      {
LABEL_5:
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10007180C();
        }
      }
    }

    else if (!v8)
    {
      goto LABEL_5;
    }

    objc_storeStrong(&v9->_feldsparContext, a3);
    objc_storeStrong(&v9->_privateDataUpdateCoordinator, a4);
  }

  return v9;
}

- (void)loadInRegistry:(id)a3
{
  v4 = a3;
  v5 = [(FRFeldsparContextAssembly *)self feldsparContext];
  v6 = [v4 publicContainer];
  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3221225472;
  v92[2] = sub_10004EB00;
  v92[3] = &unk_1000C5240;
  v7 = v5;
  v93 = v7;
  v8 = [v6 registerProtocol:&OBJC_PROTOCOL___FRFeldsparContext factory:v92];

  v9 = [v4 publicContainer];
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_10004EB08;
  v90[3] = &unk_1000C5268;
  v10 = v7;
  v91 = v10;
  v11 = [v9 registerProtocol:&OBJC_PROTOCOL___FCFavoritesPersonalizer factory:v90];
  v12 = [v11 inScope:2];

  v13 = [v4 publicContainer];
  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = sub_10004EB10;
  v88[3] = &unk_1000C5290;
  v14 = v10;
  v89 = v14;
  v15 = [v13 registerProtocol:&OBJC_PROTOCOL___FCAutoFavoritesPreparer name:@"legacy" factory:v88];
  v16 = [v15 inScope:2];

  v17 = [v4 publicContainer];
  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_10004EB18;
  v86[3] = &unk_1000C52B8;
  v18 = v14;
  v87 = v18;
  v19 = [v17 registerProtocol:&OBJC_PROTOCOL___FCPersonalizationAllowlistProvider factory:v86];
  v20 = [v19 inScope:2];

  v21 = [v4 publicContainer];
  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = sub_10004EB20;
  v84[3] = &unk_1000C52E0;
  v22 = v18;
  v85 = v22;
  v23 = [v21 registerProtocol:&OBJC_PROTOCOL___FCPersonalizationBundleIDMappingProvider factory:v84];
  v24 = [v23 inScope:2];

  v25 = [v4 publicContainer];
  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = sub_10004EB28;
  v82[3] = &unk_1000C5308;
  v26 = v22;
  v83 = v26;
  v27 = [v25 registerProtocol:&OBJC_PROTOCOL___FCPersonalizationURLMappingProvider factory:v82];
  v28 = [v27 inScope:2];

  v29 = [v4 publicContainer];
  v30 = objc_opt_class();
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_10004EB30;
  v80[3] = &unk_1000C5330;
  v31 = v26;
  v81 = v31;
  v32 = [v29 registerClass:v30 factory:v80];
  v33 = [v32 inScope:3];

  v34 = [v4 publicContainer];
  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3221225472;
  v78[2] = sub_10004EB38;
  v78[3] = &unk_1000C5358;
  v35 = v31;
  v79 = v35;
  v36 = [v34 registerProtocol:&OBJC_PROTOCOL___TSAppMonitorManagerType factory:v78];

  v37 = [v4 publicContainer];
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_10004EB40;
  v76[3] = &unk_1000C5380;
  v38 = v35;
  v77 = v38;
  v39 = [v37 registerProtocol:&OBJC_PROTOCOL___NUSpotlightManager factory:v76];

  v40 = [v4 publicContainer];
  v41 = objc_opt_class();
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_10004EB48;
  v74[3] = &unk_1000C53A8;
  v42 = v38;
  v75 = v42;
  v43 = [v40 registerClass:v41 factory:v74];

  v44 = [v4 publicContainer];
  v45 = objc_opt_class();
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_10004EB50;
  v72[3] = &unk_1000C53D0;
  v46 = v42;
  v73 = v46;
  v47 = [v44 registerClass:v45 factory:v72];

  v48 = [v4 publicContainer];
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_10004EB58;
  v70[3] = &unk_1000C53F8;
  v71 = v46;
  v49 = v46;
  v50 = [v48 registerProtocol:&OBJC_PROTOCOL___TSPrefetchedArticlesServiceType factory:v70];

  v51 = [v49 cloudContext];
  v52 = [v4 publicContainer];
  v53 = objc_opt_class();
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_10004EBE4;
  v68[3] = &unk_1000C5420;
  v54 = v51;
  v69 = v54;
  v55 = [v52 registerClass:v53 factory:v68];
  v56 = [v55 inScope:2];

  v57 = [v4 privateContainer];
  v58 = [v57 registerProtocol:&OBJC_PROTOCOL___FRLimitedPersonalizationDataGeneratorType factory:&stru_1000C5460];

  v59 = [v4 publicContainer];

  v60 = objc_opt_class();
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_10004EDE0;
  v65[3] = &unk_1000C5488;
  v66 = v54;
  v67 = self;
  v61 = v54;
  v62 = [v59 registerClass:v60 factory:v65];
  v63 = [v62 inScope:2];
  v64 = [v63 withConfiguration:&stru_1000C54C8];
}

@end
@interface AKInheritanceDaemonService
- (void)_executeRequestWithContext:(id)a3 urlBagKey:(id)a4 shouldSignWithIdentityToken:(BOOL)a5 completion:(id)a6;
- (void)_setupBeneficiaryAliasWithInheritanceContext:(id)a3 completion:(id)a4;
- (void)configureExportedInterface:(id)a3;
- (void)fetchManifestOptionsWithInheritanceContext:(id)a3 completion:(id)a4;
- (void)removeBeneficiaryWithInheritanceContext:(id)a3 completion:(id)a4;
- (void)setupBeneficiaryWithInheritanceContext:(id)a3 completion:(id)a4;
- (void)updateBeneficiaryWithInheritanceContext:(id)a3 completion:(id)a4;
@end

@implementation AKInheritanceDaemonService

- (void)configureExportedInterface:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v9[2] = objc_opt_class();
  v9[3] = objc_opt_class();
  v9[4] = objc_opt_class();
  v9[5] = objc_opt_class();
  v9[6] = objc_opt_class();
  v9[7] = objc_opt_class();
  v9[8] = objc_opt_class();
  v9[9] = objc_opt_class();
  v9[10] = objc_opt_class();
  v9[11] = objc_opt_class();
  v9[12] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v9 count:13];
  v6 = [NSSet setWithArray:?];
  _objc_release(v3);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v8[3] = objc_opt_class();
  v8[4] = objc_opt_class();
  v8[5] = objc_opt_class();
  v4 = [NSArray arrayWithObjects:v8 count:6];
  v5 = [NSSet setWithArray:?];
  _objc_release(v4);
  [location[0] setClasses:v6 forSelector:"fetchManifestOptionsWithInheritanceContext:completion:" argumentIndex:? ofReply:?];
  [location[0] setClasses:v5 forSelector:"fetchManifestOptionsWithInheritanceContext:completion:" argumentIndex:0 ofReply:1];
  [location[0] setClasses:v6 forSelector:"setupBeneficiaryWithInheritanceContext:completion:" argumentIndex:0 ofReply:0];
  [location[0] setClasses:v5 forSelector:"setupBeneficiaryWithInheritanceContext:completion:" argumentIndex:0 ofReply:1];
  [location[0] setClasses:v6 forSelector:"updateBeneficiaryWithInheritanceContext:completion:" argumentIndex:0 ofReply:0];
  [location[0] setClasses:v5 forSelector:"updateBeneficiaryWithInheritanceContext:completion:" argumentIndex:0 ofReply:1];
  [location[0] setClasses:v6 forSelector:"removeBeneficiaryWithInheritanceContext:completion:" argumentIndex:0 ofReply:0];
  [location[0] setClasses:v5 forSelector:"removeBeneficiaryWithInheritanceContext:completion:" argumentIndex:0 ofReply:1];
  [location[0] setClasses:v6 forSelector:"_setupBeneficiaryAliasWithInheritanceContext:completion:" argumentIndex:0 ofReply:0];
  [location[0] setClasses:v5 forSelector:"_setupBeneficiaryAliasWithInheritanceContext:completion:" argumentIndex:0 ofReply:1];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchManifestOptionsWithInheritanceContext:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v7 = v16;
  v5 = location[0];
  v6 = AKURLBagKeyInheritanceFetchDataSelectionOptionsKey;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100148B04;
  v12 = &unk_100321258;
  v13 = _objc_retain(v14);
  [(AKInheritanceDaemonService *)v7 _executeRequestWithContext:v5 urlBagKey:v6 shouldSignWithIdentityToken:0 completion:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)setupBeneficiaryWithInheritanceContext:(id)a3 completion:(id)a4
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v12 = [location[0] beneficiarySetupToken];
  _objc_release(v12);
  if (v12)
  {
    v6 = v26;
    v4 = location[0];
    v5 = AKURLBagKeyInheritanceSetupBeneficiaryKey;
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_100148EFC;
    v17 = &unk_100320A58;
    v18 = _objc_retain(location[0]);
    v19 = _objc_retain(v24);
    [(AKInheritanceDaemonService *)v6 _executeRequestWithContext:v4 urlBagKey:v5 shouldSignWithIdentityToken:0 completion:&v13];
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    v20 = 0;
  }

  else
  {
    v23 = _AKLogSystem();
    v22 = 16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      log = v23;
      type = v22;
      sub_10001CEEC(v21);
      _os_log_error_impl(&_mh_execute_header, log, type, "Missing beneficiary setup short-lived token.", v21, 2u);
    }

    objc_storeStrong(&v23, 0);
    if (v24)
    {
      v7 = v24;
      v8 = [NSError ak_errorWithCode:-7044];
      v7[2]();
      _objc_release(v8);
    }

    v20 = 1;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)removeBeneficiaryWithInheritanceContext:(id)a3 completion:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v7 = v17;
  v5 = location[0];
  v6 = AKURLBagKeyInheritanceRemoveBeneficiaryKey;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001491E8;
  v12 = &unk_100320A58;
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v15);
  [(AKInheritanceDaemonService *)v7 _executeRequestWithContext:v5 urlBagKey:v6 shouldSignWithIdentityToken:0 completion:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)updateBeneficiaryWithInheritanceContext:(id)a3 completion:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v7 = v17;
  v5 = location[0];
  v6 = AKURLBagKeyInheritanceUpdateBeneficiaryKey;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001494D4;
  v12 = &unk_100320A58;
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v15);
  [(AKInheritanceDaemonService *)v7 _executeRequestWithContext:v5 urlBagKey:v6 shouldSignWithIdentityToken:0 completion:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_setupBeneficiaryAliasWithInheritanceContext:(id)a3 completion:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = _AKLogSystem();
  v15 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v20, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v16, v15, "Setting up Beneficiary Alias with context - \n%@", v20, 0xCu);
  }

  objc_storeStrong(&v16, 0);
  v6 = v19;
  v4 = location[0];
  v5 = AKURLBagKeyInheritanceSetupBeneficiaryAliasKey;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10014986C;
  v12 = &unk_100320A58;
  v13 = _objc_retain(location[0]);
  v14 = _objc_retain(v17);
  [(AKInheritanceDaemonService *)v6 _executeRequestWithContext:v4 urlBagKey:v5 shouldSignWithIdentityToken:1 completion:&v8];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_executeRequestWithContext:(id)a3 urlBagKey:(id)a4 shouldSignWithIdentityToken:(BOOL)a5 completion:(id)a6
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v29 = a5;
  v28 = 0;
  objc_storeStrong(&v28, a6);
  v6 = [AKInheritanceRequestProvider alloc];
  v27 = [(AKInheritanceRequestProvider *)v6 initWithContext:location[0] urlBagKey:v30];
  [v27 setSignWithIdentityToken:v29];
  v21[0] = 0;
  v21[1] = v21;
  v22 = 838860800;
  v23 = 48;
  v24 = sub_100003D4C;
  v25 = sub_1000113B0;
  v26 = 0;
  v11 = [AKServiceControllerImpl alloc];
  v20 = [(AKServiceControllerImpl *)v11 initWithRequestProvider:v27];
  v19 = objc_alloc_init(AKAuthHandlerImpl);
  [v19 setForceSilentAuth:1];
  [v20 setAuthenticationDelegate:v19];
  v7 = v20;
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_100149DF8;
  v16 = &unk_1003246C8;
  v17 = _objc_retain(v27);
  v18[1] = v21;
  v18[0] = _objc_retain(v28);
  [v7 executeRequestWithCompletion:&v12];
  objc_storeStrong(v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  _Block_object_dispose(v21, 8);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

@end
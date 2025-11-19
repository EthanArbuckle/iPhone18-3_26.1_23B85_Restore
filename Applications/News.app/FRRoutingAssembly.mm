@interface FRRoutingAssembly
- (FRRoutingAssembly)initWithFeldsparContext:(id)a3 bridgedAppDelegate:(id)a4 window:(id)a5;
- (UIApplicationDelegate)bridgedAppDelegate;
- (void)loadInRegistry:(id)a3;
@end

@implementation FRRoutingAssembly

- (UIApplicationDelegate)bridgedAppDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bridgedAppDelegate);

  return WeakRetained;
}

- (FRRoutingAssembly)initWithFeldsparContext:(id)a3 bridgedAppDelegate:(id)a4 window:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F9B8();
  }

  v15.receiver = self;
  v15.super_class = FRRoutingAssembly;
  v12 = [(FRRoutingAssembly *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_feldsparContext, a3);
    objc_storeWeak(&v13->_bridgedAppDelegate, v10);
    objc_storeStrong(&v13->_window, a5);
  }

  return v13;
}

- (void)loadInRegistry:(id)a3
{
  v4 = a3;
  v5 = [v4 callback];
  v6 = TFCallbackScopeAny();
  [v5 whenResolvingProtocol:&OBJC_PROTOCOL___FRURLRouterManagerType scope:v6 callbackBlock:&stru_1000C3D58];

  v7 = [v4 publicContainer];
  v8 = [v7 registerProtocol:&OBJC_PROTOCOL___FRURLRouterManagerType factory:&stru_1000C3D98];

  v9 = [v4 privateContainer];
  v10 = [v9 registerClass:objc_opt_class() factory:&stru_1000C3DD8];

  v11 = [v4 privateContainer];
  v12 = [v11 registerClass:objc_opt_class() factory:&stru_1000C3E18];

  v13 = [v4 publicContainer];
  v14 = [v13 registerClass:objc_opt_class() factory:&stru_1000C3E58];

  v15 = [v4 publicContainer];
  v16 = [v15 registerProtocol:&OBJC_PROTOCOL___FRURLAnalyticsReferralFactory factory:&stru_1000C3E98];

  v17 = [v4 privateContainer];
  v18 = [v17 registerClass:objc_opt_class() factory:&stru_1000C3ED8];

  v19 = [v4 privateContainer];
  v20 = [v19 registerClass:objc_opt_class() factory:&stru_1000C3F18];
  v21 = [v20 withConfiguration:&stru_1000C3F58];

  v22 = [v4 publicContainer];
  v23 = [v22 registerProtocol:&OBJC_PROTOCOL___TSExplicitContentRestrictionAlertPresenter factory:&stru_1000C3F98];
  v24 = [v23 inScope:2];

  v25 = [(FRRoutingAssembly *)self bridgedAppDelegate];
  v26 = [v4 publicContainer];
  v27 = objc_opt_class();
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000395C4;
  v37[3] = &unk_1000C3FC0;
  v38 = v25;
  v28 = v25;
  v29 = [v26 registerClass:v27 factory:v37];

  v30 = [v4 publicContainer];
  v31 = [v30 registerProtocol:&OBJC_PROTOCOL___TSNewsActivityIntentSerializer factory:&stru_1000C3FE0];

  v32 = [v4 publicContainer];
  v33 = [v32 registerProtocol:&OBJC_PROTOCOL___TSNewsActivityIntentDeserializer factory:&stru_1000C4000];

  v34 = [v4 publicContainer];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10003969C;
  v36[3] = &unk_1000C26A8;
  v36[4] = self;
  v35 = [v34 registerProtocol:&OBJC_PROTOCOL___TSWelcomeDataManagerType factory:v36];
}

@end
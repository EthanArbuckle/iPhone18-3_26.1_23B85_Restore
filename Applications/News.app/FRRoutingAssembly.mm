@interface FRRoutingAssembly
- (FRRoutingAssembly)initWithFeldsparContext:(id)context bridgedAppDelegate:(id)delegate window:(id)window;
- (UIApplicationDelegate)bridgedAppDelegate;
- (void)loadInRegistry:(id)registry;
@end

@implementation FRRoutingAssembly

- (UIApplicationDelegate)bridgedAppDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bridgedAppDelegate);

  return WeakRetained;
}

- (FRRoutingAssembly)initWithFeldsparContext:(id)context bridgedAppDelegate:(id)delegate window:(id)window
{
  contextCopy = context;
  delegateCopy = delegate;
  windowCopy = window;
  if (!delegateCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006F9B8();
  }

  v15.receiver = self;
  v15.super_class = FRRoutingAssembly;
  v12 = [(FRRoutingAssembly *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_feldsparContext, context);
    objc_storeWeak(&v13->_bridgedAppDelegate, delegateCopy);
    objc_storeStrong(&v13->_window, window);
  }

  return v13;
}

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  callback = [registryCopy callback];
  v6 = TFCallbackScopeAny();
  [callback whenResolvingProtocol:&OBJC_PROTOCOL___FRURLRouterManagerType scope:v6 callbackBlock:&stru_1000C3D58];

  publicContainer = [registryCopy publicContainer];
  v8 = [publicContainer registerProtocol:&OBJC_PROTOCOL___FRURLRouterManagerType factory:&stru_1000C3D98];

  privateContainer = [registryCopy privateContainer];
  v10 = [privateContainer registerClass:objc_opt_class() factory:&stru_1000C3DD8];

  privateContainer2 = [registryCopy privateContainer];
  v12 = [privateContainer2 registerClass:objc_opt_class() factory:&stru_1000C3E18];

  publicContainer2 = [registryCopy publicContainer];
  v14 = [publicContainer2 registerClass:objc_opt_class() factory:&stru_1000C3E58];

  publicContainer3 = [registryCopy publicContainer];
  v16 = [publicContainer3 registerProtocol:&OBJC_PROTOCOL___FRURLAnalyticsReferralFactory factory:&stru_1000C3E98];

  privateContainer3 = [registryCopy privateContainer];
  v18 = [privateContainer3 registerClass:objc_opt_class() factory:&stru_1000C3ED8];

  privateContainer4 = [registryCopy privateContainer];
  v20 = [privateContainer4 registerClass:objc_opt_class() factory:&stru_1000C3F18];
  v21 = [v20 withConfiguration:&stru_1000C3F58];

  publicContainer4 = [registryCopy publicContainer];
  v23 = [publicContainer4 registerProtocol:&OBJC_PROTOCOL___TSExplicitContentRestrictionAlertPresenter factory:&stru_1000C3F98];
  v24 = [v23 inScope:2];

  bridgedAppDelegate = [(FRRoutingAssembly *)self bridgedAppDelegate];
  publicContainer5 = [registryCopy publicContainer];
  v27 = objc_opt_class();
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000395C4;
  v37[3] = &unk_1000C3FC0;
  v38 = bridgedAppDelegate;
  v28 = bridgedAppDelegate;
  v29 = [publicContainer5 registerClass:v27 factory:v37];

  publicContainer6 = [registryCopy publicContainer];
  v31 = [publicContainer6 registerProtocol:&OBJC_PROTOCOL___TSNewsActivityIntentSerializer factory:&stru_1000C3FE0];

  publicContainer7 = [registryCopy publicContainer];
  v33 = [publicContainer7 registerProtocol:&OBJC_PROTOCOL___TSNewsActivityIntentDeserializer factory:&stru_1000C4000];

  publicContainer8 = [registryCopy publicContainer];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10003969C;
  v36[3] = &unk_1000C26A8;
  v36[4] = self;
  v35 = [publicContainer8 registerProtocol:&OBJC_PROTOCOL___TSWelcomeDataManagerType factory:v36];
}

@end
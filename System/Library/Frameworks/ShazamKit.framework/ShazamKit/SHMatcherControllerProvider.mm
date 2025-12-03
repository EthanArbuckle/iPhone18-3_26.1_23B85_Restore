@interface SHMatcherControllerProvider
- (SHMatcherControllerProvider)initWithAudioTapProvider:(id)provider attribution:(id)attribution clientType:(int64_t)type musicalFeaturesConfiguration:(id)configuration;
- (SHServiceDelegate)delegate;
- (id)associatedMatcherControllerForRequest:(id)request;
- (id)catalogForRequest:(id)request;
- (id)matcherControllerForRequest:(id)request;
@end

@implementation SHMatcherControllerProvider

- (SHMatcherControllerProvider)initWithAudioTapProvider:(id)provider attribution:(id)attribution clientType:(int64_t)type musicalFeaturesConfiguration:(id)configuration
{
  providerCopy = provider;
  attributionCopy = attribution;
  configurationCopy = configuration;
  v19.receiver = self;
  v19.super_class = SHMatcherControllerProvider;
  v14 = [(SHMatcherControllerProvider *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_audioTapProvider, provider);
    objc_storeStrong(&v15->_attribution, attribution);
    v15->_clientType = type;
    v16 = [[SHMatcherFactory alloc] initWithAudioTapProvider:v15->_audioTapProvider];
    matcherFactory = v15->_matcherFactory;
    v15->_matcherFactory = v16;

    objc_storeStrong(&v15->_musicalFeaturesConfiguration, configuration);
  }

  return v15;
}

- (id)matcherControllerForRequest:(id)request
{
  requestCopy = request;
  v5 = [requestCopy type] - 1;
  delegate = [(SHMatcherControllerProvider *)self delegate];
  v7 = [[NSUUID alloc] initWithUUIDString:@"9846B3A1-6769-4363-8AA2-214973BD05A0"];
  v8 = [delegate registeredWorkerForWorkerID:v7];

  if (v5 <= 2 && v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = sh_log_object();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v35 = 138412290;
      v36 = requestCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to create matcher for request %@, there is already a recording matcher with an associate matcher controller running", &v35, 0xCu);
    }

    v33 = 0;
  }

  else
  {
    v9 = [(SHMatcherControllerProvider *)self associatedMatcherControllerForRequest:requestCopy];
    if ([requestCopy type] == 2 && (-[NSObject matcher](v9, "matcher"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "conformsToProtocol:", &OBJC_PROTOCOL___SHParentMatcher), v10, v11))
    {
      matcher = [v9 matcher];
      childMatcher = [matcher childMatcher];
    }

    else
    {
      childMatcher = 0;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    taskID = [v8 taskID];
    requestID = [requestCopy requestID];
    v17 = [taskID isEqual:requestID];

    v18 = [(SHMatcherControllerProvider *)self catalogForRequest:requestCopy];
    if ((isKindOfClass & 1) != 0 && v17)
    {
      v19 = sh_log_object();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v35) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Starting recording with buffer from pre recording", &v35, 2u);
      }

      matcherFactory = [(SHMatcherControllerProvider *)self matcherFactory];
      buffers = [v8 buffers];
      v22 = [matcherFactory matcherForRequest:requestCopy catalog:v18 initialBuffers:buffers];

      [v8 stopAfterTransferingBuffers];
      childMatcher = v22;
    }

    if (childMatcher || (-[SHMatcherControllerProvider matcherFactory](self, "matcherFactory"), v23 = objc_claimAutoreleasedReturnValue(), [v23 matcherForRequest:requestCopy catalog:v18], childMatcher = objc_claimAutoreleasedReturnValue(), v23, childMatcher))
    {
      if ([requestCopy type] == 3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = childMatcher;
          v25 = +[SHMatcherRequest requestOnceWithNotifications:](SHMatcherRequest, "requestOnceWithNotifications:", [requestCopy sendNotifications]);
          matcherFactory2 = [(SHMatcherControllerProvider *)self matcherFactory];
          v27 = [matcherFactory2 matcherForRequest:v25 catalog:v18];
          [v24 setChildMatcher:v27];

          v28 = sh_log_object();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            childMatcher2 = [v24 childMatcher];
            v35 = 138412546;
            v36 = childMatcher2;
            v37 = 2112;
            v38 = v24;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Associating child matcher %@ with parent matcher %@", &v35, 0x16u);
          }
        }
      }

      v30 = [SHMatchResultNotificationScheduler alloc];
      attribution = [(SHMatcherControllerProvider *)self attribution];
      v32 = [(SHMatchResultNotificationScheduler *)v30 initWithAttribution:attribution];

      v33 = [[SHMatcherController alloc] initWithMatcher:childMatcher notificationScheduler:v32];
      if ([requestCopy type] == 2 && v9)
      {
        [v9 setAssociatedMatcherController:v33];
        [(SHMatcherController *)v33 setAssociatedMatcherController:v9];
      }
    }

    else
    {
      childMatcher = sh_log_object();
      if (os_log_type_enabled(childMatcher, OS_LOG_TYPE_ERROR))
      {
        v35 = 138412290;
        v36 = requestCopy;
        _os_log_impl(&_mh_execute_header, childMatcher, OS_LOG_TYPE_ERROR, "Unable to create matcher for request %@", &v35, 0xCu);
      }

      v33 = 0;
    }
  }

  return v33;
}

- (id)catalogForRequest:(id)request
{
  requestCopy = request;
  type = [requestCopy type];
  if ((type - 2) < 2 || type == 0)
  {
    v7 = [SHShazamKitServerCatalog alloc];
    attribution = [(SHMatcherControllerProvider *)self attribution];
    containingAppBundleIdentifier = [attribution containingAppBundleIdentifier];
    clientType = [(SHMatcherControllerProvider *)self clientType];
    installationID = [requestCopy installationID];
    musicalFeaturesConfiguration = [(SHMatcherControllerProvider *)self musicalFeaturesConfiguration];
    self = [(SHShazamKitServerCatalog *)v7 initWithClientIdentifier:containingAppBundleIdentifier clientType:clientType installationID:installationID musicalFeaturesConfiguration:musicalFeaturesConfiguration];
  }

  else if (type == 1)
  {
    self = objc_alloc_init(SHCustomCatalog);
  }

  return self;
}

- (id)associatedMatcherControllerForRequest:(id)request
{
  delegate = [(SHMatcherControllerProvider *)self delegate];
  v4 = [[NSUUID alloc] initWithUUIDString:@"89EAC1CA-426C-48AA-97CE-386AEDDCCC4C"];
  v5 = [delegate registeredWorkerForWorkerID:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (SHServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
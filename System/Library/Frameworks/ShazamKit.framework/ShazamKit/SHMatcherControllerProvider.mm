@interface SHMatcherControllerProvider
- (SHMatcherControllerProvider)initWithAudioTapProvider:(id)a3 attribution:(id)a4 clientType:(int64_t)a5 musicalFeaturesConfiguration:(id)a6;
- (SHServiceDelegate)delegate;
- (id)associatedMatcherControllerForRequest:(id)a3;
- (id)catalogForRequest:(id)a3;
- (id)matcherControllerForRequest:(id)a3;
@end

@implementation SHMatcherControllerProvider

- (SHMatcherControllerProvider)initWithAudioTapProvider:(id)a3 attribution:(id)a4 clientType:(int64_t)a5 musicalFeaturesConfiguration:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = SHMatcherControllerProvider;
  v14 = [(SHMatcherControllerProvider *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_audioTapProvider, a3);
    objc_storeStrong(&v15->_attribution, a4);
    v15->_clientType = a5;
    v16 = [[SHMatcherFactory alloc] initWithAudioTapProvider:v15->_audioTapProvider];
    matcherFactory = v15->_matcherFactory;
    v15->_matcherFactory = v16;

    objc_storeStrong(&v15->_musicalFeaturesConfiguration, a6);
  }

  return v15;
}

- (id)matcherControllerForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 type] - 1;
  v6 = [(SHMatcherControllerProvider *)self delegate];
  v7 = [[NSUUID alloc] initWithUUIDString:@"9846B3A1-6769-4363-8AA2-214973BD05A0"];
  v8 = [v6 registeredWorkerForWorkerID:v7];

  if (v5 <= 2 && v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = sh_log_object();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v35 = 138412290;
      v36 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to create matcher for request %@, there is already a recording matcher with an associate matcher controller running", &v35, 0xCu);
    }

    v33 = 0;
  }

  else
  {
    v9 = [(SHMatcherControllerProvider *)self associatedMatcherControllerForRequest:v4];
    if ([v4 type] == 2 && (-[NSObject matcher](v9, "matcher"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "conformsToProtocol:", &OBJC_PROTOCOL___SHParentMatcher), v10, v11))
    {
      v12 = [v9 matcher];
      v13 = [v12 childMatcher];
    }

    else
    {
      v13 = 0;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v15 = [v8 taskID];
    v16 = [v4 requestID];
    v17 = [v15 isEqual:v16];

    v18 = [(SHMatcherControllerProvider *)self catalogForRequest:v4];
    if ((isKindOfClass & 1) != 0 && v17)
    {
      v19 = sh_log_object();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v35) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Starting recording with buffer from pre recording", &v35, 2u);
      }

      v20 = [(SHMatcherControllerProvider *)self matcherFactory];
      v21 = [v8 buffers];
      v22 = [v20 matcherForRequest:v4 catalog:v18 initialBuffers:v21];

      [v8 stopAfterTransferingBuffers];
      v13 = v22;
    }

    if (v13 || (-[SHMatcherControllerProvider matcherFactory](self, "matcherFactory"), v23 = objc_claimAutoreleasedReturnValue(), [v23 matcherForRequest:v4 catalog:v18], v13 = objc_claimAutoreleasedReturnValue(), v23, v13))
    {
      if ([v4 type] == 3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = v13;
          v25 = +[SHMatcherRequest requestOnceWithNotifications:](SHMatcherRequest, "requestOnceWithNotifications:", [v4 sendNotifications]);
          v26 = [(SHMatcherControllerProvider *)self matcherFactory];
          v27 = [v26 matcherForRequest:v25 catalog:v18];
          [v24 setChildMatcher:v27];

          v28 = sh_log_object();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v29 = [v24 childMatcher];
            v35 = 138412546;
            v36 = v29;
            v37 = 2112;
            v38 = v24;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Associating child matcher %@ with parent matcher %@", &v35, 0x16u);
          }
        }
      }

      v30 = [SHMatchResultNotificationScheduler alloc];
      v31 = [(SHMatcherControllerProvider *)self attribution];
      v32 = [(SHMatchResultNotificationScheduler *)v30 initWithAttribution:v31];

      v33 = [[SHMatcherController alloc] initWithMatcher:v13 notificationScheduler:v32];
      if ([v4 type] == 2 && v9)
      {
        [v9 setAssociatedMatcherController:v33];
        [(SHMatcherController *)v33 setAssociatedMatcherController:v9];
      }
    }

    else
    {
      v13 = sh_log_object();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v35 = 138412290;
        v36 = v4;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unable to create matcher for request %@", &v35, 0xCu);
      }

      v33 = 0;
    }
  }

  return v33;
}

- (id)catalogForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if ((v5 - 2) < 2 || v5 == 0)
  {
    v7 = [SHShazamKitServerCatalog alloc];
    v8 = [(SHMatcherControllerProvider *)self attribution];
    v9 = [v8 containingAppBundleIdentifier];
    v10 = [(SHMatcherControllerProvider *)self clientType];
    v11 = [v4 installationID];
    v12 = [(SHMatcherControllerProvider *)self musicalFeaturesConfiguration];
    self = [(SHShazamKitServerCatalog *)v7 initWithClientIdentifier:v9 clientType:v10 installationID:v11 musicalFeaturesConfiguration:v12];
  }

  else if (v5 == 1)
  {
    self = objc_alloc_init(SHCustomCatalog);
  }

  return self;
}

- (id)associatedMatcherControllerForRequest:(id)a3
{
  v3 = [(SHMatcherControllerProvider *)self delegate];
  v4 = [[NSUUID alloc] initWithUUIDString:@"89EAC1CA-426C-48AA-97CE-386AEDDCCC4C"];
  v5 = [v3 registeredWorkerForWorkerID:v4];

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
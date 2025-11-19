@interface BuddyEnrollmentFlowMCBridge
- (BOOL)respondsToSelector:(SEL)a3;
- (BuddyEnrollmentFlowMCBridge)init;
- (void)installEnrollmentProfile:(id)a3 devicePasscode:(id)a4 personaID:(id)a5 rmAccountIdentifier:(id)a6 completionHandler:(id)a7;
- (void)installEnrollmentProfile:(id)a3 devicePasscode:(id)a4 personaID:(id)a5 rmAccountIdentifier:(id)a6 managedProfileIdentifiers:(id)a7 installationSource:(id)a8 completionHandler:(id)a9;
- (void)trackEnrollmentDirtyState:(id)a3;
@end

@implementation BuddyEnrollmentFlowMCBridge

- (BuddyEnrollmentFlowMCBridge)init
{
  v7 = a2;
  location = 0;
  v6.receiver = self;
  v6.super_class = BuddyEnrollmentFlowMCBridge;
  location = [(BuddyEnrollmentFlowMCBridge *)&v6 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = objc_alloc_init(sub_100136820());
    v3 = *(location + 2);
    *(location + 2) = v2;
  }

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8.receiver = self;
  v8.super_class = BuddyEnrollmentFlowMCBridge;
  v3 = [(BuddyEnrollmentFlowMCBridge *)&v8 respondsToSelector:a3];
  v6 = 0;
  v4 = 1;
  if ((v3 & 1) == 0)
  {
    v7 = [(BuddyEnrollmentFlowMCBridge *)v11 helper];
    v6 = 1;
    v4 = objc_opt_respondsToSelector();
  }

  v12 = v4 & 1;
  if (v6)
  {
  }

  return v12 & 1;
}

- (void)installEnrollmentProfile:(id)a3 devicePasscode:(id)a4 personaID:(id)a5 rmAccountIdentifier:(id)a6 completionHandler:(id)a7
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
  v12 = 0;
  objc_storeStrong(&v12, a6);
  v11 = 0;
  objc_storeStrong(&v11, a7);
  [(BuddyEnrollmentFlowMCBridge *)v16 installEnrollmentProfile:location[0] devicePasscode:v14 personaID:v13 rmAccountIdentifier:v12 managedProfileIdentifiers:0 installationSource:0 completionHandler:v11];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)installEnrollmentProfile:(id)a3 devicePasscode:(id)a4 personaID:(id)a5 rmAccountIdentifier:(id)a6 managedProfileIdentifiers:(id)a7 installationSource:(id)a8 completionHandler:(id)a9
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = 0;
  objc_storeStrong(&v25, a5);
  v24 = 0;
  objc_storeStrong(&v24, a6);
  v23 = 0;
  objc_storeStrong(&v23, a7);
  v22 = 0;
  objc_storeStrong(&v22, a8);
  v21 = 0;
  objc_storeStrong(&v21, a9);
  v14 = [(BuddyEnrollmentFlowMCBridge *)v28 profileInstallationRequestHandler];

  if (v14)
  {
    v20 = 0;
    obj = 0;
    v15 = [(BuddyEnrollmentFlowMCBridge *)v28 detailsFromMDMProfile:location[0] error:&obj];
    objc_storeStrong(&v20, obj);
    v19 = [v15 objectForKeyedSubscript:kMCBridgeProfileIdentifierKey];

    if (v20)
    {
      oslog = _BYLoggingFacility();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_100071CBC(buf, v20);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "BuddyEnrollmentFlowMCBridge: Invalid profile! Error: %{public}@", buf, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    v16 = [(BuddyEnrollmentFlowMCBridge *)v28 profileInstallationRequestHandler];
    v16[2](v16, location[0], v19, v24, v21);

    [(BuddyEnrollmentFlowMCBridge *)v28 setProfileInstallationRequestHandler:0];
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)trackEnrollmentDirtyState:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

@end
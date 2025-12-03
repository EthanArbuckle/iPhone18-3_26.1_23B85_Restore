@interface BuddyEnrollmentFlowMCBridge
- (BOOL)respondsToSelector:(SEL)selector;
- (BuddyEnrollmentFlowMCBridge)init;
- (void)installEnrollmentProfile:(id)profile devicePasscode:(id)passcode personaID:(id)d rmAccountIdentifier:(id)identifier completionHandler:(id)handler;
- (void)installEnrollmentProfile:(id)profile devicePasscode:(id)passcode personaID:(id)d rmAccountIdentifier:(id)identifier managedProfileIdentifiers:(id)identifiers installationSource:(id)source completionHandler:(id)handler;
- (void)trackEnrollmentDirtyState:(id)state;
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

- (BOOL)respondsToSelector:(SEL)selector
{
  selfCopy = self;
  v10 = a2;
  selectorCopy = selector;
  v8.receiver = self;
  v8.super_class = BuddyEnrollmentFlowMCBridge;
  v3 = [(BuddyEnrollmentFlowMCBridge *)&v8 respondsToSelector:selector];
  v6 = 0;
  v4 = 1;
  if ((v3 & 1) == 0)
  {
    helper = [(BuddyEnrollmentFlowMCBridge *)selfCopy helper];
    v6 = 1;
    v4 = objc_opt_respondsToSelector();
  }

  v12 = v4 & 1;
  if (v6)
  {
  }

  return v12 & 1;
}

- (void)installEnrollmentProfile:(id)profile devicePasscode:(id)passcode personaID:(id)d rmAccountIdentifier:(id)identifier completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, profile);
  v14 = 0;
  objc_storeStrong(&v14, passcode);
  v13 = 0;
  objc_storeStrong(&v13, d);
  v12 = 0;
  objc_storeStrong(&v12, identifier);
  v11 = 0;
  objc_storeStrong(&v11, handler);
  [(BuddyEnrollmentFlowMCBridge *)selfCopy installEnrollmentProfile:location[0] devicePasscode:v14 personaID:v13 rmAccountIdentifier:v12 managedProfileIdentifiers:0 installationSource:0 completionHandler:v11];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)installEnrollmentProfile:(id)profile devicePasscode:(id)passcode personaID:(id)d rmAccountIdentifier:(id)identifier managedProfileIdentifiers:(id)identifiers installationSource:(id)source completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, profile);
  v26 = 0;
  objc_storeStrong(&v26, passcode);
  v25 = 0;
  objc_storeStrong(&v25, d);
  v24 = 0;
  objc_storeStrong(&v24, identifier);
  v23 = 0;
  objc_storeStrong(&v23, identifiers);
  v22 = 0;
  objc_storeStrong(&v22, source);
  v21 = 0;
  objc_storeStrong(&v21, handler);
  profileInstallationRequestHandler = [(BuddyEnrollmentFlowMCBridge *)selfCopy profileInstallationRequestHandler];

  if (profileInstallationRequestHandler)
  {
    v20 = 0;
    obj = 0;
    v15 = [(BuddyEnrollmentFlowMCBridge *)selfCopy detailsFromMDMProfile:location[0] error:&obj];
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

    profileInstallationRequestHandler2 = [(BuddyEnrollmentFlowMCBridge *)selfCopy profileInstallationRequestHandler];
    profileInstallationRequestHandler2[2](profileInstallationRequestHandler2, location[0], v19, v24, v21);

    [(BuddyEnrollmentFlowMCBridge *)selfCopy setProfileInstallationRequestHandler:0];
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

- (void)trackEnrollmentDirtyState:(id)state
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, state);
  objc_storeStrong(location, 0);
}

@end
@interface AKMDMInformationProvider
- (BOOL)_shouldGetMDMInformationForAccount:(id)a3 accountManager:(id)a4;
- (BOOL)_shouldGetMDMInformationForAuthContext:(id)a3;
- (id)_fetchMDMInformationFromDeviceManagementClient;
- (id)fetchMDMInformationIfNecessaryForAccount:(id)a3 accountManager:(id)a4;
- (id)fetchMDMInformationIfNecessaryForAuthContext:(id)a3;
@end

@implementation AKMDMInformationProvider

- (id)fetchMDMInformationIfNecessaryForAuthContext:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(AKMDMInformationProvider *)v6 _shouldGetMDMInformationForAuthContext:location[0]])
  {
    v7 = [(AKMDMInformationProvider *)v6 _fetchMDMInformationFromDeviceManagementClient];
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v7;

  return v3;
}

- (id)fetchMDMInformationIfNecessaryForAccount:(id)a3 accountManager:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if ([(AKMDMInformationProvider *)v9 _shouldGetMDMInformationForAccount:location[0] accountManager:v7])
  {
    v10 = [(AKMDMInformationProvider *)v9 _fetchMDMInformationFromDeviceManagementClient];
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  v4 = v10;

  return v4;
}

- (BOOL)_shouldGetMDMInformationForAuthContext:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [location[0] isMDMInformationRequired];
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    if (v7)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    sub_1000194D4(v9, v3);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "E+E: Context requested to verify MDM information : %@", v9, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = v7;
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)_shouldGetMDMInformationForAccount:(id)a3 accountManager:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = [v10 mdmInformationRequiredForAccount:location[0]];
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    if (v9)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    sub_1000194D4(v12, v4);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "E+E: Account requested to verify MDM information : %@", v12, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v6 = v9;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, HIDWORD(v6));
  return v6 & 1;
}

- (id)_fetchMDMInformationFromDeviceManagementClient
{
  location[2] = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v12;
    sub_10001CEEC(v11);
    _os_log_impl(&_mh_execute_header, log, type, "E+E: Aquiring MDM information", v11, 2u);
  }

  objc_storeStrong(location, 0);
  v10 = +[AKMDMConfiguration getManagementState];
  v9 = +[AKMDMConfiguration getOrganizationToken];
  v8 = _AKLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (v9)
    {
      v2 = @"YES";
    }

    else
    {
      v2 = @"NO";
    }

    sub_100116FF0(v14, v10, v2);
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "E+E: Finished Aquiring device state: %ld, and valid org token: %@", v14, 0x16u);
  }

  objc_storeStrong(&v8, 0);
  v3 = [AKMDMInformation alloc];
  v5 = [(AKMDMInformation *)v3 initWithDeviceManagedState:v10 organizationToken:v9];
  objc_storeStrong(&v9, 0);

  return v5;
}

@end
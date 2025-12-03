@interface BuddyProximitySessionOverride
- (id)handshake;
- (id)information;
- (id)sendAction:(id)action;
- (void)finishPairing;
- (void)setDelegateOnClient:(id)client;
@end

@implementation BuddyProximitySessionOverride

- (id)sendAction:(id)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  oslog = _BYLoggingFacility();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    actionID = [objc_opt_class() actionID];
    sub_10007B2CC(buf, v9, actionID);
    _os_log_impl(&_mh_execute_header, oslog, v10, "Received action: Class: %@, ActionID: %ld", buf, 0x16u);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&oslog, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = location[0];
    information = [(BuddyProximitySessionOverride *)selfCopy information];
    [v8 setInformation:information];

    objc_storeStrong(&v8, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = location[0];
      handshake = [(BuddyProximitySessionOverride *)selfCopy handshake];
      [v7 setHandshake:handshake];

      objc_storeStrong(&v7, 0);
    }
  }

  objc_storeStrong(location, 0);
  return 0;
}

- (void)setDelegateOnClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  [location[0] setProximitySessionMessageSessionDelegate:selfCopy];
  objc_storeStrong(location, 0);
}

- (void)finishPairing
{
  v2 = [(BuddyProximitySessionOverride *)self delegate:a2];
  [v2 ready];
}

- (id)information
{
  v11[2] = self;
  v11[1] = a2;
  v11[0] = objc_alloc_init(SASProximityInformation);
  v10 = [BuddyOverrideUtilities sourceDeviceValueFor:5];
  if (v10)
  {
    [v11[0] setAppleID:v10];
  }

  v9 = [BuddyOverrideUtilities sourceDeviceValueFor:6];
  if (v9)
  {
    [v11[0] setProductVersion:v9];
  }

  v8 = [BuddyOverrideUtilities sourceDeviceValueFor:7];
  if (v8)
  {
    [v11[0] setSupportsDeviceToDeviceMigration:v8];
  }

  v7 = [BuddyOverrideUtilities sourceDeviceValueFor:8];
  if (v7)
  {
    [v11[0] setDeviceToDeviceMigrationVersion:v7];
  }

  v6 = [BuddyOverrideUtilities sourceDeviceValueFor:3];
  if (v6)
  {
    [v11[0] setDeviceClass:v6];
  }

  location = [BuddyOverrideUtilities sourceDeviceValueFor:2];
  if (location)
  {
    [v11[0] setDeviceModel:location];
  }

  v4 = [BuddyOverrideUtilities sourceDeviceValueFor:9];
  if (v4)
  {
    [v11[0] setDeviceName:v4];
  }

  v2 = v11[0];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v11, 0);
  return v2;
}

- (id)handshake
{
  selfCopy = self;
  v10 = a2;
  v2 = [BuddyOverrideUtilities sourceDeviceValueFor:10];
  v3 = v2 != 0;

  v9 = v3;
  v8 = objc_alloc_init(SASProximityHandshake);
  [v8 setHasPasscodeSet:v3];
  [v8 setPlatformType:1];
  if (v3)
  {
    location = [BuddyOverrideUtilities sourceDeviceValueFor:11];
    v6 = [BuddyOverrideUtilities sourceDeviceValueFor:12];
    [v8 setUnlockType:{objc_msgSend(location, "unsignedIntValue")}];
    [v8 setSimplePasscodeType:{objc_msgSend(v6, "unsignedIntValue")}];
    objc_storeStrong(&v6, 0);
    objc_storeStrong(&location, 0);
  }

  v4 = v8;
  objc_storeStrong(&v8, 0);
  return v4;
}

@end
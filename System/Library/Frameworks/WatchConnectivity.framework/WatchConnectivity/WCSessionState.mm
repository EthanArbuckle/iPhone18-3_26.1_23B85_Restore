@interface WCSessionState
- (NSURL)watchDirectoryURL;
- (WCSessionState)initWithCoder:(id)a3;
- (WCSessionState)initWithReachable:(BOOL)a3 paired:(BOOL)a4 appInstalled:(BOOL)a5 complicationEnabled:(BOOL)a6 remainingComplicationUserInfoTransfers:(unint64_t)a7 iOSDeviceNeedsFirstUnlock:(BOOL)a8 pairingID:(id)a9 pairedDevicesPairingIDs:(id)a10 appInstallationID:(id)a11 standaloneApp:(BOOL)a12 companionAppInstalled:(BOOL)a13;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WCSessionState

- (WCSessionState)initWithReachable:(BOOL)a3 paired:(BOOL)a4 appInstalled:(BOOL)a5 complicationEnabled:(BOOL)a6 remainingComplicationUserInfoTransfers:(unint64_t)a7 iOSDeviceNeedsFirstUnlock:(BOOL)a8 pairingID:(id)a9 pairedDevicesPairingIDs:(id)a10 appInstallationID:(id)a11 standaloneApp:(BOOL)a12 companionAppInstalled:(BOOL)a13
{
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v32.receiver = self;
  v32.super_class = WCSessionState;
  v23 = [(WCSessionState *)&v32 init];
  v24 = v23;
  if (v23)
  {
    v23->_reachable = a3;
    v23->_paired = a4;
    v25 = [v20 copy];
    pairingID = v24->_pairingID;
    v24->_pairingID = v25;

    v27 = [v21 copy];
    pairedDevicesPairingIDs = v24->_pairedDevicesPairingIDs;
    v24->_pairedDevicesPairingIDs = v27;

    v29 = [v22 copy];
    appInstallationID = v24->_appInstallationID;
    v24->_appInstallationID = v29;

    v24->_appInstalled = a5;
    v24->_complicationEnabled = a6;
    v24->_remainingComplicationUserInfoTransfers = a7;
    v24->_iOSDeviceNeedsFirstUnlock = a8;
    v24->_standalone = a12;
    v24->_companionAppInstalled = a13;
  }

  return v24;
}

- (id)description
{
  v17 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if ([(WCSessionState *)self isReachable])
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  v16 = v5;
  if ([(WCSessionState *)self isPaired])
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  if ([(WCSessionState *)self isAppInstalled])
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  if ([(WCSessionState *)self isComplicationEnabled])
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  v9 = [(WCSessionState *)self remainingComplicationUserInfoTransfers];
  v10 = [(WCSessionState *)self pairingID];
  v11 = [(WCSessionState *)self pairedDevicesPairingIDs];
  v12 = WCCompactStringFromCollection(v11);
  v13 = [(WCSessionState *)self appInstallationID];
  v14 = [v17 stringWithFormat:@"<%@: %p, reachable: %s, paired: %s, appInstalled: %s, complicationEnabled: %s(%d), pairingID: %@, pairedDevicesPairingIDs: %@, appInstallationID: %@>", v4, self, v16, v6, v7, v8, v9, v10, v12, v13];

  return v14;
}

- (NSURL)watchDirectoryURL
{
  v3 = [(WCSessionState *)self pairingID];
  if (v3 && (v4 = v3, [(WCSessionState *)self appInstallationID], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = MEMORY[0x277CBEBC0];
    v7 = NSHomeDirectory();
    v8 = [v6 fileURLWithPath:v7 isDirectory:1];

    v9 = [(WCSessionState *)self pairingID];
    v10 = WCWatchDirectoryLocationInContainer(v8, v9);

    v11 = [(WCSessionState *)self appInstallationID];
    v12 = [v10 URLByAppendingPathComponent:v11 isDirectory:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (WCSessionState)initWithCoder:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = WCSessionState;
  v5 = [(WCSessionState *)&v20 init];
  if (v5)
  {
    v5->_reachable = [v4 decodeBoolForKey:@"reachable"];
    v5->_paired = [v4 decodeBoolForKey:@"paired"];
    v5->_appInstalled = [v4 decodeBoolForKey:@"appInstalled"];
    v5->_complicationEnabled = [v4 decodeBoolForKey:@"complicationEnabled"];
    v5->_remainingComplicationUserInfoTransfers = [v4 decodeIntegerForKey:@"remainingComplicationUserInfoTransfers"];
    v5->_iOSDeviceNeedsFirstUnlock = [v4 decodeBoolForKey:@"iOSDeviceNeedsFirstUnlock"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairingID"];
    v7 = [v6 copy];
    pairingID = v5->_pairingID;
    v5->_pairingID = v7;

    v9 = MEMORY[0x277CBEB98];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v11 = [v9 setWithArray:v10];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"pairedDevicesPairingIDs"];
    v13 = [v12 copy];
    pairedDevicesPairingIDs = v5->_pairedDevicesPairingIDs;
    v5->_pairedDevicesPairingIDs = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appInstallationID"];
    v16 = [v15 copy];
    appInstallationID = v5->_appInstallationID;
    v5->_appInstallationID = v16;

    v5->_standalone = [v4 decodeBoolForKey:@"standalone"];
    v5->_companionAppInstalled = [v4 decodeBoolForKey:@"companionAppInstalled"];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  reachable = self->_reachable;
  v5 = a3;
  [v5 encodeBool:reachable forKey:@"reachable"];
  [v5 encodeBool:self->_paired forKey:@"paired"];
  [v5 encodeBool:self->_appInstalled forKey:@"appInstalled"];
  [v5 encodeBool:self->_complicationEnabled forKey:@"complicationEnabled"];
  [v5 encodeInteger:self->_remainingComplicationUserInfoTransfers forKey:@"remainingComplicationUserInfoTransfers"];
  [v5 encodeBool:self->_iOSDeviceNeedsFirstUnlock forKey:@"iOSDeviceNeedsFirstUnlock"];
  [v5 encodeObject:self->_pairingID forKey:@"pairingID"];
  [v5 encodeObject:self->_pairedDevicesPairingIDs forKey:@"pairedDevicesPairingIDs"];
  [v5 encodeObject:self->_appInstallationID forKey:@"appInstallationID"];
  [v5 encodeBool:self->_standalone forKey:@"standalone"];
  [v5 encodeBool:self->_companionAppInstalled forKey:@"companionAppInstalled"];
}

@end
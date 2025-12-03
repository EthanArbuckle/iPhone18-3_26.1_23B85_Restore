@interface WCSessionState
- (NSURL)watchDirectoryURL;
- (WCSessionState)initWithCoder:(id)coder;
- (WCSessionState)initWithReachable:(BOOL)reachable paired:(BOOL)paired appInstalled:(BOOL)installed complicationEnabled:(BOOL)enabled remainingComplicationUserInfoTransfers:(unint64_t)transfers iOSDeviceNeedsFirstUnlock:(BOOL)unlock pairingID:(id)d pairedDevicesPairingIDs:(id)self0 appInstallationID:(id)self1 standaloneApp:(BOOL)self2 companionAppInstalled:(BOOL)self3;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WCSessionState

- (WCSessionState)initWithReachable:(BOOL)reachable paired:(BOOL)paired appInstalled:(BOOL)installed complicationEnabled:(BOOL)enabled remainingComplicationUserInfoTransfers:(unint64_t)transfers iOSDeviceNeedsFirstUnlock:(BOOL)unlock pairingID:(id)d pairedDevicesPairingIDs:(id)self0 appInstallationID:(id)self1 standaloneApp:(BOOL)self2 companionAppInstalled:(BOOL)self3
{
  dCopy = d;
  dsCopy = ds;
  iDCopy = iD;
  v32.receiver = self;
  v32.super_class = WCSessionState;
  v23 = [(WCSessionState *)&v32 init];
  v24 = v23;
  if (v23)
  {
    v23->_reachable = reachable;
    v23->_paired = paired;
    v25 = [dCopy copy];
    pairingID = v24->_pairingID;
    v24->_pairingID = v25;

    v27 = [dsCopy copy];
    pairedDevicesPairingIDs = v24->_pairedDevicesPairingIDs;
    v24->_pairedDevicesPairingIDs = v27;

    v29 = [iDCopy copy];
    appInstallationID = v24->_appInstallationID;
    v24->_appInstallationID = v29;

    v24->_appInstalled = installed;
    v24->_complicationEnabled = enabled;
    v24->_remainingComplicationUserInfoTransfers = transfers;
    v24->_iOSDeviceNeedsFirstUnlock = unlock;
    v24->_standalone = app;
    v24->_companionAppInstalled = appInstalled;
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

  remainingComplicationUserInfoTransfers = [(WCSessionState *)self remainingComplicationUserInfoTransfers];
  pairingID = [(WCSessionState *)self pairingID];
  pairedDevicesPairingIDs = [(WCSessionState *)self pairedDevicesPairingIDs];
  v12 = WCCompactStringFromCollection(pairedDevicesPairingIDs);
  appInstallationID = [(WCSessionState *)self appInstallationID];
  v14 = [v17 stringWithFormat:@"<%@: %p, reachable: %s, paired: %s, appInstalled: %s, complicationEnabled: %s(%d), pairingID: %@, pairedDevicesPairingIDs: %@, appInstallationID: %@>", v4, self, v16, v6, v7, v8, remainingComplicationUserInfoTransfers, pairingID, v12, appInstallationID];

  return v14;
}

- (NSURL)watchDirectoryURL
{
  pairingID = [(WCSessionState *)self pairingID];
  if (pairingID && (v4 = pairingID, [(WCSessionState *)self appInstallationID], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = MEMORY[0x277CBEBC0];
    v7 = NSHomeDirectory();
    v8 = [v6 fileURLWithPath:v7 isDirectory:1];

    pairingID2 = [(WCSessionState *)self pairingID];
    v10 = WCWatchDirectoryLocationInContainer(v8, pairingID2);

    appInstallationID = [(WCSessionState *)self appInstallationID];
    v12 = [v10 URLByAppendingPathComponent:appInstallationID isDirectory:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (WCSessionState)initWithCoder:(id)coder
{
  v21[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = WCSessionState;
  v5 = [(WCSessionState *)&v20 init];
  if (v5)
  {
    v5->_reachable = [coderCopy decodeBoolForKey:@"reachable"];
    v5->_paired = [coderCopy decodeBoolForKey:@"paired"];
    v5->_appInstalled = [coderCopy decodeBoolForKey:@"appInstalled"];
    v5->_complicationEnabled = [coderCopy decodeBoolForKey:@"complicationEnabled"];
    v5->_remainingComplicationUserInfoTransfers = [coderCopy decodeIntegerForKey:@"remainingComplicationUserInfoTransfers"];
    v5->_iOSDeviceNeedsFirstUnlock = [coderCopy decodeBoolForKey:@"iOSDeviceNeedsFirstUnlock"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingID"];
    v7 = [v6 copy];
    pairingID = v5->_pairingID;
    v5->_pairingID = v7;

    v9 = MEMORY[0x277CBEB98];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v11 = [v9 setWithArray:v10];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"pairedDevicesPairingIDs"];
    v13 = [v12 copy];
    pairedDevicesPairingIDs = v5->_pairedDevicesPairingIDs;
    v5->_pairedDevicesPairingIDs = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appInstallationID"];
    v16 = [v15 copy];
    appInstallationID = v5->_appInstallationID;
    v5->_appInstallationID = v16;

    v5->_standalone = [coderCopy decodeBoolForKey:@"standalone"];
    v5->_companionAppInstalled = [coderCopy decodeBoolForKey:@"companionAppInstalled"];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  reachable = self->_reachable;
  coderCopy = coder;
  [coderCopy encodeBool:reachable forKey:@"reachable"];
  [coderCopy encodeBool:self->_paired forKey:@"paired"];
  [coderCopy encodeBool:self->_appInstalled forKey:@"appInstalled"];
  [coderCopy encodeBool:self->_complicationEnabled forKey:@"complicationEnabled"];
  [coderCopy encodeInteger:self->_remainingComplicationUserInfoTransfers forKey:@"remainingComplicationUserInfoTransfers"];
  [coderCopy encodeBool:self->_iOSDeviceNeedsFirstUnlock forKey:@"iOSDeviceNeedsFirstUnlock"];
  [coderCopy encodeObject:self->_pairingID forKey:@"pairingID"];
  [coderCopy encodeObject:self->_pairedDevicesPairingIDs forKey:@"pairedDevicesPairingIDs"];
  [coderCopy encodeObject:self->_appInstallationID forKey:@"appInstallationID"];
  [coderCopy encodeBool:self->_standalone forKey:@"standalone"];
  [coderCopy encodeBool:self->_companionAppInstalled forKey:@"companionAppInstalled"];
}

@end
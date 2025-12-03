@interface TrustedPeersHelperPeerState
- (TrustedPeersHelperPeerState)initWithCoder:(id)coder;
- (TrustedPeersHelperPeerState)initWithPeerID:(id)d isPreapproved:(BOOL)preapproved status:(unint64_t)status memberChanges:(BOOL)changes unknownMachineIDs:(BOOL)ds osVersion:(id)version walrus:(id)walrus webAccess:(id)self0;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TrustedPeersHelperPeerState

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  peerID = [(TrustedPeersHelperPeerState *)self peerID];
  [coderCopy encodeObject:peerID forKey:@"peerID"];

  [coderCopy encodeBool:-[TrustedPeersHelperPeerState identityIsPreapproved](self forKey:{"identityIsPreapproved"), @"identityIsPreapproved"}];
  [coderCopy encodeInt64:-[TrustedPeersHelperPeerState peerStatus](self forKey:{"peerStatus"), @"peerStatus"}];
  [coderCopy encodeInt64:-[TrustedPeersHelperPeerState memberChanges](self forKey:{"memberChanges"), @"memberChanges"}];
  [coderCopy encodeInt64:-[TrustedPeersHelperPeerState unknownMachineIDsPresent](self forKey:{"unknownMachineIDsPresent"), @"unknownMachineIDs"}];
  osVersion = [(TrustedPeersHelperPeerState *)self osVersion];
  [coderCopy encodeObject:osVersion forKey:@"osVersion"];

  walrus = [(TrustedPeersHelperPeerState *)self walrus];
  [coderCopy encodeObject:walrus forKey:@"walrus"];

  webAccess = [(TrustedPeersHelperPeerState *)self webAccess];
  [coderCopy encodeObject:webAccess forKey:@"webAccess"];
}

- (TrustedPeersHelperPeerState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = TrustedPeersHelperPeerState;
  v5 = [(TrustedPeersHelperPeerState *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerID"];
    peerID = v5->_peerID;
    v5->_peerID = v6;

    v5->_identityIsPreapproved = [coderCopy decodeBoolForKey:@"identityIsPreapproved"];
    v5->_peerStatus = [coderCopy decodeInt64ForKey:@"peerStatus"];
    v5->_memberChanges = [coderCopy decodeInt64ForKey:@"memberChanges"] != 0;
    v5->_unknownMachineIDsPresent = [coderCopy decodeInt64ForKey:@"unknownMachineIDs"] != 0;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"osVersion"];
    osVersion = v5->_osVersion;
    v5->_osVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"walrus"];
    walrus = v5->_walrus;
    v5->_walrus = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"webAccess"];
    webAccess = v5->_webAccess;
    v5->_webAccess = v12;
  }

  return v5;
}

- (id)description
{
  peerID = [(TrustedPeersHelperPeerState *)self peerID];
  identityIsPreapproved = [(TrustedPeersHelperPeerState *)self identityIsPreapproved];
  [(TrustedPeersHelperPeerState *)self peerStatus];
  v5 = TPPeerStatusToString();
  if ([(TrustedPeersHelperPeerState *)self memberChanges])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(TrustedPeersHelperPeerState *)self unknownMachineIDsPresent])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  osVersion = [(TrustedPeersHelperPeerState *)self osVersion];
  v9 = osVersion;
  if (osVersion)
  {
    v10 = osVersion;
  }

  else
  {
    v10 = @"unknown";
  }

  walrus = [(TrustedPeersHelperPeerState *)self walrus];
  webAccess = [(TrustedPeersHelperPeerState *)self webAccess];
  v13 = [NSString stringWithFormat:@"<TPHPeerState: %@ preapproved:%d status:%@ memberChanges: %@ unk. mIDs: %@ osVersion: %@ walrus: %@ webAccess: %@>", peerID, identityIsPreapproved, v5, v6, v7, v10, walrus, webAccess];

  return v13;
}

- (TrustedPeersHelperPeerState)initWithPeerID:(id)d isPreapproved:(BOOL)preapproved status:(unint64_t)status memberChanges:(BOOL)changes unknownMachineIDs:(BOOL)ds osVersion:(id)version walrus:(id)walrus webAccess:(id)self0
{
  dCopy = d;
  versionCopy = version;
  walrusCopy = walrus;
  accessCopy = access;
  v24.receiver = self;
  v24.super_class = TrustedPeersHelperPeerState;
  v18 = [(TrustedPeersHelperPeerState *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_peerID, d);
    v19->_identityIsPreapproved = preapproved;
    v19->_peerStatus = status;
    v19->_memberChanges = changes;
    v19->_unknownMachineIDsPresent = ds;
    objc_storeStrong(&v19->_osVersion, version);
    objc_storeStrong(&v19->_walrus, walrus);
    objc_storeStrong(&v19->_webAccess, access);
  }

  return v19;
}

@end
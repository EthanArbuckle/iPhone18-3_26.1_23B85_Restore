@interface CXCall
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCall:(CXCall *)call;
- (CXCall)initWithCoder:(id)coder;
- (CXCall)initWithUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sanitizedCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXCall

- (CXCall)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = CXCall;
  v6 = [(CXCall *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UUID, d);
  }

  return v7;
}

- (CXCall)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_UUID);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];
  v8 = [(CXCall *)self initWithUUID:v7];

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_localMemberIdentity);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    localMemberIdentity = v8->_localMemberIdentity;
    v8->_localMemberIdentity = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_providerIdentifier);
    v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];
    providerIdentifier = v8->_providerIdentifier;
    v8->_providerIdentifier = v15;

    v17 = NSStringFromSelector(sel_isOutgoing);
    v8->_outgoing = [coderCopy decodeBoolForKey:v17];

    v18 = NSStringFromSelector(sel_isOnHold);
    v8->_onHold = [coderCopy decodeBoolForKey:v18];

    v19 = NSStringFromSelector(sel_hasConnected);
    v8->_hasConnected = [coderCopy decodeBoolForKey:v19];

    v20 = NSStringFromSelector(sel_hasEnded);
    v8->_hasEnded = [coderCopy decodeBoolForKey:v20];

    v21 = NSStringFromSelector(sel_isEndpointOnCurrentDevice);
    v8->_endpointOnCurrentDevice = [coderCopy decodeBoolForKey:v21];

    v22 = NSStringFromSelector(sel_isHostedOnCurrentDevice);
    v8->_hostedOnCurrentDevice = [coderCopy decodeBoolForKey:v22];

    v23 = NSStringFromSelector(sel_isVideo);
    v8->_video = [coderCopy decodeBoolForKey:v23];

    v24 = NSStringFromSelector(sel_isScreening);
    v8->_screening = [coderCopy decodeBoolForKey:v24];
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(CXCall *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v6];

  localMemberIdentity = [(CXCall *)self localMemberIdentity];
  v8 = NSStringFromSelector(sel_localMemberIdentity);
  [coderCopy encodeObject:localMemberIdentity forKey:v8];

  providerIdentifier = [(CXCall *)self providerIdentifier];
  v10 = NSStringFromSelector(sel_providerIdentifier);
  [coderCopy encodeObject:providerIdentifier forKey:v10];

  isOutgoing = [(CXCall *)self isOutgoing];
  v12 = NSStringFromSelector(sel_isOutgoing);
  [coderCopy encodeBool:isOutgoing forKey:v12];

  isOnHold = [(CXCall *)self isOnHold];
  v14 = NSStringFromSelector(sel_isOnHold);
  [coderCopy encodeBool:isOnHold forKey:v14];

  hasConnected = [(CXCall *)self hasConnected];
  v16 = NSStringFromSelector(sel_hasConnected);
  [coderCopy encodeBool:hasConnected forKey:v16];

  hasEnded = [(CXCall *)self hasEnded];
  v18 = NSStringFromSelector(sel_hasEnded);
  [coderCopy encodeBool:hasEnded forKey:v18];

  isEndpointOnCurrentDevice = [(CXCall *)self isEndpointOnCurrentDevice];
  v20 = NSStringFromSelector(sel_isEndpointOnCurrentDevice);
  [coderCopy encodeBool:isEndpointOnCurrentDevice forKey:v20];

  isHostedOnCurrentDevice = [(CXCall *)self isHostedOnCurrentDevice];
  v22 = NSStringFromSelector(sel_isHostedOnCurrentDevice);
  [coderCopy encodeBool:isHostedOnCurrentDevice forKey:v22];

  isVideo = [(CXCall *)self isVideo];
  v24 = NSStringFromSelector(sel_isVideo);
  [coderCopy encodeBool:isVideo forKey:v24];

  isScreening = [(CXCall *)self isScreening];
  v26 = NSStringFromSelector(sel_isScreening);
  [coderCopy encodeBool:isScreening forKey:v26];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXCall *)self isEqualToCall:equalCopy];

  return v5;
}

- (BOOL)isEqualToCall:(CXCall *)call
{
  v4 = call;
  uUID = [(CXCall *)self UUID];
  uUID2 = [(CXCall *)v4 UUID];
  if (uUID | uUID2 && ![uUID isEqual:uUID2])
  {
    LOBYTE(v18) = 0;
  }

  else
  {
    localMemberIdentity = [(CXCall *)self localMemberIdentity];
    localMemberIdentity2 = [(CXCall *)v4 localMemberIdentity];
    if (localMemberIdentity | localMemberIdentity2 && ![localMemberIdentity isEqualToData:localMemberIdentity2])
    {
      LOBYTE(v18) = 0;
    }

    else
    {
      providerIdentifier = [(CXCall *)self providerIdentifier];
      providerIdentifier2 = [(CXCall *)v4 providerIdentifier];
      if ((!(providerIdentifier | providerIdentifier2) || [providerIdentifier isEqual:providerIdentifier2]) && (v11 = -[CXCall isOutgoing](self, "isOutgoing"), v11 == -[CXCall isOutgoing](v4, "isOutgoing")) && (v12 = -[CXCall isVideo](self, "isVideo"), v12 == -[CXCall isVideo](v4, "isVideo")) && (v13 = -[CXCall isOnHold](self, "isOnHold"), v13 == -[CXCall isOnHold](v4, "isOnHold")) && (v14 = -[CXCall hasConnected](self, "hasConnected"), v14 == -[CXCall hasConnected](v4, "hasConnected")) && (v15 = -[CXCall hasEnded](self, "hasEnded"), v15 == -[CXCall hasEnded](v4, "hasEnded")) && (v16 = -[CXCall isEndpointOnCurrentDevice](self, "isEndpointOnCurrentDevice"), v16 == -[CXCall isEndpointOnCurrentDevice](v4, "isEndpointOnCurrentDevice")) && (v17 = -[CXCall isHostedOnCurrentDevice](self, "isHostedOnCurrentDevice"), v17 == -[CXCall isHostedOnCurrentDevice](v4, "isHostedOnCurrentDevice")))
      {
        isScreening = [(CXCall *)self isScreening];
        v18 = isScreening ^ [(CXCall *)v4 isScreening]^ 1;
      }

      else
      {
        LOBYTE(v18) = 0;
      }
    }
  }

  return v18;
}

- (unint64_t)hash
{
  uUID = [(CXCall *)self UUID];
  v4 = [uUID hash];
  localMemberIdentity = [(CXCall *)self localMemberIdentity];
  v6 = [localMemberIdentity hash] ^ v4;
  providerIdentifier = [(CXCall *)self providerIdentifier];
  v8 = v6 ^ [providerIdentifier hash];
  if ([(CXCall *)self isOutgoing])
  {
    v9 = 1231;
  }

  else
  {
    v9 = 1237;
  }

  if ([(CXCall *)self isVideo])
  {
    v10 = 1231;
  }

  else
  {
    v10 = 1237;
  }

  v11 = v8 ^ v9 ^ v10;
  if ([(CXCall *)self isOnHold])
  {
    v12 = 1231;
  }

  else
  {
    v12 = 1237;
  }

  if ([(CXCall *)self hasConnected])
  {
    v13 = 1231;
  }

  else
  {
    v13 = 1237;
  }

  v14 = v12 ^ v13;
  if ([(CXCall *)self hasEnded])
  {
    v15 = 1231;
  }

  else
  {
    v15 = 1237;
  }

  v16 = v11 ^ v14 ^ v15;
  if ([(CXCall *)self isEndpointOnCurrentDevice])
  {
    v17 = 1231;
  }

  else
  {
    v17 = 1237;
  }

  if ([(CXCall *)self isHostedOnCurrentDevice])
  {
    v18 = 1231;
  }

  else
  {
    v18 = 1237;
  }

  v19 = v17 ^ v18;
  if ([(CXCall *)self isScreening])
  {
    v20 = 1231;
  }

  else
  {
    v20 = 1237;
  }

  v21 = v19 ^ v20;

  return v16 ^ v21;
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  copyCopy = copy;
  [copyCopy setOutgoing:{-[CXCall isOutgoing](self, "isOutgoing")}];
  [copyCopy setOnHold:{-[CXCall isOnHold](self, "isOnHold")}];
  [copyCopy setHasConnected:{-[CXCall hasConnected](self, "hasConnected")}];
  [copyCopy setHasEnded:{-[CXCall hasEnded](self, "hasEnded")}];
}

- (id)sanitizedCopyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  uUID = [(CXCall *)self UUID];
  v7 = [v5 initWithUUID:uUID];

  [(CXCall *)self updateSanitizedCopy:v7 withZone:zone];

  return v7;
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  copyCopy = copy;
  [(CXCall *)self updateSanitizedCopy:copyCopy withZone:zone];
  localMemberIdentity = [(CXCall *)self localMemberIdentity];
  [copyCopy setLocalMemberIdentity:localMemberIdentity];

  providerIdentifier = [(CXCall *)self providerIdentifier];
  [copyCopy setProviderIdentifier:providerIdentifier];

  [copyCopy setEndpointOnCurrentDevice:{-[CXCall isEndpointOnCurrentDevice](self, "isEndpointOnCurrentDevice")}];
  [copyCopy setHostedOnCurrentDevice:{-[CXCall isHostedOnCurrentDevice](self, "isHostedOnCurrentDevice")}];
  [copyCopy setVideo:{-[CXCall isVideo](self, "isVideo")}];
  [copyCopy setScreening:{-[CXCall isScreening](self, "isScreening")}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  uUID = [(CXCall *)self UUID];
  v7 = [v5 initWithUUID:uUID];

  [(CXCall *)self updateCopy:v7 withZone:zone];
  return v7;
}

@end
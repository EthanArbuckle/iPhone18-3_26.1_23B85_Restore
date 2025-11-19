@interface CXCall
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCall:(CXCall *)call;
- (CXCall)initWithCoder:(id)a3;
- (CXCall)initWithUUID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sanitizedCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXCall

- (CXCall)initWithUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CXCall;
  v6 = [(CXCall *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UUID, a3);
  }

  return v7;
}

- (CXCall)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_UUID);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];
  v8 = [(CXCall *)self initWithUUID:v7];

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_localMemberIdentity);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    localMemberIdentity = v8->_localMemberIdentity;
    v8->_localMemberIdentity = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_providerIdentifier);
    v15 = [v4 decodeObjectOfClass:v13 forKey:v14];
    providerIdentifier = v8->_providerIdentifier;
    v8->_providerIdentifier = v15;

    v17 = NSStringFromSelector(sel_isOutgoing);
    v8->_outgoing = [v4 decodeBoolForKey:v17];

    v18 = NSStringFromSelector(sel_isOnHold);
    v8->_onHold = [v4 decodeBoolForKey:v18];

    v19 = NSStringFromSelector(sel_hasConnected);
    v8->_hasConnected = [v4 decodeBoolForKey:v19];

    v20 = NSStringFromSelector(sel_hasEnded);
    v8->_hasEnded = [v4 decodeBoolForKey:v20];

    v21 = NSStringFromSelector(sel_isEndpointOnCurrentDevice);
    v8->_endpointOnCurrentDevice = [v4 decodeBoolForKey:v21];

    v22 = NSStringFromSelector(sel_isHostedOnCurrentDevice);
    v8->_hostedOnCurrentDevice = [v4 decodeBoolForKey:v22];

    v23 = NSStringFromSelector(sel_isVideo);
    v8->_video = [v4 decodeBoolForKey:v23];

    v24 = NSStringFromSelector(sel_isScreening);
    v8->_screening = [v4 decodeBoolForKey:v24];
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXCall *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXCall *)self localMemberIdentity];
  v8 = NSStringFromSelector(sel_localMemberIdentity);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(CXCall *)self providerIdentifier];
  v10 = NSStringFromSelector(sel_providerIdentifier);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(CXCall *)self isOutgoing];
  v12 = NSStringFromSelector(sel_isOutgoing);
  [v4 encodeBool:v11 forKey:v12];

  v13 = [(CXCall *)self isOnHold];
  v14 = NSStringFromSelector(sel_isOnHold);
  [v4 encodeBool:v13 forKey:v14];

  v15 = [(CXCall *)self hasConnected];
  v16 = NSStringFromSelector(sel_hasConnected);
  [v4 encodeBool:v15 forKey:v16];

  v17 = [(CXCall *)self hasEnded];
  v18 = NSStringFromSelector(sel_hasEnded);
  [v4 encodeBool:v17 forKey:v18];

  v19 = [(CXCall *)self isEndpointOnCurrentDevice];
  v20 = NSStringFromSelector(sel_isEndpointOnCurrentDevice);
  [v4 encodeBool:v19 forKey:v20];

  v21 = [(CXCall *)self isHostedOnCurrentDevice];
  v22 = NSStringFromSelector(sel_isHostedOnCurrentDevice);
  [v4 encodeBool:v21 forKey:v22];

  v23 = [(CXCall *)self isVideo];
  v24 = NSStringFromSelector(sel_isVideo);
  [v4 encodeBool:v23 forKey:v24];

  v25 = [(CXCall *)self isScreening];
  v26 = NSStringFromSelector(sel_isScreening);
  [v4 encodeBool:v25 forKey:v26];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXCall *)self isEqualToCall:v4];

  return v5;
}

- (BOOL)isEqualToCall:(CXCall *)call
{
  v4 = call;
  v5 = [(CXCall *)self UUID];
  v6 = [(CXCall *)v4 UUID];
  if (v5 | v6 && ![v5 isEqual:v6])
  {
    LOBYTE(v18) = 0;
  }

  else
  {
    v7 = [(CXCall *)self localMemberIdentity];
    v8 = [(CXCall *)v4 localMemberIdentity];
    if (v7 | v8 && ![v7 isEqualToData:v8])
    {
      LOBYTE(v18) = 0;
    }

    else
    {
      v9 = [(CXCall *)self providerIdentifier];
      v10 = [(CXCall *)v4 providerIdentifier];
      if ((!(v9 | v10) || [v9 isEqual:v10]) && (v11 = -[CXCall isOutgoing](self, "isOutgoing"), v11 == -[CXCall isOutgoing](v4, "isOutgoing")) && (v12 = -[CXCall isVideo](self, "isVideo"), v12 == -[CXCall isVideo](v4, "isVideo")) && (v13 = -[CXCall isOnHold](self, "isOnHold"), v13 == -[CXCall isOnHold](v4, "isOnHold")) && (v14 = -[CXCall hasConnected](self, "hasConnected"), v14 == -[CXCall hasConnected](v4, "hasConnected")) && (v15 = -[CXCall hasEnded](self, "hasEnded"), v15 == -[CXCall hasEnded](v4, "hasEnded")) && (v16 = -[CXCall isEndpointOnCurrentDevice](self, "isEndpointOnCurrentDevice"), v16 == -[CXCall isEndpointOnCurrentDevice](v4, "isEndpointOnCurrentDevice")) && (v17 = -[CXCall isHostedOnCurrentDevice](self, "isHostedOnCurrentDevice"), v17 == -[CXCall isHostedOnCurrentDevice](v4, "isHostedOnCurrentDevice")))
      {
        v20 = [(CXCall *)self isScreening];
        v18 = v20 ^ [(CXCall *)v4 isScreening]^ 1;
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
  v3 = [(CXCall *)self UUID];
  v4 = [v3 hash];
  v5 = [(CXCall *)self localMemberIdentity];
  v6 = [v5 hash] ^ v4;
  v7 = [(CXCall *)self providerIdentifier];
  v8 = v6 ^ [v7 hash];
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

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v5 = a3;
  [v5 setOutgoing:{-[CXCall isOutgoing](self, "isOutgoing")}];
  [v5 setOnHold:{-[CXCall isOnHold](self, "isOnHold")}];
  [v5 setHasConnected:{-[CXCall hasConnected](self, "hasConnected")}];
  [v5 setHasEnded:{-[CXCall hasEnded](self, "hasEnded")}];
}

- (id)sanitizedCopyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(CXCall *)self UUID];
  v7 = [v5 initWithUUID:v6];

  [(CXCall *)self updateSanitizedCopy:v7 withZone:a3];

  return v7;
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v8 = a3;
  [(CXCall *)self updateSanitizedCopy:v8 withZone:a4];
  v6 = [(CXCall *)self localMemberIdentity];
  [v8 setLocalMemberIdentity:v6];

  v7 = [(CXCall *)self providerIdentifier];
  [v8 setProviderIdentifier:v7];

  [v8 setEndpointOnCurrentDevice:{-[CXCall isEndpointOnCurrentDevice](self, "isEndpointOnCurrentDevice")}];
  [v8 setHostedOnCurrentDevice:{-[CXCall isHostedOnCurrentDevice](self, "isHostedOnCurrentDevice")}];
  [v8 setVideo:{-[CXCall isVideo](self, "isVideo")}];
  [v8 setScreening:{-[CXCall isScreening](self, "isScreening")}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(CXCall *)self UUID];
  v7 = [v5 initWithUUID:v6];

  [(CXCall *)self updateCopy:v7 withZone:a3];
  return v7;
}

@end
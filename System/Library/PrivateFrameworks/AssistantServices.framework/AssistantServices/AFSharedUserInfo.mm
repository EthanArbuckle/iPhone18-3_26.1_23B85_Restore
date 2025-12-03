@interface AFSharedUserInfo
+ (id)newWithBuilder:(id)builder;
- (AFSharedUserInfo)initWithBuilder:(id)builder;
- (AFSharedUserInfo)initWithCoder:(id)coder;
- (AFSharedUserInfo)initWithSharedUserId:(id)id loggableSharedUserId:(id)userId companionDeviceInfo:(id)info personalRequestsEnabled:(BOOL)enabled companionLinkReady:(BOOL)ready homeUserId:(id)homeUserId iCloudAltDSID:(id)d isDeviceOwner:(BOOL)self0 isMediaFallbackUser:(BOOL)self1;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSharedUserInfo

- (void)encodeWithCoder:(id)coder
{
  sharedUserId = self->_sharedUserId;
  coderCopy = coder;
  [coderCopy encodeObject:sharedUserId forKey:@"AFSharedUserInfo::sharedUserId"];
  [coderCopy encodeObject:self->_loggableSharedUserId forKey:@"AFSharedUserInfo::loggableSharedUserId"];
  [coderCopy encodeObject:self->_companionDeviceInfo forKey:@"AFSharedUserInfo::companionDeviceInfo"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_personalRequestsEnabled];
  [coderCopy encodeObject:v6 forKey:@"AFSharedUserInfo::personalRequestsEnabled"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_companionLinkReady];
  [coderCopy encodeObject:v7 forKey:@"AFSharedUserInfo::companionLinkReady"];

  [coderCopy encodeObject:self->_homeUserId forKey:@"AFSharedUserInfo::homeUserId"];
  [coderCopy encodeObject:self->_iCloudAltDSID forKey:@"AFSharedUserInfo::iCloudAltDSID"];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceOwner];
  [coderCopy encodeObject:v8 forKey:@"AFSharedUserInfo::isDeviceOwner"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMediaFallbackUser];
  [coderCopy encodeObject:v9 forKey:@"AFSharedUserInfo::isMediaFallbackUser"];
}

- (AFSharedUserInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedUserInfo::sharedUserId"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedUserInfo::loggableSharedUserId"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedUserInfo::companionDeviceInfo"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedUserInfo::personalRequestsEnabled"];
  bOOLValue = [v6 BOOLValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedUserInfo::companionLinkReady"];
  bOOLValue2 = [v8 BOOLValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedUserInfo::homeUserId"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedUserInfo::iCloudAltDSID"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedUserInfo::isDeviceOwner"];
  bOOLValue3 = [v12 BOOLValue];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedUserInfo::isMediaFallbackUser"];

  LOBYTE(coderCopy) = [v14 BOOLValue];
  BYTE1(v17) = coderCopy;
  LOBYTE(v17) = bOOLValue3;
  v15 = [(AFSharedUserInfo *)self initWithSharedUserId:v18 loggableSharedUserId:v4 companionDeviceInfo:v5 personalRequestsEnabled:bOOLValue companionLinkReady:bOOLValue2 homeUserId:v10 iCloudAltDSID:v11 isDeviceOwner:v17 isMediaFallbackUser:?];

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      personalRequestsEnabled = self->_personalRequestsEnabled;
      if (personalRequestsEnabled == [(AFSharedUserInfo *)v5 personalRequestsEnabled]&& (companionLinkReady = self->_companionLinkReady, companionLinkReady == [(AFSharedUserInfo *)v5 companionLinkReady]) && (isDeviceOwner = self->_isDeviceOwner, isDeviceOwner == [(AFSharedUserInfo *)v5 isDeviceOwner]) && (isMediaFallbackUser = self->_isMediaFallbackUser, isMediaFallbackUser == [(AFSharedUserInfo *)v5 isMediaFallbackUser]))
      {
        sharedUserId = [(AFSharedUserInfo *)v5 sharedUserId];
        sharedUserId = self->_sharedUserId;
        if (sharedUserId == sharedUserId || [(NSString *)sharedUserId isEqual:sharedUserId])
        {
          loggableSharedUserId = [(AFSharedUserInfo *)v5 loggableSharedUserId];
          loggableSharedUserId = self->_loggableSharedUserId;
          if (loggableSharedUserId == loggableSharedUserId || [(NSString *)loggableSharedUserId isEqual:loggableSharedUserId])
          {
            companionDeviceInfo = [(AFSharedUserInfo *)v5 companionDeviceInfo];
            companionDeviceInfo = self->_companionDeviceInfo;
            if (companionDeviceInfo == companionDeviceInfo || [(AFCompanionDeviceInfo *)companionDeviceInfo isEqual:companionDeviceInfo])
            {
              homeUserId = [(AFSharedUserInfo *)v5 homeUserId];
              homeUserId = self->_homeUserId;
              if (homeUserId == homeUserId || [(NSString *)homeUserId isEqual:homeUserId])
              {
                iCloudAltDSID = [(AFSharedUserInfo *)v5 iCloudAltDSID];
                iCloudAltDSID = self->_iCloudAltDSID;
                v20 = iCloudAltDSID == iCloudAltDSID || [(NSString *)iCloudAltDSID isEqual:iCloudAltDSID];
              }

              else
              {
                v20 = 0;
              }
            }

            else
            {
              v20 = 0;
            }
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sharedUserId hash];
  v4 = [(NSString *)self->_loggableSharedUserId hash]^ v3;
  v5 = v4 ^ [(AFCompanionDeviceInfo *)self->_companionDeviceInfo hash];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_personalRequestsEnabled];
  v7 = v5 ^ [v6 hash];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_companionLinkReady];
  v9 = [v8 hash];
  v10 = v7 ^ v9 ^ [(NSString *)self->_homeUserId hash];
  v11 = [(NSString *)self->_iCloudAltDSID hash];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceOwner];
  v13 = v11 ^ [v12 hash];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMediaFallbackUser];
  v15 = v13 ^ [v14 hash];

  return v10 ^ v15;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13.receiver = self;
  v13.super_class = AFSharedUserInfo;
  v5 = [(AFSharedUserInfo *)&v13 description];
  v6 = v5;
  v7 = @"NO";
  if (self->_personalRequestsEnabled)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_companionLinkReady)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_isDeviceOwner)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_isMediaFallbackUser)
  {
    v7 = @"YES";
  }

  v11 = [v4 initWithFormat:@"%@ {sharedUserId = %@, loggableSharedUserId = %@, companionDeviceInfo = %@, personalRequestsEnabled = %@, companionLinkReady = %@, homeUserId = %@, iCloudAltDSID = %@, isDeviceOwner = %@, isMediaFallbackUser = %@}", v5, *&self->_sharedUserId, self->_companionDeviceInfo, v8, v9, self->_homeUserId, self->_iCloudAltDSID, v10, v7];

  return v11;
}

- (AFSharedUserInfo)initWithSharedUserId:(id)id loggableSharedUserId:(id)userId companionDeviceInfo:(id)info personalRequestsEnabled:(BOOL)enabled companionLinkReady:(BOOL)ready homeUserId:(id)homeUserId iCloudAltDSID:(id)d isDeviceOwner:(BOOL)self0 isMediaFallbackUser:(BOOL)self1
{
  idCopy = id;
  userIdCopy = userId;
  infoCopy = info;
  homeUserIdCopy = homeUserId;
  dCopy = d;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __184__AFSharedUserInfo_initWithSharedUserId_loggableSharedUserId_companionDeviceInfo_personalRequestsEnabled_companionLinkReady_homeUserId_iCloudAltDSID_isDeviceOwner_isMediaFallbackUser___block_invoke;
  v29[3] = &unk_1E7345D28;
  v30 = idCopy;
  v31 = userIdCopy;
  enabledCopy = enabled;
  readyCopy = ready;
  v32 = infoCopy;
  v33 = homeUserIdCopy;
  v34 = dCopy;
  ownerCopy = owner;
  userCopy = user;
  v21 = dCopy;
  v22 = homeUserIdCopy;
  v23 = infoCopy;
  v24 = userIdCopy;
  v25 = idCopy;
  v26 = [(AFSharedUserInfo *)self initWithBuilder:v29];

  return v26;
}

void __184__AFSharedUserInfo_initWithSharedUserId_loggableSharedUserId_companionDeviceInfo_personalRequestsEnabled_companionLinkReady_homeUserId_iCloudAltDSID_isDeviceOwner_isMediaFallbackUser___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSharedUserId:v3];
  [v4 setLoggableSharedUserId:*(a1 + 40)];
  [v4 setCompanionDeviceInfo:*(a1 + 48)];
  [v4 setPersonalRequestsEnabled:*(a1 + 72)];
  [v4 setCompanionLinkReady:*(a1 + 73)];
  [v4 setHomeUserId:*(a1 + 56)];
  [v4 setICloudAltDSID:*(a1 + 64)];
  [v4 setIsDeviceOwner:*(a1 + 74)];
  [v4 setIsMediaFallbackUser:*(a1 + 75)];
}

- (AFSharedUserInfo)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v24.receiver = self;
  v24.super_class = AFSharedUserInfo;
  v5 = [(AFSharedUserInfo *)&v24 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFSharedUserInfoMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFSharedUserInfoMutation *)v7 isDirty])
    {
      getSharedUserId = [(_AFSharedUserInfoMutation *)v7 getSharedUserId];
      v9 = [getSharedUserId copy];
      sharedUserId = v6->_sharedUserId;
      v6->_sharedUserId = v9;

      getLoggableSharedUserId = [(_AFSharedUserInfoMutation *)v7 getLoggableSharedUserId];
      v12 = [getLoggableSharedUserId copy];
      loggableSharedUserId = v6->_loggableSharedUserId;
      v6->_loggableSharedUserId = v12;

      getCompanionDeviceInfo = [(_AFSharedUserInfoMutation *)v7 getCompanionDeviceInfo];
      v15 = [getCompanionDeviceInfo copy];
      companionDeviceInfo = v6->_companionDeviceInfo;
      v6->_companionDeviceInfo = v15;

      v6->_personalRequestsEnabled = [(_AFSharedUserInfoMutation *)v7 getPersonalRequestsEnabled];
      v6->_companionLinkReady = [(_AFSharedUserInfoMutation *)v7 getCompanionLinkReady];
      getHomeUserId = [(_AFSharedUserInfoMutation *)v7 getHomeUserId];
      v18 = [getHomeUserId copy];
      homeUserId = v6->_homeUserId;
      v6->_homeUserId = v18;

      getICloudAltDSID = [(_AFSharedUserInfoMutation *)v7 getICloudAltDSID];
      v21 = [getICloudAltDSID copy];
      iCloudAltDSID = v6->_iCloudAltDSID;
      v6->_iCloudAltDSID = v21;

      v6->_isDeviceOwner = [(_AFSharedUserInfoMutation *)v7 getIsDeviceOwner];
      v6->_isMediaFallbackUser = [(_AFSharedUserInfoMutation *)v7 getIsMediaFallbackUser];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFSharedUserInfoMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFSharedUserInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSharedUserInfo);
      getSharedUserId = [(_AFSharedUserInfoMutation *)v5 getSharedUserId];
      v8 = [getSharedUserId copy];
      sharedUserId = v6->_sharedUserId;
      v6->_sharedUserId = v8;

      getLoggableSharedUserId = [(_AFSharedUserInfoMutation *)v5 getLoggableSharedUserId];
      v11 = [getLoggableSharedUserId copy];
      loggableSharedUserId = v6->_loggableSharedUserId;
      v6->_loggableSharedUserId = v11;

      getCompanionDeviceInfo = [(_AFSharedUserInfoMutation *)v5 getCompanionDeviceInfo];
      v14 = [getCompanionDeviceInfo copy];
      companionDeviceInfo = v6->_companionDeviceInfo;
      v6->_companionDeviceInfo = v14;

      v6->_personalRequestsEnabled = [(_AFSharedUserInfoMutation *)v5 getPersonalRequestsEnabled];
      v6->_companionLinkReady = [(_AFSharedUserInfoMutation *)v5 getCompanionLinkReady];
      getHomeUserId = [(_AFSharedUserInfoMutation *)v5 getHomeUserId];
      v17 = [getHomeUserId copy];
      homeUserId = v6->_homeUserId;
      v6->_homeUserId = v17;

      getICloudAltDSID = [(_AFSharedUserInfoMutation *)v5 getICloudAltDSID];
      v20 = [getICloudAltDSID copy];
      iCloudAltDSID = v6->_iCloudAltDSID;
      v6->_iCloudAltDSID = v20;

      v6->_isDeviceOwner = [(_AFSharedUserInfoMutation *)v5 getIsDeviceOwner];
      v6->_isMediaFallbackUser = [(_AFSharedUserInfoMutation *)v5 getIsMediaFallbackUser];
    }

    else
    {
      v6 = [(AFSharedUserInfo *)self copy];
    }
  }

  else
  {
    v6 = [(AFSharedUserInfo *)self copy];
  }

  return v6;
}

@end
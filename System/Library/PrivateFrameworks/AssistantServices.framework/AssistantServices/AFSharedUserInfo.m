@interface AFSharedUserInfo
+ (id)newWithBuilder:(id)a3;
- (AFSharedUserInfo)initWithBuilder:(id)a3;
- (AFSharedUserInfo)initWithCoder:(id)a3;
- (AFSharedUserInfo)initWithSharedUserId:(id)a3 loggableSharedUserId:(id)a4 companionDeviceInfo:(id)a5 personalRequestsEnabled:(BOOL)a6 companionLinkReady:(BOOL)a7 homeUserId:(id)a8 iCloudAltDSID:(id)a9 isDeviceOwner:(BOOL)a10 isMediaFallbackUser:(BOOL)a11;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSharedUserInfo

- (void)encodeWithCoder:(id)a3
{
  sharedUserId = self->_sharedUserId;
  v5 = a3;
  [v5 encodeObject:sharedUserId forKey:@"AFSharedUserInfo::sharedUserId"];
  [v5 encodeObject:self->_loggableSharedUserId forKey:@"AFSharedUserInfo::loggableSharedUserId"];
  [v5 encodeObject:self->_companionDeviceInfo forKey:@"AFSharedUserInfo::companionDeviceInfo"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_personalRequestsEnabled];
  [v5 encodeObject:v6 forKey:@"AFSharedUserInfo::personalRequestsEnabled"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_companionLinkReady];
  [v5 encodeObject:v7 forKey:@"AFSharedUserInfo::companionLinkReady"];

  [v5 encodeObject:self->_homeUserId forKey:@"AFSharedUserInfo::homeUserId"];
  [v5 encodeObject:self->_iCloudAltDSID forKey:@"AFSharedUserInfo::iCloudAltDSID"];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceOwner];
  [v5 encodeObject:v8 forKey:@"AFSharedUserInfo::isDeviceOwner"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMediaFallbackUser];
  [v5 encodeObject:v9 forKey:@"AFSharedUserInfo::isMediaFallbackUser"];
}

- (AFSharedUserInfo)initWithCoder:(id)a3
{
  v3 = a3;
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedUserInfo::sharedUserId"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedUserInfo::loggableSharedUserId"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedUserInfo::companionDeviceInfo"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedUserInfo::personalRequestsEnabled"];
  v7 = [v6 BOOLValue];

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedUserInfo::companionLinkReady"];
  v9 = [v8 BOOLValue];

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedUserInfo::homeUserId"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedUserInfo::iCloudAltDSID"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedUserInfo::isDeviceOwner"];
  v13 = [v12 BOOLValue];

  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFSharedUserInfo::isMediaFallbackUser"];

  LOBYTE(v3) = [v14 BOOLValue];
  BYTE1(v17) = v3;
  LOBYTE(v17) = v13;
  v15 = [(AFSharedUserInfo *)self initWithSharedUserId:v18 loggableSharedUserId:v4 companionDeviceInfo:v5 personalRequestsEnabled:v7 companionLinkReady:v9 homeUserId:v10 iCloudAltDSID:v11 isDeviceOwner:v17 isMediaFallbackUser:?];

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      personalRequestsEnabled = self->_personalRequestsEnabled;
      if (personalRequestsEnabled == [(AFSharedUserInfo *)v5 personalRequestsEnabled]&& (companionLinkReady = self->_companionLinkReady, companionLinkReady == [(AFSharedUserInfo *)v5 companionLinkReady]) && (isDeviceOwner = self->_isDeviceOwner, isDeviceOwner == [(AFSharedUserInfo *)v5 isDeviceOwner]) && (isMediaFallbackUser = self->_isMediaFallbackUser, isMediaFallbackUser == [(AFSharedUserInfo *)v5 isMediaFallbackUser]))
      {
        v10 = [(AFSharedUserInfo *)v5 sharedUserId];
        sharedUserId = self->_sharedUserId;
        if (sharedUserId == v10 || [(NSString *)sharedUserId isEqual:v10])
        {
          v12 = [(AFSharedUserInfo *)v5 loggableSharedUserId];
          loggableSharedUserId = self->_loggableSharedUserId;
          if (loggableSharedUserId == v12 || [(NSString *)loggableSharedUserId isEqual:v12])
          {
            v14 = [(AFSharedUserInfo *)v5 companionDeviceInfo];
            companionDeviceInfo = self->_companionDeviceInfo;
            if (companionDeviceInfo == v14 || [(AFCompanionDeviceInfo *)companionDeviceInfo isEqual:v14])
            {
              v16 = [(AFSharedUserInfo *)v5 homeUserId];
              homeUserId = self->_homeUserId;
              if (homeUserId == v16 || [(NSString *)homeUserId isEqual:v16])
              {
                v18 = [(AFSharedUserInfo *)v5 iCloudAltDSID];
                iCloudAltDSID = self->_iCloudAltDSID;
                v20 = iCloudAltDSID == v18 || [(NSString *)iCloudAltDSID isEqual:v18];
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

- (id)_descriptionWithIndent:(unint64_t)a3
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

- (AFSharedUserInfo)initWithSharedUserId:(id)a3 loggableSharedUserId:(id)a4 companionDeviceInfo:(id)a5 personalRequestsEnabled:(BOOL)a6 companionLinkReady:(BOOL)a7 homeUserId:(id)a8 iCloudAltDSID:(id)a9 isDeviceOwner:(BOOL)a10 isMediaFallbackUser:(BOOL)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v20 = a9;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __184__AFSharedUserInfo_initWithSharedUserId_loggableSharedUserId_companionDeviceInfo_personalRequestsEnabled_companionLinkReady_homeUserId_iCloudAltDSID_isDeviceOwner_isMediaFallbackUser___block_invoke;
  v29[3] = &unk_1E7345D28;
  v30 = v16;
  v31 = v17;
  v35 = a6;
  v36 = a7;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v37 = a10;
  v38 = a11;
  v21 = v20;
  v22 = v19;
  v23 = v18;
  v24 = v17;
  v25 = v16;
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

- (AFSharedUserInfo)initWithBuilder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = AFSharedUserInfo;
  v5 = [(AFSharedUserInfo *)&v24 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFSharedUserInfoMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFSharedUserInfoMutation *)v7 isDirty])
    {
      v8 = [(_AFSharedUserInfoMutation *)v7 getSharedUserId];
      v9 = [v8 copy];
      sharedUserId = v6->_sharedUserId;
      v6->_sharedUserId = v9;

      v11 = [(_AFSharedUserInfoMutation *)v7 getLoggableSharedUserId];
      v12 = [v11 copy];
      loggableSharedUserId = v6->_loggableSharedUserId;
      v6->_loggableSharedUserId = v12;

      v14 = [(_AFSharedUserInfoMutation *)v7 getCompanionDeviceInfo];
      v15 = [v14 copy];
      companionDeviceInfo = v6->_companionDeviceInfo;
      v6->_companionDeviceInfo = v15;

      v6->_personalRequestsEnabled = [(_AFSharedUserInfoMutation *)v7 getPersonalRequestsEnabled];
      v6->_companionLinkReady = [(_AFSharedUserInfoMutation *)v7 getCompanionLinkReady];
      v17 = [(_AFSharedUserInfoMutation *)v7 getHomeUserId];
      v18 = [v17 copy];
      homeUserId = v6->_homeUserId;
      v6->_homeUserId = v18;

      v20 = [(_AFSharedUserInfoMutation *)v7 getICloudAltDSID];
      v21 = [v20 copy];
      iCloudAltDSID = v6->_iCloudAltDSID;
      v6->_iCloudAltDSID = v21;

      v6->_isDeviceOwner = [(_AFSharedUserInfoMutation *)v7 getIsDeviceOwner];
      v6->_isMediaFallbackUser = [(_AFSharedUserInfoMutation *)v7 getIsMediaFallbackUser];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFSharedUserInfoMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFSharedUserInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSharedUserInfo);
      v7 = [(_AFSharedUserInfoMutation *)v5 getSharedUserId];
      v8 = [v7 copy];
      sharedUserId = v6->_sharedUserId;
      v6->_sharedUserId = v8;

      v10 = [(_AFSharedUserInfoMutation *)v5 getLoggableSharedUserId];
      v11 = [v10 copy];
      loggableSharedUserId = v6->_loggableSharedUserId;
      v6->_loggableSharedUserId = v11;

      v13 = [(_AFSharedUserInfoMutation *)v5 getCompanionDeviceInfo];
      v14 = [v13 copy];
      companionDeviceInfo = v6->_companionDeviceInfo;
      v6->_companionDeviceInfo = v14;

      v6->_personalRequestsEnabled = [(_AFSharedUserInfoMutation *)v5 getPersonalRequestsEnabled];
      v6->_companionLinkReady = [(_AFSharedUserInfoMutation *)v5 getCompanionLinkReady];
      v16 = [(_AFSharedUserInfoMutation *)v5 getHomeUserId];
      v17 = [v16 copy];
      homeUserId = v6->_homeUserId;
      v6->_homeUserId = v17;

      v19 = [(_AFSharedUserInfoMutation *)v5 getICloudAltDSID];
      v20 = [v19 copy];
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
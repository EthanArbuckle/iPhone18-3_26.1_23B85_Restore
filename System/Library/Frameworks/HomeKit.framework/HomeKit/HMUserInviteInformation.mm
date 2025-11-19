@interface HMUserInviteInformation
+ (id)shortDescription;
- (BOOL)_validateInviteInformationForHome:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMUserInviteInformation)initWithCoder:(id)a3;
- (HMUserInviteInformation)initWithUser:(id)a3 administrator:(BOOL)a4 remoteAccess:(BOOL)a5 announceAccess:(BOOL)a6 camerasAccessLevel:(unint64_t)a7;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMUserInviteInformation

- (NSArray)attributeDescriptions
{
  v27[7] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v26 = [(HMUserInviteInformation *)self userID];
  v25 = [v3 initWithName:@"User ID" value:v26];
  v27[0] = v25;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMUserInviteInformation *)self isAdministrator];
  v24 = HMFBooleanToString();
  v23 = [v4 initWithName:@"Administrator" value:v24];
  v27[1] = v23;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMUserInviteInformation *)self isRemoteAccessAllowed];
  v22 = HMFBooleanToString();
  v6 = [v5 initWithName:@"Remote Access Allowed" value:v22];
  v27[2] = v6;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMUserInviteInformation *)self isAnnounceAccessAllowed];
  v8 = HMFBooleanToString();
  v9 = [v7 initWithName:@"Announce Access Allowed" value:v8];
  v27[3] = v9;
  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  v11 = HMUserCameraAccessLevelAsString([(HMUserInviteInformation *)self camerasAccessLevel]);
  v12 = [v10 initWithName:@"Cameras Access Level" value:v11];
  v27[4] = v12;
  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMUserInviteInformation *)self isRestrictedGuest];
  v14 = HMFBooleanToString();
  v15 = [v13 initWithName:@"Restricted Guest" value:v14];
  v27[5] = v15;
  v16 = objc_alloc(MEMORY[0x1E69A29C8]);
  v17 = [(HMUserInviteInformation *)self restrictedGuestHomeAccessSettings];
  v18 = [v16 initWithName:@"Restricted guest access settings" value:v17];
  v27[6] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:7];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HMUserInviteInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMUserInviteInformationUserIDCodingKey"];
  if (v5)
  {
    v6 = [v4 decodeBoolForKey:@"HMUserInviteInformationAdministratorCodingKey"];
    v7 = [v4 decodeBoolForKey:@"HMUserInviteInformationAnnounceAccessAllowedCodingKey"];
    v8 = [v4 decodeBoolForKey:@"HMUserInviteInformationRemoteAccessCodingKey"];
    v9 = [v4 decodeIntegerForKey:@"HMUserInviteInformationCamerasAccessLevelCodingKey"];
    v10 = [v4 decodeBoolForKey:@"HMUserInviteInformationRestrictedGuestPrivilegeCodingKey"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMUserInviteInformationRestrictedGuestHomeAccessSettingsCodingKey"];
    self = [(HMUserInviteInformation *)self initWithUser:v5 administrator:v6 remoteAccess:v8 announceAccess:v7 camerasAccessLevel:v9 restrictedGuest:v10 restrictedGuestHomeAccessSettings:v11];

    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMUserInviteInformation *)self userID];
  [v4 encodeObject:v5 forKey:@"HMUserInviteInformationUserIDCodingKey"];

  [v4 encodeBool:-[HMUserInviteInformation isAdministrator](self forKey:{"isAdministrator"), @"HMUserInviteInformationAdministratorCodingKey"}];
  [v4 encodeBool:-[HMUserInviteInformation isAnnounceAccessAllowed](self forKey:{"isAnnounceAccessAllowed"), @"HMUserInviteInformationAnnounceAccessAllowedCodingKey"}];
  [v4 encodeBool:-[HMUserInviteInformation isRemoteAccessAllowed](self forKey:{"isRemoteAccessAllowed"), @"HMUserInviteInformationRemoteAccessCodingKey"}];
  [v4 encodeInteger:-[HMUserInviteInformation camerasAccessLevel](self forKey:{"camerasAccessLevel"), @"HMUserInviteInformationCamerasAccessLevelCodingKey"}];
  [v4 encodeBool:-[HMUserInviteInformation isRestrictedGuest](self forKey:{"isRestrictedGuest"), @"HMUserInviteInformationRestrictedGuestPrivilegeCodingKey"}];
  v6 = [(HMUserInviteInformation *)self restrictedGuestHomeAccessSettings];
  [v4 encodeObject:v6 forKey:@"HMUserInviteInformationRestrictedGuestHomeAccessSettingsCodingKey"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableUserInviteInformation alloc];
  v5 = [(HMUserInviteInformation *)self userID];
  v6 = [(HMUserInviteInformation *)self isAdministrator];
  v7 = [(HMUserInviteInformation *)self isRemoteAccessAllowed];
  v8 = [(HMUserInviteInformation *)self isAnnounceAccessAllowed];
  v9 = [(HMUserInviteInformation *)self camerasAccessLevel];
  v10 = [(HMUserInviteInformation *)self isRestrictedGuest];
  v11 = [(HMUserInviteInformation *)self restrictedGuestHomeAccessSettings];
  v12 = [(HMUserInviteInformation *)v4 initWithUser:v5 administrator:v6 remoteAccess:v7 announceAccess:v8 camerasAccessLevel:v9 restrictedGuest:v10 restrictedGuestHomeAccessSettings:v11];

  return v12;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)_validateInviteInformationForHome:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(HMUserInviteInformation *)self isAdministrator]|| ![(HMUserInviteInformation *)self isRestrictedGuest])
  {
    v6 = [(HMUserInviteInformation *)self restrictedGuestHomeAccessSettings];
    if ([(HMUserInviteInformation *)self isAdministrator])
    {
      if (v6)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = self;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = HMFGetLogIdentifier();
          v19 = 138543618;
          v20 = v10;
          v21 = 2112;
          v22 = v8;
          v11 = "%{public}@An admin cannot have restricted guest access settings : %@";
LABEL_13:
          _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, v11, &v19, 0x16u);

          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else if ([(HMUserInviteInformation *)self isRestrictedGuest])
    {
      if ([(HMUserInviteInformation *)self isAnnounceAccessAllowed])
      {
        goto LABEL_11;
      }

      if ([(HMUserInviteInformation *)self camerasAccessLevel])
      {
        goto LABEL_11;
      }

      if (v6)
      {
        if (![v6 doAllAccessoriesBelongToHome:v4])
        {
          goto LABEL_11;
        }

        v13 = [v6 guestAccessSchedule];
        if (v13)
        {
          v14 = v13;
          v15 = [v6 guestAccessSchedule];
          v16 = [v15 isValidSchedule];

          if ((v16 & 1) == 0)
          {
LABEL_11:
            v7 = objc_autoreleasePoolPush();
            v12 = self;
            v9 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              v10 = HMFGetLogIdentifier();
              v19 = 138543618;
              v20 = v10;
              v21 = 2112;
              v22 = v12;
              v11 = "%{public}@Restricted guest home access settings are not valid. Accessory list is empty, accessories do not belong to the home where this user is invited in, or the schedule is invalid: %@";
              goto LABEL_13;
            }

LABEL_14:

            objc_autoreleasePoolPop(v7);
            v5 = 0;
LABEL_20:

            goto LABEL_21;
          }
        }
      }
    }

    v5 = 1;
    goto LABEL_20;
  }

  v5 = 0;
LABEL_21:

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v3 = [(HMUserInviteInformation *)self userID];
  v4 = [v3 hash];

  v5 = v4 ^ [(HMUserInviteInformation *)self isAdministrator];
  v6 = [(HMUserInviteInformation *)self isRemoteAccessAllowed];
  v7 = v5 ^ v6 ^ [(HMUserInviteInformation *)self isAnnounceAccessAllowed];
  v8 = [(HMUserInviteInformation *)self camerasAccessLevel];
  v9 = v8 ^ [(HMUserInviteInformation *)self isRestrictedGuest];
  v10 = [(HMUserInviteInformation *)self restrictedGuestHomeAccessSettings];
  v11 = v9 ^ [v10 hash];

  return v7 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(HMUserInviteInformation *)self userID];
    v8 = [v6 userID];
    if ([v7 isEqual:v8] && (v9 = -[HMUserInviteInformation isAdministrator](self, "isAdministrator"), v9 == objc_msgSend(v6, "isAdministrator")) && (v10 = -[HMUserInviteInformation isRemoteAccessAllowed](self, "isRemoteAccessAllowed"), v10 == objc_msgSend(v6, "isRemoteAccessAllowed")) && (v11 = -[HMUserInviteInformation isAnnounceAccessAllowed](self, "isAnnounceAccessAllowed"), v11 == objc_msgSend(v6, "isAnnounceAccessAllowed")) && (v12 = -[HMUserInviteInformation camerasAccessLevel](self, "camerasAccessLevel"), v12 == objc_msgSend(v6, "camerasAccessLevel")) && (v13 = -[HMUserInviteInformation isRestrictedGuest](self, "isRestrictedGuest"), v13 == objc_msgSend(v6, "isRestrictedGuest")))
    {
      v16 = [(HMUserInviteInformation *)self restrictedGuestHomeAccessSettings];
      v17 = [v6 restrictedGuestHomeAccessSettings];
      v14 = HMFEqualObjects();
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (HMUserInviteInformation)initWithUser:(id)a3 administrator:(BOOL)a4 remoteAccess:(BOOL)a5 announceAccess:(BOOL)a6 camerasAccessLevel:(unint64_t)a7
{
  v13 = a3;
  v17.receiver = self;
  v17.super_class = HMUserInviteInformation;
  v14 = [(HMUserInviteInformation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_userID, a3);
    v15->_administrator = a4;
    v15->_remoteAccessAllowed = a5;
    v15->_camerasAccessLevel = a7;
    v15->_announceAccessAllowed = a6;
  }

  return v15;
}

@end
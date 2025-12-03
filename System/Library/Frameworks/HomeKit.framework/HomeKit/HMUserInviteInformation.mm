@interface HMUserInviteInformation
+ (id)shortDescription;
- (BOOL)_validateInviteInformationForHome:(id)home;
- (BOOL)isEqual:(id)equal;
- (HMUserInviteInformation)initWithCoder:(id)coder;
- (HMUserInviteInformation)initWithUser:(id)user administrator:(BOOL)administrator remoteAccess:(BOOL)access announceAccess:(BOOL)announceAccess camerasAccessLevel:(unint64_t)level;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMUserInviteInformation

- (NSArray)attributeDescriptions
{
  v27[7] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  userID = [(HMUserInviteInformation *)self userID];
  v25 = [v3 initWithName:@"User ID" value:userID];
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
  restrictedGuestHomeAccessSettings = [(HMUserInviteInformation *)self restrictedGuestHomeAccessSettings];
  v18 = [v16 initWithName:@"Restricted guest access settings" value:restrictedGuestHomeAccessSettings];
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

- (HMUserInviteInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMUserInviteInformationUserIDCodingKey"];
  if (v5)
  {
    v6 = [coderCopy decodeBoolForKey:@"HMUserInviteInformationAdministratorCodingKey"];
    v7 = [coderCopy decodeBoolForKey:@"HMUserInviteInformationAnnounceAccessAllowedCodingKey"];
    v8 = [coderCopy decodeBoolForKey:@"HMUserInviteInformationRemoteAccessCodingKey"];
    v9 = [coderCopy decodeIntegerForKey:@"HMUserInviteInformationCamerasAccessLevelCodingKey"];
    v10 = [coderCopy decodeBoolForKey:@"HMUserInviteInformationRestrictedGuestPrivilegeCodingKey"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMUserInviteInformationRestrictedGuestHomeAccessSettingsCodingKey"];
    self = [(HMUserInviteInformation *)self initWithUser:v5 administrator:v6 remoteAccess:v8 announceAccess:v7 camerasAccessLevel:v9 restrictedGuest:v10 restrictedGuestHomeAccessSettings:v11];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  userID = [(HMUserInviteInformation *)self userID];
  [coderCopy encodeObject:userID forKey:@"HMUserInviteInformationUserIDCodingKey"];

  [coderCopy encodeBool:-[HMUserInviteInformation isAdministrator](self forKey:{"isAdministrator"), @"HMUserInviteInformationAdministratorCodingKey"}];
  [coderCopy encodeBool:-[HMUserInviteInformation isAnnounceAccessAllowed](self forKey:{"isAnnounceAccessAllowed"), @"HMUserInviteInformationAnnounceAccessAllowedCodingKey"}];
  [coderCopy encodeBool:-[HMUserInviteInformation isRemoteAccessAllowed](self forKey:{"isRemoteAccessAllowed"), @"HMUserInviteInformationRemoteAccessCodingKey"}];
  [coderCopy encodeInteger:-[HMUserInviteInformation camerasAccessLevel](self forKey:{"camerasAccessLevel"), @"HMUserInviteInformationCamerasAccessLevelCodingKey"}];
  [coderCopy encodeBool:-[HMUserInviteInformation isRestrictedGuest](self forKey:{"isRestrictedGuest"), @"HMUserInviteInformationRestrictedGuestPrivilegeCodingKey"}];
  restrictedGuestHomeAccessSettings = [(HMUserInviteInformation *)self restrictedGuestHomeAccessSettings];
  [coderCopy encodeObject:restrictedGuestHomeAccessSettings forKey:@"HMUserInviteInformationRestrictedGuestHomeAccessSettingsCodingKey"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableUserInviteInformation alloc];
  userID = [(HMUserInviteInformation *)self userID];
  isAdministrator = [(HMUserInviteInformation *)self isAdministrator];
  isRemoteAccessAllowed = [(HMUserInviteInformation *)self isRemoteAccessAllowed];
  isAnnounceAccessAllowed = [(HMUserInviteInformation *)self isAnnounceAccessAllowed];
  camerasAccessLevel = [(HMUserInviteInformation *)self camerasAccessLevel];
  isRestrictedGuest = [(HMUserInviteInformation *)self isRestrictedGuest];
  restrictedGuestHomeAccessSettings = [(HMUserInviteInformation *)self restrictedGuestHomeAccessSettings];
  v12 = [(HMUserInviteInformation *)v4 initWithUser:userID administrator:isAdministrator remoteAccess:isRemoteAccessAllowed announceAccess:isAnnounceAccessAllowed camerasAccessLevel:camerasAccessLevel restrictedGuest:isRestrictedGuest restrictedGuestHomeAccessSettings:restrictedGuestHomeAccessSettings];

  return v12;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)_validateInviteInformationForHome:(id)home
{
  v23 = *MEMORY[0x1E69E9840];
  homeCopy = home;
  if (![(HMUserInviteInformation *)self isAdministrator]|| ![(HMUserInviteInformation *)self isRestrictedGuest])
  {
    restrictedGuestHomeAccessSettings = [(HMUserInviteInformation *)self restrictedGuestHomeAccessSettings];
    if ([(HMUserInviteInformation *)self isAdministrator])
    {
      if (restrictedGuestHomeAccessSettings)
      {
        v7 = objc_autoreleasePoolPush();
        selfCopy = self;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = HMFGetLogIdentifier();
          v19 = 138543618;
          v20 = v10;
          v21 = 2112;
          v22 = selfCopy;
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

      if (restrictedGuestHomeAccessSettings)
      {
        if (![restrictedGuestHomeAccessSettings doAllAccessoriesBelongToHome:homeCopy])
        {
          goto LABEL_11;
        }

        guestAccessSchedule = [restrictedGuestHomeAccessSettings guestAccessSchedule];
        if (guestAccessSchedule)
        {
          v14 = guestAccessSchedule;
          guestAccessSchedule2 = [restrictedGuestHomeAccessSettings guestAccessSchedule];
          isValidSchedule = [guestAccessSchedule2 isValidSchedule];

          if ((isValidSchedule & 1) == 0)
          {
LABEL_11:
            v7 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v9 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              v10 = HMFGetLogIdentifier();
              v19 = 138543618;
              v20 = v10;
              v21 = 2112;
              v22 = selfCopy2;
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
  userID = [(HMUserInviteInformation *)self userID];
  v4 = [userID hash];

  v5 = v4 ^ [(HMUserInviteInformation *)self isAdministrator];
  isRemoteAccessAllowed = [(HMUserInviteInformation *)self isRemoteAccessAllowed];
  v7 = v5 ^ isRemoteAccessAllowed ^ [(HMUserInviteInformation *)self isAnnounceAccessAllowed];
  camerasAccessLevel = [(HMUserInviteInformation *)self camerasAccessLevel];
  v9 = camerasAccessLevel ^ [(HMUserInviteInformation *)self isRestrictedGuest];
  restrictedGuestHomeAccessSettings = [(HMUserInviteInformation *)self restrictedGuestHomeAccessSettings];
  v11 = v9 ^ [restrictedGuestHomeAccessSettings hash];

  return v7 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    userID = [(HMUserInviteInformation *)self userID];
    userID2 = [v6 userID];
    if ([userID isEqual:userID2] && (v9 = -[HMUserInviteInformation isAdministrator](self, "isAdministrator"), v9 == objc_msgSend(v6, "isAdministrator")) && (v10 = -[HMUserInviteInformation isRemoteAccessAllowed](self, "isRemoteAccessAllowed"), v10 == objc_msgSend(v6, "isRemoteAccessAllowed")) && (v11 = -[HMUserInviteInformation isAnnounceAccessAllowed](self, "isAnnounceAccessAllowed"), v11 == objc_msgSend(v6, "isAnnounceAccessAllowed")) && (v12 = -[HMUserInviteInformation camerasAccessLevel](self, "camerasAccessLevel"), v12 == objc_msgSend(v6, "camerasAccessLevel")) && (v13 = -[HMUserInviteInformation isRestrictedGuest](self, "isRestrictedGuest"), v13 == objc_msgSend(v6, "isRestrictedGuest")))
    {
      restrictedGuestHomeAccessSettings = [(HMUserInviteInformation *)self restrictedGuestHomeAccessSettings];
      restrictedGuestHomeAccessSettings2 = [v6 restrictedGuestHomeAccessSettings];
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

- (HMUserInviteInformation)initWithUser:(id)user administrator:(BOOL)administrator remoteAccess:(BOOL)access announceAccess:(BOOL)announceAccess camerasAccessLevel:(unint64_t)level
{
  userCopy = user;
  v17.receiver = self;
  v17.super_class = HMUserInviteInformation;
  v14 = [(HMUserInviteInformation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_userID, user);
    v15->_administrator = administrator;
    v15->_remoteAccessAllowed = access;
    v15->_camerasAccessLevel = level;
    v15->_announceAccessAllowed = announceAccess;
  }

  return v15;
}

@end
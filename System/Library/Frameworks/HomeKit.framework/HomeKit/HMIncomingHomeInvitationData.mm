@interface HMIncomingHomeInvitationData
- (HMIncomingHomeInvitationData)initWithCoder:(id)coder;
- (HMIncomingHomeInvitationData)initWithInviterUserID:(id)d invitationIdentifier:(id)identifier inviterName:(id)name invitationState:(int64_t)state homeName:(id)homeName homeUUID:(id)iD expiryDate:(id)date;
- (NSString)inviterName;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setInviterName:(id)name;
@end

@implementation HMIncomingHomeInvitationData

- (id)description
{
  v14.receiver = self;
  v14.super_class = HMIncomingHomeInvitationData;
  v3 = [(HMHomeInvitationData *)&v14 description];
  inviterUserID = [(HMIncomingHomeInvitationData *)self inviterUserID];
  inviterUUID = [(HMIncomingHomeInvitationData *)self inviterUUID];
  uUIDString = [inviterUUID UUIDString];
  inviterName = [(HMIncomingHomeInvitationData *)self inviterName];
  inviterMergeID = [(HMIncomingHomeInvitationData *)self inviterMergeID];
  homeName = [(HMIncomingHomeInvitationData *)self homeName];
  homeUUID = [(HMIncomingHomeInvitationData *)self homeUUID];
  uUIDString2 = [homeUUID UUIDString];
  v12 = [v3 stringByAppendingFormat:@", [ inviterUserID = %@, inviterUUID = %@, inviterName = %@, inviterMergeID = %@, home = %@, homeUUID = %@ ]", inviterUserID, uUIDString, inviterName, inviterMergeID, homeName, uUIDString2];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = HMIncomingHomeInvitationData;
  coderCopy = coder;
  [(HMHomeInvitationData *)&v11 encodeWithCoder:coderCopy];
  v5 = [(HMIncomingHomeInvitationData *)self inviterUserID:v11.receiver];
  [coderCopy encodeObject:v5 forKey:@"HM.inviterUserID"];

  homeName = [(HMIncomingHomeInvitationData *)self homeName];
  [coderCopy encodeObject:homeName forKey:@"homeName"];

  homeUUID = [(HMIncomingHomeInvitationData *)self homeUUID];
  [coderCopy encodeObject:homeUUID forKey:@"homeUUID"];

  inviterUUID = [(HMIncomingHomeInvitationData *)self inviterUUID];
  [coderCopy encodeObject:inviterUUID forKey:@"userUUID"];

  inviterName = [(HMIncomingHomeInvitationData *)self inviterName];
  [coderCopy encodeObject:inviterName forKey:@"userDisplayName"];

  inviterMergeID = [(HMIncomingHomeInvitationData *)self inviterMergeID];
  [coderCopy encodeObject:inviterMergeID forKey:@"mergeID"];
}

- (HMIncomingHomeInvitationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = HMIncomingHomeInvitationData;
  v5 = [(HMHomeInvitationData *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeName"];
    hm_truncatedNameString = [v6 hm_truncatedNameString];
    homeName = v5->_homeName;
    v5->_homeName = hm_truncatedNameString;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeUUID"];
    homeUUID = v5->_homeUUID;
    v5->_homeUUID = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.inviterUserID"];
    inviterUserID = v5->_inviterUserID;
    v5->_inviterUserID = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userUUID"];
    inviterUUID = v5->_inviterUUID;
    v5->_inviterUUID = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userDisplayName"];
    hm_truncatedNameString2 = [v15 hm_truncatedNameString];
    inviterName = v5->_inviterName;
    v5->_inviterName = hm_truncatedNameString2;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mergeID"];
    inviterMergeID = v5->_inviterMergeID;
    v5->_inviterMergeID = v18;
  }

  return v5;
}

- (void)setInviterName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  hm_truncatedNameString = [nameCopy hm_truncatedNameString];
  v5 = [hm_truncatedNameString copy];
  inviterName = self->_inviterName;
  self->_inviterName = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)inviterName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_inviterName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMIncomingHomeInvitationData)initWithInviterUserID:(id)d invitationIdentifier:(id)identifier inviterName:(id)name invitationState:(int64_t)state homeName:(id)homeName homeUUID:(id)iD expiryDate:(id)date
{
  v64 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifierCopy = identifier;
  nameCopy = name;
  homeNameCopy = homeName;
  iDCopy = iD;
  dateCopy = date;
  date = [MEMORY[0x1E695DF00] date];
  [dateCopy timeIntervalSinceDate:date];
  if (dateCopy)
  {
    v21 = v20;
    if (v20 <= 10800.0)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = HMFGetOSLogHandle();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
      if (v21 >= 0.0)
      {
        if (v34)
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543618;
          v59 = v37;
          v60 = 2112;
          v61 = dateCopy;
          _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_INFO, "%{public}@Setting home invitation expiry date to %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        v36 = dateCopy;
      }

      else
      {
        if (v34)
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v59 = v35;
          v60 = 2112;
          v61 = dateCopy;
          _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_INFO, "%{public}@Home invitation expiry date is already in the past, expiryDate: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        v36 = date;
      }

      v25 = [v36 copy];
    }

    else
    {
      stateCopy = state;
      v22 = objc_autoreleasePoolPush();
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543874;
        v59 = v24;
        v60 = 2048;
        v61 = 0x40C5180000000000;
        v62 = 2112;
        v63 = dateCopy;
        _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Capping home invitation expiry duration to %g seconds from now, original expiry date: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      v25 = [date dateByAddingTimeInterval:10800.0];
      state = stateCopy;
    }
  }

  else
  {
    selfCopy = self;
    stateCopy2 = state;
    v25 = [date dateByAddingTimeInterval:10800.0];
    v28 = objc_autoreleasePoolPush();
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v54 = identifierCopy;
      v31 = v30 = iDCopy;
      *buf = 138543618;
      v59 = v31;
      v60 = 2112;
      v61 = v25;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_INFO, "%{public}@Setting home invitation expiry date to maximum allowed: %@", buf, 0x16u);

      iDCopy = v30;
      identifierCopy = v54;
    }

    objc_autoreleasePoolPop(v28);
    state = stateCopy2;
    self = selfCopy;
  }

  v57.receiver = self;
  v57.super_class = HMIncomingHomeInvitationData;
  v38 = [(HMHomeInvitationData *)&v57 initWithInvitationState:state invitationIdentifier:identifierCopy endDate:v25];
  if (v38)
  {
    v39 = [dCopy copy];
    inviterUserID = v38->_inviterUserID;
    v38->_inviterUserID = v39;

    hm_truncatedNameString = [homeNameCopy hm_truncatedNameString];
    v42 = [hm_truncatedNameString copy];
    homeName = v38->_homeName;
    v38->_homeName = v42;

    v44 = [iDCopy copy];
    homeUUID = v38->_homeUUID;
    v38->_homeUUID = v44;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    inviterUUID = v38->_inviterUUID;
    v38->_inviterUUID = uUID;

    hm_truncatedNameString2 = [nameCopy hm_truncatedNameString];
    v49 = [hm_truncatedNameString2 copy];
    inviterName = v38->_inviterName;
    v38->_inviterName = v49;

    v38->_lock._os_unfair_lock_opaque = 0;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v38;
}

@end
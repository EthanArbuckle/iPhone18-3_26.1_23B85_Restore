@interface HMOutgoingHomeInvitationData
- (HMOutgoingHomeInvitationData)initWithCoder:(id)coder;
- (HMOutgoingHomeInvitationData)initWithUUID:(id)d inviteeUserID:(id)iD inviteeName:(id)name invitationState:(int64_t)state expiryDate:(id)date;
- (NSString)inviteeName;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setInviteeName:(id)name;
@end

@implementation HMOutgoingHomeInvitationData

- (id)description
{
  v10.receiver = self;
  v10.super_class = HMOutgoingHomeInvitationData;
  v3 = [(HMHomeInvitationData *)&v10 description];
  inviteeUserID = [(HMOutgoingHomeInvitationData *)self inviteeUserID];
  inviteeUUID = [(HMOutgoingHomeInvitationData *)self inviteeUUID];
  uUIDString = [inviteeUUID UUIDString];
  inviteeName = [(HMOutgoingHomeInvitationData *)self inviteeName];
  v8 = [v3 stringByAppendingFormat:@", [ inviteeUserID = %@, inviteeUUID = %@, inviteeName = %@ ]", inviteeUserID, uUIDString, inviteeName];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = HMOutgoingHomeInvitationData;
  coderCopy = coder;
  [(HMHomeInvitationData *)&v8 encodeWithCoder:coderCopy];
  v5 = [(HMOutgoingHomeInvitationData *)self inviteeUserID:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"HM.inviteeUserID"];

  inviteeUUID = [(HMOutgoingHomeInvitationData *)self inviteeUUID];
  [coderCopy encodeObject:inviteeUUID forKey:@"userUUID"];

  inviteeName = [(HMOutgoingHomeInvitationData *)self inviteeName];
  [coderCopy encodeObject:inviteeName forKey:@"userDisplayName"];
}

- (HMOutgoingHomeInvitationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = HMOutgoingHomeInvitationData;
  v5 = [(HMHomeInvitationData *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.inviteeUserID"];
    inviteeUserID = v5->_inviteeUserID;
    v5->_inviteeUserID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userUUID"];
    inviteeUUID = v5->_inviteeUUID;
    v5->_inviteeUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userDisplayName"];
    hm_truncatedNameString = [v10 hm_truncatedNameString];
    inviteeName = v5->_inviteeName;
    v5->_inviteeName = hm_truncatedNameString;
  }

  return v5;
}

- (void)setInviteeName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  hm_truncatedNameString = [nameCopy hm_truncatedNameString];
  v5 = [hm_truncatedNameString copy];
  inviteeName = self->_inviteeName;
  self->_inviteeName = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)inviteeName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_inviteeName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMOutgoingHomeInvitationData)initWithUUID:(id)d inviteeUserID:(id)iD inviteeName:(id)name invitationState:(int64_t)state expiryDate:(id)date
{
  v55 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  dateCopy = date;
  date = [MEMORY[0x1E695DF00] date];
  [dateCopy timeIntervalSinceDate:date];
  if (dateCopy)
  {
    v18 = v17;
    if (v17 <= 3153600000.0)
    {
      v31 = objc_autoreleasePoolPush();
      v32 = HMFGetOSLogHandle();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);
      if (v18 >= 0.0)
      {
        if (v33)
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543618;
          v50 = v36;
          v51 = 2112;
          v52 = dateCopy;
          _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_INFO, "%{public}@Setting home invitation expiry date to %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v35 = dateCopy;
      }

      else
      {
        if (v33)
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543618;
          v50 = v34;
          v51 = 2112;
          v52 = dateCopy;
          _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_INFO, "%{public}@Home invitation expiry date is already in the past, expiryDate: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v35 = date;
      }

      v22 = [v35 copy];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543874;
        v50 = v21;
        v51 = 2048;
        v52 = 0x41E77F03C0000000;
        v53 = 2112;
        v54 = dateCopy;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Capping home invitation expiry duration to %g seconds from now, original expiry date: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
      v22 = [date dateByAddingTimeInterval:3153600000.0];
    }

    v23 = v22;
  }

  else
  {
    v23 = [date dateByAddingTimeInterval:3153600000.0];
    v24 = objc_autoreleasePoolPush();
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v47 = dCopy;
      v26 = nameCopy;
      v27 = iDCopy;
      selfCopy = self;
      v30 = v29 = state;
      *buf = 138543618;
      v50 = v30;
      v51 = 2112;
      v52 = v23;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@Setting home invitation expiry date to maximum allowed: %@", buf, 0x16u);

      state = v29;
      self = selfCopy;
      iDCopy = v27;
      nameCopy = v26;
      dCopy = v47;
    }

    objc_autoreleasePoolPop(v24);
  }

  v48.receiver = self;
  v48.super_class = HMOutgoingHomeInvitationData;
  v37 = [(HMHomeInvitationData *)&v48 initWithInvitationState:state invitationIdentifier:dCopy endDate:v23];
  if (v37)
  {
    v38 = [iDCopy copy];
    inviteeUserID = v37->_inviteeUserID;
    v37->_inviteeUserID = v38;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    inviteeUUID = v37->_inviteeUUID;
    v37->_inviteeUUID = uUID;

    hm_truncatedNameString = [nameCopy hm_truncatedNameString];
    v43 = [hm_truncatedNameString copy];
    inviteeName = v37->_inviteeName;
    v37->_inviteeName = v43;

    v37->_lock._os_unfair_lock_opaque = 0;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v37;
}

@end
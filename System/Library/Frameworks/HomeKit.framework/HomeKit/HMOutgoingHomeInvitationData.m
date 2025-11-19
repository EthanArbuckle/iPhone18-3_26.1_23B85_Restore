@interface HMOutgoingHomeInvitationData
- (HMOutgoingHomeInvitationData)initWithCoder:(id)a3;
- (HMOutgoingHomeInvitationData)initWithUUID:(id)a3 inviteeUserID:(id)a4 inviteeName:(id)a5 invitationState:(int64_t)a6 expiryDate:(id)a7;
- (NSString)inviteeName;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setInviteeName:(id)a3;
@end

@implementation HMOutgoingHomeInvitationData

- (id)description
{
  v10.receiver = self;
  v10.super_class = HMOutgoingHomeInvitationData;
  v3 = [(HMHomeInvitationData *)&v10 description];
  v4 = [(HMOutgoingHomeInvitationData *)self inviteeUserID];
  v5 = [(HMOutgoingHomeInvitationData *)self inviteeUUID];
  v6 = [v5 UUIDString];
  v7 = [(HMOutgoingHomeInvitationData *)self inviteeName];
  v8 = [v3 stringByAppendingFormat:@", [ inviteeUserID = %@, inviteeUUID = %@, inviteeName = %@ ]", v4, v6, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = HMOutgoingHomeInvitationData;
  v4 = a3;
  [(HMHomeInvitationData *)&v8 encodeWithCoder:v4];
  v5 = [(HMOutgoingHomeInvitationData *)self inviteeUserID:v8.receiver];
  [v4 encodeObject:v5 forKey:@"HM.inviteeUserID"];

  v6 = [(HMOutgoingHomeInvitationData *)self inviteeUUID];
  [v4 encodeObject:v6 forKey:@"userUUID"];

  v7 = [(HMOutgoingHomeInvitationData *)self inviteeName];
  [v4 encodeObject:v7 forKey:@"userDisplayName"];
}

- (HMOutgoingHomeInvitationData)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HMOutgoingHomeInvitationData;
  v5 = [(HMHomeInvitationData *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.inviteeUserID"];
    inviteeUserID = v5->_inviteeUserID;
    v5->_inviteeUserID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userUUID"];
    inviteeUUID = v5->_inviteeUUID;
    v5->_inviteeUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userDisplayName"];
    v11 = [v10 hm_truncatedNameString];
    inviteeName = v5->_inviteeName;
    v5->_inviteeName = v11;
  }

  return v5;
}

- (void)setInviteeName:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v7 hm_truncatedNameString];
  v5 = [v4 copy];
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

- (HMOutgoingHomeInvitationData)initWithUUID:(id)a3 inviteeUserID:(id)a4 inviteeName:(id)a5 invitationState:(int64_t)a6 expiryDate:(id)a7
{
  v55 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [MEMORY[0x1E695DF00] date];
  [v15 timeIntervalSinceDate:v16];
  if (v15)
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
          v52 = v15;
          _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_INFO, "%{public}@Setting home invitation expiry date to %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v35 = v15;
      }

      else
      {
        if (v33)
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543618;
          v50 = v34;
          v51 = 2112;
          v52 = v15;
          _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_INFO, "%{public}@Home invitation expiry date is already in the past, expiryDate: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v35 = v16;
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
        v54 = v15;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Capping home invitation expiry duration to %g seconds from now, original expiry date: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
      v22 = [v16 dateByAddingTimeInterval:3153600000.0];
    }

    v23 = v22;
  }

  else
  {
    v23 = [v16 dateByAddingTimeInterval:3153600000.0];
    v24 = objc_autoreleasePoolPush();
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v47 = v12;
      v26 = v14;
      v27 = v13;
      v28 = self;
      v30 = v29 = a6;
      *buf = 138543618;
      v50 = v30;
      v51 = 2112;
      v52 = v23;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@Setting home invitation expiry date to maximum allowed: %@", buf, 0x16u);

      a6 = v29;
      self = v28;
      v13 = v27;
      v14 = v26;
      v12 = v47;
    }

    objc_autoreleasePoolPop(v24);
  }

  v48.receiver = self;
  v48.super_class = HMOutgoingHomeInvitationData;
  v37 = [(HMHomeInvitationData *)&v48 initWithInvitationState:a6 invitationIdentifier:v12 endDate:v23];
  if (v37)
  {
    v38 = [v13 copy];
    inviteeUserID = v37->_inviteeUserID;
    v37->_inviteeUserID = v38;

    v40 = [MEMORY[0x1E696AFB0] UUID];
    inviteeUUID = v37->_inviteeUUID;
    v37->_inviteeUUID = v40;

    v42 = [v14 hm_truncatedNameString];
    v43 = [v42 copy];
    inviteeName = v37->_inviteeName;
    v37->_inviteeName = v43;

    v37->_lock._os_unfair_lock_opaque = 0;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v37;
}

@end
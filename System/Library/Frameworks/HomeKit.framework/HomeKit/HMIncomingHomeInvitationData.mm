@interface HMIncomingHomeInvitationData
- (HMIncomingHomeInvitationData)initWithCoder:(id)a3;
- (HMIncomingHomeInvitationData)initWithInviterUserID:(id)a3 invitationIdentifier:(id)a4 inviterName:(id)a5 invitationState:(int64_t)a6 homeName:(id)a7 homeUUID:(id)a8 expiryDate:(id)a9;
- (NSString)inviterName;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setInviterName:(id)a3;
@end

@implementation HMIncomingHomeInvitationData

- (id)description
{
  v14.receiver = self;
  v14.super_class = HMIncomingHomeInvitationData;
  v3 = [(HMHomeInvitationData *)&v14 description];
  v4 = [(HMIncomingHomeInvitationData *)self inviterUserID];
  v5 = [(HMIncomingHomeInvitationData *)self inviterUUID];
  v6 = [v5 UUIDString];
  v7 = [(HMIncomingHomeInvitationData *)self inviterName];
  v8 = [(HMIncomingHomeInvitationData *)self inviterMergeID];
  v9 = [(HMIncomingHomeInvitationData *)self homeName];
  v10 = [(HMIncomingHomeInvitationData *)self homeUUID];
  v11 = [v10 UUIDString];
  v12 = [v3 stringByAppendingFormat:@", [ inviterUserID = %@, inviterUUID = %@, inviterName = %@, inviterMergeID = %@, home = %@, homeUUID = %@ ]", v4, v6, v7, v8, v9, v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = HMIncomingHomeInvitationData;
  v4 = a3;
  [(HMHomeInvitationData *)&v11 encodeWithCoder:v4];
  v5 = [(HMIncomingHomeInvitationData *)self inviterUserID:v11.receiver];
  [v4 encodeObject:v5 forKey:@"HM.inviterUserID"];

  v6 = [(HMIncomingHomeInvitationData *)self homeName];
  [v4 encodeObject:v6 forKey:@"homeName"];

  v7 = [(HMIncomingHomeInvitationData *)self homeUUID];
  [v4 encodeObject:v7 forKey:@"homeUUID"];

  v8 = [(HMIncomingHomeInvitationData *)self inviterUUID];
  [v4 encodeObject:v8 forKey:@"userUUID"];

  v9 = [(HMIncomingHomeInvitationData *)self inviterName];
  [v4 encodeObject:v9 forKey:@"userDisplayName"];

  v10 = [(HMIncomingHomeInvitationData *)self inviterMergeID];
  [v4 encodeObject:v10 forKey:@"mergeID"];
}

- (HMIncomingHomeInvitationData)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = HMIncomingHomeInvitationData;
  v5 = [(HMHomeInvitationData *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeName"];
    v7 = [v6 hm_truncatedNameString];
    homeName = v5->_homeName;
    v5->_homeName = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeUUID"];
    homeUUID = v5->_homeUUID;
    v5->_homeUUID = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.inviterUserID"];
    inviterUserID = v5->_inviterUserID;
    v5->_inviterUserID = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userUUID"];
    inviterUUID = v5->_inviterUUID;
    v5->_inviterUUID = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userDisplayName"];
    v16 = [v15 hm_truncatedNameString];
    inviterName = v5->_inviterName;
    v5->_inviterName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mergeID"];
    inviterMergeID = v5->_inviterMergeID;
    v5->_inviterMergeID = v18;
  }

  return v5;
}

- (void)setInviterName:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v7 hm_truncatedNameString];
  v5 = [v4 copy];
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

- (HMIncomingHomeInvitationData)initWithInviterUserID:(id)a3 invitationIdentifier:(id)a4 inviterName:(id)a5 invitationState:(int64_t)a6 homeName:(id)a7 homeUUID:(id)a8 expiryDate:(id)a9
{
  v64 = *MEMORY[0x1E69E9840];
  v56 = a3;
  v15 = a4;
  v55 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = [MEMORY[0x1E695DF00] date];
  [v18 timeIntervalSinceDate:v19];
  if (v18)
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
          v61 = v18;
          _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_INFO, "%{public}@Setting home invitation expiry date to %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        v36 = v18;
      }

      else
      {
        if (v34)
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v59 = v35;
          v60 = 2112;
          v61 = v18;
          _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_INFO, "%{public}@Home invitation expiry date is already in the past, expiryDate: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        v36 = v19;
      }

      v25 = [v36 copy];
    }

    else
    {
      v53 = a6;
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
        v63 = v18;
        _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Capping home invitation expiry duration to %g seconds from now, original expiry date: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      v25 = [v19 dateByAddingTimeInterval:10800.0];
      a6 = v53;
    }
  }

  else
  {
    v26 = self;
    v27 = a6;
    v25 = [v19 dateByAddingTimeInterval:10800.0];
    v28 = objc_autoreleasePoolPush();
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v54 = v15;
      v31 = v30 = v17;
      *buf = 138543618;
      v59 = v31;
      v60 = 2112;
      v61 = v25;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_INFO, "%{public}@Setting home invitation expiry date to maximum allowed: %@", buf, 0x16u);

      v17 = v30;
      v15 = v54;
    }

    objc_autoreleasePoolPop(v28);
    a6 = v27;
    self = v26;
  }

  v57.receiver = self;
  v57.super_class = HMIncomingHomeInvitationData;
  v38 = [(HMHomeInvitationData *)&v57 initWithInvitationState:a6 invitationIdentifier:v15 endDate:v25];
  if (v38)
  {
    v39 = [v56 copy];
    inviterUserID = v38->_inviterUserID;
    v38->_inviterUserID = v39;

    v41 = [v16 hm_truncatedNameString];
    v42 = [v41 copy];
    homeName = v38->_homeName;
    v38->_homeName = v42;

    v44 = [v17 copy];
    homeUUID = v38->_homeUUID;
    v38->_homeUUID = v44;

    v46 = [MEMORY[0x1E696AFB0] UUID];
    inviterUUID = v38->_inviterUUID;
    v38->_inviterUUID = v46;

    v48 = [v55 hm_truncatedNameString];
    v49 = [v48 copy];
    inviterName = v38->_inviterName;
    v38->_inviterName = v49;

    v38->_lock._os_unfair_lock_opaque = 0;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v38;
}

@end
@interface HMHomeInvitationData
+ (id)homeInvitationStateDescription:(int64_t)a3;
- (HMHomeInvitationData)initWithCoder:(id)a3;
- (HMHomeInvitationData)initWithInvitationState:(int64_t)a3 invitationIdentifier:(id)a4 endDate:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMHomeInvitationData

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HMHomeInvitationData *)self identifier];
  v5 = [v4 UUIDString];
  v6 = [(HMHomeInvitationData *)self startDate];
  v7 = [(HMHomeInvitationData *)self endDate];
  v8 = [HMHomeInvitationData homeInvitationStateDescription:[(HMHomeInvitationData *)self invitationState]];
  v9 = [v3 stringWithFormat:@"[ identifier = %@, startDate = %@, endDate = %@, state = %@ ]", v5, v6, v7, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(HMHomeInvitationData *)self identifier];
  [v7 encodeObject:v4 forKey:@"HM.identifier"];

  v5 = [(HMHomeInvitationData *)self startDate];
  [v7 encodeObject:v5 forKey:@"HM.startDate"];

  v6 = [(HMHomeInvitationData *)self endDate];
  [v7 encodeObject:v6 forKey:@"HM.endDate"];

  [v7 encodeInt32:-[HMHomeInvitationData invitationState](self forKey:{"invitationState"), @"HM.invitationState"}];
}

- (HMHomeInvitationData)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMHomeInvitationData;
  v5 = [(HMHomeInvitationData *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v10;

    v5->_invitationState = [v4 decodeInt32ForKey:@"HM.invitationState"];
  }

  return v5;
}

- (HMHomeInvitationData)initWithInvitationState:(int64_t)a3 invitationIdentifier:(id)a4 endDate:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v20.receiver = self;
  v20.super_class = HMHomeInvitationData;
  v10 = [(HMHomeInvitationData *)&v20 init];
  if (v10)
  {
    if (v8)
    {
      v11 = [v8 copy];
    }

    else
    {
      v11 = [MEMORY[0x1E696AFB0] UUID];
    }

    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [MEMORY[0x1E695DF00] date];
    startDate = v10->_startDate;
    v10->_startDate = v13;

    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Setting home invitation expiry date to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    objc_storeStrong(&v10->_endDate, a5);
    v10->_invitationState = a3;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)homeInvitationStateDescription:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return @"HMHomeInvitationStateUnknown";
  }

  else
  {
    return off_1E754CB68[a3 - 1];
  }
}

@end
@interface HMHomeInvitationData
+ (id)homeInvitationStateDescription:(int64_t)description;
- (HMHomeInvitationData)initWithCoder:(id)coder;
- (HMHomeInvitationData)initWithInvitationState:(int64_t)state invitationIdentifier:(id)identifier endDate:(id)date;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMHomeInvitationData

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(HMHomeInvitationData *)self identifier];
  uUIDString = [identifier UUIDString];
  startDate = [(HMHomeInvitationData *)self startDate];
  endDate = [(HMHomeInvitationData *)self endDate];
  v8 = [HMHomeInvitationData homeInvitationStateDescription:[(HMHomeInvitationData *)self invitationState]];
  v9 = [v3 stringWithFormat:@"[ identifier = %@, startDate = %@, endDate = %@, state = %@ ]", uUIDString, startDate, endDate, v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMHomeInvitationData *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HM.identifier"];

  startDate = [(HMHomeInvitationData *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"HM.startDate"];

  endDate = [(HMHomeInvitationData *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"HM.endDate"];

  [coderCopy encodeInt32:-[HMHomeInvitationData invitationState](self forKey:{"invitationState"), @"HM.invitationState"}];
}

- (HMHomeInvitationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HMHomeInvitationData;
  v5 = [(HMHomeInvitationData *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v10;

    v5->_invitationState = [coderCopy decodeInt32ForKey:@"HM.invitationState"];
  }

  return v5;
}

- (HMHomeInvitationData)initWithInvitationState:(int64_t)state invitationIdentifier:(id)identifier endDate:(id)date
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dateCopy = date;
  v20.receiver = self;
  v20.super_class = HMHomeInvitationData;
  v10 = [(HMHomeInvitationData *)&v20 init];
  if (v10)
  {
    if (identifierCopy)
    {
      uUID = [identifierCopy copy];
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
    }

    identifier = v10->_identifier;
    v10->_identifier = uUID;

    date = [MEMORY[0x1E695DF00] date];
    startDate = v10->_startDate;
    v10->_startDate = date;

    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = dateCopy;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Setting home invitation expiry date to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    objc_storeStrong(&v10->_endDate, date);
    v10->_invitationState = state;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)homeInvitationStateDescription:(int64_t)description
{
  if ((description - 1) > 6)
  {
    return @"HMHomeInvitationStateUnknown";
  }

  else
  {
    return off_1E754CB68[description - 1];
  }
}

@end
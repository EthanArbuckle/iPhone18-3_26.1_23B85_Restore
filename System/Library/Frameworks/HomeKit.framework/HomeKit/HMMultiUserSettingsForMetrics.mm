@interface HMMultiUserSettingsForMetrics
+ (id)logCategory;
+ (id)shortDescription;
- (HMMultiUserSettingsForMetrics)initWithNumSharedUsers:(int64_t)a3 numUsersWithSettings:(int64_t)a4 numUsersWithIdentifyVoiceOff:(int64_t)a5 numUsersWithPlayBackInfluencesForYouOff:(int64_t)a6 numUsersCloudShareTrustNotConfigured:(int64_t)a7 numUsersSharedBackingStoreNotStarted:(int64_t)a8 numUsersSharedBackingStoreRunning:(int64_t)a9 numUsersSharedBackingStoreNotRunningDueToError:(int64_t)a10 numUsersSharedBackingStoreNotRunningDueToStopped:(int64_t)a11 numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation:(int64_t)a12;
- (HMMultiUserSettingsForMetrics)initWithPayload:(id)a3;
- (NSString)description;
- (NSString)shortDescription;
- (id)payloadCopy;
@end

@implementation HMMultiUserSettingsForMetrics

- (NSString)description
{
  v15 = MEMORY[0x1E696AEC0];
  v14 = [(HMMultiUserSettingsForMetrics *)self numSharedUsers];
  v3 = [(HMMultiUserSettingsForMetrics *)self numUsersWithSettings];
  v4 = [(HMMultiUserSettingsForMetrics *)self numUsersWithIdentifyVoiceOff];
  v5 = [(HMMultiUserSettingsForMetrics *)self numUsersWithPlayBackInfluencesForYouOff];
  v6 = [(HMMultiUserSettingsForMetrics *)self numUsersCloudShareTrustNotConfigured];
  v7 = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreNotStarted];
  v8 = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreRunning];
  v9 = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreNotRunningDueToError];
  v10 = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreNotRunningDueToStopped];
  v11 = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation];
  v12 = [v15 stringWithFormat:@"<HMMultiUserSettingsForMetrics> {\n            numSharedUsers: %@\n            numUsersWithSettings: %@\n            numUsersWithIdentifyVoiceOff: %@\n            numUsersWithPlayBackInfluencesForYouOff: %@\n            numUsersCloudShareTrustNotConfigured: %@\n            numUsersSharedBackingStoreNotStarted: %@\n            numUsersSharedBackingStoreRunning: %@\n            numUsersSharedBackingStoreNotRunningDueToError: %@\n            numUsersSharedBackingStoreNotRunningDueToStopped: %@\n            numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation: %@\n}", v14, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)payloadCopy
{
  v17[10] = *MEMORY[0x1E69E9840];
  v16[0] = @"numSharedUsers";
  v15 = [(HMMultiUserSettingsForMetrics *)self numSharedUsers];
  v17[0] = v15;
  v16[1] = @"numUsersWithSettings";
  v3 = [(HMMultiUserSettingsForMetrics *)self numUsersWithSettings];
  v17[1] = v3;
  v16[2] = @"numUsersCloudShareTrustNotConfigured";
  v4 = [(HMMultiUserSettingsForMetrics *)self numUsersCloudShareTrustNotConfigured];
  v17[2] = v4;
  v16[3] = @"numUsersWithIdentifyVoiceOff";
  v5 = [(HMMultiUserSettingsForMetrics *)self numUsersWithIdentifyVoiceOff];
  v17[3] = v5;
  v16[4] = @"numUsersWithPlayBackInfluencesForYouOff";
  v6 = [(HMMultiUserSettingsForMetrics *)self numUsersWithPlayBackInfluencesForYouOff];
  v17[4] = v6;
  v16[5] = @"numUsersSharedBackingStoreNotStarted";
  v7 = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreNotStarted];
  v17[5] = v7;
  v16[6] = @"numUsersSharedBackingStoreRunning";
  v8 = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreRunning];
  v17[6] = v8;
  v16[7] = @"numUsersSharedBackingStoreNotRunningDueToError";
  v9 = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreNotRunningDueToError];
  v17[7] = v9;
  v16[8] = @"numUsersSharedBackingStoreNotRunningDueToStopped";
  v10 = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreNotRunningDueToStopped];
  v17[8] = v10;
  v16[9] = @"numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation";
  v11 = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation];
  v17[9] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:10];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (HMMultiUserSettingsForMetrics)initWithPayload:(id)a3
{
  v3 = a3;
  v15 = [v3 hmf_numberForKey:@"numSharedUsers"];
  v14 = [v3 hmf_numberForKey:@"numUsersWithSettings"];
  v12 = [v3 hmf_numberForKey:@"numUsersCloudShareTrustNotConfigured"];
  v13 = [v3 hmf_numberForKey:@"numUsersWithIdentifyVoiceOff"];
  v11 = [v3 hmf_numberForKey:@"numUsersWithPlayBackInfluencesForYouOff"];
  v10 = [v3 hmf_numberForKey:@"numUsersSharedBackingStoreNotStarted"];
  v8 = [v3 hmf_numberForKey:@"numUsersSharedBackingStoreRunning"];
  v4 = [v3 hmf_numberForKey:@"numUsersSharedBackingStoreNotRunningDueToError"];
  v9 = [v3 hmf_numberForKey:@"numUsersSharedBackingStoreNotRunningDueToStopped"];
  v5 = [v3 hmf_numberForKey:@"numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation"];

  v6 = -[HMMultiUserSettingsForMetrics initWithNumSharedUsers:numUsersWithSettings:numUsersWithIdentifyVoiceOff:numUsersWithPlayBackInfluencesForYouOff:numUsersCloudShareTrustNotConfigured:numUsersSharedBackingStoreNotStarted:numUsersSharedBackingStoreRunning:numUsersSharedBackingStoreNotRunningDueToError:numUsersSharedBackingStoreNotRunningDueToStopped:numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation:](self, "initWithNumSharedUsers:numUsersWithSettings:numUsersWithIdentifyVoiceOff:numUsersWithPlayBackInfluencesForYouOff:numUsersCloudShareTrustNotConfigured:numUsersSharedBackingStoreNotStarted:numUsersSharedBackingStoreRunning:numUsersSharedBackingStoreNotRunningDueToError:numUsersSharedBackingStoreNotRunningDueToStopped:numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation:", [v15 intValue], objc_msgSend(v14, "intValue"), objc_msgSend(v13, "intValue"), objc_msgSend(v11, "intValue"), objc_msgSend(v12, "intValue"), objc_msgSend(v10, "intValue"), objc_msgSend(v8, "intValue"), objc_msgSend(v4, "intValue"), objc_msgSend(v9, "intValue"), objc_msgSend(v5, "intValue"));
  return v6;
}

- (HMMultiUserSettingsForMetrics)initWithNumSharedUsers:(int64_t)a3 numUsersWithSettings:(int64_t)a4 numUsersWithIdentifyVoiceOff:(int64_t)a5 numUsersWithPlayBackInfluencesForYouOff:(int64_t)a6 numUsersCloudShareTrustNotConfigured:(int64_t)a7 numUsersSharedBackingStoreNotStarted:(int64_t)a8 numUsersSharedBackingStoreRunning:(int64_t)a9 numUsersSharedBackingStoreNotRunningDueToError:(int64_t)a10 numUsersSharedBackingStoreNotRunningDueToStopped:(int64_t)a11 numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation:(int64_t)a12
{
  v40.receiver = self;
  v40.super_class = HMMultiUserSettingsForMetrics;
  v18 = [(HMMultiUserSettingsForMetrics *)&v40 init];
  if (v18)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    numSharedUsers = v18->_numSharedUsers;
    v18->_numSharedUsers = v19;

    v21 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    numUsersWithSettings = v18->_numUsersWithSettings;
    v18->_numUsersWithSettings = v21;

    v23 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    numUsersWithIdentifyVoiceOff = v18->_numUsersWithIdentifyVoiceOff;
    v18->_numUsersWithIdentifyVoiceOff = v23;

    v25 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
    numUsersWithPlayBackInfluencesForYouOff = v18->_numUsersWithPlayBackInfluencesForYouOff;
    v18->_numUsersWithPlayBackInfluencesForYouOff = v25;

    v27 = [MEMORY[0x1E696AD98] numberWithInteger:a7];
    numUsersCloudShareTrustNotConfigured = v18->_numUsersCloudShareTrustNotConfigured;
    v18->_numUsersCloudShareTrustNotConfigured = v27;

    v29 = [MEMORY[0x1E696AD98] numberWithInteger:a8];
    numUsersSharedBackingStoreNotStarted = v18->_numUsersSharedBackingStoreNotStarted;
    v18->_numUsersSharedBackingStoreNotStarted = v29;

    v31 = [MEMORY[0x1E696AD98] numberWithInteger:a9];
    numUsersSharedBackingStoreRunning = v18->_numUsersSharedBackingStoreRunning;
    v18->_numUsersSharedBackingStoreRunning = v31;

    v33 = [MEMORY[0x1E696AD98] numberWithInteger:a10];
    numUsersSharedBackingStoreNotRunningDueToError = v18->_numUsersSharedBackingStoreNotRunningDueToError;
    v18->_numUsersSharedBackingStoreNotRunningDueToError = v33;

    v35 = [MEMORY[0x1E696AD98] numberWithInteger:a11];
    numUsersSharedBackingStoreNotRunningDueToStopped = v18->_numUsersSharedBackingStoreNotRunningDueToStopped;
    v18->_numUsersSharedBackingStoreNotRunningDueToStopped = v35;

    v37 = [MEMORY[0x1E696AD98] numberWithInteger:a12];
    numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation = v18->_numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation;
    v18->_numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation = v37;
  }

  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_46361 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_46361, &__block_literal_global_46362);
  }

  v3 = logCategory__hmf_once_v1_46363;

  return v3;
}

uint64_t __44__HMMultiUserSettingsForMetrics_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_46363;
  logCategory__hmf_once_v1_46363 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
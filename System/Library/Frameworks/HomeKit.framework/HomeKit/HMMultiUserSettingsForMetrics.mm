@interface HMMultiUserSettingsForMetrics
+ (id)logCategory;
+ (id)shortDescription;
- (HMMultiUserSettingsForMetrics)initWithNumSharedUsers:(int64_t)users numUsersWithSettings:(int64_t)settings numUsersWithIdentifyVoiceOff:(int64_t)off numUsersWithPlayBackInfluencesForYouOff:(int64_t)youOff numUsersCloudShareTrustNotConfigured:(int64_t)configured numUsersSharedBackingStoreNotStarted:(int64_t)started numUsersSharedBackingStoreRunning:(int64_t)running numUsersSharedBackingStoreNotRunningDueToError:(int64_t)self0 numUsersSharedBackingStoreNotRunningDueToStopped:(int64_t)self1 numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation:(int64_t)self2;
- (HMMultiUserSettingsForMetrics)initWithPayload:(id)payload;
- (NSString)description;
- (NSString)shortDescription;
- (id)payloadCopy;
@end

@implementation HMMultiUserSettingsForMetrics

- (NSString)description
{
  v15 = MEMORY[0x1E696AEC0];
  numSharedUsers = [(HMMultiUserSettingsForMetrics *)self numSharedUsers];
  numUsersWithSettings = [(HMMultiUserSettingsForMetrics *)self numUsersWithSettings];
  numUsersWithIdentifyVoiceOff = [(HMMultiUserSettingsForMetrics *)self numUsersWithIdentifyVoiceOff];
  numUsersWithPlayBackInfluencesForYouOff = [(HMMultiUserSettingsForMetrics *)self numUsersWithPlayBackInfluencesForYouOff];
  numUsersCloudShareTrustNotConfigured = [(HMMultiUserSettingsForMetrics *)self numUsersCloudShareTrustNotConfigured];
  numUsersSharedBackingStoreNotStarted = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreNotStarted];
  numUsersSharedBackingStoreRunning = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreRunning];
  numUsersSharedBackingStoreNotRunningDueToError = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreNotRunningDueToError];
  numUsersSharedBackingStoreNotRunningDueToStopped = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreNotRunningDueToStopped];
  numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation];
  v12 = [v15 stringWithFormat:@"<HMMultiUserSettingsForMetrics> {\n            numSharedUsers: %@\n            numUsersWithSettings: %@\n            numUsersWithIdentifyVoiceOff: %@\n            numUsersWithPlayBackInfluencesForYouOff: %@\n            numUsersCloudShareTrustNotConfigured: %@\n            numUsersSharedBackingStoreNotStarted: %@\n            numUsersSharedBackingStoreRunning: %@\n            numUsersSharedBackingStoreNotRunningDueToError: %@\n            numUsersSharedBackingStoreNotRunningDueToStopped: %@\n            numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation: %@\n}", numSharedUsers, numUsersWithSettings, numUsersWithIdentifyVoiceOff, numUsersWithPlayBackInfluencesForYouOff, numUsersCloudShareTrustNotConfigured, numUsersSharedBackingStoreNotStarted, numUsersSharedBackingStoreRunning, numUsersSharedBackingStoreNotRunningDueToError, numUsersSharedBackingStoreNotRunningDueToStopped, numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation];

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
  numSharedUsers = [(HMMultiUserSettingsForMetrics *)self numSharedUsers];
  v17[0] = numSharedUsers;
  v16[1] = @"numUsersWithSettings";
  numUsersWithSettings = [(HMMultiUserSettingsForMetrics *)self numUsersWithSettings];
  v17[1] = numUsersWithSettings;
  v16[2] = @"numUsersCloudShareTrustNotConfigured";
  numUsersCloudShareTrustNotConfigured = [(HMMultiUserSettingsForMetrics *)self numUsersCloudShareTrustNotConfigured];
  v17[2] = numUsersCloudShareTrustNotConfigured;
  v16[3] = @"numUsersWithIdentifyVoiceOff";
  numUsersWithIdentifyVoiceOff = [(HMMultiUserSettingsForMetrics *)self numUsersWithIdentifyVoiceOff];
  v17[3] = numUsersWithIdentifyVoiceOff;
  v16[4] = @"numUsersWithPlayBackInfluencesForYouOff";
  numUsersWithPlayBackInfluencesForYouOff = [(HMMultiUserSettingsForMetrics *)self numUsersWithPlayBackInfluencesForYouOff];
  v17[4] = numUsersWithPlayBackInfluencesForYouOff;
  v16[5] = @"numUsersSharedBackingStoreNotStarted";
  numUsersSharedBackingStoreNotStarted = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreNotStarted];
  v17[5] = numUsersSharedBackingStoreNotStarted;
  v16[6] = @"numUsersSharedBackingStoreRunning";
  numUsersSharedBackingStoreRunning = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreRunning];
  v17[6] = numUsersSharedBackingStoreRunning;
  v16[7] = @"numUsersSharedBackingStoreNotRunningDueToError";
  numUsersSharedBackingStoreNotRunningDueToError = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreNotRunningDueToError];
  v17[7] = numUsersSharedBackingStoreNotRunningDueToError;
  v16[8] = @"numUsersSharedBackingStoreNotRunningDueToStopped";
  numUsersSharedBackingStoreNotRunningDueToStopped = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreNotRunningDueToStopped];
  v17[8] = numUsersSharedBackingStoreNotRunningDueToStopped;
  v16[9] = @"numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation";
  numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation = [(HMMultiUserSettingsForMetrics *)self numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation];
  v17[9] = numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:10];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (HMMultiUserSettingsForMetrics)initWithPayload:(id)payload
{
  payloadCopy = payload;
  v15 = [payloadCopy hmf_numberForKey:@"numSharedUsers"];
  v14 = [payloadCopy hmf_numberForKey:@"numUsersWithSettings"];
  v12 = [payloadCopy hmf_numberForKey:@"numUsersCloudShareTrustNotConfigured"];
  v13 = [payloadCopy hmf_numberForKey:@"numUsersWithIdentifyVoiceOff"];
  v11 = [payloadCopy hmf_numberForKey:@"numUsersWithPlayBackInfluencesForYouOff"];
  v10 = [payloadCopy hmf_numberForKey:@"numUsersSharedBackingStoreNotStarted"];
  v8 = [payloadCopy hmf_numberForKey:@"numUsersSharedBackingStoreRunning"];
  v4 = [payloadCopy hmf_numberForKey:@"numUsersSharedBackingStoreNotRunningDueToError"];
  v9 = [payloadCopy hmf_numberForKey:@"numUsersSharedBackingStoreNotRunningDueToStopped"];
  v5 = [payloadCopy hmf_numberForKey:@"numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation"];

  v6 = -[HMMultiUserSettingsForMetrics initWithNumSharedUsers:numUsersWithSettings:numUsersWithIdentifyVoiceOff:numUsersWithPlayBackInfluencesForYouOff:numUsersCloudShareTrustNotConfigured:numUsersSharedBackingStoreNotStarted:numUsersSharedBackingStoreRunning:numUsersSharedBackingStoreNotRunningDueToError:numUsersSharedBackingStoreNotRunningDueToStopped:numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation:](self, "initWithNumSharedUsers:numUsersWithSettings:numUsersWithIdentifyVoiceOff:numUsersWithPlayBackInfluencesForYouOff:numUsersCloudShareTrustNotConfigured:numUsersSharedBackingStoreNotStarted:numUsersSharedBackingStoreRunning:numUsersSharedBackingStoreNotRunningDueToError:numUsersSharedBackingStoreNotRunningDueToStopped:numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation:", [v15 intValue], objc_msgSend(v14, "intValue"), objc_msgSend(v13, "intValue"), objc_msgSend(v11, "intValue"), objc_msgSend(v12, "intValue"), objc_msgSend(v10, "intValue"), objc_msgSend(v8, "intValue"), objc_msgSend(v4, "intValue"), objc_msgSend(v9, "intValue"), objc_msgSend(v5, "intValue"));
  return v6;
}

- (HMMultiUserSettingsForMetrics)initWithNumSharedUsers:(int64_t)users numUsersWithSettings:(int64_t)settings numUsersWithIdentifyVoiceOff:(int64_t)off numUsersWithPlayBackInfluencesForYouOff:(int64_t)youOff numUsersCloudShareTrustNotConfigured:(int64_t)configured numUsersSharedBackingStoreNotStarted:(int64_t)started numUsersSharedBackingStoreRunning:(int64_t)running numUsersSharedBackingStoreNotRunningDueToError:(int64_t)self0 numUsersSharedBackingStoreNotRunningDueToStopped:(int64_t)self1 numUsersSharedBackingStoreSharedZoneWaitingForShareInvitation:(int64_t)self2
{
  v40.receiver = self;
  v40.super_class = HMMultiUserSettingsForMetrics;
  v18 = [(HMMultiUserSettingsForMetrics *)&v40 init];
  if (v18)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:users];
    numSharedUsers = v18->_numSharedUsers;
    v18->_numSharedUsers = v19;

    v21 = [MEMORY[0x1E696AD98] numberWithInteger:settings];
    numUsersWithSettings = v18->_numUsersWithSettings;
    v18->_numUsersWithSettings = v21;

    v23 = [MEMORY[0x1E696AD98] numberWithInteger:off];
    numUsersWithIdentifyVoiceOff = v18->_numUsersWithIdentifyVoiceOff;
    v18->_numUsersWithIdentifyVoiceOff = v23;

    v25 = [MEMORY[0x1E696AD98] numberWithInteger:youOff];
    numUsersWithPlayBackInfluencesForYouOff = v18->_numUsersWithPlayBackInfluencesForYouOff;
    v18->_numUsersWithPlayBackInfluencesForYouOff = v25;

    v27 = [MEMORY[0x1E696AD98] numberWithInteger:configured];
    numUsersCloudShareTrustNotConfigured = v18->_numUsersCloudShareTrustNotConfigured;
    v18->_numUsersCloudShareTrustNotConfigured = v27;

    v29 = [MEMORY[0x1E696AD98] numberWithInteger:started];
    numUsersSharedBackingStoreNotStarted = v18->_numUsersSharedBackingStoreNotStarted;
    v18->_numUsersSharedBackingStoreNotStarted = v29;

    v31 = [MEMORY[0x1E696AD98] numberWithInteger:running];
    numUsersSharedBackingStoreRunning = v18->_numUsersSharedBackingStoreRunning;
    v18->_numUsersSharedBackingStoreRunning = v31;

    v33 = [MEMORY[0x1E696AD98] numberWithInteger:error];
    numUsersSharedBackingStoreNotRunningDueToError = v18->_numUsersSharedBackingStoreNotRunningDueToError;
    v18->_numUsersSharedBackingStoreNotRunningDueToError = v33;

    v35 = [MEMORY[0x1E696AD98] numberWithInteger:stopped];
    numUsersSharedBackingStoreNotRunningDueToStopped = v18->_numUsersSharedBackingStoreNotRunningDueToStopped;
    v18->_numUsersSharedBackingStoreNotRunningDueToStopped = v35;

    v37 = [MEMORY[0x1E696AD98] numberWithInteger:invitation];
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
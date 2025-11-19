@interface CXJoinCallAction
+ (double)timeout;
- (CXJoinCallAction)initWithCallUUID:(id)a3 groupUUID:(id)a4;
- (CXJoinCallAction)initWithCoder:(id)a3;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)fulfill;
- (void)fulfillWithDateStarted:(id)a3;
- (void)updateAsFulfilledWithDateStarted:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXJoinCallAction

- (CXJoinCallAction)initWithCallUUID:(id)a3 groupUUID:(id)a4
{
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CXJoinCallAction;
  v8 = [(CXCallAction *)&v15 initWithCallUUID:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_groupUUID, a4);
    v10 = [MEMORY[0x1E695DFD8] set];
    remoteMembers = v9->_remoteMembers;
    v9->_remoteMembers = v10;

    v12 = [MEMORY[0x1E695DFD8] set];
    otherInvitedHandles = v9->_otherInvitedHandles;
    v9->_otherInvitedHandles = v12;

    v9->_video = 1;
  }

  return v9;
}

- (id)customDescription
{
  v41.receiver = self;
  v41.super_class = CXJoinCallAction;
  v3 = [(CXCallAction *)&v41 customDescription];
  v4 = [(CXJoinCallAction *)self groupUUID];
  [v3 appendFormat:@" groupUUID=%@", v4];

  v5 = [(CXJoinCallAction *)self remoteMembers];
  [v3 appendFormat:@" remoteMembers=%@", v5];

  v6 = [(CXJoinCallAction *)self otherInvitedHandles];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(CXJoinCallAction *)self otherInvitedHandles];
    [v3 appendFormat:@" otherInvitedHandles=%@", v8];
  }

  v9 = [(CXJoinCallAction *)self callerID];

  if (v9)
  {
    v10 = [(CXJoinCallAction *)self callerID];
    [v3 appendFormat:@" callerID=%@", v10];
  }

  [v3 appendFormat:@" videoEnabled=%d", -[CXJoinCallAction isVideoEnabled](self, "isVideoEnabled")];
  [v3 appendFormat:@" uplinkMuted=%d", -[CXJoinCallAction isUplinkMuted](self, "isUplinkMuted")];
  [v3 appendFormat:@" shouldSuppressInCallUI=%d", -[CXJoinCallAction shouldSuppressInCallUI](self, "shouldSuppressInCallUI")];
  [v3 appendFormat:@" launchInBackground=%d", -[CXJoinCallAction launchInBackground](self, "launchInBackground")];
  v11 = [(CXJoinCallAction *)self dateStarted];
  [v3 appendFormat:@" dateStarted=%@", v11];

  [v3 appendFormat:@" wantsStagingArea=%d", -[CXJoinCallAction wantsStagingArea](self, "wantsStagingArea")];
  [v3 appendFormat:@" isLetMeIn=%d", -[CXJoinCallAction isLetMeIn](self, "isLetMeIn")];
  [v3 appendFormat:@" isJoiningConversationWithLink=%d", -[CXJoinCallAction isJoiningConversationWithLink](self, "isJoiningConversationWithLink")];
  v12 = [(CXJoinCallAction *)self pseudonym];

  if (v12)
  {
    v13 = [(CXJoinCallAction *)self pseudonym];
    [v3 appendFormat:@" pseudonym=%@", v13];
  }

  v14 = [(CXJoinCallAction *)self publicKey];

  if (v14)
  {
    v15 = [(CXJoinCallAction *)self publicKey];
    [v3 appendFormat:@" publicKey=%@", v15];
  }

  [v3 appendFormat:@" video=%d", -[CXJoinCallAction isVideo](self, "isVideo")];
  [v3 appendFormat:@" relay=%d", -[CXJoinCallAction isRelay](self, "isRelay")];
  [v3 appendFormat:@" screening=%d", -[CXJoinCallAction isScreening](self, "isScreening")];
  [v3 appendFormat:@" upgrade=%d", -[CXJoinCallAction isUpgrade](self, "isUpgrade")];
  [v3 appendFormat:@" isUpgradeToVideo=%d", -[CXJoinCallAction isUpgradeToVideo](self, "isUpgradeToVideo")];
  v16 = [(CXJoinCallAction *)self upgradeSessionUUID];
  [v3 appendFormat:@" upgradeSessionUUID=%@", v16];

  [v3 appendFormat:@" avMode=%lu", -[CXJoinCallAction avMode](self, "avMode")];
  [objc_opt_class() timeout];
  [v3 appendFormat:@" timeout=%f", v17];
  [v3 appendFormat:@" presentationMode=%lu", -[CXJoinCallAction presentationMode](self, "presentationMode")];
  [v3 appendFormat:@" screenShareRequestType=%lu", -[CXJoinCallAction screenShareRequestType](self, "screenShareRequestType")];
  [v3 appendFormat:@" shouldSendLegacyScreenSharingInvite=%d", -[CXJoinCallAction shouldSendLegacyScreenSharingInvite](self, "shouldSendLegacyScreenSharingInvite")];
  v18 = [(CXJoinCallAction *)self screenSharingRequestMetadata];

  if (v18)
  {
    v19 = [(CXJoinCallAction *)self screenSharingRequestMetadata];
    [v3 appendFormat:@" screenSharingRequestMetadata=%@", v19];
  }

  v20 = [(CXJoinCallAction *)self messagesGroupUUID];

  if (v20)
  {
    v21 = [(CXJoinCallAction *)self messagesGroupUUID];
    [v3 appendFormat:@" messagesGroupUUID=%@", v21];
  }

  v22 = [(CXJoinCallAction *)self messagesGroupName];

  if (v22)
  {
    v23 = [(CXJoinCallAction *)self messagesGroupName];
    [v3 appendFormat:@" messagesGroupName=%@", v23];
  }

  v24 = [(CXJoinCallAction *)self remotePushTokens];

  if (v24)
  {
    v25 = [(CXJoinCallAction *)self remotePushTokens];
    [v3 appendFormat:@" remotePushTokens=%@", v25];
  }

  v26 = [(CXJoinCallAction *)self joinCallActivity];

  if (v26)
  {
    v27 = [(CXJoinCallAction *)self joinCallActivity];
    [v3 appendFormat:@" joinCallActivity=%@", v27];
  }

  v28 = [(CXJoinCallAction *)self conversationProviderIdentifier];

  if (v28)
  {
    v29 = [(CXJoinCallAction *)self conversationProviderIdentifier];
    [v3 appendFormat:@" conversationProviderIdentifier=%@", v29];
  }

  v30 = [(CXJoinCallAction *)self notificationStylesByHandleType];

  if (v30)
  {
    v31 = [(CXJoinCallAction *)self notificationStylesByHandleType];
    [v3 appendFormat:@" notificationStylesByHandleType=%@", v31];
  }

  v32 = [(CXJoinCallAction *)self associationIdentifier];

  if (v32)
  {
    v33 = [(CXJoinCallAction *)self associationIdentifier];
    [v3 appendFormat:@" associationIdentifier=%@", v33];
  }

  v34 = [(CXJoinCallAction *)self associationAVCIdentifier];

  if (v34)
  {
    v35 = [(CXJoinCallAction *)self associationAVCIdentifier];
    [v3 appendFormat:@" associationAVCIdentifier=%@", v35];
  }

  v36 = [(CXJoinCallAction *)self collaborationIdentifier];

  if (v36)
  {
    v37 = [(CXJoinCallAction *)self collaborationIdentifier];
    [v3 appendFormat:@" collaborationIdentifier=%@", v37];
  }

  v38 = [(CXJoinCallAction *)self participantCluster];

  if (v38)
  {
    v39 = [(CXJoinCallAction *)self participantCluster];
    [v3 appendFormat:@" participantCluster=%@", v39];
  }

  return v3;
}

- (void)fulfill
{
  v3 = [MEMORY[0x1E695DF00] date];
  [(CXJoinCallAction *)self fulfillWithDateStarted:v3];
}

- (void)fulfillWithDateStarted:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXJoinCallAction fulfillWithDateStarted:]", @"dateStarted"}];
  }

  v4 = [(CXJoinCallAction *)self copy];
  [v4 updateAsFulfilledWithDateStarted:v6];
  v5 = [v4 delegate];
  [v5 actionCompleted:v4];
}

- (void)updateAsFulfilledWithDateStarted:(id)a3
{
  v4 = a3;
  [(CXAction *)self updateAsFulfilled];
  [(CXJoinCallAction *)self setDateStarted:v4];
}

+ (double)timeout
{
  v2 = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [v2 objectForKey:@"join-call-action-timeout"];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 15.0;
  }

  return v4;
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v26.receiver = self;
  v26.super_class = CXJoinCallAction;
  v6 = a3;
  [(CXAction *)&v26 updateCopy:v6 withZone:a4];
  v7 = [(CXJoinCallAction *)self groupUUID:v26.receiver];
  [v6 setGroupUUID:v7];

  v8 = [(CXJoinCallAction *)self remoteMembers];
  [v6 setRemoteMembers:v8];

  v9 = [(CXJoinCallAction *)self otherInvitedHandles];
  [v6 setOtherInvitedHandles:v9];

  v10 = [(CXJoinCallAction *)self callerID];
  [v6 setCallerID:v10];

  [v6 setVideoEnabled:{-[CXJoinCallAction isVideoEnabled](self, "isVideoEnabled")}];
  [v6 setUplinkMuted:{-[CXJoinCallAction isUplinkMuted](self, "isUplinkMuted")}];
  [v6 setShouldSuppressInCallUI:{-[CXJoinCallAction shouldSuppressInCallUI](self, "shouldSuppressInCallUI")}];
  [v6 setLaunchInBackground:{-[CXJoinCallAction launchInBackground](self, "launchInBackground")}];
  [v6 setWantsStagingArea:{-[CXJoinCallAction wantsStagingArea](self, "wantsStagingArea")}];
  [v6 setLetMeIn:{-[CXJoinCallAction isLetMeIn](self, "isLetMeIn")}];
  [v6 setJoiningConversationWithLink:{-[CXJoinCallAction isJoiningConversationWithLink](self, "isJoiningConversationWithLink")}];
  v11 = [(CXJoinCallAction *)self pseudonym];
  [v6 setPseudonym:v11];

  v12 = [(CXJoinCallAction *)self publicKey];
  [v6 setPublicKey:v12];

  [v6 setVideo:{-[CXJoinCallAction isVideo](self, "isVideo")}];
  [v6 setUpgrade:{-[CXJoinCallAction isUpgrade](self, "isUpgrade")}];
  [v6 setIsUpgradeToVideo:{-[CXJoinCallAction isUpgradeToVideo](self, "isUpgradeToVideo")}];
  v13 = [(CXJoinCallAction *)self messagesGroupUUID];
  [v6 setMessagesGroupUUID:v13];

  v14 = [(CXJoinCallAction *)self messagesGroupName];
  [v6 setMessagesGroupName:v14];

  v15 = [(CXJoinCallAction *)self dateStarted];
  [v6 setDateStarted:v15];

  v16 = [(CXJoinCallAction *)self upgradeSessionUUID];
  [v6 setUpgradeSessionUUID:v16];

  v17 = [(CXJoinCallAction *)self remotePushTokens];
  [v6 setRemotePushTokens:v17];

  v18 = [(CXJoinCallAction *)self joinCallActivity];
  [v6 setJoinCallActivity:v18];

  v19 = [(CXJoinCallAction *)self conversationProviderIdentifier];
  [v6 setConversationProviderIdentifier:v19];

  v20 = [(CXJoinCallAction *)self notificationStylesByHandleType];
  [v6 setNotificationStylesByHandleType:v20];

  [v6 setAvMode:{-[CXJoinCallAction avMode](self, "avMode")}];
  [v6 setPresentationMode:{-[CXJoinCallAction presentationMode](self, "presentationMode")}];
  v21 = [(CXJoinCallAction *)self associationIdentifier];
  [v6 setAssociationIdentifier:v21];

  v22 = [(CXJoinCallAction *)self associationAVCIdentifier];
  [v6 setAssociationAVCIdentifier:v22];

  v23 = [(CXJoinCallAction *)self collaborationIdentifier];
  [v6 setCollaborationIdentifier:v23];

  [v6 setRelay:{-[CXJoinCallAction isRelay](self, "isRelay")}];
  [v6 setScreenShareRequestType:{-[CXJoinCallAction screenShareRequestType](self, "screenShareRequestType")}];
  [v6 setShouldSendLegacyScreenSharingInvite:{-[CXJoinCallAction shouldSendLegacyScreenSharingInvite](self, "shouldSendLegacyScreenSharingInvite")}];
  v24 = [(CXJoinCallAction *)self screenSharingRequestMetadata];
  [v6 setScreenSharingRequestMetadata:v24];

  v25 = [(CXJoinCallAction *)self participantCluster];
  [v6 setParticipantCluster:v25];
}

- (CXJoinCallAction)initWithCoder:(id)a3
{
  v4 = a3;
  v104.receiver = self;
  v104.super_class = CXJoinCallAction;
  v5 = [(CXCallAction *)&v104 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_groupUUID);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    groupUUID = v5->_groupUUID;
    v5->_groupUUID = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = NSStringFromSelector(sel_remoteMembers);
    v14 = [v4 decodeObjectOfClasses:v12 forKey:v13];
    remoteMembers = v5->_remoteMembers;
    v5->_remoteMembers = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = NSStringFromSelector(sel_otherInvitedHandles);
    v20 = [v4 decodeObjectOfClasses:v18 forKey:v19];
    otherInvitedHandles = v5->_otherInvitedHandles;
    v5->_otherInvitedHandles = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_callerID);
    v24 = [v4 decodeObjectOfClass:v22 forKey:v23];
    callerID = v5->_callerID;
    v5->_callerID = v24;

    v26 = NSStringFromSelector(sel_isVideoEnabled);
    v5->_videoEnabled = [v4 decodeBoolForKey:v26];

    v27 = NSStringFromSelector(sel_isUplinkMuted);
    v5->_uplinkMuted = [v4 decodeBoolForKey:v27];

    v28 = NSStringFromSelector(sel_shouldSuppressInCallUI);
    v5->_shouldSuppressInCallUI = [v4 decodeBoolForKey:v28];

    v29 = NSStringFromSelector(sel_launchInBackground);
    v5->_launchInBackground = [v4 decodeBoolForKey:v29];

    v30 = NSStringFromSelector(sel_wantsStagingArea);
    v5->_wantsStagingArea = [v4 decodeBoolForKey:v30];

    v31 = NSStringFromSelector(sel_isLetMeIn);
    v5->_letMeIn = [v4 decodeBoolForKey:v31];

    v32 = NSStringFromSelector(sel_isJoiningConversationWithLink);
    v5->_joiningConversationWithLink = [v4 decodeBoolForKey:v32];

    v33 = NSStringFromSelector(sel_pseudonym);
    v34 = [v4 decodeObjectForKey:v33];
    pseudonym = v5->_pseudonym;
    v5->_pseudonym = v34;

    v36 = NSStringFromSelector(sel_publicKey);
    v37 = [v4 decodeObjectForKey:v36];
    publicKey = v5->_publicKey;
    v5->_publicKey = v37;

    v39 = NSStringFromSelector(sel_isVideo);
    v5->_video = [v4 decodeBoolForKey:v39];

    v40 = NSStringFromSelector(sel_isUpgrade);
    v5->_upgrade = [v4 decodeBoolForKey:v40];

    v41 = NSStringFromSelector(sel_isUpgradeToVideo);
    v5->_isUpgradeToVideo = [v4 decodeBoolForKey:v41];

    v42 = NSStringFromSelector(sel_isRelay);
    v5->_relay = [v4 decodeBoolForKey:v42];

    v43 = NSStringFromSelector(sel_messagesGroupUUID);
    v44 = [v4 decodeObjectForKey:v43];
    messagesGroupUUID = v5->_messagesGroupUUID;
    v5->_messagesGroupUUID = v44;

    v46 = NSStringFromSelector(sel_messagesGroupName);
    v47 = [v4 decodeObjectForKey:v46];
    messagesGroupName = v5->_messagesGroupName;
    v5->_messagesGroupName = v47;

    v49 = objc_opt_class();
    v50 = NSStringFromSelector(sel_dateStarted);
    v51 = [v4 decodeObjectOfClass:v49 forKey:v50];
    dateStarted = v5->_dateStarted;
    v5->_dateStarted = v51;

    v53 = objc_opt_class();
    v54 = NSStringFromSelector(sel_upgradeSessionUUID);
    v55 = [v4 decodeObjectOfClass:v53 forKey:v54];
    upgradeSessionUUID = v5->_upgradeSessionUUID;
    v5->_upgradeSessionUUID = v55;

    v57 = MEMORY[0x1E695DFD8];
    v58 = objc_opt_class();
    v59 = objc_opt_class();
    v60 = [v57 setWithObjects:{v58, v59, objc_opt_class(), 0}];
    v61 = NSStringFromSelector(sel_remotePushTokens);
    v62 = [v4 decodeObjectOfClasses:v60 forKey:v61];
    remotePushTokens = v5->_remotePushTokens;
    v5->_remotePushTokens = v62;

    v64 = objc_opt_class();
    v65 = NSStringFromSelector(sel_joinCallActivity);
    v66 = [v4 decodeObjectOfClass:v64 forKey:v65];
    joinCallActivity = v5->_joinCallActivity;
    v5->_joinCallActivity = v66;

    v68 = objc_opt_class();
    v69 = NSStringFromSelector(sel_conversationProviderIdentifier);
    v70 = [v4 decodeObjectOfClass:v68 forKey:v69];
    conversationProviderIdentifier = v5->_conversationProviderIdentifier;
    v5->_conversationProviderIdentifier = v70;

    v72 = MEMORY[0x1E695DFD8];
    v73 = objc_opt_class();
    v74 = [v72 setWithObjects:{v73, objc_opt_class(), 0}];
    v75 = NSStringFromSelector(sel_notificationStylesByHandleType);
    v76 = [v4 decodeObjectOfClasses:v74 forKey:v75];
    notificationStylesByHandleType = v5->_notificationStylesByHandleType;
    v5->_notificationStylesByHandleType = v76;

    v78 = NSStringFromSelector(sel_avMode);
    v5->_avMode = [v4 decodeIntegerForKey:v78];

    v79 = NSStringFromSelector(sel_presentationMode);
    v5->_presentationMode = [v4 decodeIntegerForKey:v79];

    v80 = objc_opt_class();
    v81 = NSStringFromSelector(sel_associationIdentifier);
    v82 = [v4 decodeObjectOfClass:v80 forKey:v81];
    associationIdentifier = v5->_associationIdentifier;
    v5->_associationIdentifier = v82;

    v84 = objc_opt_class();
    v85 = NSStringFromSelector(sel_associationAVCIdentifier);
    v86 = [v4 decodeObjectOfClass:v84 forKey:v85];
    associationAVCIdentifier = v5->_associationAVCIdentifier;
    v5->_associationAVCIdentifier = v86;

    v88 = objc_opt_class();
    v89 = NSStringFromSelector(sel_collaborationIdentifier);
    v90 = [v4 decodeObjectOfClass:v88 forKey:v89];
    collaborationIdentifier = v5->_collaborationIdentifier;
    v5->_collaborationIdentifier = v90;

    v92 = NSStringFromSelector(sel_isRelay);
    v5->_relay = [v4 decodeBoolForKey:v92];

    v93 = NSStringFromSelector(sel_screenShareRequestType);
    v5->_screenShareRequestType = [v4 decodeIntegerForKey:v93];

    v94 = NSStringFromSelector(sel_shouldSendLegacyScreenSharingInvite);
    v5->_shouldSendLegacyScreenSharingInvite = [v4 decodeBoolForKey:v94];

    v95 = objc_opt_class();
    v96 = NSStringFromSelector(sel_screenSharingRequestMetadata);
    v97 = [v4 decodeObjectOfClass:v95 forKey:v96];
    screenSharingRequestMetadata = v5->_screenSharingRequestMetadata;
    v5->_screenSharingRequestMetadata = v97;

    v99 = objc_opt_class();
    v100 = NSStringFromSelector(sel_participantCluster);
    v101 = [v4 decodeObjectOfClass:v99 forKey:v100];
    participantCluster = v5->_participantCluster;
    v5->_participantCluster = v101;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v73.receiver = self;
  v73.super_class = CXJoinCallAction;
  v4 = a3;
  [(CXCallAction *)&v73 encodeWithCoder:v4];
  v5 = [(CXJoinCallAction *)self groupUUID:v73.receiver];
  v6 = NSStringFromSelector(sel_groupUUID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXJoinCallAction *)self remoteMembers];
  v8 = NSStringFromSelector(sel_remoteMembers);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(CXJoinCallAction *)self otherInvitedHandles];
  v10 = NSStringFromSelector(sel_otherInvitedHandles);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(CXJoinCallAction *)self callerID];
  v12 = NSStringFromSelector(sel_callerID);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(CXJoinCallAction *)self isVideoEnabled];
  v14 = NSStringFromSelector(sel_isVideoEnabled);
  [v4 encodeBool:v13 forKey:v14];

  v15 = [(CXJoinCallAction *)self isUplinkMuted];
  v16 = NSStringFromSelector(sel_isUplinkMuted);
  [v4 encodeBool:v15 forKey:v16];

  v17 = [(CXJoinCallAction *)self shouldSuppressInCallUI];
  v18 = NSStringFromSelector(sel_shouldSuppressInCallUI);
  [v4 encodeBool:v17 forKey:v18];

  v19 = [(CXJoinCallAction *)self launchInBackground];
  v20 = NSStringFromSelector(sel_launchInBackground);
  [v4 encodeBool:v19 forKey:v20];

  v21 = [(CXJoinCallAction *)self wantsStagingArea];
  v22 = NSStringFromSelector(sel_wantsStagingArea);
  [v4 encodeBool:v21 forKey:v22];

  v23 = [(CXJoinCallAction *)self isVideo];
  v24 = NSStringFromSelector(sel_isVideo);
  [v4 encodeBool:v23 forKey:v24];

  v25 = [(CXJoinCallAction *)self isUpgrade];
  v26 = NSStringFromSelector(sel_isUpgrade);
  [v4 encodeBool:v25 forKey:v26];

  v27 = [(CXJoinCallAction *)self isUpgradeToVideo];
  v28 = NSStringFromSelector(sel_isUpgradeToVideo);
  [v4 encodeBool:v27 forKey:v28];

  v29 = [(CXJoinCallAction *)self isLetMeIn];
  v30 = NSStringFromSelector(sel_isLetMeIn);
  [v4 encodeBool:v29 forKey:v30];

  v31 = [(CXJoinCallAction *)self isJoiningConversationWithLink];
  v32 = NSStringFromSelector(sel_isJoiningConversationWithLink);
  [v4 encodeBool:v31 forKey:v32];

  v33 = [(CXJoinCallAction *)self pseudonym];
  v34 = NSStringFromSelector(sel_pseudonym);
  [v4 encodeObject:v33 forKey:v34];

  v35 = [(CXJoinCallAction *)self publicKey];
  v36 = NSStringFromSelector(sel_publicKey);
  [v4 encodeObject:v35 forKey:v36];

  v37 = [(CXJoinCallAction *)self messagesGroupUUID];
  v38 = NSStringFromSelector(sel_messagesGroupUUID);
  [v4 encodeObject:v37 forKey:v38];

  v39 = [(CXJoinCallAction *)self messagesGroupName];
  v40 = NSStringFromSelector(sel_messagesGroupName);
  [v4 encodeObject:v39 forKey:v40];

  v41 = [(CXJoinCallAction *)self dateStarted];
  v42 = NSStringFromSelector(sel_dateStarted);
  [v4 encodeObject:v41 forKey:v42];

  v43 = [(CXJoinCallAction *)self upgradeSessionUUID];
  v44 = NSStringFromSelector(sel_upgradeSessionUUID);
  [v4 encodeObject:v43 forKey:v44];

  v45 = [(CXJoinCallAction *)self remotePushTokens];
  v46 = NSStringFromSelector(sel_remotePushTokens);
  [v4 encodeObject:v45 forKey:v46];

  v47 = [(CXJoinCallAction *)self joinCallActivity];
  v48 = NSStringFromSelector(sel_joinCallActivity);
  [v4 encodeObject:v47 forKey:v48];

  v49 = [(CXJoinCallAction *)self conversationProviderIdentifier];
  v50 = NSStringFromSelector(sel_conversationProviderIdentifier);
  [v4 encodeObject:v49 forKey:v50];

  v51 = [(CXJoinCallAction *)self notificationStylesByHandleType];
  v52 = NSStringFromSelector(sel_notificationStylesByHandleType);
  [v4 encodeObject:v51 forKey:v52];

  v53 = [(CXJoinCallAction *)self avMode];
  v54 = NSStringFromSelector(sel_avMode);
  [v4 encodeInteger:v53 forKey:v54];

  v55 = [(CXJoinCallAction *)self presentationMode];
  v56 = NSStringFromSelector(sel_presentationMode);
  [v4 encodeInteger:v55 forKey:v56];

  v57 = [(CXJoinCallAction *)self associationIdentifier];
  v58 = NSStringFromSelector(sel_associationIdentifier);
  [v4 encodeObject:v57 forKey:v58];

  v59 = [(CXJoinCallAction *)self associationAVCIdentifier];
  v60 = NSStringFromSelector(sel_associationAVCIdentifier);
  [v4 encodeObject:v59 forKey:v60];

  v61 = [(CXJoinCallAction *)self collaborationIdentifier];
  v62 = NSStringFromSelector(sel_collaborationIdentifier);
  [v4 encodeObject:v61 forKey:v62];

  v63 = [(CXJoinCallAction *)self isRelay];
  v64 = NSStringFromSelector(sel_isRelay);
  [v4 encodeBool:v63 forKey:v64];

  v65 = [(CXJoinCallAction *)self screenShareRequestType];
  v66 = NSStringFromSelector(sel_screenShareRequestType);
  [v4 encodeInteger:v65 forKey:v66];

  v67 = [(CXJoinCallAction *)self shouldSendLegacyScreenSharingInvite];
  v68 = NSStringFromSelector(sel_shouldSendLegacyScreenSharingInvite);
  [v4 encodeBool:v67 forKey:v68];

  v69 = [(CXJoinCallAction *)self screenSharingRequestMetadata];
  v70 = NSStringFromSelector(sel_screenSharingRequestMetadata);
  [v4 encodeObject:v69 forKey:v70];

  v71 = [(CXJoinCallAction *)self participantCluster];
  v72 = NSStringFromSelector(sel_participantCluster);
  [v4 encodeObject:v71 forKey:v72];
}

@end
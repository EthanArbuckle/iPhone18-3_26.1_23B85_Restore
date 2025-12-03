@interface CXJoinCallAction
+ (double)timeout;
- (CXJoinCallAction)initWithCallUUID:(id)d groupUUID:(id)iD;
- (CXJoinCallAction)initWithCoder:(id)coder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)fulfill;
- (void)fulfillWithDateStarted:(id)started;
- (void)updateAsFulfilledWithDateStarted:(id)started;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXJoinCallAction

- (CXJoinCallAction)initWithCallUUID:(id)d groupUUID:(id)iD
{
  iDCopy = iD;
  v15.receiver = self;
  v15.super_class = CXJoinCallAction;
  v8 = [(CXCallAction *)&v15 initWithCallUUID:d];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_groupUUID, iD);
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
  customDescription = [(CXCallAction *)&v41 customDescription];
  groupUUID = [(CXJoinCallAction *)self groupUUID];
  [customDescription appendFormat:@" groupUUID=%@", groupUUID];

  remoteMembers = [(CXJoinCallAction *)self remoteMembers];
  [customDescription appendFormat:@" remoteMembers=%@", remoteMembers];

  otherInvitedHandles = [(CXJoinCallAction *)self otherInvitedHandles];
  v7 = [otherInvitedHandles count];

  if (v7)
  {
    otherInvitedHandles2 = [(CXJoinCallAction *)self otherInvitedHandles];
    [customDescription appendFormat:@" otherInvitedHandles=%@", otherInvitedHandles2];
  }

  callerID = [(CXJoinCallAction *)self callerID];

  if (callerID)
  {
    callerID2 = [(CXJoinCallAction *)self callerID];
    [customDescription appendFormat:@" callerID=%@", callerID2];
  }

  [customDescription appendFormat:@" videoEnabled=%d", -[CXJoinCallAction isVideoEnabled](self, "isVideoEnabled")];
  [customDescription appendFormat:@" uplinkMuted=%d", -[CXJoinCallAction isUplinkMuted](self, "isUplinkMuted")];
  [customDescription appendFormat:@" shouldSuppressInCallUI=%d", -[CXJoinCallAction shouldSuppressInCallUI](self, "shouldSuppressInCallUI")];
  [customDescription appendFormat:@" launchInBackground=%d", -[CXJoinCallAction launchInBackground](self, "launchInBackground")];
  dateStarted = [(CXJoinCallAction *)self dateStarted];
  [customDescription appendFormat:@" dateStarted=%@", dateStarted];

  [customDescription appendFormat:@" wantsStagingArea=%d", -[CXJoinCallAction wantsStagingArea](self, "wantsStagingArea")];
  [customDescription appendFormat:@" isLetMeIn=%d", -[CXJoinCallAction isLetMeIn](self, "isLetMeIn")];
  [customDescription appendFormat:@" isJoiningConversationWithLink=%d", -[CXJoinCallAction isJoiningConversationWithLink](self, "isJoiningConversationWithLink")];
  pseudonym = [(CXJoinCallAction *)self pseudonym];

  if (pseudonym)
  {
    pseudonym2 = [(CXJoinCallAction *)self pseudonym];
    [customDescription appendFormat:@" pseudonym=%@", pseudonym2];
  }

  publicKey = [(CXJoinCallAction *)self publicKey];

  if (publicKey)
  {
    publicKey2 = [(CXJoinCallAction *)self publicKey];
    [customDescription appendFormat:@" publicKey=%@", publicKey2];
  }

  [customDescription appendFormat:@" video=%d", -[CXJoinCallAction isVideo](self, "isVideo")];
  [customDescription appendFormat:@" relay=%d", -[CXJoinCallAction isRelay](self, "isRelay")];
  [customDescription appendFormat:@" screening=%d", -[CXJoinCallAction isScreening](self, "isScreening")];
  [customDescription appendFormat:@" upgrade=%d", -[CXJoinCallAction isUpgrade](self, "isUpgrade")];
  [customDescription appendFormat:@" isUpgradeToVideo=%d", -[CXJoinCallAction isUpgradeToVideo](self, "isUpgradeToVideo")];
  upgradeSessionUUID = [(CXJoinCallAction *)self upgradeSessionUUID];
  [customDescription appendFormat:@" upgradeSessionUUID=%@", upgradeSessionUUID];

  [customDescription appendFormat:@" avMode=%lu", -[CXJoinCallAction avMode](self, "avMode")];
  [objc_opt_class() timeout];
  [customDescription appendFormat:@" timeout=%f", v17];
  [customDescription appendFormat:@" presentationMode=%lu", -[CXJoinCallAction presentationMode](self, "presentationMode")];
  [customDescription appendFormat:@" screenShareRequestType=%lu", -[CXJoinCallAction screenShareRequestType](self, "screenShareRequestType")];
  [customDescription appendFormat:@" shouldSendLegacyScreenSharingInvite=%d", -[CXJoinCallAction shouldSendLegacyScreenSharingInvite](self, "shouldSendLegacyScreenSharingInvite")];
  screenSharingRequestMetadata = [(CXJoinCallAction *)self screenSharingRequestMetadata];

  if (screenSharingRequestMetadata)
  {
    screenSharingRequestMetadata2 = [(CXJoinCallAction *)self screenSharingRequestMetadata];
    [customDescription appendFormat:@" screenSharingRequestMetadata=%@", screenSharingRequestMetadata2];
  }

  messagesGroupUUID = [(CXJoinCallAction *)self messagesGroupUUID];

  if (messagesGroupUUID)
  {
    messagesGroupUUID2 = [(CXJoinCallAction *)self messagesGroupUUID];
    [customDescription appendFormat:@" messagesGroupUUID=%@", messagesGroupUUID2];
  }

  messagesGroupName = [(CXJoinCallAction *)self messagesGroupName];

  if (messagesGroupName)
  {
    messagesGroupName2 = [(CXJoinCallAction *)self messagesGroupName];
    [customDescription appendFormat:@" messagesGroupName=%@", messagesGroupName2];
  }

  remotePushTokens = [(CXJoinCallAction *)self remotePushTokens];

  if (remotePushTokens)
  {
    remotePushTokens2 = [(CXJoinCallAction *)self remotePushTokens];
    [customDescription appendFormat:@" remotePushTokens=%@", remotePushTokens2];
  }

  joinCallActivity = [(CXJoinCallAction *)self joinCallActivity];

  if (joinCallActivity)
  {
    joinCallActivity2 = [(CXJoinCallAction *)self joinCallActivity];
    [customDescription appendFormat:@" joinCallActivity=%@", joinCallActivity2];
  }

  conversationProviderIdentifier = [(CXJoinCallAction *)self conversationProviderIdentifier];

  if (conversationProviderIdentifier)
  {
    conversationProviderIdentifier2 = [(CXJoinCallAction *)self conversationProviderIdentifier];
    [customDescription appendFormat:@" conversationProviderIdentifier=%@", conversationProviderIdentifier2];
  }

  notificationStylesByHandleType = [(CXJoinCallAction *)self notificationStylesByHandleType];

  if (notificationStylesByHandleType)
  {
    notificationStylesByHandleType2 = [(CXJoinCallAction *)self notificationStylesByHandleType];
    [customDescription appendFormat:@" notificationStylesByHandleType=%@", notificationStylesByHandleType2];
  }

  associationIdentifier = [(CXJoinCallAction *)self associationIdentifier];

  if (associationIdentifier)
  {
    associationIdentifier2 = [(CXJoinCallAction *)self associationIdentifier];
    [customDescription appendFormat:@" associationIdentifier=%@", associationIdentifier2];
  }

  associationAVCIdentifier = [(CXJoinCallAction *)self associationAVCIdentifier];

  if (associationAVCIdentifier)
  {
    associationAVCIdentifier2 = [(CXJoinCallAction *)self associationAVCIdentifier];
    [customDescription appendFormat:@" associationAVCIdentifier=%@", associationAVCIdentifier2];
  }

  collaborationIdentifier = [(CXJoinCallAction *)self collaborationIdentifier];

  if (collaborationIdentifier)
  {
    collaborationIdentifier2 = [(CXJoinCallAction *)self collaborationIdentifier];
    [customDescription appendFormat:@" collaborationIdentifier=%@", collaborationIdentifier2];
  }

  participantCluster = [(CXJoinCallAction *)self participantCluster];

  if (participantCluster)
  {
    participantCluster2 = [(CXJoinCallAction *)self participantCluster];
    [customDescription appendFormat:@" participantCluster=%@", participantCluster2];
  }

  return customDescription;
}

- (void)fulfill
{
  date = [MEMORY[0x1E695DF00] date];
  [(CXJoinCallAction *)self fulfillWithDateStarted:date];
}

- (void)fulfillWithDateStarted:(id)started
{
  startedCopy = started;
  if (!startedCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXJoinCallAction fulfillWithDateStarted:]", @"dateStarted"}];
  }

  v4 = [(CXJoinCallAction *)self copy];
  [v4 updateAsFulfilledWithDateStarted:startedCopy];
  delegate = [v4 delegate];
  [delegate actionCompleted:v4];
}

- (void)updateAsFulfilledWithDateStarted:(id)started
{
  startedCopy = started;
  [(CXAction *)self updateAsFulfilled];
  [(CXJoinCallAction *)self setDateStarted:startedCopy];
}

+ (double)timeout
{
  mEMORY[0x1E699BEA8] = [MEMORY[0x1E699BEA8] sharedInstance];
  v3 = [mEMORY[0x1E699BEA8] objectForKey:@"join-call-action-timeout"];

  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 15.0;
  }

  return unsignedIntegerValue;
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  v26.receiver = self;
  v26.super_class = CXJoinCallAction;
  copyCopy = copy;
  [(CXAction *)&v26 updateCopy:copyCopy withZone:zone];
  v7 = [(CXJoinCallAction *)self groupUUID:v26.receiver];
  [copyCopy setGroupUUID:v7];

  remoteMembers = [(CXJoinCallAction *)self remoteMembers];
  [copyCopy setRemoteMembers:remoteMembers];

  otherInvitedHandles = [(CXJoinCallAction *)self otherInvitedHandles];
  [copyCopy setOtherInvitedHandles:otherInvitedHandles];

  callerID = [(CXJoinCallAction *)self callerID];
  [copyCopy setCallerID:callerID];

  [copyCopy setVideoEnabled:{-[CXJoinCallAction isVideoEnabled](self, "isVideoEnabled")}];
  [copyCopy setUplinkMuted:{-[CXJoinCallAction isUplinkMuted](self, "isUplinkMuted")}];
  [copyCopy setShouldSuppressInCallUI:{-[CXJoinCallAction shouldSuppressInCallUI](self, "shouldSuppressInCallUI")}];
  [copyCopy setLaunchInBackground:{-[CXJoinCallAction launchInBackground](self, "launchInBackground")}];
  [copyCopy setWantsStagingArea:{-[CXJoinCallAction wantsStagingArea](self, "wantsStagingArea")}];
  [copyCopy setLetMeIn:{-[CXJoinCallAction isLetMeIn](self, "isLetMeIn")}];
  [copyCopy setJoiningConversationWithLink:{-[CXJoinCallAction isJoiningConversationWithLink](self, "isJoiningConversationWithLink")}];
  pseudonym = [(CXJoinCallAction *)self pseudonym];
  [copyCopy setPseudonym:pseudonym];

  publicKey = [(CXJoinCallAction *)self publicKey];
  [copyCopy setPublicKey:publicKey];

  [copyCopy setVideo:{-[CXJoinCallAction isVideo](self, "isVideo")}];
  [copyCopy setUpgrade:{-[CXJoinCallAction isUpgrade](self, "isUpgrade")}];
  [copyCopy setIsUpgradeToVideo:{-[CXJoinCallAction isUpgradeToVideo](self, "isUpgradeToVideo")}];
  messagesGroupUUID = [(CXJoinCallAction *)self messagesGroupUUID];
  [copyCopy setMessagesGroupUUID:messagesGroupUUID];

  messagesGroupName = [(CXJoinCallAction *)self messagesGroupName];
  [copyCopy setMessagesGroupName:messagesGroupName];

  dateStarted = [(CXJoinCallAction *)self dateStarted];
  [copyCopy setDateStarted:dateStarted];

  upgradeSessionUUID = [(CXJoinCallAction *)self upgradeSessionUUID];
  [copyCopy setUpgradeSessionUUID:upgradeSessionUUID];

  remotePushTokens = [(CXJoinCallAction *)self remotePushTokens];
  [copyCopy setRemotePushTokens:remotePushTokens];

  joinCallActivity = [(CXJoinCallAction *)self joinCallActivity];
  [copyCopy setJoinCallActivity:joinCallActivity];

  conversationProviderIdentifier = [(CXJoinCallAction *)self conversationProviderIdentifier];
  [copyCopy setConversationProviderIdentifier:conversationProviderIdentifier];

  notificationStylesByHandleType = [(CXJoinCallAction *)self notificationStylesByHandleType];
  [copyCopy setNotificationStylesByHandleType:notificationStylesByHandleType];

  [copyCopy setAvMode:{-[CXJoinCallAction avMode](self, "avMode")}];
  [copyCopy setPresentationMode:{-[CXJoinCallAction presentationMode](self, "presentationMode")}];
  associationIdentifier = [(CXJoinCallAction *)self associationIdentifier];
  [copyCopy setAssociationIdentifier:associationIdentifier];

  associationAVCIdentifier = [(CXJoinCallAction *)self associationAVCIdentifier];
  [copyCopy setAssociationAVCIdentifier:associationAVCIdentifier];

  collaborationIdentifier = [(CXJoinCallAction *)self collaborationIdentifier];
  [copyCopy setCollaborationIdentifier:collaborationIdentifier];

  [copyCopy setRelay:{-[CXJoinCallAction isRelay](self, "isRelay")}];
  [copyCopy setScreenShareRequestType:{-[CXJoinCallAction screenShareRequestType](self, "screenShareRequestType")}];
  [copyCopy setShouldSendLegacyScreenSharingInvite:{-[CXJoinCallAction shouldSendLegacyScreenSharingInvite](self, "shouldSendLegacyScreenSharingInvite")}];
  screenSharingRequestMetadata = [(CXJoinCallAction *)self screenSharingRequestMetadata];
  [copyCopy setScreenSharingRequestMetadata:screenSharingRequestMetadata];

  participantCluster = [(CXJoinCallAction *)self participantCluster];
  [copyCopy setParticipantCluster:participantCluster];
}

- (CXJoinCallAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v104.receiver = self;
  v104.super_class = CXJoinCallAction;
  v5 = [(CXCallAction *)&v104 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_groupUUID);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    groupUUID = v5->_groupUUID;
    v5->_groupUUID = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = NSStringFromSelector(sel_remoteMembers);
    v14 = [coderCopy decodeObjectOfClasses:v12 forKey:v13];
    remoteMembers = v5->_remoteMembers;
    v5->_remoteMembers = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = NSStringFromSelector(sel_otherInvitedHandles);
    v20 = [coderCopy decodeObjectOfClasses:v18 forKey:v19];
    otherInvitedHandles = v5->_otherInvitedHandles;
    v5->_otherInvitedHandles = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_callerID);
    v24 = [coderCopy decodeObjectOfClass:v22 forKey:v23];
    callerID = v5->_callerID;
    v5->_callerID = v24;

    v26 = NSStringFromSelector(sel_isVideoEnabled);
    v5->_videoEnabled = [coderCopy decodeBoolForKey:v26];

    v27 = NSStringFromSelector(sel_isUplinkMuted);
    v5->_uplinkMuted = [coderCopy decodeBoolForKey:v27];

    v28 = NSStringFromSelector(sel_shouldSuppressInCallUI);
    v5->_shouldSuppressInCallUI = [coderCopy decodeBoolForKey:v28];

    v29 = NSStringFromSelector(sel_launchInBackground);
    v5->_launchInBackground = [coderCopy decodeBoolForKey:v29];

    v30 = NSStringFromSelector(sel_wantsStagingArea);
    v5->_wantsStagingArea = [coderCopy decodeBoolForKey:v30];

    v31 = NSStringFromSelector(sel_isLetMeIn);
    v5->_letMeIn = [coderCopy decodeBoolForKey:v31];

    v32 = NSStringFromSelector(sel_isJoiningConversationWithLink);
    v5->_joiningConversationWithLink = [coderCopy decodeBoolForKey:v32];

    v33 = NSStringFromSelector(sel_pseudonym);
    v34 = [coderCopy decodeObjectForKey:v33];
    pseudonym = v5->_pseudonym;
    v5->_pseudonym = v34;

    v36 = NSStringFromSelector(sel_publicKey);
    v37 = [coderCopy decodeObjectForKey:v36];
    publicKey = v5->_publicKey;
    v5->_publicKey = v37;

    v39 = NSStringFromSelector(sel_isVideo);
    v5->_video = [coderCopy decodeBoolForKey:v39];

    v40 = NSStringFromSelector(sel_isUpgrade);
    v5->_upgrade = [coderCopy decodeBoolForKey:v40];

    v41 = NSStringFromSelector(sel_isUpgradeToVideo);
    v5->_isUpgradeToVideo = [coderCopy decodeBoolForKey:v41];

    v42 = NSStringFromSelector(sel_isRelay);
    v5->_relay = [coderCopy decodeBoolForKey:v42];

    v43 = NSStringFromSelector(sel_messagesGroupUUID);
    v44 = [coderCopy decodeObjectForKey:v43];
    messagesGroupUUID = v5->_messagesGroupUUID;
    v5->_messagesGroupUUID = v44;

    v46 = NSStringFromSelector(sel_messagesGroupName);
    v47 = [coderCopy decodeObjectForKey:v46];
    messagesGroupName = v5->_messagesGroupName;
    v5->_messagesGroupName = v47;

    v49 = objc_opt_class();
    v50 = NSStringFromSelector(sel_dateStarted);
    v51 = [coderCopy decodeObjectOfClass:v49 forKey:v50];
    dateStarted = v5->_dateStarted;
    v5->_dateStarted = v51;

    v53 = objc_opt_class();
    v54 = NSStringFromSelector(sel_upgradeSessionUUID);
    v55 = [coderCopy decodeObjectOfClass:v53 forKey:v54];
    upgradeSessionUUID = v5->_upgradeSessionUUID;
    v5->_upgradeSessionUUID = v55;

    v57 = MEMORY[0x1E695DFD8];
    v58 = objc_opt_class();
    v59 = objc_opt_class();
    v60 = [v57 setWithObjects:{v58, v59, objc_opt_class(), 0}];
    v61 = NSStringFromSelector(sel_remotePushTokens);
    v62 = [coderCopy decodeObjectOfClasses:v60 forKey:v61];
    remotePushTokens = v5->_remotePushTokens;
    v5->_remotePushTokens = v62;

    v64 = objc_opt_class();
    v65 = NSStringFromSelector(sel_joinCallActivity);
    v66 = [coderCopy decodeObjectOfClass:v64 forKey:v65];
    joinCallActivity = v5->_joinCallActivity;
    v5->_joinCallActivity = v66;

    v68 = objc_opt_class();
    v69 = NSStringFromSelector(sel_conversationProviderIdentifier);
    v70 = [coderCopy decodeObjectOfClass:v68 forKey:v69];
    conversationProviderIdentifier = v5->_conversationProviderIdentifier;
    v5->_conversationProviderIdentifier = v70;

    v72 = MEMORY[0x1E695DFD8];
    v73 = objc_opt_class();
    v74 = [v72 setWithObjects:{v73, objc_opt_class(), 0}];
    v75 = NSStringFromSelector(sel_notificationStylesByHandleType);
    v76 = [coderCopy decodeObjectOfClasses:v74 forKey:v75];
    notificationStylesByHandleType = v5->_notificationStylesByHandleType;
    v5->_notificationStylesByHandleType = v76;

    v78 = NSStringFromSelector(sel_avMode);
    v5->_avMode = [coderCopy decodeIntegerForKey:v78];

    v79 = NSStringFromSelector(sel_presentationMode);
    v5->_presentationMode = [coderCopy decodeIntegerForKey:v79];

    v80 = objc_opt_class();
    v81 = NSStringFromSelector(sel_associationIdentifier);
    v82 = [coderCopy decodeObjectOfClass:v80 forKey:v81];
    associationIdentifier = v5->_associationIdentifier;
    v5->_associationIdentifier = v82;

    v84 = objc_opt_class();
    v85 = NSStringFromSelector(sel_associationAVCIdentifier);
    v86 = [coderCopy decodeObjectOfClass:v84 forKey:v85];
    associationAVCIdentifier = v5->_associationAVCIdentifier;
    v5->_associationAVCIdentifier = v86;

    v88 = objc_opt_class();
    v89 = NSStringFromSelector(sel_collaborationIdentifier);
    v90 = [coderCopy decodeObjectOfClass:v88 forKey:v89];
    collaborationIdentifier = v5->_collaborationIdentifier;
    v5->_collaborationIdentifier = v90;

    v92 = NSStringFromSelector(sel_isRelay);
    v5->_relay = [coderCopy decodeBoolForKey:v92];

    v93 = NSStringFromSelector(sel_screenShareRequestType);
    v5->_screenShareRequestType = [coderCopy decodeIntegerForKey:v93];

    v94 = NSStringFromSelector(sel_shouldSendLegacyScreenSharingInvite);
    v5->_shouldSendLegacyScreenSharingInvite = [coderCopy decodeBoolForKey:v94];

    v95 = objc_opt_class();
    v96 = NSStringFromSelector(sel_screenSharingRequestMetadata);
    v97 = [coderCopy decodeObjectOfClass:v95 forKey:v96];
    screenSharingRequestMetadata = v5->_screenSharingRequestMetadata;
    v5->_screenSharingRequestMetadata = v97;

    v99 = objc_opt_class();
    v100 = NSStringFromSelector(sel_participantCluster);
    v101 = [coderCopy decodeObjectOfClass:v99 forKey:v100];
    participantCluster = v5->_participantCluster;
    v5->_participantCluster = v101;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v73.receiver = self;
  v73.super_class = CXJoinCallAction;
  coderCopy = coder;
  [(CXCallAction *)&v73 encodeWithCoder:coderCopy];
  v5 = [(CXJoinCallAction *)self groupUUID:v73.receiver];
  v6 = NSStringFromSelector(sel_groupUUID);
  [coderCopy encodeObject:v5 forKey:v6];

  remoteMembers = [(CXJoinCallAction *)self remoteMembers];
  v8 = NSStringFromSelector(sel_remoteMembers);
  [coderCopy encodeObject:remoteMembers forKey:v8];

  otherInvitedHandles = [(CXJoinCallAction *)self otherInvitedHandles];
  v10 = NSStringFromSelector(sel_otherInvitedHandles);
  [coderCopy encodeObject:otherInvitedHandles forKey:v10];

  callerID = [(CXJoinCallAction *)self callerID];
  v12 = NSStringFromSelector(sel_callerID);
  [coderCopy encodeObject:callerID forKey:v12];

  isVideoEnabled = [(CXJoinCallAction *)self isVideoEnabled];
  v14 = NSStringFromSelector(sel_isVideoEnabled);
  [coderCopy encodeBool:isVideoEnabled forKey:v14];

  isUplinkMuted = [(CXJoinCallAction *)self isUplinkMuted];
  v16 = NSStringFromSelector(sel_isUplinkMuted);
  [coderCopy encodeBool:isUplinkMuted forKey:v16];

  shouldSuppressInCallUI = [(CXJoinCallAction *)self shouldSuppressInCallUI];
  v18 = NSStringFromSelector(sel_shouldSuppressInCallUI);
  [coderCopy encodeBool:shouldSuppressInCallUI forKey:v18];

  launchInBackground = [(CXJoinCallAction *)self launchInBackground];
  v20 = NSStringFromSelector(sel_launchInBackground);
  [coderCopy encodeBool:launchInBackground forKey:v20];

  wantsStagingArea = [(CXJoinCallAction *)self wantsStagingArea];
  v22 = NSStringFromSelector(sel_wantsStagingArea);
  [coderCopy encodeBool:wantsStagingArea forKey:v22];

  isVideo = [(CXJoinCallAction *)self isVideo];
  v24 = NSStringFromSelector(sel_isVideo);
  [coderCopy encodeBool:isVideo forKey:v24];

  isUpgrade = [(CXJoinCallAction *)self isUpgrade];
  v26 = NSStringFromSelector(sel_isUpgrade);
  [coderCopy encodeBool:isUpgrade forKey:v26];

  isUpgradeToVideo = [(CXJoinCallAction *)self isUpgradeToVideo];
  v28 = NSStringFromSelector(sel_isUpgradeToVideo);
  [coderCopy encodeBool:isUpgradeToVideo forKey:v28];

  isLetMeIn = [(CXJoinCallAction *)self isLetMeIn];
  v30 = NSStringFromSelector(sel_isLetMeIn);
  [coderCopy encodeBool:isLetMeIn forKey:v30];

  isJoiningConversationWithLink = [(CXJoinCallAction *)self isJoiningConversationWithLink];
  v32 = NSStringFromSelector(sel_isJoiningConversationWithLink);
  [coderCopy encodeBool:isJoiningConversationWithLink forKey:v32];

  pseudonym = [(CXJoinCallAction *)self pseudonym];
  v34 = NSStringFromSelector(sel_pseudonym);
  [coderCopy encodeObject:pseudonym forKey:v34];

  publicKey = [(CXJoinCallAction *)self publicKey];
  v36 = NSStringFromSelector(sel_publicKey);
  [coderCopy encodeObject:publicKey forKey:v36];

  messagesGroupUUID = [(CXJoinCallAction *)self messagesGroupUUID];
  v38 = NSStringFromSelector(sel_messagesGroupUUID);
  [coderCopy encodeObject:messagesGroupUUID forKey:v38];

  messagesGroupName = [(CXJoinCallAction *)self messagesGroupName];
  v40 = NSStringFromSelector(sel_messagesGroupName);
  [coderCopy encodeObject:messagesGroupName forKey:v40];

  dateStarted = [(CXJoinCallAction *)self dateStarted];
  v42 = NSStringFromSelector(sel_dateStarted);
  [coderCopy encodeObject:dateStarted forKey:v42];

  upgradeSessionUUID = [(CXJoinCallAction *)self upgradeSessionUUID];
  v44 = NSStringFromSelector(sel_upgradeSessionUUID);
  [coderCopy encodeObject:upgradeSessionUUID forKey:v44];

  remotePushTokens = [(CXJoinCallAction *)self remotePushTokens];
  v46 = NSStringFromSelector(sel_remotePushTokens);
  [coderCopy encodeObject:remotePushTokens forKey:v46];

  joinCallActivity = [(CXJoinCallAction *)self joinCallActivity];
  v48 = NSStringFromSelector(sel_joinCallActivity);
  [coderCopy encodeObject:joinCallActivity forKey:v48];

  conversationProviderIdentifier = [(CXJoinCallAction *)self conversationProviderIdentifier];
  v50 = NSStringFromSelector(sel_conversationProviderIdentifier);
  [coderCopy encodeObject:conversationProviderIdentifier forKey:v50];

  notificationStylesByHandleType = [(CXJoinCallAction *)self notificationStylesByHandleType];
  v52 = NSStringFromSelector(sel_notificationStylesByHandleType);
  [coderCopy encodeObject:notificationStylesByHandleType forKey:v52];

  avMode = [(CXJoinCallAction *)self avMode];
  v54 = NSStringFromSelector(sel_avMode);
  [coderCopy encodeInteger:avMode forKey:v54];

  presentationMode = [(CXJoinCallAction *)self presentationMode];
  v56 = NSStringFromSelector(sel_presentationMode);
  [coderCopy encodeInteger:presentationMode forKey:v56];

  associationIdentifier = [(CXJoinCallAction *)self associationIdentifier];
  v58 = NSStringFromSelector(sel_associationIdentifier);
  [coderCopy encodeObject:associationIdentifier forKey:v58];

  associationAVCIdentifier = [(CXJoinCallAction *)self associationAVCIdentifier];
  v60 = NSStringFromSelector(sel_associationAVCIdentifier);
  [coderCopy encodeObject:associationAVCIdentifier forKey:v60];

  collaborationIdentifier = [(CXJoinCallAction *)self collaborationIdentifier];
  v62 = NSStringFromSelector(sel_collaborationIdentifier);
  [coderCopy encodeObject:collaborationIdentifier forKey:v62];

  isRelay = [(CXJoinCallAction *)self isRelay];
  v64 = NSStringFromSelector(sel_isRelay);
  [coderCopy encodeBool:isRelay forKey:v64];

  screenShareRequestType = [(CXJoinCallAction *)self screenShareRequestType];
  v66 = NSStringFromSelector(sel_screenShareRequestType);
  [coderCopy encodeInteger:screenShareRequestType forKey:v66];

  shouldSendLegacyScreenSharingInvite = [(CXJoinCallAction *)self shouldSendLegacyScreenSharingInvite];
  v68 = NSStringFromSelector(sel_shouldSendLegacyScreenSharingInvite);
  [coderCopy encodeBool:shouldSendLegacyScreenSharingInvite forKey:v68];

  screenSharingRequestMetadata = [(CXJoinCallAction *)self screenSharingRequestMetadata];
  v70 = NSStringFromSelector(sel_screenSharingRequestMetadata);
  [coderCopy encodeObject:screenSharingRequestMetadata forKey:v70];

  participantCluster = [(CXJoinCallAction *)self participantCluster];
  v72 = NSStringFromSelector(sel_participantCluster);
  [coderCopy encodeObject:participantCluster forKey:v72];
}

@end
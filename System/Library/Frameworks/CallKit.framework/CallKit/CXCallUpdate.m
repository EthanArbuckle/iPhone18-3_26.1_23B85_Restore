@interface CXCallUpdate
+ (CXCallUpdate)callUpdateWithDefaultValuesSet;
- (BOOL)accessoryButtonEventsEnabled;
- (BOOL)anyRemoteSupportsRequestToScreenShare;
- (BOOL)blocked;
- (BOOL)conversation;
- (BOOL)emergency;
- (BOOL)failureExpected;
- (BOOL)hasBeenRedirected;
- (BOOL)hasVideo;
- (BOOL)ignoresBluetoothDeviceUID;
- (BOOL)isKnownCaller;
- (BOOL)isReRing;
- (BOOL)isSharePlayCapable;
- (BOOL)isUnderlyingLinksConnected;
- (BOOL)isUpgradeToVideo;
- (BOOL)launchInBackground;
- (BOOL)mayRequireBreakBeforeMake;
- (BOOL)mediaPlaybackOnExternalDevice;
- (BOOL)mixesVoiceWithMedia;
- (BOOL)mutuallyExclusiveCall;
- (BOOL)oneToOneModeEnabled;
- (BOOL)prefersExclusiveAccessToCellularNetwork;
- (BOOL)prefersToPlayDuringWombat;
- (BOOL)remoteUplinkMuted;
- (BOOL)requiresAuthentication;
- (BOOL)requiresInCallSounds;
- (BOOL)sendingVideo;
- (BOOL)sharingScreen;
- (BOOL)shouldSilentlyRegisterIMAVCall;
- (BOOL)shouldSuppressInCallUI;
- (BOOL)specialUnknown;
- (BOOL)startCallMuted;
- (BOOL)supportsAddCall;
- (BOOL)supportsDTMF;
- (BOOL)supportsDTMFUpdates;
- (BOOL)supportsEmergencyFallback;
- (BOOL)supportsGrouping;
- (BOOL)supportsHolding;
- (BOOL)supportsRecents;
- (BOOL)supportsRecording;
- (BOOL)supportsScreenShare;
- (BOOL)supportsScreening;
- (BOOL)supportsSendingToVoicemail;
- (BOOL)supportsSharePlay;
- (BOOL)supportsTTYWithVoice;
- (BOOL)supportsUnambiguousMultiPartyState;
- (BOOL)supportsUngrouping;
- (BOOL)suppressRingtone;
- (BOOL)usingBaseband;
- (CXAccount)account;
- (CXCallTokens)callTokens;
- (CXCallUpdate)init;
- (CXCallUpdate)initWithCoder:(id)a3;
- (CXCallUpdate)updateWithUpdate:(id)a3;
- (CXCallUpdateHasSet)hasSet;
- (CXHandle)initiator;
- (CXHandle)remoteHandle;
- (CXHandoffContext)handoffContext;
- (CXMember)remoteMember;
- (CXParticipant)activeRemoteParticipant;
- (CXSandboxExtendedURL)localizedCallerImageURL;
- (CXScreenShareAttributes)screenShareAttributes;
- (NSDictionary)context;
- (NSMutableDictionary)silencingUserInfo;
- (NSSet)activeRemoteParticipantHandles;
- (NSSet)otherInvitedHandles;
- (NSSet)remoteParticipantHandles;
- (NSString)ISOCountryCode;
- (NSString)announceProviderIdentifier;
- (NSString)audioCategory;
- (NSString)audioMode;
- (NSString)crossDeviceIdentifier;
- (NSString)description;
- (NSString)localMemberHandleValue;
- (NSString)localSenderSubscriptionIdentifier;
- (NSString)localizedCallerName;
- (NSUUID)conversationGroupUUID;
- (NSUUID)localSenderIdentityAccountUUID;
- (NSUUID)localSenderIdentityUUID;
- (NSUUID)participantGroupUUID;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sanitizedCopyWithZone:(_NSZone *)a3;
- (int)commTrustScore;
- (int)filteredOutReason;
- (int64_t)audioInterruptionOperationMode;
- (int64_t)audioInterruptionProvider;
- (int64_t)bluetoothAudioFormat;
- (int64_t)callSubType;
- (int64_t)identificationCategory;
- (int64_t)inCallSoundRegion;
- (int64_t)junkConfidence;
- (int64_t)nearbyMode;
- (int64_t)priority;
- (int64_t)screenSharingIntention;
- (int64_t)screenSharingType;
- (int64_t)serviceStatus;
- (int64_t)transmissionMode;
- (int64_t)ttyType;
- (int64_t)verificationStatus;
- (int64_t)videoStreamToken;
- (void)encodeWithCoder:(id)a3;
- (void)setAccessoryButtonEventsEnabled:(BOOL)a3;
- (void)setAccount:(id)a3;
- (void)setActiveRemoteParticipant:(id)a3;
- (void)setActiveRemoteParticipantHandles:(id)a3;
- (void)setAnnounceProviderIdentifier:(id)a3;
- (void)setAnyRemoteSupportsRequestToScreenShare:(BOOL)a3;
- (void)setAudioCategory:(id)a3;
- (void)setAudioInterruptionOperationMode:(int64_t)a3;
- (void)setAudioInterruptionProvider:(int64_t)a3;
- (void)setAudioMode:(id)a3;
- (void)setBlocked:(BOOL)a3;
- (void)setBluetoothAudioFormat:(int64_t)a3;
- (void)setCallSubType:(int64_t)a3;
- (void)setCallTokens:(id)a3;
- (void)setCommTrustScore:(int)a3;
- (void)setContext:(id)a3;
- (void)setConversation:(BOOL)a3;
- (void)setConversationGroupUUID:(id)a3;
- (void)setCrossDeviceIdentifier:(id)a3;
- (void)setEmergency:(BOOL)a3;
- (void)setFailureExpected:(BOOL)a3;
- (void)setFilteredOutReason:(int)a3;
- (void)setHandoffContext:(id)a3;
- (void)setHasBeenRedirected:(BOOL)a3;
- (void)setHasVideo:(BOOL)hasVideo;
- (void)setISOCountryCode:(id)a3;
- (void)setIdentificationCategory:(int64_t)a3;
- (void)setIgnoresBluetoothDeviceUID:(BOOL)a3;
- (void)setInCallSoundRegion:(int64_t)a3;
- (void)setInitiator:(id)a3;
- (void)setIsKnownCaller:(BOOL)a3;
- (void)setIsReRing:(BOOL)a3;
- (void)setIsSharePlayCapable:(BOOL)a3;
- (void)setIsUnderlyingLinksConnected:(BOOL)a3;
- (void)setIsUpgradeToVideo:(BOOL)a3;
- (void)setJunkConfidence:(int64_t)a3;
- (void)setLaunchInBackground:(BOOL)a3;
- (void)setLocalMemberHandleValue:(id)a3;
- (void)setLocalSenderIdentityAccountUUID:(id)a3;
- (void)setLocalSenderIdentityUUID:(id)a3;
- (void)setLocalSenderSubscriptionIdentifier:(id)a3;
- (void)setLocalizedCallerImageURL:(id)a3;
- (void)setLocalizedCallerName:(NSString *)localizedCallerName;
- (void)setMayRequireBreakBeforeMake:(BOOL)a3;
- (void)setMediaPlaybackOnExternalDevice:(BOOL)a3;
- (void)setMixesVoiceWithMedia:(BOOL)a3;
- (void)setMutuallyExclusiveCall:(BOOL)a3;
- (void)setNearbyMode:(int64_t)a3;
- (void)setOneToOneModeEnabled:(BOOL)a3;
- (void)setOtherInvitedHandles:(id)a3;
- (void)setParticipantGroupUUID:(id)a3;
- (void)setPrefersExclusiveAccessToCellularNetwork:(BOOL)a3;
- (void)setPrefersToPlayDuringWombat:(BOOL)a3;
- (void)setPriority:(int64_t)a3;
- (void)setRemoteHandle:(CXHandle *)remoteHandle;
- (void)setRemoteMember:(id)a3;
- (void)setRemoteParticipantHandles:(id)a3;
- (void)setRemoteUplinkMuted:(BOOL)a3;
- (void)setRequiresAuthentication:(BOOL)a3;
- (void)setRequiresInCallSounds:(BOOL)a3;
- (void)setScreenShareAttributes:(id)a3;
- (void)setScreenSharingIntention:(int64_t)a3;
- (void)setScreenSharingType:(int64_t)a3;
- (void)setSendingVideo:(BOOL)a3;
- (void)setServiceStatus:(int64_t)a3;
- (void)setSharingScreen:(BOOL)a3;
- (void)setShouldSilentlyRegisterIMAVCall:(BOOL)a3;
- (void)setShouldSuppressInCallUI:(BOOL)a3;
- (void)setSpecialUnknown:(BOOL)a3;
- (void)setSupportsAddCall:(BOOL)a3;
- (void)setSupportsDTMF:(BOOL)supportsDTMF;
- (void)setSupportsDTMFUpdates:(BOOL)a3;
- (void)setSupportsEmergencyFallback:(BOOL)a3;
- (void)setSupportsGrouping:(BOOL)supportsGrouping;
- (void)setSupportsHolding:(BOOL)supportsHolding;
- (void)setSupportsRecents:(BOOL)a3;
- (void)setSupportsRecording:(BOOL)a3;
- (void)setSupportsScreenShare:(BOOL)a3;
- (void)setSupportsScreening:(BOOL)a3;
- (void)setSupportsSendingToVoicemail:(BOOL)a3;
- (void)setSupportsSharePlay:(BOOL)a3;
- (void)setSupportsTTYWithVoice:(BOOL)a3;
- (void)setSupportsUnambiguousMultiPartyState:(BOOL)a3;
- (void)setSupportsUngrouping:(BOOL)supportsUngrouping;
- (void)setSuppressRingtone:(BOOL)a3;
- (void)setTTYType:(int64_t)a3;
- (void)setTransmissionMode:(int64_t)a3;
- (void)setUsingBaseband:(BOOL)a3;
- (void)setVerificationStatus:(int64_t)a3;
- (void)setVideoStreamToken:(int64_t)a3;
- (void)startCallMuted:(BOOL)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXCallUpdate

- (CXCallUpdate)init
{
  v7.receiver = self;
  v7.super_class = CXCallUpdate;
  v2 = [(CXCallUpdate *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessorLock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v3->_UUID;
    v3->_UUID = v4;

    *&v3->_hasSet = 0;
    *(&v3->_hasSet + 2) = 0;
  }

  return v3;
}

+ (CXCallUpdate)callUpdateWithDefaultValuesSet
{
  v2 = objc_alloc_init(a1);
  [v2 setSupportsHolding:1];
  [v2 setSupportsGrouping:1];
  [v2 setSupportsUngrouping:1];
  [v2 setSupportsDTMF:1];
  [v2 setSupportsSharePlay:1];
  [v2 setSupportsScreenShare:1];
  [v2 setSupportsUnambiguousMultiPartyState:1];
  [v2 setSupportsAddCall:1];
  [v2 setSupportsRecording:1];
  [v2 setIsUnderlyingLinksConnected:1];
  [v2 setSupportsScreening:1];
  [v2 setSupportsRecents:1];
  [v2 setCommTrustScore:4];

  return v2;
}

- (CXMember)remoteMember
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_remoteMember;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (CXCallUpdateHasSet)hasSet
{
  v2 = *(&self->_hasSet + 2);
  hasSet = self->_hasSet;
  return result;
}

- (int64_t)bluetoothAudioFormat
{
  os_unfair_lock_lock(&self->_accessorLock);
  bluetoothAudioFormat = self->_bluetoothAudioFormat;
  os_unfair_lock_unlock(&self->_accessorLock);
  return bluetoothAudioFormat;
}

- (CXHandle)remoteHandle
{
  v3 = [(CXCallUpdate *)self remoteMember];
  if (v3)
  {
    v4 = [(CXCallUpdate *)self remoteMember];
    v5 = [v4 handle];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)ttyType
{
  os_unfair_lock_lock(&self->_accessorLock);
  ttyType = self->_ttyType;
  os_unfair_lock_unlock(&self->_accessorLock);
  return ttyType;
}

- (NSUUID)localSenderIdentityUUID
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_localSenderIdentityUUID;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (BOOL)shouldSuppressInCallUI
{
  os_unfair_lock_lock(&self->_accessorLock);
  shouldSuppressInCallUI = self->_shouldSuppressInCallUI;
  os_unfair_lock_unlock(&self->_accessorLock);
  return shouldSuppressInCallUI;
}

- (BOOL)launchInBackground
{
  os_unfair_lock_lock(&self->_accessorLock);
  launchInBackground = self->_launchInBackground;
  os_unfair_lock_unlock(&self->_accessorLock);
  return launchInBackground;
}

- (NSString)localizedCallerName
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_localizedCallerName;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (BOOL)mayRequireBreakBeforeMake
{
  os_unfair_lock_lock(&self->_accessorLock);
  mayRequireBreakBeforeMake = self->_mayRequireBreakBeforeMake;
  os_unfair_lock_unlock(&self->_accessorLock);
  return mayRequireBreakBeforeMake;
}

- (NSSet)activeRemoteParticipantHandles
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_activeRemoteParticipantHandles;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (NSSet)remoteParticipantHandles
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_remoteParticipantHandles;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (int64_t)audioInterruptionProvider
{
  os_unfair_lock_lock(&self->_accessorLock);
  audioInterruptionProvider = self->_audioInterruptionProvider;
  os_unfair_lock_unlock(&self->_accessorLock);
  return audioInterruptionProvider;
}

- (NSMutableDictionary)silencingUserInfo
{
  silencingUserInfo = self->_silencingUserInfo;
  if (!silencingUserInfo)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = self->_silencingUserInfo;
    self->_silencingUserInfo = v4;

    silencingUserInfo = self->_silencingUserInfo;
  }

  return silencingUserInfo;
}

- (BOOL)supportsHolding
{
  os_unfair_lock_lock(&self->_accessorLock);
  supportsHolding = self->_supportsHolding;
  os_unfair_lock_unlock(&self->_accessorLock);
  return supportsHolding;
}

- (BOOL)supportsGrouping
{
  os_unfair_lock_lock(&self->_accessorLock);
  supportsGrouping = self->_supportsGrouping;
  os_unfair_lock_unlock(&self->_accessorLock);
  return supportsGrouping;
}

- (BOOL)supportsUngrouping
{
  os_unfair_lock_lock(&self->_accessorLock);
  supportsUngrouping = self->_supportsUngrouping;
  os_unfair_lock_unlock(&self->_accessorLock);
  return supportsUngrouping;
}

- (BOOL)supportsDTMF
{
  os_unfair_lock_lock(&self->_accessorLock);
  supportsDTMF = self->_supportsDTMF;
  os_unfair_lock_unlock(&self->_accessorLock);
  return supportsDTMF;
}

- (BOOL)supportsUnambiguousMultiPartyState
{
  os_unfair_lock_lock(&self->_accessorLock);
  supportsUnambiguousMultiPartyState = self->_supportsUnambiguousMultiPartyState;
  os_unfair_lock_unlock(&self->_accessorLock);
  return supportsUnambiguousMultiPartyState;
}

- (BOOL)supportsAddCall
{
  os_unfair_lock_lock(&self->_accessorLock);
  supportsAddCall = self->_supportsAddCall;
  os_unfair_lock_unlock(&self->_accessorLock);
  return supportsAddCall;
}

- (BOOL)supportsSendingToVoicemail
{
  os_unfair_lock_lock(&self->_accessorLock);
  supportsSendingToVoicemail = self->_supportsSendingToVoicemail;
  os_unfair_lock_unlock(&self->_accessorLock);
  return supportsSendingToVoicemail;
}

- (BOOL)supportsDTMFUpdates
{
  os_unfair_lock_lock(&self->_accessorLock);
  supportsDTMFUpdates = self->_supportsDTMFUpdates;
  os_unfair_lock_unlock(&self->_accessorLock);
  return supportsDTMFUpdates;
}

- (BOOL)isUnderlyingLinksConnected
{
  os_unfair_lock_lock(&self->_accessorLock);
  isUnderlyingLinksConnected = self->_isUnderlyingLinksConnected;
  os_unfair_lock_unlock(&self->_accessorLock);
  return isUnderlyingLinksConnected;
}

- (int64_t)verificationStatus
{
  os_unfair_lock_lock(&self->_accessorLock);
  verificationStatus = self->_verificationStatus;
  os_unfair_lock_unlock(&self->_accessorLock);
  return verificationStatus;
}

- (int64_t)priority
{
  os_unfair_lock_lock(&self->_accessorLock);
  priority = self->_priority;
  os_unfair_lock_unlock(&self->_accessorLock);
  return priority;
}

- (int64_t)identificationCategory
{
  os_unfair_lock_lock(&self->_accessorLock);
  identificationCategory = self->_identificationCategory;
  os_unfair_lock_unlock(&self->_accessorLock);
  return identificationCategory;
}

- (int64_t)junkConfidence
{
  os_unfair_lock_lock(&self->_accessorLock);
  junkConfidence = self->_junkConfidence;
  os_unfair_lock_unlock(&self->_accessorLock);
  return junkConfidence;
}

- (CXCallTokens)callTokens
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_callTokens;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (NSString)localMemberHandleValue
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_localMemberHandleValue;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (int64_t)screenSharingIntention
{
  os_unfair_lock_lock(&self->_accessorLock);
  screenSharingIntention = self->_screenSharingIntention;
  os_unfair_lock_unlock(&self->_accessorLock);
  return screenSharingIntention;
}

- (CXScreenShareAttributes)screenShareAttributes
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_screenShareAttributes;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (int64_t)screenSharingType
{
  os_unfair_lock_lock(&self->_accessorLock);
  screenSharingType = self->_screenSharingType;
  os_unfair_lock_unlock(&self->_accessorLock);
  return screenSharingType;
}

- (NSString)ISOCountryCode
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_ISOCountryCode;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (NSString)announceProviderIdentifier
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_announceProviderIdentifier;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (BOOL)supportsRecents
{
  os_unfair_lock_lock(&self->_accessorLock);
  supportsRecents = self->_supportsRecents;
  os_unfair_lock_unlock(&self->_accessorLock);
  return supportsRecents;
}

- (NSUUID)participantGroupUUID
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_participantGroupUUID;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (NSUUID)localSenderIdentityAccountUUID
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_localSenderIdentityAccountUUID;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (NSString)audioCategory
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_audioCategory;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (NSString)audioMode
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_audioMode;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (BOOL)requiresInCallSounds
{
  os_unfair_lock_lock(&self->_accessorLock);
  requiresInCallSounds = self->_requiresInCallSounds;
  os_unfair_lock_unlock(&self->_accessorLock);
  return requiresInCallSounds;
}

- (int64_t)inCallSoundRegion
{
  os_unfair_lock_lock(&self->_accessorLock);
  inCallSoundRegion = self->_inCallSoundRegion;
  os_unfair_lock_unlock(&self->_accessorLock);
  return inCallSoundRegion;
}

- (int64_t)videoStreamToken
{
  os_unfair_lock_lock(&self->_accessorLock);
  videoStreamToken = self->_videoStreamToken;
  os_unfair_lock_unlock(&self->_accessorLock);
  return videoStreamToken;
}

- (NSDictionary)context
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_context;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (BOOL)supportsTTYWithVoice
{
  os_unfair_lock_lock(&self->_accessorLock);
  supportsTTYWithVoice = self->_supportsTTYWithVoice;
  os_unfair_lock_unlock(&self->_accessorLock);
  return supportsTTYWithVoice;
}

- (BOOL)mixesVoiceWithMedia
{
  os_unfair_lock_lock(&self->_accessorLock);
  mixesVoiceWithMedia = self->_mixesVoiceWithMedia;
  os_unfair_lock_unlock(&self->_accessorLock);
  return mixesVoiceWithMedia;
}

- (BOOL)supportsEmergencyFallback
{
  os_unfair_lock_lock(&self->_accessorLock);
  supportsEmergencyFallback = self->_supportsEmergencyFallback;
  os_unfair_lock_unlock(&self->_accessorLock);
  return supportsEmergencyFallback;
}

- (BOOL)supportsScreening
{
  os_unfair_lock_lock(&self->_accessorLock);
  supportsScreening = self->_supportsScreening;
  os_unfair_lock_unlock(&self->_accessorLock);
  return supportsScreening;
}

- (BOOL)hasBeenRedirected
{
  os_unfair_lock_lock(&self->_accessorLock);
  hasBeenRedirected = self->_hasBeenRedirected;
  os_unfair_lock_unlock(&self->_accessorLock);
  return hasBeenRedirected;
}

- (BOOL)isReRing
{
  os_unfair_lock_lock(&self->_accessorLock);
  isReRing = self->_isReRing;
  os_unfair_lock_unlock(&self->_accessorLock);
  return isReRing;
}

- (int64_t)nearbyMode
{
  os_unfair_lock_lock(&self->_accessorLock);
  nearbyMode = self->_nearbyMode;
  os_unfair_lock_unlock(&self->_accessorLock);
  return nearbyMode;
}

- (int)commTrustScore
{
  os_unfair_lock_lock(&self->_accessorLock);
  commTrustScore = self->_commTrustScore;
  os_unfair_lock_unlock(&self->_accessorLock);
  return commTrustScore;
}

- (CXAccount)account
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_account;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (int64_t)serviceStatus
{
  os_unfair_lock_lock(&self->_accessorLock);
  serviceStatus = self->_serviceStatus;
  os_unfair_lock_unlock(&self->_accessorLock);
  return serviceStatus;
}

- (int64_t)transmissionMode
{
  os_unfair_lock_lock(&self->_accessorLock);
  transmissionMode = self->_transmissionMode;
  os_unfair_lock_unlock(&self->_accessorLock);
  return transmissionMode;
}

- (BOOL)accessoryButtonEventsEnabled
{
  os_unfair_lock_lock(&self->_accessorLock);
  accessoryButtonEventsEnabled = self->_accessoryButtonEventsEnabled;
  os_unfair_lock_unlock(&self->_accessorLock);
  return accessoryButtonEventsEnabled;
}

- (BOOL)supportsRecording
{
  os_unfair_lock_lock(&self->_accessorLock);
  supportsRecording = self->_supportsRecording;
  os_unfair_lock_unlock(&self->_accessorLock);
  return supportsRecording;
}

- (BOOL)ignoresBluetoothDeviceUID
{
  os_unfair_lock_lock(&self->_accessorLock);
  ignoresBluetoothDeviceUID = self->_ignoresBluetoothDeviceUID;
  os_unfair_lock_unlock(&self->_accessorLock);
  return ignoresBluetoothDeviceUID;
}

- (int64_t)audioInterruptionOperationMode
{
  os_unfair_lock_lock(&self->_accessorLock);
  audioInterruptionOperationMode = self->_audioInterruptionOperationMode;
  os_unfair_lock_unlock(&self->_accessorLock);
  return audioInterruptionOperationMode;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CXCallUpdate *)self UUID];
  v5 = [v4 UUIDString];
  [v3 appendFormat:@" UUID=%@", v5];

  if (([(CXCallUpdate *)self hasSet]& 1) != 0)
  {
    v6 = [(CXCallUpdate *)self account];
    [v3 appendFormat:@" account=%@", v6];
  }

  if (([(CXCallUpdate *)self hasSet]& 2) != 0)
  {
    v7 = [(CXCallUpdate *)self activeRemoteParticipant];
    [v3 appendFormat:@" activeRemoteParticipant=%@", v7];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200) != 0)
  {
    [v3 appendFormat:@" blocked=%d", -[CXCallUpdate isBlocked](self, "isBlocked")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20) != 0)
  {
    [v3 appendFormat:@" emergency=%d", -[CXCallUpdate isEmergency](self, "isEmergency")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40) != 0)
  {
    [v3 appendFormat:@" failureExpected=%d", -[CXCallUpdate isFailureExpected](self, "isFailureExpected")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80) != 0)
  {
    [v3 appendFormat:@" supportsEmergencyFallback=%d", -[CXCallUpdate supportsEmergencyFallback](self, "supportsEmergencyFallback")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100) != 0)
  {
    [v3 appendFormat:@" usingBaseband=%d", -[CXCallUpdate isUsingBaseband](self, "isUsingBaseband")];
  }

  if (([(CXCallUpdate *)self hasSet]& 4) != 0)
  {
    v8 = [(CXCallUpdate *)self remoteMember];
    [v3 appendFormat:@" remoteMember=%@", v8];
  }

  if (([(CXCallUpdate *)self hasSet]& 8) != 0)
  {
    v9 = [(CXCallUpdate *)self localizedCallerName];
    [v3 appendFormat:@" localizedCallerName=%@", v9];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10) != 0)
  {
    v10 = [(CXCallUpdate *)self localizedCallerImageURL];
    [v3 appendFormat:@" localizedCallerImageURL=%@", v10];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400) != 0)
  {
    [v3 appendFormat:@" ttyType=%ld", -[CXCallUpdate ttyType](self, "ttyType")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000) != 0)
  {
    [v3 appendFormat:@" mayRequireBreakBeforeMake=%d", -[CXCallUpdate mayRequireBreakBeforeMake](self, "mayRequireBreakBeforeMake")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000) != 0)
  {
    [v3 appendFormat:@" hasVideo=%d", -[CXCallUpdate hasVideo](self, "hasVideo")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000) != 0)
  {
    [v3 appendFormat:@" isUpgradeToVideo=%d", -[CXCallUpdate isUpgradeToVideo](self, "isUpgradeToVideo")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000) != 0)
  {
    v11 = [(CXCallUpdate *)self audioCategory];
    [v3 appendFormat:@" audioCategory=%@", v11];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000) != 0)
  {
    v12 = [(CXCallUpdate *)self audioMode];
    [v3 appendFormat:@" audioMode=%@", v12];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000) != 0)
  {
    [v3 appendFormat:@" audioInterruptionProvider=%ld", -[CXCallUpdate audioInterruptionProvider](self, "audioInterruptionProvider")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000) != 0)
  {
    [v3 appendFormat:@" audioInterruptionOperationMode=%ld", -[CXCallUpdate audioInterruptionOperationMode](self, "audioInterruptionOperationMode")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000) != 0)
  {
    [v3 appendFormat:@" verificationStatus=%ld", -[CXCallUpdate verificationStatus](self, "verificationStatus")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000) != 0)
  {
    [v3 appendFormat:@" priority=%ld", -[CXCallUpdate priority](self, "priority")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000) != 0)
  {
    [v3 appendFormat:@" requiresInCallSounds=%d", -[CXCallUpdate requiresInCallSounds](self, "requiresInCallSounds")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000) != 0)
  {
    [v3 appendFormat:@" inCallSoundRegion=%ld", -[CXCallUpdate inCallSoundRegion](self, "inCallSoundRegion")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000) != 0)
  {
    [v3 appendFormat:@" supportsHolding=%d", -[CXCallUpdate supportsHolding](self, "supportsHolding")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000) != 0)
  {
    [v3 appendFormat:@" supportsGrouping=%d", -[CXCallUpdate supportsGrouping](self, "supportsGrouping")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000) != 0)
  {
    [v3 appendFormat:@" supportsUngrouping=%d", -[CXCallUpdate supportsUngrouping](self, "supportsUngrouping")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000) != 0)
  {
    [v3 appendFormat:@" supportsDTMF=%d", -[CXCallUpdate supportsDTMF](self, "supportsDTMF")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000000) != 0)
  {
    [v3 appendFormat:@" supportsDTMFUpdates=%d", -[CXCallUpdate supportsDTMFUpdates](self, "supportsDTMFUpdates")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000000) != 0)
  {
    [v3 appendFormat:@" supportsSharePlay=%d", -[CXCallUpdate supportsSharePlay](self, "supportsSharePlay")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000000) != 0)
  {
    [v3 appendFormat:@" supportsScreenShare=%d", -[CXCallUpdate supportsScreenShare](self, "supportsScreenShare")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000000) != 0)
  {
    [v3 appendFormat:@" supportsUnambiguousMultiPartyState=%d", -[CXCallUpdate supportsUnambiguousMultiPartyState](self, "supportsUnambiguousMultiPartyState")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000000) != 0)
  {
    [v3 appendFormat:@" supportsAddCall=%d", -[CXCallUpdate supportsAddCall](self, "supportsAddCall")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000000) != 0)
  {
    [v3 appendFormat:@" supportsSendingToVoicemail=%d", -[CXCallUpdate supportsSendingToVoicemail](self, "supportsSendingToVoicemail")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000000) != 0)
  {
    [v3 appendFormat:@" supportsRecording=%d", -[CXCallUpdate supportsRecording](self, "supportsRecording")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000000) != 0)
  {
    [v3 appendFormat:@" isUnderlyingLinksConnected=%d", -[CXCallUpdate isUnderlyingLinksConnected](self, "isUnderlyingLinksConnected")];
  }

  [(CXCallUpdate *)self hasSet];
  if (v13 < 0)
  {
    [v3 appendFormat:@" supportsScreening=%d", -[CXCallUpdate supportsScreening](self, "supportsScreening")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v14 & 0x10000) != 0)
  {
    [v3 appendFormat:@" supportsRecents=%d", -[CXCallUpdate supportsRecents](self, "supportsRecents")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000000) != 0)
  {
    [v3 appendFormat:@" videoStreamToken=%ld", -[CXCallUpdate videoStreamToken](self, "videoStreamToken")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000000) != 0)
  {
    v15 = [(CXCallUpdate *)self callTokens];
    [v3 appendFormat:@" callTokens=%@", v15];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000000) != 0)
  {
    v16 = [(CXCallUpdate *)self announceProviderIdentifier];
    [v3 appendFormat:@" aPI=%@", v16];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000000) != 0)
  {
    v17 = [(CXCallUpdate *)self initiator];
    [v3 appendFormat:@" initiatorValue=%@", v17];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000000000) != 0)
  {
    v18 = [(CXCallUpdate *)self crossDeviceIdentifier];
    [v3 appendFormat:@" crossDeviceIdentifier=%@", v18];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000000000) != 0)
  {
    v19 = [(CXCallUpdate *)self ISOCountryCode];
    [v3 appendFormat:@" ISOCountryCode=%@", v19];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000000000) != 0)
  {
    v20 = [(CXCallUpdate *)self localSenderIdentityUUID];
    [v3 appendFormat:@" localSenderIdentityUUID=%@", v20];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000000000) != 0)
  {
    v21 = [(CXCallUpdate *)self localSenderIdentityAccountUUID];
    [v3 appendFormat:@" localSenderIdentityAccountUUID=%@", v21];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000000000) != 0)
  {
    v22 = [(CXCallUpdate *)self localMemberHandleValue];
    [v3 appendFormat:@" localMemberHandleValue=%@", v22];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000000000) != 0)
  {
    v23 = [(CXCallUpdate *)self localSenderSubscriptionIdentifier];
    [v3 appendFormat:@" localSenderSubscriptionIdentifier=%@", v23];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000000000) != 0)
  {
    v24 = [(CXCallUpdate *)self participantGroupUUID];
    [v3 appendFormat:@" participantGroupUUID=%@", v24];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000000000) != 0)
  {
    v25 = [(CXCallUpdate *)self remoteParticipantHandles];
    [v3 appendFormat:@" remoteParticipantHandles=%@", v25];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000000000) != 0)
  {
    v26 = [(CXCallUpdate *)self otherInvitedHandles];
    [v3 appendFormat:@" otherInvitedHandles=%@", v26];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000000000) != 0)
  {
    v27 = [(CXCallUpdate *)self activeRemoteParticipantHandles];
    [v3 appendFormat:@" activeRemoteParticipantHandles=%@", v27];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000000000) != 0)
  {
    v28 = [(CXCallUpdate *)self handoffContext];
    [v3 appendFormat:@" handoffContext=%@", v28];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000000000) != 0)
  {
    v29 = [(CXCallUpdate *)self screenShareAttributes];
    [v3 appendFormat:@" screenShareAttributes=%@", v29];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000000000000) != 0)
  {
    v30 = [(CXCallUpdate *)self context];
    [v3 appendFormat:@" context=%@", v30];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000000000000) != 0)
  {
    [v3 appendFormat:@" prefersExclusiveAccessToCellularNetwork=%d", -[CXCallUpdate prefersExclusiveAccessToCellularNetwork](self, "prefersExclusiveAccessToCellularNetwork")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800) != 0)
  {
    [v3 appendFormat:@" supportsTTYWithVoice=%d", -[CXCallUpdate supportsTTYWithVoice](self, "supportsTTYWithVoice")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000000000000) != 0)
  {
    [v3 appendFormat:@" remoteUplinkMuted=%d", -[CXCallUpdate isRemoteUplinkMuted](self, "isRemoteUplinkMuted")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000000000000) != 0)
  {
    [v3 appendFormat:@" shouldSuppressInCallUI=%d", -[CXCallUpdate shouldSuppressInCallUI](self, "shouldSuppressInCallUI")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v31 & 0x2000000) != 0)
  {
    [v3 appendFormat:@" startCallMuted=%d", -[CXCallUpdate startCallMuted](self, "startCallMuted")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000000000000) != 0)
  {
    [v3 appendFormat:@" launchInBackground=%d", -[CXCallUpdate launchInBackground](self, "launchInBackground")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000000000000) != 0)
  {
    [v3 appendFormat:@" requiresAuthentication=%d", -[CXCallUpdate requiresAuthentication](self, "requiresAuthentication")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000000000000) != 0)
  {
    [v3 appendFormat:@" mutuallyExclusiveCall=%d", -[CXCallUpdate isMutuallyExclusiveCall](self, "isMutuallyExclusiveCall")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000000000000) != 0)
  {
    [v3 appendFormat:@" junkConfidence=%ld", -[CXCallUpdate junkConfidence](self, "junkConfidence")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000000000000) != 0)
  {
    [v3 appendFormat:@" identifcationCategory=%ld", -[CXCallUpdate identificationCategory](self, "identificationCategory")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000000000000) != 0)
  {
    [v3 appendFormat:@" conversation=%d", -[CXCallUpdate isConversation](self, "isConversation")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000000000000) != 0)
  {
    [v3 appendFormat:@" mixesVoiceWithMedia=%d", -[CXCallUpdate mixesVoiceWithMedia](self, "mixesVoiceWithMedia")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000000000000) != 0)
  {
    [v3 appendFormat:@" prefersToPlayDuringWombat=%d", -[CXCallUpdate prefersToPlayDuringWombat](self, "prefersToPlayDuringWombat")];
  }

  if ([(CXCallUpdate *)self hasSet]< 0)
  {
    [v3 appendFormat:@" mediaPlaybackOnExternalDevice=%d", -[CXCallUpdate mediaPlaybackOnExternalDevice](self, "mediaPlaybackOnExternalDevice")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v32 & 8) != 0)
  {
    [v3 appendFormat:@" ignoresBluetoothDeviceUID=%d", -[CXCallUpdate ignoresBluetoothDeviceUID](self, "ignoresBluetoothDeviceUID")];
  }

  [(CXCallUpdate *)self hasSet];
  if (v33)
  {
    [v3 appendFormat:@" oneToOneModeEnabled=%d", -[CXCallUpdate isOneToOneModeEnabled](self, "isOneToOneModeEnabled")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v34 & 2) != 0)
  {
    [v3 appendFormat:@" sharingScreen=%d", -[CXCallUpdate isSharingScreen](self, "isSharingScreen")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v35 & 4) != 0)
  {
    [v3 appendFormat:@" bluetoothAudioFormat=%ld", -[CXCallUpdate bluetoothAudioFormat](self, "bluetoothAudioFormat")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v36 & 0x20000) != 0)
  {
    [v3 appendFormat:@" screenSharingIntention=%ld", -[CXCallUpdate screenSharingIntention](self, "screenSharingIntention")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v37 & 0x10) != 0)
  {
    [v3 appendFormat:@" serviceStatus=%ld", -[CXCallUpdate serviceStatus](self, "serviceStatus")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v38 & 0x20) != 0)
  {
    [v3 appendFormat:@" transmissionMode=%ld", -[CXCallUpdate transmissionMode](self, "transmissionMode")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v39 & 0x40) != 0)
  {
    [v3 appendFormat:@" accessoryButtonEventsEnabled=%d", -[CXCallUpdate accessoryButtonEventsEnabled](self, "accessoryButtonEventsEnabled")];
  }

  [(CXCallUpdate *)self hasSet];
  if (v40 < 0)
  {
    [v3 appendFormat:@" sendingVideo=%d", -[CXCallUpdate isSendingVideo](self, "isSendingVideo")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v41 & 0x100) != 0)
  {
    [v3 appendFormat:@" hasBeenRedirected=%d", -[CXCallUpdate hasBeenRedirected](self, "hasBeenRedirected")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v42 & 0x200) != 0)
  {
    [v3 appendFormat:@" isKnownCaller=%d", -[CXCallUpdate isKnownCaller](self, "isKnownCaller")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v43 & 0x400) != 0)
  {
    [v3 appendFormat:@" filteredOutReason=%d", -[CXCallUpdate filteredOutReason](self, "filteredOutReason")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v44 & 0x1000) != 0)
  {
    [v3 appendFormat:@" isReRing=%d", -[CXCallUpdate isReRing](self, "isReRing")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v45 & 0x2000) != 0)
  {
    [v3 appendFormat:@" suppressRingtone=%d", -[CXCallUpdate suppressRingtone](self, "suppressRingtone")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v46 & 0x4000) != 0)
  {
    [v3 appendFormat:@" callSubType=%ld", -[CXCallUpdate callSubType](self, "callSubType")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v47 & 0x40000) != 0)
  {
    [v3 appendFormat:@" screenSharingType=%ld", -[CXCallUpdate screenSharingType](self, "screenSharingType")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v48 & 0x80000) != 0)
  {
    [v3 appendFormat:@" isSharePlayCapable=%d", -[CXCallUpdate isSharePlayCapable](self, "isSharePlayCapable")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v49 & 0x100000) != 0)
  {
    [v3 appendFormat:@" anyRemoteSupportsRequestToScreenShare=%d", -[CXCallUpdate anyRemoteSupportsRequestToScreenShare](self, "anyRemoteSupportsRequestToScreenShare")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v50 & 0x200000) != 0)
  {
    [v3 appendFormat:@" nearbyMode=%ld", -[CXCallUpdate nearbyMode](self, "nearbyMode")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v51 & 0x400000) != 0)
  {
    [v3 appendFormat:@" commTrustScore=%d", -[CXCallUpdate commTrustScore](self, "commTrustScore")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v52 & 0x800000) != 0)
  {
    [v3 appendFormat:@" specialUnknown=%d", -[CXCallUpdate specialUnknown](self, "specialUnknown")];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v53 & 0x1000000) != 0)
  {
    v54 = [(CXCallUpdate *)self conversationGroupUUID];
    [v3 appendFormat:@" conversationGroupUUID=%@", v54];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v55 & 0x4000000) != 0)
  {
    [v3 appendFormat:@" shouldSilentlyRegisterIMAVCall=%d", -[CXCallUpdate shouldSilentlyRegisterIMAVCall](self, "shouldSilentlyRegisterIMAVCall")];
  }

  [v3 appendString:@">"];
  v56 = v3;

  return v3;
}

- (void)setRemoteHandle:(CXHandle *)remoteHandle
{
  v5 = remoteHandle;
  if (v5)
  {
    v4 = [[CXMember alloc] initWithHandle:v5];
    [(CXCallUpdate *)self setRemoteMember:v4];
  }

  else
  {
    [(CXCallUpdate *)self setRemoteMember:0];
  }
}

- (CXSandboxExtendedURL)localizedCallerImageURL
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_localizedCallerImageURL;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (void)setLocalizedCallerImageURL:(id)a3
{
  v10 = a3;
  if (v10)
  {
    v5 = [(CXSandboxExtendedURL *)v10 URL];
    v6 = [v5 isFileURL];

    if ((v6 & 1) == 0)
    {
      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D940];
      v9 = NSStringFromSelector(sel_localizedCallerImageURL);
      [v7 raise:v8 format:{@"%s: parameter '%@' must be a file URL", "-[CXCallUpdate setLocalizedCallerImageURL:]", v9}];
    }
  }

  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_localizedCallerImageURL != v10)
  {
    *&self->_hasSet |= 0x10uLL;
    objc_storeStrong(&self->_localizedCallerImageURL, a3);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)conversation
{
  os_unfair_lock_lock(&self->_accessorLock);
  conversation = self->_conversation;
  os_unfair_lock_unlock(&self->_accessorLock);
  return conversation;
}

- (void)setConversation:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_conversation != v3)
  {
    *&self->_hasSet |= 0x1000000000000000uLL;
    self->_conversation = v3;
    if (v3)
    {
      *(&self->_hasSet + 2) |= 0x80000u;
      self->_isSharePlayCapable = 1;
    }
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setAccount:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 1uLL;
  v5 = [v4 copy];

  account = self->_account;
  self->_account = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (CXParticipant)activeRemoteParticipant
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_activeRemoteParticipant;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (void)setActiveRemoteParticipant:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 2uLL;
  activeRemoteParticipant = self->_activeRemoteParticipant;
  self->_activeRemoteParticipant = v4;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setRemoteMember:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 4uLL;
  remoteMember = self->_remoteMember;
  self->_remoteMember = v4;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setLocalizedCallerName:(NSString *)localizedCallerName
{
  v4 = localizedCallerName;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 8uLL;
  v5 = [(NSString *)v4 copy];

  v6 = self->_localizedCallerName;
  self->_localizedCallerName = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)emergency
{
  os_unfair_lock_lock(&self->_accessorLock);
  emergency = self->_emergency;
  os_unfair_lock_unlock(&self->_accessorLock);
  return emergency;
}

- (void)setEmergency:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x20uLL;
  self->_emergency = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)failureExpected
{
  os_unfair_lock_lock(&self->_accessorLock);
  failureExpected = self->_failureExpected;
  os_unfair_lock_unlock(&self->_accessorLock);
  return failureExpected;
}

- (void)setFailureExpected:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x40uLL;
  self->_failureExpected = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsEmergencyFallback:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x80uLL;
  self->_supportsEmergencyFallback = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)usingBaseband
{
  os_unfair_lock_lock(&self->_accessorLock);
  usingBaseband = self->_usingBaseband;
  os_unfair_lock_unlock(&self->_accessorLock);
  return usingBaseband;
}

- (void)setUsingBaseband:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x100uLL;
  self->_usingBaseband = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)blocked
{
  os_unfair_lock_lock(&self->_accessorLock);
  blocked = self->_blocked;
  os_unfair_lock_unlock(&self->_accessorLock);
  return blocked;
}

- (void)setBlocked:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x200uLL;
  self->_blocked = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setTTYType:(int64_t)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x400uLL;
  self->_ttyType = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setBluetoothAudioFormat:(int64_t)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 4u;
  self->_bluetoothAudioFormat = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setMayRequireBreakBeforeMake:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x1000uLL;
  self->_mayRequireBreakBeforeMake = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)hasVideo
{
  os_unfair_lock_lock(&self->_accessorLock);
  hasVideo = self->_hasVideo;
  os_unfair_lock_unlock(&self->_accessorLock);
  return hasVideo;
}

- (void)setHasVideo:(BOOL)hasVideo
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x2000uLL;
  self->_hasVideo = hasVideo;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)isUpgradeToVideo
{
  os_unfair_lock_lock(&self->_accessorLock);
  isUpgradeToVideo = self->_isUpgradeToVideo;
  os_unfair_lock_unlock(&self->_accessorLock);
  return isUpgradeToVideo;
}

- (void)setIsUpgradeToVideo:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x4000uLL;
  self->_isUpgradeToVideo = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setAudioCategory:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x8000uLL;
  v5 = [v4 copy];

  audioCategory = self->_audioCategory;
  self->_audioCategory = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setAudioMode:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x10000uLL;
  v5 = [v4 copy];

  audioMode = self->_audioMode;
  self->_audioMode = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setAudioInterruptionProvider:(int64_t)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x20000uLL;
  self->_audioInterruptionProvider = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setAudioInterruptionOperationMode:(int64_t)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x40000uLL;
  self->_audioInterruptionOperationMode = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setVerificationStatus:(int64_t)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x80000uLL;
  self->_verificationStatus = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setPriority:(int64_t)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x100000uLL;
  self->_priority = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setRequiresInCallSounds:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x200000uLL;
  self->_requiresInCallSounds = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setInCallSoundRegion:(int64_t)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x400000uLL;
  self->_inCallSoundRegion = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsHolding:(BOOL)supportsHolding
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x800000uLL;
  self->_supportsHolding = supportsHolding;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsGrouping:(BOOL)supportsGrouping
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x1000000uLL;
  self->_supportsGrouping = supportsGrouping;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsUngrouping:(BOOL)supportsUngrouping
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x2000000uLL;
  self->_supportsUngrouping = supportsUngrouping;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsDTMF:(BOOL)supportsDTMF
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x4000000uLL;
  self->_supportsDTMF = supportsDTMF;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsDTMFUpdates:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x8000000uLL;
  self->_supportsDTMFUpdates = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)supportsSharePlay
{
  os_unfair_lock_lock(&self->_accessorLock);
  supportsSharePlay = self->_supportsSharePlay;
  os_unfair_lock_unlock(&self->_accessorLock);
  return supportsSharePlay;
}

- (void)setSupportsSharePlay:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x10000000uLL;
  self->_supportsSharePlay = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)supportsScreenShare
{
  os_unfair_lock_lock(&self->_accessorLock);
  supportsScreenShare = self->_supportsScreenShare;
  os_unfair_lock_unlock(&self->_accessorLock);
  return supportsScreenShare;
}

- (void)setSupportsScreenShare:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x20000000uLL;
  self->_supportsScreenShare = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsUnambiguousMultiPartyState:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x40000000uLL;
  self->_supportsUnambiguousMultiPartyState = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsAddCall:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x80000000uLL;
  self->_supportsAddCall = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsSendingToVoicemail:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x100000000uLL;
  self->_supportsSendingToVoicemail = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsRecording:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x200000000uLL;
  self->_supportsRecording = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setIsUnderlyingLinksConnected:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x400000000uLL;
  self->_isUnderlyingLinksConnected = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsScreening:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x8000u;
  self->_supportsScreening = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsRecents:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x10000u;
  self->_supportsRecents = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setVideoStreamToken:(int64_t)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x800000000uLL;
  self->_videoStreamToken = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setCallTokens:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x1000000000uLL;
  callTokens = self->_callTokens;
  self->_callTokens = v4;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setCommTrustScore:(int)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x400000u;
  self->_commTrustScore = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)specialUnknown
{
  os_unfair_lock_lock(&self->_accessorLock);
  specialUnknown = self->_specialUnknown;
  os_unfair_lock_unlock(&self->_accessorLock);
  return specialUnknown;
}

- (void)setSpecialUnknown:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x800000u;
  self->_specialUnknown = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setAnnounceProviderIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x2000000000uLL;
  v5 = [v4 copy];

  announceProviderIdentifier = self->_announceProviderIdentifier;
  self->_announceProviderIdentifier = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (CXHandle)initiator
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_initiator;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (void)setInitiator:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x4000000000uLL;
  v5 = [v4 copy];

  initiator = self->_initiator;
  self->_initiator = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (NSString)crossDeviceIdentifier
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_crossDeviceIdentifier;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (void)setCrossDeviceIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x8000000000uLL;
  v5 = [v4 copy];

  crossDeviceIdentifier = self->_crossDeviceIdentifier;
  self->_crossDeviceIdentifier = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setISOCountryCode:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x10000000000uLL;
  v5 = [v4 copy];

  ISOCountryCode = self->_ISOCountryCode;
  self->_ISOCountryCode = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setLocalSenderIdentityUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x20000000000uLL;
  v5 = [v4 copy];

  localSenderIdentityUUID = self->_localSenderIdentityUUID;
  self->_localSenderIdentityUUID = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setLocalSenderIdentityAccountUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x40000000000uLL;
  v5 = [v4 copy];

  localSenderIdentityAccountUUID = self->_localSenderIdentityAccountUUID;
  self->_localSenderIdentityAccountUUID = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setLocalMemberHandleValue:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x80000000000uLL;
  v5 = [v4 copy];

  localMemberHandleValue = self->_localMemberHandleValue;
  self->_localMemberHandleValue = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (NSString)localSenderSubscriptionIdentifier
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_localSenderSubscriptionIdentifier;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (void)setLocalSenderSubscriptionIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x100000000000uLL;
  v5 = [v4 copy];

  localSenderSubscriptionIdentifier = self->_localSenderSubscriptionIdentifier;
  self->_localSenderSubscriptionIdentifier = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setParticipantGroupUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x200000000000uLL;
  v5 = [v4 copy];

  participantGroupUUID = self->_participantGroupUUID;
  self->_participantGroupUUID = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setRemoteParticipantHandles:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x400000000000uLL;
  v5 = [v4 copy];

  remoteParticipantHandles = self->_remoteParticipantHandles;
  self->_remoteParticipantHandles = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (NSSet)otherInvitedHandles
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_otherInvitedHandles;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (void)setOtherInvitedHandles:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x800000000000uLL;
  v5 = [v4 copy];

  otherInvitedHandles = self->_otherInvitedHandles;
  self->_otherInvitedHandles = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setActiveRemoteParticipantHandles:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x1000000000000uLL;
  v5 = [v4 copy];

  activeRemoteParticipantHandles = self->_activeRemoteParticipantHandles;
  self->_activeRemoteParticipantHandles = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (CXHandoffContext)handoffContext
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_handoffContext;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (void)setHandoffContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x2000000000000uLL;
  handoffContext = self->_handoffContext;
  self->_handoffContext = v4;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setScreenShareAttributes:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x4000000000000uLL;
  screenShareAttributes = self->_screenShareAttributes;
  self->_screenShareAttributes = v4;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setScreenSharingIntention:(int64_t)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x20000u;
  self->_screenSharingIntention = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x8000000000000uLL;
  v5 = [v4 copy];

  context = self->_context;
  self->_context = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)prefersExclusiveAccessToCellularNetwork
{
  os_unfair_lock_lock(&self->_accessorLock);
  prefersExclusiveAccessToCellularNetwork = self->_prefersExclusiveAccessToCellularNetwork;
  os_unfair_lock_unlock(&self->_accessorLock);
  return prefersExclusiveAccessToCellularNetwork;
}

- (void)setPrefersExclusiveAccessToCellularNetwork:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x10000000000000uLL;
  self->_prefersExclusiveAccessToCellularNetwork = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsTTYWithVoice:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x800uLL;
  self->_supportsTTYWithVoice = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)remoteUplinkMuted
{
  os_unfair_lock_lock(&self->_accessorLock);
  remoteUplinkMuted = self->_remoteUplinkMuted;
  os_unfair_lock_unlock(&self->_accessorLock);
  return remoteUplinkMuted;
}

- (void)setRemoteUplinkMuted:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x20000000000000uLL;
  self->_remoteUplinkMuted = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setShouldSuppressInCallUI:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x40000000000000uLL;
  self->_shouldSuppressInCallUI = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)startCallMuted
{
  os_unfair_lock_lock(&self->_accessorLock);
  startCallMuted = self->_startCallMuted;
  os_unfair_lock_unlock(&self->_accessorLock);
  return startCallMuted;
}

- (void)startCallMuted:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x2000000u;
  self->_startCallMuted = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setLaunchInBackground:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x80000000000000uLL;
  self->_launchInBackground = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)requiresAuthentication
{
  os_unfair_lock_lock(&self->_accessorLock);
  requiresAuthentication = self->_requiresAuthentication;
  os_unfair_lock_unlock(&self->_accessorLock);
  return requiresAuthentication;
}

- (void)setRequiresAuthentication:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x100000000000000uLL;
  self->_requiresAuthentication = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)mutuallyExclusiveCall
{
  os_unfair_lock_lock(&self->_accessorLock);
  mutuallyExclusiveCall = self->_mutuallyExclusiveCall;
  os_unfair_lock_unlock(&self->_accessorLock);
  return mutuallyExclusiveCall;
}

- (void)setMutuallyExclusiveCall:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x200000000000000uLL;
  self->_mutuallyExclusiveCall = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setJunkConfidence:(int64_t)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x400000000000000uLL;
  self->_junkConfidence = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (int64_t)callSubType
{
  os_unfair_lock_lock(&self->_accessorLock);
  callSubType = self->_callSubType;
  os_unfair_lock_unlock(&self->_accessorLock);
  return callSubType;
}

- (void)setCallSubType:(int64_t)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x4000u;
  self->_callSubType = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setIdentificationCategory:(int64_t)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x800000000000000uLL;
  self->_identificationCategory = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setMixesVoiceWithMedia:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x2000000000000000uLL;
  self->_mixesVoiceWithMedia = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)prefersToPlayDuringWombat
{
  os_unfair_lock_lock(&self->_accessorLock);
  prefersToPlayDuringWombat = self->_prefersToPlayDuringWombat;
  os_unfair_lock_unlock(&self->_accessorLock);
  return prefersToPlayDuringWombat;
}

- (void)setPrefersToPlayDuringWombat:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x4000000000000000uLL;
  self->_prefersToPlayDuringWombat = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)mediaPlaybackOnExternalDevice
{
  os_unfair_lock_lock(&self->_accessorLock);
  mediaPlaybackOnExternalDevice = self->_mediaPlaybackOnExternalDevice;
  os_unfair_lock_unlock(&self->_accessorLock);
  return mediaPlaybackOnExternalDevice;
}

- (void)setMediaPlaybackOnExternalDevice:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x8000000000000000;
  self->_mediaPlaybackOnExternalDevice = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)oneToOneModeEnabled
{
  os_unfair_lock_lock(&self->_accessorLock);
  oneToOneModeEnabled = self->_oneToOneModeEnabled;
  os_unfair_lock_unlock(&self->_accessorLock);
  return oneToOneModeEnabled;
}

- (void)setOneToOneModeEnabled:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 1u;
  self->_oneToOneModeEnabled = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)sharingScreen
{
  os_unfair_lock_lock(&self->_accessorLock);
  sharingScreen = self->_sharingScreen;
  os_unfair_lock_unlock(&self->_accessorLock);
  return sharingScreen;
}

- (void)setSharingScreen:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 2u;
  self->_sharingScreen = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setIgnoresBluetoothDeviceUID:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 8u;
  self->_ignoresBluetoothDeviceUID = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setServiceStatus:(int64_t)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x10u;
  self->_serviceStatus = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setTransmissionMode:(int64_t)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x20u;
  self->_transmissionMode = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setAccessoryButtonEventsEnabled:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x40u;
  self->_accessoryButtonEventsEnabled = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)sendingVideo
{
  os_unfair_lock_lock(&self->_accessorLock);
  sendingVideo = self->_sendingVideo;
  os_unfair_lock_unlock(&self->_accessorLock);
  return sendingVideo;
}

- (void)setSendingVideo:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x80u;
  self->_sendingVideo = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setIsReRing:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x1000u;
  self->_isReRing = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)suppressRingtone
{
  os_unfair_lock_lock(&self->_accessorLock);
  suppressRingtone = self->_suppressRingtone;
  os_unfair_lock_unlock(&self->_accessorLock);
  return suppressRingtone;
}

- (void)setSuppressRingtone:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x2000u;
  self->_suppressRingtone = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setHasBeenRedirected:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x100u;
  self->_hasBeenRedirected = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)isKnownCaller
{
  os_unfair_lock_lock(&self->_accessorLock);
  isKnownCaller = self->_isKnownCaller;
  os_unfair_lock_unlock(&self->_accessorLock);
  return isKnownCaller;
}

- (void)setIsKnownCaller:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x200u;
  self->_isKnownCaller = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (int)filteredOutReason
{
  os_unfair_lock_lock(&self->_accessorLock);
  filteredOutReason = self->_filteredOutReason;
  os_unfair_lock_unlock(&self->_accessorLock);
  return filteredOutReason;
}

- (void)setFilteredOutReason:(int)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x400u;
  self->_filteredOutReason = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setScreenSharingType:(int64_t)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x40000u;
  self->_screenSharingType = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)isSharePlayCapable
{
  os_unfair_lock_lock(&self->_accessorLock);
  isSharePlayCapable = self->_isSharePlayCapable;
  os_unfair_lock_unlock(&self->_accessorLock);
  return isSharePlayCapable;
}

- (void)setIsSharePlayCapable:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x80000u;
  self->_isSharePlayCapable = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)anyRemoteSupportsRequestToScreenShare
{
  os_unfair_lock_lock(&self->_accessorLock);
  anyRemoteSupportsRequestToScreenShare = self->_anyRemoteSupportsRequestToScreenShare;
  os_unfair_lock_unlock(&self->_accessorLock);
  return anyRemoteSupportsRequestToScreenShare;
}

- (void)setAnyRemoteSupportsRequestToScreenShare:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x100000u;
  self->_anyRemoteSupportsRequestToScreenShare = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setNearbyMode:(int64_t)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x200000u;
  self->_nearbyMode = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (NSUUID)conversationGroupUUID
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_conversationGroupUUID;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (void)setConversationGroupUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x1000000u;
  v5 = [v4 copy];

  conversationGroupUUID = self->_conversationGroupUUID;
  self->_conversationGroupUUID = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)shouldSilentlyRegisterIMAVCall
{
  os_unfair_lock_lock(&self->_accessorLock);
  shouldSilentlyRegisterIMAVCall = self->_shouldSilentlyRegisterIMAVCall;
  os_unfair_lock_unlock(&self->_accessorLock);
  return shouldSilentlyRegisterIMAVCall;
}

- (void)setShouldSilentlyRegisterIMAVCall:(BOOL)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x4000000u;
  self->_shouldSilentlyRegisterIMAVCall = a3;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (CXCallUpdate)updateWithUpdate:(id)a3
{
  v57 = a3;
  if ([v57 hasSet])
  {
    v4 = [v57 account];
    [(CXCallUpdate *)self setAccount:v4];
  }

  if (([v57 hasSet] & 2) != 0)
  {
    v5 = [v57 activeRemoteParticipant];
    [(CXCallUpdate *)self setActiveRemoteParticipant:v5];
  }

  if (([v57 hasSet] & 4) != 0)
  {
    v6 = [v57 remoteMember];
    [(CXCallUpdate *)self setRemoteMember:v6];
  }

  if (([v57 hasSet] & 8) != 0)
  {
    v7 = [v57 localizedCallerName];
    [(CXCallUpdate *)self setLocalizedCallerName:v7];
  }

  if (([v57 hasSet] & 0x10) != 0)
  {
    v8 = [v57 localizedCallerImageURL];
    [(CXCallUpdate *)self setLocalizedCallerImageURL:v8];
  }

  if (([v57 hasSet] & 0x20) != 0)
  {
    -[CXCallUpdate setEmergency:](self, "setEmergency:", [v57 isEmergency]);
  }

  if (([v57 hasSet] & 0x40) != 0)
  {
    -[CXCallUpdate setFailureExpected:](self, "setFailureExpected:", [v57 isFailureExpected]);
  }

  if (([v57 hasSet] & 0x80) != 0)
  {
    -[CXCallUpdate setSupportsEmergencyFallback:](self, "setSupportsEmergencyFallback:", [v57 supportsEmergencyFallback]);
  }

  if (([v57 hasSet] & 0x100) != 0)
  {
    -[CXCallUpdate setUsingBaseband:](self, "setUsingBaseband:", [v57 isUsingBaseband]);
  }

  if (([v57 hasSet] & 0x200) != 0)
  {
    -[CXCallUpdate setBlocked:](self, "setBlocked:", [v57 isBlocked]);
  }

  if (([v57 hasSet] & 0x400) != 0)
  {
    -[CXCallUpdate setTTYType:](self, "setTTYType:", [v57 ttyType]);
  }

  [v57 hasSet];
  if ((v9 & 4) != 0)
  {
    -[CXCallUpdate setBluetoothAudioFormat:](self, "setBluetoothAudioFormat:", [v57 bluetoothAudioFormat]);
  }

  if (([v57 hasSet] & 0x1000) != 0)
  {
    -[CXCallUpdate setMayRequireBreakBeforeMake:](self, "setMayRequireBreakBeforeMake:", [v57 mayRequireBreakBeforeMake]);
  }

  if (([v57 hasSet] & 0x2000) != 0)
  {
    -[CXCallUpdate setHasVideo:](self, "setHasVideo:", [v57 hasVideo]);
  }

  if (([v57 hasSet] & 0x4000) != 0)
  {
    -[CXCallUpdate setIsUpgradeToVideo:](self, "setIsUpgradeToVideo:", [v57 isUpgradeToVideo]);
  }

  if (([v57 hasSet] & 0x8000) != 0)
  {
    v10 = [v57 audioCategory];
    [(CXCallUpdate *)self setAudioCategory:v10];
  }

  if (([v57 hasSet] & 0x10000) != 0)
  {
    v11 = [v57 audioMode];
    [(CXCallUpdate *)self setAudioMode:v11];
  }

  if (([v57 hasSet] & 0x20000) != 0)
  {
    -[CXCallUpdate setAudioInterruptionProvider:](self, "setAudioInterruptionProvider:", [v57 audioInterruptionProvider]);
  }

  if (([v57 hasSet] & 0x40000) != 0)
  {
    -[CXCallUpdate setAudioInterruptionOperationMode:](self, "setAudioInterruptionOperationMode:", [v57 audioInterruptionOperationMode]);
  }

  if (([v57 hasSet] & 0x80000) != 0)
  {
    -[CXCallUpdate setVerificationStatus:](self, "setVerificationStatus:", [v57 verificationStatus]);
  }

  if (([v57 hasSet] & 0x100000) != 0)
  {
    -[CXCallUpdate setPriority:](self, "setPriority:", [v57 priority]);
  }

  if (([v57 hasSet] & 0x200000) != 0)
  {
    -[CXCallUpdate setRequiresInCallSounds:](self, "setRequiresInCallSounds:", [v57 requiresInCallSounds]);
  }

  if (([v57 hasSet] & 0x400000) != 0)
  {
    -[CXCallUpdate setInCallSoundRegion:](self, "setInCallSoundRegion:", [v57 inCallSoundRegion]);
  }

  if (([v57 hasSet] & 0x800000) != 0)
  {
    -[CXCallUpdate setSupportsHolding:](self, "setSupportsHolding:", [v57 supportsHolding]);
  }

  if (([v57 hasSet] & 0x1000000) != 0)
  {
    -[CXCallUpdate setSupportsGrouping:](self, "setSupportsGrouping:", [v57 supportsGrouping]);
  }

  if (([v57 hasSet] & 0x2000000) != 0)
  {
    -[CXCallUpdate setSupportsUngrouping:](self, "setSupportsUngrouping:", [v57 supportsUngrouping]);
  }

  if (([v57 hasSet] & 0x4000000) != 0)
  {
    -[CXCallUpdate setSupportsDTMF:](self, "setSupportsDTMF:", [v57 supportsDTMF]);
  }

  if (([v57 hasSet] & 0x8000000) != 0)
  {
    -[CXCallUpdate setSupportsDTMFUpdates:](self, "setSupportsDTMFUpdates:", [v57 supportsDTMFUpdates]);
  }

  if (([v57 hasSet] & 0x10000000) != 0)
  {
    -[CXCallUpdate setSupportsSharePlay:](self, "setSupportsSharePlay:", [v57 supportsSharePlay]);
  }

  if (([v57 hasSet] & 0x20000000) != 0)
  {
    -[CXCallUpdate setSupportsScreenShare:](self, "setSupportsScreenShare:", [v57 supportsScreenShare]);
  }

  if (([v57 hasSet] & 0x40000000) != 0)
  {
    -[CXCallUpdate setSupportsUnambiguousMultiPartyState:](self, "setSupportsUnambiguousMultiPartyState:", [v57 supportsUnambiguousMultiPartyState]);
  }

  if (([v57 hasSet] & 0x80000000) != 0)
  {
    -[CXCallUpdate setSupportsAddCall:](self, "setSupportsAddCall:", [v57 supportsAddCall]);
  }

  if (([v57 hasSet] & 0x100000000) != 0)
  {
    -[CXCallUpdate setSupportsSendingToVoicemail:](self, "setSupportsSendingToVoicemail:", [v57 supportsSendingToVoicemail]);
  }

  [v57 hasSet];
  if ((v12 & 0x20000) != 0)
  {
    -[CXCallUpdate setScreenSharingIntention:](self, "setScreenSharingIntention:", [v57 screenSharingIntention]);
  }

  if (([v57 hasSet] & 0x200000000) != 0)
  {
    -[CXCallUpdate setSupportsRecording:](self, "setSupportsRecording:", [v57 supportsRecording]);
  }

  if (([v57 hasSet] & 0x400000000) != 0)
  {
    -[CXCallUpdate setIsUnderlyingLinksConnected:](self, "setIsUnderlyingLinksConnected:", [v57 isUnderlyingLinksConnected]);
  }

  [v57 hasSet];
  if (v13 < 0)
  {
    -[CXCallUpdate setSupportsScreening:](self, "setSupportsScreening:", [v57 supportsScreening]);
  }

  [v57 hasSet];
  if ((v14 & 0x10000) != 0)
  {
    -[CXCallUpdate setSupportsRecents:](self, "setSupportsRecents:", [v57 supportsRecents]);
  }

  if (([v57 hasSet] & 0x800000000) != 0)
  {
    -[CXCallUpdate setVideoStreamToken:](self, "setVideoStreamToken:", [v57 videoStreamToken]);
  }

  if (([v57 hasSet] & 0x1000000000) != 0)
  {
    v15 = [v57 callTokens];
    [(CXCallUpdate *)self setCallTokens:v15];
  }

  if (([v57 hasSet] & 0x2000000000) != 0)
  {
    v16 = [v57 announceProviderIdentifier];
    [(CXCallUpdate *)self setAnnounceProviderIdentifier:v16];
  }

  if (([v57 hasSet] & 0x4000000000) != 0)
  {
    v17 = [v57 initiator];
    [(CXCallUpdate *)self setInitiator:v17];
  }

  if (([v57 hasSet] & 0x8000000000) != 0)
  {
    v18 = [v57 crossDeviceIdentifier];
    [(CXCallUpdate *)self setCrossDeviceIdentifier:v18];
  }

  if (([v57 hasSet] & 0x10000000000) != 0)
  {
    v19 = [v57 ISOCountryCode];
    [(CXCallUpdate *)self setISOCountryCode:v19];
  }

  if (([v57 hasSet] & 0x20000000000) != 0)
  {
    v20 = [v57 localSenderIdentityUUID];
    [(CXCallUpdate *)self setLocalSenderIdentityUUID:v20];
  }

  if (([v57 hasSet] & 0x40000000000) != 0)
  {
    v21 = [v57 localSenderIdentityAccountUUID];
    [(CXCallUpdate *)self setLocalSenderIdentityAccountUUID:v21];
  }

  if (([v57 hasSet] & 0x80000000000) != 0)
  {
    v22 = [v57 localMemberHandleValue];
    [(CXCallUpdate *)self setLocalMemberHandleValue:v22];
  }

  if (([v57 hasSet] & 0x100000000000) != 0)
  {
    v23 = [v57 localSenderSubscriptionIdentifier];
    [(CXCallUpdate *)self setLocalSenderSubscriptionIdentifier:v23];
  }

  if (([v57 hasSet] & 0x200000000000) != 0)
  {
    v24 = [v57 participantGroupUUID];
    [(CXCallUpdate *)self setParticipantGroupUUID:v24];
  }

  if (([v57 hasSet] & 0x400000000000) != 0)
  {
    v25 = [v57 remoteParticipantHandles];
    [(CXCallUpdate *)self setRemoteParticipantHandles:v25];
  }

  if (([v57 hasSet] & 0x800000000000) != 0)
  {
    v26 = [v57 otherInvitedHandles];
    [(CXCallUpdate *)self setOtherInvitedHandles:v26];
  }

  if (([v57 hasSet] & 0x1000000000000) != 0)
  {
    v27 = [v57 activeRemoteParticipantHandles];
    [(CXCallUpdate *)self setActiveRemoteParticipantHandles:v27];
  }

  if (([v57 hasSet] & 0x2000000000000) != 0)
  {
    v28 = [v57 handoffContext];
    [(CXCallUpdate *)self setHandoffContext:v28];
  }

  if (([v57 hasSet] & 0x4000000000000) != 0)
  {
    v29 = [v57 screenShareAttributes];
    [(CXCallUpdate *)self setScreenShareAttributes:v29];
  }

  if (([v57 hasSet] & 0x8000000000000) != 0)
  {
    v30 = [v57 context];
    [(CXCallUpdate *)self setContext:v30];
  }

  if (([v57 hasSet] & 0x10000000000000) != 0)
  {
    -[CXCallUpdate setPrefersExclusiveAccessToCellularNetwork:](self, "setPrefersExclusiveAccessToCellularNetwork:", [v57 prefersExclusiveAccessToCellularNetwork]);
  }

  if (([v57 hasSet] & 0x800) != 0)
  {
    -[CXCallUpdate setSupportsTTYWithVoice:](self, "setSupportsTTYWithVoice:", [v57 supportsTTYWithVoice]);
  }

  if (([v57 hasSet] & 0x20000000000000) != 0)
  {
    -[CXCallUpdate setRemoteUplinkMuted:](self, "setRemoteUplinkMuted:", [v57 isRemoteUplinkMuted]);
  }

  if (([v57 hasSet] & 0x40000000000000) != 0)
  {
    -[CXCallUpdate setShouldSuppressInCallUI:](self, "setShouldSuppressInCallUI:", [v57 shouldSuppressInCallUI]);
  }

  [v57 hasSet];
  if ((v31 & 0x2000000) != 0)
  {
    -[CXCallUpdate setStartCallMuted:](self, "setStartCallMuted:", [v57 startCallMuted]);
  }

  if (([v57 hasSet] & 0x80000000000000) != 0)
  {
    -[CXCallUpdate setLaunchInBackground:](self, "setLaunchInBackground:", [v57 launchInBackground]);
  }

  if (([v57 hasSet] & 0x100000000000000) != 0)
  {
    -[CXCallUpdate setRequiresAuthentication:](self, "setRequiresAuthentication:", [v57 requiresAuthentication]);
  }

  if (([v57 hasSet] & 0x200000000000000) != 0)
  {
    -[CXCallUpdate setMutuallyExclusiveCall:](self, "setMutuallyExclusiveCall:", [v57 isMutuallyExclusiveCall]);
  }

  if (([v57 hasSet] & 0x400000000000000) != 0)
  {
    -[CXCallUpdate setJunkConfidence:](self, "setJunkConfidence:", [v57 junkConfidence]);
  }

  [v57 hasSet];
  if ((v32 & 0x4000) != 0)
  {
    -[CXCallUpdate setCallSubType:](self, "setCallSubType:", [v57 callSubType]);
  }

  if (([v57 hasSet] & 0x800000000000000) != 0)
  {
    -[CXCallUpdate setIdentificationCategory:](self, "setIdentificationCategory:", [v57 identificationCategory]);
  }

  if (([v57 hasSet] & 0x1000000000000000) != 0)
  {
    -[CXCallUpdate setConversation:](self, "setConversation:", [v57 isConversation]);
  }

  if (([v57 hasSet] & 0x2000000000000000) != 0)
  {
    -[CXCallUpdate setMixesVoiceWithMedia:](self, "setMixesVoiceWithMedia:", [v57 mixesVoiceWithMedia]);
  }

  if (([v57 hasSet] & 0x4000000000000000) != 0)
  {
    -[CXCallUpdate setPrefersToPlayDuringWombat:](self, "setPrefersToPlayDuringWombat:", [v57 prefersToPlayDuringWombat]);
  }

  if ([v57 hasSet] < 0)
  {
    -[CXCallUpdate setMediaPlaybackOnExternalDevice:](self, "setMediaPlaybackOnExternalDevice:", [v57 mediaPlaybackOnExternalDevice]);
  }

  [v57 hasSet];
  if ((v33 & 8) != 0)
  {
    -[CXCallUpdate setIgnoresBluetoothDeviceUID:](self, "setIgnoresBluetoothDeviceUID:", [v57 ignoresBluetoothDeviceUID]);
  }

  [v57 hasSet];
  if ((v34 & 2) != 0)
  {
    -[CXCallUpdate setSharingScreen:](self, "setSharingScreen:", [v57 isSharingScreen]);
  }

  [v57 hasSet];
  if (v35)
  {
    -[CXCallUpdate setOneToOneModeEnabled:](self, "setOneToOneModeEnabled:", [v57 isOneToOneModeEnabled]);
  }

  [v57 hasSet];
  if ((v36 & 0x10) != 0)
  {
    -[CXCallUpdate setServiceStatus:](self, "setServiceStatus:", [v57 serviceStatus]);
  }

  [v57 hasSet];
  if ((v37 & 0x20) != 0)
  {
    -[CXCallUpdate setTransmissionMode:](self, "setTransmissionMode:", [v57 transmissionMode]);
  }

  [v57 hasSet];
  if ((v38 & 0x40) != 0)
  {
    -[CXCallUpdate setAccessoryButtonEventsEnabled:](self, "setAccessoryButtonEventsEnabled:", [v57 accessoryButtonEventsEnabled]);
  }

  [v57 hasSet];
  if (v39 < 0)
  {
    -[CXCallUpdate setSendingVideo:](self, "setSendingVideo:", [v57 isSendingVideo]);
  }

  [v57 hasSet];
  if ((v40 & 0x1000) != 0)
  {
    -[CXCallUpdate setIsReRing:](self, "setIsReRing:", [v57 isReRing]);
  }

  [v57 hasSet];
  if ((v41 & 0x2000) != 0)
  {
    -[CXCallUpdate setSuppressRingtone:](self, "setSuppressRingtone:", [v57 suppressRingtone]);
  }

  [v57 hasSet];
  if ((v42 & 0x100) != 0)
  {
    -[CXCallUpdate setHasBeenRedirected:](self, "setHasBeenRedirected:", [v57 hasBeenRedirected]);
  }

  [v57 hasSet];
  if ((v43 & 0x200) != 0)
  {
    -[CXCallUpdate setIsKnownCaller:](self, "setIsKnownCaller:", [v57 isKnownCaller]);
  }

  [v57 hasSet];
  if ((v44 & 0x400) != 0)
  {
    -[CXCallUpdate setFilteredOutReason:](self, "setFilteredOutReason:", [v57 filteredOutReason]);
  }

  [v57 hasSet];
  if ((v45 & 0x800) != 0)
  {
    v46 = [v57 silencingUserInfo];
    [(CXCallUpdate *)self setSilencingUserInfo:v46];
  }

  [v57 hasSet];
  if ((v47 & 0x40000) != 0)
  {
    -[CXCallUpdate setScreenSharingType:](self, "setScreenSharingType:", [v57 screenSharingType]);
  }

  [v57 hasSet];
  if ((v48 & 0x80000) != 0)
  {
    -[CXCallUpdate setIsSharePlayCapable:](self, "setIsSharePlayCapable:", [v57 isSharePlayCapable]);
  }

  [v57 hasSet];
  if ((v49 & 0x100000) != 0)
  {
    -[CXCallUpdate setAnyRemoteSupportsRequestToScreenShare:](self, "setAnyRemoteSupportsRequestToScreenShare:", [v57 anyRemoteSupportsRequestToScreenShare]);
  }

  [v57 hasSet];
  if ((v50 & 0x200000) != 0)
  {
    -[CXCallUpdate setNearbyMode:](self, "setNearbyMode:", [v57 nearbyMode]);
  }

  [v57 hasSet];
  if ((v51 & 0x400000) != 0)
  {
    -[CXCallUpdate setCommTrustScore:](self, "setCommTrustScore:", [v57 commTrustScore]);
  }

  [v57 hasSet];
  if ((v52 & 0x800000) != 0)
  {
    -[CXCallUpdate setSpecialUnknown:](self, "setSpecialUnknown:", [v57 specialUnknown]);
  }

  [v57 hasSet];
  if ((v53 & 0x1000000) != 0)
  {
    v54 = [v57 conversationGroupUUID];
    [(CXCallUpdate *)self setConversationGroupUUID:v54];
  }

  [v57 hasSet];
  if ((v55 & 0x4000000) != 0)
  {
    -[CXCallUpdate setShouldSilentlyRegisterIMAVCall:](self, "setShouldSilentlyRegisterIMAVCall:", [v57 shouldSilentlyRegisterIMAVCall]);
  }

  return result;
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v16 = a3;
  v6 = [(CXCallUpdate *)self UUID];
  v7 = [v6 copyWithZone:a4];
  [v16 setUUID:v7];

  if (([(CXCallUpdate *)self hasSet]& 4) != 0)
  {
    *(v16 + 51) |= 4uLL;
    v8 = [(CXCallUpdate *)self remoteMember];
    v9 = [v8 copyWithZone:a4];
    [v16 setRemoteMember:v9];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000000000) != 0)
  {
    *(v16 + 51) |= 0x400000000000uLL;
    v10 = [(CXCallUpdate *)self remoteParticipantHandles];
    v11 = [v10 copyWithZone:a4];
    [v16 setRemoteParticipantHandles:v11];
  }

  if (([(CXCallUpdate *)self hasSet]& 8) != 0)
  {
    *(v16 + 51) |= 8uLL;
    v12 = [(CXCallUpdate *)self localizedCallerName];
    v13 = [v12 copyWithZone:a4];
    [v16 setLocalizedCallerName:v13];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000) != 0)
  {
    *(v16 + 51) |= 0x800000uLL;
    [v16 setSupportsHolding:{-[CXCallUpdate supportsHolding](self, "supportsHolding")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000) != 0)
  {
    *(v16 + 51) |= 0x1000000uLL;
    [v16 setSupportsGrouping:{-[CXCallUpdate supportsGrouping](self, "supportsGrouping")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000) != 0)
  {
    *(v16 + 51) |= 0x2000000uLL;
    [v16 setSupportsUngrouping:{-[CXCallUpdate supportsUngrouping](self, "supportsUngrouping")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000) != 0)
  {
    *(v16 + 51) |= 0x4000000uLL;
    [v16 setSupportsDTMF:{-[CXCallUpdate supportsDTMF](self, "supportsDTMF")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000000) != 0)
  {
    *(v16 + 51) |= 0x8000000uLL;
    [v16 setSupportsDTMFUpdates:{-[CXCallUpdate supportsDTMFUpdates](self, "supportsDTMFUpdates")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000000) != 0)
  {
    *(v16 + 51) |= 0x10000000uLL;
    [v16 setSupportsSharePlay:{-[CXCallUpdate supportsSharePlay](self, "supportsSharePlay")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000000) != 0)
  {
    *(v16 + 51) |= 0x20000000uLL;
    [v16 setSupportsScreenShare:{-[CXCallUpdate supportsScreenShare](self, "supportsScreenShare")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000) != 0)
  {
    *(v16 + 51) |= 0x2000uLL;
    [v16 setHasVideo:{-[CXCallUpdate hasVideo](self, "hasVideo")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000) != 0)
  {
    *(v16 + 51) |= 0x4000uLL;
    [v16 setIsUpgradeToVideo:{-[CXCallUpdate isUpgradeToVideo](self, "isUpgradeToVideo")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000000000000) != 0)
  {
    *(v16 + 51) |= 0x100000000000000uLL;
    [v16 setRequiresAuthentication:{-[CXCallUpdate requiresAuthentication](self, "requiresAuthentication")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v14 & 0x400000) != 0)
  {
    *(v16 + 104) |= 0x400000u;
    [v16 setCommTrustScore:{-[CXCallUpdate commTrustScore](self, "commTrustScore")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v15 & 0x800000) != 0)
  {
    *(v16 + 104) |= 0x800000u;
    [v16 setSpecialUnknown:{-[CXCallUpdate specialUnknown](self, "specialUnknown")}];
  }
}

- (id)sanitizedCopyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(CXCallUpdate *)self updateSanitizedCopy:v5 withZone:a3];

  return v5;
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v70 = a3;
  [CXCallUpdate updateSanitizedCopy:"updateSanitizedCopy:withZone:" withZone:?];
  if (([(CXCallUpdate *)self hasSet]& 1) != 0)
  {
    v70[51] |= 1uLL;
    v6 = [(CXCallUpdate *)self account];
    [v70 setAccount:v6];
  }

  if (([(CXCallUpdate *)self hasSet]& 2) != 0)
  {
    v70[51] |= 2uLL;
    v7 = [(CXCallUpdate *)self activeRemoteParticipant];
    [v70 setActiveRemoteParticipant:v7];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20) != 0)
  {
    v70[51] |= 0x20uLL;
    [v70 setEmergency:{-[CXCallUpdate isEmergency](self, "isEmergency")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40) != 0)
  {
    v70[51] |= 0x40uLL;
    [v70 setFailureExpected:{-[CXCallUpdate isFailureExpected](self, "isFailureExpected")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80) != 0)
  {
    v70[51] |= 0x80uLL;
    [v70 setSupportsEmergencyFallback:{-[CXCallUpdate supportsEmergencyFallback](self, "supportsEmergencyFallback")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100) != 0)
  {
    v70[51] |= 0x100uLL;
    [v70 setUsingBaseband:{-[CXCallUpdate isUsingBaseband](self, "isUsingBaseband")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200) != 0)
  {
    v70[51] |= 0x200uLL;
    [v70 setBlocked:{-[CXCallUpdate isBlocked](self, "isBlocked")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400) != 0)
  {
    v70[51] |= 0x400uLL;
    [v70 setTTYType:{-[CXCallUpdate ttyType](self, "ttyType")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v8 & 4) != 0)
  {
    *(v70 + 104) |= 4u;
    [v70 setBluetoothAudioFormat:-[CXCallUpdate bluetoothAudioFormat](self, "bluetoothAudioFormat")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000) != 0)
  {
    v70[51] |= 0x1000uLL;
    [v70 setMayRequireBreakBeforeMake:{-[CXCallUpdate mayRequireBreakBeforeMake](self, "mayRequireBreakBeforeMake")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000) != 0)
  {
    v70[51] |= 0x8000uLL;
    v9 = [(CXCallUpdate *)self audioCategory];
    v10 = [v9 copyWithZone:a4];
    [v70 setAudioCategory:v10];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000) != 0)
  {
    v70[51] |= 0x10000uLL;
    v11 = [(CXCallUpdate *)self audioMode];
    v12 = [v11 copyWithZone:a4];
    [v70 setAudioMode:v12];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000) != 0)
  {
    v70[51] |= 0x20000uLL;
    [v70 setAudioInterruptionProvider:{-[CXCallUpdate audioInterruptionProvider](self, "audioInterruptionProvider")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000) != 0)
  {
    v70[51] |= 0x40000uLL;
    [v70 setAudioInterruptionOperationMode:{-[CXCallUpdate audioInterruptionOperationMode](self, "audioInterruptionOperationMode")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000) != 0)
  {
    v70[51] |= 0x80000uLL;
    [v70 setVerificationStatus:{-[CXCallUpdate verificationStatus](self, "verificationStatus")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000) != 0)
  {
    v70[51] |= 0x4000uLL;
    [v70 setIsUpgradeToVideo:{-[CXCallUpdate isUpgradeToVideo](self, "isUpgradeToVideo")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000) != 0)
  {
    v70[51] |= 0x100000uLL;
    [v70 setPriority:{-[CXCallUpdate priority](self, "priority")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000) != 0)
  {
    v70[51] |= 0x200000uLL;
    [v70 setRequiresInCallSounds:{-[CXCallUpdate requiresInCallSounds](self, "requiresInCallSounds")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000) != 0)
  {
    v70[51] |= 0x400000uLL;
    [v70 setInCallSoundRegion:{-[CXCallUpdate inCallSoundRegion](self, "inCallSoundRegion")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000000) != 0)
  {
    v70[51] |= 0x40000000uLL;
    [v70 setSupportsUnambiguousMultiPartyState:{-[CXCallUpdate supportsUnambiguousMultiPartyState](self, "supportsUnambiguousMultiPartyState")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000000) != 0)
  {
    v70[51] |= 0x80000000uLL;
    [v70 setSupportsAddCall:{-[CXCallUpdate supportsAddCall](self, "supportsAddCall")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000000) != 0)
  {
    v70[51] |= 0x100000000uLL;
    [v70 setSupportsSendingToVoicemail:{-[CXCallUpdate supportsSendingToVoicemail](self, "supportsSendingToVoicemail")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000000) != 0)
  {
    v70[51] |= 0x200000000uLL;
    [v70 setSupportsRecording:{-[CXCallUpdate supportsRecording](self, "supportsRecording")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000000) != 0)
  {
    v70[51] |= 0x400000000uLL;
    [v70 setIsUnderlyingLinksConnected:{-[CXCallUpdate isUnderlyingLinksConnected](self, "isUnderlyingLinksConnected")}];
  }

  [(CXCallUpdate *)self hasSet];
  if (v13 < 0)
  {
    *(v70 + 104) |= 0x8000u;
    [v70 setSupportsScreening:{-[CXCallUpdate supportsScreening](self, "supportsScreening")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v14 & 0x10000) != 0)
  {
    *(v70 + 104) |= 0x10000u;
    [v70 setSupportsRecents:{-[CXCallUpdate supportsRecents](self, "supportsRecents")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000000) != 0)
  {
    v70[51] |= 0x800000000uLL;
    [v70 setVideoStreamToken:{-[CXCallUpdate videoStreamToken](self, "videoStreamToken")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000000) != 0)
  {
    v70[51] |= 0x1000000000uLL;
    v15 = [(CXCallUpdate *)self callTokens];
    [v70 setCallTokens:v15];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000000) != 0)
  {
    v70[51] |= 0x2000000000uLL;
    v16 = [(CXCallUpdate *)self announceProviderIdentifier];
    v17 = [v16 copyWithZone:a4];
    [v70 setAnnounceProviderIdentifier:v17];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000000) != 0)
  {
    v70[51] |= 0x4000000000uLL;
    v18 = [(CXCallUpdate *)self initiator];
    v19 = [v18 copyWithZone:a4];
    [v70 setInitiator:v19];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000000000) != 0)
  {
    v70[51] |= 0x8000000000uLL;
    v20 = [(CXCallUpdate *)self crossDeviceIdentifier];
    v21 = [v20 copyWithZone:a4];
    [v70 setCrossDeviceIdentifier:v21];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000000000) != 0)
  {
    v70[51] |= 0x10000000000uLL;
    v22 = [(CXCallUpdate *)self ISOCountryCode];
    v23 = [v22 copyWithZone:a4];
    [v70 setISOCountryCode:v23];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10) != 0)
  {
    v70[51] |= 0x10uLL;
    v24 = [(CXCallUpdate *)self localizedCallerImageURL];
    v25 = [v24 copyWithZone:a4];
    [v70 setLocalizedCallerImageURL:v25];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000000000) != 0)
  {
    v70[51] |= 0x20000000000uLL;
    v26 = [(CXCallUpdate *)self localSenderIdentityUUID];
    v27 = [v26 copyWithZone:a4];
    [v70 setLocalSenderIdentityUUID:v27];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000000000) != 0)
  {
    v70[51] |= 0x40000000000uLL;
    v28 = [(CXCallUpdate *)self localSenderIdentityAccountUUID];
    v29 = [v28 copyWithZone:a4];
    [v70 setLocalSenderIdentityAccountUUID:v29];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000000000) != 0)
  {
    v70[51] |= 0x80000000000uLL;
    v30 = [(CXCallUpdate *)self localMemberHandleValue];
    v31 = [v30 copyWithZone:a4];
    [v70 setLocalMemberHandleValue:v31];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000000000) != 0)
  {
    v70[51] |= 0x100000000000uLL;
    v32 = [(CXCallUpdate *)self localSenderSubscriptionIdentifier];
    v33 = [v32 copyWithZone:a4];
    [v70 setLocalSenderSubscriptionIdentifier:v33];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000000000) != 0)
  {
    v70[51] |= 0x200000000000uLL;
    v34 = [(CXCallUpdate *)self participantGroupUUID];
    v35 = [v34 copyWithZone:a4];
    [v70 setParticipantGroupUUID:v35];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000000000) != 0)
  {
    v70[51] |= 0x400000000000uLL;
    v36 = [(CXCallUpdate *)self remoteParticipantHandles];
    v37 = [v36 copyWithZone:a4];
    [v70 setRemoteParticipantHandles:v37];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000000000) != 0)
  {
    v70[51] |= 0x800000000000uLL;
    v38 = [(CXCallUpdate *)self otherInvitedHandles];
    v39 = [v38 copyWithZone:a4];
    [v70 setOtherInvitedHandles:v39];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000000000) != 0)
  {
    v70[51] |= 0x1000000000000uLL;
    v40 = [(CXCallUpdate *)self activeRemoteParticipantHandles];
    v41 = [v40 copyWithZone:a4];
    [v70 setActiveRemoteParticipantHandles:v41];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000000000) != 0)
  {
    v70[51] |= 0x2000000000000uLL;
    v42 = [(CXCallUpdate *)self handoffContext];
    [v70 setHandoffContext:v42];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000000000) != 0)
  {
    v70[51] |= 0x4000000000000uLL;
    v43 = [(CXCallUpdate *)self screenShareAttributes];
    [v70 setScreenShareAttributes:v43];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000000000000) != 0)
  {
    v70[51] |= 0x8000000000000uLL;
    v44 = [(CXCallUpdate *)self context];
    v45 = [v44 copyWithZone:a4];
    [v70 setContext:v45];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000000000000) != 0)
  {
    v70[51] |= 0x10000000000000uLL;
    [v70 setPrefersExclusiveAccessToCellularNetwork:{-[CXCallUpdate prefersExclusiveAccessToCellularNetwork](self, "prefersExclusiveAccessToCellularNetwork")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800) != 0)
  {
    v70[51] |= 0x800uLL;
    [v70 setSupportsTTYWithVoice:{-[CXCallUpdate supportsTTYWithVoice](self, "supportsTTYWithVoice")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000000000000) != 0)
  {
    v70[51] |= 0x20000000000000uLL;
    [v70 setRemoteUplinkMuted:{-[CXCallUpdate isRemoteUplinkMuted](self, "isRemoteUplinkMuted")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000000000000) != 0)
  {
    v70[51] |= 0x40000000000000uLL;
    [v70 setShouldSuppressInCallUI:{-[CXCallUpdate shouldSuppressInCallUI](self, "shouldSuppressInCallUI")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v46 & 0x2000000) != 0)
  {
    *(v70 + 104) |= 0x2000000u;
    [v70 setStartCallMuted:{-[CXCallUpdate startCallMuted](self, "startCallMuted")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000000000000) != 0)
  {
    v70[51] |= 0x80000000000000uLL;
    [v70 setLaunchInBackground:{-[CXCallUpdate launchInBackground](self, "launchInBackground")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000000000000) != 0)
  {
    v70[51] |= 0x100000000000000uLL;
    [v70 setRequiresAuthentication:{-[CXCallUpdate requiresAuthentication](self, "requiresAuthentication")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000000000000) != 0)
  {
    v70[51] |= 0x200000000000000uLL;
    [v70 setMutuallyExclusiveCall:{-[CXCallUpdate isMutuallyExclusiveCall](self, "isMutuallyExclusiveCall")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000000000000) != 0)
  {
    v70[51] |= 0x400000000000000uLL;
    [v70 setJunkConfidence:{-[CXCallUpdate junkConfidence](self, "junkConfidence")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v47 & 0x4000) != 0)
  {
    *(v70 + 104) |= 0x4000u;
    [v70 setCallSubType:{-[CXCallUpdate callSubType](self, "callSubType")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000000000000) != 0)
  {
    v70[51] |= 0x800000000000000uLL;
    [v70 setIdentificationCategory:{-[CXCallUpdate identificationCategory](self, "identificationCategory")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000000000000) != 0)
  {
    v70[51] |= 0x1000000000000000uLL;
    [v70 setConversation:{-[CXCallUpdate isConversation](self, "isConversation")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000000000000) != 0)
  {
    v70[51] |= 0x2000000000000000uLL;
    [v70 setMixesVoiceWithMedia:{-[CXCallUpdate mixesVoiceWithMedia](self, "mixesVoiceWithMedia")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000000000000) != 0)
  {
    v70[51] |= 0x4000000000000000uLL;
    [v70 setPrefersToPlayDuringWombat:{-[CXCallUpdate prefersToPlayDuringWombat](self, "prefersToPlayDuringWombat")}];
  }

  if ([(CXCallUpdate *)self hasSet]< 0)
  {
    v70[51] |= 0x8000000000000000;
    [v70 setMediaPlaybackOnExternalDevice:{-[CXCallUpdate mediaPlaybackOnExternalDevice](self, "mediaPlaybackOnExternalDevice")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v48 & 8) != 0)
  {
    *(v70 + 104) |= 8u;
    [v70 setIgnoresBluetoothDeviceUID:{-[CXCallUpdate ignoresBluetoothDeviceUID](self, "ignoresBluetoothDeviceUID")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v49 & 2) != 0)
  {
    *(v70 + 104) |= 2u;
    [v70 setSharingScreen:{-[CXCallUpdate isSharingScreen](self, "isSharingScreen")}];
  }

  [(CXCallUpdate *)self hasSet];
  if (v50)
  {
    *(v70 + 104) |= 1u;
    [v70 setOneToOneModeEnabled:{-[CXCallUpdate isOneToOneModeEnabled](self, "isOneToOneModeEnabled")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v51 & 0x10) != 0)
  {
    *(v70 + 104) |= 0x10u;
    [v70 setServiceStatus:{-[CXCallUpdate serviceStatus](self, "serviceStatus")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v52 & 0x20) != 0)
  {
    *(v70 + 104) |= 0x20u;
    [v70 setTransmissionMode:{-[CXCallUpdate transmissionMode](self, "transmissionMode")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v53 & 0x40) != 0)
  {
    *(v70 + 104) |= 0x40u;
    [v70 setAccessoryButtonEventsEnabled:{-[CXCallUpdate accessoryButtonEventsEnabled](self, "accessoryButtonEventsEnabled")}];
  }

  [(CXCallUpdate *)self hasSet];
  if (v54 < 0)
  {
    *(v70 + 104) |= 0x80u;
    [v70 setSendingVideo:{-[CXCallUpdate isSendingVideo](self, "isSendingVideo")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v55 & 0x1000) != 0)
  {
    *(v70 + 104) |= 0x1000u;
    [v70 setIsReRing:{-[CXCallUpdate isReRing](self, "isReRing")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v56 & 0x2000) != 0)
  {
    *(v70 + 104) |= 0x2000u;
    [v70 setSuppressRingtone:{-[CXCallUpdate suppressRingtone](self, "suppressRingtone")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v57 & 0x100) != 0)
  {
    *(v70 + 104) |= 0x100u;
    [v70 setHasBeenRedirected:{-[CXCallUpdate hasBeenRedirected](self, "hasBeenRedirected")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v58 & 0x200) != 0)
  {
    *(v70 + 104) |= 0x200u;
    [v70 setIsKnownCaller:{-[CXCallUpdate isKnownCaller](self, "isKnownCaller")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v59 & 0x400) != 0)
  {
    *(v70 + 104) |= 0x400u;
    [v70 setFilteredOutReason:{-[CXCallUpdate filteredOutReason](self, "filteredOutReason")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v60 & 0x800) != 0)
  {
    *(v70 + 104) |= 0x800u;
    v61 = [(CXCallUpdate *)self silencingUserInfo];
    [v70 setSilencingUserInfo:v61];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v62 & 0x20000) != 0)
  {
    *(v70 + 104) |= 0x20000u;
    [v70 setScreenSharingIntention:{-[CXCallUpdate screenSharingIntention](self, "screenSharingIntention")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v63 & 0x40000) != 0)
  {
    *(v70 + 104) |= 0x40000u;
    [v70 setScreenSharingType:{-[CXCallUpdate screenSharingType](self, "screenSharingType")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v64 & 0x80000) != 0)
  {
    *(v70 + 104) |= 0x80000u;
    [v70 setIsSharePlayCapable:{-[CXCallUpdate isSharePlayCapable](self, "isSharePlayCapable")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v65 & 0x100000) != 0)
  {
    *(v70 + 104) |= 0x100000u;
    [v70 setAnyRemoteSupportsRequestToScreenShare:{-[CXCallUpdate anyRemoteSupportsRequestToScreenShare](self, "anyRemoteSupportsRequestToScreenShare")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v66 & 0x200000) != 0)
  {
    *(v70 + 104) |= 0x200000u;
    [v70 setNearbyMode:{-[CXCallUpdate nearbyMode](self, "nearbyMode")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v67 & 0x1000000) != 0)
  {
    *(v70 + 104) |= 0x1000000u;
    v68 = [(CXCallUpdate *)self conversationGroupUUID];
    v69 = [v68 copyWithZone:a4];
    [v70 setConversationGroupUUID:v69];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(CXCallUpdate *)self updateCopy:v5 withZone:a3];
  return v5;
}

- (CXCallUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXCallUpdate *)self init];

  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_UUID);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    UUID = v5->_UUID;
    v5->_UUID = v8;

    v132 = 0;
    v10 = v4;
    v11 = NSStringFromSelector(sel_hasSet);
    v12 = [v4 decodeBytesForKey:v11 returnedLength:&v132];

    if (v132 != 12)
    {
      v129 = 0;
      goto LABEL_185;
    }

    v13 = *v12;
    *(&v5->_hasSet + 2) = *(v12 + 8);
    *&v5->_hasSet = v13;
    if (([(CXCallUpdate *)v5 hasSet]& 1) != 0)
    {
      v14 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v15 = [v4 decodeObjectOfClasses:v14 forKey:@"account"];
      account = v5->_account;
      v5->_account = v15;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 2) != 0)
    {
      v17 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v18 = [v4 decodeObjectOfClasses:v17 forKey:@"activeRemoteParticipant"];
      activeRemoteParticipant = v5->_activeRemoteParticipant;
      v5->_activeRemoteParticipant = v18;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 4) != 0)
    {
      v20 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v21 = [v4 decodeObjectOfClasses:v20 forKey:@"remoteMember"];
      remoteMember = v5->_remoteMember;
      v5->_remoteMember = v21;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 8) != 0)
    {
      v23 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v24 = [v4 decodeObjectOfClasses:v23 forKey:@"localizedCallerName"];
      localizedCallerName = v5->_localizedCallerName;
      v5->_localizedCallerName = v24;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x10) != 0)
    {
      v26 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v27 = [v4 decodeObjectOfClasses:v26 forKey:@"localizedCallerImageURL"];
      localizedCallerImageURL = v5->_localizedCallerImageURL;
      v5->_localizedCallerImageURL = v27;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x20) != 0)
    {
      v5->_emergency = [v4 decodeBoolForKey:@"emergency"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x40) != 0)
    {
      v5->_failureExpected = [v4 decodeBoolForKey:@"failureExpected"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x80) != 0)
    {
      v5->_supportsEmergencyFallback = [v4 decodeBoolForKey:@"supportsEmergencyFallback"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x100) != 0)
    {
      v5->_usingBaseband = [v4 decodeBoolForKey:@"usingBaseband"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x200) != 0)
    {
      v5->_blocked = [v4 decodeBoolForKey:@"blocked"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x400) != 0)
    {
      v5->_ttyType = [v4 decodeIntegerForKey:@"ttyType"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v29 & 4) != 0)
    {
      v5->_bluetoothAudioFormat = [v4 decodeIntegerForKey:@"bluetoothAudioFormat"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x1000) != 0)
    {
      v5->_mayRequireBreakBeforeMake = [v4 decodeBoolForKey:@"mayRequireBreakBeforeMake"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x2000) != 0)
    {
      v5->_hasVideo = [v4 decodeBoolForKey:@"hasVideo"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x4000) != 0)
    {
      v5->_isUpgradeToVideo = [v4 decodeBoolForKey:@"isUpgradeToVideo"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x8000) != 0)
    {
      v30 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v31 = [v4 decodeObjectOfClasses:v30 forKey:@"audioCategory"];
      audioCategory = v5->_audioCategory;
      v5->_audioCategory = v31;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x10000) != 0)
    {
      v33 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v34 = [v4 decodeObjectOfClasses:v33 forKey:@"audioMode"];
      audioMode = v5->_audioMode;
      v5->_audioMode = v34;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x20000) != 0)
    {
      v5->_audioInterruptionProvider = [v4 decodeIntegerForKey:@"audioInterruptionProvider"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x40000) != 0)
    {
      v5->_audioInterruptionOperationMode = [v4 decodeIntegerForKey:@"audioInterruptionOperationMode"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x80000) != 0)
    {
      v5->_verificationStatus = [v4 decodeIntegerForKey:@"verificationStatus"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x100000) != 0)
    {
      v5->_priority = [v4 decodeIntegerForKey:@"priority"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x200000) != 0)
    {
      v5->_requiresInCallSounds = [v4 decodeBoolForKey:@"requiresInCallSounds"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x400000) != 0)
    {
      v5->_inCallSoundRegion = [v4 decodeIntegerForKey:@"inCallSoundRegion"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x800000) != 0)
    {
      v5->_supportsHolding = [v4 decodeBoolForKey:@"supportsHolding"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x1000000) != 0)
    {
      v5->_supportsGrouping = [v4 decodeBoolForKey:@"supportsGrouping"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x2000000) != 0)
    {
      v5->_supportsUngrouping = [v4 decodeBoolForKey:@"supportsUngrouping"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x4000000) != 0)
    {
      v5->_supportsDTMF = [v4 decodeBoolForKey:@"supportsDTMF"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x8000000) != 0)
    {
      v5->_supportsDTMFUpdates = [v4 decodeBoolForKey:@"supportsDTMFUpdates"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x10000000) != 0)
    {
      v5->_supportsSharePlay = [v4 decodeBoolForKey:@"supportsSharePlay"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x20000000) != 0)
    {
      v5->_supportsScreenShare = [v4 decodeBoolForKey:@"supportsScreenShare"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x40000000) != 0)
    {
      v5->_supportsUnambiguousMultiPartyState = [v4 decodeBoolForKey:@"supportsUnambiguousMultiPartyState"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x80000000) != 0)
    {
      v5->_supportsAddCall = [v4 decodeBoolForKey:@"supportsAddCall"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x100000000) != 0)
    {
      v5->_supportsSendingToVoicemail = [v4 decodeBoolForKey:@"supportsSendingToVoicemail"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x200000000) != 0)
    {
      v5->_supportsRecording = [v4 decodeBoolForKey:@"supportsRecording"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x400000000) != 0)
    {
      v5->_isUnderlyingLinksConnected = [v4 decodeBoolForKey:@"isUnderlyingLinksConnected"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if (v36 < 0)
    {
      v5->_supportsScreening = [v4 decodeBoolForKey:@"supportsScreening"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v37 & 0x10000) != 0)
    {
      v5->_supportsRecents = [v4 decodeBoolForKey:@"supportsRecents"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x800000000) != 0)
    {
      v5->_videoStreamToken = [v4 decodeIntegerForKey:@"videoStreamToken"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x1000000000) != 0)
    {
      v38 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v39 = [v4 decodeObjectOfClasses:v38 forKey:@"callTokens"];
      callTokens = v5->_callTokens;
      v5->_callTokens = v39;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x2000000000) != 0)
    {
      v41 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v42 = [v4 decodeObjectOfClasses:v41 forKey:@"announceProviderIdentifier"];
      announceProviderIdentifier = v5->_announceProviderIdentifier;
      v5->_announceProviderIdentifier = v42;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x4000000000) != 0)
    {
      v44 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v45 = [v4 decodeObjectOfClasses:v44 forKey:@"initiator"];
      initiator = v5->_initiator;
      v5->_initiator = v45;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x8000000000) != 0)
    {
      v47 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v48 = [v4 decodeObjectOfClasses:v47 forKey:@"crossDeviceIdentifier"];
      crossDeviceIdentifier = v5->_crossDeviceIdentifier;
      v5->_crossDeviceIdentifier = v48;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x10000000000) != 0)
    {
      v50 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v51 = [v4 decodeObjectOfClasses:v50 forKey:@"ISOCountryCode"];
      ISOCountryCode = v5->_ISOCountryCode;
      v5->_ISOCountryCode = v51;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x20000000000) != 0)
    {
      v53 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v54 = [v4 decodeObjectOfClasses:v53 forKey:@"localSenderIdentityUUID"];
      localSenderIdentityUUID = v5->_localSenderIdentityUUID;
      v5->_localSenderIdentityUUID = v54;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x40000000000) != 0)
    {
      v56 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v57 = [v4 decodeObjectOfClasses:v56 forKey:@"localSenderIdentityAccountUUID"];
      localSenderIdentityAccountUUID = v5->_localSenderIdentityAccountUUID;
      v5->_localSenderIdentityAccountUUID = v57;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x80000000000) != 0)
    {
      v59 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v60 = [v4 decodeObjectOfClasses:v59 forKey:@"localMemberHandleValue"];
      localMemberHandleValue = v5->_localMemberHandleValue;
      v5->_localMemberHandleValue = v60;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x100000000000) != 0)
    {
      v62 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v63 = [v4 decodeObjectOfClasses:v62 forKey:@"localSenderSubscriptionIdentifier"];
      localSenderSubscriptionIdentifier = v5->_localSenderSubscriptionIdentifier;
      v5->_localSenderSubscriptionIdentifier = v63;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x200000000000) != 0)
    {
      v65 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v66 = [v4 decodeObjectOfClasses:v65 forKey:@"participantGroupUUID"];
      participantGroupUUID = v5->_participantGroupUUID;
      v5->_participantGroupUUID = v66;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x400000000000) != 0)
    {
      v68 = MEMORY[0x1E695DFD8];
      v69 = objc_opt_class();
      v70 = [v68 setWithObjects:{v69, objc_opt_class(), 0}];
      v71 = [v4 decodeObjectOfClasses:v70 forKey:@"remoteParticipantHandles"];
      remoteParticipantHandles = v5->_remoteParticipantHandles;
      v5->_remoteParticipantHandles = v71;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x800000000000) != 0)
    {
      v73 = MEMORY[0x1E695DFD8];
      v74 = objc_opt_class();
      v75 = [v73 setWithObjects:{v74, objc_opt_class(), 0}];
      v76 = [v4 decodeObjectOfClasses:v75 forKey:@"otherInvitedHandles"];
      otherInvitedHandles = v5->_otherInvitedHandles;
      v5->_otherInvitedHandles = v76;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x1000000000000) != 0)
    {
      v78 = MEMORY[0x1E695DFD8];
      v79 = objc_opt_class();
      v80 = [v78 setWithObjects:{v79, objc_opt_class(), 0}];
      v81 = [v4 decodeObjectOfClasses:v80 forKey:@"activeRemoteParticipantHandles"];
      activeRemoteParticipantHandles = v5->_activeRemoteParticipantHandles;
      v5->_activeRemoteParticipantHandles = v81;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x2000000000000) != 0)
    {
      v83 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v84 = [v4 decodeObjectOfClasses:v83 forKey:@"handoffContext"];
      handoffContext = v5->_handoffContext;
      v5->_handoffContext = v84;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x4000000000000) != 0)
    {
      v86 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v87 = [v4 decodeObjectOfClasses:v86 forKey:@"screenShareAttributes"];
      screenShareAttributes = v5->_screenShareAttributes;
      v5->_screenShareAttributes = v87;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x8000000000000) != 0)
    {
      v89 = MEMORY[0x1E695DFD8];
      v90 = objc_opt_class();
      v91 = objc_opt_class();
      v92 = objc_opt_class();
      v93 = objc_opt_class();
      v131 = objc_opt_class();
      v94 = [v89 setWithObjects:{v90, v91, v92, v93, v131, objc_opt_class(), 0}];
      v95 = [v4 decodeObjectOfClasses:v94 forKey:@"context"];
      context = v5->_context;
      v5->_context = v95;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x10000000000000) != 0)
    {
      v5->_prefersExclusiveAccessToCellularNetwork = [v4 decodeBoolForKey:@"prefersExclusiveAccessToCellularNetwork"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x800) != 0)
    {
      v5->_supportsTTYWithVoice = [v4 decodeBoolForKey:@"supportsTTYWithVoice"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x20000000000000) != 0)
    {
      v5->_remoteUplinkMuted = [v4 decodeBoolForKey:@"remoteUplinkMuted"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x40000000000000) != 0)
    {
      v5->_shouldSuppressInCallUI = [v4 decodeBoolForKey:@"shouldSuppressInCallUI"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v97 & 0x2000000) != 0)
    {
      v5->_startCallMuted = [v4 decodeBoolForKey:@"startCallMuted"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x80000000000000) != 0)
    {
      v5->_launchInBackground = [v4 decodeBoolForKey:@"launchInBackground"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x100000000000000) != 0)
    {
      v5->_requiresAuthentication = [v4 decodeBoolForKey:@"requiresAuthentication"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x200000000000000) != 0)
    {
      v5->_mutuallyExclusiveCall = [v4 decodeBoolForKey:@"mutuallyExclusiveCall"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x400000000000000) != 0)
    {
      v5->_junkConfidence = [v4 decodeIntegerForKey:@"junkConfidence"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v98 & 0x4000) != 0)
    {
      v5->_callSubType = [v4 decodeIntegerForKey:@"callSubType"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x800000000000000) != 0)
    {
      v5->_identificationCategory = [v4 decodeIntegerForKey:@"identificationCategory"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x1000000000000000) != 0)
    {
      v5->_conversation = [v4 decodeBoolForKey:@"conversation"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x2000000000000000) != 0)
    {
      v5->_mixesVoiceWithMedia = [v4 decodeBoolForKey:@"mixesVoiceWithMedia"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x4000000000000000) != 0)
    {
      v5->_prefersToPlayDuringWombat = [v4 decodeBoolForKey:@"prefersToPlayDuringWombat"];
    }

    if ([(CXCallUpdate *)v5 hasSet]< 0)
    {
      v5->_mediaPlaybackOnExternalDevice = [v4 decodeBoolForKey:@"mediaPlaybackOnExternalDevice"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v99 & 8) != 0)
    {
      v5->_ignoresBluetoothDeviceUID = [v4 decodeBoolForKey:@"ignoresBluetoothDeviceUID"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v100 & 2) != 0)
    {
      v5->_sharingScreen = [v4 decodeBoolForKey:@"sharingScreen"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v101 & 0x10) != 0)
    {
      v5->_serviceStatus = [v4 decodeIntegerForKey:@"serviceStatus"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v102 & 0x20) != 0)
    {
      v5->_transmissionMode = [v4 decodeIntegerForKey:@"transmissionMode"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v103 & 0x40) != 0)
    {
      v5->_accessoryButtonEventsEnabled = [v4 decodeBoolForKey:@"accessoryButtonEventsEnabled"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if (v104 < 0)
    {
      v5->_sendingVideo = [v4 decodeBoolForKey:@"sendingVideo"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v105 & 0x1000) != 0)
    {
      v5->_isReRing = [v4 decodeBoolForKey:@"isReRing"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v106 & 0x2000) != 0)
    {
      v5->_suppressRingtone = [v4 decodeBoolForKey:@"suppressRingtone"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v107 & 0x100) != 0)
    {
      v5->_hasBeenRedirected = [v4 decodeBoolForKey:@"hasBeenRedirected"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v108 & 0x200) != 0)
    {
      v5->_isKnownCaller = [v4 decodeBoolForKey:@"isKnownCaller"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v109 & 0x400) != 0)
    {
      v5->_filteredOutReason = [v4 decodeIntegerForKey:@"filteredOutReason"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v110 & 0x800) != 0)
    {
      v111 = MEMORY[0x1E695DFD8];
      v112 = objc_opt_class();
      v113 = objc_opt_class();
      v114 = [v111 setWithObjects:{v112, v113, objc_opt_class(), 0}];
      v115 = [v4 decodeObjectOfClasses:v114 forKey:@"silencingUserInfo"];
      silencingUserInfo = v5->_silencingUserInfo;
      v5->_silencingUserInfo = v115;
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v117 & 0x20000) != 0)
    {
      v5->_screenSharingIntention = [v4 decodeIntegerForKey:@"screenSharingIntention"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v118 & 0x40000) != 0)
    {
      v5->_screenSharingType = [v4 decodeIntegerForKey:@"screenSharingType"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v119 & 0x80000) != 0)
    {
      v5->_isSharePlayCapable = [v4 decodeBoolForKey:@"isSharePlayCapable"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v120 & 0x100000) != 0)
    {
      v5->_anyRemoteSupportsRequestToScreenShare = [v4 decodeBoolForKey:@"anyRemoteSupportsRequestToScreenShare"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v121 & 0x200000) != 0)
    {
      v5->_nearbyMode = [v4 decodeBoolForKey:@"nearbyMode"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v122 & 0x400000) != 0)
    {
      v5->_commTrustScore = [v4 decodeIntegerForKey:@"commTrustScore"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v123 & 0x800000) != 0)
    {
      v5->_specialUnknown = [v4 decodeBoolForKey:@"specialUnknown"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v124 & 0x1000000) != 0)
    {
      v125 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v126 = [v4 decodeObjectOfClasses:v125 forKey:@"conversationGroupUUID"];
      conversationGroupUUID = v5->_conversationGroupUUID;
      v5->_conversationGroupUUID = v126;
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v128 & 0x4000000) != 0)
    {
      v5->_shouldSilentlyRegisterIMAVCall = [v4 decodeBoolForKey:@"shouldSilentlyRegisterIMAVCall"];
    }
  }

  v129 = v5;
LABEL_185:

  return v129;
}

- (void)encodeWithCoder:(id)a3
{
  v57 = a3;
  v4 = [(CXCallUpdate *)self UUID];
  v5 = NSStringFromSelector(sel_UUID);
  [v57 encodeObject:v4 forKey:v5];

  v6 = NSStringFromSelector(sel_hasSet);
  [v57 encodeBytes:&self->_hasSet length:12 forKey:v6];

  if (([(CXCallUpdate *)self hasSet]& 1) != 0)
  {
    v7 = [(CXCallUpdate *)self account];
    [v57 encodeObject:v7 forKey:@"account"];
  }

  if (([(CXCallUpdate *)self hasSet]& 2) != 0)
  {
    v8 = [(CXCallUpdate *)self activeRemoteParticipant];
    [v57 encodeObject:v8 forKey:@"activeRemoteParticipant"];
  }

  if (([(CXCallUpdate *)self hasSet]& 4) != 0)
  {
    v9 = [(CXCallUpdate *)self remoteMember];
    [v57 encodeObject:v9 forKey:@"remoteMember"];
  }

  if (([(CXCallUpdate *)self hasSet]& 8) != 0)
  {
    v10 = [(CXCallUpdate *)self localizedCallerName];
    [v57 encodeObject:v10 forKey:@"localizedCallerName"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10) != 0)
  {
    v11 = [(CXCallUpdate *)self localizedCallerImageURL];
    [v57 encodeObject:v11 forKey:@"localizedCallerImageURL"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate isEmergency](self forKey:{"isEmergency"), @"emergency"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate isFailureExpected](self forKey:{"isFailureExpected"), @"failureExpected"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate supportsEmergencyFallback](self forKey:{"supportsEmergencyFallback"), @"supportsEmergencyFallback"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate isUsingBaseband](self forKey:{"isUsingBaseband"), @"usingBaseband"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate isBlocked](self forKey:{"isBlocked"), @"blocked"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400) != 0)
  {
    [v57 encodeInteger:-[CXCallUpdate ttyType](self forKey:{"ttyType"), @"ttyType"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v12 & 4) != 0)
  {
    [v57 encodeInteger:-[CXCallUpdate bluetoothAudioFormat](self forKey:{"bluetoothAudioFormat"), @"bluetoothAudioFormat"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate mayRequireBreakBeforeMake](self forKey:{"mayRequireBreakBeforeMake"), @"mayRequireBreakBeforeMake"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate hasVideo](self forKey:{"hasVideo"), @"hasVideo"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate isUpgradeToVideo](self forKey:{"isUpgradeToVideo"), @"isUpgradeToVideo"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000) != 0)
  {
    v13 = [(CXCallUpdate *)self audioCategory];
    [v57 encodeObject:v13 forKey:@"audioCategory"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000) != 0)
  {
    v14 = [(CXCallUpdate *)self audioMode];
    [v57 encodeObject:v14 forKey:@"audioMode"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000) != 0)
  {
    [v57 encodeInteger:-[CXCallUpdate audioInterruptionProvider](self forKey:{"audioInterruptionProvider"), @"audioInterruptionProvider"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000) != 0)
  {
    [v57 encodeInteger:-[CXCallUpdate audioInterruptionOperationMode](self forKey:{"audioInterruptionOperationMode"), @"audioInterruptionOperationMode"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000) != 0)
  {
    [v57 encodeInteger:-[CXCallUpdate verificationStatus](self forKey:{"verificationStatus"), @"verificationStatus"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000) != 0)
  {
    [v57 encodeInteger:-[CXCallUpdate priority](self forKey:{"priority"), @"priority"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate requiresInCallSounds](self forKey:{"requiresInCallSounds"), @"requiresInCallSounds"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000) != 0)
  {
    [v57 encodeInteger:-[CXCallUpdate inCallSoundRegion](self forKey:{"inCallSoundRegion"), @"inCallSoundRegion"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate supportsHolding](self forKey:{"supportsHolding"), @"supportsHolding"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate supportsGrouping](self forKey:{"supportsGrouping"), @"supportsGrouping"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate supportsUngrouping](self forKey:{"supportsUngrouping"), @"supportsUngrouping"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate supportsDTMF](self forKey:{"supportsDTMF"), @"supportsDTMF"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate supportsDTMFUpdates](self forKey:{"supportsDTMFUpdates"), @"supportsDTMFUpdates"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate supportsSharePlay](self forKey:{"supportsSharePlay"), @"supportsSharePlay"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate supportsScreenShare](self forKey:{"supportsScreenShare"), @"supportsScreenShare"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate supportsUnambiguousMultiPartyState](self forKey:{"supportsUnambiguousMultiPartyState"), @"supportsUnambiguousMultiPartyState"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate supportsAddCall](self forKey:{"supportsAddCall"), @"supportsAddCall"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate supportsSendingToVoicemail](self forKey:{"supportsSendingToVoicemail"), @"supportsSendingToVoicemail"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate supportsRecording](self forKey:{"supportsRecording"), @"supportsRecording"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate isUnderlyingLinksConnected](self forKey:{"isUnderlyingLinksConnected"), @"isUnderlyingLinksConnected"}];
  }

  [(CXCallUpdate *)self hasSet];
  if (v15 < 0)
  {
    [v57 encodeBool:-[CXCallUpdate supportsScreening](self forKey:{"supportsScreening"), @"supportsScreening"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v16 & 0x10000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate supportsRecents](self forKey:{"supportsRecents"), @"supportsRecents"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000000) != 0)
  {
    [v57 encodeInteger:-[CXCallUpdate videoStreamToken](self forKey:{"videoStreamToken"), @"videoStreamToken"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000000) != 0)
  {
    v17 = [(CXCallUpdate *)self callTokens];
    [v57 encodeObject:v17 forKey:@"callTokens"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000000) != 0)
  {
    v18 = [(CXCallUpdate *)self announceProviderIdentifier];
    [v57 encodeObject:v18 forKey:@"announceProviderIdentifier"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000000) != 0)
  {
    v19 = [(CXCallUpdate *)self initiator];
    [v57 encodeObject:v19 forKey:@"initiator"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000000000) != 0)
  {
    v20 = [(CXCallUpdate *)self crossDeviceIdentifier];
    [v57 encodeObject:v20 forKey:@"crossDeviceIdentifier"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000000000) != 0)
  {
    v21 = [(CXCallUpdate *)self ISOCountryCode];
    [v57 encodeObject:v21 forKey:@"ISOCountryCode"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000000000) != 0)
  {
    v22 = [(CXCallUpdate *)self localSenderIdentityUUID];
    [v57 encodeObject:v22 forKey:@"localSenderIdentityUUID"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000000000) != 0)
  {
    v23 = [(CXCallUpdate *)self localSenderIdentityAccountUUID];
    [v57 encodeObject:v23 forKey:@"localSenderIdentityAccountUUID"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000000000) != 0)
  {
    v24 = [(CXCallUpdate *)self localMemberHandleValue];
    [v57 encodeObject:v24 forKey:@"localMemberHandleValue"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000000000) != 0)
  {
    v25 = [(CXCallUpdate *)self localSenderSubscriptionIdentifier];
    [v57 encodeObject:v25 forKey:@"localSenderSubscriptionIdentifier"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000000000) != 0)
  {
    v26 = [(CXCallUpdate *)self participantGroupUUID];
    [v57 encodeObject:v26 forKey:@"participantGroupUUID"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000000000) != 0)
  {
    v27 = [(CXCallUpdate *)self remoteParticipantHandles];
    [v57 encodeObject:v27 forKey:@"remoteParticipantHandles"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000000000) != 0)
  {
    v28 = [(CXCallUpdate *)self otherInvitedHandles];
    [v57 encodeObject:v28 forKey:@"otherInvitedHandles"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000000000) != 0)
  {
    v29 = [(CXCallUpdate *)self activeRemoteParticipantHandles];
    [v57 encodeObject:v29 forKey:@"activeRemoteParticipantHandles"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000000000) != 0)
  {
    v30 = [(CXCallUpdate *)self handoffContext];
    [v57 encodeObject:v30 forKey:@"handoffContext"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000000000) != 0)
  {
    v31 = [(CXCallUpdate *)self screenShareAttributes];
    [v57 encodeObject:v31 forKey:@"screenShareAttributes"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000000000000) != 0)
  {
    v32 = [(CXCallUpdate *)self context];
    [v57 encodeObject:v32 forKey:@"context"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000000000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate prefersExclusiveAccessToCellularNetwork](self forKey:{"prefersExclusiveAccessToCellularNetwork"), @"prefersExclusiveAccessToCellularNetwork"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate supportsTTYWithVoice](self forKey:{"supportsTTYWithVoice"), @"supportsTTYWithVoice"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000000000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate isRemoteUplinkMuted](self forKey:{"isRemoteUplinkMuted"), @"remoteUplinkMuted"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000000000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate shouldSuppressInCallUI](self forKey:{"shouldSuppressInCallUI"), @"shouldSuppressInCallUI"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v33 & 0x2000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate startCallMuted](self forKey:{"startCallMuted"), @"startCallMuted"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000000000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate launchInBackground](self forKey:{"launchInBackground"), @"launchInBackground"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000000000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate requiresAuthentication](self forKey:{"requiresAuthentication"), @"requiresAuthentication"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000000000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate isMutuallyExclusiveCall](self forKey:{"isMutuallyExclusiveCall"), @"mutuallyExclusiveCall"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000000000000) != 0)
  {
    [v57 encodeInteger:-[CXCallUpdate junkConfidence](self forKey:{"junkConfidence"), @"junkConfidence"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v34 & 0x4000) != 0)
  {
    [v57 encodeInteger:-[CXCallUpdate callSubType](self forKey:{"callSubType"), @"callSubType"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000000000000) != 0)
  {
    [v57 encodeInteger:-[CXCallUpdate identificationCategory](self forKey:{"identificationCategory"), @"identificationCategory"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000000000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate isConversation](self forKey:{"isConversation"), @"conversation"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000000000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate mixesVoiceWithMedia](self forKey:{"mixesVoiceWithMedia"), @"mixesVoiceWithMedia"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000000000000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate prefersToPlayDuringWombat](self forKey:{"prefersToPlayDuringWombat"), @"prefersToPlayDuringWombat"}];
  }

  if ([(CXCallUpdate *)self hasSet]< 0)
  {
    [v57 encodeBool:-[CXCallUpdate mediaPlaybackOnExternalDevice](self forKey:{"mediaPlaybackOnExternalDevice"), @"mediaPlaybackOnExternalDevice"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v35 & 8) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate ignoresBluetoothDeviceUID](self forKey:{"ignoresBluetoothDeviceUID"), @"ignoresBluetoothDeviceUID"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v36 & 2) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate isSharingScreen](self forKey:{"isSharingScreen"), @"sharingScreen"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v37 & 0x10) != 0)
  {
    [v57 encodeInteger:-[CXCallUpdate serviceStatus](self forKey:{"serviceStatus"), @"serviceStatus"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v38 & 0x20) != 0)
  {
    [v57 encodeInteger:-[CXCallUpdate transmissionMode](self forKey:{"transmissionMode"), @"transmissionMode"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v39 & 0x40) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate accessoryButtonEventsEnabled](self forKey:{"accessoryButtonEventsEnabled"), @"accessoryButtonEventsEnabled"}];
  }

  [(CXCallUpdate *)self hasSet];
  if (v40 < 0)
  {
    [v57 encodeBool:-[CXCallUpdate isSendingVideo](self forKey:{"isSendingVideo"), @"sendingVideo"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v41 & 0x1000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate isReRing](self forKey:{"isReRing"), @"isReRing"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v42 & 0x2000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate suppressRingtone](self forKey:{"suppressRingtone"), @"suppressRingtone"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v43 & 0x100) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate hasBeenRedirected](self forKey:{"hasBeenRedirected"), @"hasBeenRedirected"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v44 & 0x200) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate isKnownCaller](self forKey:{"isKnownCaller"), @"isKnownCaller"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v45 & 0x400) != 0)
  {
    [v57 encodeInteger:-[CXCallUpdate filteredOutReason](self forKey:{"filteredOutReason"), @"filteredOutReason"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v46 & 0x20000) != 0)
  {
    [v57 encodeInteger:-[CXCallUpdate screenSharingIntention](self forKey:{"screenSharingIntention"), @"screenSharingIntention"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v47 & 0x800) != 0)
  {
    v48 = [(CXCallUpdate *)self silencingUserInfo];
    [v57 encodeObject:v48 forKey:@"silencingUserInfo"];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v49 & 0x40000) != 0)
  {
    [v57 encodeInteger:-[CXCallUpdate screenSharingType](self forKey:{"screenSharingType"), @"screenSharingType"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v50 & 0x80000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate isSharePlayCapable](self forKey:{"isSharePlayCapable"), @"isSharePlayCapable"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v51 & 0x100000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate anyRemoteSupportsRequestToScreenShare](self forKey:{"anyRemoteSupportsRequestToScreenShare"), @"anyRemoteSupportsRequestToScreenShare"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v52 & 0x200000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate nearbyMode](self forKey:{"nearbyMode") != 0, @"nearbyMode"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v53 & 0x400000) != 0)
  {
    [v57 encodeInteger:-[CXCallUpdate commTrustScore](self forKey:{"commTrustScore"), @"commTrustScore"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v54 & 0x800000) != 0)
  {
    [v57 encodeBool:-[CXCallUpdate specialUnknown](self forKey:{"specialUnknown"), @"specialUnknown"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v55 & 0x1000000) != 0)
  {
    v56 = [(CXCallUpdate *)self conversationGroupUUID];
    [v57 encodeObject:v56 forKey:@"conversationGroupUUID"];
  }
}

@end
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
- (CXCallUpdate)initWithCoder:(id)coder;
- (CXCallUpdate)updateWithUpdate:(id)update;
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
- (id)copyWithZone:(_NSZone *)zone;
- (id)sanitizedCopyWithZone:(_NSZone *)zone;
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
- (void)encodeWithCoder:(id)coder;
- (void)setAccessoryButtonEventsEnabled:(BOOL)enabled;
- (void)setAccount:(id)account;
- (void)setActiveRemoteParticipant:(id)participant;
- (void)setActiveRemoteParticipantHandles:(id)handles;
- (void)setAnnounceProviderIdentifier:(id)identifier;
- (void)setAnyRemoteSupportsRequestToScreenShare:(BOOL)share;
- (void)setAudioCategory:(id)category;
- (void)setAudioInterruptionOperationMode:(int64_t)mode;
- (void)setAudioInterruptionProvider:(int64_t)provider;
- (void)setAudioMode:(id)mode;
- (void)setBlocked:(BOOL)blocked;
- (void)setBluetoothAudioFormat:(int64_t)format;
- (void)setCallSubType:(int64_t)type;
- (void)setCallTokens:(id)tokens;
- (void)setCommTrustScore:(int)score;
- (void)setContext:(id)context;
- (void)setConversation:(BOOL)conversation;
- (void)setConversationGroupUUID:(id)d;
- (void)setCrossDeviceIdentifier:(id)identifier;
- (void)setEmergency:(BOOL)emergency;
- (void)setFailureExpected:(BOOL)expected;
- (void)setFilteredOutReason:(int)reason;
- (void)setHandoffContext:(id)context;
- (void)setHasBeenRedirected:(BOOL)redirected;
- (void)setHasVideo:(BOOL)hasVideo;
- (void)setISOCountryCode:(id)code;
- (void)setIdentificationCategory:(int64_t)category;
- (void)setIgnoresBluetoothDeviceUID:(BOOL)d;
- (void)setInCallSoundRegion:(int64_t)region;
- (void)setInitiator:(id)initiator;
- (void)setIsKnownCaller:(BOOL)caller;
- (void)setIsReRing:(BOOL)ring;
- (void)setIsSharePlayCapable:(BOOL)capable;
- (void)setIsUnderlyingLinksConnected:(BOOL)connected;
- (void)setIsUpgradeToVideo:(BOOL)video;
- (void)setJunkConfidence:(int64_t)confidence;
- (void)setLaunchInBackground:(BOOL)background;
- (void)setLocalMemberHandleValue:(id)value;
- (void)setLocalSenderIdentityAccountUUID:(id)d;
- (void)setLocalSenderIdentityUUID:(id)d;
- (void)setLocalSenderSubscriptionIdentifier:(id)identifier;
- (void)setLocalizedCallerImageURL:(id)l;
- (void)setLocalizedCallerName:(NSString *)localizedCallerName;
- (void)setMayRequireBreakBeforeMake:(BOOL)make;
- (void)setMediaPlaybackOnExternalDevice:(BOOL)device;
- (void)setMixesVoiceWithMedia:(BOOL)media;
- (void)setMutuallyExclusiveCall:(BOOL)call;
- (void)setNearbyMode:(int64_t)mode;
- (void)setOneToOneModeEnabled:(BOOL)enabled;
- (void)setOtherInvitedHandles:(id)handles;
- (void)setParticipantGroupUUID:(id)d;
- (void)setPrefersExclusiveAccessToCellularNetwork:(BOOL)network;
- (void)setPrefersToPlayDuringWombat:(BOOL)wombat;
- (void)setPriority:(int64_t)priority;
- (void)setRemoteHandle:(CXHandle *)remoteHandle;
- (void)setRemoteMember:(id)member;
- (void)setRemoteParticipantHandles:(id)handles;
- (void)setRemoteUplinkMuted:(BOOL)muted;
- (void)setRequiresAuthentication:(BOOL)authentication;
- (void)setRequiresInCallSounds:(BOOL)sounds;
- (void)setScreenShareAttributes:(id)attributes;
- (void)setScreenSharingIntention:(int64_t)intention;
- (void)setScreenSharingType:(int64_t)type;
- (void)setSendingVideo:(BOOL)video;
- (void)setServiceStatus:(int64_t)status;
- (void)setSharingScreen:(BOOL)screen;
- (void)setShouldSilentlyRegisterIMAVCall:(BOOL)call;
- (void)setShouldSuppressInCallUI:(BOOL)i;
- (void)setSpecialUnknown:(BOOL)unknown;
- (void)setSupportsAddCall:(BOOL)call;
- (void)setSupportsDTMF:(BOOL)supportsDTMF;
- (void)setSupportsDTMFUpdates:(BOOL)updates;
- (void)setSupportsEmergencyFallback:(BOOL)fallback;
- (void)setSupportsGrouping:(BOOL)supportsGrouping;
- (void)setSupportsHolding:(BOOL)supportsHolding;
- (void)setSupportsRecents:(BOOL)recents;
- (void)setSupportsRecording:(BOOL)recording;
- (void)setSupportsScreenShare:(BOOL)share;
- (void)setSupportsScreening:(BOOL)screening;
- (void)setSupportsSendingToVoicemail:(BOOL)voicemail;
- (void)setSupportsSharePlay:(BOOL)play;
- (void)setSupportsTTYWithVoice:(BOOL)voice;
- (void)setSupportsUnambiguousMultiPartyState:(BOOL)state;
- (void)setSupportsUngrouping:(BOOL)supportsUngrouping;
- (void)setSuppressRingtone:(BOOL)ringtone;
- (void)setTTYType:(int64_t)type;
- (void)setTransmissionMode:(int64_t)mode;
- (void)setUsingBaseband:(BOOL)baseband;
- (void)setVerificationStatus:(int64_t)status;
- (void)setVideoStreamToken:(int64_t)token;
- (void)startCallMuted:(BOOL)muted;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v3->_UUID;
    v3->_UUID = uUID;

    *&v3->_hasSet = 0;
    *(&v3->_hasSet + 2) = 0;
  }

  return v3;
}

+ (CXCallUpdate)callUpdateWithDefaultValuesSet
{
  v2 = objc_alloc_init(self);
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
  remoteMember = [(CXCallUpdate *)self remoteMember];
  if (remoteMember)
  {
    remoteMember2 = [(CXCallUpdate *)self remoteMember];
    handle = [remoteMember2 handle];
  }

  else
  {
    handle = 0;
  }

  return handle;
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
  uUID = [(CXCallUpdate *)self UUID];
  uUIDString = [uUID UUIDString];
  [v3 appendFormat:@" UUID=%@", uUIDString];

  if (([(CXCallUpdate *)self hasSet]& 1) != 0)
  {
    account = [(CXCallUpdate *)self account];
    [v3 appendFormat:@" account=%@", account];
  }

  if (([(CXCallUpdate *)self hasSet]& 2) != 0)
  {
    activeRemoteParticipant = [(CXCallUpdate *)self activeRemoteParticipant];
    [v3 appendFormat:@" activeRemoteParticipant=%@", activeRemoteParticipant];
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
    remoteMember = [(CXCallUpdate *)self remoteMember];
    [v3 appendFormat:@" remoteMember=%@", remoteMember];
  }

  if (([(CXCallUpdate *)self hasSet]& 8) != 0)
  {
    localizedCallerName = [(CXCallUpdate *)self localizedCallerName];
    [v3 appendFormat:@" localizedCallerName=%@", localizedCallerName];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10) != 0)
  {
    localizedCallerImageURL = [(CXCallUpdate *)self localizedCallerImageURL];
    [v3 appendFormat:@" localizedCallerImageURL=%@", localizedCallerImageURL];
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
    audioCategory = [(CXCallUpdate *)self audioCategory];
    [v3 appendFormat:@" audioCategory=%@", audioCategory];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000) != 0)
  {
    audioMode = [(CXCallUpdate *)self audioMode];
    [v3 appendFormat:@" audioMode=%@", audioMode];
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
    callTokens = [(CXCallUpdate *)self callTokens];
    [v3 appendFormat:@" callTokens=%@", callTokens];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000000) != 0)
  {
    announceProviderIdentifier = [(CXCallUpdate *)self announceProviderIdentifier];
    [v3 appendFormat:@" aPI=%@", announceProviderIdentifier];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000000) != 0)
  {
    initiator = [(CXCallUpdate *)self initiator];
    [v3 appendFormat:@" initiatorValue=%@", initiator];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000000000) != 0)
  {
    crossDeviceIdentifier = [(CXCallUpdate *)self crossDeviceIdentifier];
    [v3 appendFormat:@" crossDeviceIdentifier=%@", crossDeviceIdentifier];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000000000) != 0)
  {
    iSOCountryCode = [(CXCallUpdate *)self ISOCountryCode];
    [v3 appendFormat:@" ISOCountryCode=%@", iSOCountryCode];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000000000) != 0)
  {
    localSenderIdentityUUID = [(CXCallUpdate *)self localSenderIdentityUUID];
    [v3 appendFormat:@" localSenderIdentityUUID=%@", localSenderIdentityUUID];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000000000) != 0)
  {
    localSenderIdentityAccountUUID = [(CXCallUpdate *)self localSenderIdentityAccountUUID];
    [v3 appendFormat:@" localSenderIdentityAccountUUID=%@", localSenderIdentityAccountUUID];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000000000) != 0)
  {
    localMemberHandleValue = [(CXCallUpdate *)self localMemberHandleValue];
    [v3 appendFormat:@" localMemberHandleValue=%@", localMemberHandleValue];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000000000) != 0)
  {
    localSenderSubscriptionIdentifier = [(CXCallUpdate *)self localSenderSubscriptionIdentifier];
    [v3 appendFormat:@" localSenderSubscriptionIdentifier=%@", localSenderSubscriptionIdentifier];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000000000) != 0)
  {
    participantGroupUUID = [(CXCallUpdate *)self participantGroupUUID];
    [v3 appendFormat:@" participantGroupUUID=%@", participantGroupUUID];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000000000) != 0)
  {
    remoteParticipantHandles = [(CXCallUpdate *)self remoteParticipantHandles];
    [v3 appendFormat:@" remoteParticipantHandles=%@", remoteParticipantHandles];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000000000) != 0)
  {
    otherInvitedHandles = [(CXCallUpdate *)self otherInvitedHandles];
    [v3 appendFormat:@" otherInvitedHandles=%@", otherInvitedHandles];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000000000) != 0)
  {
    activeRemoteParticipantHandles = [(CXCallUpdate *)self activeRemoteParticipantHandles];
    [v3 appendFormat:@" activeRemoteParticipantHandles=%@", activeRemoteParticipantHandles];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000000000) != 0)
  {
    handoffContext = [(CXCallUpdate *)self handoffContext];
    [v3 appendFormat:@" handoffContext=%@", handoffContext];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000000000) != 0)
  {
    screenShareAttributes = [(CXCallUpdate *)self screenShareAttributes];
    [v3 appendFormat:@" screenShareAttributes=%@", screenShareAttributes];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000000000000) != 0)
  {
    context = [(CXCallUpdate *)self context];
    [v3 appendFormat:@" context=%@", context];
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
    conversationGroupUUID = [(CXCallUpdate *)self conversationGroupUUID];
    [v3 appendFormat:@" conversationGroupUUID=%@", conversationGroupUUID];
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

- (void)setLocalizedCallerImageURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = [(CXSandboxExtendedURL *)lCopy URL];
    isFileURL = [v5 isFileURL];

    if ((isFileURL & 1) == 0)
    {
      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D940];
      v9 = NSStringFromSelector(sel_localizedCallerImageURL);
      [v7 raise:v8 format:{@"%s: parameter '%@' must be a file URL", "-[CXCallUpdate setLocalizedCallerImageURL:]", v9}];
    }
  }

  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_localizedCallerImageURL != lCopy)
  {
    *&self->_hasSet |= 0x10uLL;
    objc_storeStrong(&self->_localizedCallerImageURL, l);
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

- (void)setConversation:(BOOL)conversation
{
  conversationCopy = conversation;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_conversation != conversationCopy)
  {
    *&self->_hasSet |= 0x1000000000000000uLL;
    self->_conversation = conversationCopy;
    if (conversationCopy)
    {
      *(&self->_hasSet + 2) |= 0x80000u;
      self->_isSharePlayCapable = 1;
    }
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 1uLL;
  v5 = [accountCopy copy];

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

- (void)setActiveRemoteParticipant:(id)participant
{
  participantCopy = participant;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 2uLL;
  activeRemoteParticipant = self->_activeRemoteParticipant;
  self->_activeRemoteParticipant = participantCopy;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setRemoteMember:(id)member
{
  memberCopy = member;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 4uLL;
  remoteMember = self->_remoteMember;
  self->_remoteMember = memberCopy;

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

- (void)setEmergency:(BOOL)emergency
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x20uLL;
  self->_emergency = emergency;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)failureExpected
{
  os_unfair_lock_lock(&self->_accessorLock);
  failureExpected = self->_failureExpected;
  os_unfair_lock_unlock(&self->_accessorLock);
  return failureExpected;
}

- (void)setFailureExpected:(BOOL)expected
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x40uLL;
  self->_failureExpected = expected;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsEmergencyFallback:(BOOL)fallback
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x80uLL;
  self->_supportsEmergencyFallback = fallback;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)usingBaseband
{
  os_unfair_lock_lock(&self->_accessorLock);
  usingBaseband = self->_usingBaseband;
  os_unfair_lock_unlock(&self->_accessorLock);
  return usingBaseband;
}

- (void)setUsingBaseband:(BOOL)baseband
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x100uLL;
  self->_usingBaseband = baseband;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)blocked
{
  os_unfair_lock_lock(&self->_accessorLock);
  blocked = self->_blocked;
  os_unfair_lock_unlock(&self->_accessorLock);
  return blocked;
}

- (void)setBlocked:(BOOL)blocked
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x200uLL;
  self->_blocked = blocked;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setTTYType:(int64_t)type
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x400uLL;
  self->_ttyType = type;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setBluetoothAudioFormat:(int64_t)format
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 4u;
  self->_bluetoothAudioFormat = format;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setMayRequireBreakBeforeMake:(BOOL)make
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x1000uLL;
  self->_mayRequireBreakBeforeMake = make;

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

- (void)setIsUpgradeToVideo:(BOOL)video
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x4000uLL;
  self->_isUpgradeToVideo = video;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setAudioCategory:(id)category
{
  categoryCopy = category;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x8000uLL;
  v5 = [categoryCopy copy];

  audioCategory = self->_audioCategory;
  self->_audioCategory = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setAudioMode:(id)mode
{
  modeCopy = mode;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x10000uLL;
  v5 = [modeCopy copy];

  audioMode = self->_audioMode;
  self->_audioMode = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setAudioInterruptionProvider:(int64_t)provider
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x20000uLL;
  self->_audioInterruptionProvider = provider;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setAudioInterruptionOperationMode:(int64_t)mode
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x40000uLL;
  self->_audioInterruptionOperationMode = mode;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setVerificationStatus:(int64_t)status
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x80000uLL;
  self->_verificationStatus = status;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setPriority:(int64_t)priority
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x100000uLL;
  self->_priority = priority;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setRequiresInCallSounds:(BOOL)sounds
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x200000uLL;
  self->_requiresInCallSounds = sounds;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setInCallSoundRegion:(int64_t)region
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x400000uLL;
  self->_inCallSoundRegion = region;

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

- (void)setSupportsDTMFUpdates:(BOOL)updates
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x8000000uLL;
  self->_supportsDTMFUpdates = updates;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)supportsSharePlay
{
  os_unfair_lock_lock(&self->_accessorLock);
  supportsSharePlay = self->_supportsSharePlay;
  os_unfair_lock_unlock(&self->_accessorLock);
  return supportsSharePlay;
}

- (void)setSupportsSharePlay:(BOOL)play
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x10000000uLL;
  self->_supportsSharePlay = play;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)supportsScreenShare
{
  os_unfair_lock_lock(&self->_accessorLock);
  supportsScreenShare = self->_supportsScreenShare;
  os_unfair_lock_unlock(&self->_accessorLock);
  return supportsScreenShare;
}

- (void)setSupportsScreenShare:(BOOL)share
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x20000000uLL;
  self->_supportsScreenShare = share;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsUnambiguousMultiPartyState:(BOOL)state
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x40000000uLL;
  self->_supportsUnambiguousMultiPartyState = state;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsAddCall:(BOOL)call
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x80000000uLL;
  self->_supportsAddCall = call;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsSendingToVoicemail:(BOOL)voicemail
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x100000000uLL;
  self->_supportsSendingToVoicemail = voicemail;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsRecording:(BOOL)recording
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x200000000uLL;
  self->_supportsRecording = recording;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setIsUnderlyingLinksConnected:(BOOL)connected
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x400000000uLL;
  self->_isUnderlyingLinksConnected = connected;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsScreening:(BOOL)screening
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x8000u;
  self->_supportsScreening = screening;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsRecents:(BOOL)recents
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x10000u;
  self->_supportsRecents = recents;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setVideoStreamToken:(int64_t)token
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x800000000uLL;
  self->_videoStreamToken = token;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setCallTokens:(id)tokens
{
  tokensCopy = tokens;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x1000000000uLL;
  callTokens = self->_callTokens;
  self->_callTokens = tokensCopy;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setCommTrustScore:(int)score
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x400000u;
  self->_commTrustScore = score;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)specialUnknown
{
  os_unfair_lock_lock(&self->_accessorLock);
  specialUnknown = self->_specialUnknown;
  os_unfair_lock_unlock(&self->_accessorLock);
  return specialUnknown;
}

- (void)setSpecialUnknown:(BOOL)unknown
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x800000u;
  self->_specialUnknown = unknown;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setAnnounceProviderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x2000000000uLL;
  v5 = [identifierCopy copy];

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

- (void)setInitiator:(id)initiator
{
  initiatorCopy = initiator;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x4000000000uLL;
  v5 = [initiatorCopy copy];

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

- (void)setCrossDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x8000000000uLL;
  v5 = [identifierCopy copy];

  crossDeviceIdentifier = self->_crossDeviceIdentifier;
  self->_crossDeviceIdentifier = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setISOCountryCode:(id)code
{
  codeCopy = code;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x10000000000uLL;
  v5 = [codeCopy copy];

  ISOCountryCode = self->_ISOCountryCode;
  self->_ISOCountryCode = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setLocalSenderIdentityUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x20000000000uLL;
  v5 = [dCopy copy];

  localSenderIdentityUUID = self->_localSenderIdentityUUID;
  self->_localSenderIdentityUUID = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setLocalSenderIdentityAccountUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x40000000000uLL;
  v5 = [dCopy copy];

  localSenderIdentityAccountUUID = self->_localSenderIdentityAccountUUID;
  self->_localSenderIdentityAccountUUID = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setLocalMemberHandleValue:(id)value
{
  valueCopy = value;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x80000000000uLL;
  v5 = [valueCopy copy];

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

- (void)setLocalSenderSubscriptionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x100000000000uLL;
  v5 = [identifierCopy copy];

  localSenderSubscriptionIdentifier = self->_localSenderSubscriptionIdentifier;
  self->_localSenderSubscriptionIdentifier = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setParticipantGroupUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x200000000000uLL;
  v5 = [dCopy copy];

  participantGroupUUID = self->_participantGroupUUID;
  self->_participantGroupUUID = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setRemoteParticipantHandles:(id)handles
{
  handlesCopy = handles;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x400000000000uLL;
  v5 = [handlesCopy copy];

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

- (void)setOtherInvitedHandles:(id)handles
{
  handlesCopy = handles;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x800000000000uLL;
  v5 = [handlesCopy copy];

  otherInvitedHandles = self->_otherInvitedHandles;
  self->_otherInvitedHandles = v5;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setActiveRemoteParticipantHandles:(id)handles
{
  handlesCopy = handles;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x1000000000000uLL;
  v5 = [handlesCopy copy];

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

- (void)setHandoffContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x2000000000000uLL;
  handoffContext = self->_handoffContext;
  self->_handoffContext = contextCopy;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setScreenShareAttributes:(id)attributes
{
  attributesCopy = attributes;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x4000000000000uLL;
  screenShareAttributes = self->_screenShareAttributes;
  self->_screenShareAttributes = attributesCopy;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setScreenSharingIntention:(int64_t)intention
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x20000u;
  self->_screenSharingIntention = intention;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x8000000000000uLL;
  v5 = [contextCopy copy];

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

- (void)setPrefersExclusiveAccessToCellularNetwork:(BOOL)network
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x10000000000000uLL;
  self->_prefersExclusiveAccessToCellularNetwork = network;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setSupportsTTYWithVoice:(BOOL)voice
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x800uLL;
  self->_supportsTTYWithVoice = voice;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)remoteUplinkMuted
{
  os_unfair_lock_lock(&self->_accessorLock);
  remoteUplinkMuted = self->_remoteUplinkMuted;
  os_unfair_lock_unlock(&self->_accessorLock);
  return remoteUplinkMuted;
}

- (void)setRemoteUplinkMuted:(BOOL)muted
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x20000000000000uLL;
  self->_remoteUplinkMuted = muted;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setShouldSuppressInCallUI:(BOOL)i
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x40000000000000uLL;
  self->_shouldSuppressInCallUI = i;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)startCallMuted
{
  os_unfair_lock_lock(&self->_accessorLock);
  startCallMuted = self->_startCallMuted;
  os_unfair_lock_unlock(&self->_accessorLock);
  return startCallMuted;
}

- (void)startCallMuted:(BOOL)muted
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x2000000u;
  self->_startCallMuted = muted;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setLaunchInBackground:(BOOL)background
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x80000000000000uLL;
  self->_launchInBackground = background;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)requiresAuthentication
{
  os_unfair_lock_lock(&self->_accessorLock);
  requiresAuthentication = self->_requiresAuthentication;
  os_unfair_lock_unlock(&self->_accessorLock);
  return requiresAuthentication;
}

- (void)setRequiresAuthentication:(BOOL)authentication
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x100000000000000uLL;
  self->_requiresAuthentication = authentication;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)mutuallyExclusiveCall
{
  os_unfair_lock_lock(&self->_accessorLock);
  mutuallyExclusiveCall = self->_mutuallyExclusiveCall;
  os_unfair_lock_unlock(&self->_accessorLock);
  return mutuallyExclusiveCall;
}

- (void)setMutuallyExclusiveCall:(BOOL)call
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x200000000000000uLL;
  self->_mutuallyExclusiveCall = call;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setJunkConfidence:(int64_t)confidence
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x400000000000000uLL;
  self->_junkConfidence = confidence;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (int64_t)callSubType
{
  os_unfair_lock_lock(&self->_accessorLock);
  callSubType = self->_callSubType;
  os_unfair_lock_unlock(&self->_accessorLock);
  return callSubType;
}

- (void)setCallSubType:(int64_t)type
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x4000u;
  self->_callSubType = type;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setIdentificationCategory:(int64_t)category
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x800000000000000uLL;
  self->_identificationCategory = category;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setMixesVoiceWithMedia:(BOOL)media
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x2000000000000000uLL;
  self->_mixesVoiceWithMedia = media;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)prefersToPlayDuringWombat
{
  os_unfair_lock_lock(&self->_accessorLock);
  prefersToPlayDuringWombat = self->_prefersToPlayDuringWombat;
  os_unfair_lock_unlock(&self->_accessorLock);
  return prefersToPlayDuringWombat;
}

- (void)setPrefersToPlayDuringWombat:(BOOL)wombat
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x4000000000000000uLL;
  self->_prefersToPlayDuringWombat = wombat;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)mediaPlaybackOnExternalDevice
{
  os_unfair_lock_lock(&self->_accessorLock);
  mediaPlaybackOnExternalDevice = self->_mediaPlaybackOnExternalDevice;
  os_unfair_lock_unlock(&self->_accessorLock);
  return mediaPlaybackOnExternalDevice;
}

- (void)setMediaPlaybackOnExternalDevice:(BOOL)device
{
  os_unfair_lock_lock(&self->_accessorLock);
  *&self->_hasSet |= 0x8000000000000000;
  self->_mediaPlaybackOnExternalDevice = device;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)oneToOneModeEnabled
{
  os_unfair_lock_lock(&self->_accessorLock);
  oneToOneModeEnabled = self->_oneToOneModeEnabled;
  os_unfair_lock_unlock(&self->_accessorLock);
  return oneToOneModeEnabled;
}

- (void)setOneToOneModeEnabled:(BOOL)enabled
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 1u;
  self->_oneToOneModeEnabled = enabled;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)sharingScreen
{
  os_unfair_lock_lock(&self->_accessorLock);
  sharingScreen = self->_sharingScreen;
  os_unfair_lock_unlock(&self->_accessorLock);
  return sharingScreen;
}

- (void)setSharingScreen:(BOOL)screen
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 2u;
  self->_sharingScreen = screen;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setIgnoresBluetoothDeviceUID:(BOOL)d
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 8u;
  self->_ignoresBluetoothDeviceUID = d;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setServiceStatus:(int64_t)status
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x10u;
  self->_serviceStatus = status;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setTransmissionMode:(int64_t)mode
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x20u;
  self->_transmissionMode = mode;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setAccessoryButtonEventsEnabled:(BOOL)enabled
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x40u;
  self->_accessoryButtonEventsEnabled = enabled;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)sendingVideo
{
  os_unfair_lock_lock(&self->_accessorLock);
  sendingVideo = self->_sendingVideo;
  os_unfair_lock_unlock(&self->_accessorLock);
  return sendingVideo;
}

- (void)setSendingVideo:(BOOL)video
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x80u;
  self->_sendingVideo = video;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setIsReRing:(BOOL)ring
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x1000u;
  self->_isReRing = ring;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)suppressRingtone
{
  os_unfair_lock_lock(&self->_accessorLock);
  suppressRingtone = self->_suppressRingtone;
  os_unfair_lock_unlock(&self->_accessorLock);
  return suppressRingtone;
}

- (void)setSuppressRingtone:(BOOL)ringtone
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x2000u;
  self->_suppressRingtone = ringtone;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setHasBeenRedirected:(BOOL)redirected
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x100u;
  self->_hasBeenRedirected = redirected;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)isKnownCaller
{
  os_unfair_lock_lock(&self->_accessorLock);
  isKnownCaller = self->_isKnownCaller;
  os_unfair_lock_unlock(&self->_accessorLock);
  return isKnownCaller;
}

- (void)setIsKnownCaller:(BOOL)caller
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x200u;
  self->_isKnownCaller = caller;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (int)filteredOutReason
{
  os_unfair_lock_lock(&self->_accessorLock);
  filteredOutReason = self->_filteredOutReason;
  os_unfair_lock_unlock(&self->_accessorLock);
  return filteredOutReason;
}

- (void)setFilteredOutReason:(int)reason
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x400u;
  self->_filteredOutReason = reason;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setScreenSharingType:(int64_t)type
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x40000u;
  self->_screenSharingType = type;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)isSharePlayCapable
{
  os_unfair_lock_lock(&self->_accessorLock);
  isSharePlayCapable = self->_isSharePlayCapable;
  os_unfair_lock_unlock(&self->_accessorLock);
  return isSharePlayCapable;
}

- (void)setIsSharePlayCapable:(BOOL)capable
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x80000u;
  self->_isSharePlayCapable = capable;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)anyRemoteSupportsRequestToScreenShare
{
  os_unfair_lock_lock(&self->_accessorLock);
  anyRemoteSupportsRequestToScreenShare = self->_anyRemoteSupportsRequestToScreenShare;
  os_unfair_lock_unlock(&self->_accessorLock);
  return anyRemoteSupportsRequestToScreenShare;
}

- (void)setAnyRemoteSupportsRequestToScreenShare:(BOOL)share
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x100000u;
  self->_anyRemoteSupportsRequestToScreenShare = share;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setNearbyMode:(int64_t)mode
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x200000u;
  self->_nearbyMode = mode;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (NSUUID)conversationGroupUUID
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_conversationGroupUUID;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (void)setConversationGroupUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x1000000u;
  v5 = [dCopy copy];

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

- (void)setShouldSilentlyRegisterIMAVCall:(BOOL)call
{
  os_unfair_lock_lock(&self->_accessorLock);
  *(&self->_hasSet + 2) |= 0x4000000u;
  self->_shouldSilentlyRegisterIMAVCall = call;

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (CXCallUpdate)updateWithUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy hasSet])
  {
    account = [updateCopy account];
    [(CXCallUpdate *)self setAccount:account];
  }

  if (([updateCopy hasSet] & 2) != 0)
  {
    activeRemoteParticipant = [updateCopy activeRemoteParticipant];
    [(CXCallUpdate *)self setActiveRemoteParticipant:activeRemoteParticipant];
  }

  if (([updateCopy hasSet] & 4) != 0)
  {
    remoteMember = [updateCopy remoteMember];
    [(CXCallUpdate *)self setRemoteMember:remoteMember];
  }

  if (([updateCopy hasSet] & 8) != 0)
  {
    localizedCallerName = [updateCopy localizedCallerName];
    [(CXCallUpdate *)self setLocalizedCallerName:localizedCallerName];
  }

  if (([updateCopy hasSet] & 0x10) != 0)
  {
    localizedCallerImageURL = [updateCopy localizedCallerImageURL];
    [(CXCallUpdate *)self setLocalizedCallerImageURL:localizedCallerImageURL];
  }

  if (([updateCopy hasSet] & 0x20) != 0)
  {
    -[CXCallUpdate setEmergency:](self, "setEmergency:", [updateCopy isEmergency]);
  }

  if (([updateCopy hasSet] & 0x40) != 0)
  {
    -[CXCallUpdate setFailureExpected:](self, "setFailureExpected:", [updateCopy isFailureExpected]);
  }

  if (([updateCopy hasSet] & 0x80) != 0)
  {
    -[CXCallUpdate setSupportsEmergencyFallback:](self, "setSupportsEmergencyFallback:", [updateCopy supportsEmergencyFallback]);
  }

  if (([updateCopy hasSet] & 0x100) != 0)
  {
    -[CXCallUpdate setUsingBaseband:](self, "setUsingBaseband:", [updateCopy isUsingBaseband]);
  }

  if (([updateCopy hasSet] & 0x200) != 0)
  {
    -[CXCallUpdate setBlocked:](self, "setBlocked:", [updateCopy isBlocked]);
  }

  if (([updateCopy hasSet] & 0x400) != 0)
  {
    -[CXCallUpdate setTTYType:](self, "setTTYType:", [updateCopy ttyType]);
  }

  [updateCopy hasSet];
  if ((v9 & 4) != 0)
  {
    -[CXCallUpdate setBluetoothAudioFormat:](self, "setBluetoothAudioFormat:", [updateCopy bluetoothAudioFormat]);
  }

  if (([updateCopy hasSet] & 0x1000) != 0)
  {
    -[CXCallUpdate setMayRequireBreakBeforeMake:](self, "setMayRequireBreakBeforeMake:", [updateCopy mayRequireBreakBeforeMake]);
  }

  if (([updateCopy hasSet] & 0x2000) != 0)
  {
    -[CXCallUpdate setHasVideo:](self, "setHasVideo:", [updateCopy hasVideo]);
  }

  if (([updateCopy hasSet] & 0x4000) != 0)
  {
    -[CXCallUpdate setIsUpgradeToVideo:](self, "setIsUpgradeToVideo:", [updateCopy isUpgradeToVideo]);
  }

  if (([updateCopy hasSet] & 0x8000) != 0)
  {
    audioCategory = [updateCopy audioCategory];
    [(CXCallUpdate *)self setAudioCategory:audioCategory];
  }

  if (([updateCopy hasSet] & 0x10000) != 0)
  {
    audioMode = [updateCopy audioMode];
    [(CXCallUpdate *)self setAudioMode:audioMode];
  }

  if (([updateCopy hasSet] & 0x20000) != 0)
  {
    -[CXCallUpdate setAudioInterruptionProvider:](self, "setAudioInterruptionProvider:", [updateCopy audioInterruptionProvider]);
  }

  if (([updateCopy hasSet] & 0x40000) != 0)
  {
    -[CXCallUpdate setAudioInterruptionOperationMode:](self, "setAudioInterruptionOperationMode:", [updateCopy audioInterruptionOperationMode]);
  }

  if (([updateCopy hasSet] & 0x80000) != 0)
  {
    -[CXCallUpdate setVerificationStatus:](self, "setVerificationStatus:", [updateCopy verificationStatus]);
  }

  if (([updateCopy hasSet] & 0x100000) != 0)
  {
    -[CXCallUpdate setPriority:](self, "setPriority:", [updateCopy priority]);
  }

  if (([updateCopy hasSet] & 0x200000) != 0)
  {
    -[CXCallUpdate setRequiresInCallSounds:](self, "setRequiresInCallSounds:", [updateCopy requiresInCallSounds]);
  }

  if (([updateCopy hasSet] & 0x400000) != 0)
  {
    -[CXCallUpdate setInCallSoundRegion:](self, "setInCallSoundRegion:", [updateCopy inCallSoundRegion]);
  }

  if (([updateCopy hasSet] & 0x800000) != 0)
  {
    -[CXCallUpdate setSupportsHolding:](self, "setSupportsHolding:", [updateCopy supportsHolding]);
  }

  if (([updateCopy hasSet] & 0x1000000) != 0)
  {
    -[CXCallUpdate setSupportsGrouping:](self, "setSupportsGrouping:", [updateCopy supportsGrouping]);
  }

  if (([updateCopy hasSet] & 0x2000000) != 0)
  {
    -[CXCallUpdate setSupportsUngrouping:](self, "setSupportsUngrouping:", [updateCopy supportsUngrouping]);
  }

  if (([updateCopy hasSet] & 0x4000000) != 0)
  {
    -[CXCallUpdate setSupportsDTMF:](self, "setSupportsDTMF:", [updateCopy supportsDTMF]);
  }

  if (([updateCopy hasSet] & 0x8000000) != 0)
  {
    -[CXCallUpdate setSupportsDTMFUpdates:](self, "setSupportsDTMFUpdates:", [updateCopy supportsDTMFUpdates]);
  }

  if (([updateCopy hasSet] & 0x10000000) != 0)
  {
    -[CXCallUpdate setSupportsSharePlay:](self, "setSupportsSharePlay:", [updateCopy supportsSharePlay]);
  }

  if (([updateCopy hasSet] & 0x20000000) != 0)
  {
    -[CXCallUpdate setSupportsScreenShare:](self, "setSupportsScreenShare:", [updateCopy supportsScreenShare]);
  }

  if (([updateCopy hasSet] & 0x40000000) != 0)
  {
    -[CXCallUpdate setSupportsUnambiguousMultiPartyState:](self, "setSupportsUnambiguousMultiPartyState:", [updateCopy supportsUnambiguousMultiPartyState]);
  }

  if (([updateCopy hasSet] & 0x80000000) != 0)
  {
    -[CXCallUpdate setSupportsAddCall:](self, "setSupportsAddCall:", [updateCopy supportsAddCall]);
  }

  if (([updateCopy hasSet] & 0x100000000) != 0)
  {
    -[CXCallUpdate setSupportsSendingToVoicemail:](self, "setSupportsSendingToVoicemail:", [updateCopy supportsSendingToVoicemail]);
  }

  [updateCopy hasSet];
  if ((v12 & 0x20000) != 0)
  {
    -[CXCallUpdate setScreenSharingIntention:](self, "setScreenSharingIntention:", [updateCopy screenSharingIntention]);
  }

  if (([updateCopy hasSet] & 0x200000000) != 0)
  {
    -[CXCallUpdate setSupportsRecording:](self, "setSupportsRecording:", [updateCopy supportsRecording]);
  }

  if (([updateCopy hasSet] & 0x400000000) != 0)
  {
    -[CXCallUpdate setIsUnderlyingLinksConnected:](self, "setIsUnderlyingLinksConnected:", [updateCopy isUnderlyingLinksConnected]);
  }

  [updateCopy hasSet];
  if (v13 < 0)
  {
    -[CXCallUpdate setSupportsScreening:](self, "setSupportsScreening:", [updateCopy supportsScreening]);
  }

  [updateCopy hasSet];
  if ((v14 & 0x10000) != 0)
  {
    -[CXCallUpdate setSupportsRecents:](self, "setSupportsRecents:", [updateCopy supportsRecents]);
  }

  if (([updateCopy hasSet] & 0x800000000) != 0)
  {
    -[CXCallUpdate setVideoStreamToken:](self, "setVideoStreamToken:", [updateCopy videoStreamToken]);
  }

  if (([updateCopy hasSet] & 0x1000000000) != 0)
  {
    callTokens = [updateCopy callTokens];
    [(CXCallUpdate *)self setCallTokens:callTokens];
  }

  if (([updateCopy hasSet] & 0x2000000000) != 0)
  {
    announceProviderIdentifier = [updateCopy announceProviderIdentifier];
    [(CXCallUpdate *)self setAnnounceProviderIdentifier:announceProviderIdentifier];
  }

  if (([updateCopy hasSet] & 0x4000000000) != 0)
  {
    initiator = [updateCopy initiator];
    [(CXCallUpdate *)self setInitiator:initiator];
  }

  if (([updateCopy hasSet] & 0x8000000000) != 0)
  {
    crossDeviceIdentifier = [updateCopy crossDeviceIdentifier];
    [(CXCallUpdate *)self setCrossDeviceIdentifier:crossDeviceIdentifier];
  }

  if (([updateCopy hasSet] & 0x10000000000) != 0)
  {
    iSOCountryCode = [updateCopy ISOCountryCode];
    [(CXCallUpdate *)self setISOCountryCode:iSOCountryCode];
  }

  if (([updateCopy hasSet] & 0x20000000000) != 0)
  {
    localSenderIdentityUUID = [updateCopy localSenderIdentityUUID];
    [(CXCallUpdate *)self setLocalSenderIdentityUUID:localSenderIdentityUUID];
  }

  if (([updateCopy hasSet] & 0x40000000000) != 0)
  {
    localSenderIdentityAccountUUID = [updateCopy localSenderIdentityAccountUUID];
    [(CXCallUpdate *)self setLocalSenderIdentityAccountUUID:localSenderIdentityAccountUUID];
  }

  if (([updateCopy hasSet] & 0x80000000000) != 0)
  {
    localMemberHandleValue = [updateCopy localMemberHandleValue];
    [(CXCallUpdate *)self setLocalMemberHandleValue:localMemberHandleValue];
  }

  if (([updateCopy hasSet] & 0x100000000000) != 0)
  {
    localSenderSubscriptionIdentifier = [updateCopy localSenderSubscriptionIdentifier];
    [(CXCallUpdate *)self setLocalSenderSubscriptionIdentifier:localSenderSubscriptionIdentifier];
  }

  if (([updateCopy hasSet] & 0x200000000000) != 0)
  {
    participantGroupUUID = [updateCopy participantGroupUUID];
    [(CXCallUpdate *)self setParticipantGroupUUID:participantGroupUUID];
  }

  if (([updateCopy hasSet] & 0x400000000000) != 0)
  {
    remoteParticipantHandles = [updateCopy remoteParticipantHandles];
    [(CXCallUpdate *)self setRemoteParticipantHandles:remoteParticipantHandles];
  }

  if (([updateCopy hasSet] & 0x800000000000) != 0)
  {
    otherInvitedHandles = [updateCopy otherInvitedHandles];
    [(CXCallUpdate *)self setOtherInvitedHandles:otherInvitedHandles];
  }

  if (([updateCopy hasSet] & 0x1000000000000) != 0)
  {
    activeRemoteParticipantHandles = [updateCopy activeRemoteParticipantHandles];
    [(CXCallUpdate *)self setActiveRemoteParticipantHandles:activeRemoteParticipantHandles];
  }

  if (([updateCopy hasSet] & 0x2000000000000) != 0)
  {
    handoffContext = [updateCopy handoffContext];
    [(CXCallUpdate *)self setHandoffContext:handoffContext];
  }

  if (([updateCopy hasSet] & 0x4000000000000) != 0)
  {
    screenShareAttributes = [updateCopy screenShareAttributes];
    [(CXCallUpdate *)self setScreenShareAttributes:screenShareAttributes];
  }

  if (([updateCopy hasSet] & 0x8000000000000) != 0)
  {
    context = [updateCopy context];
    [(CXCallUpdate *)self setContext:context];
  }

  if (([updateCopy hasSet] & 0x10000000000000) != 0)
  {
    -[CXCallUpdate setPrefersExclusiveAccessToCellularNetwork:](self, "setPrefersExclusiveAccessToCellularNetwork:", [updateCopy prefersExclusiveAccessToCellularNetwork]);
  }

  if (([updateCopy hasSet] & 0x800) != 0)
  {
    -[CXCallUpdate setSupportsTTYWithVoice:](self, "setSupportsTTYWithVoice:", [updateCopy supportsTTYWithVoice]);
  }

  if (([updateCopy hasSet] & 0x20000000000000) != 0)
  {
    -[CXCallUpdate setRemoteUplinkMuted:](self, "setRemoteUplinkMuted:", [updateCopy isRemoteUplinkMuted]);
  }

  if (([updateCopy hasSet] & 0x40000000000000) != 0)
  {
    -[CXCallUpdate setShouldSuppressInCallUI:](self, "setShouldSuppressInCallUI:", [updateCopy shouldSuppressInCallUI]);
  }

  [updateCopy hasSet];
  if ((v31 & 0x2000000) != 0)
  {
    -[CXCallUpdate setStartCallMuted:](self, "setStartCallMuted:", [updateCopy startCallMuted]);
  }

  if (([updateCopy hasSet] & 0x80000000000000) != 0)
  {
    -[CXCallUpdate setLaunchInBackground:](self, "setLaunchInBackground:", [updateCopy launchInBackground]);
  }

  if (([updateCopy hasSet] & 0x100000000000000) != 0)
  {
    -[CXCallUpdate setRequiresAuthentication:](self, "setRequiresAuthentication:", [updateCopy requiresAuthentication]);
  }

  if (([updateCopy hasSet] & 0x200000000000000) != 0)
  {
    -[CXCallUpdate setMutuallyExclusiveCall:](self, "setMutuallyExclusiveCall:", [updateCopy isMutuallyExclusiveCall]);
  }

  if (([updateCopy hasSet] & 0x400000000000000) != 0)
  {
    -[CXCallUpdate setJunkConfidence:](self, "setJunkConfidence:", [updateCopy junkConfidence]);
  }

  [updateCopy hasSet];
  if ((v32 & 0x4000) != 0)
  {
    -[CXCallUpdate setCallSubType:](self, "setCallSubType:", [updateCopy callSubType]);
  }

  if (([updateCopy hasSet] & 0x800000000000000) != 0)
  {
    -[CXCallUpdate setIdentificationCategory:](self, "setIdentificationCategory:", [updateCopy identificationCategory]);
  }

  if (([updateCopy hasSet] & 0x1000000000000000) != 0)
  {
    -[CXCallUpdate setConversation:](self, "setConversation:", [updateCopy isConversation]);
  }

  if (([updateCopy hasSet] & 0x2000000000000000) != 0)
  {
    -[CXCallUpdate setMixesVoiceWithMedia:](self, "setMixesVoiceWithMedia:", [updateCopy mixesVoiceWithMedia]);
  }

  if (([updateCopy hasSet] & 0x4000000000000000) != 0)
  {
    -[CXCallUpdate setPrefersToPlayDuringWombat:](self, "setPrefersToPlayDuringWombat:", [updateCopy prefersToPlayDuringWombat]);
  }

  if ([updateCopy hasSet] < 0)
  {
    -[CXCallUpdate setMediaPlaybackOnExternalDevice:](self, "setMediaPlaybackOnExternalDevice:", [updateCopy mediaPlaybackOnExternalDevice]);
  }

  [updateCopy hasSet];
  if ((v33 & 8) != 0)
  {
    -[CXCallUpdate setIgnoresBluetoothDeviceUID:](self, "setIgnoresBluetoothDeviceUID:", [updateCopy ignoresBluetoothDeviceUID]);
  }

  [updateCopy hasSet];
  if ((v34 & 2) != 0)
  {
    -[CXCallUpdate setSharingScreen:](self, "setSharingScreen:", [updateCopy isSharingScreen]);
  }

  [updateCopy hasSet];
  if (v35)
  {
    -[CXCallUpdate setOneToOneModeEnabled:](self, "setOneToOneModeEnabled:", [updateCopy isOneToOneModeEnabled]);
  }

  [updateCopy hasSet];
  if ((v36 & 0x10) != 0)
  {
    -[CXCallUpdate setServiceStatus:](self, "setServiceStatus:", [updateCopy serviceStatus]);
  }

  [updateCopy hasSet];
  if ((v37 & 0x20) != 0)
  {
    -[CXCallUpdate setTransmissionMode:](self, "setTransmissionMode:", [updateCopy transmissionMode]);
  }

  [updateCopy hasSet];
  if ((v38 & 0x40) != 0)
  {
    -[CXCallUpdate setAccessoryButtonEventsEnabled:](self, "setAccessoryButtonEventsEnabled:", [updateCopy accessoryButtonEventsEnabled]);
  }

  [updateCopy hasSet];
  if (v39 < 0)
  {
    -[CXCallUpdate setSendingVideo:](self, "setSendingVideo:", [updateCopy isSendingVideo]);
  }

  [updateCopy hasSet];
  if ((v40 & 0x1000) != 0)
  {
    -[CXCallUpdate setIsReRing:](self, "setIsReRing:", [updateCopy isReRing]);
  }

  [updateCopy hasSet];
  if ((v41 & 0x2000) != 0)
  {
    -[CXCallUpdate setSuppressRingtone:](self, "setSuppressRingtone:", [updateCopy suppressRingtone]);
  }

  [updateCopy hasSet];
  if ((v42 & 0x100) != 0)
  {
    -[CXCallUpdate setHasBeenRedirected:](self, "setHasBeenRedirected:", [updateCopy hasBeenRedirected]);
  }

  [updateCopy hasSet];
  if ((v43 & 0x200) != 0)
  {
    -[CXCallUpdate setIsKnownCaller:](self, "setIsKnownCaller:", [updateCopy isKnownCaller]);
  }

  [updateCopy hasSet];
  if ((v44 & 0x400) != 0)
  {
    -[CXCallUpdate setFilteredOutReason:](self, "setFilteredOutReason:", [updateCopy filteredOutReason]);
  }

  [updateCopy hasSet];
  if ((v45 & 0x800) != 0)
  {
    silencingUserInfo = [updateCopy silencingUserInfo];
    [(CXCallUpdate *)self setSilencingUserInfo:silencingUserInfo];
  }

  [updateCopy hasSet];
  if ((v47 & 0x40000) != 0)
  {
    -[CXCallUpdate setScreenSharingType:](self, "setScreenSharingType:", [updateCopy screenSharingType]);
  }

  [updateCopy hasSet];
  if ((v48 & 0x80000) != 0)
  {
    -[CXCallUpdate setIsSharePlayCapable:](self, "setIsSharePlayCapable:", [updateCopy isSharePlayCapable]);
  }

  [updateCopy hasSet];
  if ((v49 & 0x100000) != 0)
  {
    -[CXCallUpdate setAnyRemoteSupportsRequestToScreenShare:](self, "setAnyRemoteSupportsRequestToScreenShare:", [updateCopy anyRemoteSupportsRequestToScreenShare]);
  }

  [updateCopy hasSet];
  if ((v50 & 0x200000) != 0)
  {
    -[CXCallUpdate setNearbyMode:](self, "setNearbyMode:", [updateCopy nearbyMode]);
  }

  [updateCopy hasSet];
  if ((v51 & 0x400000) != 0)
  {
    -[CXCallUpdate setCommTrustScore:](self, "setCommTrustScore:", [updateCopy commTrustScore]);
  }

  [updateCopy hasSet];
  if ((v52 & 0x800000) != 0)
  {
    -[CXCallUpdate setSpecialUnknown:](self, "setSpecialUnknown:", [updateCopy specialUnknown]);
  }

  [updateCopy hasSet];
  if ((v53 & 0x1000000) != 0)
  {
    conversationGroupUUID = [updateCopy conversationGroupUUID];
    [(CXCallUpdate *)self setConversationGroupUUID:conversationGroupUUID];
  }

  [updateCopy hasSet];
  if ((v55 & 0x4000000) != 0)
  {
    -[CXCallUpdate setShouldSilentlyRegisterIMAVCall:](self, "setShouldSilentlyRegisterIMAVCall:", [updateCopy shouldSilentlyRegisterIMAVCall]);
  }

  return result;
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  copyCopy = copy;
  uUID = [(CXCallUpdate *)self UUID];
  v7 = [uUID copyWithZone:zone];
  [copyCopy setUUID:v7];

  if (([(CXCallUpdate *)self hasSet]& 4) != 0)
  {
    *(copyCopy + 51) |= 4uLL;
    remoteMember = [(CXCallUpdate *)self remoteMember];
    v9 = [remoteMember copyWithZone:zone];
    [copyCopy setRemoteMember:v9];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000000000) != 0)
  {
    *(copyCopy + 51) |= 0x400000000000uLL;
    remoteParticipantHandles = [(CXCallUpdate *)self remoteParticipantHandles];
    v11 = [remoteParticipantHandles copyWithZone:zone];
    [copyCopy setRemoteParticipantHandles:v11];
  }

  if (([(CXCallUpdate *)self hasSet]& 8) != 0)
  {
    *(copyCopy + 51) |= 8uLL;
    localizedCallerName = [(CXCallUpdate *)self localizedCallerName];
    v13 = [localizedCallerName copyWithZone:zone];
    [copyCopy setLocalizedCallerName:v13];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000) != 0)
  {
    *(copyCopy + 51) |= 0x800000uLL;
    [copyCopy setSupportsHolding:{-[CXCallUpdate supportsHolding](self, "supportsHolding")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000) != 0)
  {
    *(copyCopy + 51) |= 0x1000000uLL;
    [copyCopy setSupportsGrouping:{-[CXCallUpdate supportsGrouping](self, "supportsGrouping")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000) != 0)
  {
    *(copyCopy + 51) |= 0x2000000uLL;
    [copyCopy setSupportsUngrouping:{-[CXCallUpdate supportsUngrouping](self, "supportsUngrouping")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000) != 0)
  {
    *(copyCopy + 51) |= 0x4000000uLL;
    [copyCopy setSupportsDTMF:{-[CXCallUpdate supportsDTMF](self, "supportsDTMF")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000000) != 0)
  {
    *(copyCopy + 51) |= 0x8000000uLL;
    [copyCopy setSupportsDTMFUpdates:{-[CXCallUpdate supportsDTMFUpdates](self, "supportsDTMFUpdates")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000000) != 0)
  {
    *(copyCopy + 51) |= 0x10000000uLL;
    [copyCopy setSupportsSharePlay:{-[CXCallUpdate supportsSharePlay](self, "supportsSharePlay")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000000) != 0)
  {
    *(copyCopy + 51) |= 0x20000000uLL;
    [copyCopy setSupportsScreenShare:{-[CXCallUpdate supportsScreenShare](self, "supportsScreenShare")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000) != 0)
  {
    *(copyCopy + 51) |= 0x2000uLL;
    [copyCopy setHasVideo:{-[CXCallUpdate hasVideo](self, "hasVideo")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000) != 0)
  {
    *(copyCopy + 51) |= 0x4000uLL;
    [copyCopy setIsUpgradeToVideo:{-[CXCallUpdate isUpgradeToVideo](self, "isUpgradeToVideo")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000000000000) != 0)
  {
    *(copyCopy + 51) |= 0x100000000000000uLL;
    [copyCopy setRequiresAuthentication:{-[CXCallUpdate requiresAuthentication](self, "requiresAuthentication")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v14 & 0x400000) != 0)
  {
    *(copyCopy + 104) |= 0x400000u;
    [copyCopy setCommTrustScore:{-[CXCallUpdate commTrustScore](self, "commTrustScore")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v15 & 0x800000) != 0)
  {
    *(copyCopy + 104) |= 0x800000u;
    [copyCopy setSpecialUnknown:{-[CXCallUpdate specialUnknown](self, "specialUnknown")}];
  }
}

- (id)sanitizedCopyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(CXCallUpdate *)self updateSanitizedCopy:v5 withZone:zone];

  return v5;
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  copyCopy = copy;
  [CXCallUpdate updateSanitizedCopy:"updateSanitizedCopy:withZone:" withZone:?];
  if (([(CXCallUpdate *)self hasSet]& 1) != 0)
  {
    copyCopy[51] |= 1uLL;
    account = [(CXCallUpdate *)self account];
    [copyCopy setAccount:account];
  }

  if (([(CXCallUpdate *)self hasSet]& 2) != 0)
  {
    copyCopy[51] |= 2uLL;
    activeRemoteParticipant = [(CXCallUpdate *)self activeRemoteParticipant];
    [copyCopy setActiveRemoteParticipant:activeRemoteParticipant];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20) != 0)
  {
    copyCopy[51] |= 0x20uLL;
    [copyCopy setEmergency:{-[CXCallUpdate isEmergency](self, "isEmergency")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40) != 0)
  {
    copyCopy[51] |= 0x40uLL;
    [copyCopy setFailureExpected:{-[CXCallUpdate isFailureExpected](self, "isFailureExpected")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80) != 0)
  {
    copyCopy[51] |= 0x80uLL;
    [copyCopy setSupportsEmergencyFallback:{-[CXCallUpdate supportsEmergencyFallback](self, "supportsEmergencyFallback")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100) != 0)
  {
    copyCopy[51] |= 0x100uLL;
    [copyCopy setUsingBaseband:{-[CXCallUpdate isUsingBaseband](self, "isUsingBaseband")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200) != 0)
  {
    copyCopy[51] |= 0x200uLL;
    [copyCopy setBlocked:{-[CXCallUpdate isBlocked](self, "isBlocked")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400) != 0)
  {
    copyCopy[51] |= 0x400uLL;
    [copyCopy setTTYType:{-[CXCallUpdate ttyType](self, "ttyType")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v8 & 4) != 0)
  {
    *(copyCopy + 104) |= 4u;
    [copyCopy setBluetoothAudioFormat:-[CXCallUpdate bluetoothAudioFormat](self, "bluetoothAudioFormat")];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000) != 0)
  {
    copyCopy[51] |= 0x1000uLL;
    [copyCopy setMayRequireBreakBeforeMake:{-[CXCallUpdate mayRequireBreakBeforeMake](self, "mayRequireBreakBeforeMake")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000) != 0)
  {
    copyCopy[51] |= 0x8000uLL;
    audioCategory = [(CXCallUpdate *)self audioCategory];
    v10 = [audioCategory copyWithZone:zone];
    [copyCopy setAudioCategory:v10];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000) != 0)
  {
    copyCopy[51] |= 0x10000uLL;
    audioMode = [(CXCallUpdate *)self audioMode];
    v12 = [audioMode copyWithZone:zone];
    [copyCopy setAudioMode:v12];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000) != 0)
  {
    copyCopy[51] |= 0x20000uLL;
    [copyCopy setAudioInterruptionProvider:{-[CXCallUpdate audioInterruptionProvider](self, "audioInterruptionProvider")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000) != 0)
  {
    copyCopy[51] |= 0x40000uLL;
    [copyCopy setAudioInterruptionOperationMode:{-[CXCallUpdate audioInterruptionOperationMode](self, "audioInterruptionOperationMode")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000) != 0)
  {
    copyCopy[51] |= 0x80000uLL;
    [copyCopy setVerificationStatus:{-[CXCallUpdate verificationStatus](self, "verificationStatus")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000) != 0)
  {
    copyCopy[51] |= 0x4000uLL;
    [copyCopy setIsUpgradeToVideo:{-[CXCallUpdate isUpgradeToVideo](self, "isUpgradeToVideo")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000) != 0)
  {
    copyCopy[51] |= 0x100000uLL;
    [copyCopy setPriority:{-[CXCallUpdate priority](self, "priority")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000) != 0)
  {
    copyCopy[51] |= 0x200000uLL;
    [copyCopy setRequiresInCallSounds:{-[CXCallUpdate requiresInCallSounds](self, "requiresInCallSounds")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000) != 0)
  {
    copyCopy[51] |= 0x400000uLL;
    [copyCopy setInCallSoundRegion:{-[CXCallUpdate inCallSoundRegion](self, "inCallSoundRegion")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000000) != 0)
  {
    copyCopy[51] |= 0x40000000uLL;
    [copyCopy setSupportsUnambiguousMultiPartyState:{-[CXCallUpdate supportsUnambiguousMultiPartyState](self, "supportsUnambiguousMultiPartyState")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000000) != 0)
  {
    copyCopy[51] |= 0x80000000uLL;
    [copyCopy setSupportsAddCall:{-[CXCallUpdate supportsAddCall](self, "supportsAddCall")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000000) != 0)
  {
    copyCopy[51] |= 0x100000000uLL;
    [copyCopy setSupportsSendingToVoicemail:{-[CXCallUpdate supportsSendingToVoicemail](self, "supportsSendingToVoicemail")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000000) != 0)
  {
    copyCopy[51] |= 0x200000000uLL;
    [copyCopy setSupportsRecording:{-[CXCallUpdate supportsRecording](self, "supportsRecording")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000000) != 0)
  {
    copyCopy[51] |= 0x400000000uLL;
    [copyCopy setIsUnderlyingLinksConnected:{-[CXCallUpdate isUnderlyingLinksConnected](self, "isUnderlyingLinksConnected")}];
  }

  [(CXCallUpdate *)self hasSet];
  if (v13 < 0)
  {
    *(copyCopy + 104) |= 0x8000u;
    [copyCopy setSupportsScreening:{-[CXCallUpdate supportsScreening](self, "supportsScreening")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v14 & 0x10000) != 0)
  {
    *(copyCopy + 104) |= 0x10000u;
    [copyCopy setSupportsRecents:{-[CXCallUpdate supportsRecents](self, "supportsRecents")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000000) != 0)
  {
    copyCopy[51] |= 0x800000000uLL;
    [copyCopy setVideoStreamToken:{-[CXCallUpdate videoStreamToken](self, "videoStreamToken")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000000) != 0)
  {
    copyCopy[51] |= 0x1000000000uLL;
    callTokens = [(CXCallUpdate *)self callTokens];
    [copyCopy setCallTokens:callTokens];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000000) != 0)
  {
    copyCopy[51] |= 0x2000000000uLL;
    announceProviderIdentifier = [(CXCallUpdate *)self announceProviderIdentifier];
    v17 = [announceProviderIdentifier copyWithZone:zone];
    [copyCopy setAnnounceProviderIdentifier:v17];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000000) != 0)
  {
    copyCopy[51] |= 0x4000000000uLL;
    initiator = [(CXCallUpdate *)self initiator];
    v19 = [initiator copyWithZone:zone];
    [copyCopy setInitiator:v19];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000000000) != 0)
  {
    copyCopy[51] |= 0x8000000000uLL;
    crossDeviceIdentifier = [(CXCallUpdate *)self crossDeviceIdentifier];
    v21 = [crossDeviceIdentifier copyWithZone:zone];
    [copyCopy setCrossDeviceIdentifier:v21];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000000000) != 0)
  {
    copyCopy[51] |= 0x10000000000uLL;
    iSOCountryCode = [(CXCallUpdate *)self ISOCountryCode];
    v23 = [iSOCountryCode copyWithZone:zone];
    [copyCopy setISOCountryCode:v23];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10) != 0)
  {
    copyCopy[51] |= 0x10uLL;
    localizedCallerImageURL = [(CXCallUpdate *)self localizedCallerImageURL];
    v25 = [localizedCallerImageURL copyWithZone:zone];
    [copyCopy setLocalizedCallerImageURL:v25];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000000000) != 0)
  {
    copyCopy[51] |= 0x20000000000uLL;
    localSenderIdentityUUID = [(CXCallUpdate *)self localSenderIdentityUUID];
    v27 = [localSenderIdentityUUID copyWithZone:zone];
    [copyCopy setLocalSenderIdentityUUID:v27];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000000000) != 0)
  {
    copyCopy[51] |= 0x40000000000uLL;
    localSenderIdentityAccountUUID = [(CXCallUpdate *)self localSenderIdentityAccountUUID];
    v29 = [localSenderIdentityAccountUUID copyWithZone:zone];
    [copyCopy setLocalSenderIdentityAccountUUID:v29];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000000000) != 0)
  {
    copyCopy[51] |= 0x80000000000uLL;
    localMemberHandleValue = [(CXCallUpdate *)self localMemberHandleValue];
    v31 = [localMemberHandleValue copyWithZone:zone];
    [copyCopy setLocalMemberHandleValue:v31];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000000000) != 0)
  {
    copyCopy[51] |= 0x100000000000uLL;
    localSenderSubscriptionIdentifier = [(CXCallUpdate *)self localSenderSubscriptionIdentifier];
    v33 = [localSenderSubscriptionIdentifier copyWithZone:zone];
    [copyCopy setLocalSenderSubscriptionIdentifier:v33];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000000000) != 0)
  {
    copyCopy[51] |= 0x200000000000uLL;
    participantGroupUUID = [(CXCallUpdate *)self participantGroupUUID];
    v35 = [participantGroupUUID copyWithZone:zone];
    [copyCopy setParticipantGroupUUID:v35];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000000000) != 0)
  {
    copyCopy[51] |= 0x400000000000uLL;
    remoteParticipantHandles = [(CXCallUpdate *)self remoteParticipantHandles];
    v37 = [remoteParticipantHandles copyWithZone:zone];
    [copyCopy setRemoteParticipantHandles:v37];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000000000) != 0)
  {
    copyCopy[51] |= 0x800000000000uLL;
    otherInvitedHandles = [(CXCallUpdate *)self otherInvitedHandles];
    v39 = [otherInvitedHandles copyWithZone:zone];
    [copyCopy setOtherInvitedHandles:v39];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000000000) != 0)
  {
    copyCopy[51] |= 0x1000000000000uLL;
    activeRemoteParticipantHandles = [(CXCallUpdate *)self activeRemoteParticipantHandles];
    v41 = [activeRemoteParticipantHandles copyWithZone:zone];
    [copyCopy setActiveRemoteParticipantHandles:v41];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000000000) != 0)
  {
    copyCopy[51] |= 0x2000000000000uLL;
    handoffContext = [(CXCallUpdate *)self handoffContext];
    [copyCopy setHandoffContext:handoffContext];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000000000) != 0)
  {
    copyCopy[51] |= 0x4000000000000uLL;
    screenShareAttributes = [(CXCallUpdate *)self screenShareAttributes];
    [copyCopy setScreenShareAttributes:screenShareAttributes];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000000000000) != 0)
  {
    copyCopy[51] |= 0x8000000000000uLL;
    context = [(CXCallUpdate *)self context];
    v45 = [context copyWithZone:zone];
    [copyCopy setContext:v45];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000000000000) != 0)
  {
    copyCopy[51] |= 0x10000000000000uLL;
    [copyCopy setPrefersExclusiveAccessToCellularNetwork:{-[CXCallUpdate prefersExclusiveAccessToCellularNetwork](self, "prefersExclusiveAccessToCellularNetwork")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800) != 0)
  {
    copyCopy[51] |= 0x800uLL;
    [copyCopy setSupportsTTYWithVoice:{-[CXCallUpdate supportsTTYWithVoice](self, "supportsTTYWithVoice")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000000000000) != 0)
  {
    copyCopy[51] |= 0x20000000000000uLL;
    [copyCopy setRemoteUplinkMuted:{-[CXCallUpdate isRemoteUplinkMuted](self, "isRemoteUplinkMuted")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000000000000) != 0)
  {
    copyCopy[51] |= 0x40000000000000uLL;
    [copyCopy setShouldSuppressInCallUI:{-[CXCallUpdate shouldSuppressInCallUI](self, "shouldSuppressInCallUI")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v46 & 0x2000000) != 0)
  {
    *(copyCopy + 104) |= 0x2000000u;
    [copyCopy setStartCallMuted:{-[CXCallUpdate startCallMuted](self, "startCallMuted")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000000000000) != 0)
  {
    copyCopy[51] |= 0x80000000000000uLL;
    [copyCopy setLaunchInBackground:{-[CXCallUpdate launchInBackground](self, "launchInBackground")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000000000000) != 0)
  {
    copyCopy[51] |= 0x100000000000000uLL;
    [copyCopy setRequiresAuthentication:{-[CXCallUpdate requiresAuthentication](self, "requiresAuthentication")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000000000000) != 0)
  {
    copyCopy[51] |= 0x200000000000000uLL;
    [copyCopy setMutuallyExclusiveCall:{-[CXCallUpdate isMutuallyExclusiveCall](self, "isMutuallyExclusiveCall")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000000000000) != 0)
  {
    copyCopy[51] |= 0x400000000000000uLL;
    [copyCopy setJunkConfidence:{-[CXCallUpdate junkConfidence](self, "junkConfidence")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v47 & 0x4000) != 0)
  {
    *(copyCopy + 104) |= 0x4000u;
    [copyCopy setCallSubType:{-[CXCallUpdate callSubType](self, "callSubType")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000000000000) != 0)
  {
    copyCopy[51] |= 0x800000000000000uLL;
    [copyCopy setIdentificationCategory:{-[CXCallUpdate identificationCategory](self, "identificationCategory")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000000000000) != 0)
  {
    copyCopy[51] |= 0x1000000000000000uLL;
    [copyCopy setConversation:{-[CXCallUpdate isConversation](self, "isConversation")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000000000000) != 0)
  {
    copyCopy[51] |= 0x2000000000000000uLL;
    [copyCopy setMixesVoiceWithMedia:{-[CXCallUpdate mixesVoiceWithMedia](self, "mixesVoiceWithMedia")}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000000000000) != 0)
  {
    copyCopy[51] |= 0x4000000000000000uLL;
    [copyCopy setPrefersToPlayDuringWombat:{-[CXCallUpdate prefersToPlayDuringWombat](self, "prefersToPlayDuringWombat")}];
  }

  if ([(CXCallUpdate *)self hasSet]< 0)
  {
    copyCopy[51] |= 0x8000000000000000;
    [copyCopy setMediaPlaybackOnExternalDevice:{-[CXCallUpdate mediaPlaybackOnExternalDevice](self, "mediaPlaybackOnExternalDevice")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v48 & 8) != 0)
  {
    *(copyCopy + 104) |= 8u;
    [copyCopy setIgnoresBluetoothDeviceUID:{-[CXCallUpdate ignoresBluetoothDeviceUID](self, "ignoresBluetoothDeviceUID")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v49 & 2) != 0)
  {
    *(copyCopy + 104) |= 2u;
    [copyCopy setSharingScreen:{-[CXCallUpdate isSharingScreen](self, "isSharingScreen")}];
  }

  [(CXCallUpdate *)self hasSet];
  if (v50)
  {
    *(copyCopy + 104) |= 1u;
    [copyCopy setOneToOneModeEnabled:{-[CXCallUpdate isOneToOneModeEnabled](self, "isOneToOneModeEnabled")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v51 & 0x10) != 0)
  {
    *(copyCopy + 104) |= 0x10u;
    [copyCopy setServiceStatus:{-[CXCallUpdate serviceStatus](self, "serviceStatus")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v52 & 0x20) != 0)
  {
    *(copyCopy + 104) |= 0x20u;
    [copyCopy setTransmissionMode:{-[CXCallUpdate transmissionMode](self, "transmissionMode")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v53 & 0x40) != 0)
  {
    *(copyCopy + 104) |= 0x40u;
    [copyCopy setAccessoryButtonEventsEnabled:{-[CXCallUpdate accessoryButtonEventsEnabled](self, "accessoryButtonEventsEnabled")}];
  }

  [(CXCallUpdate *)self hasSet];
  if (v54 < 0)
  {
    *(copyCopy + 104) |= 0x80u;
    [copyCopy setSendingVideo:{-[CXCallUpdate isSendingVideo](self, "isSendingVideo")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v55 & 0x1000) != 0)
  {
    *(copyCopy + 104) |= 0x1000u;
    [copyCopy setIsReRing:{-[CXCallUpdate isReRing](self, "isReRing")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v56 & 0x2000) != 0)
  {
    *(copyCopy + 104) |= 0x2000u;
    [copyCopy setSuppressRingtone:{-[CXCallUpdate suppressRingtone](self, "suppressRingtone")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v57 & 0x100) != 0)
  {
    *(copyCopy + 104) |= 0x100u;
    [copyCopy setHasBeenRedirected:{-[CXCallUpdate hasBeenRedirected](self, "hasBeenRedirected")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v58 & 0x200) != 0)
  {
    *(copyCopy + 104) |= 0x200u;
    [copyCopy setIsKnownCaller:{-[CXCallUpdate isKnownCaller](self, "isKnownCaller")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v59 & 0x400) != 0)
  {
    *(copyCopy + 104) |= 0x400u;
    [copyCopy setFilteredOutReason:{-[CXCallUpdate filteredOutReason](self, "filteredOutReason")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v60 & 0x800) != 0)
  {
    *(copyCopy + 104) |= 0x800u;
    silencingUserInfo = [(CXCallUpdate *)self silencingUserInfo];
    [copyCopy setSilencingUserInfo:silencingUserInfo];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v62 & 0x20000) != 0)
  {
    *(copyCopy + 104) |= 0x20000u;
    [copyCopy setScreenSharingIntention:{-[CXCallUpdate screenSharingIntention](self, "screenSharingIntention")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v63 & 0x40000) != 0)
  {
    *(copyCopy + 104) |= 0x40000u;
    [copyCopy setScreenSharingType:{-[CXCallUpdate screenSharingType](self, "screenSharingType")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v64 & 0x80000) != 0)
  {
    *(copyCopy + 104) |= 0x80000u;
    [copyCopy setIsSharePlayCapable:{-[CXCallUpdate isSharePlayCapable](self, "isSharePlayCapable")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v65 & 0x100000) != 0)
  {
    *(copyCopy + 104) |= 0x100000u;
    [copyCopy setAnyRemoteSupportsRequestToScreenShare:{-[CXCallUpdate anyRemoteSupportsRequestToScreenShare](self, "anyRemoteSupportsRequestToScreenShare")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v66 & 0x200000) != 0)
  {
    *(copyCopy + 104) |= 0x200000u;
    [copyCopy setNearbyMode:{-[CXCallUpdate nearbyMode](self, "nearbyMode")}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v67 & 0x1000000) != 0)
  {
    *(copyCopy + 104) |= 0x1000000u;
    conversationGroupUUID = [(CXCallUpdate *)self conversationGroupUUID];
    v69 = [conversationGroupUUID copyWithZone:zone];
    [copyCopy setConversationGroupUUID:v69];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(CXCallUpdate *)self updateCopy:v5 withZone:zone];
  return v5;
}

- (CXCallUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CXCallUpdate *)self init];

  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_UUID);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    UUID = v5->_UUID;
    v5->_UUID = v8;

    v132 = 0;
    v10 = coderCopy;
    v11 = NSStringFromSelector(sel_hasSet);
    v12 = [coderCopy decodeBytesForKey:v11 returnedLength:&v132];

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
      v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"account"];
      account = v5->_account;
      v5->_account = v15;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 2) != 0)
    {
      v17 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"activeRemoteParticipant"];
      activeRemoteParticipant = v5->_activeRemoteParticipant;
      v5->_activeRemoteParticipant = v18;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 4) != 0)
    {
      v20 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"remoteMember"];
      remoteMember = v5->_remoteMember;
      v5->_remoteMember = v21;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 8) != 0)
    {
      v23 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"localizedCallerName"];
      localizedCallerName = v5->_localizedCallerName;
      v5->_localizedCallerName = v24;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x10) != 0)
    {
      v26 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"localizedCallerImageURL"];
      localizedCallerImageURL = v5->_localizedCallerImageURL;
      v5->_localizedCallerImageURL = v27;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x20) != 0)
    {
      v5->_emergency = [coderCopy decodeBoolForKey:@"emergency"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x40) != 0)
    {
      v5->_failureExpected = [coderCopy decodeBoolForKey:@"failureExpected"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x80) != 0)
    {
      v5->_supportsEmergencyFallback = [coderCopy decodeBoolForKey:@"supportsEmergencyFallback"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x100) != 0)
    {
      v5->_usingBaseband = [coderCopy decodeBoolForKey:@"usingBaseband"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x200) != 0)
    {
      v5->_blocked = [coderCopy decodeBoolForKey:@"blocked"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x400) != 0)
    {
      v5->_ttyType = [coderCopy decodeIntegerForKey:@"ttyType"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v29 & 4) != 0)
    {
      v5->_bluetoothAudioFormat = [coderCopy decodeIntegerForKey:@"bluetoothAudioFormat"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x1000) != 0)
    {
      v5->_mayRequireBreakBeforeMake = [coderCopy decodeBoolForKey:@"mayRequireBreakBeforeMake"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x2000) != 0)
    {
      v5->_hasVideo = [coderCopy decodeBoolForKey:@"hasVideo"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x4000) != 0)
    {
      v5->_isUpgradeToVideo = [coderCopy decodeBoolForKey:@"isUpgradeToVideo"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x8000) != 0)
    {
      v30 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"audioCategory"];
      audioCategory = v5->_audioCategory;
      v5->_audioCategory = v31;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x10000) != 0)
    {
      v33 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"audioMode"];
      audioMode = v5->_audioMode;
      v5->_audioMode = v34;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x20000) != 0)
    {
      v5->_audioInterruptionProvider = [coderCopy decodeIntegerForKey:@"audioInterruptionProvider"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x40000) != 0)
    {
      v5->_audioInterruptionOperationMode = [coderCopy decodeIntegerForKey:@"audioInterruptionOperationMode"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x80000) != 0)
    {
      v5->_verificationStatus = [coderCopy decodeIntegerForKey:@"verificationStatus"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x100000) != 0)
    {
      v5->_priority = [coderCopy decodeIntegerForKey:@"priority"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x200000) != 0)
    {
      v5->_requiresInCallSounds = [coderCopy decodeBoolForKey:@"requiresInCallSounds"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x400000) != 0)
    {
      v5->_inCallSoundRegion = [coderCopy decodeIntegerForKey:@"inCallSoundRegion"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x800000) != 0)
    {
      v5->_supportsHolding = [coderCopy decodeBoolForKey:@"supportsHolding"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x1000000) != 0)
    {
      v5->_supportsGrouping = [coderCopy decodeBoolForKey:@"supportsGrouping"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x2000000) != 0)
    {
      v5->_supportsUngrouping = [coderCopy decodeBoolForKey:@"supportsUngrouping"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x4000000) != 0)
    {
      v5->_supportsDTMF = [coderCopy decodeBoolForKey:@"supportsDTMF"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x8000000) != 0)
    {
      v5->_supportsDTMFUpdates = [coderCopy decodeBoolForKey:@"supportsDTMFUpdates"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x10000000) != 0)
    {
      v5->_supportsSharePlay = [coderCopy decodeBoolForKey:@"supportsSharePlay"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x20000000) != 0)
    {
      v5->_supportsScreenShare = [coderCopy decodeBoolForKey:@"supportsScreenShare"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x40000000) != 0)
    {
      v5->_supportsUnambiguousMultiPartyState = [coderCopy decodeBoolForKey:@"supportsUnambiguousMultiPartyState"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x80000000) != 0)
    {
      v5->_supportsAddCall = [coderCopy decodeBoolForKey:@"supportsAddCall"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x100000000) != 0)
    {
      v5->_supportsSendingToVoicemail = [coderCopy decodeBoolForKey:@"supportsSendingToVoicemail"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x200000000) != 0)
    {
      v5->_supportsRecording = [coderCopy decodeBoolForKey:@"supportsRecording"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x400000000) != 0)
    {
      v5->_isUnderlyingLinksConnected = [coderCopy decodeBoolForKey:@"isUnderlyingLinksConnected"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if (v36 < 0)
    {
      v5->_supportsScreening = [coderCopy decodeBoolForKey:@"supportsScreening"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v37 & 0x10000) != 0)
    {
      v5->_supportsRecents = [coderCopy decodeBoolForKey:@"supportsRecents"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x800000000) != 0)
    {
      v5->_videoStreamToken = [coderCopy decodeIntegerForKey:@"videoStreamToken"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x1000000000) != 0)
    {
      v38 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"callTokens"];
      callTokens = v5->_callTokens;
      v5->_callTokens = v39;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x2000000000) != 0)
    {
      v41 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v42 = [coderCopy decodeObjectOfClasses:v41 forKey:@"announceProviderIdentifier"];
      announceProviderIdentifier = v5->_announceProviderIdentifier;
      v5->_announceProviderIdentifier = v42;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x4000000000) != 0)
    {
      v44 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v45 = [coderCopy decodeObjectOfClasses:v44 forKey:@"initiator"];
      initiator = v5->_initiator;
      v5->_initiator = v45;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x8000000000) != 0)
    {
      v47 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v48 = [coderCopy decodeObjectOfClasses:v47 forKey:@"crossDeviceIdentifier"];
      crossDeviceIdentifier = v5->_crossDeviceIdentifier;
      v5->_crossDeviceIdentifier = v48;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x10000000000) != 0)
    {
      v50 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v51 = [coderCopy decodeObjectOfClasses:v50 forKey:@"ISOCountryCode"];
      ISOCountryCode = v5->_ISOCountryCode;
      v5->_ISOCountryCode = v51;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x20000000000) != 0)
    {
      v53 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v54 = [coderCopy decodeObjectOfClasses:v53 forKey:@"localSenderIdentityUUID"];
      localSenderIdentityUUID = v5->_localSenderIdentityUUID;
      v5->_localSenderIdentityUUID = v54;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x40000000000) != 0)
    {
      v56 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v57 = [coderCopy decodeObjectOfClasses:v56 forKey:@"localSenderIdentityAccountUUID"];
      localSenderIdentityAccountUUID = v5->_localSenderIdentityAccountUUID;
      v5->_localSenderIdentityAccountUUID = v57;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x80000000000) != 0)
    {
      v59 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v60 = [coderCopy decodeObjectOfClasses:v59 forKey:@"localMemberHandleValue"];
      localMemberHandleValue = v5->_localMemberHandleValue;
      v5->_localMemberHandleValue = v60;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x100000000000) != 0)
    {
      v62 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v63 = [coderCopy decodeObjectOfClasses:v62 forKey:@"localSenderSubscriptionIdentifier"];
      localSenderSubscriptionIdentifier = v5->_localSenderSubscriptionIdentifier;
      v5->_localSenderSubscriptionIdentifier = v63;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x200000000000) != 0)
    {
      v65 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v66 = [coderCopy decodeObjectOfClasses:v65 forKey:@"participantGroupUUID"];
      participantGroupUUID = v5->_participantGroupUUID;
      v5->_participantGroupUUID = v66;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x400000000000) != 0)
    {
      v68 = MEMORY[0x1E695DFD8];
      v69 = objc_opt_class();
      v70 = [v68 setWithObjects:{v69, objc_opt_class(), 0}];
      v71 = [coderCopy decodeObjectOfClasses:v70 forKey:@"remoteParticipantHandles"];
      remoteParticipantHandles = v5->_remoteParticipantHandles;
      v5->_remoteParticipantHandles = v71;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x800000000000) != 0)
    {
      v73 = MEMORY[0x1E695DFD8];
      v74 = objc_opt_class();
      v75 = [v73 setWithObjects:{v74, objc_opt_class(), 0}];
      v76 = [coderCopy decodeObjectOfClasses:v75 forKey:@"otherInvitedHandles"];
      otherInvitedHandles = v5->_otherInvitedHandles;
      v5->_otherInvitedHandles = v76;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x1000000000000) != 0)
    {
      v78 = MEMORY[0x1E695DFD8];
      v79 = objc_opt_class();
      v80 = [v78 setWithObjects:{v79, objc_opt_class(), 0}];
      v81 = [coderCopy decodeObjectOfClasses:v80 forKey:@"activeRemoteParticipantHandles"];
      activeRemoteParticipantHandles = v5->_activeRemoteParticipantHandles;
      v5->_activeRemoteParticipantHandles = v81;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x2000000000000) != 0)
    {
      v83 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v84 = [coderCopy decodeObjectOfClasses:v83 forKey:@"handoffContext"];
      handoffContext = v5->_handoffContext;
      v5->_handoffContext = v84;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x4000000000000) != 0)
    {
      v86 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v87 = [coderCopy decodeObjectOfClasses:v86 forKey:@"screenShareAttributes"];
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
      v95 = [coderCopy decodeObjectOfClasses:v94 forKey:@"context"];
      context = v5->_context;
      v5->_context = v95;
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x10000000000000) != 0)
    {
      v5->_prefersExclusiveAccessToCellularNetwork = [coderCopy decodeBoolForKey:@"prefersExclusiveAccessToCellularNetwork"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x800) != 0)
    {
      v5->_supportsTTYWithVoice = [coderCopy decodeBoolForKey:@"supportsTTYWithVoice"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x20000000000000) != 0)
    {
      v5->_remoteUplinkMuted = [coderCopy decodeBoolForKey:@"remoteUplinkMuted"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x40000000000000) != 0)
    {
      v5->_shouldSuppressInCallUI = [coderCopy decodeBoolForKey:@"shouldSuppressInCallUI"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v97 & 0x2000000) != 0)
    {
      v5->_startCallMuted = [coderCopy decodeBoolForKey:@"startCallMuted"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x80000000000000) != 0)
    {
      v5->_launchInBackground = [coderCopy decodeBoolForKey:@"launchInBackground"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x100000000000000) != 0)
    {
      v5->_requiresAuthentication = [coderCopy decodeBoolForKey:@"requiresAuthentication"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x200000000000000) != 0)
    {
      v5->_mutuallyExclusiveCall = [coderCopy decodeBoolForKey:@"mutuallyExclusiveCall"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x400000000000000) != 0)
    {
      v5->_junkConfidence = [coderCopy decodeIntegerForKey:@"junkConfidence"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v98 & 0x4000) != 0)
    {
      v5->_callSubType = [coderCopy decodeIntegerForKey:@"callSubType"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x800000000000000) != 0)
    {
      v5->_identificationCategory = [coderCopy decodeIntegerForKey:@"identificationCategory"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x1000000000000000) != 0)
    {
      v5->_conversation = [coderCopy decodeBoolForKey:@"conversation"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x2000000000000000) != 0)
    {
      v5->_mixesVoiceWithMedia = [coderCopy decodeBoolForKey:@"mixesVoiceWithMedia"];
    }

    if (([(CXCallUpdate *)v5 hasSet]& 0x4000000000000000) != 0)
    {
      v5->_prefersToPlayDuringWombat = [coderCopy decodeBoolForKey:@"prefersToPlayDuringWombat"];
    }

    if ([(CXCallUpdate *)v5 hasSet]< 0)
    {
      v5->_mediaPlaybackOnExternalDevice = [coderCopy decodeBoolForKey:@"mediaPlaybackOnExternalDevice"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v99 & 8) != 0)
    {
      v5->_ignoresBluetoothDeviceUID = [coderCopy decodeBoolForKey:@"ignoresBluetoothDeviceUID"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v100 & 2) != 0)
    {
      v5->_sharingScreen = [coderCopy decodeBoolForKey:@"sharingScreen"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v101 & 0x10) != 0)
    {
      v5->_serviceStatus = [coderCopy decodeIntegerForKey:@"serviceStatus"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v102 & 0x20) != 0)
    {
      v5->_transmissionMode = [coderCopy decodeIntegerForKey:@"transmissionMode"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v103 & 0x40) != 0)
    {
      v5->_accessoryButtonEventsEnabled = [coderCopy decodeBoolForKey:@"accessoryButtonEventsEnabled"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if (v104 < 0)
    {
      v5->_sendingVideo = [coderCopy decodeBoolForKey:@"sendingVideo"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v105 & 0x1000) != 0)
    {
      v5->_isReRing = [coderCopy decodeBoolForKey:@"isReRing"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v106 & 0x2000) != 0)
    {
      v5->_suppressRingtone = [coderCopy decodeBoolForKey:@"suppressRingtone"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v107 & 0x100) != 0)
    {
      v5->_hasBeenRedirected = [coderCopy decodeBoolForKey:@"hasBeenRedirected"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v108 & 0x200) != 0)
    {
      v5->_isKnownCaller = [coderCopy decodeBoolForKey:@"isKnownCaller"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v109 & 0x400) != 0)
    {
      v5->_filteredOutReason = [coderCopy decodeIntegerForKey:@"filteredOutReason"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v110 & 0x800) != 0)
    {
      v111 = MEMORY[0x1E695DFD8];
      v112 = objc_opt_class();
      v113 = objc_opt_class();
      v114 = [v111 setWithObjects:{v112, v113, objc_opt_class(), 0}];
      v115 = [coderCopy decodeObjectOfClasses:v114 forKey:@"silencingUserInfo"];
      silencingUserInfo = v5->_silencingUserInfo;
      v5->_silencingUserInfo = v115;
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v117 & 0x20000) != 0)
    {
      v5->_screenSharingIntention = [coderCopy decodeIntegerForKey:@"screenSharingIntention"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v118 & 0x40000) != 0)
    {
      v5->_screenSharingType = [coderCopy decodeIntegerForKey:@"screenSharingType"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v119 & 0x80000) != 0)
    {
      v5->_isSharePlayCapable = [coderCopy decodeBoolForKey:@"isSharePlayCapable"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v120 & 0x100000) != 0)
    {
      v5->_anyRemoteSupportsRequestToScreenShare = [coderCopy decodeBoolForKey:@"anyRemoteSupportsRequestToScreenShare"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v121 & 0x200000) != 0)
    {
      v5->_nearbyMode = [coderCopy decodeBoolForKey:@"nearbyMode"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v122 & 0x400000) != 0)
    {
      v5->_commTrustScore = [coderCopy decodeIntegerForKey:@"commTrustScore"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v123 & 0x800000) != 0)
    {
      v5->_specialUnknown = [coderCopy decodeBoolForKey:@"specialUnknown"];
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v124 & 0x1000000) != 0)
    {
      v125 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v126 = [coderCopy decodeObjectOfClasses:v125 forKey:@"conversationGroupUUID"];
      conversationGroupUUID = v5->_conversationGroupUUID;
      v5->_conversationGroupUUID = v126;
    }

    [(CXCallUpdate *)v5 hasSet];
    if ((v128 & 0x4000000) != 0)
    {
      v5->_shouldSilentlyRegisterIMAVCall = [coderCopy decodeBoolForKey:@"shouldSilentlyRegisterIMAVCall"];
    }
  }

  v129 = v5;
LABEL_185:

  return v129;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(CXCallUpdate *)self UUID];
  v5 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v5];

  v6 = NSStringFromSelector(sel_hasSet);
  [coderCopy encodeBytes:&self->_hasSet length:12 forKey:v6];

  if (([(CXCallUpdate *)self hasSet]& 1) != 0)
  {
    account = [(CXCallUpdate *)self account];
    [coderCopy encodeObject:account forKey:@"account"];
  }

  if (([(CXCallUpdate *)self hasSet]& 2) != 0)
  {
    activeRemoteParticipant = [(CXCallUpdate *)self activeRemoteParticipant];
    [coderCopy encodeObject:activeRemoteParticipant forKey:@"activeRemoteParticipant"];
  }

  if (([(CXCallUpdate *)self hasSet]& 4) != 0)
  {
    remoteMember = [(CXCallUpdate *)self remoteMember];
    [coderCopy encodeObject:remoteMember forKey:@"remoteMember"];
  }

  if (([(CXCallUpdate *)self hasSet]& 8) != 0)
  {
    localizedCallerName = [(CXCallUpdate *)self localizedCallerName];
    [coderCopy encodeObject:localizedCallerName forKey:@"localizedCallerName"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10) != 0)
  {
    localizedCallerImageURL = [(CXCallUpdate *)self localizedCallerImageURL];
    [coderCopy encodeObject:localizedCallerImageURL forKey:@"localizedCallerImageURL"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate isEmergency](self forKey:{"isEmergency"), @"emergency"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate isFailureExpected](self forKey:{"isFailureExpected"), @"failureExpected"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate supportsEmergencyFallback](self forKey:{"supportsEmergencyFallback"), @"supportsEmergencyFallback"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate isUsingBaseband](self forKey:{"isUsingBaseband"), @"usingBaseband"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate isBlocked](self forKey:{"isBlocked"), @"blocked"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400) != 0)
  {
    [coderCopy encodeInteger:-[CXCallUpdate ttyType](self forKey:{"ttyType"), @"ttyType"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v12 & 4) != 0)
  {
    [coderCopy encodeInteger:-[CXCallUpdate bluetoothAudioFormat](self forKey:{"bluetoothAudioFormat"), @"bluetoothAudioFormat"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate mayRequireBreakBeforeMake](self forKey:{"mayRequireBreakBeforeMake"), @"mayRequireBreakBeforeMake"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate hasVideo](self forKey:{"hasVideo"), @"hasVideo"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate isUpgradeToVideo](self forKey:{"isUpgradeToVideo"), @"isUpgradeToVideo"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000) != 0)
  {
    audioCategory = [(CXCallUpdate *)self audioCategory];
    [coderCopy encodeObject:audioCategory forKey:@"audioCategory"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000) != 0)
  {
    audioMode = [(CXCallUpdate *)self audioMode];
    [coderCopy encodeObject:audioMode forKey:@"audioMode"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000) != 0)
  {
    [coderCopy encodeInteger:-[CXCallUpdate audioInterruptionProvider](self forKey:{"audioInterruptionProvider"), @"audioInterruptionProvider"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000) != 0)
  {
    [coderCopy encodeInteger:-[CXCallUpdate audioInterruptionOperationMode](self forKey:{"audioInterruptionOperationMode"), @"audioInterruptionOperationMode"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000) != 0)
  {
    [coderCopy encodeInteger:-[CXCallUpdate verificationStatus](self forKey:{"verificationStatus"), @"verificationStatus"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000) != 0)
  {
    [coderCopy encodeInteger:-[CXCallUpdate priority](self forKey:{"priority"), @"priority"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate requiresInCallSounds](self forKey:{"requiresInCallSounds"), @"requiresInCallSounds"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000) != 0)
  {
    [coderCopy encodeInteger:-[CXCallUpdate inCallSoundRegion](self forKey:{"inCallSoundRegion"), @"inCallSoundRegion"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate supportsHolding](self forKey:{"supportsHolding"), @"supportsHolding"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate supportsGrouping](self forKey:{"supportsGrouping"), @"supportsGrouping"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate supportsUngrouping](self forKey:{"supportsUngrouping"), @"supportsUngrouping"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate supportsDTMF](self forKey:{"supportsDTMF"), @"supportsDTMF"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate supportsDTMFUpdates](self forKey:{"supportsDTMFUpdates"), @"supportsDTMFUpdates"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate supportsSharePlay](self forKey:{"supportsSharePlay"), @"supportsSharePlay"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate supportsScreenShare](self forKey:{"supportsScreenShare"), @"supportsScreenShare"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate supportsUnambiguousMultiPartyState](self forKey:{"supportsUnambiguousMultiPartyState"), @"supportsUnambiguousMultiPartyState"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate supportsAddCall](self forKey:{"supportsAddCall"), @"supportsAddCall"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate supportsSendingToVoicemail](self forKey:{"supportsSendingToVoicemail"), @"supportsSendingToVoicemail"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate supportsRecording](self forKey:{"supportsRecording"), @"supportsRecording"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate isUnderlyingLinksConnected](self forKey:{"isUnderlyingLinksConnected"), @"isUnderlyingLinksConnected"}];
  }

  [(CXCallUpdate *)self hasSet];
  if (v15 < 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate supportsScreening](self forKey:{"supportsScreening"), @"supportsScreening"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v16 & 0x10000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate supportsRecents](self forKey:{"supportsRecents"), @"supportsRecents"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000000) != 0)
  {
    [coderCopy encodeInteger:-[CXCallUpdate videoStreamToken](self forKey:{"videoStreamToken"), @"videoStreamToken"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000000) != 0)
  {
    callTokens = [(CXCallUpdate *)self callTokens];
    [coderCopy encodeObject:callTokens forKey:@"callTokens"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000000) != 0)
  {
    announceProviderIdentifier = [(CXCallUpdate *)self announceProviderIdentifier];
    [coderCopy encodeObject:announceProviderIdentifier forKey:@"announceProviderIdentifier"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000000) != 0)
  {
    initiator = [(CXCallUpdate *)self initiator];
    [coderCopy encodeObject:initiator forKey:@"initiator"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000000000) != 0)
  {
    crossDeviceIdentifier = [(CXCallUpdate *)self crossDeviceIdentifier];
    [coderCopy encodeObject:crossDeviceIdentifier forKey:@"crossDeviceIdentifier"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000000000) != 0)
  {
    iSOCountryCode = [(CXCallUpdate *)self ISOCountryCode];
    [coderCopy encodeObject:iSOCountryCode forKey:@"ISOCountryCode"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000000000) != 0)
  {
    localSenderIdentityUUID = [(CXCallUpdate *)self localSenderIdentityUUID];
    [coderCopy encodeObject:localSenderIdentityUUID forKey:@"localSenderIdentityUUID"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000000000) != 0)
  {
    localSenderIdentityAccountUUID = [(CXCallUpdate *)self localSenderIdentityAccountUUID];
    [coderCopy encodeObject:localSenderIdentityAccountUUID forKey:@"localSenderIdentityAccountUUID"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000000000) != 0)
  {
    localMemberHandleValue = [(CXCallUpdate *)self localMemberHandleValue];
    [coderCopy encodeObject:localMemberHandleValue forKey:@"localMemberHandleValue"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000000000) != 0)
  {
    localSenderSubscriptionIdentifier = [(CXCallUpdate *)self localSenderSubscriptionIdentifier];
    [coderCopy encodeObject:localSenderSubscriptionIdentifier forKey:@"localSenderSubscriptionIdentifier"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000000000) != 0)
  {
    participantGroupUUID = [(CXCallUpdate *)self participantGroupUUID];
    [coderCopy encodeObject:participantGroupUUID forKey:@"participantGroupUUID"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000000000) != 0)
  {
    remoteParticipantHandles = [(CXCallUpdate *)self remoteParticipantHandles];
    [coderCopy encodeObject:remoteParticipantHandles forKey:@"remoteParticipantHandles"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000000000) != 0)
  {
    otherInvitedHandles = [(CXCallUpdate *)self otherInvitedHandles];
    [coderCopy encodeObject:otherInvitedHandles forKey:@"otherInvitedHandles"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000000000) != 0)
  {
    activeRemoteParticipantHandles = [(CXCallUpdate *)self activeRemoteParticipantHandles];
    [coderCopy encodeObject:activeRemoteParticipantHandles forKey:@"activeRemoteParticipantHandles"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000000000) != 0)
  {
    handoffContext = [(CXCallUpdate *)self handoffContext];
    [coderCopy encodeObject:handoffContext forKey:@"handoffContext"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000000000) != 0)
  {
    screenShareAttributes = [(CXCallUpdate *)self screenShareAttributes];
    [coderCopy encodeObject:screenShareAttributes forKey:@"screenShareAttributes"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x8000000000000) != 0)
  {
    context = [(CXCallUpdate *)self context];
    [coderCopy encodeObject:context forKey:@"context"];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x10000000000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate prefersExclusiveAccessToCellularNetwork](self forKey:{"prefersExclusiveAccessToCellularNetwork"), @"prefersExclusiveAccessToCellularNetwork"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate supportsTTYWithVoice](self forKey:{"supportsTTYWithVoice"), @"supportsTTYWithVoice"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x20000000000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate isRemoteUplinkMuted](self forKey:{"isRemoteUplinkMuted"), @"remoteUplinkMuted"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x40000000000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate shouldSuppressInCallUI](self forKey:{"shouldSuppressInCallUI"), @"shouldSuppressInCallUI"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v33 & 0x2000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate startCallMuted](self forKey:{"startCallMuted"), @"startCallMuted"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x80000000000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate launchInBackground](self forKey:{"launchInBackground"), @"launchInBackground"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x100000000000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate requiresAuthentication](self forKey:{"requiresAuthentication"), @"requiresAuthentication"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x200000000000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate isMutuallyExclusiveCall](self forKey:{"isMutuallyExclusiveCall"), @"mutuallyExclusiveCall"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x400000000000000) != 0)
  {
    [coderCopy encodeInteger:-[CXCallUpdate junkConfidence](self forKey:{"junkConfidence"), @"junkConfidence"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v34 & 0x4000) != 0)
  {
    [coderCopy encodeInteger:-[CXCallUpdate callSubType](self forKey:{"callSubType"), @"callSubType"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x800000000000000) != 0)
  {
    [coderCopy encodeInteger:-[CXCallUpdate identificationCategory](self forKey:{"identificationCategory"), @"identificationCategory"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x1000000000000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate isConversation](self forKey:{"isConversation"), @"conversation"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x2000000000000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate mixesVoiceWithMedia](self forKey:{"mixesVoiceWithMedia"), @"mixesVoiceWithMedia"}];
  }

  if (([(CXCallUpdate *)self hasSet]& 0x4000000000000000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate prefersToPlayDuringWombat](self forKey:{"prefersToPlayDuringWombat"), @"prefersToPlayDuringWombat"}];
  }

  if ([(CXCallUpdate *)self hasSet]< 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate mediaPlaybackOnExternalDevice](self forKey:{"mediaPlaybackOnExternalDevice"), @"mediaPlaybackOnExternalDevice"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v35 & 8) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate ignoresBluetoothDeviceUID](self forKey:{"ignoresBluetoothDeviceUID"), @"ignoresBluetoothDeviceUID"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v36 & 2) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate isSharingScreen](self forKey:{"isSharingScreen"), @"sharingScreen"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v37 & 0x10) != 0)
  {
    [coderCopy encodeInteger:-[CXCallUpdate serviceStatus](self forKey:{"serviceStatus"), @"serviceStatus"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v38 & 0x20) != 0)
  {
    [coderCopy encodeInteger:-[CXCallUpdate transmissionMode](self forKey:{"transmissionMode"), @"transmissionMode"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v39 & 0x40) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate accessoryButtonEventsEnabled](self forKey:{"accessoryButtonEventsEnabled"), @"accessoryButtonEventsEnabled"}];
  }

  [(CXCallUpdate *)self hasSet];
  if (v40 < 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate isSendingVideo](self forKey:{"isSendingVideo"), @"sendingVideo"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v41 & 0x1000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate isReRing](self forKey:{"isReRing"), @"isReRing"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v42 & 0x2000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate suppressRingtone](self forKey:{"suppressRingtone"), @"suppressRingtone"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v43 & 0x100) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate hasBeenRedirected](self forKey:{"hasBeenRedirected"), @"hasBeenRedirected"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v44 & 0x200) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate isKnownCaller](self forKey:{"isKnownCaller"), @"isKnownCaller"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v45 & 0x400) != 0)
  {
    [coderCopy encodeInteger:-[CXCallUpdate filteredOutReason](self forKey:{"filteredOutReason"), @"filteredOutReason"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v46 & 0x20000) != 0)
  {
    [coderCopy encodeInteger:-[CXCallUpdate screenSharingIntention](self forKey:{"screenSharingIntention"), @"screenSharingIntention"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v47 & 0x800) != 0)
  {
    silencingUserInfo = [(CXCallUpdate *)self silencingUserInfo];
    [coderCopy encodeObject:silencingUserInfo forKey:@"silencingUserInfo"];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v49 & 0x40000) != 0)
  {
    [coderCopy encodeInteger:-[CXCallUpdate screenSharingType](self forKey:{"screenSharingType"), @"screenSharingType"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v50 & 0x80000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate isSharePlayCapable](self forKey:{"isSharePlayCapable"), @"isSharePlayCapable"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v51 & 0x100000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate anyRemoteSupportsRequestToScreenShare](self forKey:{"anyRemoteSupportsRequestToScreenShare"), @"anyRemoteSupportsRequestToScreenShare"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v52 & 0x200000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate nearbyMode](self forKey:{"nearbyMode") != 0, @"nearbyMode"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v53 & 0x400000) != 0)
  {
    [coderCopy encodeInteger:-[CXCallUpdate commTrustScore](self forKey:{"commTrustScore"), @"commTrustScore"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v54 & 0x800000) != 0)
  {
    [coderCopy encodeBool:-[CXCallUpdate specialUnknown](self forKey:{"specialUnknown"), @"specialUnknown"}];
  }

  [(CXCallUpdate *)self hasSet];
  if ((v55 & 0x1000000) != 0)
  {
    conversationGroupUUID = [(CXCallUpdate *)self conversationGroupUUID];
    [coderCopy encodeObject:conversationGroupUUID forKey:@"conversationGroupUUID"];
  }
}

@end
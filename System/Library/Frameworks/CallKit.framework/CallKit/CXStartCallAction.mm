@interface CXStartCallAction
- (CGSize)localLandscapeAspectRatio;
- (CGSize)localPortraitAspectRatio;
- (CXHandle)handle;
- (CXStartCallAction)initWithCallUUID:(NSUUID *)callUUID handle:(CXHandle *)handle;
- (CXStartCallAction)initWithCallUUID:(id)d handles:(id)handles;
- (CXStartCallAction)initWithCoder:(NSCoder *)aDecoder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)fulfill;
- (void)fulfillWithDateStarted:(NSDate *)dateStarted;
- (void)setHandle:(CXHandle *)handle;
- (void)updateAsFulfilledWithDateStarted:(id)started;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXStartCallAction

- (CXHandle)handle
{
  handles = [(CXStartCallAction *)self handles];
  firstObject = [handles firstObject];

  return firstObject;
}

- (id)customDescription
{
  v11.receiver = self;
  v11.super_class = CXStartCallAction;
  customDescription = [(CXCallAction *)&v11 customDescription];
  handles = [(CXStartCallAction *)self handles];
  [customDescription appendFormat:@" handles=%@", handles];

  contactIdentifier = [(CXStartCallAction *)self contactIdentifier];
  [customDescription appendFormat:@" contactIdentifier=%@", contactIdentifier];

  [customDescription appendFormat:@" video=%d", -[CXStartCallAction isVideo](self, "isVideo")];
  [customDescription appendFormat:@" isUpgradeToVideo=%d", -[CXStartCallAction isUpgradeToVideo](self, "isUpgradeToVideo")];
  [customDescription appendFormat:@" relay=%d", -[CXStartCallAction isRelay](self, "isRelay")];
  [customDescription appendFormat:@" upgrade=%d", -[CXStartCallAction isUpgrade](self, "isUpgrade")];
  [customDescription appendFormat:@" retry=%d", -[CXStartCallAction isRetry](self, "isRetry")];
  [customDescription appendFormat:@" emergency=%d", -[CXStartCallAction isEmergency](self, "isEmergency")];
  [customDescription appendFormat:@" isVoicemail=%d", -[CXStartCallAction isVoicemail](self, "isVoicemail")];
  [customDescription appendFormat:@" ttyType=%ld", -[CXStartCallAction ttyType](self, "ttyType")];
  [(CXStartCallAction *)self localLandscapeAspectRatio];
  v6 = NSStringFromSize(v13);
  [customDescription appendFormat:@" localLandscapeAspectRatio=%@", v6];

  [(CXStartCallAction *)self localPortraitAspectRatio];
  v7 = NSStringFromSize(v14);
  [customDescription appendFormat:@" localPortraitAspectRatio=%@", v7];

  dateStarted = [(CXStartCallAction *)self dateStarted];
  [customDescription appendFormat:@" dateStarted=%@", dateStarted];

  localSenderIdentityUUID = [(CXStartCallAction *)self localSenderIdentityUUID];
  [customDescription appendFormat:@" localSenderIdentityUUID=%@", localSenderIdentityUUID];

  [customDescription appendFormat:@" shouldSuppressInCallUI=%d", -[CXStartCallAction shouldSuppressInCallUI](self, "shouldSuppressInCallUI")];
  [customDescription appendFormat:@" startCallMuted=%d", -[CXStartCallAction startCallMuted](self, "startCallMuted")];
  [customDescription appendFormat:@" launchInBackground=%d", -[CXStartCallAction launchInBackground](self, "launchInBackground")];

  return customDescription;
}

- (CGSize)localLandscapeAspectRatio
{
  width = self->_localLandscapeAspectRatio.width;
  height = self->_localLandscapeAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)localPortraitAspectRatio
{
  width = self->_localPortraitAspectRatio.width;
  height = self->_localPortraitAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CXStartCallAction)initWithCallUUID:(NSUUID *)callUUID handle:(CXHandle *)handle
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = handle;
  v12.receiver = self;
  v12.super_class = CXStartCallAction;
  v7 = [(CXCallAction *)&v12 initWithCallUUID:callUUID];
  if (v7)
  {
    if (!v6)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXStartCallAction initWithCallUUID:handle:]", @"handle"}];
    }

    v13[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    handles = v7->_handles;
    v7->_handles = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (CXStartCallAction)initWithCallUUID:(id)d handles:(id)handles
{
  handlesCopy = handles;
  v10.receiver = self;
  v10.super_class = CXStartCallAction;
  v8 = [(CXCallAction *)&v10 initWithCallUUID:d];
  if (v8)
  {
    if (![handlesCopy count])
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: array '%@' cannot be empty", "-[CXStartCallAction initWithCallUUID:handles:]", @"handles"}];
    }

    objc_storeStrong(&v8->_handles, handles);
  }

  return v8;
}

- (void)setHandle:(CXHandle *)handle
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = handle;
  v4 = MEMORY[0x1E695DEC8];
  v5 = handle;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  [(CXStartCallAction *)self setHandles:v6, v8, v9];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)fulfill
{
  date = [MEMORY[0x1E695DF00] date];
  [(CXStartCallAction *)self fulfillWithDateStarted:date];
}

- (void)fulfillWithDateStarted:(NSDate *)dateStarted
{
  v6 = dateStarted;
  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXStartCallAction fulfillWithDateStarted:]", @"dateStarted"}];
  }

  v4 = [(CXStartCallAction *)self copy];
  [v4 updateAsFulfilledWithDateStarted:v6];
  delegate = [v4 delegate];
  [delegate actionCompleted:v4];
}

- (void)updateAsFulfilledWithDateStarted:(id)started
{
  startedCopy = started;
  [(CXAction *)self updateAsFulfilled];
  [(CXStartCallAction *)self setDateStarted:startedCopy];
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = CXStartCallAction;
  copyCopy = copy;
  [(CXCallAction *)&v10 updateSanitizedCopy:copyCopy withZone:zone];
  v7 = [(CXStartCallAction *)self dateStarted:v10.receiver];
  [copyCopy setDateStarted:v7];

  handles = [(CXStartCallAction *)self handles];
  [copyCopy setHandles:handles];

  contactIdentifier = [(CXStartCallAction *)self contactIdentifier];
  [copyCopy setContactIdentifier:contactIdentifier];

  [copyCopy setVideo:{-[CXStartCallAction isVideo](self, "isVideo")}];
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = CXStartCallAction;
  copyCopy = copy;
  [(CXAction *)&v9 updateCopy:copyCopy withZone:zone];
  [copyCopy setRelay:{-[CXStartCallAction isRelay](self, "isRelay", v9.receiver, v9.super_class)}];
  [copyCopy setUpgrade:{-[CXStartCallAction isUpgrade](self, "isUpgrade")}];
  [copyCopy setIsUpgradeToVideo:{-[CXStartCallAction isUpgradeToVideo](self, "isUpgradeToVideo")}];
  [copyCopy setEmergency:{-[CXStartCallAction isEmergency](self, "isEmergency")}];
  [copyCopy setVoicemail:{-[CXStartCallAction isVoicemail](self, "isVoicemail")}];
  [copyCopy setTTYType:{-[CXStartCallAction ttyType](self, "ttyType")}];
  localSenderIdentityUUID = [(CXStartCallAction *)self localSenderIdentityUUID];
  [copyCopy setLocalSenderIdentityUUID:localSenderIdentityUUID];

  [copyCopy setShouldSuppressInCallUI:{-[CXStartCallAction shouldSuppressInCallUI](self, "shouldSuppressInCallUI")}];
  [copyCopy setStartCallMuted:{-[CXStartCallAction startCallMuted](self, "startCallMuted")}];
  [copyCopy setLaunchInBackground:{-[CXStartCallAction launchInBackground](self, "launchInBackground")}];
  [(CXStartCallAction *)self localLandscapeAspectRatio];
  [copyCopy setLocalLandscapeAspectRatio:?];
  [(CXStartCallAction *)self localPortraitAspectRatio];
  [copyCopy setLocalPortraitAspectRatio:?];
  handles = [(CXStartCallAction *)self handles];
  [copyCopy setHandles:handles];
}

- (CXStartCallAction)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v40.receiver = self;
  v40.super_class = CXStartCallAction;
  v5 = [(CXCallAction *)&v40 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_handles);
    v8 = [(NSCoder *)v4 decodeArrayOfObjectsOfClass:v6 forKey:v7];
    handles = v5->_handles;
    v5->_handles = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_contactIdentifier);
    v12 = [(NSCoder *)v4 decodeObjectOfClass:v10 forKey:v11];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v12;

    v14 = NSStringFromSelector(sel_isVideo);
    v5->_video = [(NSCoder *)v4 decodeBoolForKey:v14];

    v15 = NSStringFromSelector(sel_isUpgradeToVideo);
    v5->_isUpgradeToVideo = [(NSCoder *)v4 decodeBoolForKey:v15];

    v16 = NSStringFromSelector(sel_isRelay);
    v5->_relay = [(NSCoder *)v4 decodeBoolForKey:v16];

    v17 = NSStringFromSelector(sel_isUpgrade);
    v5->_upgrade = [(NSCoder *)v4 decodeBoolForKey:v17];

    v18 = NSStringFromSelector(sel_isRetry);
    v5->_retry = [(NSCoder *)v4 decodeBoolForKey:v18];

    v19 = NSStringFromSelector(sel_isEmergency);
    v5->_emergency = [(NSCoder *)v4 decodeBoolForKey:v19];

    v20 = NSStringFromSelector(sel_isVoicemail);
    v5->_voicemail = [(NSCoder *)v4 decodeBoolForKey:v20];

    v21 = NSStringFromSelector(sel_ttyType);
    v5->_ttyType = [(NSCoder *)v4 decodeIntegerForKey:v21];

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_localSenderIdentityUUID);
    v24 = [(NSCoder *)v4 decodeObjectOfClass:v22 forKey:v23];
    localSenderIdentityUUID = v5->_localSenderIdentityUUID;
    v5->_localSenderIdentityUUID = v24;

    v26 = NSStringFromSelector(sel_shouldSuppressInCallUI);
    v5->_shouldSuppressInCallUI = [(NSCoder *)v4 decodeBoolForKey:v26];

    v27 = NSStringFromSelector(sel_startCallMuted);
    v5->_startCallMuted = [(NSCoder *)v4 decodeBoolForKey:v27];

    v28 = NSStringFromSelector(sel_launchInBackground);
    v5->_launchInBackground = [(NSCoder *)v4 decodeBoolForKey:v28];

    v29 = NSStringFromSelector(sel_localLandscapeAspectRatio);
    [(NSCoder *)v4 decodeSizeForKey:v29];
    v5->_localLandscapeAspectRatio.width = v30;
    v5->_localLandscapeAspectRatio.height = v31;

    v32 = NSStringFromSelector(sel_localPortraitAspectRatio);
    [(NSCoder *)v4 decodeSizeForKey:v32];
    v5->_localPortraitAspectRatio.width = v33;
    v5->_localPortraitAspectRatio.height = v34;

    v35 = objc_opt_class();
    v36 = NSStringFromSelector(sel_dateStarted);
    v37 = [(NSCoder *)v4 decodeObjectOfClass:v35 forKey:v36];
    dateStarted = v5->_dateStarted;
    v5->_dateStarted = v37;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v45.receiver = self;
  v45.super_class = CXStartCallAction;
  coderCopy = coder;
  [(CXCallAction *)&v45 encodeWithCoder:coderCopy];
  v5 = [(CXStartCallAction *)self handles:v45.receiver];
  v6 = NSStringFromSelector(sel_handles);
  [coderCopy encodeObject:v5 forKey:v6];

  contactIdentifier = [(CXStartCallAction *)self contactIdentifier];
  v8 = NSStringFromSelector(sel_contactIdentifier);
  [coderCopy encodeObject:contactIdentifier forKey:v8];

  isVideo = [(CXStartCallAction *)self isVideo];
  v10 = NSStringFromSelector(sel_isVideo);
  [coderCopy encodeBool:isVideo forKey:v10];

  isUpgradeToVideo = [(CXStartCallAction *)self isUpgradeToVideo];
  v12 = NSStringFromSelector(sel_isUpgradeToVideo);
  [coderCopy encodeBool:isUpgradeToVideo forKey:v12];

  isRelay = [(CXStartCallAction *)self isRelay];
  v14 = NSStringFromSelector(sel_isRelay);
  [coderCopy encodeBool:isRelay forKey:v14];

  isUpgrade = [(CXStartCallAction *)self isUpgrade];
  v16 = NSStringFromSelector(sel_isUpgrade);
  [coderCopy encodeBool:isUpgrade forKey:v16];

  isRetry = [(CXStartCallAction *)self isRetry];
  v18 = NSStringFromSelector(sel_isRetry);
  [coderCopy encodeBool:isRetry forKey:v18];

  isEmergency = [(CXStartCallAction *)self isEmergency];
  v20 = NSStringFromSelector(sel_isEmergency);
  [coderCopy encodeBool:isEmergency forKey:v20];

  isVoicemail = [(CXStartCallAction *)self isVoicemail];
  v22 = NSStringFromSelector(sel_isVoicemail);
  [coderCopy encodeBool:isVoicemail forKey:v22];

  ttyType = [(CXStartCallAction *)self ttyType];
  v24 = NSStringFromSelector(sel_ttyType);
  [coderCopy encodeInteger:ttyType forKey:v24];

  localSenderIdentityUUID = [(CXStartCallAction *)self localSenderIdentityUUID];
  v26 = NSStringFromSelector(sel_localSenderIdentityUUID);
  [coderCopy encodeObject:localSenderIdentityUUID forKey:v26];

  shouldSuppressInCallUI = [(CXStartCallAction *)self shouldSuppressInCallUI];
  v28 = NSStringFromSelector(sel_shouldSuppressInCallUI);
  [coderCopy encodeBool:shouldSuppressInCallUI forKey:v28];

  startCallMuted = [(CXStartCallAction *)self startCallMuted];
  v30 = NSStringFromSelector(sel_startCallMuted);
  [coderCopy encodeBool:startCallMuted forKey:v30];

  launchInBackground = [(CXStartCallAction *)self launchInBackground];
  v32 = NSStringFromSelector(sel_launchInBackground);
  [coderCopy encodeBool:launchInBackground forKey:v32];

  [(CXStartCallAction *)self localLandscapeAspectRatio];
  v34 = v33;
  v36 = v35;
  v37 = NSStringFromSelector(sel_localLandscapeAspectRatio);
  [coderCopy encodeSize:v37 forKey:{v34, v36}];

  [(CXStartCallAction *)self localPortraitAspectRatio];
  v39 = v38;
  v41 = v40;
  v42 = NSStringFromSelector(sel_localPortraitAspectRatio);
  [coderCopy encodeSize:v42 forKey:{v39, v41}];

  dateStarted = [(CXStartCallAction *)self dateStarted];
  v44 = NSStringFromSelector(sel_dateStarted);
  [coderCopy encodeObject:dateStarted forKey:v44];
}

@end
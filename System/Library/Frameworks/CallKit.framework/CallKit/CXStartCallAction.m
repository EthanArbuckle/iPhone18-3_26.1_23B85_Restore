@interface CXStartCallAction
- (CGSize)localLandscapeAspectRatio;
- (CGSize)localPortraitAspectRatio;
- (CXHandle)handle;
- (CXStartCallAction)initWithCallUUID:(NSUUID *)callUUID handle:(CXHandle *)handle;
- (CXStartCallAction)initWithCallUUID:(id)a3 handles:(id)a4;
- (CXStartCallAction)initWithCoder:(NSCoder *)aDecoder;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)fulfill;
- (void)fulfillWithDateStarted:(NSDate *)dateStarted;
- (void)setHandle:(CXHandle *)handle;
- (void)updateAsFulfilledWithDateStarted:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXStartCallAction

- (CXHandle)handle
{
  v2 = [(CXStartCallAction *)self handles];
  v3 = [v2 firstObject];

  return v3;
}

- (id)customDescription
{
  v11.receiver = self;
  v11.super_class = CXStartCallAction;
  v3 = [(CXCallAction *)&v11 customDescription];
  v4 = [(CXStartCallAction *)self handles];
  [v3 appendFormat:@" handles=%@", v4];

  v5 = [(CXStartCallAction *)self contactIdentifier];
  [v3 appendFormat:@" contactIdentifier=%@", v5];

  [v3 appendFormat:@" video=%d", -[CXStartCallAction isVideo](self, "isVideo")];
  [v3 appendFormat:@" isUpgradeToVideo=%d", -[CXStartCallAction isUpgradeToVideo](self, "isUpgradeToVideo")];
  [v3 appendFormat:@" relay=%d", -[CXStartCallAction isRelay](self, "isRelay")];
  [v3 appendFormat:@" upgrade=%d", -[CXStartCallAction isUpgrade](self, "isUpgrade")];
  [v3 appendFormat:@" retry=%d", -[CXStartCallAction isRetry](self, "isRetry")];
  [v3 appendFormat:@" emergency=%d", -[CXStartCallAction isEmergency](self, "isEmergency")];
  [v3 appendFormat:@" isVoicemail=%d", -[CXStartCallAction isVoicemail](self, "isVoicemail")];
  [v3 appendFormat:@" ttyType=%ld", -[CXStartCallAction ttyType](self, "ttyType")];
  [(CXStartCallAction *)self localLandscapeAspectRatio];
  v6 = NSStringFromSize(v13);
  [v3 appendFormat:@" localLandscapeAspectRatio=%@", v6];

  [(CXStartCallAction *)self localPortraitAspectRatio];
  v7 = NSStringFromSize(v14);
  [v3 appendFormat:@" localPortraitAspectRatio=%@", v7];

  v8 = [(CXStartCallAction *)self dateStarted];
  [v3 appendFormat:@" dateStarted=%@", v8];

  v9 = [(CXStartCallAction *)self localSenderIdentityUUID];
  [v3 appendFormat:@" localSenderIdentityUUID=%@", v9];

  [v3 appendFormat:@" shouldSuppressInCallUI=%d", -[CXStartCallAction shouldSuppressInCallUI](self, "shouldSuppressInCallUI")];
  [v3 appendFormat:@" startCallMuted=%d", -[CXStartCallAction startCallMuted](self, "startCallMuted")];
  [v3 appendFormat:@" launchInBackground=%d", -[CXStartCallAction launchInBackground](self, "launchInBackground")];

  return v3;
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

- (CXStartCallAction)initWithCallUUID:(id)a3 handles:(id)a4
{
  v7 = a4;
  v10.receiver = self;
  v10.super_class = CXStartCallAction;
  v8 = [(CXCallAction *)&v10 initWithCallUUID:a3];
  if (v8)
  {
    if (![v7 count])
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: array '%@' cannot be empty", "-[CXStartCallAction initWithCallUUID:handles:]", @"handles"}];
    }

    objc_storeStrong(&v8->_handles, a4);
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
  v3 = [MEMORY[0x1E695DF00] date];
  [(CXStartCallAction *)self fulfillWithDateStarted:v3];
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
  v5 = [v4 delegate];
  [v5 actionCompleted:v4];
}

- (void)updateAsFulfilledWithDateStarted:(id)a3
{
  v4 = a3;
  [(CXAction *)self updateAsFulfilled];
  [(CXStartCallAction *)self setDateStarted:v4];
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v10.receiver = self;
  v10.super_class = CXStartCallAction;
  v6 = a3;
  [(CXCallAction *)&v10 updateSanitizedCopy:v6 withZone:a4];
  v7 = [(CXStartCallAction *)self dateStarted:v10.receiver];
  [v6 setDateStarted:v7];

  v8 = [(CXStartCallAction *)self handles];
  [v6 setHandles:v8];

  v9 = [(CXStartCallAction *)self contactIdentifier];
  [v6 setContactIdentifier:v9];

  [v6 setVideo:{-[CXStartCallAction isVideo](self, "isVideo")}];
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v9.receiver = self;
  v9.super_class = CXStartCallAction;
  v6 = a3;
  [(CXAction *)&v9 updateCopy:v6 withZone:a4];
  [v6 setRelay:{-[CXStartCallAction isRelay](self, "isRelay", v9.receiver, v9.super_class)}];
  [v6 setUpgrade:{-[CXStartCallAction isUpgrade](self, "isUpgrade")}];
  [v6 setIsUpgradeToVideo:{-[CXStartCallAction isUpgradeToVideo](self, "isUpgradeToVideo")}];
  [v6 setEmergency:{-[CXStartCallAction isEmergency](self, "isEmergency")}];
  [v6 setVoicemail:{-[CXStartCallAction isVoicemail](self, "isVoicemail")}];
  [v6 setTTYType:{-[CXStartCallAction ttyType](self, "ttyType")}];
  v7 = [(CXStartCallAction *)self localSenderIdentityUUID];
  [v6 setLocalSenderIdentityUUID:v7];

  [v6 setShouldSuppressInCallUI:{-[CXStartCallAction shouldSuppressInCallUI](self, "shouldSuppressInCallUI")}];
  [v6 setStartCallMuted:{-[CXStartCallAction startCallMuted](self, "startCallMuted")}];
  [v6 setLaunchInBackground:{-[CXStartCallAction launchInBackground](self, "launchInBackground")}];
  [(CXStartCallAction *)self localLandscapeAspectRatio];
  [v6 setLocalLandscapeAspectRatio:?];
  [(CXStartCallAction *)self localPortraitAspectRatio];
  [v6 setLocalPortraitAspectRatio:?];
  v8 = [(CXStartCallAction *)self handles];
  [v6 setHandles:v8];
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

- (void)encodeWithCoder:(id)a3
{
  v45.receiver = self;
  v45.super_class = CXStartCallAction;
  v4 = a3;
  [(CXCallAction *)&v45 encodeWithCoder:v4];
  v5 = [(CXStartCallAction *)self handles:v45.receiver];
  v6 = NSStringFromSelector(sel_handles);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXStartCallAction *)self contactIdentifier];
  v8 = NSStringFromSelector(sel_contactIdentifier);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(CXStartCallAction *)self isVideo];
  v10 = NSStringFromSelector(sel_isVideo);
  [v4 encodeBool:v9 forKey:v10];

  v11 = [(CXStartCallAction *)self isUpgradeToVideo];
  v12 = NSStringFromSelector(sel_isUpgradeToVideo);
  [v4 encodeBool:v11 forKey:v12];

  v13 = [(CXStartCallAction *)self isRelay];
  v14 = NSStringFromSelector(sel_isRelay);
  [v4 encodeBool:v13 forKey:v14];

  v15 = [(CXStartCallAction *)self isUpgrade];
  v16 = NSStringFromSelector(sel_isUpgrade);
  [v4 encodeBool:v15 forKey:v16];

  v17 = [(CXStartCallAction *)self isRetry];
  v18 = NSStringFromSelector(sel_isRetry);
  [v4 encodeBool:v17 forKey:v18];

  v19 = [(CXStartCallAction *)self isEmergency];
  v20 = NSStringFromSelector(sel_isEmergency);
  [v4 encodeBool:v19 forKey:v20];

  v21 = [(CXStartCallAction *)self isVoicemail];
  v22 = NSStringFromSelector(sel_isVoicemail);
  [v4 encodeBool:v21 forKey:v22];

  v23 = [(CXStartCallAction *)self ttyType];
  v24 = NSStringFromSelector(sel_ttyType);
  [v4 encodeInteger:v23 forKey:v24];

  v25 = [(CXStartCallAction *)self localSenderIdentityUUID];
  v26 = NSStringFromSelector(sel_localSenderIdentityUUID);
  [v4 encodeObject:v25 forKey:v26];

  v27 = [(CXStartCallAction *)self shouldSuppressInCallUI];
  v28 = NSStringFromSelector(sel_shouldSuppressInCallUI);
  [v4 encodeBool:v27 forKey:v28];

  v29 = [(CXStartCallAction *)self startCallMuted];
  v30 = NSStringFromSelector(sel_startCallMuted);
  [v4 encodeBool:v29 forKey:v30];

  v31 = [(CXStartCallAction *)self launchInBackground];
  v32 = NSStringFromSelector(sel_launchInBackground);
  [v4 encodeBool:v31 forKey:v32];

  [(CXStartCallAction *)self localLandscapeAspectRatio];
  v34 = v33;
  v36 = v35;
  v37 = NSStringFromSelector(sel_localLandscapeAspectRatio);
  [v4 encodeSize:v37 forKey:{v34, v36}];

  [(CXStartCallAction *)self localPortraitAspectRatio];
  v39 = v38;
  v41 = v40;
  v42 = NSStringFromSelector(sel_localPortraitAspectRatio);
  [v4 encodeSize:v42 forKey:{v39, v41}];

  v43 = [(CXStartCallAction *)self dateStarted];
  v44 = NSStringFromSelector(sel_dateStarted);
  [v4 encodeObject:v43 forKey:v44];
}

@end
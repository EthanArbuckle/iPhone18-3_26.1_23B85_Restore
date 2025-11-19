@interface MPRemotePlaybackQueue
+ (id)queueWithMediaRemotePlaybackQueue:(_MRSystemAppPlaybackQueue *)a3;
+ (id)queueWithMediaRemotePlaybackQueue:(_MRSystemAppPlaybackQueue *)a3 options:(id)a4;
- (MPRemotePlaybackQueue)init;
- (MPRemotePlaybackQueue)initWithCoder:(id)a3;
- (MPRemotePlaybackQueue)initWithMediaRemotePlaybackQueue:(_MRSystemAppPlaybackQueue *)a3 options:(id)a4;
- (NSString)featureName;
- (id)description;
- (int64_t)replaceIntent;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setReplaceIntent:(int64_t)a3;
@end

@implementation MPRemotePlaybackQueue

- (void)setReplaceIntent:(int64_t)a3
{
  if ((a3 - 1) < 3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1EEE1D6A0](self->_mediaRemotePlaybackQueue, v3);
}

- (int64_t)replaceIntent
{
  v2 = MRSystemAppPlaybackQueueGetReplaceIntent() - 1;
  if (v2 < 3)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

- (NSString)featureName
{
  v2 = MRSystemAppPlaybackQueueCopyFeatureName();

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = a3;
  ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
  [v3 encodeObject:ExternalRepresentation forKey:@"queue"];
}

- (MPRemotePlaybackQueue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"queue"];

  if (v5)
  {
    self = [(MPRemotePlaybackQueue *)self initWithMediaRemotePlaybackQueue:MRSystemAppPlaybackQueueCreateFromExternalRepresentation() options:0];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (self->_mediaRemotePlaybackQueue)
  {
    ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
    v16 = 0;
    v4 = [MEMORY[0x1E696AE40] propertyListWithData:ExternalRepresentation options:0 format:0 error:&v16];
    if (!v4)
    {
      v17 = @"error";
      v5 = v16;
      v6 = [v5 msv_description];
      v7 = v6;
      v8 = @"failed to parse external representation";
      if (v6)
      {
        v8 = v6;
      }

      v18[0] = v8;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    }
  }

  else
  {
    v4 = 0;
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = objc_opt_class();
  v11 = [(MPRemotePlaybackQueue *)self userIdentity];
  v12 = [v11 accountDSID];
  v13 = MPCreateLoggableValueForDSID(v12);
  v14 = [v9 stringWithFormat:@"<%@:%p [%@] siriReferenceIdentifier=%@ privateListeningOverride=%@ mediaRemoteQueueAsDictionary=%@>", v10, self, v13, self->_siriReferenceIdentifier, self->_privateListeningOverride, v4];

  return v14;
}

- (void)dealloc
{
  if (self->_mediaRemotePlaybackQueue)
  {
    MRSystemAppPlaybackQueueDestroy();
  }

  v3.receiver = self;
  v3.super_class = MPRemotePlaybackQueue;
  [(MPRemotePlaybackQueue *)&v3 dealloc];
}

- (MPRemotePlaybackQueue)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(sel_initWithMediaRemotePlaybackQueue_options_);
  [v3 raise:v4 format:{@"You must provide %@ with a MediaRemote playback queue. Use %@ instead.", v6, v7}];

  return 0;
}

- (MPRemotePlaybackQueue)initWithMediaRemotePlaybackQueue:(_MRSystemAppPlaybackQueue *)a3 options:(id)a4
{
  v45[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v35.receiver = self;
  v35.super_class = MPRemotePlaybackQueue;
  v8 = [(MPRemotePlaybackQueue *)&v35 init];
  v9 = v8;
  if (v8)
  {
    v8->_mediaRemotePlaybackQueue = a3;
    v10 = [v7 valueForKey:*MEMORY[0x1E69B1278]];
    if (v10)
    {
      v11 = MEMORY[0x1E696ACD0];
      v12 = objc_opt_class();
      v36 = 0;
      v13 = [v11 unarchivedObjectOfClass:v12 fromData:v10 error:&v36];
      v14 = v36;
      v15 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      v16 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_ERROR, "userIdentityForMediaRemoteOptions -❗️Cannot decode override user identity. Using active account.", buf, 2u);
        }

        [MEMORY[0x1E69E4680] activeAccount];
        v13 = v16 = v13;
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v38 = v13;
        _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_DEFAULT, "userIdentityForMediaRemoteOptions - Decoded override user identity: %{private}@.", buf, 0xCu);
      }
    }

    else
    {
      v17 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEFAULT, "userIdentityForMediaRemoteOptions - No user identity data. Using active account.", buf, 2u);
      }

      v13 = [MEMORY[0x1E69E4680] activeAccount];
    }

    userIdentity = v9->_userIdentity;
    v9->_userIdentity = v13;

    objc_storeStrong(&v9->_mediaRemoteOptions, a4);
    v19 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69B10D0]];
    siriReferenceIdentifier = v9->_siriReferenceIdentifier;
    v9->_siriReferenceIdentifier = v19;

    v21 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69B11E0]];
    objc_storeStrong(&v9->_privateListeningOverride, v21);
    if (!v9->_privateListeningOverride && +[MPHomeMonitor isCurrentDeviceValidHomeAccessory])
    {
      v22 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69B1128]];
      if (v22)
      {
        v23 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v22];
        if (v23)
        {
          v24 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69B10F0]];
          v25 = MEMORY[0x1E695DFD8];
          v45[0] = objc_opt_class();
          v45[1] = objc_opt_class();
          v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
          v27 = [v25 setWithArray:v26];

          v28 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v27 fromData:v24 error:0];
          if ([v28 count])
          {
            v29 = [MPHomeUserMonitor userMonitorWithHomeIdentifier:v23];
            v30 = v29;
            if (v29)
            {
              v31 = [v29 privateListeningEnabledForGroupWithRouteIDs:v28];
              if (v31)
              {
                objc_storeStrong(&v9->_privateListeningOverride, v31);
                log = _MPLogCategoryRemoteControl();
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                {
                  v33 = [v28 msv_compactDescription];
                  *buf = 138544130;
                  v38 = v9;
                  v39 = 2114;
                  v40 = v22;
                  v41 = 2114;
                  v42 = v33;
                  v43 = 2114;
                  v44 = v31;
                  _os_log_impl(&dword_1A238D000, log, OS_LOG_TYPE_DEFAULT, "%{public}@: Applying HomeKit private listening override: homeKitUserID=%{public}@ destinationUIDs=%{public}@ privateListeningOverride=%{public}@", buf, 0x2Au);
                }
              }
            }
          }
        }
      }
    }
  }

  return v9;
}

+ (id)queueWithMediaRemotePlaybackQueue:(_MRSystemAppPlaybackQueue *)a3 options:(id)a4
{
  v7 = a4;
  if (!a3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"MPRemotePlaybackQueue.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"mrQueue"}];
  }

  Type = MRSystemAppPlaybackQueueGetType();
  if (Type <= 8 && ((0x1EFu >> Type) & 1) != 0)
  {
    v9 = objc_opt_class();
  }

  else
  {
    v9 = 0;
  }

  v10 = [[v9 alloc] initWithMediaRemotePlaybackQueue:a3 options:v7];

  return v10;
}

+ (id)queueWithMediaRemotePlaybackQueue:(_MRSystemAppPlaybackQueue *)a3
{
  v4 = objc_opt_class();

  return [v4 queueWithMediaRemotePlaybackQueue:a3 options:0];
}

@end
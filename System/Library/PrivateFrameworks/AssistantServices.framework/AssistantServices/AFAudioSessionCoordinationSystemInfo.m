@interface AFAudioSessionCoordinationSystemInfo
+ (id)newWithBuilder:(id)a3;
- (AFAudioSessionCoordinationSystemInfo)initWithBuilder:(id)a3;
- (AFAudioSessionCoordinationSystemInfo)initWithCoder:(id)a3;
- (AFAudioSessionCoordinationSystemInfo)initWithDictionaryRepresentation:(id)a3;
- (AFAudioSessionCoordinationSystemInfo)initWithIsSupportedAndEnabled:(BOOL)a3 homeKitRoomName:(id)a4 homeKitMediaSystemIdentifier:(id)a5 mediaRemoteGroupIdentifier:(id)a6 mediaRemoteRouteIdentifier:(id)a7;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFAudioSessionCoordinationSystemInfo

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSupportedAndEnabled];
  [v3 setObject:v4 forKey:@"isSupportedAndEnabled"];

  homeKitRoomName = self->_homeKitRoomName;
  if (homeKitRoomName)
  {
    [v3 setObject:homeKitRoomName forKey:@"homeKitRoomName"];
  }

  homeKitMediaSystemIdentifier = self->_homeKitMediaSystemIdentifier;
  if (homeKitMediaSystemIdentifier)
  {
    [v3 setObject:homeKitMediaSystemIdentifier forKey:@"homeKitMediaSystemIdentifier"];
  }

  mediaRemoteGroupIdentifier = self->_mediaRemoteGroupIdentifier;
  if (mediaRemoteGroupIdentifier)
  {
    [v3 setObject:mediaRemoteGroupIdentifier forKey:@"mediaRemoteGroupIdentifier"];
  }

  mediaRemoteRouteIdentifier = self->_mediaRemoteRouteIdentifier;
  if (mediaRemoteRouteIdentifier)
  {
    [v3 setObject:mediaRemoteRouteIdentifier forKey:@"mediaRemoteRouteIdentifier"];
  }

  v9 = [v3 copy];

  return v9;
}

- (AFAudioSessionCoordinationSystemInfo)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"isSupportedAndEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v9 = [v7 BOOLValue];
    v10 = [v5 objectForKey:@"homeKitRoomName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v5 objectForKey:@"homeKitMediaSystemIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v5 objectForKey:@"mediaRemoteGroupIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v5 objectForKey:@"mediaRemoteRouteIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    self = [(AFAudioSessionCoordinationSystemInfo *)self initWithIsSupportedAndEnabled:v9 homeKitRoomName:v11 homeKitMediaSystemIdentifier:v13 mediaRemoteGroupIdentifier:v15 mediaRemoteRouteIdentifier:v17];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  isSupportedAndEnabled = self->_isSupportedAndEnabled;
  v7 = a3;
  v6 = [v4 numberWithBool:isSupportedAndEnabled];
  [v7 encodeObject:v6 forKey:@"AFAudioSessionCoordinationSystemInfo::isSupportedAndEnabled"];

  [v7 encodeObject:self->_homeKitRoomName forKey:@"AFAudioSessionCoordinationSystemInfo::homeKitRoomName"];
  [v7 encodeObject:self->_homeKitMediaSystemIdentifier forKey:@"AFAudioSessionCoordinationSystemInfo::homeKitMediaSystemIdentifier"];
  [v7 encodeObject:self->_mediaRemoteGroupIdentifier forKey:@"AFAudioSessionCoordinationSystemInfo::mediaRemoteGroupIdentifier"];
  [v7 encodeObject:self->_mediaRemoteRouteIdentifier forKey:@"AFAudioSessionCoordinationSystemInfo::mediaRemoteRouteIdentifier"];
}

- (AFAudioSessionCoordinationSystemInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationSystemInfo::isSupportedAndEnabled"];
  v6 = [v5 BOOLValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationSystemInfo::homeKitRoomName"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationSystemInfo::homeKitMediaSystemIdentifier"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationSystemInfo::mediaRemoteGroupIdentifier"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationSystemInfo::mediaRemoteRouteIdentifier"];

  v11 = [(AFAudioSessionCoordinationSystemInfo *)self initWithIsSupportedAndEnabled:v6 homeKitRoomName:v7 homeKitMediaSystemIdentifier:v8 mediaRemoteGroupIdentifier:v9 mediaRemoteRouteIdentifier:v10];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      isSupportedAndEnabled = self->_isSupportedAndEnabled;
      if (isSupportedAndEnabled == [(AFAudioSessionCoordinationSystemInfo *)v5 isSupportedAndEnabled])
      {
        v7 = [(AFAudioSessionCoordinationSystemInfo *)v5 homeKitRoomName];
        homeKitRoomName = self->_homeKitRoomName;
        if (homeKitRoomName == v7 || [(NSString *)homeKitRoomName isEqual:v7])
        {
          v9 = [(AFAudioSessionCoordinationSystemInfo *)v5 homeKitMediaSystemIdentifier];
          homeKitMediaSystemIdentifier = self->_homeKitMediaSystemIdentifier;
          if (homeKitMediaSystemIdentifier == v9 || [(NSUUID *)homeKitMediaSystemIdentifier isEqual:v9])
          {
            v11 = [(AFAudioSessionCoordinationSystemInfo *)v5 mediaRemoteGroupIdentifier];
            mediaRemoteGroupIdentifier = self->_mediaRemoteGroupIdentifier;
            if (mediaRemoteGroupIdentifier == v11 || [(NSString *)mediaRemoteGroupIdentifier isEqual:v11])
            {
              v13 = [(AFAudioSessionCoordinationSystemInfo *)v5 mediaRemoteRouteIdentifier];
              mediaRemoteRouteIdentifier = self->_mediaRemoteRouteIdentifier;
              v15 = mediaRemoteRouteIdentifier == v13 || [(NSString *)mediaRemoteRouteIdentifier isEqual:v13];
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSupportedAndEnabled];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_homeKitRoomName hash];
  v6 = v5 ^ [(NSUUID *)self->_homeKitMediaSystemIdentifier hash];
  v7 = v6 ^ [(NSString *)self->_mediaRemoteGroupIdentifier hash]^ v4;
  v8 = [(NSString *)self->_mediaRemoteRouteIdentifier hash];

  return v7 ^ v8;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10.receiver = self;
  v10.super_class = AFAudioSessionCoordinationSystemInfo;
  v5 = [(AFAudioSessionCoordinationSystemInfo *)&v10 description];
  v6 = v5;
  v7 = @"NO";
  if (self->_isSupportedAndEnabled)
  {
    v7 = @"YES";
  }

  v8 = [v4 initWithFormat:@"%@ {isSupportedAndEnabled = %@, homeKitRoomName = %@, homeKitMediaSystemIdentifier = %@, mediaRemoteGroupIdentifier = %@, mediaRemoteRouteIdentifier = %@}", v5, v7, self->_homeKitRoomName, self->_homeKitMediaSystemIdentifier, self->_mediaRemoteGroupIdentifier, self->_mediaRemoteRouteIdentifier];

  return v8;
}

- (AFAudioSessionCoordinationSystemInfo)initWithIsSupportedAndEnabled:(BOOL)a3 homeKitRoomName:(id)a4 homeKitMediaSystemIdentifier:(id)a5 mediaRemoteGroupIdentifier:(id)a6 mediaRemoteRouteIdentifier:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __169__AFAudioSessionCoordinationSystemInfo_initWithIsSupportedAndEnabled_homeKitRoomName_homeKitMediaSystemIdentifier_mediaRemoteGroupIdentifier_mediaRemoteRouteIdentifier___block_invoke;
  v22[3] = &unk_1E7343848;
  v27 = a3;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v16 = v15;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  v20 = [(AFAudioSessionCoordinationSystemInfo *)self initWithBuilder:v22];

  return v20;
}

void __169__AFAudioSessionCoordinationSystemInfo_initWithIsSupportedAndEnabled_homeKitRoomName_homeKitMediaSystemIdentifier_mediaRemoteGroupIdentifier_mediaRemoteRouteIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  v4 = a2;
  [v4 setIsSupportedAndEnabled:v3];
  [v4 setHomeKitRoomName:*(a1 + 32)];
  [v4 setHomeKitMediaSystemIdentifier:*(a1 + 40)];
  [v4 setMediaRemoteGroupIdentifier:*(a1 + 48)];
  [v4 setMediaRemoteRouteIdentifier:*(a1 + 56)];
}

- (AFAudioSessionCoordinationSystemInfo)initWithBuilder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = AFAudioSessionCoordinationSystemInfo;
  v5 = [(AFAudioSessionCoordinationSystemInfo *)&v21 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFAudioSessionCoordinationSystemInfoMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFAudioSessionCoordinationSystemInfoMutation *)v7 isDirty])
    {
      v6->_isSupportedAndEnabled = [(_AFAudioSessionCoordinationSystemInfoMutation *)v7 getIsSupportedAndEnabled];
      v8 = [(_AFAudioSessionCoordinationSystemInfoMutation *)v7 getHomeKitRoomName];
      v9 = [v8 copy];
      homeKitRoomName = v6->_homeKitRoomName;
      v6->_homeKitRoomName = v9;

      v11 = [(_AFAudioSessionCoordinationSystemInfoMutation *)v7 getHomeKitMediaSystemIdentifier];
      v12 = [v11 copy];
      homeKitMediaSystemIdentifier = v6->_homeKitMediaSystemIdentifier;
      v6->_homeKitMediaSystemIdentifier = v12;

      v14 = [(_AFAudioSessionCoordinationSystemInfoMutation *)v7 getMediaRemoteGroupIdentifier];
      v15 = [v14 copy];
      mediaRemoteGroupIdentifier = v6->_mediaRemoteGroupIdentifier;
      v6->_mediaRemoteGroupIdentifier = v15;

      v17 = [(_AFAudioSessionCoordinationSystemInfoMutation *)v7 getMediaRemoteRouteIdentifier];
      v18 = [v17 copy];
      mediaRemoteRouteIdentifier = v6->_mediaRemoteRouteIdentifier;
      v6->_mediaRemoteRouteIdentifier = v18;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFAudioSessionCoordinationSystemInfoMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFAudioSessionCoordinationSystemInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFAudioSessionCoordinationSystemInfo);
      v6->_isSupportedAndEnabled = [(_AFAudioSessionCoordinationSystemInfoMutation *)v5 getIsSupportedAndEnabled];
      v7 = [(_AFAudioSessionCoordinationSystemInfoMutation *)v5 getHomeKitRoomName];
      v8 = [v7 copy];
      homeKitRoomName = v6->_homeKitRoomName;
      v6->_homeKitRoomName = v8;

      v10 = [(_AFAudioSessionCoordinationSystemInfoMutation *)v5 getHomeKitMediaSystemIdentifier];
      v11 = [v10 copy];
      homeKitMediaSystemIdentifier = v6->_homeKitMediaSystemIdentifier;
      v6->_homeKitMediaSystemIdentifier = v11;

      v13 = [(_AFAudioSessionCoordinationSystemInfoMutation *)v5 getMediaRemoteGroupIdentifier];
      v14 = [v13 copy];
      mediaRemoteGroupIdentifier = v6->_mediaRemoteGroupIdentifier;
      v6->_mediaRemoteGroupIdentifier = v14;

      v16 = [(_AFAudioSessionCoordinationSystemInfoMutation *)v5 getMediaRemoteRouteIdentifier];
      v17 = [v16 copy];
      mediaRemoteRouteIdentifier = v6->_mediaRemoteRouteIdentifier;
      v6->_mediaRemoteRouteIdentifier = v17;
    }

    else
    {
      v6 = [(AFAudioSessionCoordinationSystemInfo *)self copy];
    }
  }

  else
  {
    v6 = [(AFAudioSessionCoordinationSystemInfo *)self copy];
  }

  return v6;
}

@end
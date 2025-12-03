@interface AFAudioSessionCoordinationSystemInfo
+ (id)newWithBuilder:(id)builder;
- (AFAudioSessionCoordinationSystemInfo)initWithBuilder:(id)builder;
- (AFAudioSessionCoordinationSystemInfo)initWithCoder:(id)coder;
- (AFAudioSessionCoordinationSystemInfo)initWithDictionaryRepresentation:(id)representation;
- (AFAudioSessionCoordinationSystemInfo)initWithIsSupportedAndEnabled:(BOOL)enabled homeKitRoomName:(id)name homeKitMediaSystemIdentifier:(id)identifier mediaRemoteGroupIdentifier:(id)groupIdentifier mediaRemoteRouteIdentifier:(id)routeIdentifier;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (AFAudioSessionCoordinationSystemInfo)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"isSupportedAndEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    bOOLValue = [v7 BOOLValue];
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

    self = [(AFAudioSessionCoordinationSystemInfo *)self initWithIsSupportedAndEnabled:bOOLValue homeKitRoomName:v11 homeKitMediaSystemIdentifier:v13 mediaRemoteGroupIdentifier:v15 mediaRemoteRouteIdentifier:v17];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  isSupportedAndEnabled = self->_isSupportedAndEnabled;
  coderCopy = coder;
  v6 = [v4 numberWithBool:isSupportedAndEnabled];
  [coderCopy encodeObject:v6 forKey:@"AFAudioSessionCoordinationSystemInfo::isSupportedAndEnabled"];

  [coderCopy encodeObject:self->_homeKitRoomName forKey:@"AFAudioSessionCoordinationSystemInfo::homeKitRoomName"];
  [coderCopy encodeObject:self->_homeKitMediaSystemIdentifier forKey:@"AFAudioSessionCoordinationSystemInfo::homeKitMediaSystemIdentifier"];
  [coderCopy encodeObject:self->_mediaRemoteGroupIdentifier forKey:@"AFAudioSessionCoordinationSystemInfo::mediaRemoteGroupIdentifier"];
  [coderCopy encodeObject:self->_mediaRemoteRouteIdentifier forKey:@"AFAudioSessionCoordinationSystemInfo::mediaRemoteRouteIdentifier"];
}

- (AFAudioSessionCoordinationSystemInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationSystemInfo::isSupportedAndEnabled"];
  bOOLValue = [v5 BOOLValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationSystemInfo::homeKitRoomName"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationSystemInfo::homeKitMediaSystemIdentifier"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationSystemInfo::mediaRemoteGroupIdentifier"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFAudioSessionCoordinationSystemInfo::mediaRemoteRouteIdentifier"];

  v11 = [(AFAudioSessionCoordinationSystemInfo *)self initWithIsSupportedAndEnabled:bOOLValue homeKitRoomName:v7 homeKitMediaSystemIdentifier:v8 mediaRemoteGroupIdentifier:v9 mediaRemoteRouteIdentifier:v10];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isSupportedAndEnabled = self->_isSupportedAndEnabled;
      if (isSupportedAndEnabled == [(AFAudioSessionCoordinationSystemInfo *)v5 isSupportedAndEnabled])
      {
        homeKitRoomName = [(AFAudioSessionCoordinationSystemInfo *)v5 homeKitRoomName];
        homeKitRoomName = self->_homeKitRoomName;
        if (homeKitRoomName == homeKitRoomName || [(NSString *)homeKitRoomName isEqual:homeKitRoomName])
        {
          homeKitMediaSystemIdentifier = [(AFAudioSessionCoordinationSystemInfo *)v5 homeKitMediaSystemIdentifier];
          homeKitMediaSystemIdentifier = self->_homeKitMediaSystemIdentifier;
          if (homeKitMediaSystemIdentifier == homeKitMediaSystemIdentifier || [(NSUUID *)homeKitMediaSystemIdentifier isEqual:homeKitMediaSystemIdentifier])
          {
            mediaRemoteGroupIdentifier = [(AFAudioSessionCoordinationSystemInfo *)v5 mediaRemoteGroupIdentifier];
            mediaRemoteGroupIdentifier = self->_mediaRemoteGroupIdentifier;
            if (mediaRemoteGroupIdentifier == mediaRemoteGroupIdentifier || [(NSString *)mediaRemoteGroupIdentifier isEqual:mediaRemoteGroupIdentifier])
            {
              mediaRemoteRouteIdentifier = [(AFAudioSessionCoordinationSystemInfo *)v5 mediaRemoteRouteIdentifier];
              mediaRemoteRouteIdentifier = self->_mediaRemoteRouteIdentifier;
              v15 = mediaRemoteRouteIdentifier == mediaRemoteRouteIdentifier || [(NSString *)mediaRemoteRouteIdentifier isEqual:mediaRemoteRouteIdentifier];
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (AFAudioSessionCoordinationSystemInfo)initWithIsSupportedAndEnabled:(BOOL)enabled homeKitRoomName:(id)name homeKitMediaSystemIdentifier:(id)identifier mediaRemoteGroupIdentifier:(id)groupIdentifier mediaRemoteRouteIdentifier:(id)routeIdentifier
{
  nameCopy = name;
  identifierCopy = identifier;
  groupIdentifierCopy = groupIdentifier;
  routeIdentifierCopy = routeIdentifier;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __169__AFAudioSessionCoordinationSystemInfo_initWithIsSupportedAndEnabled_homeKitRoomName_homeKitMediaSystemIdentifier_mediaRemoteGroupIdentifier_mediaRemoteRouteIdentifier___block_invoke;
  v22[3] = &unk_1E7343848;
  enabledCopy = enabled;
  v23 = nameCopy;
  v24 = identifierCopy;
  v25 = groupIdentifierCopy;
  v26 = routeIdentifierCopy;
  v16 = routeIdentifierCopy;
  v17 = groupIdentifierCopy;
  v18 = identifierCopy;
  v19 = nameCopy;
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

- (AFAudioSessionCoordinationSystemInfo)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v21.receiver = self;
  v21.super_class = AFAudioSessionCoordinationSystemInfo;
  v5 = [(AFAudioSessionCoordinationSystemInfo *)&v21 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFAudioSessionCoordinationSystemInfoMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFAudioSessionCoordinationSystemInfoMutation *)v7 isDirty])
    {
      v6->_isSupportedAndEnabled = [(_AFAudioSessionCoordinationSystemInfoMutation *)v7 getIsSupportedAndEnabled];
      getHomeKitRoomName = [(_AFAudioSessionCoordinationSystemInfoMutation *)v7 getHomeKitRoomName];
      v9 = [getHomeKitRoomName copy];
      homeKitRoomName = v6->_homeKitRoomName;
      v6->_homeKitRoomName = v9;

      getHomeKitMediaSystemIdentifier = [(_AFAudioSessionCoordinationSystemInfoMutation *)v7 getHomeKitMediaSystemIdentifier];
      v12 = [getHomeKitMediaSystemIdentifier copy];
      homeKitMediaSystemIdentifier = v6->_homeKitMediaSystemIdentifier;
      v6->_homeKitMediaSystemIdentifier = v12;

      getMediaRemoteGroupIdentifier = [(_AFAudioSessionCoordinationSystemInfoMutation *)v7 getMediaRemoteGroupIdentifier];
      v15 = [getMediaRemoteGroupIdentifier copy];
      mediaRemoteGroupIdentifier = v6->_mediaRemoteGroupIdentifier;
      v6->_mediaRemoteGroupIdentifier = v15;

      getMediaRemoteRouteIdentifier = [(_AFAudioSessionCoordinationSystemInfoMutation *)v7 getMediaRemoteRouteIdentifier];
      v18 = [getMediaRemoteRouteIdentifier copy];
      mediaRemoteRouteIdentifier = v6->_mediaRemoteRouteIdentifier;
      v6->_mediaRemoteRouteIdentifier = v18;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFAudioSessionCoordinationSystemInfoMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFAudioSessionCoordinationSystemInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFAudioSessionCoordinationSystemInfo);
      v6->_isSupportedAndEnabled = [(_AFAudioSessionCoordinationSystemInfoMutation *)v5 getIsSupportedAndEnabled];
      getHomeKitRoomName = [(_AFAudioSessionCoordinationSystemInfoMutation *)v5 getHomeKitRoomName];
      v8 = [getHomeKitRoomName copy];
      homeKitRoomName = v6->_homeKitRoomName;
      v6->_homeKitRoomName = v8;

      getHomeKitMediaSystemIdentifier = [(_AFAudioSessionCoordinationSystemInfoMutation *)v5 getHomeKitMediaSystemIdentifier];
      v11 = [getHomeKitMediaSystemIdentifier copy];
      homeKitMediaSystemIdentifier = v6->_homeKitMediaSystemIdentifier;
      v6->_homeKitMediaSystemIdentifier = v11;

      getMediaRemoteGroupIdentifier = [(_AFAudioSessionCoordinationSystemInfoMutation *)v5 getMediaRemoteGroupIdentifier];
      v14 = [getMediaRemoteGroupIdentifier copy];
      mediaRemoteGroupIdentifier = v6->_mediaRemoteGroupIdentifier;
      v6->_mediaRemoteGroupIdentifier = v14;

      getMediaRemoteRouteIdentifier = [(_AFAudioSessionCoordinationSystemInfoMutation *)v5 getMediaRemoteRouteIdentifier];
      v17 = [getMediaRemoteRouteIdentifier copy];
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
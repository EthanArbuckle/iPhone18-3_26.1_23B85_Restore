@interface AFMediaPlaybackStateSnapshot
+ (id)newWithBuilder:(id)builder;
- (AFMediaPlaybackStateSnapshot)initWithBuilder:(id)builder;
- (AFMediaPlaybackStateSnapshot)initWithCoder:(id)coder;
- (AFMediaPlaybackStateSnapshot)initWithDictionaryRepresentation:(id)representation;
- (AFMediaPlaybackStateSnapshot)initWithPlaybackState:(int64_t)state nowPlayingTimestamp:(id)timestamp mediaType:(id)type groupIdentifier:(id)identifier isProxyGroupPlayer:(BOOL)player;
- (AFMediaPlaybackStateSnapshot)initWithSerializedBackingStore:(id)store;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)ad_shortDescription;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFMediaPlaybackStateSnapshot

- (id)ad_shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  playbackState = [(AFMediaPlaybackStateSnapshot *)self playbackState];
  if (playbackState > 5)
  {
    v5 = @"(unknown)";
  }

  else
  {
    v5 = *(&off_1E7346000 + playbackState);
  }

  v6 = v5;
  nowPlayingTimestamp = [(AFMediaPlaybackStateSnapshot *)self nowPlayingTimestamp];
  mediaType = [(AFMediaPlaybackStateSnapshot *)self mediaType];
  groupIdentifier = [(AFMediaPlaybackStateSnapshot *)self groupIdentifier];
  v10 = [v3 stringWithFormat:@"(playstate: %@, time: %@, mediaType: %@, group: %@)", v6, nowPlayingTimestamp, mediaType, groupIdentifier];

  return v10;
}

- (AFMediaPlaybackStateSnapshot)initWithSerializedBackingStore:(id)store
{
  storeCopy = store;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(AFMediaPlaybackStateSnapshot *)self initWithDictionaryRepresentation:storeCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  playbackState = self->_playbackState;
  if (playbackState > 5)
  {
    v5 = @"(unknown)";
  }

  else
  {
    v5 = *(&off_1E7346000 + playbackState);
  }

  v6 = v5;
  [v3 setObject:v6 forKey:@"playbackState"];

  nowPlayingTimestamp = self->_nowPlayingTimestamp;
  if (nowPlayingTimestamp)
  {
    [v3 setObject:nowPlayingTimestamp forKey:@"nowPlayingTimestamp"];
  }

  mediaType = self->_mediaType;
  if (mediaType)
  {
    [v3 setObject:mediaType forKey:@"mediaType"];
  }

  groupIdentifier = self->_groupIdentifier;
  if (groupIdentifier)
  {
    [v3 setObject:groupIdentifier forKey:@"groupIdentifier"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isProxyGroupPlayer];
  [v3 setObject:v10 forKey:@"isProxyGroupPlayer"];

  v11 = [v3 copy];

  return v11;
}

- (AFMediaPlaybackStateSnapshot)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"playbackState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = AFMediaPlaybackStateGetFromName(v6);
    }

    else
    {
      v7 = 0;
    }

    v9 = [v5 objectForKey:@"nowPlayingTimestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v5 objectForKey:@"mediaType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v5 objectForKey:@"groupIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [v5 objectForKey:@"isProxyGroupPlayer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    bOOLValue = [v16 BOOLValue];
    self = [(AFMediaPlaybackStateSnapshot *)self initWithPlaybackState:v7 nowPlayingTimestamp:v10 mediaType:v12 groupIdentifier:v14 isProxyGroupPlayer:bOOLValue];

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
  playbackState = self->_playbackState;
  coderCopy = coder;
  v7 = [v4 numberWithInteger:playbackState];
  [coderCopy encodeObject:v7 forKey:@"AFMediaPlaybackStateSnapshot::playbackState"];

  [coderCopy encodeObject:self->_nowPlayingTimestamp forKey:@"AFMediaPlaybackStateSnapshot::nowPlayingTimestamp"];
  [coderCopy encodeObject:self->_mediaType forKey:@"AFMediaPlaybackStateSnapshot::mediaType"];
  [coderCopy encodeObject:self->_groupIdentifier forKey:@"AFMediaPlaybackStateSnapshot::groupIdentifier"];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isProxyGroupPlayer];
  [coderCopy encodeObject:v8 forKey:@"AFMediaPlaybackStateSnapshot::isProxyGroupPlayer"];
}

- (AFMediaPlaybackStateSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFMediaPlaybackStateSnapshot::playbackState"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFMediaPlaybackStateSnapshot::nowPlayingTimestamp"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFMediaPlaybackStateSnapshot::mediaType"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFMediaPlaybackStateSnapshot::groupIdentifier"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFMediaPlaybackStateSnapshot::isProxyGroupPlayer"];

  bOOLValue = [v10 BOOLValue];
  v12 = [(AFMediaPlaybackStateSnapshot *)self initWithPlaybackState:integerValue nowPlayingTimestamp:v7 mediaType:v8 groupIdentifier:v9 isProxyGroupPlayer:bOOLValue];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      playbackState = self->_playbackState;
      if (playbackState == [(AFMediaPlaybackStateSnapshot *)v5 playbackState]&& (isProxyGroupPlayer = self->_isProxyGroupPlayer, isProxyGroupPlayer == [(AFMediaPlaybackStateSnapshot *)v5 isProxyGroupPlayer]))
      {
        nowPlayingTimestamp = [(AFMediaPlaybackStateSnapshot *)v5 nowPlayingTimestamp];
        nowPlayingTimestamp = self->_nowPlayingTimestamp;
        if (nowPlayingTimestamp == nowPlayingTimestamp || [(NSDate *)nowPlayingTimestamp isEqual:nowPlayingTimestamp])
        {
          mediaType = [(AFMediaPlaybackStateSnapshot *)v5 mediaType];
          mediaType = self->_mediaType;
          if (mediaType == mediaType || [(NSString *)mediaType isEqual:mediaType])
          {
            groupIdentifier = [(AFMediaPlaybackStateSnapshot *)v5 groupIdentifier];
            groupIdentifier = self->_groupIdentifier;
            v14 = groupIdentifier == groupIdentifier || [(NSString *)groupIdentifier isEqual:groupIdentifier];
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_playbackState];
  v4 = [v3 hash];
  v5 = [(NSDate *)self->_nowPlayingTimestamp hash];
  v6 = v5 ^ [(NSString *)self->_mediaType hash];
  v7 = v6 ^ [(NSString *)self->_groupIdentifier hash]^ v4;
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isProxyGroupPlayer];
  v9 = [v8 hash];

  return v7 ^ v9;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14.receiver = self;
  v14.super_class = AFMediaPlaybackStateSnapshot;
  v5 = [(AFMediaPlaybackStateSnapshot *)&v14 description];
  playbackState = self->_playbackState;
  if (playbackState > 5)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = *(&off_1E7346000 + playbackState);
  }

  v8 = v7;
  v9 = v8;
  groupIdentifier = self->_groupIdentifier;
  if (self->_isProxyGroupPlayer)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [v4 initWithFormat:@"%@ {playbackState = %@, nowPlayingTimestamp = %@, mediaType = %@, groupIdentifier = %@, isProxyGroupPlayer = %@}", v5, v8, *&self->_nowPlayingTimestamp, self->_groupIdentifier, v11];

  return v12;
}

- (AFMediaPlaybackStateSnapshot)initWithPlaybackState:(int64_t)state nowPlayingTimestamp:(id)timestamp mediaType:(id)type groupIdentifier:(id)identifier isProxyGroupPlayer:(BOOL)player
{
  timestampCopy = timestamp;
  typeCopy = type;
  identifierCopy = identifier;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __119__AFMediaPlaybackStateSnapshot_initWithPlaybackState_nowPlayingTimestamp_mediaType_groupIdentifier_isProxyGroupPlayer___block_invoke;
  v20[3] = &unk_1E73492B0;
  v21 = timestampCopy;
  v22 = typeCopy;
  v23 = identifierCopy;
  stateCopy = state;
  playerCopy = player;
  v15 = identifierCopy;
  v16 = typeCopy;
  v17 = timestampCopy;
  v18 = [(AFMediaPlaybackStateSnapshot *)self initWithBuilder:v20];

  return v18;
}

void __119__AFMediaPlaybackStateSnapshot_initWithPlaybackState_nowPlayingTimestamp_mediaType_groupIdentifier_isProxyGroupPlayer___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = a2;
  [v4 setPlaybackState:v3];
  [v4 setNowPlayingTimestamp:*(a1 + 32)];
  [v4 setMediaType:*(a1 + 40)];
  [v4 setGroupIdentifier:*(a1 + 48)];
  [v4 setIsProxyGroupPlayer:*(a1 + 64)];
}

- (AFMediaPlaybackStateSnapshot)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v18.receiver = self;
  v18.super_class = AFMediaPlaybackStateSnapshot;
  v5 = [(AFMediaPlaybackStateSnapshot *)&v18 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFMediaPlaybackStateSnapshotMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFMediaPlaybackStateSnapshotMutation *)v7 isDirty])
    {
      v6->_playbackState = [(_AFMediaPlaybackStateSnapshotMutation *)v7 getPlaybackState];
      getNowPlayingTimestamp = [(_AFMediaPlaybackStateSnapshotMutation *)v7 getNowPlayingTimestamp];
      v9 = [getNowPlayingTimestamp copy];
      nowPlayingTimestamp = v6->_nowPlayingTimestamp;
      v6->_nowPlayingTimestamp = v9;

      getMediaType = [(_AFMediaPlaybackStateSnapshotMutation *)v7 getMediaType];
      v12 = [getMediaType copy];
      mediaType = v6->_mediaType;
      v6->_mediaType = v12;

      getGroupIdentifier = [(_AFMediaPlaybackStateSnapshotMutation *)v7 getGroupIdentifier];
      v15 = [getGroupIdentifier copy];
      groupIdentifier = v6->_groupIdentifier;
      v6->_groupIdentifier = v15;

      v6->_isProxyGroupPlayer = [(_AFMediaPlaybackStateSnapshotMutation *)v7 getIsProxyGroupPlayer];
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
    v5 = [[_AFMediaPlaybackStateSnapshotMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFMediaPlaybackStateSnapshotMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFMediaPlaybackStateSnapshot);
      v6->_playbackState = [(_AFMediaPlaybackStateSnapshotMutation *)v5 getPlaybackState];
      getNowPlayingTimestamp = [(_AFMediaPlaybackStateSnapshotMutation *)v5 getNowPlayingTimestamp];
      v8 = [getNowPlayingTimestamp copy];
      nowPlayingTimestamp = v6->_nowPlayingTimestamp;
      v6->_nowPlayingTimestamp = v8;

      getMediaType = [(_AFMediaPlaybackStateSnapshotMutation *)v5 getMediaType];
      v11 = [getMediaType copy];
      mediaType = v6->_mediaType;
      v6->_mediaType = v11;

      getGroupIdentifier = [(_AFMediaPlaybackStateSnapshotMutation *)v5 getGroupIdentifier];
      v14 = [getGroupIdentifier copy];
      groupIdentifier = v6->_groupIdentifier;
      v6->_groupIdentifier = v14;

      v6->_isProxyGroupPlayer = [(_AFMediaPlaybackStateSnapshotMutation *)v5 getIsProxyGroupPlayer];
    }

    else
    {
      v6 = [(AFMediaPlaybackStateSnapshot *)self copy];
    }
  }

  else
  {
    v6 = [(AFMediaPlaybackStateSnapshot *)self copy];
  }

  return v6;
}

@end
@interface AFMediaPlaybackStateSnapshot
+ (id)newWithBuilder:(id)a3;
- (AFMediaPlaybackStateSnapshot)initWithBuilder:(id)a3;
- (AFMediaPlaybackStateSnapshot)initWithCoder:(id)a3;
- (AFMediaPlaybackStateSnapshot)initWithDictionaryRepresentation:(id)a3;
- (AFMediaPlaybackStateSnapshot)initWithPlaybackState:(int64_t)a3 nowPlayingTimestamp:(id)a4 mediaType:(id)a5 groupIdentifier:(id)a6 isProxyGroupPlayer:(BOOL)a7;
- (AFMediaPlaybackStateSnapshot)initWithSerializedBackingStore:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)ad_shortDescription;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFMediaPlaybackStateSnapshot

- (id)ad_shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AFMediaPlaybackStateSnapshot *)self playbackState];
  if (v4 > 5)
  {
    v5 = @"(unknown)";
  }

  else
  {
    v5 = *(&off_1E7346000 + v4);
  }

  v6 = v5;
  v7 = [(AFMediaPlaybackStateSnapshot *)self nowPlayingTimestamp];
  v8 = [(AFMediaPlaybackStateSnapshot *)self mediaType];
  v9 = [(AFMediaPlaybackStateSnapshot *)self groupIdentifier];
  v10 = [v3 stringWithFormat:@"(playstate: %@, time: %@, mediaType: %@, group: %@)", v6, v7, v8, v9];

  return v10;
}

- (AFMediaPlaybackStateSnapshot)initWithSerializedBackingStore:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(AFMediaPlaybackStateSnapshot *)self initWithDictionaryRepresentation:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
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

- (AFMediaPlaybackStateSnapshot)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"playbackState"];
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

    v17 = [v16 BOOLValue];
    self = [(AFMediaPlaybackStateSnapshot *)self initWithPlaybackState:v7 nowPlayingTimestamp:v10 mediaType:v12 groupIdentifier:v14 isProxyGroupPlayer:v17];

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
  playbackState = self->_playbackState;
  v6 = a3;
  v7 = [v4 numberWithInteger:playbackState];
  [v6 encodeObject:v7 forKey:@"AFMediaPlaybackStateSnapshot::playbackState"];

  [v6 encodeObject:self->_nowPlayingTimestamp forKey:@"AFMediaPlaybackStateSnapshot::nowPlayingTimestamp"];
  [v6 encodeObject:self->_mediaType forKey:@"AFMediaPlaybackStateSnapshot::mediaType"];
  [v6 encodeObject:self->_groupIdentifier forKey:@"AFMediaPlaybackStateSnapshot::groupIdentifier"];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isProxyGroupPlayer];
  [v6 encodeObject:v8 forKey:@"AFMediaPlaybackStateSnapshot::isProxyGroupPlayer"];
}

- (AFMediaPlaybackStateSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFMediaPlaybackStateSnapshot::playbackState"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFMediaPlaybackStateSnapshot::nowPlayingTimestamp"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFMediaPlaybackStateSnapshot::mediaType"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFMediaPlaybackStateSnapshot::groupIdentifier"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFMediaPlaybackStateSnapshot::isProxyGroupPlayer"];

  v11 = [v10 BOOLValue];
  v12 = [(AFMediaPlaybackStateSnapshot *)self initWithPlaybackState:v6 nowPlayingTimestamp:v7 mediaType:v8 groupIdentifier:v9 isProxyGroupPlayer:v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      playbackState = self->_playbackState;
      if (playbackState == [(AFMediaPlaybackStateSnapshot *)v5 playbackState]&& (isProxyGroupPlayer = self->_isProxyGroupPlayer, isProxyGroupPlayer == [(AFMediaPlaybackStateSnapshot *)v5 isProxyGroupPlayer]))
      {
        v8 = [(AFMediaPlaybackStateSnapshot *)v5 nowPlayingTimestamp];
        nowPlayingTimestamp = self->_nowPlayingTimestamp;
        if (nowPlayingTimestamp == v8 || [(NSDate *)nowPlayingTimestamp isEqual:v8])
        {
          v10 = [(AFMediaPlaybackStateSnapshot *)v5 mediaType];
          mediaType = self->_mediaType;
          if (mediaType == v10 || [(NSString *)mediaType isEqual:v10])
          {
            v12 = [(AFMediaPlaybackStateSnapshot *)v5 groupIdentifier];
            groupIdentifier = self->_groupIdentifier;
            v14 = groupIdentifier == v12 || [(NSString *)groupIdentifier isEqual:v12];
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

- (id)_descriptionWithIndent:(unint64_t)a3
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

- (AFMediaPlaybackStateSnapshot)initWithPlaybackState:(int64_t)a3 nowPlayingTimestamp:(id)a4 mediaType:(id)a5 groupIdentifier:(id)a6 isProxyGroupPlayer:(BOOL)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __119__AFMediaPlaybackStateSnapshot_initWithPlaybackState_nowPlayingTimestamp_mediaType_groupIdentifier_isProxyGroupPlayer___block_invoke;
  v20[3] = &unk_1E73492B0;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = a3;
  v25 = a7;
  v15 = v14;
  v16 = v13;
  v17 = v12;
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

- (AFMediaPlaybackStateSnapshot)initWithBuilder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = AFMediaPlaybackStateSnapshot;
  v5 = [(AFMediaPlaybackStateSnapshot *)&v18 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFMediaPlaybackStateSnapshotMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFMediaPlaybackStateSnapshotMutation *)v7 isDirty])
    {
      v6->_playbackState = [(_AFMediaPlaybackStateSnapshotMutation *)v7 getPlaybackState];
      v8 = [(_AFMediaPlaybackStateSnapshotMutation *)v7 getNowPlayingTimestamp];
      v9 = [v8 copy];
      nowPlayingTimestamp = v6->_nowPlayingTimestamp;
      v6->_nowPlayingTimestamp = v9;

      v11 = [(_AFMediaPlaybackStateSnapshotMutation *)v7 getMediaType];
      v12 = [v11 copy];
      mediaType = v6->_mediaType;
      v6->_mediaType = v12;

      v14 = [(_AFMediaPlaybackStateSnapshotMutation *)v7 getGroupIdentifier];
      v15 = [v14 copy];
      groupIdentifier = v6->_groupIdentifier;
      v6->_groupIdentifier = v15;

      v6->_isProxyGroupPlayer = [(_AFMediaPlaybackStateSnapshotMutation *)v7 getIsProxyGroupPlayer];
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
    v5 = [[_AFMediaPlaybackStateSnapshotMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFMediaPlaybackStateSnapshotMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFMediaPlaybackStateSnapshot);
      v6->_playbackState = [(_AFMediaPlaybackStateSnapshotMutation *)v5 getPlaybackState];
      v7 = [(_AFMediaPlaybackStateSnapshotMutation *)v5 getNowPlayingTimestamp];
      v8 = [v7 copy];
      nowPlayingTimestamp = v6->_nowPlayingTimestamp;
      v6->_nowPlayingTimestamp = v8;

      v10 = [(_AFMediaPlaybackStateSnapshotMutation *)v5 getMediaType];
      v11 = [v10 copy];
      mediaType = v6->_mediaType;
      v6->_mediaType = v11;

      v13 = [(_AFMediaPlaybackStateSnapshotMutation *)v5 getGroupIdentifier];
      v14 = [v13 copy];
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
@interface MPNowPlayingParticipant
- (MPNowPlayingParticipant)initWithIdentifier:(id)a3;
- (MPNowPlayingParticipant)initWithIdentifier:(id)a3 mediaRemoteUserIdentity:(id)a4;
- (MPNowPlayingParticipant)initWithMediaRemoteContentItem:(id)a3;
- (MPNowPlayingParticipant)initWithMediaRemoteUserIdentity:(id)a3;
- (MRUserIdentity)mediaRemoteUserIdentity;
- (NSString)displayName;
- (NSString)participantIdentifier;
- (int64_t)participantIdentifierType;
- (void)_postParticipantItemChangedNotificationWithDeltaBlock:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setParticipantIdentifier:(id)a3;
- (void)setParticipantIdentifierType:(int64_t)a3;
@end

@implementation MPNowPlayingParticipant

- (void)_postParticipantItemChangedNotificationWithDeltaBlock:(id)a3
{
  v4 = a3;
  if (!+[MPContentItem isSuppressingChangeNotifications])
  {
    v5 = [(MPNowPlayingParticipant *)self identifier];
    if (v5)
    {
      if (v4)
      {
        v6 = [objc_alloc(MEMORY[0x1E69B09F0]) initWithIdentifier:v5];
        v4[2](v4, v6);
        v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
        [v7 setObject:v6 forKeyedSubscript:@"_MPContentItemDidChangeUserInfoKeyDeltaItem"];
      }

      else
      {
        v7 = 0;
      }

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 postNotificationName:@"_MPContentItemDidChangeNotification" object:self userInfo:v7];
    }

    else
    {
      v7 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "Cannot post _MPContentItemDidChangeNotification, item is missing required identifier.", v9, 2u);
      }
    }
  }
}

- (void)setDisplayName:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingParticipant *)self displayName];
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = [v4 isEqual:v5];

    if ((v7 & 1) == 0)
    {
      v8 = [(MPNowPlayingParticipant *)self mediaRemoteContentItem];
      v9 = [v8 metadata];
      [v9 setParticipantName:v4];

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __42__MPNowPlayingParticipant_setDisplayName___block_invoke;
      v10[3] = &unk_1E7681188;
      v11 = v4;
      [(MPNowPlayingParticipant *)self _postParticipantItemChangedNotificationWithDeltaBlock:v10];
    }
  }
}

void __42__MPNowPlayingParticipant_setDisplayName___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 metadata];
  [v3 setParticipantName:v2];
}

- (NSString)displayName
{
  v2 = [(MPNowPlayingParticipant *)self mediaRemoteContentItem];
  v3 = [v2 metadata];
  v4 = [v3 participantName];

  return v4;
}

- (void)setParticipantIdentifierType:(int64_t)a3
{
  if ([(MPNowPlayingParticipant *)self participantIdentifierType]!= a3)
  {
    v5 = a3 == 1;
    v6 = [(MPNowPlayingParticipant *)self mediaRemoteContentItem];
    v7 = [v6 metadata];
    [v7 setIsResolvableParticipant:v5];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__MPNowPlayingParticipant_setParticipantIdentifierType___block_invoke;
    v8[3] = &__block_descriptor_33_e23_v16__0__MRContentItem_8l;
    v9 = v5;
    [(MPNowPlayingParticipant *)self _postParticipantItemChangedNotificationWithDeltaBlock:v8];
  }
}

void __56__MPNowPlayingParticipant_setParticipantIdentifierType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 metadata];
  [v3 setIsResolvableParticipant:v2];
}

- (int64_t)participantIdentifierType
{
  v2 = [(MPNowPlayingParticipant *)self mediaRemoteContentItem];
  v3 = [v2 metadata];
  v4 = [v3 isResolvableParticipant];

  return v4;
}

- (void)setParticipantIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingParticipant *)self participantIdentifier];
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = [v4 isEqual:v5];

    if ((v7 & 1) == 0)
    {
      v8 = [(MPNowPlayingParticipant *)self mediaRemoteContentItem];
      v9 = [v8 metadata];
      [v9 setParticipantIdentifier:v4];

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __52__MPNowPlayingParticipant_setParticipantIdentifier___block_invoke;
      v10[3] = &unk_1E7681188;
      v11 = v4;
      [(MPNowPlayingParticipant *)self _postParticipantItemChangedNotificationWithDeltaBlock:v10];
    }
  }
}

void __52__MPNowPlayingParticipant_setParticipantIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 metadata];
  [v3 setParticipantIdentifier:v2];
}

- (NSString)participantIdentifier
{
  v2 = [(MPNowPlayingParticipant *)self mediaRemoteContentItem];
  v3 = [v2 metadata];
  v4 = [v3 participantIdentifier];

  return v4;
}

- (MRUserIdentity)mediaRemoteUserIdentity
{
  v2 = [(MPNowPlayingParticipant *)self mediaRemoteContentItem];
  v3 = MRIdentityRepresentationForParticipantItem();

  return v3;
}

- (MPNowPlayingParticipant)initWithIdentifier:(id)a3 mediaRemoteUserIdentity:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (![v7 length])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MPNowPlayingParticipant.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"identifier.length > 0"}];

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MPNowPlayingParticipant.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"mediaRemoteUserIdentity"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = MRContentItemRepresentationForIdentity();
  v10 = [(MPNowPlayingParticipant *)self initWithMediaRemoteContentItem:v9];

  return v10;
}

- (MPNowPlayingParticipant)initWithMediaRemoteUserIdentity:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MPNowPlayingParticipant.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"mediaRemoteUserIdentity"}];
  }

  v6 = MSVNanoIDCreateTaggedPointer();
  v7 = MRContentItemRepresentationForIdentity();

  v8 = [(MPNowPlayingParticipant *)self initWithMediaRemoteContentItem:v7];
  return v8;
}

- (MPNowPlayingParticipant)initWithMediaRemoteContentItem:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MPNowPlayingParticipant.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"mediaRemoteContentItem"}];
  }

  v11.receiver = self;
  v11.super_class = MPNowPlayingParticipant;
  v7 = [(MPNowPlayingParticipant *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_mediaRemoteContentItem, a3);
  }

  return v8;
}

- (MPNowPlayingParticipant)initWithIdentifier:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MPNowPlayingParticipant.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"identifier.length > 0"}];
  }

  v11.receiver = self;
  v11.super_class = MPNowPlayingParticipant;
  v6 = [(MPNowPlayingParticipant *)&v11 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E69B09F0]) initWithIdentifier:v5];
    mediaRemoteContentItem = v6->_mediaRemoteContentItem;
    v6->_mediaRemoteContentItem = v7;
  }

  return v6;
}

@end
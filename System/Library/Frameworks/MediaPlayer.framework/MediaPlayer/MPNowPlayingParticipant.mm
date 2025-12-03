@interface MPNowPlayingParticipant
- (MPNowPlayingParticipant)initWithIdentifier:(id)identifier;
- (MPNowPlayingParticipant)initWithIdentifier:(id)identifier mediaRemoteUserIdentity:(id)identity;
- (MPNowPlayingParticipant)initWithMediaRemoteContentItem:(id)item;
- (MPNowPlayingParticipant)initWithMediaRemoteUserIdentity:(id)identity;
- (MRUserIdentity)mediaRemoteUserIdentity;
- (NSString)displayName;
- (NSString)participantIdentifier;
- (int64_t)participantIdentifierType;
- (void)_postParticipantItemChangedNotificationWithDeltaBlock:(id)block;
- (void)setDisplayName:(id)name;
- (void)setParticipantIdentifier:(id)identifier;
- (void)setParticipantIdentifierType:(int64_t)type;
@end

@implementation MPNowPlayingParticipant

- (void)_postParticipantItemChangedNotificationWithDeltaBlock:(id)block
{
  blockCopy = block;
  if (!+[MPContentItem isSuppressingChangeNotifications])
  {
    identifier = [(MPNowPlayingParticipant *)self identifier];
    if (identifier)
    {
      if (blockCopy)
      {
        v6 = [objc_alloc(MEMORY[0x1E69B09F0]) initWithIdentifier:identifier];
        blockCopy[2](blockCopy, v6);
        v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
        [v7 setObject:v6 forKeyedSubscript:@"_MPContentItemDidChangeUserInfoKeyDeltaItem"];
      }

      else
      {
        v7 = 0;
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"_MPContentItemDidChangeNotification" object:self userInfo:v7];
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

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  displayName = [(MPNowPlayingParticipant *)self displayName];
  v6 = displayName;
  if (displayName == nameCopy)
  {
  }

  else
  {
    v7 = [nameCopy isEqual:displayName];

    if ((v7 & 1) == 0)
    {
      mediaRemoteContentItem = [(MPNowPlayingParticipant *)self mediaRemoteContentItem];
      metadata = [mediaRemoteContentItem metadata];
      [metadata setParticipantName:nameCopy];

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __42__MPNowPlayingParticipant_setDisplayName___block_invoke;
      v10[3] = &unk_1E7681188;
      v11 = nameCopy;
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
  mediaRemoteContentItem = [(MPNowPlayingParticipant *)self mediaRemoteContentItem];
  metadata = [mediaRemoteContentItem metadata];
  participantName = [metadata participantName];

  return participantName;
}

- (void)setParticipantIdentifierType:(int64_t)type
{
  if ([(MPNowPlayingParticipant *)self participantIdentifierType]!= type)
  {
    v5 = type == 1;
    mediaRemoteContentItem = [(MPNowPlayingParticipant *)self mediaRemoteContentItem];
    metadata = [mediaRemoteContentItem metadata];
    [metadata setIsResolvableParticipant:v5];

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
  mediaRemoteContentItem = [(MPNowPlayingParticipant *)self mediaRemoteContentItem];
  metadata = [mediaRemoteContentItem metadata];
  isResolvableParticipant = [metadata isResolvableParticipant];

  return isResolvableParticipant;
}

- (void)setParticipantIdentifier:(id)identifier
{
  identifierCopy = identifier;
  participantIdentifier = [(MPNowPlayingParticipant *)self participantIdentifier];
  v6 = participantIdentifier;
  if (participantIdentifier == identifierCopy)
  {
  }

  else
  {
    v7 = [identifierCopy isEqual:participantIdentifier];

    if ((v7 & 1) == 0)
    {
      mediaRemoteContentItem = [(MPNowPlayingParticipant *)self mediaRemoteContentItem];
      metadata = [mediaRemoteContentItem metadata];
      [metadata setParticipantIdentifier:identifierCopy];

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __52__MPNowPlayingParticipant_setParticipantIdentifier___block_invoke;
      v10[3] = &unk_1E7681188;
      v11 = identifierCopy;
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
  mediaRemoteContentItem = [(MPNowPlayingParticipant *)self mediaRemoteContentItem];
  metadata = [mediaRemoteContentItem metadata];
  participantIdentifier = [metadata participantIdentifier];

  return participantIdentifier;
}

- (MRUserIdentity)mediaRemoteUserIdentity
{
  mediaRemoteContentItem = [(MPNowPlayingParticipant *)self mediaRemoteContentItem];
  v3 = MRIdentityRepresentationForParticipantItem();

  return v3;
}

- (MPNowPlayingParticipant)initWithIdentifier:(id)identifier mediaRemoteUserIdentity:(id)identity
{
  identifierCopy = identifier;
  identityCopy = identity;
  if (![identifierCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPNowPlayingParticipant.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"identifier.length > 0"}];

    if (identityCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPNowPlayingParticipant.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"mediaRemoteUserIdentity"}];

    goto LABEL_3;
  }

  if (!identityCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = MRContentItemRepresentationForIdentity();
  v10 = [(MPNowPlayingParticipant *)self initWithMediaRemoteContentItem:v9];

  return v10;
}

- (MPNowPlayingParticipant)initWithMediaRemoteUserIdentity:(id)identity
{
  identityCopy = identity;
  if (!identityCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPNowPlayingParticipant.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"mediaRemoteUserIdentity"}];
  }

  v6 = MSVNanoIDCreateTaggedPointer();
  v7 = MRContentItemRepresentationForIdentity();

  v8 = [(MPNowPlayingParticipant *)self initWithMediaRemoteContentItem:v7];
  return v8;
}

- (MPNowPlayingParticipant)initWithMediaRemoteContentItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPNowPlayingParticipant.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"mediaRemoteContentItem"}];
  }

  v11.receiver = self;
  v11.super_class = MPNowPlayingParticipant;
  v7 = [(MPNowPlayingParticipant *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_mediaRemoteContentItem, item);
  }

  return v8;
}

- (MPNowPlayingParticipant)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![identifierCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPNowPlayingParticipant.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"identifier.length > 0"}];
  }

  v11.receiver = self;
  v11.super_class = MPNowPlayingParticipant;
  v6 = [(MPNowPlayingParticipant *)&v11 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E69B09F0]) initWithIdentifier:identifierCopy];
    mediaRemoteContentItem = v6->_mediaRemoteContentItem;
    v6->_mediaRemoteContentItem = v7;
  }

  return v6;
}

@end
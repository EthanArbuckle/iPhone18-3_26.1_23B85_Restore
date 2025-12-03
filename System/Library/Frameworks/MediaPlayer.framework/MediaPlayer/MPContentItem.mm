@interface MPContentItem
+ (BOOL)isSuppressingChangeNotifications;
+ (void)performChangeImmediately:(id)immediately;
+ (void)performSuppressingChangeNotifications:(id)notifications;
- (BOOL)isContainer;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExplicitContent;
- (BOOL)isPlayable;
- (BOOL)isStreamingContent;
- (MPContentItem)init;
- (MPContentItem)initWithExternalRepresentation:(id)representation;
- (MPContentItem)initWithIdentifier:(NSString *)identifier;
- (NSString)identifier;
- (NSString)subtitle;
- (NSString)title;
- (float)playbackProgress;
- (id)_initWithMediaRemoteContentItem:(void *)item;
- (id)createExternalRepresentation;
- (id)description;
- (void)_loadArtwork:(id)artwork completion:(id)completion;
- (void)_postItemChangedNotificationWithDeltaBlock:(id)block;
- (void)dealloc;
- (void)postChangeNotificationImmediately:(BOOL)immediately;
- (void)setArtwork:(MPMediaItemArtwork *)artwork;
- (void)setContainer:(BOOL)container;
- (void)setExplicitContent:(BOOL)explicitContent;
- (void)setPlayable:(BOOL)playable;
- (void)setPlaybackProgress:(float)playbackProgress;
- (void)setStreamingContent:(BOOL)streamingContent;
- (void)setSubtitle:(NSString *)subtitle;
- (void)setTitle:(NSString *)title;
@end

@implementation MPContentItem

- (void)dealloc
{
  mediaRemoteContentItem = self->_mediaRemoteContentItem;
  if (mediaRemoteContentItem)
  {
    CFRelease(mediaRemoteContentItem);
  }

  v4.receiver = self;
  v4.super_class = MPContentItem;
  [(MPContentItem *)&v4 dealloc];
}

- (NSString)identifier
{
  [(MPContentItem *)self _mediaRemoteContentItem];

  return MRContentItemGetIdentifier();
}

- (void)_loadArtwork:(id)artwork completion:(id)completion
{
  completionCopy = completion;
  v6 = +[MPPlayableContentManager sharedContentManager];
  artwork = self->_artwork;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__MPContentItem__loadArtwork_completion___block_invoke;
  v9[3] = &unk_1E7676FB8;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [v6 _enqueueArtworkUpdate:artwork size:v9 withCompletion:{-1.0, -1.0}];
}

void __41__MPContentItem__loadArtwork_completion___block_invoke(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MPContentItem__loadArtwork_completion___block_invoke_2;
  block[3] = &unk_1E7676F90;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v7;
  v13 = v8;
  v15 = a3;
  v16 = a4;
  v14 = v9;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __41__MPContentItem__loadArtwork_completion___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) length];
    v4 = *(a1 + 40);
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "Received artwork with length %llu for content item %@.", &v6, 0x16u);
  }

  [*(a1 + 40) _mediaRemoteContentItem];
  MRContentItemSetArtworkData();
  MRContentItemSetArtworkDataSize();
  [*(a1 + 40) _postItemChangedNotificationWithDeltaBlock:0];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setArtwork:(MPMediaItemArtwork *)artwork
{
  v5 = artwork;
  if (self->_artwork != v5)
  {
    objc_storeStrong(&self->_artwork, artwork);
    MRContentItemSetHasArtworkData();
    if (self->_artwork)
    {
      if ([objc_opt_class() shouldPushArtworkData])
      {
        [(MPContentItem *)self _loadArtwork:self->_artwork completion:0];
      }
    }
  }
}

- (void)_postItemChangedNotificationWithDeltaBlock:(id)block
{
  blockCopy = block;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v7 = [threadDictionary objectForKeyedSubscript:@"_MPContentItemNotificationsSuppressedKey"];
  bOOLValue = [v7 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v9 = MRContentItemGetIdentifier();
    if (v9)
    {
      if (blockCopy)
      {
        v10 = MRContentItemCreate();
        blockCopy[2](blockCopy, v10);
        v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
        [v11 setObject:v10 forKeyedSubscript:@"_MPContentItemDidChangeUserInfoKeyDeltaItem"];
        v12 = [threadDictionary objectForKeyedSubscript:@"_MPContentItemNotificationsImmediateKey"];
        bOOLValue2 = [v12 BOOLValue];

        if (bOOLValue2)
        {
          [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_MPContentItemDidChangeUserInfoKeyImmediately"];
        }

        CFRelease(v10);
      }

      else
      {
        v11 = 0;
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"_MPContentItemDidChangeNotification" object:self userInfo:v11];
    }

    else
    {
      v11 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_ERROR, "Cannot post _MPContentItemDidChangeNotification, item is missing required identifier.", v15, 2u);
      }
    }
  }
}

- (void)setPlayable:(BOOL)playable
{
  if ([(MPContentItem *)self isPlayable]!= playable)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetPlayable();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __29__MPContentItem_setPlayable___block_invoke;
    v5[3] = &__block_descriptor_33_e9_v16__0_v8l;
    v6 = playable;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (BOOL)isPlayable
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CAB0](_mediaRemoteContentItem);
}

- (void)setStreamingContent:(BOOL)streamingContent
{
  if ([(MPContentItem *)self isStreamingContent]!= streamingContent)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetIsStreamingContent();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __37__MPContentItem_setStreamingContent___block_invoke;
    v5[3] = &__block_descriptor_33_e9_v16__0_v8l;
    v6 = streamingContent;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (BOOL)isStreamingContent
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CAC0](_mediaRemoteContentItem);
}

- (void)setExplicitContent:(BOOL)explicitContent
{
  if ([(MPContentItem *)self isExplicitContent]!= explicitContent)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetExplicitItem();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __36__MPContentItem_setExplicitContent___block_invoke;
    v5[3] = &__block_descriptor_33_e9_v16__0_v8l;
    v6 = explicitContent;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (BOOL)isExplicitContent
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA98](_mediaRemoteContentItem);
}

- (void)setContainer:(BOOL)container
{
  if ([(MPContentItem *)self isContainer]!= container)
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetIsContainer();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __30__MPContentItem_setContainer___block_invoke;
    v5[3] = &__block_descriptor_33_e9_v16__0_v8l;
    v6 = container;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v5];
  }
}

- (BOOL)isContainer
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA90](_mediaRemoteContentItem);
}

- (void)setPlaybackProgress:(float)playbackProgress
{
  [(MPContentItem *)self playbackProgress];
  v6 = -v5;
  if (v5 >= 0.0)
  {
    v6 = v5;
  }

  if (v6 > 0.00000011921)
  {
    goto LABEL_7;
  }

  v7 = -playbackProgress;
  if (playbackProgress >= 0.0)
  {
    v7 = playbackProgress;
  }

  if (v7 > 0.00000011921)
  {
LABEL_7:
    v8 = v5 - playbackProgress;
    if (v8 < 0.0)
    {
      v8 = -v8;
    }

    if (v8 > 0.00000011921)
    {
      [(MPContentItem *)self _mediaRemoteContentItem];
      MRContentItemSetPlaybackProgress();
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __37__MPContentItem_setPlaybackProgress___block_invoke;
      v9[3] = &__block_descriptor_36_e9_v16__0_v8l;
      v10 = playbackProgress;
      [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v9];
    }
  }
}

- (float)playbackProgress
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  MEMORY[0x1EEE1CB10](_mediaRemoteContentItem);
  return result;
}

- (void)setSubtitle:(NSString *)subtitle
{
  v4 = subtitle;
  subtitle = [(MPContentItem *)self subtitle];
  v6 = subtitle;
  if (subtitle != v4 && ![(NSString *)subtitle isEqual:v4]|| !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetSubtitle();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __29__MPContentItem_setSubtitle___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)subtitle
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB80](_mediaRemoteContentItem);
}

- (void)setTitle:(NSString *)title
{
  v4 = title;
  title = [(MPContentItem *)self title];
  v6 = title;
  if (title != v4 && ![(NSString *)title isEqual:v4]|| !(v4 | v6))
  {
    [(MPContentItem *)self _mediaRemoteContentItem];
    MRContentItemSetTitle();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __26__MPContentItem_setTitle___block_invoke;
    v7[3] = &unk_1E7680D90;
    v8 = v4;
    [(MPContentItem *)self _postItemChangedNotificationWithDeltaBlock:v7];
  }
}

- (NSString)title
{
  _mediaRemoteContentItem = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB88](_mediaRemoteContentItem);
}

- (void)postChangeNotificationImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  v5 = MRContentItemGetIdentifier();
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    [v6 setObject:self->_mediaRemoteContentItem forKeyedSubscript:@"_MPContentItemDidChangeUserInfoKeyDeltaItem"];
    if (immediatelyCopy)
    {
      [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_MPContentItemDidChangeUserInfoKeyImmediately"];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_MPContentItemDidChangeNotification" object:self userInfo:v6];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "Cannot post _MPContentItemDidChangeNotification, item is missing required identifier.", v9, 2u);
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      createExternalRepresentation = [(MPContentItem *)self createExternalRepresentation];
      createExternalRepresentation2 = [(MPContentItem *)equalCopy createExternalRepresentation];
      v7 = [createExternalRepresentation isEqualToData:createExternalRepresentation2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)createExternalRepresentation
{
  ExternalRepresentation = MRContentItemCreateExternalRepresentation();

  return ExternalRepresentation;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(MPContentItem *)self identifier];
  title = [(MPContentItem *)self title];
  v7 = [v3 stringWithFormat:@"<%@: %p id=%@ title=%@>", v4, self, identifier, title];

  return v7;
}

- (id)_initWithMediaRemoteContentItem:(void *)item
{
  selfCopy = item;
  if (item)
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = [(MPContentItem *)self initWithIdentifier:null];

    if (v6)
    {
      v6->_mediaRemoteContentItem = CFRetain(selfCopy);
    }

    self = v6;
    selfCopy = self;
  }

  return selfCopy;
}

- (MPContentItem)initWithExternalRepresentation:(id)representation
{
  v4 = MRContentItemCreateFromExternalRepresentation();

  return [(MPContentItem *)self _initWithMediaRemoteContentItem:v4];
}

- (MPContentItem)initWithIdentifier:(NSString *)identifier
{
  stringValue = identifier;
  v12.receiver = self;
  v12.super_class = MPContentItem;
  v6 = [(MPContentItem *)&v12 init];
  if (!stringValue)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v6 file:@"MPContentItem.m" lineNumber:75 description:@"Can't create an MPContentItem object with a nil identifier."];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = stringValue;
    stringValue = v7;
    if (objc_opt_respondsToSelector())
    {
      stringValue = [(NSString *)v7 stringValue];
    }
  }

  if (v6)
  {
    v8 = stringValue == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    null = [MEMORY[0x1E695DFB0] null];

    if (stringValue != null)
    {
      v6->_mediaRemoteContentItem = MRContentItemCreate();
    }
  }

  return v6;
}

- (MPContentItem)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [(MPContentItem *)self initWithIdentifier:uUIDString];

  return v5;
}

+ (void)performChangeImmediately:(id)immediately
{
  immediatelyCopy = immediately;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v5 = [threadDictionary objectForKeyedSubscript:@"_MPContentItemNotificationsImmediateKey"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    immediatelyCopy[2]();
  }

  else
  {
    [threadDictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_MPContentItemNotificationsImmediateKey"];
    immediatelyCopy[2]();
    [threadDictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"_MPContentItemNotificationsImmediateKey"];
  }
}

+ (void)performSuppressingChangeNotifications:(id)notifications
{
  notificationsCopy = notifications;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v5 = [threadDictionary objectForKeyedSubscript:@"_MPContentItemNotificationsSuppressedKey"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    notificationsCopy[2]();
  }

  else
  {
    [threadDictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_MPContentItemNotificationsSuppressedKey"];
    notificationsCopy[2]();
    [threadDictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"_MPContentItemNotificationsSuppressedKey"];
  }
}

+ (BOOL)isSuppressingChangeNotifications
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKeyedSubscript:@"_MPContentItemNotificationsSuppressedKey"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

@end
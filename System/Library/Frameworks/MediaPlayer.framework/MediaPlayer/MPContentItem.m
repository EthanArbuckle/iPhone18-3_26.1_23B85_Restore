@interface MPContentItem
+ (BOOL)isSuppressingChangeNotifications;
+ (void)performChangeImmediately:(id)a3;
+ (void)performSuppressingChangeNotifications:(id)a3;
- (BOOL)isContainer;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExplicitContent;
- (BOOL)isPlayable;
- (BOOL)isStreamingContent;
- (MPContentItem)init;
- (MPContentItem)initWithExternalRepresentation:(id)a3;
- (MPContentItem)initWithIdentifier:(NSString *)identifier;
- (NSString)identifier;
- (NSString)subtitle;
- (NSString)title;
- (float)playbackProgress;
- (id)_initWithMediaRemoteContentItem:(void *)a3;
- (id)createExternalRepresentation;
- (id)description;
- (void)_loadArtwork:(id)a3 completion:(id)a4;
- (void)_postItemChangedNotificationWithDeltaBlock:(id)a3;
- (void)dealloc;
- (void)postChangeNotificationImmediately:(BOOL)a3;
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

- (void)_loadArtwork:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = +[MPPlayableContentManager sharedContentManager];
  artwork = self->_artwork;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__MPContentItem__loadArtwork_completion___block_invoke;
  v9[3] = &unk_1E7676FB8;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
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

- (void)_postItemChangedNotificationWithDeltaBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF00] currentThread];
  v6 = [v5 threadDictionary];

  v7 = [v6 objectForKeyedSubscript:@"_MPContentItemNotificationsSuppressedKey"];
  v8 = [v7 BOOLValue];

  if ((v8 & 1) == 0)
  {
    v9 = MRContentItemGetIdentifier();
    if (v9)
    {
      if (v4)
      {
        v10 = MRContentItemCreate();
        v4[2](v4, v10);
        v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
        [v11 setObject:v10 forKeyedSubscript:@"_MPContentItemDidChangeUserInfoKeyDeltaItem"];
        v12 = [v6 objectForKeyedSubscript:@"_MPContentItemNotificationsImmediateKey"];
        v13 = [v12 BOOLValue];

        if (v13)
        {
          [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_MPContentItemDidChangeUserInfoKeyImmediately"];
        }

        CFRelease(v10);
      }

      else
      {
        v11 = 0;
      }

      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      [v14 postNotificationName:@"_MPContentItemDidChangeNotification" object:self userInfo:v11];
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
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CAB0](v2);
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
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CAC0](v2);
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
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA98](v2);
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
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CA90](v2);
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
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  MEMORY[0x1EEE1CB10](v2);
  return result;
}

- (void)setSubtitle:(NSString *)subtitle
{
  v4 = subtitle;
  v5 = [(MPContentItem *)self subtitle];
  v6 = v5;
  if (v5 != v4 && ![(NSString *)v5 isEqual:v4]|| !(v4 | v6))
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
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB80](v2);
}

- (void)setTitle:(NSString *)title
{
  v4 = title;
  v5 = [(MPContentItem *)self title];
  v6 = v5;
  if (v5 != v4 && ![(NSString *)v5 isEqual:v4]|| !(v4 | v6))
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
  v2 = [(MPContentItem *)self _mediaRemoteContentItem];

  return MEMORY[0x1EEE1CB88](v2);
}

- (void)postChangeNotificationImmediately:(BOOL)a3
{
  v3 = a3;
  v5 = MRContentItemGetIdentifier();
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    [v6 setObject:self->_mediaRemoteContentItem forKeyedSubscript:@"_MPContentItemDidChangeUserInfoKeyDeltaItem"];
    if (v3)
    {
      [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_MPContentItemDidChangeUserInfoKeyImmediately"];
    }

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"_MPContentItemDidChangeNotification" object:self userInfo:v6];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MPContentItem *)self createExternalRepresentation];
      v6 = [(MPContentItem *)v4 createExternalRepresentation];
      v7 = [v5 isEqualToData:v6];
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
  v5 = [(MPContentItem *)self identifier];
  v6 = [(MPContentItem *)self title];
  v7 = [v3 stringWithFormat:@"<%@: %p id=%@ title=%@>", v4, self, v5, v6];

  return v7;
}

- (id)_initWithMediaRemoteContentItem:(void *)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = [(MPContentItem *)self initWithIdentifier:v5];

    if (v6)
    {
      v6->_mediaRemoteContentItem = CFRetain(v3);
    }

    self = v6;
    v3 = self;
  }

  return v3;
}

- (MPContentItem)initWithExternalRepresentation:(id)a3
{
  v4 = MRContentItemCreateFromExternalRepresentation();

  return [(MPContentItem *)self _initWithMediaRemoteContentItem:v4];
}

- (MPContentItem)initWithIdentifier:(NSString *)identifier
{
  v5 = identifier;
  v12.receiver = self;
  v12.super_class = MPContentItem;
  v6 = [(MPContentItem *)&v12 init];
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:v6 file:@"MPContentItem.m" lineNumber:75 description:@"Can't create an MPContentItem object with a nil identifier."];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = v5;
    v5 = v7;
    if (objc_opt_respondsToSelector())
    {
      v5 = [(NSString *)v7 stringValue];
    }
  }

  if (v6)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];

    if (v5 != v9)
    {
      v6->_mediaRemoteContentItem = MRContentItemCreate();
    }
  }

  return v6;
}

- (MPContentItem)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [(MPContentItem *)self initWithIdentifier:v4];

  return v5;
}

+ (void)performChangeImmediately:(id)a3
{
  v7 = a3;
  v3 = [MEMORY[0x1E696AF00] currentThread];
  v4 = [v3 threadDictionary];

  v5 = [v4 objectForKeyedSubscript:@"_MPContentItemNotificationsImmediateKey"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7[2]();
  }

  else
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_MPContentItemNotificationsImmediateKey"];
    v7[2]();
    [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"_MPContentItemNotificationsImmediateKey"];
  }
}

+ (void)performSuppressingChangeNotifications:(id)a3
{
  v7 = a3;
  v3 = [MEMORY[0x1E696AF00] currentThread];
  v4 = [v3 threadDictionary];

  v5 = [v4 objectForKeyedSubscript:@"_MPContentItemNotificationsSuppressedKey"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7[2]();
  }

  else
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_MPContentItemNotificationsSuppressedKey"];
    v7[2]();
    [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"_MPContentItemNotificationsSuppressedKey"];
  }
}

+ (BOOL)isSuppressingChangeNotifications
{
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKeyedSubscript:@"_MPContentItemNotificationsSuppressedKey"];
  v5 = [v4 BOOLValue];

  return v5;
}

@end
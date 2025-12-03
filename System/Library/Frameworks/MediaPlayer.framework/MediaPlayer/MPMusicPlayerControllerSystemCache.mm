@interface MPMusicPlayerControllerSystemCache
+ (MPMusicPlayerControllerSystemCache)sharedCache;
- (BOOL)_saveObject:(id)object forKey:(id)key error:(id *)error;
- (BOOL)hasCachedData;
- (MPMusicPlayerControllerNowPlaying)nowPlaying;
- (MPMusicPlayerQueueDescriptor)queueDescriptor;
- (id)_init;
- (id)_objectOfClass:(Class)class forKey:(id)key error:(id *)error;
- (void)clearCache;
- (void)setNowPlaying:(id)playing;
- (void)setQueueDescriptor:(id)descriptor;
@end

@implementation MPMusicPlayerControllerSystemCache

+ (MPMusicPlayerControllerSystemCache)sharedCache
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__MPMusicPlayerControllerSystemCache_sharedCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCache_onceToken != -1)
  {
    dispatch_once(&sharedCache_onceToken, block);
  }

  v2 = sharedCache___sharedCache;

  return v2;
}

void __49__MPMusicPlayerControllerSystemCache_sharedCache__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = sharedCache___sharedCache;
  sharedCache___sharedCache = v1;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = MPMusicPlayerControllerSystemCache;
  v2 = [(MPMusicPlayerControllerSystemCache *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileipod"];
    defaults = v2->_defaults;
    v2->_defaults = v3;
  }

  return v2;
}

- (BOOL)_saveObject:(id)object forKey:(id)key error:(id *)error
{
  if (object)
  {
    v8 = MEMORY[0x1E69B1468];
    keyCopy = key;
    keyCopy2 = [v8 encodedDataWithRootObject:object error:error];
    [(NSUserDefaults *)self->_defaults setObject:keyCopy2 forKey:keyCopy];

    v11 = keyCopy2 != 0;
  }

  else
  {
    defaults = self->_defaults;
    keyCopy2 = key;
    [(NSUserDefaults *)defaults removeObjectForKey:keyCopy2];
    v11 = 1;
  }

  return v11;
}

- (id)_objectOfClass:(Class)class forKey:(id)key error:(id *)error
{
  v7 = [(NSUserDefaults *)self->_defaults dataForKey:key];
  if (v7)
  {
    v8 = [MEMORY[0x1E69B1460] decodedObjectOfClass:class fromData:v7 error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setQueueDescriptor:(id)descriptor
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  [(MPMusicPlayerControllerSystemCache *)self _saveObject:descriptor forKey:@"musicPlayerStateRestorationCache-queueDescriptor" error:&v6];
  v3 = v6;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      msv_description = [v3 msv_description];
      *buf = 138543362;
      v8 = msv_description;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "Failed to encode cached queue descriptor error=%{public}@", buf, 0xCu);
    }
  }
}

- (MPMusicPlayerQueueDescriptor)queueDescriptor
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = [(MPMusicPlayerControllerSystemCache *)self _objectOfClass:objc_opt_class() forKey:@"musicPlayerStateRestorationCache-queueDescriptor" error:&v7];
  v3 = v7;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      msv_description = [v3 msv_description];
      *buf = 138543362;
      v9 = msv_description;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "Failed to decode cached queue descriptor error=%{public}@", buf, 0xCu);
    }
  }

  return v2;
}

- (void)setNowPlaying:(id)playing
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  [(MPMusicPlayerControllerSystemCache *)self _saveObject:playing forKey:@"musicPlayerStateRestorationCache-nowPlaying" error:&v6];
  v3 = v6;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      msv_description = [v3 msv_description];
      *buf = 138543362;
      v8 = msv_description;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "Failed to encode cached now playing error=%{public}@", buf, 0xCu);
    }
  }
}

- (MPMusicPlayerControllerNowPlaying)nowPlaying
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = [(MPMusicPlayerControllerSystemCache *)self _objectOfClass:objc_opt_class() forKey:@"musicPlayerStateRestorationCache-nowPlaying" error:&v7];
  v3 = v7;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      msv_description = [v3 msv_description];
      *buf = 138543362;
      v9 = msv_description;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "Failed to decode cached now playing error=%{public}@", buf, 0xCu);
    }
  }

  return v2;
}

- (void)clearCache
{
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"musicPlayerStateRestorationCache-nowPlaying"];
  defaults = self->_defaults;

  [(NSUserDefaults *)defaults removeObjectForKey:@"musicPlayerStateRestorationCache-queueDescriptor"];
}

- (BOOL)hasCachedData
{
  v2 = [(NSUserDefaults *)self->_defaults objectForKey:@"musicPlayerStateRestorationCache-nowPlaying"];
  v3 = v2 != 0;

  return v3;
}

@end
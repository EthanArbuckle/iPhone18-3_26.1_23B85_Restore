@interface MPMusicPlayerControllerSystemCache
+ (MPMusicPlayerControllerSystemCache)sharedCache;
- (BOOL)_saveObject:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)hasCachedData;
- (MPMusicPlayerControllerNowPlaying)nowPlaying;
- (MPMusicPlayerQueueDescriptor)queueDescriptor;
- (id)_init;
- (id)_objectOfClass:(Class)a3 forKey:(id)a4 error:(id *)a5;
- (void)clearCache;
- (void)setNowPlaying:(id)a3;
- (void)setQueueDescriptor:(id)a3;
@end

@implementation MPMusicPlayerControllerSystemCache

+ (MPMusicPlayerControllerSystemCache)sharedCache
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__MPMusicPlayerControllerSystemCache_sharedCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (BOOL)_saveObject:(id)a3 forKey:(id)a4 error:(id *)a5
{
  if (a3)
  {
    v8 = MEMORY[0x1E69B1468];
    v9 = a4;
    v10 = [v8 encodedDataWithRootObject:a3 error:a5];
    [(NSUserDefaults *)self->_defaults setObject:v10 forKey:v9];

    v11 = v10 != 0;
  }

  else
  {
    defaults = self->_defaults;
    v10 = a4;
    [(NSUserDefaults *)defaults removeObjectForKey:v10];
    v11 = 1;
  }

  return v11;
}

- (id)_objectOfClass:(Class)a3 forKey:(id)a4 error:(id *)a5
{
  v7 = [(NSUserDefaults *)self->_defaults dataForKey:a4];
  if (v7)
  {
    v8 = [MEMORY[0x1E69B1460] decodedObjectOfClass:a3 fromData:v7 error:a5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setQueueDescriptor:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  [(MPMusicPlayerControllerSystemCache *)self _saveObject:a3 forKey:@"musicPlayerStateRestorationCache-queueDescriptor" error:&v6];
  v3 = v6;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 msv_description];
      *buf = 138543362;
      v8 = v5;
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
      v5 = [v3 msv_description];
      *buf = 138543362;
      v9 = v5;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "Failed to decode cached queue descriptor error=%{public}@", buf, 0xCu);
    }
  }

  return v2;
}

- (void)setNowPlaying:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  [(MPMusicPlayerControllerSystemCache *)self _saveObject:a3 forKey:@"musicPlayerStateRestorationCache-nowPlaying" error:&v6];
  v3 = v6;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 msv_description];
      *buf = 138543362;
      v8 = v5;
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
      v5 = [v3 msv_description];
      *buf = 138543362;
      v9 = v5;
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
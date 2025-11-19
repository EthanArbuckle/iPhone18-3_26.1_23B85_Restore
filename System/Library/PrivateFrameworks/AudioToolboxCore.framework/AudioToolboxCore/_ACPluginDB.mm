@interface _ACPluginDB
+ (id)path;
- (AudioComponentVector)postInit:(SEL)a3;
- (_ACPluginDB)init;
- (_ACPluginDB)initWithCoder:(id)a3;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _ACPluginDB

+ (id)path
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 stringByAppendingPathComponent:@"com.apple.audio.components"];

  return v4;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 11) = 0;
  return self;
}

- (AudioComponentVector)postInit:(SEL)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = dispatch_queue_create("AudioComponentPluginScanner", 0);
  mDispatchQueue = self->mDispatchQueue;
  self->mDispatchQueue = v7;

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->mSorted = 1;
  v33 = a4;
  if (!a4)
  {
    v9 = getenv("HOME");
    v49 = "";
    v50 = "/AppleInternal";
    v51 = 0;
    if (v9)
    {
      v10 = 40;
      v11 = 8;
      do
      {
        snprintf(__str, 0x400uLL, "%s/Library/Audio/Plug-Ins/Components", v9);
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__str];
        [(_ACPluginDB *)self initialScanDirectory:v12 priority:v10 components:retstr];

        v10 = (v10 - 1);
        v9 = *&v48[v11 + 128];
        v11 += 8;
      }

      while (v9);
    }
  }

  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v13 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEBUG))
  {
    *__str = 136315394;
    v53 = "AudioComponentPluginScanner.mm";
    v54 = 1024;
    v55 = 608;
    _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d ACPL: loading complete", __str, 0x12u);
  }

  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v17 = [(NSMutableDictionary *)self->mSearchDirectories allKeys];
  v18 = [v17 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v18)
  {
    v19 = *v43;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v43 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v42 + 1) + 8 * i);
        v22 = [(NSMutableDictionary *)self->mSearchDirectories objectForKeyedSubscript:v21];
        if (v22[1])
        {
          [v16 addObject:v22];
        }

        else
        {
          [v15 addObject:v21];
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v18);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = v15;
  v24 = [v23 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v24)
  {
    v25 = *v39;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(v23);
        }

        [(NSMutableDictionary *)self->mSearchDirectories removeObjectForKey:*(*(&v38 + 1) + 8 * j)];
        self->mDirty = 1;
      }

      v24 = [v23 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v24);
  }

  [(_ACPluginDB *)self writeIfDirty];
  if (!v33)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v27 = v16;
    v28 = [v27 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v28)
    {
      v29 = *v35;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(v27);
          }

          [*(*(&v34 + 1) + 8 * k) monitorDirectory];
        }

        v28 = [v27 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v28);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:3 forKey:@"version"];
  [v4 encodeObject:self->mSearchDirectories forKey:@"directories"];
}

- (_ACPluginDB)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 decodeInt32ForKey:@"version"] == 3)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"directories"];
    mSearchDirectories = self->mSearchDirectories;
    self->mSearchDirectories = v8;
  }

  else
  {
    self = [(_ACPluginDB *)self init];
  }

  v10 = self;

  return v10;
}

- (_ACPluginDB)init
{
  v3 = objc_opt_new();
  mSearchDirectories = self->mSearchDirectories;
  self->mSearchDirectories = v3;

  return self;
}

@end
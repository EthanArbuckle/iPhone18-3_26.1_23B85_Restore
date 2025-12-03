@interface _ACPluginDBDirectory
- (BOOL)refreshModificationDate;
- (_ACPluginDBDirectory)initWithCoder:(id)coder;
- (_ACPluginDBDirectory)initWithPath:(id)path priority:(int)priority;
- (void)bundlesChanged:(id)changed shouldRescan:(BOOL)rescan;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)eventStreamCallback:(id)callback flags:(const unsigned int *)flags;
- (void)loadAllComponents:(void *)components;
- (void)monitorDirectory;
- (void)scanDirectory;
@end

@implementation _ACPluginDBDirectory

- (void)scanDirectory
{
  v29 = *MEMORY[0x1E69E9840];
  v17 = objc_opt_new();
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v3 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    uTF8String = [(NSString *)self->mFullPath UTF8String];
    *buf = 136315650;
    v24 = "AudioComponentPluginScanner.mm";
    v25 = 1024;
    v26 = 465;
    v27 = 2080;
    v28 = uTF8String;
    _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d ACPL: Scanning %s", buf, 0x1Cu);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [defaultManager contentsOfDirectoryAtPath:self->mFullPath error:0];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        pathExtension = [v12 pathExtension];
        if (([pathExtension isEqualToString:@"audiocomp"] & 1) != 0 || objc_msgSend(pathExtension, "isEqualToString:", @"component"))
        {
          v14 = [(_ACPluginDBDirectory *)self scanBundle:v12 loadable:self->mComponentsLoadable];
          [(NSMutableDictionary *)v17 setObject:v14 forKey:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  mBundlesByName = self->mBundlesByName;
  self->mBundlesByName = v17;

  self->mModificationDate = self->mCurrentModificationDate;
  v16 = *MEMORY[0x1E69E9840];
}

- (void)loadAllComponents:(void *)components
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->mBundlesByName allValues];
  v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v9 + 1) + 8 * v7++) loadAllComponents:components];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)monitorDirectory
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (self->mDB)
  {
    v5.version = 0;
    memset(&v5.retain, 0, 24);
    v5.info = self;
    v6[0] = self->mFullPath;
    v3 = FSEventStreamCreate(0, eventStreamCallback, &v5, [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:{1, 0, self, 0, 0, 0}], 0xFFFFFFFFFFFFFFFFLL, 2.0, 0x15u);
    self->mFSMonitor = v3;
    FSEventStreamSetDispatchQueue(v3, self->mDB->mDispatchQueue);
    FSEventStreamStart(self->mFSMonitor);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)eventStreamCallback:(id)callback flags:(const unsigned int *)flags
{
  v27 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  self->mNrOfPathsChanged += [callbackCopy count];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = callbackCopy;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v23;
    flagsCopy = flags;
    while (2)
    {
      v10 = 0;
      v11 = &flags[v8];
      v20 = v7 + v8;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ((v11[v10] & 0x20) != 0)
        {
          self->mShouldRescan = 1;
          goto LABEL_14;
        }

        v12 = *(*(&v22 + 1) + 8 * v10);
        pathExtension = [v12 pathExtension];
        if (([pathExtension isEqualToString:@"audiocomp"] & 1) != 0 || objc_msgSend(pathExtension, "isEqualToString:", @"component"))
        {
          [(NSMutableArray *)self->mChangedBundlePaths addObject:v12];
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      flags = flagsCopy;
      v8 = v20;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  mNrOfPathsChanged = self->mNrOfPathsChanged;
  v15 = dispatch_time(0, 2000000000);
  mDispatchQueue = self->mDB->mDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50___ACPluginDBDirectory_eventStreamCallback_flags___block_invoke;
  block[3] = &unk_1E72C2870;
  block[4] = self;
  block[5] = mNrOfPathsChanged;
  dispatch_after(v15, mDispatchQueue, block);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)bundlesChanged:(id)changed shouldRescan:(BOOL)rescan
{
  rescanCopy = rescan;
  v45 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v6 = changedCopy;
  if (!self->mDB)
  {
    __assert_rtn("[_ACPluginDBDirectory bundlesChanged:shouldRescan:]", "AudioComponentPluginScanner.mm", 324, "mDB != nil");
  }

  memset(&v41, 0, 24);
  v41.mSorted = 1;
  memset(&v40, 0, 24);
  v40.mSorted = 1;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = changedCopy;
  v7 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v7)
  {
    v8 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        if (!gAudioComponentLogCategory)
        {
          operator new();
        }

        v11 = *gAudioComponentLogCategory;
        if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "AudioComponentPluginScanner.mm";
          *&buf[12] = 1024;
          *&buf[14] = 328;
          *&buf[18] = 2112;
          *&buf[20] = v10;
          _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@ changed", buf, 0x1Cu);
        }

        v13 = [(NSString *)self->mFullPath length];
        if ([v10 compare:self->mFullPath options:0 range:{0, v13}])
        {
          if (!gAudioComponentLogCategory)
          {
            operator new();
          }

          v14 = *gAudioComponentLogCategory;
          if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEFAULT))
          {
            mFullPath = self->mFullPath;
            *buf = 136315906;
            *&buf[4] = "AudioComponentPluginScanner.mm";
            *&buf[12] = 1024;
            *&buf[14] = 331;
            *&buf[18] = 2112;
            *&buf[20] = v10;
            *&buf[28] = 2112;
            *&buf[30] = mFullPath;
            _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@ doesn't start with %@", buf, 0x26u);
          }

          continue;
        }

        if ([v10 characterAtIndex:v13] == 47)
        {
          v15 = v13 + 1;
        }

        else
        {
          v15 = v13;
        }

        v33 = [v10 substringFromIndex:v15];
        pathComponents = [v33 pathComponents];
        v17 = [pathComponents objectAtIndexedSubscript:0];

        v18 = v10;
        v19 = v6;
        v20 = access([v10 UTF8String], 5);
        v21 = [(NSMutableDictionary *)self->mBundlesByName objectForKeyedSubscript:v17];
        v22 = v21;
        if (v21)
        {
          memset(buf, 0, 24);
          std::vector<std::shared_ptr<APComponent>>::__init_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(buf, *(v21 + 32), *(v21 + 40), (*(v21 + 40) - *(v21 + 32)) >> 4);
          v23 = v22[56];
        }

        else
        {
          memset(buf, 0, 32);
          v23 = 1;
        }

        v26 = 0;
        buf[24] = v23;
        memset(&v35, 0, 24);
        v35.mSorted = 1;
        if (v20)
        {
          if (!v22)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v27 = [(_ACPluginDBDirectory *)self scanBundle:v17 loadable:self->mComponentsLoadable];
          v28 = v27;
          if (&v35 != (v27 + 32))
          {
            std::vector<std::shared_ptr<APComponent>>::__assign_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(&v35, *(v27 + 32), *(v27 + 40), (*(v27 + 40) - *(v27 + 32)) >> 4);
          }

          v35.mSorted = v28[56];
          v26 = v28;
          if (!v22)
          {
            goto LABEL_31;
          }
        }

        AudioComponentVector::subtract(&v34, buf, &v35);
        AudioComponentVector::append(&v40, v34.__begin_, v34.__end_);
        v42 = &v34;
        std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v42);
        AudioComponentVector::showAll(&v40, "removals from prevBundle");
LABEL_31:
        if (v26)
        {
          AudioComponentVector::subtract(&v34, &v35, buf);
          AudioComponentVector::append(&v41, v34.__begin_, v34.__end_);
          v42 = &v34;
          std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v42);
          AudioComponentVector::showAll(&v41, "additions from newBundle");
        }

        [(NSMutableDictionary *)self->mBundlesByName setObject:v26 forKeyedSubscript:v17];
        self->mDB->mDirty = 1;
        v34.__begin_ = &v35;
        std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v34);
        v35.__begin_ = buf;
        std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v35);

        v6 = v19;
      }

      v7 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v7);
  }

  if (rescanCopy)
  {
    memset(buf, 0, 24);
    buf[24] = 1;
    memset(&v35, 0, 24);
    v35.mSorted = 1;
    [(_ACPluginDBDirectory *)self loadAllComponents:buf];
    [(_ACPluginDBDirectory *)self scanDirectory];
    [(_ACPluginDBDirectory *)self loadAllComponents:&v35];
    AudioComponentVector::subtract(&v34, &v35, buf);
    std::vector<std::shared_ptr<APComponent>>::__vdeallocate(&v41);
    v41 = v34;
    memset(&v34, 0, 24);
    v42 = &v34;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v42);
    AudioComponentVector::subtract(&v34, buf, &v35);
    std::vector<std::shared_ptr<APComponent>>::__vdeallocate(&v40);
    v40 = v34;
    memset(&v34, 0, 24);
    v42 = &v34;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v42);
    v34.__begin_ = &v35;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v34);
    v35.__begin_ = buf;
    std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v35);
  }

  if ([(_ACPluginDBDirectory *)self refreshModificationDate])
  {
    self->mModificationDate = self->mCurrentModificationDate;
    self->mDB->mDirty = 1;
  }

  if (v41.__begin_ != v41.__end_ || v40.__begin_ != v40.__end_)
  {
    f = self->mDB->mNotificationCallback.__f_.__f_;
    if (!f)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*f + 48))(f, &v41, &v40);
  }

  [(_ACPluginDB *)self->mDB writeIfDirty];
  *buf = &v40;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v41;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](buf);

  v30 = *MEMORY[0x1E69E9840];
}

- (BOOL)refreshModificationDate
{
  v3 = modDate(self->mFullPath);
  self->mCurrentModificationDate = v3;
  return self->mModificationDate != v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->mFullPath forKey:@"path"];
  [coderCopy encodeDouble:@"modDate" forKey:self->mModificationDate];
  [coderCopy encodeObject:self->mBundlesByName forKey:@"bundles"];
  [coderCopy encodeInt32:self->mPriority forKey:@"priority"];
}

- (_ACPluginDBDirectory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
  mFullPath = self->mFullPath;
  self->mFullPath = v5;

  [coderCopy decodeDoubleForKey:@"modDate"];
  self->mModificationDate = v7;
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"bundles"];
  mBundlesByName = self->mBundlesByName;
  self->mBundlesByName = v11;

  self->mPriority = [coderCopy decodeInt32ForKey:@"priority"];
  array = [MEMORY[0x1E695DF70] array];
  mChangedBundlePaths = self->mChangedBundlePaths;
  self->mChangedBundlePaths = array;

  self->mNrOfPathsChanged = 0;
  self->mShouldRescan = 0;
  [(_ACPluginDBDirectory *)self refreshModificationDate];

  return self;
}

- (_ACPluginDBDirectory)initWithPath:(id)path priority:(int)priority
{
  pathCopy = path;
  objc_storeStrong(&self->mFullPath, path);
  self->mPriority = priority;
  v8 = objc_opt_new();
  mBundlesByName = self->mBundlesByName;
  self->mBundlesByName = v8;

  array = [MEMORY[0x1E695DF70] array];
  mChangedBundlePaths = self->mChangedBundlePaths;
  self->mChangedBundlePaths = array;

  self->mNrOfPathsChanged = 0;
  self->mShouldRescan = 0;
  [(_ACPluginDBDirectory *)self refreshModificationDate];

  return self;
}

- (void)dealloc
{
  mFSMonitor = self->mFSMonitor;
  if (mFSMonitor)
  {
    FSEventStreamInvalidate(mFSMonitor);
    CFRelease(self->mFSMonitor);
  }

  v4.receiver = self;
  v4.super_class = _ACPluginDBDirectory;
  [(_ACPluginDBDirectory *)&v4 dealloc];
}

@end
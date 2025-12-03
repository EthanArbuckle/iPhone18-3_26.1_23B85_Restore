@interface NTKCollieStyleEditOptionAvatarRecordCache
+ (BOOL)_memojiManifestSaveFileRecords:(id)records;
+ (BOOL)hasBridgeMemojiForIdentifier:(id)identifier resourceDirectory:(id)directory;
+ (BOOL)hasBridgeMemojiIdentifierForResourceDirectory:(id)directory;
+ (BOOL)hasSharedMemojiForResourceDirectory:(id)directory;
+ (BOOL)saveBridgeMemojiDataRepresentation:(id)representation identifier:(id)identifier resourceDirectory:(id)directory error:(id *)error;
+ (BOOL)saveSharedMemojiDataRepresentation:(id)representation resourceDirectory:(id)directory error:(id *)error;
+ (BOOL)validateMemojiDataRepresentation:(id)representation forDevice:(id)device error:(id *)error;
+ (BOOL)validateSharedMemojiResourceDirectory:(id)directory forDevice:(id)device error:(id *)error;
+ (id)_animojiIdentifierAtIndex:(unint64_t)index;
+ (id)_basenameForSnapshotImageIdentifier:(id)identifier poseType:(unint64_t)type size:(CGSize)size;
+ (id)_configurationNameForCharacterPoseType:(unint64_t)type;
+ (id)_image:(id)_image scaledToFit:(CGSize)fit poseType:(unint64_t)type useVerticalScaling:(BOOL)scaling vShift:(double)shift;
+ (id)_memojiDataRepresentationFromAvatarRecord:(id)record;
+ (id)_memojiManifestFilePath;
+ (id)_memojiManifestFileRecords;
+ (id)_sharedMemojiPreserveList;
+ (id)_styleNameFromDataRepresentationBasename:(id)basename;
+ (id)animojiIdentifiers;
+ (id)avatarLoaderQueueSharedInstance;
+ (id)bridgeMemojiDataRepresentationForIdentifier:(id)identifier resourceDirectory:(id)directory;
+ (id)bridgeMemojiForIdentifier:(id)identifier resourceDirectory:(id)directory;
+ (id)bridgeMemojiIdentifierForResourceDirectory:(id)directory;
+ (id)bridgeMemojiStyleNameForResourceDirectory:(id)directory;
+ (id)memojiDataRepresentationBasenameForIdentifier:(id)identifier;
+ (id)sharedMemojiDataRepresentationForResourceDirectory:(id)directory;
+ (id)sharedMemojiForResourceDirectory:(id)directory oldAvatar:(id)avatar;
+ (unint64_t)_animojiIdentifiersCount;
+ (void)_extendPreservelist:(id)preservelist snapshotKey:(id)key;
+ (void)_pruneDirectory:(id)directory preserveList:(id)list;
+ (void)_pruneWithPreserveList:(id)list resourceDirectory:(id)directory;
+ (void)enumerateBasenamesInResourceDirectory:(id)directory callback:(id)callback;
- (BOOL)hasSnapshotImageForStyleName:(id)name resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size;
- (BOOL)isBridgeMemojiStyleName:(id)name;
- (NTKCollieStyleEditOptionAvatarRecordCache)init;
- (id)_animalToyboxCharacters;
- (id)_makeAnimojiToyBoxSnapshotImageWithSize:(CGSize)size;
- (id)_makeMemojiToyBoxSnapshotImageWithSize:(CGSize)size;
- (id)_makeSnapshotImageForStyleName:(id)name resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size;
- (id)_memojiAvatarRecordAtIndex:(unint64_t)index;
- (id)_memojiAvatarRecords;
- (id)_memojiIdentifierAtIndex:(unint64_t)index;
- (id)_memojiManifest;
- (id)_poseOfType:(unint64_t)type characterStyleName:(id)name;
- (id)_preserveListForResourceDirectory:(id)directory pruneBridgeMemoji:(BOOL)memoji;
- (id)_preserveListWithManifest:(id)manifest oldManifest:(id)oldManifest;
- (id)_snapshotImageForCharacterStyleName:(id)name resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size;
- (id)_snapshotImageIdentifierForStyleName:(id)name;
- (id)_snapshotPathForCharacterStyleName:(id)name resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size;
- (id)_snapshotPathForCharacterStyleName:(id)name resourceDirectory:(id)directory useResourceDirectory:(BOOL)resourceDirectory poseType:(unint64_t)type size:(CGSize)size;
- (id)_toyBox2ImageWithSize:(CGSize)size fromImages:(id *)images imageCount:(unint64_t)count;
- (id)_toyBox3ImageWithSize:(CGSize)size fromImages:(id *)images imageCount:(unint64_t)count;
- (id)_toyboxAnimojiIdentifier;
- (id)_toyboxMemojiIdentifier;
- (id)makeNeutralImageForStyleName:(id)name resourceDirectory:(id)directory size:(CGSize)size;
- (id)makeSleepImageForStyleName:(id)name resourceDirectory:(id)directory size:(CGSize)size;
- (id)makeSnapshotImageForStyleName:(id)name resourceDirectory:(id)directory size:(CGSize)size;
- (id)memojiAvatarAtIndex:(unint64_t)index oldAvatar:(id)avatar;
- (id)memojiDataRepresentationAtIndex:(unint64_t)index;
- (id)memojiDataRepresentationForStyleName:(id)name resourceDirectory:(id)directory;
- (id)memojiIdentifiers;
- (id)memojiSha1StringAtIndex:(unint64_t)index;
- (id)memojiSha1StringForStyleName:(id)name resourceDirectory:(id)directory;
- (id)memojiStyleNameAtIndex:(unint64_t)index;
- (id)nodeModificationsForScope:(id)scope vLensShift:(double)shift renderer:(id)renderer;
- (id)snapshotImageForStyleName:(id)name resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size;
- (id)styleNamesForResourceDirectory:(id)directory;
- (unint64_t)_memojiIdentifiersCount;
- (unint64_t)indexForRecordIdentifier:(id)identifier;
- (void)_ensureAnimojiImagesIncludeTritium:(BOOL)tritium;
- (void)_ensureMemojiAvatarRecords;
- (void)_ensureMemojiAvatarRecordsReally;
- (void)_ensureMemojiImagesIncludeTritium:(BOOL)tritium;
- (void)_ensureSharedMemojiImagesForResourceDirectory:(id)directory includeTritium:(BOOL)tritium;
- (void)_enumerateAnimojiToyBoxToys:(id)toys;
- (void)_enumerateMemojiToyBoxToys:(id)toys;
- (void)_makeSnapshotImageForStyleName:(id)name resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size completion:(id)completion;
- (void)_refreshAndSaveFromAvatarRecords:(id)records;
- (void)ensureSnapshotImagesWithResourceDirectory:(id)directory;
- (void)loadAvatarForCharacterStyleName:(id)name resourceDirectory:(id)directory oldAvatar:(id)avatar completion:(id)completion;
- (void)makeNeutralImageForStyleName:(id)name resourceDirectory:(id)directory size:(CGSize)size completion:(id)completion;
- (void)makeSleepImageForStyleName:(id)name resourceDirectory:(id)directory size:(CGSize)size completion:(id)completion;
- (void)makeSnapshotImageForStyleName:(id)name resourceDirectory:(id)directory size:(CGSize)size completion:(id)completion;
- (void)pruneResourceDirectory:(id)directory pruneBridgeMemoji:(BOOL)memoji;
@end

@implementation NTKCollieStyleEditOptionAvatarRecordCache

+ (id)avatarLoaderQueueSharedInstance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&qword_331E0);
  if (!WeakRetained)
  {
    WeakRetained = dispatch_queue_create("com.apple.nanotimekit.collie.avatarLoader", 0);
    objc_storeWeak(&qword_331E0, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (NTKCollieStyleEditOptionAvatarRecordCache)init
{
  v8.receiver = self;
  v8.super_class = NTKCollieStyleEditOptionAvatarRecordCache;
  v2 = [(NTKCollieStyleEditOptionAvatarRecordCache *)&v8 init];
  if (v2)
  {
    avatarLoaderQueueSharedInstance = [objc_opt_class() avatarLoaderQueueSharedInstance];
    avatarRecordQueue = v2->_avatarRecordQueue;
    v2->_avatarRecordQueue = avatarLoaderQueueSharedInstance;

    v2->_renderingScopeNeedsRightSizing = 1;
    v5 = objc_opt_new();
    asyncImageQueue = v2->_asyncImageQueue;
    v2->_asyncImageQueue = v5;

    v2->_usingService = 0;
    +[NTKCollieFaceCloudSyncManager status];
  }

  return v2;
}

+ (id)animojiIdentifiers
{
  if (qword_331F0 != -1)
  {
    sub_17E98();
  }

  v3 = qword_331E8;

  return v3;
}

+ (unint64_t)_animojiIdentifiersCount
{
  animojiIdentifiers = [self animojiIdentifiers];
  v3 = [animojiIdentifiers count];

  return v3;
}

+ (id)_animojiIdentifierAtIndex:(unint64_t)index
{
  animojiIdentifiers = [self animojiIdentifiers];
  v6 = [animojiIdentifiers count];

  if (v6 <= index)
  {
    v8 = 0;
  }

  else
  {
    animojiIdentifiers2 = [self animojiIdentifiers];
    v8 = [animojiIdentifiers2 objectAtIndexedSubscript:index];
  }

  return v8;
}

+ (id)_memojiManifestFilePath
{
  v2 = sub_2964();
  v3 = [v2 stringByAppendingPathComponent:@"manifest.json"];

  return v3;
}

+ (id)_memojiManifestFileRecords
{
  _memojiManifestFilePath = [self _memojiManifestFilePath];
  v12 = 0;
  v3 = [NSData dataWithContentsOfFile:_memojiManifestFilePath options:1 error:&v12];
  v4 = v12;
  if (v3)
  {
    v11 = v4;
    v5 = [NSJSONSerialization JSONObjectWithData:v3 options:0 error:&v11];
    v6 = v11;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      if ([v7 count])
      {
        v8 = [v7 objectAtIndexedSubscript:0];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_7;
        }
      }
    }

    v7 = &__NSArray0__struct;
LABEL_7:

    v4 = v6;
    goto LABEL_9;
  }

  v7 = &__NSArray0__struct;
LABEL_9:

  return v7;
}

+ (BOOL)_memojiManifestSaveFileRecords:(id)records
{
  v13 = 0;
  v4 = [NSJSONSerialization dataWithJSONObject:records options:1 error:&v13];
  v5 = v13;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = v5;
    _memojiManifestFilePath = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(_memojiManifestFilePath, OS_LOG_TYPE_ERROR))
    {
      sub_17F3C();
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  _memojiManifestFilePath = [self _memojiManifestFilePath];
  v12 = 0;
  v9 = [v4 writeToFile:_memojiManifestFilePath options:268435457 error:&v12];
  v7 = v12;
  if (v7)
  {
    v10 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_17EC0();
    }

    goto LABEL_11;
  }

LABEL_12:

  return v9;
}

+ (id)_memojiDataRepresentationFromAvatarRecord:(id)record
{
  recordCopy = record;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    avatarData = [recordCopy avatarData];
  }

  else
  {
    avatarData = 0;
  }

  return avatarData;
}

- (id)_memojiManifest
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((NTKIsFaceSnapshotService() & 1) == 0)
  {
    [(NTKCollieStyleEditOptionAvatarRecordCache *)selfCopy _ensureMemojiAvatarRecordsReally];
  }

  memojiManifestCache = selfCopy->_memojiManifestCache;
  if (!memojiManifestCache)
  {
    _memojiManifestFileRecords = [objc_opt_class() _memojiManifestFileRecords];
    v5 = selfCopy->_memojiManifestCache;
    selfCopy->_memojiManifestCache = _memojiManifestFileRecords;

    memojiManifestCache = selfCopy->_memojiManifestCache;
  }

  v6 = memojiManifestCache;
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)_refreshAndSaveFromAvatarRecords:(id)records
{
  recordsCopy = records;
  [(NTKCollieStyleEditOptionAvatarRecordCache *)self _ensureMemojiManifest];
  v5 = [objc_opt_class() _memojiManifestRecordsFromAvatarRecords:recordsCopy];

  if (([v5 isEqualToArray:self->_memojiManifestCache] & 1) == 0)
  {
    v6 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[NTKCollieStyleEditOptionAvatarRecordCache _refreshAndSaveFromAvatarRecords:]";
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%s: pruning cache", &v10, 0xCu);
    }

    v7 = self->_memojiManifestCache;
    objc_storeStrong(&self->_memojiManifestCache, v5);
    v8 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _preserveListWithManifest:v5 oldManifest:v7];
    [objc_opt_class() _pruneWithPreserveList:v8 resourceDirectory:0];
    v9 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[NTKCollieStyleEditOptionAvatarRecordCache _refreshAndSaveFromAvatarRecords:]";
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%s: updating manifest", &v10, 0xCu);
    }

    [objc_opt_class() _memojiManifestSaveFileRecords:v5];
  }
}

- (id)_preserveListWithManifest:(id)manifest oldManifest:(id)oldManifest
{
  manifestCopy = manifest;
  oldManifestCopy = oldManifest;
  +[NTKCollieFaceView _snapshotImageSize];
  v9 = v8;
  v11 = v10;
  v12 = objc_opt_new();
  v40 = objc_opt_new();
  v37 = oldManifestCopy;
  if (oldManifestCopy)
  {
    obj = manifestCopy;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v13 = oldManifestCopy;
    v14 = [v13 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v14)
    {
      v15 = *v55;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v55 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v54 + 1) + 8 * i);
          v18 = [v17 objectForKeyedSubscript:@"identifier"];
          v19 = [v17 objectForKeyedSubscript:@"sha1"];
          [v40 setObject:v19 forKeyedSubscript:v18];
        }

        v14 = [v13 countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v14);
    }

    manifestCopy = obj;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obja = manifestCopy;
  v20 = [obja countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v20)
  {
    v21 = *v51;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v51 != v21)
        {
          objc_enumerationMutation(obja);
        }

        v23 = *(*(&v50 + 1) + 8 * j);
        v24 = [v23 objectForKeyedSubscript:@"identifier"];
        v25 = [v23 objectForKeyedSubscript:@"sha1"];
        v26 = [v40 objectForKeyedSubscript:v24];
        v27 = v26;
        if (!v26 || [v26 isEqualToString:v25])
        {
          v28 = [NSString stringWithFormat:@"memoji-%@", v24];
          v29 = [objc_opt_class() _basenameForSnapshotImageIdentifier:v28 poseType:0 size:{v9, v11}];
          [v12 addObject:v29];

          v30 = [objc_opt_class() _basenameForSnapshotImageIdentifier:v28 poseType:1 size:{v9, v11}];
          [v12 addObject:v30];

          v31 = [objc_opt_class() _basenameForSnapshotImageIdentifier:v28 poseType:2 size:{v9, v11}];
          [v12 addObject:v31];
        }
      }

      v20 = [obja countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v20);
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 1;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_34EC;
  v41[3] = &unk_2C838;
  v41[4] = self;
  v44 = v9;
  v45 = v11;
  v32 = v12;
  v42 = v32;
  v43 = &v46;
  [(NTKCollieStyleEditOptionAvatarRecordCache *)self _enumerateMemojiToyBoxToys:v41];
  if (*(v47 + 24) == 1)
  {
    _toyboxMemojiIdentifier = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _toyboxMemojiIdentifier];
    if (_toyboxMemojiIdentifier)
    {
      v34 = [objc_opt_class() _basenameForSnapshotImageIdentifier:_toyboxMemojiIdentifier poseType:0 size:{v9, v11}];
      [v32 addObject:v34];
    }
  }

  [v32 addObject:@"manifest.json"];
  v35 = [v32 copy];

  _Block_object_dispose(&v46, 8);

  return v35;
}

+ (void)_extendPreservelist:(id)preservelist snapshotKey:(id)key
{
  keyCopy = key;
  preservelistCopy = preservelist;
  +[NTKCollieFaceView _snapshotImageSize];
  v9 = v8;
  v11 = v10;
  v12 = [self _basenameForSnapshotImageIdentifier:keyCopy poseType:0 size:?];
  [preservelistCopy addObject:v12];

  v13 = [self _basenameForSnapshotImageIdentifier:keyCopy poseType:1 size:{v9, v11}];
  [preservelistCopy addObject:v13];

  v14 = [self _basenameForSnapshotImageIdentifier:keyCopy poseType:2 size:{v9, v11}];

  [preservelistCopy addObject:v14];
}

+ (id)_sharedMemojiPreserveList
{
  v3 = objc_opt_new();
  [self _extendPreservelist:v3 snapshotKey:@"local"];
  [v3 addObject:@"avatar"];
  v4 = [v3 copy];

  return v4;
}

- (id)_preserveListForResourceDirectory:(id)directory pruneBridgeMemoji:(BOOL)memoji
{
  directoryCopy = directory;
  v7 = objc_opt_new();
  v8 = objc_opt_class();
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_3834;
  v16 = &unk_2C860;
  v17 = v7;
  selfCopy = self;
  memojiCopy = memoji;
  v19 = directoryCopy;
  v9 = directoryCopy;
  v10 = v7;
  [v8 enumerateBasenamesInResourceDirectory:v9 callback:&v13];
  v11 = [v10 copy];

  return v11;
}

+ (void)_pruneDirectory:(id)directory preserveList:(id)list
{
  directoryCopy = directory;
  listCopy = list;
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 enumeratorAtPath:directoryCopy];

  nextObject = [v8 nextObject];
  if (nextObject)
  {
    v11 = nextObject;
    *&v10 = 136315650;
    v17 = v10;
    do
    {
      v12 = @"preserved";
      if (([listCopy containsObject:{v11, v17}] & 1) == 0)
      {
        v13 = [directoryCopy stringByAppendingPathComponent:v11];
        v14 = +[NSFileManager defaultManager];
        v18 = 0;
        [v14 removeItemAtPath:v13 error:&v18];

        v12 = @"pruned";
      }

      v15 = +[NTKCollieFaceBundle logObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v17;
        v20 = "+[NTKCollieStyleEditOptionAvatarRecordCache _pruneDirectory:preserveList:]";
        v21 = 2112;
        v22 = v11;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%s: found %@ - %@", buf, 0x20u);
      }

      nextObject2 = [v8 nextObject];

      v11 = nextObject2;
    }

    while (nextObject2);
  }
}

+ (void)_pruneWithPreserveList:(id)list resourceDirectory:(id)directory
{
  listCopy = list;
  directoryCopy = directory;
  if (listCopy)
  {
    v7 = sub_2964();
    [self _pruneDirectory:v7 preserveList:listCopy];
  }

  if (directoryCopy && [self hasSharedMemojiForResourceDirectory:directoryCopy])
  {
    _sharedMemojiPreserveList = [self _sharedMemojiPreserveList];
    [self _pruneDirectory:directoryCopy preserveList:_sharedMemojiPreserveList];
  }
}

- (void)pruneResourceDirectory:(id)directory pruneBridgeMemoji:(BOOL)memoji
{
  memojiCopy = memoji;
  directoryCopy = directory;
  v11 = 0;
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:directoryCopy isDirectory:&v11];
  v9 = v11;

  if (v8 && (v9 & 1) != 0)
  {
    v10 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _preserveListForResourceDirectory:directoryCopy pruneBridgeMemoji:memojiCopy];
    [objc_opt_class() _pruneDirectory:directoryCopy preserveList:v10];
  }
}

- (unint64_t)_memojiIdentifiersCount
{
  _memojiManifest = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiManifest];
  v3 = [_memojiManifest count];

  return v3;
}

- (id)_memojiIdentifierAtIndex:(unint64_t)index
{
  _memojiManifest = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiManifest];
  v6 = [_memojiManifest count];

  if (v6 <= index)
  {
    v9 = 0;
  }

  else
  {
    _memojiManifest2 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiManifest];
    v8 = [_memojiManifest2 objectAtIndexedSubscript:index];

    v9 = [v8 objectForKeyedSubscript:@"identifier"];
  }

  return v9;
}

- (id)memojiSha1StringAtIndex:(unint64_t)index
{
  _memojiManifest = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiManifest];
  v6 = [_memojiManifest count];

  if (v6 <= index)
  {
    v9 = 0;
  }

  else
  {
    _memojiManifest2 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiManifest];
    v8 = [_memojiManifest2 objectAtIndexedSubscript:index];

    v9 = [v8 objectForKeyedSubscript:@"sha1"];
  }

  return v9;
}

- (id)memojiIdentifiers
{
  v3 = objc_opt_new();
  _memojiIdentifiersCount = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiIdentifiersCount];
  if (_memojiIdentifiersCount)
  {
    v5 = _memojiIdentifiersCount;
    for (i = 0; i != v5; ++i)
    {
      v7 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiIdentifierAtIndex:i];
      [v3 addObject:v7];
    }
  }

  v8 = [v3 copy];

  return v8;
}

- (unint64_t)indexForRecordIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  _memojiManifest = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiManifest];
  v6 = [_memojiManifest countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
LABEL_3:
    v10 = 0;
    v11 = v8;
    v8 += v7;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(_memojiManifest);
      }

      v12 = [*(*(&v15 + 1) + 8 * v10) objectForKeyedSubscript:@"identifier"];
      v13 = [v12 isEqualToString:identifierCopy];

      if (v13)
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [_memojiManifest countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (id)_memojiAvatarRecords
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((NTKIsFaceSnapshotService() & 1) == 0)
  {
    [(NTKCollieStyleEditOptionAvatarRecordCache *)selfCopy _ensureMemojiAvatarRecordsReally];
  }

  v3 = selfCopy->_memojiAvatarRecordsCache;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_ensureMemojiAvatarRecordsReally
{
  v3 = +[CLKDevice currentDevice];
  unlockedSinceBoot = [v3 unlockedSinceBoot];

  if (unlockedSinceBoot)
  {
    if (!self->_memojiAvatarRecordsCache)
    {
      cloudSyncStatus = [(NTKCollieStyleEditOptionAvatarRecordCache *)self cloudSyncStatus];
      if (cloudSyncStatus)
      {
        if (cloudSyncStatus == 4)
        {
          requestForCustomAvatars = [objc_opt_class() requestForCustomAvatars];
          v7 = +[NTKCollieFaceBundle logObject];
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v20 = "[NTKCollieStyleEditOptionAvatarRecordCache _ensureMemojiAvatarRecordsReally]";
            _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s: starting AVTAvatarFetchRequest requestForCustomAvatars", buf, 0xCu);
          }

          v8 = +[NTKCollieAvatarStoreListener sharedInstance];
          avatarStore = [v8 avatarStore];

          v18 = 0;
          v10 = [avatarStore avatarsForFetchRequest:requestForCustomAvatars error:&v18];
          v11 = v18;
          memojiAvatarRecordsCache = self->_memojiAvatarRecordsCache;
          self->_memojiAvatarRecordsCache = v10;

          v13 = +[NTKCollieFaceBundle logObject];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v20 = "[NTKCollieStyleEditOptionAvatarRecordCache _ensureMemojiAvatarRecordsReally]";
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%s: done AVTAvatarFetchRequest requestForCustomAvatars", buf, 0xCu);
          }

          if (v11)
          {
            v14 = +[NTKCollieFaceBundle logObject];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              sub_17FB8();
            }

            v15 = self->_memojiAvatarRecordsCache;
            self->_memojiAvatarRecordsCache = 0;
          }

          if (self->_memojiAvatarRecordsCache)
          {
            [(NTKCollieStyleEditOptionAvatarRecordCache *)self _refreshAndSaveFromAvatarRecords:?];
          }
        }

        else
        {
          v16 = self->_memojiAvatarRecordsCache;
          self->_memojiAvatarRecordsCache = &__NSArray0__struct;

          v17 = self->_memojiAvatarRecordsCache;

          [(NTKCollieStyleEditOptionAvatarRecordCache *)self _refreshAndSaveFromAvatarRecords:v17];
        }
      }
    }
  }
}

- (void)_ensureMemojiAvatarRecords
{
  if (NTKIsDaemonOrFaceSnapshotService())
  {
    v3 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_18034();
    }
  }

  else
  {
    _memojiAvatarRecords = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiAvatarRecords];
  }
}

- (id)_memojiAvatarRecordAtIndex:(unint64_t)index
{
  _memojiAvatarRecords = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiAvatarRecords];
  v6 = [_memojiAvatarRecords count];

  if (v6 <= index)
  {
    v8 = 0;
  }

  else
  {
    _memojiAvatarRecords2 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiAvatarRecords];
    v8 = [_memojiAvatarRecords2 objectAtIndexedSubscript:index];
  }

  return v8;
}

- (id)memojiAvatarAtIndex:(unint64_t)index oldAvatar:(id)avatar
{
  avatar = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiAvatarRecordAtIndex:index, avatar];
  if (avatar)
  {
    v5 = [AVTAvatarRecordRendering avatarForRecord:avatar usageIntent:2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)loadAvatarForCharacterStyleName:(id)name resourceDirectory:(id)directory oldAvatar:(id)avatar completion:(id)completion
{
  nameCopy = name;
  directoryCopy = directory;
  avatarCopy = avatar;
  completionCopy = completion;
  if ([nameCopy isRegularMemojiStyleName])
  {
    [(NTKCollieStyleEditOptionAvatarRecordCache *)self _ensureMemojiAvatarRecords];
  }

  avatarRecordQueue = self->_avatarRecordQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_45D8;
  block[3] = &unk_2C888;
  v20 = nameCopy;
  v21 = directoryCopy;
  v22 = avatarCopy;
  selfCopy = self;
  v24 = completionCopy;
  v15 = completionCopy;
  v16 = avatarCopy;
  v17 = directoryCopy;
  v18 = nameCopy;
  dispatch_async(avatarRecordQueue, block);
}

- (id)memojiDataRepresentationAtIndex:(unint64_t)index
{
  v3 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiAvatarRecordAtIndex:index];
  v4 = [objc_opt_class() _memojiDataRepresentationFromAvatarRecord:v3];

  return v4;
}

+ (BOOL)hasSharedMemojiForResourceDirectory:(id)directory
{
  v3 = [directory stringByAppendingPathComponent:@"avatar"];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  return v5;
}

+ (id)sharedMemojiDataRepresentationForResourceDirectory:(id)directory
{
  v3 = [directory stringByAppendingPathComponent:@"avatar"];
  v4 = [NSData dataWithContentsOfFile:v3];

  return v4;
}

+ (BOOL)validateMemojiDataRepresentation:(id)representation forDevice:(id)device error:(id *)error
{
  if (representation)
  {
    v14 = 0;
    v6 = [AVTAvatarDescriptor ntk_canLoadDataRepresentation:representation forDevice:device error:&v14];
    v7 = v14;
    if (v6)
    {
      goto LABEL_11;
    }

    v8 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_180B4();
    }

    if (!error)
    {
      goto LABEL_11;
    }

LABEL_10:
    v12 = v7;
    *error = v7;
    goto LABEL_11;
  }

  v9 = kNTKErrorDomain;
  v15 = NSLocalizedDescriptionKey;
  v16 = @"nil recipe";
  v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v7 = [NSError errorWithDomain:v9 code:2003 userInfo:v10];

  v11 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_18130();
  }

  v6 = 0;
  if (error)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v6;
}

+ (BOOL)validateSharedMemojiResourceDirectory:(id)directory forDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  if (!directory)
  {
    v9 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_18230();
    }

    goto LABEL_9;
  }

  v9 = [self sharedMemojiDataRepresentationForResourceDirectory:directory];
  if (!v9)
  {
    v11 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_181B0();
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = [self validateMemojiDataRepresentation:v9 forDevice:deviceCopy error:error];
LABEL_10:

  return v10;
}

+ (BOOL)saveSharedMemojiDataRepresentation:(id)representation resourceDirectory:(id)directory error:(id *)error
{
  representationCopy = representation;
  directoryCopy = directory;
  v9 = +[NSFileManager defaultManager];
  v16 = 0;
  [v9 createDirectoryAtPath:directoryCopy withIntermediateDirectories:1 attributes:0 error:&v16];
  v10 = v16;

  if (v10)
  {
    v11 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_182B0();
    }
  }

  else
  {
    v11 = [directoryCopy stringByAppendingPathComponent:@"avatar"];
    v15 = 0;
    [representationCopy writeToFile:v11 options:1 error:&v15];
    v10 = v15;
    if (v10)
    {
      v12 = +[NTKCollieFaceBundle logObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_18330();
      }
    }
  }

  if (error)
  {
    v13 = v10;
    *error = v10;
  }

  return v10 == 0;
}

+ (id)sharedMemojiForResourceDirectory:(id)directory oldAvatar:(id)avatar
{
  v4 = [self sharedMemojiDataRepresentationForResourceDirectory:{directory, avatar}];
  v9 = 0;
  v5 = [AVTAvatar avatarWithDataRepresentation:v4 usageIntent:2 error:&v9];
  v6 = v9;
  if (v6)
  {

    v7 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_183B0();
    }

    v5 = 0;
  }

  return v5;
}

+ (BOOL)hasBridgeMemojiIdentifierForResourceDirectory:(id)directory
{
  v3 = [directory stringByAppendingPathComponent:@"memoji-identifier"];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  return v5;
}

+ (id)bridgeMemojiIdentifierForResourceDirectory:(id)directory
{
  v3 = [directory stringByAppendingPathComponent:@"memoji-identifier"];
  v9 = 0;
  v4 = [NSString stringWithContentsOfFile:v3 encoding:4 error:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_18420();
    }

    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

+ (id)_styleNameFromDataRepresentationBasename:(id)basename
{
  basenameCopy = basename;
  v4 = [NSString styleNameFromBasename:basenameCopy];
  if (v4)
  {
    v5 = [objc_opt_class() dataRepresentationBasenameForStyleName:v4];
    if ([basenameCopy isEqualToString:v5])
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)memojiDataRepresentationBasenameForIdentifier:(id)identifier
{
  v4 = [NSString regularMemojiStyleNameForIdentifier:identifier];
  v5 = [self dataRepresentationBasenameForStyleName:v4];

  return v5;
}

+ (BOOL)hasBridgeMemojiForIdentifier:(id)identifier resourceDirectory:(id)directory
{
  directoryCopy = directory;
  v7 = [self memojiDataRepresentationBasenameForIdentifier:identifier];
  v8 = [directoryCopy stringByAppendingPathComponent:v7];

  v9 = +[NSFileManager defaultManager];
  v10 = [v9 fileExistsAtPath:v8];

  return v10;
}

+ (id)bridgeMemojiStyleNameForResourceDirectory:(id)directory
{
  directoryCopy = directory;
  if ([objc_opt_class() hasBridgeMemojiIdentifierForResourceDirectory:directoryCopy] && (objc_msgSend(objc_opt_class(), "bridgeMemojiIdentifierForResourceDirectory:", directoryCopy), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [NSString regularMemojiStyleNameForIdentifier:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)bridgeMemojiDataRepresentationForIdentifier:(id)identifier resourceDirectory:(id)directory
{
  directoryCopy = directory;
  v7 = [self memojiDataRepresentationBasenameForIdentifier:identifier];
  v8 = [directoryCopy stringByAppendingPathComponent:v7];

  v9 = [NSData dataWithContentsOfFile:v8];

  return v9;
}

+ (id)bridgeMemojiForIdentifier:(id)identifier resourceDirectory:(id)directory
{
  v4 = [self bridgeMemojiDataRepresentationForIdentifier:identifier resourceDirectory:directory];
  v9 = 0;
  v5 = [AVTAvatar avatarWithDataRepresentation:v4 usageIntent:2 error:&v9];
  v6 = v9;
  if (v6)
  {

    v7 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_183B0();
    }

    v5 = 0;
  }

  return v5;
}

+ (void)enumerateBasenamesInResourceDirectory:(id)directory callback:(id)callback
{
  directoryCopy = directory;
  callbackCopy = callback;
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 enumeratorAtPath:directoryCopy];

  nextObject = 0;
  do
  {
    v10 = nextObject;
    nextObject = [v8 nextObject];

    if (!nextObject)
    {
      break;
    }

    v11 = 0;
    callbackCopy[2](callbackCopy, nextObject, &v11);
  }

  while (v11 != 1);
}

+ (BOOL)saveBridgeMemojiDataRepresentation:(id)representation identifier:(id)identifier resourceDirectory:(id)directory error:(id *)error
{
  representationCopy = representation;
  identifierCopy = identifier;
  directoryCopy = directory;
  v13 = +[NSFileManager defaultManager];
  v25 = 0;
  [v13 createDirectoryAtPath:directoryCopy withIntermediateDirectories:1 attributes:0 error:&v25];
  v14 = v25;

  if (v14)
  {
    v15 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1849C();
    }
  }

  else
  {
    v15 = [directoryCopy stringByAppendingPathComponent:@"memoji-identifier"];
    v24 = 0;
    v16 = [identifierCopy writeToFile:v15 atomically:1 encoding:4 error:&v24];
    v17 = v24;
    v14 = v17;
    if (!v16 || v17)
    {
      v18 = +[NTKCollieFaceBundle logObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1851C();
      }
    }

    else
    {
      v18 = [self memojiDataRepresentationBasenameForIdentifier:identifierCopy];
      v19 = [directoryCopy stringByAppendingPathComponent:v18];
      v23 = 0;
      [representationCopy writeToFile:v19 options:1 error:&v23];
      v14 = v23;
      if (v14)
      {
        v20 = +[NTKCollieFaceBundle logObject];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_18598();
        }
      }
    }
  }

  if (error)
  {
    v21 = v14;
    *error = v14;
  }

  return v14 == 0;
}

- (id)memojiDataRepresentationForStyleName:(id)name resourceDirectory:(id)directory
{
  nameCopy = name;
  directoryCopy = directory;
  if ([nameCopy isSharedMemojiStyleName])
  {
    v8 = [objc_opt_class() sharedMemojiDataRepresentationForResourceDirectory:directoryCopy];
  }

  else if ([nameCopy isRegularMemojiStyleName])
  {
    memojiIdentifier = [nameCopy memojiIdentifier];
    v10 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self indexForRecordIdentifier:memojiIdentifier];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [objc_opt_class() bridgeMemojiDataRepresentationForIdentifier:memojiIdentifier resourceDirectory:directoryCopy];
    }

    else
    {
      [(NTKCollieStyleEditOptionAvatarRecordCache *)self memojiDataRepresentationAtIndex:v10];
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)memojiSha1StringForStyleName:(id)name resourceDirectory:(id)directory
{
  nameCopy = name;
  directoryCopy = directory;
  if ([nameCopy isSharedMemojiStyleName])
  {
    v8 = [objc_opt_class() sharedMemojiDataRepresentationForResourceDirectory:directoryCopy];
    if (v8)
    {
      memojiIdentifier = v8;
      sha1String = [v8 sha1String];
LABEL_17:
      sha1String2 = sha1String;
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if ([nameCopy isRegularMemojiStyleName])
  {
    memojiIdentifier = [nameCopy memojiIdentifier];
    v11 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self indexForRecordIdentifier:memojiIdentifier];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      sha1String = [(NTKCollieStyleEditOptionAvatarRecordCache *)self memojiSha1StringAtIndex:v11];
      goto LABEL_17;
    }

    v12 = [objc_opt_class() bridgeMemojiDataRepresentationForIdentifier:memojiIdentifier resourceDirectory:directoryCopy];
    if (v12)
    {
      v13 = v12;
      sha1String2 = [v12 sha1String];

LABEL_18:
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (![nameCopy isToyboxMemojiStyleName] || ((v15 = -[NTKCollieStyleEditOptionAvatarRecordCache _memojiIdentifiersCount](self, "_memojiIdentifiersCount"), v15 >= 3) ? (v16 = 3) : (v16 = v15), v15 < 2))
  {
LABEL_20:
    sha1String2 = 0;
    goto LABEL_21;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = objc_opt_new();
  v19 = 0;
  do
  {
    v20 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self memojiDataRepresentationAtIndex:v19];
    [v18 appendData:v20];

    ++v19;
  }

  while (v16 != v19);
  sha1String2 = [v18 sha1String];

  objc_autoreleasePoolPop(v17);
LABEL_21:

  return sha1String2;
}

- (id)memojiStyleNameAtIndex:(unint64_t)index
{
  v3 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiIdentifierAtIndex:index];
  v4 = [NSString stringWithFormat:@"memoji-%@", v3];

  return v4;
}

- (id)styleNamesForResourceDirectory:(id)directory
{
  directoryCopy = directory;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_styleNamesCache)
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    _memojiIdentifiersCount = [(NTKCollieStyleEditOptionAvatarRecordCache *)selfCopy _memojiIdentifiersCount];
    if (_memojiIdentifiersCount >= 2)
    {
      [v6 addObject:@"toybox-memoji"];
    }

    if ([objc_opt_class() hasSharedMemojiForResourceDirectory:directoryCopy])
    {
      [v6 addObject:@"local-memoji"];
    }

    if (_memojiIdentifiersCount)
    {
      for (i = 0; i != _memojiIdentifiersCount; ++i)
      {
        v10 = [(NTKCollieStyleEditOptionAvatarRecordCache *)selfCopy memojiStyleNameAtIndex:i];
        [v6 addObject:v10];
        [v7 addObject:v10];
      }
    }

    v11 = [objc_opt_class() bridgeMemojiStyleNameForResourceDirectory:directoryCopy];
    if (v11 && ([v7 containsObject:v11] & 1) == 0)
    {
      [v6 addObject:v11];
    }

    [v6 addObject:@"toybox-animoji"];
    _animojiIdentifiersCount = [objc_opt_class() _animojiIdentifiersCount];
    if (_animojiIdentifiersCount)
    {
      v13 = 0;
      do
      {
        v14 = [objc_opt_class() _animojiIdentifierAtIndex:v13];
        [v6 addObject:v14];

        ++v13;
      }

      while (_animojiIdentifiersCount != v13);
    }

    v15 = [v6 copy];
    styleNamesCache = selfCopy->_styleNamesCache;
    selfCopy->_styleNamesCache = v15;
  }

  objc_sync_exit(selfCopy);

  v17 = selfCopy->_styleNamesCache;
  v18 = v17;

  return v17;
}

+ (id)_configurationNameForCharacterPoseType:(unint64_t)type
{
  if (type - 1 > 9)
  {
    return @"snapshot";
  }

  else
  {
    return off_2C9D8[type - 1];
  }
}

+ (id)_basenameForSnapshotImageIdentifier:(id)identifier poseType:(unint64_t)type size:(CGSize)size
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  v10 = [self _configurationNameForCharacterPoseType:type];
  v11 = [NSString stringWithFormat:@"%@-%@-%ux%u-%u.cpbitmap", identifierCopy, v10, width, height, 6];

  return v11;
}

- (id)_snapshotPathForCharacterStyleName:(id)name resourceDirectory:(id)directory useResourceDirectory:(BOOL)resourceDirectory poseType:(unint64_t)type size:(CGSize)size
{
  height = size.height;
  width = size.width;
  resourceDirectoryCopy = resourceDirectory;
  nameCopy = name;
  directoryCopy = directory;
  v15 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _snapshotImageIdentifierForStyleName:nameCopy];
  v16 = [objc_opt_class() _basenameForSnapshotImageIdentifier:v15 poseType:type size:{width, height}];
  if (([nameCopy isSharedMemojiStyleName] & 1) != 0 || objc_msgSend(nameCopy, "isRegularMemojiStyleName") && resourceDirectoryCopy)
  {
    v17 = [directoryCopy stringByAppendingPathComponent:v16];
  }

  else
  {
    v18 = sub_2964();
    v17 = [v18 stringByAppendingPathComponent:v16];
  }

  return v17;
}

- (BOOL)isBridgeMemojiStyleName:(id)name
{
  nameCopy = name;
  if ([nameCopy isRegularMemojiStyleName])
  {
    memojiIdentifier = [nameCopy memojiIdentifier];
    v6 = ![(NTKCollieStyleEditOptionAvatarRecordCache *)self hasAvatarStoreMemojiForIdentifier:memojiIdentifier];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_snapshotPathForCharacterStyleName:(id)name resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size
{
  height = size.height;
  width = size.width;
  directoryCopy = directory;
  nameCopy = name;
  height = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _snapshotPathForCharacterStyleName:nameCopy resourceDirectory:directoryCopy useResourceDirectory:[(NTKCollieStyleEditOptionAvatarRecordCache *)self isBridgeMemojiStyleName:nameCopy] poseType:type size:width, height];

  return height;
}

- (id)_snapshotImageForCharacterStyleName:(id)name resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size
{
  v6 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _snapshotPathForCharacterStyleName:name resourceDirectory:directory poseType:type size:size.width, size.height];
  v7 = [UIImage imageWithContentsOfCPBitmapFile:v6 flags:2];

  return v7;
}

+ (id)_image:(id)_image scaledToFit:(CGSize)fit poseType:(unint64_t)type useVerticalScaling:(BOOL)scaling vShift:(double)shift
{
  scalingCopy = scaling;
  height = fit.height;
  width = fit.width;
  _imageCopy = _image;
  [_imageCopy size];
  if (shift != 0.0 || v12 != width || v13 != height)
  {
    v16 = width / v12;
    if (scalingCopy)
    {
      v16 = height / v13;
    }

    v17 = v12 * v16;
    v18 = v13 * v16;
    v19 = (v16 * shift + height - v13 * v16) * 0.5;
    v20 = [[UIGraphicsImageRenderer alloc] initWithSize:{width, height}];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_5E48;
    v23[3] = &unk_2C8B0;
    v24 = _imageCopy;
    v25 = (width - v17) * 0.5;
    v26 = v19;
    v27 = v17;
    v28 = v18;
    v21 = _imageCopy;
    _imageCopy = [v20 imageWithActions:v23];
  }

  return _imageCopy;
}

- (id)_animalToyboxCharacters
{
  v4[0] = @"monkey";
  v4[1] = @"lion";
  v4[2] = @"robot";
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (id)_toyboxAnimojiIdentifier
{
  _animalToyboxCharacters = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _animalToyboxCharacters];
  v3 = [_animalToyboxCharacters count];
  v4 = v3;
  if (v3 >= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = v3;
  }

  v6 = objc_opt_new();
  [v6 appendString:@"toybox"];
  if (v4)
  {
    v7 = 0;
    do
    {
      v8 = [_animalToyboxCharacters objectAtIndexedSubscript:v7];
      [v6 appendString:@"-"];
      [v6 appendString:v8];

      ++v7;
    }

    while (v5 != v7);
  }

  v9 = [v6 copy];

  return v9;
}

- (id)_toyboxMemojiIdentifier
{
  _memojiIdentifiersCount = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiIdentifiersCount];
  if (_memojiIdentifiersCount >= 2)
  {
    if (_memojiIdentifiersCount >= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = _memojiIdentifiersCount;
    }

    v6 = objc_opt_new();
    [v6 appendString:@"toybox"];
    for (i = 0; i != v5; ++i)
    {
      v8 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiIdentifierAtIndex:i];
      [v6 appendString:@"-"];
      [v6 appendString:v8];
    }

    v4 = [v6 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_snapshotImageIdentifierForStyleName:(id)name
{
  nameCopy = name;
  if ([nameCopy isToyboxAnimojiStyleName])
  {
    _toyboxAnimojiIdentifier = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _toyboxAnimojiIdentifier];
  }

  else if ([nameCopy isToyboxMemojiStyleName])
  {
    _toyboxAnimojiIdentifier = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _toyboxMemojiIdentifier];
  }

  else
  {
    if ([nameCopy isSharedMemojiStyleName])
    {
      v6 = @"local";
      goto LABEL_9;
    }

    _toyboxAnimojiIdentifier = nameCopy;
  }

  v6 = _toyboxAnimojiIdentifier;
LABEL_9:

  return v6;
}

- (BOOL)hasSnapshotImageForStyleName:(id)name resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size
{
  height = size.height;
  width = size.width;
  nameCopy = name;
  directoryCopy = directory;
  if (type <= 2 && [nameCopy isResourcedStyleName] && (objc_msgSend(objc_opt_class(), "_configurationNameForCharacterPoseType:", type), v13 = objc_claimAutoreleasedReturnValue(), -[NTKCollieStyleEditOptionAvatarRecordCache _snapshotImageIdentifierForStyleName:](self, "_snapshotImageIdentifierForStyleName:", nameCopy), v14 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-%@", v14, v13), v15 = objc_claimAutoreleasedReturnValue(), +[NTKCollieFaceBundle imageWithName:](NTKCollieFaceBundle, "imageWithName:", v15), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, v13, v16))
  {
    v17 = 1;
  }

  else
  {
    height = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _snapshotPathForCharacterStyleName:nameCopy resourceDirectory:directoryCopy poseType:type size:width, height];
    v19 = +[NSFileManager defaultManager];
    v17 = [v19 fileExistsAtPath:height];
  }

  return v17;
}

- (id)snapshotImageForStyleName:(id)name resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size
{
  height = size.height;
  width = size.width;
  nameCopy = name;
  directoryCopy = directory;
  if (type > 2 || ![nameCopy isResourcedStyleName] || (objc_msgSend(objc_opt_class(), "_configurationNameForCharacterPoseType:", type), v13 = objc_claimAutoreleasedReturnValue(), -[NTKCollieStyleEditOptionAvatarRecordCache _snapshotImageIdentifierForStyleName:](self, "_snapshotImageIdentifierForStyleName:", nameCopy), v14 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-%@", v14, v13), v15 = objc_claimAutoreleasedReturnValue(), +[NTKCollieFaceBundle imageWithName:](NTKCollieFaceBundle, "imageWithName:", v15), height = objc_claimAutoreleasedReturnValue(), v15, v14, v13, !height))
  {
    height = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _snapshotImageForCharacterStyleName:nameCopy resourceDirectory:directoryCopy poseType:type size:width, height];
  }

  return height;
}

- (id)_toyBox3ImageWithSize:(CGSize)size fromImages:(id *)images imageCount:(unint64_t)count
{
  height = size.height;
  width = size.width;
  v9 = [[UIGraphicsImageRenderer alloc] initWithSize:{size.width, size.height}];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_64C8;
  v12[3] = &unk_2C8D0;
  v12[4] = count;
  v12[5] = images;
  *&v12[6] = width;
  *&v12[7] = height;
  v10 = [v9 imageWithActions:v12];

  return v10;
}

- (id)_toyBox2ImageWithSize:(CGSize)size fromImages:(id *)images imageCount:(unint64_t)count
{
  height = size.height;
  width = size.width;
  v9 = [[UIGraphicsImageRenderer alloc] initWithSize:{size.width, size.height}];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_66C8;
  v12[3] = &unk_2C8D0;
  v12[4] = count;
  v12[5] = images;
  *&v12[6] = width;
  *&v12[7] = height;
  v10 = [v9 imageWithActions:v12];

  return v10;
}

- (id)_poseOfType:(unint64_t)type characterStyleName:(id)name
{
  nameCopy = name;
  if (type == 2)
  {
    v6 = [NTKCollieStyleEditOption neutralPoseForCharacterStyleName:nameCopy];
  }

  else if (type == 1)
  {
    v6 = [NTKCollieStyleEditOption sleepPoseForCharacterStyleName:nameCopy];
  }

  else
  {
    if (type)
    {
      v8 = [objc_opt_class() _configurationNameForCharacterPoseType:type];
      if ([nameCopy isRegularMemojiStyleName])
      {
        [AVTStickerConfiguration stickerConfigurationsForMemojiInStickerPack:kAVTStickerPackPoses];
      }

      else
      {
        [AVTStickerConfiguration stickerConfigurationsForAnimojiNamed:nameCopy inStickerPack:kAVTStickerPackPoses];
      }
      v9 = ;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_697C;
      v15[3] = &unk_2C8F8;
      v16 = v8;
      v10 = v8;
      v11 = [v9 na_firstObjectPassingTest:v15];
      v12 = v11;
      if (v11)
      {
        [v11 loadIfNeeded];
        physicalizedPose = [v12 physicalizedPose];
        pose = [physicalizedPose pose];
      }

      else
      {
        pose = 0;
      }

      goto LABEL_15;
    }

    v6 = [NTKCollieStyleEditOption friendlyPoseForCharacterStyleName:nameCopy];
  }

  pose = v6;
LABEL_15:

  return pose;
}

- (void)_enumerateAnimojiToyBoxToys:(id)toys
{
  toysCopy = toys;
  _animalToyboxCharacters = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _animalToyboxCharacters];
  v5 = [_animalToyboxCharacters count];
  if (v5 >= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  if (v5)
  {
    v7 = 0;
    do
    {
      v8 = [_animalToyboxCharacters objectAtIndexedSubscript:v7];
      v9 = qword_26A40[v7];
      v10 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _snapshotImageIdentifierForStyleName:v8];
      toysCopy[2](toysCopy, v10, v8, v9);

      ++v7;
    }

    while (v6 != v7);
  }
}

- (id)_makeAnimojiToyBoxSnapshotImageWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_18618(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  memset(v19, 0, sizeof(v19));
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_6C54;
  v17[3] = &unk_2C920;
  *&v17[6] = width;
  *&v17[7] = height;
  v17[8] = v19;
  v17[4] = self;
  v17[5] = v18;
  [(NTKCollieStyleEditOptionAvatarRecordCache *)self _enumerateAnimojiToyBoxToys:v17];
  height = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _toyBox3ImageWithSize:v19 fromImages:3 imageCount:width, height];
  _Block_object_dispose(v18, 8);
  for (i = 2; i != -1; --i)
  {
  }

  return height;
}

- (void)_enumerateMemojiToyBoxToys:(id)toys
{
  toysCopy = toys;
  v12[0] = xmmword_26A10;
  v12[1] = xmmword_26A20;
  v12[2] = xmmword_26A30;
  _memojiIdentifiersCount = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiIdentifiersCount];
  if (_memojiIdentifiersCount >= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = _memojiIdentifiersCount;
  }

  if (_memojiIdentifiersCount >= 2)
  {
    v6 = 0;
    do
    {
      v7 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self memojiStyleNameAtIndex:v6];
      v8 = *(&v12[-3] + 3 * v5 + v6);
      v9 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _snapshotImageIdentifierForStyleName:v7];
      (*(toysCopy + 2))(toysCopy, v9, v7, v8);

      ++v6;
    }

    while (v5 != v6);
  }

  v10 = toysCopy;
}

- (id)_makeMemojiToyBoxSnapshotImageWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_18690(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  memset(v24, 0, sizeof(v24));
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_702C;
  v19[3] = &unk_2C920;
  *&v19[6] = width;
  *&v19[7] = height;
  v19[8] = v24;
  v19[4] = self;
  v19[5] = &v20;
  [(NTKCollieStyleEditOptionAvatarRecordCache *)self _enumerateMemojiToyBoxToys:v19];
  v14 = v21[3];
  if (v14 < 3)
  {
    if (v14 != 2)
    {
      v16 = 0;
      goto LABEL_9;
    }

    v15 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _toyBox2ImageWithSize:v24 fromImages:width imageCount:height];
  }

  else
  {
    v15 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _toyBox3ImageWithSize:v24 fromImages:width imageCount:height];
  }

  v16 = v15;
LABEL_9:
  _Block_object_dispose(&v20, 8);
  for (i = 2; i != -1; --i)
  {
  }

  return v16;
}

- (id)makeSnapshotImageForStyleName:(id)name resourceDirectory:(id)directory size:(CGSize)size
{
  height = size.height;
  width = size.width;
  nameCopy = name;
  directoryCopy = directory;
  v11 = objc_autoreleasePoolPush();
  height = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _makeSnapshotImageForStyleName:nameCopy resourceDirectory:directoryCopy poseType:0 size:width, height];
  objc_autoreleasePoolPop(v11);

  return height;
}

- (id)makeNeutralImageForStyleName:(id)name resourceDirectory:(id)directory size:(CGSize)size
{
  height = size.height;
  width = size.width;
  nameCopy = name;
  directoryCopy = directory;
  v11 = objc_autoreleasePoolPush();
  height = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _makeSnapshotImageForStyleName:nameCopy resourceDirectory:directoryCopy poseType:2 size:width, height];
  objc_autoreleasePoolPop(v11);

  return height;
}

- (id)makeSleepImageForStyleName:(id)name resourceDirectory:(id)directory size:(CGSize)size
{
  height = size.height;
  width = size.width;
  nameCopy = name;
  directoryCopy = directory;
  v11 = objc_autoreleasePoolPush();
  height = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _makeSnapshotImageForStyleName:nameCopy resourceDirectory:directoryCopy poseType:1 size:width, height];
  objc_autoreleasePoolPop(v11);

  return height;
}

- (id)nodeModificationsForScope:(id)scope vLensShift:(double)shift renderer:(id)renderer
{
  v7 = AVTFramingModeWatchFace;
  scopeCopy = scope;
  [renderer fieldOfViewForNodeWithName:v7];
  v10 = v9;
  +[NTKCollieFaceView avatarFramingTopMargin];
  v12 = v11;
  v13 = +[CLKDevice currentDevice];
  [v13 screenBounds];
  v15 = v14;

  [scopeCopy size];
  v17 = v16;

  if (v17 != v15)
  {
    v18 = tan(v10 * 3.14159265 / 180.0 * 0.5);
    v19 = atan(v18 * v17 / v15);
    v10 = (v19 + v19) * 180.0 / 3.14159265;
    v12 = (v17 - v15) * 0.5;
  }

  v20 = +[UIScreen mainScreen];
  [v20 scale];
  v22 = (v12 + shift) * (v21 * 0.5);

  v23 = [[AVTSCNNodeModifications alloc] initWithProjectionDirection:v7 fieldOfView:0.0 verticalLensShift:v10 framingMode:v22];

  return v23;
}

- (id)_makeSnapshotImageForStyleName:(id)name resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size
{
  height = size.height;
  width = size.width;
  nameCopy = name;
  directoryCopy = directory;
  usingService = self->_usingService;
  if ([nameCopy isToyboxAnimojiStyleName])
  {
    height = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _makeAnimojiToyBoxSnapshotImageWithSize:width, height];
    goto LABEL_5;
  }

  if (![nameCopy isToyboxMemojiStyleName])
  {
    if ([nameCopy isSharedMemojiStyleName])
    {
      v19 = [objc_opt_class() sharedMemojiForResourceDirectory:directoryCopy oldAvatar:0];
      v20 = +[AVTRenderingScope ntk_watchFaceMemojiRenderingScope];
      v21 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _poseOfType:type characterStyleName:nameCopy];
      if (v21)
      {
        v22 = [v20 copyWithPose:v21];

        v20 = v22;
      }

      v23 = objc_alloc_init(AVTAvatarImageRenderer);
      v24 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self nodeModificationsForScope:v20 vLensShift:v23 renderer:0.0];
      v15 = [v23 imageForAvatar:v19 scope:v20 withSCNModifications:v24 usingService:usingService];

LABEL_15:
      if (v15)
      {
        goto LABEL_6;
      }

LABEL_46:
      v18 = 0;
      goto LABEL_47;
    }

    if (![nameCopy isRegularMemojiStyleName])
    {
      if (![nameCopy isRegularAnimojiStyleName])
      {
        goto LABEL_46;
      }

      v19 = nameCopy;
      v30 = [AVTAnimoji animojiNamed:v19];
      if (!v30)
      {
        v45 = +[NTKCollieFaceBundle logObject];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_18708();
        }

        goto LABEL_46;
      }

      v20 = v30;
      v21 = +[AVTRenderingScope ntk_watchFaceAnimojiRenderingScope];
      if ([v19 isEqualToString:@"giraffe"])
      {
        v31 = 60.0;
      }

      else
      {
        v31 = 0.0;
      }

      v48 = objc_alloc_init(AVTAvatarImageRenderer);
      v32 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self nodeModificationsForScope:v21 vLensShift:v31 renderer:?];
      v33 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _poseOfType:type characterStyleName:v19];
      v51 = v32;
      if (v33)
      {
        v34 = v33;
        v35 = [v33 copy];

        [v35 setBakedAnimationBlendFactor:0.0];
        v36 = [v21 copyWithPose:v35];

        v32 = v51;
        v21 = v36;
      }

      [v20 setPhysicsScaleFactor:0.0];
      v15 = [v48 imageForAvatar:v20 scope:v21 withSCNModifications:v32 usingService:usingService];
      if (self->_renderingScopeNeedsRightSizing)
      {
        v37 = [objc_opt_class() _image:v15 scaledToFit:type poseType:0 useVerticalScaling:width vShift:{height, v31}];

        v15 = v37;
        v32 = v51;
      }

      goto LABEL_15;
    }

    memojiIdentifier = [nameCopy memojiIdentifier];
    memojiIdentifier2 = [nameCopy memojiIdentifier];
    v27 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self indexForRecordIdentifier:memojiIdentifier2];

    if (v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = [objc_opt_class() bridgeMemojiForIdentifier:memojiIdentifier resourceDirectory:directoryCopy];
      if (v28)
      {
        v29 = v28;
        v50 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      v38 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiAvatarRecordAtIndex:v27];
      if (v38)
      {
        v50 = v38;
        v29 = 0;
LABEL_33:
        v39 = +[AVTRenderingScope ntk_watchFaceMemojiRenderingScope];
        v40 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _poseOfType:type characterStyleName:nameCopy];
        v49 = v40;
        if (v40)
        {
          v41 = [v39 copyWithPose:v40];

          v39 = v41;
        }

        v42 = objc_alloc_init(AVTAvatarImageRenderer);
        v43 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self nodeModificationsForScope:v39 vLensShift:v42 renderer:0.0];
        if (v50)
        {
          [AVTAvatarRecordRendering avatarForRecord:v50 usageIntent:2];
          v44 = v47 = memojiIdentifier;

          v15 = [v42 imageForAvatar:v44 scope:v39 withSCNModifications:v43 usingService:usingService];
          v29 = v44;
          memojiIdentifier = v47;
        }

        else
        {
          if (!v29)
          {
            v15 = 0;
LABEL_41:

            if (v15)
            {
              goto LABEL_6;
            }

            goto LABEL_46;
          }

          v15 = [v42 imageForAvatar:v29 scope:v39 withSCNModifications:v43 usingService:usingService];
        }

        goto LABEL_41;
      }
    }

    goto LABEL_46;
  }

  height = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _makeMemojiToyBoxSnapshotImageWithSize:width, height];
LABEL_5:
  v15 = height;
  if (!height)
  {
    goto LABEL_46;
  }

LABEL_6:
  height2 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _snapshotPathForCharacterStyleName:nameCopy resourceDirectory:directoryCopy poseType:type size:width, height];
  if (([v15 writeToCPBitmapFile:height2 flags:1] & 1) == 0)
  {
    v17 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_18788();
    }
  }

  v18 = v15;

LABEL_47:

  return v18;
}

- (void)_makeSnapshotImageForStyleName:(id)name resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  nameCopy = name;
  directoryCopy = directory;
  completionCopy = completion;
  if ([nameCopy isRegularMemojiStyleName])
  {
    [(NTKCollieStyleEditOptionAvatarRecordCache *)self _ensureMemojiAvatarRecords];
  }

  if (([nameCopy isSharedMemojiStyleName] & 1) == 0 && !-[NTKCollieStyleEditOptionAvatarRecordCache isBridgeMemojiStyleName:](self, "isBridgeMemojiStyleName:", nameCopy))
  {

    directoryCopy = 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  asyncImageQueue = selfCopy->_asyncImageQueue;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_7CF8;
  v28[3] = &unk_2C948;
  v18 = nameCopy;
  v29 = v18;
  v19 = directoryCopy;
  v30 = v19;
  typeCopy = type;
  v32 = width;
  v33 = height;
  v20 = [(NSMutableArray *)asyncImageQueue ntk_indexOfFirstObjectPassingTest:v28];
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    height = [NTKCollieSnapshotInfo snapshotInfoWithStyleName:v18 resourceDirectory:v19 poseType:type size:width, height];
    [(NSMutableArray *)selfCopy->_asyncImageQueue insertObject:height atIndex:0];
    v22 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(NSMutableArray *)selfCopy->_asyncImageQueue count];
      *buf = 136315650;
      v35 = "[NTKCollieStyleEditOptionAvatarRecordCache _makeSnapshotImageForStyleName:resourceDirectory:poseType:size:completion:]";
      v36 = 1024;
      v37 = v23;
      v38 = 2112;
      v39 = v18;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%s working on %u images, added %@", buf, 0x1Cu);
    }
  }

  else
  {
    height = [(NSMutableArray *)selfCopy->_asyncImageQueue objectAtIndex:v20];
    if (v20)
    {
      [(NSMutableArray *)selfCopy->_asyncImageQueue removeObjectAtIndex:v20];
      [(NSMutableArray *)selfCopy->_asyncImageQueue insertObject:height atIndex:0];
    }
  }

  if (completionCopy)
  {
    completions = [height completions];
    v25 = objc_retainBlock(completionCopy);
    [completions addObject:v25];
  }

  objc_sync_exit(selfCopy);
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    avatarRecordQueue = selfCopy->_avatarRecordQueue;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_7D0C;
    v27[3] = &unk_2C970;
    v27[4] = selfCopy;
    dispatch_async(avatarRecordQueue, v27);
  }
}

- (void)makeSnapshotImageForStyleName:(id)name resourceDirectory:(id)directory size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_80C0;
  v12[3] = &unk_2C998;
  completionCopy = completion;
  v11 = completionCopy;
  [(NTKCollieStyleEditOptionAvatarRecordCache *)self _makeSnapshotImageForStyleName:name resourceDirectory:directory poseType:0 size:v12 completion:width, height];
}

- (void)makeNeutralImageForStyleName:(id)name resourceDirectory:(id)directory size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_81A0;
  v12[3] = &unk_2C998;
  completionCopy = completion;
  v11 = completionCopy;
  [(NTKCollieStyleEditOptionAvatarRecordCache *)self _makeSnapshotImageForStyleName:name resourceDirectory:directory poseType:2 size:v12 completion:width, height];
}

- (void)makeSleepImageForStyleName:(id)name resourceDirectory:(id)directory size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_8280;
  v12[3] = &unk_2C998;
  completionCopy = completion;
  v11 = completionCopy;
  [(NTKCollieStyleEditOptionAvatarRecordCache *)self _makeSnapshotImageForStyleName:name resourceDirectory:directory poseType:1 size:v12 completion:width, height];
}

- (void)_ensureAnimojiImagesIncludeTritium:(BOOL)tritium
{
  tritiumCopy = tritium;
  v5 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_18808(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  +[NTKCollieFaceView _snapshotImageSize];
  v14 = v13;
  v16 = v15;
  v17 = +[NSDate now];
  _animojiIdentifiersCount = [objc_opt_class() _animojiIdentifiersCount];
  v19 = 3 * _animojiIdentifiersCount;
  if (!tritiumCopy)
  {
    v19 = _animojiIdentifiersCount;
  }

  v39 = v19;
  if (_animojiIdentifiersCount)
  {
    v20 = _animojiIdentifiersCount;
    v21 = 0;
    for (i = 0; i != v20; ++i)
    {
      [objc_opt_class() _animojiIdentifierAtIndex:i];
      v23 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v24 = +[NTKCollieFaceBundle logObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v41 = "[NTKCollieStyleEditOptionAvatarRecordCache _ensureAnimojiImagesIncludeTritium:]";
        v42 = 2112;
        v43 = v23;
        _os_log_debug_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%s animoji: %@", buf, 0x16u);
      }

      v25 = objc_autoreleasePoolPush();
      v26 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self snapshotImageForStyleName:*&v23 resourceDirectory:0 size:v14, v16];
      if (!v26)
      {
        v27 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self makeSnapshotImageForStyleName:*&v23 resourceDirectory:0 size:v14, v16];
        ++v21;
      }

      objc_autoreleasePoolPop(v25);
      if (tritiumCopy)
      {
        v28 = objc_autoreleasePoolPush();
        v29 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self sleepImageForStyleName:*&v23 resourceDirectory:0 size:v14, v16];
        if (!v29)
        {
          v30 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self makeSleepImageForStyleName:*&v23 resourceDirectory:0 size:v14, v16];
          ++v21;
        }

        objc_autoreleasePoolPop(v28);
        v31 = objc_autoreleasePoolPush();
        v32 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self neutralImageForStyleName:*&v23 resourceDirectory:0 size:v14, v16];
        if (!v32)
        {
          v33 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self makeNeutralImageForStyleName:*&v23 resourceDirectory:0 size:v14, v16];
          ++v21;
        }

        objc_autoreleasePoolPop(v31);
      }
    }
  }

  else
  {
    v21 = 0;
  }

  v34 = objc_autoreleasePoolPush();
  v35 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self snapshotImageForStyleName:@"toybox-animoji" resourceDirectory:0 size:v14, v16];
  if (!v35)
  {
    v36 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self makeSnapshotImageForStyleName:@"toybox-animoji" resourceDirectory:0 size:v14, v16];
    ++v21;
  }

  objc_autoreleasePoolPop(v34);
  v37 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    [v17 timeIntervalSinceNow];
    *buf = 136315906;
    v41 = "[NTKCollieStyleEditOptionAvatarRecordCache _ensureAnimojiImagesIncludeTritium:]";
    v42 = 2048;
    v43 = -v38;
    v44 = 2048;
    v45 = v21;
    v46 = 2048;
    v47 = v39 + 1;
    _os_log_debug_impl(&dword_0, v37, OS_LOG_TYPE_DEBUG, "%s done, time = %f (%lu/%lu)", buf, 0x2Au);
  }
}

- (void)_ensureMemojiImagesIncludeTritium:(BOOL)tritium
{
  tritiumCopy = tritium;
  v5 = &selRef_initWithData_encoding_;
  v6 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 136315138;
    v34 = "[NTKCollieStyleEditOptionAvatarRecordCache _ensureMemojiImagesIncludeTritium:]";
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%s starting", &v33, 0xCu);
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  +[NTKCollieFaceView _snapshotImageSize];
  v8 = v7;
  v10 = v9;
  v11 = +[NSDate now];
  _memojiIdentifiersCount = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiIdentifiersCount];
  if (tritiumCopy)
  {
    v13 = 3 * _memojiIdentifiersCount;
  }

  else
  {
    v13 = _memojiIdentifiersCount;
  }

  if (_memojiIdentifiersCount)
  {
    v14 = _memojiIdentifiersCount;
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self memojiStyleNameAtIndex:v16];
      v18 = objc_autoreleasePoolPush();
      v19 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self snapshotImageForStyleName:v17 resourceDirectory:0 size:v8, v10];
      if (!v19)
      {
        v20 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self makeSnapshotImageForStyleName:v17 resourceDirectory:0 size:v8, v10];
        ++v15;
      }

      objc_autoreleasePoolPop(v18);
      if (tritiumCopy)
      {
        v21 = objc_autoreleasePoolPush();
        v22 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self sleepImageForStyleName:v17 resourceDirectory:0 size:v8, v10];
        if (!v22)
        {
          v23 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self makeSleepImageForStyleName:v17 resourceDirectory:0 size:v8, v10];
          ++v15;
        }

        objc_autoreleasePoolPop(v21);
        v24 = objc_autoreleasePoolPush();
        v25 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self neutralImageForStyleName:v17 resourceDirectory:0 size:v8, v10];
        if (!v25)
        {
          v26 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self makeNeutralImageForStyleName:v17 resourceDirectory:0 size:v8, v10];
          ++v15;
        }

        objc_autoreleasePoolPop(v24);
      }

      [v11 timeIntervalSinceNow];
      if (v27 < -20.0)
      {
        break;
      }

      if (v14 == ++v16)
      {
        goto LABEL_23;
      }
    }

    v28 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_18880();
    }

LABEL_23:
    if (v14 == 1)
    {
      v5 = &selRef_initWithData_encoding_;
    }

    else
    {
      ++v13;
      v29 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self snapshotImageForStyleName:@"toybox-memoji" resourceDirectory:0 size:v8, v10];
      v5 = &selRef_initWithData_encoding_;
      if (!v29)
      {
        v30 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self makeSnapshotImageForStyleName:@"toybox-memoji" resourceDirectory:0 size:v8, v10];
        ++v15;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  logObject = [v5 + 506 logObject];
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    [v11 timeIntervalSinceNow];
    v33 = 136315906;
    v34 = "[NTKCollieStyleEditOptionAvatarRecordCache _ensureMemojiImagesIncludeTritium:]";
    v35 = 2048;
    v36 = -v32;
    v37 = 2048;
    v38 = v15;
    v39 = 2048;
    v40 = v13;
    _os_log_impl(&dword_0, logObject, OS_LOG_TYPE_DEFAULT, "%s done, time = %f (%lu/%lu)", &v33, 0x2Au);
  }
}

- (void)_ensureSharedMemojiImagesForResourceDirectory:(id)directory includeTritium:(BOOL)tritium
{
  tritiumCopy = tritium;
  directoryCopy = directory;
  v7 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_18910(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  +[NTKCollieFaceView _snapshotImageSize];
  v16 = v15;
  v18 = v17;
  v19 = +[NSDate now];
  if ([objc_opt_class() hasSharedMemojiForResourceDirectory:directoryCopy])
  {
    v20 = objc_autoreleasePoolPush();
    v21 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self snapshotImageForStyleName:@"local-memoji" resourceDirectory:directoryCopy size:v16, v18];
    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v24 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self makeSnapshotImageForStyleName:@"local-memoji" resourceDirectory:directoryCopy size:v16, v18];
      v22 = 1;
    }

    objc_autoreleasePoolPop(v20);
    if (tritiumCopy)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self sleepImageForStyleName:@"local-memoji" resourceDirectory:directoryCopy size:v16, v18];
      if (!v26)
      {
        v27 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self makeSleepImageForStyleName:@"local-memoji" resourceDirectory:directoryCopy size:v16, v18];
        ++v22;
      }

      objc_autoreleasePoolPop(v25);
      v28 = objc_autoreleasePoolPush();
      v29 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self neutralImageForStyleName:@"local-memoji" resourceDirectory:directoryCopy size:v16, v18];
      if (!v29)
      {
        v30 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self makeNeutralImageForStyleName:@"local-memoji" resourceDirectory:directoryCopy size:v16, v18];
        ++v22;
      }

      objc_autoreleasePoolPop(v28);
      v23 = 3;
    }

    else
    {
      v23 = 1;
    }
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  v31 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    [v19 timeIntervalSinceNow];
    v33 = 136315906;
    v34 = "[NTKCollieStyleEditOptionAvatarRecordCache _ensureSharedMemojiImagesForResourceDirectory:includeTritium:]";
    v35 = 2048;
    v36 = -v32;
    v37 = 2048;
    v38 = v22;
    v39 = 2048;
    v40 = v23;
    _os_log_debug_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%s done, time = %f (%lu/%lu)", &v33, 0x2Au);
  }
}

- (void)ensureSnapshotImagesWithResourceDirectory:(id)directory
{
  directoryCopy = directory;
  if ((NTKIsDaemonOrFaceSnapshotService() & 1) == 0)
  {
    v4 = +[CLKDevice currentDevice];
    unlockedSinceBoot = [v4 unlockedSinceBoot];

    if (directoryCopy)
    {
      if (unlockedSinceBoot)
      {
        [(NTKCollieStyleEditOptionAvatarRecordCache *)self pruneResourceDirectory:directoryCopy pruneBridgeMemoji:0];
      }
    }
  }
}

@end
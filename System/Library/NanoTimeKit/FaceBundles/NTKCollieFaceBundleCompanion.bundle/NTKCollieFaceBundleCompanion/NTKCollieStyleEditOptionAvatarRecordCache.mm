@interface NTKCollieStyleEditOptionAvatarRecordCache
+ (BOOL)_memojiManifestSaveFileRecords:(id)a3;
+ (BOOL)hasBridgeMemojiForIdentifier:(id)a3 resourceDirectory:(id)a4;
+ (BOOL)hasBridgeMemojiIdentifierForResourceDirectory:(id)a3;
+ (BOOL)hasSharedMemojiForResourceDirectory:(id)a3;
+ (BOOL)saveBridgeMemojiDataRepresentation:(id)a3 identifier:(id)a4 resourceDirectory:(id)a5 error:(id *)a6;
+ (BOOL)saveSharedMemojiDataRepresentation:(id)a3 resourceDirectory:(id)a4 error:(id *)a5;
+ (BOOL)validateMemojiDataRepresentation:(id)a3 forDevice:(id)a4 error:(id *)a5;
+ (BOOL)validateSharedMemojiResourceDirectory:(id)a3 forDevice:(id)a4 error:(id *)a5;
+ (id)_animojiIdentifierAtIndex:(unint64_t)a3;
+ (id)_basenameForSnapshotImageIdentifier:(id)a3 poseType:(unint64_t)a4 size:(CGSize)a5;
+ (id)_configurationNameForCharacterPoseType:(unint64_t)a3;
+ (id)_image:(id)a3 scaledToFit:(CGSize)a4 poseType:(unint64_t)a5 useVerticalScaling:(BOOL)a6 vShift:(double)a7;
+ (id)_memojiDataRepresentationFromAvatarRecord:(id)a3;
+ (id)_memojiManifestFilePath;
+ (id)_memojiManifestFileRecords;
+ (id)_sharedMemojiPreserveList;
+ (id)_styleNameFromDataRepresentationBasename:(id)a3;
+ (id)animojiIdentifiers;
+ (id)avatarLoaderQueueSharedInstance;
+ (id)bridgeMemojiDataRepresentationForIdentifier:(id)a3 resourceDirectory:(id)a4;
+ (id)bridgeMemojiForIdentifier:(id)a3 resourceDirectory:(id)a4;
+ (id)bridgeMemojiIdentifierForResourceDirectory:(id)a3;
+ (id)bridgeMemojiStyleNameForResourceDirectory:(id)a3;
+ (id)memojiDataRepresentationBasenameForIdentifier:(id)a3;
+ (id)sharedMemojiDataRepresentationForResourceDirectory:(id)a3;
+ (id)sharedMemojiForResourceDirectory:(id)a3 oldAvatar:(id)a4;
+ (unint64_t)_animojiIdentifiersCount;
+ (void)_extendPreservelist:(id)a3 snapshotKey:(id)a4;
+ (void)_pruneDirectory:(id)a3 preserveList:(id)a4;
+ (void)_pruneWithPreserveList:(id)a3 resourceDirectory:(id)a4;
+ (void)enumerateBasenamesInResourceDirectory:(id)a3 callback:(id)a4;
- (BOOL)hasSnapshotImageForStyleName:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6;
- (BOOL)isBridgeMemojiStyleName:(id)a3;
- (NTKCollieStyleEditOptionAvatarRecordCache)init;
- (id)_animalToyboxCharacters;
- (id)_makeAnimojiToyBoxSnapshotImageWithSize:(CGSize)a3;
- (id)_makeMemojiToyBoxSnapshotImageWithSize:(CGSize)a3;
- (id)_makeSnapshotImageForStyleName:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6;
- (id)_memojiAvatarRecordAtIndex:(unint64_t)a3;
- (id)_memojiAvatarRecords;
- (id)_memojiIdentifierAtIndex:(unint64_t)a3;
- (id)_memojiManifest;
- (id)_poseOfType:(unint64_t)a3 characterStyleName:(id)a4;
- (id)_preserveListForResourceDirectory:(id)a3 pruneBridgeMemoji:(BOOL)a4;
- (id)_preserveListWithManifest:(id)a3 oldManifest:(id)a4;
- (id)_snapshotImageForCharacterStyleName:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6;
- (id)_snapshotImageIdentifierForStyleName:(id)a3;
- (id)_snapshotPathForCharacterStyleName:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6;
- (id)_snapshotPathForCharacterStyleName:(id)a3 resourceDirectory:(id)a4 useResourceDirectory:(BOOL)a5 poseType:(unint64_t)a6 size:(CGSize)a7;
- (id)_toyBox2ImageWithSize:(CGSize)a3 fromImages:(id *)a4 imageCount:(unint64_t)a5;
- (id)_toyBox3ImageWithSize:(CGSize)a3 fromImages:(id *)a4 imageCount:(unint64_t)a5;
- (id)_toyboxAnimojiIdentifier;
- (id)_toyboxMemojiIdentifier;
- (id)makeNeutralImageForStyleName:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5;
- (id)makeSleepImageForStyleName:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5;
- (id)makeSnapshotImageForStyleName:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5;
- (id)memojiAvatarAtIndex:(unint64_t)a3 oldAvatar:(id)a4;
- (id)memojiDataRepresentationAtIndex:(unint64_t)a3;
- (id)memojiDataRepresentationForStyleName:(id)a3 resourceDirectory:(id)a4;
- (id)memojiIdentifiers;
- (id)memojiSha1StringAtIndex:(unint64_t)a3;
- (id)memojiSha1StringForStyleName:(id)a3 resourceDirectory:(id)a4;
- (id)memojiStyleNameAtIndex:(unint64_t)a3;
- (id)nodeModificationsForScope:(id)a3 vLensShift:(double)a4 renderer:(id)a5;
- (id)snapshotImageForStyleName:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6;
- (id)styleNamesForResourceDirectory:(id)a3;
- (unint64_t)_memojiIdentifiersCount;
- (unint64_t)indexForRecordIdentifier:(id)a3;
- (void)_ensureAnimojiImagesIncludeTritium:(BOOL)a3;
- (void)_ensureMemojiAvatarRecords;
- (void)_ensureMemojiAvatarRecordsReally;
- (void)_ensureMemojiImagesIncludeTritium:(BOOL)a3;
- (void)_ensureSharedMemojiImagesForResourceDirectory:(id)a3 includeTritium:(BOOL)a4;
- (void)_enumerateAnimojiToyBoxToys:(id)a3;
- (void)_enumerateMemojiToyBoxToys:(id)a3;
- (void)_makeSnapshotImageForStyleName:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6 completion:(id)a7;
- (void)_refreshAndSaveFromAvatarRecords:(id)a3;
- (void)ensureSnapshotImagesWithResourceDirectory:(id)a3;
- (void)loadAvatarForCharacterStyleName:(id)a3 resourceDirectory:(id)a4 oldAvatar:(id)a5 completion:(id)a6;
- (void)makeNeutralImageForStyleName:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5 completion:(id)a6;
- (void)makeSleepImageForStyleName:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5 completion:(id)a6;
- (void)makeSnapshotImageForStyleName:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5 completion:(id)a6;
- (void)pruneResourceDirectory:(id)a3 pruneBridgeMemoji:(BOOL)a4;
@end

@implementation NTKCollieStyleEditOptionAvatarRecordCache

+ (id)avatarLoaderQueueSharedInstance
{
  v2 = a1;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&qword_331E0);
  if (!WeakRetained)
  {
    WeakRetained = dispatch_queue_create("com.apple.nanotimekit.collie.avatarLoader", 0);
    objc_storeWeak(&qword_331E0, WeakRetained);
  }

  objc_sync_exit(v2);

  return WeakRetained;
}

- (NTKCollieStyleEditOptionAvatarRecordCache)init
{
  v8.receiver = self;
  v8.super_class = NTKCollieStyleEditOptionAvatarRecordCache;
  v2 = [(NTKCollieStyleEditOptionAvatarRecordCache *)&v8 init];
  if (v2)
  {
    v3 = [objc_opt_class() avatarLoaderQueueSharedInstance];
    avatarRecordQueue = v2->_avatarRecordQueue;
    v2->_avatarRecordQueue = v3;

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
  v2 = [a1 animojiIdentifiers];
  v3 = [v2 count];

  return v3;
}

+ (id)_animojiIdentifierAtIndex:(unint64_t)a3
{
  v5 = [a1 animojiIdentifiers];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [a1 animojiIdentifiers];
    v8 = [v7 objectAtIndexedSubscript:a3];
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
  v2 = [a1 _memojiManifestFilePath];
  v12 = 0;
  v3 = [NSData dataWithContentsOfFile:v2 options:1 error:&v12];
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

+ (BOOL)_memojiManifestSaveFileRecords:(id)a3
{
  v13 = 0;
  v4 = [NSJSONSerialization dataWithJSONObject:a3 options:1 error:&v13];
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
    v8 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_17F3C();
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v8 = [a1 _memojiManifestFilePath];
  v12 = 0;
  v9 = [v4 writeToFile:v8 options:268435457 error:&v12];
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

+ (id)_memojiDataRepresentationFromAvatarRecord:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 avatarData];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_memojiManifest
{
  v2 = self;
  objc_sync_enter(v2);
  if ((NTKIsFaceSnapshotService() & 1) == 0)
  {
    [(NTKCollieStyleEditOptionAvatarRecordCache *)v2 _ensureMemojiAvatarRecordsReally];
  }

  memojiManifestCache = v2->_memojiManifestCache;
  if (!memojiManifestCache)
  {
    v4 = [objc_opt_class() _memojiManifestFileRecords];
    v5 = v2->_memojiManifestCache;
    v2->_memojiManifestCache = v4;

    memojiManifestCache = v2->_memojiManifestCache;
  }

  v6 = memojiManifestCache;
  objc_sync_exit(v2);

  return v6;
}

- (void)_refreshAndSaveFromAvatarRecords:(id)a3
{
  v4 = a3;
  [(NTKCollieStyleEditOptionAvatarRecordCache *)self _ensureMemojiManifest];
  v5 = [objc_opt_class() _memojiManifestRecordsFromAvatarRecords:v4];

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

- (id)_preserveListWithManifest:(id)a3 oldManifest:(id)a4
{
  v6 = a3;
  v7 = a4;
  +[NTKCollieFaceView _snapshotImageSize];
  v9 = v8;
  v11 = v10;
  v12 = objc_opt_new();
  v40 = objc_opt_new();
  v37 = v7;
  if (v7)
  {
    obj = v6;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v13 = v7;
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

    v6 = obj;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obja = v6;
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
    v33 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _toyboxMemojiIdentifier];
    if (v33)
    {
      v34 = [objc_opt_class() _basenameForSnapshotImageIdentifier:v33 poseType:0 size:{v9, v11}];
      [v32 addObject:v34];
    }
  }

  [v32 addObject:@"manifest.json"];
  v35 = [v32 copy];

  _Block_object_dispose(&v46, 8);

  return v35;
}

+ (void)_extendPreservelist:(id)a3 snapshotKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  +[NTKCollieFaceView _snapshotImageSize];
  v9 = v8;
  v11 = v10;
  v12 = [a1 _basenameForSnapshotImageIdentifier:v6 poseType:0 size:?];
  [v7 addObject:v12];

  v13 = [a1 _basenameForSnapshotImageIdentifier:v6 poseType:1 size:{v9, v11}];
  [v7 addObject:v13];

  v14 = [a1 _basenameForSnapshotImageIdentifier:v6 poseType:2 size:{v9, v11}];

  [v7 addObject:v14];
}

+ (id)_sharedMemojiPreserveList
{
  v3 = objc_opt_new();
  [a1 _extendPreservelist:v3 snapshotKey:@"local"];
  [v3 addObject:@"avatar"];
  v4 = [v3 copy];

  return v4;
}

- (id)_preserveListForResourceDirectory:(id)a3 pruneBridgeMemoji:(BOOL)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = objc_opt_class();
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_3834;
  v16 = &unk_2C860;
  v17 = v7;
  v18 = self;
  v20 = a4;
  v19 = v6;
  v9 = v6;
  v10 = v7;
  [v8 enumerateBasenamesInResourceDirectory:v9 callback:&v13];
  v11 = [v10 copy];

  return v11;
}

+ (void)_pruneDirectory:(id)a3 preserveList:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 enumeratorAtPath:v5];

  v9 = [v8 nextObject];
  if (v9)
  {
    v11 = v9;
    *&v10 = 136315650;
    v17 = v10;
    do
    {
      v12 = @"preserved";
      if (([v6 containsObject:{v11, v17}] & 1) == 0)
      {
        v13 = [v5 stringByAppendingPathComponent:v11];
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

      v16 = [v8 nextObject];

      v11 = v16;
    }

    while (v16);
  }
}

+ (void)_pruneWithPreserveList:(id)a3 resourceDirectory:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = sub_2964();
    [a1 _pruneDirectory:v7 preserveList:v9];
  }

  if (v6 && [a1 hasSharedMemojiForResourceDirectory:v6])
  {
    v8 = [a1 _sharedMemojiPreserveList];
    [a1 _pruneDirectory:v6 preserveList:v8];
  }
}

- (void)pruneResourceDirectory:(id)a3 pruneBridgeMemoji:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11 = 0;
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:v6 isDirectory:&v11];
  v9 = v11;

  if (v8 && (v9 & 1) != 0)
  {
    v10 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _preserveListForResourceDirectory:v6 pruneBridgeMemoji:v4];
    [objc_opt_class() _pruneDirectory:v6 preserveList:v10];
  }
}

- (unint64_t)_memojiIdentifiersCount
{
  v2 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiManifest];
  v3 = [v2 count];

  return v3;
}

- (id)_memojiIdentifierAtIndex:(unint64_t)a3
{
  v5 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiManifest];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v9 = 0;
  }

  else
  {
    v7 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiManifest];
    v8 = [v7 objectAtIndexedSubscript:a3];

    v9 = [v8 objectForKeyedSubscript:@"identifier"];
  }

  return v9;
}

- (id)memojiSha1StringAtIndex:(unint64_t)a3
{
  v5 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiManifest];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v9 = 0;
  }

  else
  {
    v7 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiManifest];
    v8 = [v7 objectAtIndexedSubscript:a3];

    v9 = [v8 objectForKeyedSubscript:@"sha1"];
  }

  return v9;
}

- (id)memojiIdentifiers
{
  v3 = objc_opt_new();
  v4 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiIdentifiersCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiIdentifierAtIndex:i];
      [v3 addObject:v7];
    }
  }

  v8 = [v3 copy];

  return v8;
}

- (unint64_t)indexForRecordIdentifier:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiManifest];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(v5);
      }

      v12 = [*(*(&v15 + 1) + 8 * v10) objectForKeyedSubscript:@"identifier"];
      v13 = [v12 isEqualToString:v4];

      if (v13)
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v2 = self;
  objc_sync_enter(v2);
  if ((NTKIsFaceSnapshotService() & 1) == 0)
  {
    [(NTKCollieStyleEditOptionAvatarRecordCache *)v2 _ensureMemojiAvatarRecordsReally];
  }

  v3 = v2->_memojiAvatarRecordsCache;
  objc_sync_exit(v2);

  return v3;
}

- (void)_ensureMemojiAvatarRecordsReally
{
  v3 = +[CLKDevice currentDevice];
  v4 = [v3 unlockedSinceBoot];

  if (v4)
  {
    if (!self->_memojiAvatarRecordsCache)
    {
      v5 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self cloudSyncStatus];
      if (v5)
      {
        if (v5 == 4)
        {
          v6 = [objc_opt_class() requestForCustomAvatars];
          v7 = +[NTKCollieFaceBundle logObject];
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v20 = "[NTKCollieStyleEditOptionAvatarRecordCache _ensureMemojiAvatarRecordsReally]";
            _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s: starting AVTAvatarFetchRequest requestForCustomAvatars", buf, 0xCu);
          }

          v8 = +[NTKCollieAvatarStoreListener sharedInstance];
          v9 = [v8 avatarStore];

          v18 = 0;
          v10 = [v9 avatarsForFetchRequest:v6 error:&v18];
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
    v4 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiAvatarRecords];
  }
}

- (id)_memojiAvatarRecordAtIndex:(unint64_t)a3
{
  v5 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiAvatarRecords];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiAvatarRecords];
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  return v8;
}

- (id)memojiAvatarAtIndex:(unint64_t)a3 oldAvatar:(id)a4
{
  v4 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiAvatarRecordAtIndex:a3, a4];
  if (v4)
  {
    v5 = [AVTAvatarRecordRendering avatarForRecord:v4 usageIntent:2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)loadAvatarForCharacterStyleName:(id)a3 resourceDirectory:(id)a4 oldAvatar:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 isRegularMemojiStyleName])
  {
    [(NTKCollieStyleEditOptionAvatarRecordCache *)self _ensureMemojiAvatarRecords];
  }

  avatarRecordQueue = self->_avatarRecordQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_45D8;
  block[3] = &unk_2C888;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = self;
  v24 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(avatarRecordQueue, block);
}

- (id)memojiDataRepresentationAtIndex:(unint64_t)a3
{
  v3 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiAvatarRecordAtIndex:a3];
  v4 = [objc_opt_class() _memojiDataRepresentationFromAvatarRecord:v3];

  return v4;
}

+ (BOOL)hasSharedMemojiForResourceDirectory:(id)a3
{
  v3 = [a3 stringByAppendingPathComponent:@"avatar"];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  return v5;
}

+ (id)sharedMemojiDataRepresentationForResourceDirectory:(id)a3
{
  v3 = [a3 stringByAppendingPathComponent:@"avatar"];
  v4 = [NSData dataWithContentsOfFile:v3];

  return v4;
}

+ (BOOL)validateMemojiDataRepresentation:(id)a3 forDevice:(id)a4 error:(id *)a5
{
  if (a3)
  {
    v14 = 0;
    v6 = [AVTAvatarDescriptor ntk_canLoadDataRepresentation:a3 forDevice:a4 error:&v14];
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

    if (!a5)
    {
      goto LABEL_11;
    }

LABEL_10:
    v12 = v7;
    *a5 = v7;
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
  if (a5)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v6;
}

+ (BOOL)validateSharedMemojiResourceDirectory:(id)a3 forDevice:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (!a3)
  {
    v9 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_18230();
    }

    goto LABEL_9;
  }

  v9 = [a1 sharedMemojiDataRepresentationForResourceDirectory:a3];
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

  v10 = [a1 validateMemojiDataRepresentation:v9 forDevice:v8 error:a5];
LABEL_10:

  return v10;
}

+ (BOOL)saveSharedMemojiDataRepresentation:(id)a3 resourceDirectory:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[NSFileManager defaultManager];
  v16 = 0;
  [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v16];
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
    v11 = [v8 stringByAppendingPathComponent:@"avatar"];
    v15 = 0;
    [v7 writeToFile:v11 options:1 error:&v15];
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

  if (a5)
  {
    v13 = v10;
    *a5 = v10;
  }

  return v10 == 0;
}

+ (id)sharedMemojiForResourceDirectory:(id)a3 oldAvatar:(id)a4
{
  v4 = [a1 sharedMemojiDataRepresentationForResourceDirectory:{a3, a4}];
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

+ (BOOL)hasBridgeMemojiIdentifierForResourceDirectory:(id)a3
{
  v3 = [a3 stringByAppendingPathComponent:@"memoji-identifier"];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  return v5;
}

+ (id)bridgeMemojiIdentifierForResourceDirectory:(id)a3
{
  v3 = [a3 stringByAppendingPathComponent:@"memoji-identifier"];
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

+ (id)_styleNameFromDataRepresentationBasename:(id)a3
{
  v3 = a3;
  v4 = [NSString styleNameFromBasename:v3];
  if (v4)
  {
    v5 = [objc_opt_class() dataRepresentationBasenameForStyleName:v4];
    if ([v3 isEqualToString:v5])
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

+ (id)memojiDataRepresentationBasenameForIdentifier:(id)a3
{
  v4 = [NSString regularMemojiStyleNameForIdentifier:a3];
  v5 = [a1 dataRepresentationBasenameForStyleName:v4];

  return v5;
}

+ (BOOL)hasBridgeMemojiForIdentifier:(id)a3 resourceDirectory:(id)a4
{
  v6 = a4;
  v7 = [a1 memojiDataRepresentationBasenameForIdentifier:a3];
  v8 = [v6 stringByAppendingPathComponent:v7];

  v9 = +[NSFileManager defaultManager];
  v10 = [v9 fileExistsAtPath:v8];

  return v10;
}

+ (id)bridgeMemojiStyleNameForResourceDirectory:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() hasBridgeMemojiIdentifierForResourceDirectory:v3] && (objc_msgSend(objc_opt_class(), "bridgeMemojiIdentifierForResourceDirectory:", v3), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
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

+ (id)bridgeMemojiDataRepresentationForIdentifier:(id)a3 resourceDirectory:(id)a4
{
  v6 = a4;
  v7 = [a1 memojiDataRepresentationBasenameForIdentifier:a3];
  v8 = [v6 stringByAppendingPathComponent:v7];

  v9 = [NSData dataWithContentsOfFile:v8];

  return v9;
}

+ (id)bridgeMemojiForIdentifier:(id)a3 resourceDirectory:(id)a4
{
  v4 = [a1 bridgeMemojiDataRepresentationForIdentifier:a3 resourceDirectory:a4];
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

+ (void)enumerateBasenamesInResourceDirectory:(id)a3 callback:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 enumeratorAtPath:v5];

  v9 = 0;
  do
  {
    v10 = v9;
    v9 = [v8 nextObject];

    if (!v9)
    {
      break;
    }

    v11 = 0;
    v6[2](v6, v9, &v11);
  }

  while (v11 != 1);
}

+ (BOOL)saveBridgeMemojiDataRepresentation:(id)a3 identifier:(id)a4 resourceDirectory:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[NSFileManager defaultManager];
  v25 = 0;
  [v13 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v25];
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
    v15 = [v12 stringByAppendingPathComponent:@"memoji-identifier"];
    v24 = 0;
    v16 = [v11 writeToFile:v15 atomically:1 encoding:4 error:&v24];
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
      v18 = [a1 memojiDataRepresentationBasenameForIdentifier:v11];
      v19 = [v12 stringByAppendingPathComponent:v18];
      v23 = 0;
      [v10 writeToFile:v19 options:1 error:&v23];
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

  if (a6)
  {
    v21 = v14;
    *a6 = v14;
  }

  return v14 == 0;
}

- (id)memojiDataRepresentationForStyleName:(id)a3 resourceDirectory:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isSharedMemojiStyleName])
  {
    v8 = [objc_opt_class() sharedMemojiDataRepresentationForResourceDirectory:v7];
  }

  else if ([v6 isRegularMemojiStyleName])
  {
    v9 = [v6 memojiIdentifier];
    v10 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self indexForRecordIdentifier:v9];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [objc_opt_class() bridgeMemojiDataRepresentationForIdentifier:v9 resourceDirectory:v7];
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

- (id)memojiSha1StringForStyleName:(id)a3 resourceDirectory:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isSharedMemojiStyleName])
  {
    v8 = [objc_opt_class() sharedMemojiDataRepresentationForResourceDirectory:v7];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 sha1String];
LABEL_17:
      v14 = v10;
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if ([v6 isRegularMemojiStyleName])
  {
    v9 = [v6 memojiIdentifier];
    v11 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self indexForRecordIdentifier:v9];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self memojiSha1StringAtIndex:v11];
      goto LABEL_17;
    }

    v12 = [objc_opt_class() bridgeMemojiDataRepresentationForIdentifier:v9 resourceDirectory:v7];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 sha1String];

LABEL_18:
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (![v6 isToyboxMemojiStyleName] || ((v15 = -[NTKCollieStyleEditOptionAvatarRecordCache _memojiIdentifiersCount](self, "_memojiIdentifiersCount"), v15 >= 3) ? (v16 = 3) : (v16 = v15), v15 < 2))
  {
LABEL_20:
    v14 = 0;
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
  v14 = [v18 sha1String];

  objc_autoreleasePoolPop(v17);
LABEL_21:

  return v14;
}

- (id)memojiStyleNameAtIndex:(unint64_t)a3
{
  v3 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiIdentifierAtIndex:a3];
  v4 = [NSString stringWithFormat:@"memoji-%@", v3];

  return v4;
}

- (id)styleNamesForResourceDirectory:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_styleNamesCache)
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v8 = [(NTKCollieStyleEditOptionAvatarRecordCache *)v5 _memojiIdentifiersCount];
    if (v8 >= 2)
    {
      [v6 addObject:@"toybox-memoji"];
    }

    if ([objc_opt_class() hasSharedMemojiForResourceDirectory:v4])
    {
      [v6 addObject:@"local-memoji"];
    }

    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = [(NTKCollieStyleEditOptionAvatarRecordCache *)v5 memojiStyleNameAtIndex:i];
        [v6 addObject:v10];
        [v7 addObject:v10];
      }
    }

    v11 = [objc_opt_class() bridgeMemojiStyleNameForResourceDirectory:v4];
    if (v11 && ([v7 containsObject:v11] & 1) == 0)
    {
      [v6 addObject:v11];
    }

    [v6 addObject:@"toybox-animoji"];
    v12 = [objc_opt_class() _animojiIdentifiersCount];
    if (v12)
    {
      v13 = 0;
      do
      {
        v14 = [objc_opt_class() _animojiIdentifierAtIndex:v13];
        [v6 addObject:v14];

        ++v13;
      }

      while (v12 != v13);
    }

    v15 = [v6 copy];
    styleNamesCache = v5->_styleNamesCache;
    v5->_styleNamesCache = v15;
  }

  objc_sync_exit(v5);

  v17 = v5->_styleNamesCache;
  v18 = v17;

  return v17;
}

+ (id)_configurationNameForCharacterPoseType:(unint64_t)a3
{
  if (a3 - 1 > 9)
  {
    return @"snapshot";
  }

  else
  {
    return off_2C9D8[a3 - 1];
  }
}

+ (id)_basenameForSnapshotImageIdentifier:(id)a3 poseType:(unint64_t)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v10 = [a1 _configurationNameForCharacterPoseType:a4];
  v11 = [NSString stringWithFormat:@"%@-%@-%ux%u-%u.cpbitmap", v9, v10, width, height, 6];

  return v11;
}

- (id)_snapshotPathForCharacterStyleName:(id)a3 resourceDirectory:(id)a4 useResourceDirectory:(BOOL)a5 poseType:(unint64_t)a6 size:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v10 = a5;
  v13 = a3;
  v14 = a4;
  v15 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _snapshotImageIdentifierForStyleName:v13];
  v16 = [objc_opt_class() _basenameForSnapshotImageIdentifier:v15 poseType:a6 size:{width, height}];
  if (([v13 isSharedMemojiStyleName] & 1) != 0 || objc_msgSend(v13, "isRegularMemojiStyleName") && v10)
  {
    v17 = [v14 stringByAppendingPathComponent:v16];
  }

  else
  {
    v18 = sub_2964();
    v17 = [v18 stringByAppendingPathComponent:v16];
  }

  return v17;
}

- (BOOL)isBridgeMemojiStyleName:(id)a3
{
  v4 = a3;
  if ([v4 isRegularMemojiStyleName])
  {
    v5 = [v4 memojiIdentifier];
    v6 = ![(NTKCollieStyleEditOptionAvatarRecordCache *)self hasAvatarStoreMemojiForIdentifier:v5];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_snapshotPathForCharacterStyleName:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v11 = a4;
  v12 = a3;
  v13 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _snapshotPathForCharacterStyleName:v12 resourceDirectory:v11 useResourceDirectory:[(NTKCollieStyleEditOptionAvatarRecordCache *)self isBridgeMemojiStyleName:v12] poseType:a5 size:width, height];

  return v13;
}

- (id)_snapshotImageForCharacterStyleName:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6
{
  v6 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _snapshotPathForCharacterStyleName:a3 resourceDirectory:a4 poseType:a5 size:a6.width, a6.height];
  v7 = [UIImage imageWithContentsOfCPBitmapFile:v6 flags:2];

  return v7;
}

+ (id)_image:(id)a3 scaledToFit:(CGSize)a4 poseType:(unint64_t)a5 useVerticalScaling:(BOOL)a6 vShift:(double)a7
{
  v8 = a6;
  height = a4.height;
  width = a4.width;
  v11 = a3;
  [v11 size];
  if (a7 != 0.0 || v12 != width || v13 != height)
  {
    v16 = width / v12;
    if (v8)
    {
      v16 = height / v13;
    }

    v17 = v12 * v16;
    v18 = v13 * v16;
    v19 = (v16 * a7 + height - v13 * v16) * 0.5;
    v20 = [[UIGraphicsImageRenderer alloc] initWithSize:{width, height}];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_5E48;
    v23[3] = &unk_2C8B0;
    v24 = v11;
    v25 = (width - v17) * 0.5;
    v26 = v19;
    v27 = v17;
    v28 = v18;
    v21 = v11;
    v11 = [v20 imageWithActions:v23];
  }

  return v11;
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
  v2 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _animalToyboxCharacters];
  v3 = [v2 count];
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
      v8 = [v2 objectAtIndexedSubscript:v7];
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
  v3 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiIdentifiersCount];
  if (v3 >= 2)
  {
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

- (id)_snapshotImageIdentifierForStyleName:(id)a3
{
  v4 = a3;
  if ([v4 isToyboxAnimojiStyleName])
  {
    v5 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _toyboxAnimojiIdentifier];
  }

  else if ([v4 isToyboxMemojiStyleName])
  {
    v5 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _toyboxMemojiIdentifier];
  }

  else
  {
    if ([v4 isSharedMemojiStyleName])
    {
      v6 = @"local";
      goto LABEL_9;
    }

    v5 = v4;
  }

  v6 = v5;
LABEL_9:

  return v6;
}

- (BOOL)hasSnapshotImageForStyleName:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v11 = a3;
  v12 = a4;
  if (a5 <= 2 && [v11 isResourcedStyleName] && (objc_msgSend(objc_opt_class(), "_configurationNameForCharacterPoseType:", a5), v13 = objc_claimAutoreleasedReturnValue(), -[NTKCollieStyleEditOptionAvatarRecordCache _snapshotImageIdentifierForStyleName:](self, "_snapshotImageIdentifierForStyleName:", v11), v14 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-%@", v14, v13), v15 = objc_claimAutoreleasedReturnValue(), +[NTKCollieFaceBundle imageWithName:](NTKCollieFaceBundle, "imageWithName:", v15), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, v13, v16))
  {
    v17 = 1;
  }

  else
  {
    v18 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _snapshotPathForCharacterStyleName:v11 resourceDirectory:v12 poseType:a5 size:width, height];
    v19 = +[NSFileManager defaultManager];
    v17 = [v19 fileExistsAtPath:v18];
  }

  return v17;
}

- (id)snapshotImageForStyleName:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v11 = a3;
  v12 = a4;
  if (a5 > 2 || ![v11 isResourcedStyleName] || (objc_msgSend(objc_opt_class(), "_configurationNameForCharacterPoseType:", a5), v13 = objc_claimAutoreleasedReturnValue(), -[NTKCollieStyleEditOptionAvatarRecordCache _snapshotImageIdentifierForStyleName:](self, "_snapshotImageIdentifierForStyleName:", v11), v14 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-%@", v14, v13), v15 = objc_claimAutoreleasedReturnValue(), +[NTKCollieFaceBundle imageWithName:](NTKCollieFaceBundle, "imageWithName:", v15), v16 = objc_claimAutoreleasedReturnValue(), v15, v14, v13, !v16))
  {
    v16 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _snapshotImageForCharacterStyleName:v11 resourceDirectory:v12 poseType:a5 size:width, height];
  }

  return v16;
}

- (id)_toyBox3ImageWithSize:(CGSize)a3 fromImages:(id *)a4 imageCount:(unint64_t)a5
{
  height = a3.height;
  width = a3.width;
  v9 = [[UIGraphicsImageRenderer alloc] initWithSize:{a3.width, a3.height}];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_64C8;
  v12[3] = &unk_2C8D0;
  v12[4] = a5;
  v12[5] = a4;
  *&v12[6] = width;
  *&v12[7] = height;
  v10 = [v9 imageWithActions:v12];

  return v10;
}

- (id)_toyBox2ImageWithSize:(CGSize)a3 fromImages:(id *)a4 imageCount:(unint64_t)a5
{
  height = a3.height;
  width = a3.width;
  v9 = [[UIGraphicsImageRenderer alloc] initWithSize:{a3.width, a3.height}];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_66C8;
  v12[3] = &unk_2C8D0;
  v12[4] = a5;
  v12[5] = a4;
  *&v12[6] = width;
  *&v12[7] = height;
  v10 = [v9 imageWithActions:v12];

  return v10;
}

- (id)_poseOfType:(unint64_t)a3 characterStyleName:(id)a4
{
  v5 = a4;
  if (a3 == 2)
  {
    v6 = [NTKCollieStyleEditOption neutralPoseForCharacterStyleName:v5];
  }

  else if (a3 == 1)
  {
    v6 = [NTKCollieStyleEditOption sleepPoseForCharacterStyleName:v5];
  }

  else
  {
    if (a3)
    {
      v8 = [objc_opt_class() _configurationNameForCharacterPoseType:a3];
      if ([v5 isRegularMemojiStyleName])
      {
        [AVTStickerConfiguration stickerConfigurationsForMemojiInStickerPack:kAVTStickerPackPoses];
      }

      else
      {
        [AVTStickerConfiguration stickerConfigurationsForAnimojiNamed:v5 inStickerPack:kAVTStickerPackPoses];
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
        v13 = [v12 physicalizedPose];
        v7 = [v13 pose];
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_15;
    }

    v6 = [NTKCollieStyleEditOption friendlyPoseForCharacterStyleName:v5];
  }

  v7 = v6;
LABEL_15:

  return v7;
}

- (void)_enumerateAnimojiToyBoxToys:(id)a3
{
  v11 = a3;
  v4 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _animalToyboxCharacters];
  v5 = [v4 count];
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
      v8 = [v4 objectAtIndexedSubscript:v7];
      v9 = qword_26A40[v7];
      v10 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _snapshotImageIdentifierForStyleName:v8];
      v11[2](v11, v10, v8, v9);

      ++v7;
    }

    while (v6 != v7);
  }
}

- (id)_makeAnimojiToyBoxSnapshotImageWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v14 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _toyBox3ImageWithSize:v19 fromImages:3 imageCount:width, height];
  _Block_object_dispose(v18, 8);
  for (i = 2; i != -1; --i)
  {
  }

  return v14;
}

- (void)_enumerateMemojiToyBoxToys:(id)a3
{
  v11 = a3;
  v12[0] = xmmword_26A10;
  v12[1] = xmmword_26A20;
  v12[2] = xmmword_26A30;
  v4 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiIdentifiersCount];
  if (v4 >= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  if (v4 >= 2)
  {
    v6 = 0;
    do
    {
      v7 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self memojiStyleNameAtIndex:v6];
      v8 = *(&v12[-3] + 3 * v5 + v6);
      v9 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _snapshotImageIdentifierForStyleName:v7];
      (*(v11 + 2))(v11, v9, v7, v8);

      ++v6;
    }

    while (v5 != v6);
  }

  v10 = v11;
}

- (id)_makeMemojiToyBoxSnapshotImageWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (id)makeSnapshotImageForStyleName:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  v12 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _makeSnapshotImageForStyleName:v9 resourceDirectory:v10 poseType:0 size:width, height];
  objc_autoreleasePoolPop(v11);

  return v12;
}

- (id)makeNeutralImageForStyleName:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  v12 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _makeSnapshotImageForStyleName:v9 resourceDirectory:v10 poseType:2 size:width, height];
  objc_autoreleasePoolPop(v11);

  return v12;
}

- (id)makeSleepImageForStyleName:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  v12 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _makeSnapshotImageForStyleName:v9 resourceDirectory:v10 poseType:1 size:width, height];
  objc_autoreleasePoolPop(v11);

  return v12;
}

- (id)nodeModificationsForScope:(id)a3 vLensShift:(double)a4 renderer:(id)a5
{
  v7 = AVTFramingModeWatchFace;
  v8 = a3;
  [a5 fieldOfViewForNodeWithName:v7];
  v10 = v9;
  +[NTKCollieFaceView avatarFramingTopMargin];
  v12 = v11;
  v13 = +[CLKDevice currentDevice];
  [v13 screenBounds];
  v15 = v14;

  [v8 size];
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
  v22 = (v12 + a4) * (v21 * 0.5);

  v23 = [[AVTSCNNodeModifications alloc] initWithProjectionDirection:v7 fieldOfView:0.0 verticalLensShift:v10 framingMode:v22];

  return v23;
}

- (id)_makeSnapshotImageForStyleName:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v11 = a3;
  v12 = a4;
  usingService = self->_usingService;
  if ([v11 isToyboxAnimojiStyleName])
  {
    v14 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _makeAnimojiToyBoxSnapshotImageWithSize:width, height];
    goto LABEL_5;
  }

  if (![v11 isToyboxMemojiStyleName])
  {
    if ([v11 isSharedMemojiStyleName])
    {
      v19 = [objc_opt_class() sharedMemojiForResourceDirectory:v12 oldAvatar:0];
      v20 = +[AVTRenderingScope ntk_watchFaceMemojiRenderingScope];
      v21 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _poseOfType:a5 characterStyleName:v11];
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

    if (![v11 isRegularMemojiStyleName])
    {
      if (![v11 isRegularAnimojiStyleName])
      {
        goto LABEL_46;
      }

      v19 = v11;
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
      v33 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _poseOfType:a5 characterStyleName:v19];
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
        v37 = [objc_opt_class() _image:v15 scaledToFit:a5 poseType:0 useVerticalScaling:width vShift:{height, v31}];

        v15 = v37;
        v32 = v51;
      }

      goto LABEL_15;
    }

    v25 = [v11 memojiIdentifier];
    v26 = [v11 memojiIdentifier];
    v27 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self indexForRecordIdentifier:v26];

    if (v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = [objc_opt_class() bridgeMemojiForIdentifier:v25 resourceDirectory:v12];
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
        v40 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _poseOfType:a5 characterStyleName:v11];
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
          v44 = v47 = v25;

          v15 = [v42 imageForAvatar:v44 scope:v39 withSCNModifications:v43 usingService:usingService];
          v29 = v44;
          v25 = v47;
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

  v14 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _makeMemojiToyBoxSnapshotImageWithSize:width, height];
LABEL_5:
  v15 = v14;
  if (!v14)
  {
    goto LABEL_46;
  }

LABEL_6:
  v16 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _snapshotPathForCharacterStyleName:v11 resourceDirectory:v12 poseType:a5 size:width, height];
  if (([v15 writeToCPBitmapFile:v16 flags:1] & 1) == 0)
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

- (void)_makeSnapshotImageForStyleName:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6 completion:(id)a7
{
  height = a6.height;
  width = a6.width;
  v13 = a3;
  v14 = a4;
  v15 = a7;
  if ([v13 isRegularMemojiStyleName])
  {
    [(NTKCollieStyleEditOptionAvatarRecordCache *)self _ensureMemojiAvatarRecords];
  }

  if (([v13 isSharedMemojiStyleName] & 1) == 0 && !-[NTKCollieStyleEditOptionAvatarRecordCache isBridgeMemojiStyleName:](self, "isBridgeMemojiStyleName:", v13))
  {

    v14 = 0;
  }

  v16 = self;
  objc_sync_enter(v16);
  asyncImageQueue = v16->_asyncImageQueue;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_7CF8;
  v28[3] = &unk_2C948;
  v18 = v13;
  v29 = v18;
  v19 = v14;
  v30 = v19;
  v31 = a5;
  v32 = width;
  v33 = height;
  v20 = [(NSMutableArray *)asyncImageQueue ntk_indexOfFirstObjectPassingTest:v28];
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = [NTKCollieSnapshotInfo snapshotInfoWithStyleName:v18 resourceDirectory:v19 poseType:a5 size:width, height];
    [(NSMutableArray *)v16->_asyncImageQueue insertObject:v21 atIndex:0];
    v22 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(NSMutableArray *)v16->_asyncImageQueue count];
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
    v21 = [(NSMutableArray *)v16->_asyncImageQueue objectAtIndex:v20];
    if (v20)
    {
      [(NSMutableArray *)v16->_asyncImageQueue removeObjectAtIndex:v20];
      [(NSMutableArray *)v16->_asyncImageQueue insertObject:v21 atIndex:0];
    }
  }

  if (v15)
  {
    v24 = [v21 completions];
    v25 = objc_retainBlock(v15);
    [v24 addObject:v25];
  }

  objc_sync_exit(v16);
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    avatarRecordQueue = v16->_avatarRecordQueue;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_7D0C;
    v27[3] = &unk_2C970;
    v27[4] = v16;
    dispatch_async(avatarRecordQueue, v27);
  }
}

- (void)makeSnapshotImageForStyleName:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5 completion:(id)a6
{
  height = a5.height;
  width = a5.width;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_80C0;
  v12[3] = &unk_2C998;
  v13 = a6;
  v11 = v13;
  [(NTKCollieStyleEditOptionAvatarRecordCache *)self _makeSnapshotImageForStyleName:a3 resourceDirectory:a4 poseType:0 size:v12 completion:width, height];
}

- (void)makeNeutralImageForStyleName:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5 completion:(id)a6
{
  height = a5.height;
  width = a5.width;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_81A0;
  v12[3] = &unk_2C998;
  v13 = a6;
  v11 = v13;
  [(NTKCollieStyleEditOptionAvatarRecordCache *)self _makeSnapshotImageForStyleName:a3 resourceDirectory:a4 poseType:2 size:v12 completion:width, height];
}

- (void)makeSleepImageForStyleName:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5 completion:(id)a6
{
  height = a5.height;
  width = a5.width;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_8280;
  v12[3] = &unk_2C998;
  v13 = a6;
  v11 = v13;
  [(NTKCollieStyleEditOptionAvatarRecordCache *)self _makeSnapshotImageForStyleName:a3 resourceDirectory:a4 poseType:1 size:v12 completion:width, height];
}

- (void)_ensureAnimojiImagesIncludeTritium:(BOOL)a3
{
  v3 = a3;
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
  v18 = [objc_opt_class() _animojiIdentifiersCount];
  v19 = 3 * v18;
  if (!v3)
  {
    v19 = v18;
  }

  v39 = v19;
  if (v18)
  {
    v20 = v18;
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
      if (v3)
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

- (void)_ensureMemojiImagesIncludeTritium:(BOOL)a3
{
  v3 = a3;
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
  v12 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self _memojiIdentifiersCount];
  if (v3)
  {
    v13 = 3 * v12;
  }

  else
  {
    v13 = v12;
  }

  if (v12)
  {
    v14 = v12;
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
      if (v3)
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

  v31 = [v5 + 506 logObject];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%s done, time = %f (%lu/%lu)", &v33, 0x2Au);
  }
}

- (void)_ensureSharedMemojiImagesForResourceDirectory:(id)a3 includeTritium:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
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
  if ([objc_opt_class() hasSharedMemojiForResourceDirectory:v6])
  {
    v20 = objc_autoreleasePoolPush();
    v21 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self snapshotImageForStyleName:@"local-memoji" resourceDirectory:v6 size:v16, v18];
    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v24 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self makeSnapshotImageForStyleName:@"local-memoji" resourceDirectory:v6 size:v16, v18];
      v22 = 1;
    }

    objc_autoreleasePoolPop(v20);
    if (v4)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self sleepImageForStyleName:@"local-memoji" resourceDirectory:v6 size:v16, v18];
      if (!v26)
      {
        v27 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self makeSleepImageForStyleName:@"local-memoji" resourceDirectory:v6 size:v16, v18];
        ++v22;
      }

      objc_autoreleasePoolPop(v25);
      v28 = objc_autoreleasePoolPush();
      v29 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self neutralImageForStyleName:@"local-memoji" resourceDirectory:v6 size:v16, v18];
      if (!v29)
      {
        v30 = [(NTKCollieStyleEditOptionAvatarRecordCache *)self makeNeutralImageForStyleName:@"local-memoji" resourceDirectory:v6 size:v16, v18];
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

- (void)ensureSnapshotImagesWithResourceDirectory:(id)a3
{
  v6 = a3;
  if ((NTKIsDaemonOrFaceSnapshotService() & 1) == 0)
  {
    v4 = +[CLKDevice currentDevice];
    v5 = [v4 unlockedSinceBoot];

    if (v6)
    {
      if (v5)
      {
        [(NTKCollieStyleEditOptionAvatarRecordCache *)self pruneResourceDirectory:v6 pruneBridgeMemoji:0];
      }
    }
  }
}

@end
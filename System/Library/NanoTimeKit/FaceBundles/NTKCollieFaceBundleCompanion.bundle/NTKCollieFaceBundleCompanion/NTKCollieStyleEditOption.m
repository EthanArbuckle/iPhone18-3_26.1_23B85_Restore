@interface NTKCollieStyleEditOption
+ (BOOL)hasSnapshotImageForOption:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5;
+ (BOOL)saveBridgeMemojiCustomData:(id)a3 identifier:(id)a4 resourceDirectory:(id)a5 error:(id *)a6;
+ (NTKCollieStyleEditOption)optionWithAvatarRecordIdentifier:(id)a3 forDevice:(id)a4;
+ (NTKCollieStyleEditOption)optionWithStyleName:(id)a3 forDevice:(id)a4;
+ (id)_impactedIdentifierForOption:(id)a3 avatarStoreChangedInfo:(id)a4;
+ (id)_randomCharacterStyleForToyboxStyleName:(id)a3 resourceDirectory:(id)a4;
+ (id)avatarDataRepresentationForOption:(id)a3 resourceDirectory:(id)a4;
+ (id)avatarRecordCache;
+ (id)avatarSha1StringForOption:(id)a3 resourceDirectory:(id)a4;
+ (id)changedOptionForOption:(id)a3 avatarStoreChangedInfo:(id)a4 resourceDirectory:(id)a5;
+ (id)existingSnapshotImageForOption:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6 force:(BOOL)a7;
+ (id)memojiIdentifiers;
+ (id)memojiStyleNameAtIndex:(unint64_t)a3;
+ (id)neutralImageForOption:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5 forDevice:(id)a6 oldAvatar:(id)a7;
+ (id)optionAtIndex:(unint64_t)a3 resourceDirectory:(id)a4 forDevice:(id)a5;
+ (id)poseNamed:(id)a3;
+ (id)sleepImageForOption:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5 forDevice:(id)a6 oldAvatar:(id)a7;
+ (id)snapshotImageForOption:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5 forDevice:(id)a6 oldAvatar:(id)a7 force:(BOOL)a8;
+ (id)uniqueOptionForDevice:(id)a3 existingOptions:(id)a4;
+ (unint64_t)cloudSyncStatus;
+ (unint64_t)indexOfOption:(id)a3 resourceDirectory:(id)a4 forDevice:(id)a5;
+ (unint64_t)numberOfMemojiOptionsForDevice:(id)a3;
+ (unint64_t)numberOfOptionsWithResourceDirectory:(id)a3 forDevice:(id)a4;
+ (void)_setIgnoreInvalidate:(BOOL)a3;
+ (void)asyncMakeSnapshotImageForOption:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6 completion:(id)a7;
+ (void)avatarStoreDidChange:(id)a3;
+ (void)beginCacheWithResourceDirectory:(id)a3 forDevice:(id)a4;
+ (void)cloudSyncStatusInvalidatingIdentifiers:(id)a3;
+ (void)endCache;
+ (void)invalidateCache;
+ (void)loadAvatarForOption:(id)a3 resourceDirectory:(id)a4 oldAvatar:(id)a5 completion:(id)a6;
+ (void)pruneResourceDirectory:(id)a3 pruneBridgeMemoji:(BOOL)a4;
- (BOOL)isBridgeMemoji;
- (BOOL)isEqual:(id)a3;
- (BOOL)isImpactedByAvatarStoreChangedInfo:(id)a3;
- (BOOL)isRegularMemoji;
- (BOOL)isSharedMemoji;
- (BOOL)isToybox;
- (BOOL)isToyboxMemoji;
- (BOOL)isValidOption;
- (NTKCollieStyleEditOption)initWithCoder:(id)a3;
- (NTKCollieStyleEditOption)initWithDevice:(id)a3;
- (NTKCollieStyleEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4;
- (UIImage)snapshotImage;
- (id)JSONObjectRepresentation;
- (id)_toyBoxCharacterStyleNameWithResourceDirectory:(id)a3;
- (id)_toyboxResolvedPoseStyleName;
- (id)chosenToyBoxOptionWithResourceDirectory:(id)a3;
- (id)customDataWithResourceDirectory:(id)a3;
- (id)friendlyPose;
- (id)localizedName;
- (id)neutralPose;
- (id)nextRandomizedToyBoxOptionWithResourceDirectory:(id)a3;
- (void)_randomizeToyBoxWithResourceDirectory:(id)a3;
- (void)chooseToyBoxOption:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKCollieStyleEditOption

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_characterName isEqualToString:v4[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NTKCollieStyleEditOption)initWithDevice:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKCollieStyleEditOption;
  v3 = [(NTKCollieStyleEditOption *)&v6 initWithDevice:a3];
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(&v3->_characterName, @"mouse");
  }

  return v4;
}

- (NTKCollieStyleEditOption)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NTKCollieStyleEditOption;
  v5 = [(NTKCollieStyleEditOption *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"characterName"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"mouse";
    }

    objc_storeStrong(&v5->_characterName, v8);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKCollieStyleEditOption;
  v4 = a3;
  [(NTKCollieStyleEditOption *)&v6 encodeWithCoder:v4];
  if (self->_characterName)
  {
    characterName = self->_characterName;
  }

  else
  {
    characterName = @"mouse";
  }

  [v4 encodeObject:characterName forKey:{@"characterName", v6.receiver, v6.super_class}];
}

- (NTKCollieStyleEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4
{
  v7 = a3;
  v8 = [(NTKCollieStyleEditOption *)self initWithDevice:a4];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"object must be a string - invalid value: %@", v7];
    }

    objc_storeStrong(&v8->_characterName, a3);
  }

  return v8;
}

- (id)JSONObjectRepresentation
{
  if (self->_characterName)
  {
    return self->_characterName;
  }

  else
  {
    return @"mouse";
  }
}

+ (void)avatarStoreDidChange:(id)a3
{
  v4 = a3;
  v5 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "+[NTKCollieStyleEditOption avatarStoreDidChange:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s: received store change notification = %@", buf, 0x16u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_15618;
  v7[3] = &unk_2C740;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

+ (void)cloudSyncStatusInvalidatingIdentifiers:(id)a3
{
  v4 = a3;
  v5 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "+[NTKCollieStyleEditOption cloudSyncStatusInvalidatingIdentifiers:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s: cloudSyncStatus invaliding identifiers", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_15850;
  v7[3] = &unk_2C740;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

- (BOOL)isImpactedByAvatarStoreChangedInfo:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _impactedIdentifierForOption:self avatarStoreChangedInfo:v4];

  return v5 != 0;
}

+ (id)_impactedIdentifierForOption:(id)a3 avatarStoreChangedInfo:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKeyedSubscript:@"changedRecordIDs"];
  v7 = [v5 styleName];
  if ([v7 isToyboxMemojiStyleName])
  {
    v8 = v5[3];
  }

  else
  {
    v9 = [v7 isRegularMemojiStyleName];
    v8 = v7;
    if (!v9)
    {
LABEL_14:
      v14 = 0;
      goto LABEL_17;
    }
  }

  v10 = v8;
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  v12 = [v10 memojiIdentifier];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = *v20;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        if ([v12 isEqualToString:{v17, v19}])
        {
          v14 = v17;
          goto LABEL_16;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

LABEL_17:

  return v14;
}

+ (id)changedOptionForOption:(id)a3 avatarStoreChangedInfo:(id)a4 resourceDirectory:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 _impactedIdentifierForOption:v8 avatarStoreChangedInfo:a4];
  if (!v10)
  {
    v20 = 0;
    goto LABEL_23;
  }

  v11 = [v8 styleName];
  if (![(__CFString *)v11 isToyboxMemojiStyleName])
  {
    v19 = v11;
    if (![(__CFString *)v11 isRegularMemojiStyleName])
    {
      goto LABEL_19;
    }

    v21 = +[NTKCollieStyleEditOption avatarRecordCache];
    v22 = [v21 indexForRecordIdentifier:v10];

    v19 = v11;
    if (v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    v23 = +[NTKCollieStyleEditOption avatarRecordCache];
    v24 = [v23 _memojiIdentifiersCount];

    if (v24)
    {
      v13 = +[NTKCollieStyleEditOption avatarRecordCache];
      v19 = [v13 memojiStyleNameAtIndex:v24 - 1];
    }

    else
    {
      v19 = @"unicorn";
      v13 = v11;
    }

LABEL_18:

LABEL_19:
    if (([(__CFString *)v19 isEqualToString:v11]& 1) != 0)
    {
      v20 = v8;
    }

    else
    {
      v27 = [v8 device];
      v20 = [NTKCollieStyleEditOption optionWithStyleName:v19 forDevice:v27];
    }

    goto LABEL_22;
  }

  v12 = +[NTKCollieStyleEditOption avatarRecordCache];
  v13 = [v12 memojiIdentifiers];

  v14 = [v13 count];
  if (v14 < 2)
  {
    if (v14 == &dword_0 + 1)
    {
      v15 = +[NTKCollieStyleEditOption avatarRecordCache];
      v19 = [v15 memojiStyleNameAtIndex:0];
    }

    else
    {
      v19 = @"unicorn";
      v15 = v11;
    }

    goto LABEL_17;
  }

  v15 = v8[3];
  v16 = +[NTKCollieStyleEditOption avatarRecordCache];
  v17 = [v16 indexForRecordIdentifier:v10];

  v18 = v15;
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [a1 _randomCharacterStyleForToyboxStyleName:@"toybox-memoji" resourceDirectory:v9];
  }

  if ([v18 isEqualToString:v15])
  {

    v19 = v11;
LABEL_17:

    goto LABEL_18;
  }

  v25 = [v8 device];
  v20 = [NTKCollieStyleEditOption optionWithStyleName:@"toybox-memoji" forDevice:v25];

  v26 = v20[3];
  v20[3] = v18;

  v19 = v11;
LABEL_22:

LABEL_23:

  return v20;
}

+ (id)avatarRecordCache
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = qword_33290;
  if (!qword_33290)
  {
    v4 = objc_opt_new();
    v5 = qword_33290;
    qword_33290 = v4;

    v3 = qword_33290;
  }

  v6 = v3;
  objc_sync_exit(v2);

  return v6;
}

+ (void)_setIgnoreInvalidate:(BOOL)a3
{
  obj = a1;
  objc_sync_enter(obj);
  byte_33298 = a3;
  objc_sync_exit(obj);
}

+ (void)invalidateCache
{
  obj = a1;
  objc_sync_enter(obj);
  if ((byte_33298 & 1) == 0)
  {
    v2 = qword_33290;
    qword_33290 = 0;
  }

  objc_sync_exit(obj);
}

+ (void)beginCacheWithResourceDirectory:(id)a3 forDevice:(id)a4
{
  v5 = a3;
  [a1 invalidateCache];
  [a1 _setIgnoreInvalidate:1];
  v6 = +[NTKCollieStyleEditOption avatarRecordCache];
  [v6 ensureSnapshotImagesWithResourceDirectory:v5];
}

+ (void)endCache
{
  [a1 _setIgnoreInvalidate:0];

  [a1 invalidateCache];
}

+ (unint64_t)cloudSyncStatus
{
  v2 = +[NTKCollieStyleEditOption avatarRecordCache];
  v3 = [v2 cloudSyncStatus];

  return v3;
}

+ (NTKCollieStyleEditOption)optionWithStyleName:(id)a3 forDevice:(id)a4
{
  v4 = a3;
  v5 = objc_alloc_init(NTKCollieStyleEditOption);
  characterName = v5->_characterName;
  v5->_characterName = v4;

  return v5;
}

+ (id)uniqueOptionForDevice:(id)a3 existingOptions:(id)a4
{
  v6 = a3;
  v7 = [a4 na_map:&stru_2D150];
  v8 = +[NTKCollieStyleEditOptionAvatarRecordCache animojiIdentifiers];
  v9 = [v8 count];
  v10 = @"unicorn";
  v11 = [v8 indexOfObject:v10];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  v13 = v9;
  while (1)
  {
    v14 = [v8 objectAtIndexedSubscript:v12 % v9];
    if (![v7 containsObject:v14])
    {
      break;
    }

    ++v12;
    if (!--v13)
    {
      goto LABEL_10;
    }
  }

  if (!v14)
  {
LABEL_10:
    v14 = v10;
  }

  v15 = [a1 optionWithStyleName:v14 forDevice:v6];

  return v15;
}

+ (unint64_t)numberOfMemojiOptionsForDevice:(id)a3
{
  v3 = +[NTKCollieStyleEditOption avatarRecordCache];
  v4 = [v3 _memojiIdentifiersCount];

  return v4;
}

+ (id)memojiIdentifiers
{
  v2 = +[NTKCollieStyleEditOption avatarRecordCache];
  v3 = [v2 memojiIdentifiers];

  return v3;
}

+ (id)memojiStyleNameAtIndex:(unint64_t)a3
{
  v4 = +[NTKCollieStyleEditOption avatarRecordCache];
  v5 = [v4 memojiStyleNameAtIndex:a3];

  return v5;
}

+ (NTKCollieStyleEditOption)optionWithAvatarRecordIdentifier:(id)a3 forDevice:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NTKCollieStyleEditOption avatarRecordCache];
  v8 = [v7 indexForRecordIdentifier:v6];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = +[NTKCollieStyleEditOption avatarRecordCache];
    v11 = [v10 memojiStyleNameAtIndex:v8];

    v9 = [objc_opt_class() optionWithStyleName:v11 forDevice:v5];
  }

  return v9;
}

- (BOOL)isToybox
{
  v2 = [(NTKCollieStyleEditOption *)self styleName];
  v3 = [v2 isToyboxAnyStyleName];

  return v3;
}

- (BOOL)isToyboxMemoji
{
  v2 = [(NTKCollieStyleEditOption *)self styleName];
  v3 = [v2 isToyboxMemojiStyleName];

  return v3;
}

- (BOOL)isRegularMemoji
{
  v2 = [(NTKCollieStyleEditOption *)self styleName];
  v3 = [v2 isRegularMemojiStyleName];

  return v3;
}

- (BOOL)isSharedMemoji
{
  v2 = [(NTKCollieStyleEditOption *)self styleName];
  v3 = [v2 isSharedMemojiStyleName];

  return v3;
}

- (BOOL)isValidOption
{
  v2 = [(NTKCollieStyleEditOption *)self styleName];
  v3 = [v2 isValidStyleName];

  return v3;
}

+ (unint64_t)numberOfOptionsWithResourceDirectory:(id)a3 forDevice:(id)a4
{
  v4 = a3;
  v5 = +[NTKCollieStyleEditOption avatarRecordCache];
  v6 = [v5 styleNamesForResourceDirectory:v4];

  v7 = [v6 count];
  return v7;
}

+ (id)optionAtIndex:(unint64_t)a3 resourceDirectory:(id)a4 forDevice:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = +[NTKCollieStyleEditOption avatarRecordCache];
  v10 = [v9 styleNamesForResourceDirectory:v8];

  if ([v10 count] <= a3)
  {
    v12 = 0;
  }

  else
  {
    v11 = [v10 objectAtIndexedSubscript:a3];
    v12 = [objc_opt_class() optionWithStyleName:v11 forDevice:v7];
  }

  return v12;
}

+ (unint64_t)indexOfOption:(id)a3 resourceDirectory:(id)a4 forDevice:(id)a5
{
  v6 = a4;
  v7 = [a3 styleName];
  if (v7)
  {
    v8 = +[NTKCollieStyleEditOption avatarRecordCache];
    v9 = [v8 styleNamesForResourceDirectory:v6];

    v10 = [v9 indexOfObject:v7];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (id)localizedName
{
  v2 = [(NTKCollieStyleEditOption *)self styleName];
  if ([v2 isToyboxAnimojiStyleName])
  {
    v3 = @"EDIT_OPTION_LABEL_COLLIE_STYLE_TOYBOX_ANIMOJI";
LABEL_7:
    v4 = [NTKCollieFaceBundle localizedStringForKey:v3 comment:&stru_2D420];
    goto LABEL_8;
  }

  if ([v2 isToyboxMemojiStyleName])
  {
    v3 = @"EDIT_OPTION_LABEL_COLLIE_STYLE_TOYBOX_MEMOJI";
    goto LABEL_7;
  }

  if ([v2 isSharedMemojiStyleName])
  {
    v3 = @"EDIT_OPTION_LABEL_COLLIE_STYLE_SHARED_MEMOJI";
    goto LABEL_7;
  }

  if ([v2 isRegularMemojiStyleName])
  {
    v6 = [v2 memojiIdentifier];
    v7 = +[NTKCollieStyleEditOption avatarRecordCache];
    v8 = [v7 indexForRecordIdentifier:v6];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = +[NTKCollieStyleEditOption avatarRecordCache];
      v8 = [v9 _memojiIdentifiersCount];
    }

    v10 = [NTKCollieFaceBundle localizedStringForKey:@"EDIT_OPTION_LABEL_COLLIE_STYLE_MEMOJI" comment:&stru_2D420];
    v11 = [NSNumber numberWithUnsignedInteger:v8 + 1];
    v4 = [NSString stringWithFormat:v10, v11];
  }

  else
  {
    v12 = [v2 uppercaseString];
    v6 = [NSString stringWithFormat:@"EDIT_OPTION_LABEL_COLLIE_STYLE_%@", v12];

    v4 = [NTKCollieFaceBundle localizedStringForKey:v6 comment:&stru_2D420];
  }

LABEL_8:

  return v4;
}

- (UIImage)snapshotImage
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshotImage);

  return WeakRetained;
}

+ (id)poseNamed:(id)a3
{
  v3 = a3;
  v4 = NTKCollieFaceNSBundle();
  v5 = [v4 pathForResource:v3 ofType:@"json" inDirectory:0];

  v13 = 0;
  v6 = [NSData dataWithContentsOfFile:v5 options:1 error:&v13];
  v7 = v13;
  v12 = v7;
  v8 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:&v12];
  v9 = v12;

  v10 = [[AVTAvatarPose alloc] initWithDictionaryRepresentation:v8];

  return v10;
}

+ (id)_randomCharacterStyleForToyboxStyleName:(id)a3 resourceDirectory:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([(__CFString *)v5 isToyboxAnimojiStyleName])
  {
    v7 = +[NTKCollieStyleEditOptionAvatarRecordCache animojiIdentifiers];
    v8 = [(__CFString *)v7 objectAtIndexedSubscript:arc4random() % [(__CFString *)v7 count]];
  }

  else
  {
    if (![(__CFString *)v5 isToyboxMemojiStyleName])
    {
      v9 = v5;
      goto LABEL_14;
    }

    v10 = +[NTKCollieStyleEditOption avatarRecordCache];
    v11 = [v10 _memojiIdentifiersCount];

    v12 = [NTKCollieStyleEditOptionAvatarRecordCache hasSharedMemojiForResourceDirectory:v6];
    v13 = &v11[v12];
    if (!v13)
    {
      v9 = @"mouse";
      goto LABEL_14;
    }

    v14 = v12;
    v15 = arc4random() % v13;
    if (v15 == v13 - 1)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    if (v16 == 1)
    {
      v9 = @"local-memoji";
      goto LABEL_4;
    }

    v7 = +[NTKCollieStyleEditOption avatarRecordCache];
    v8 = [(__CFString *)v7 memojiStyleNameAtIndex:v15];
  }

  v9 = v8;

  v5 = v7;
LABEL_4:

  v5 = v9;
LABEL_14:
  v17 = v9;

  return v9;
}

- (void)_randomizeToyBoxWithResourceDirectory:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(NTKCollieStyleEditOption *)self styleName];
  v7 = [v5 _randomCharacterStyleForToyboxStyleName:v6 resourceDirectory:v4];

  toyBoxCharacterStyleName = self->_toyBoxCharacterStyleName;
  self->_toyBoxCharacterStyleName = v7;

  objc_storeWeak(&self->_snapshotImage, 0);
}

- (id)_toyBoxCharacterStyleNameWithResourceDirectory:(id)a3
{
  toyBoxCharacterStyleName = self->_toyBoxCharacterStyleName;
  if (!toyBoxCharacterStyleName)
  {
    [(NTKCollieStyleEditOption *)self _randomizeToyBoxWithResourceDirectory:a3];
    toyBoxCharacterStyleName = self->_toyBoxCharacterStyleName;
  }

  return toyBoxCharacterStyleName;
}

- (id)chosenToyBoxOptionWithResourceDirectory:(id)a3
{
  v4 = a3;
  if ([(NTKCollieStyleEditOption *)self isToybox])
  {
    v5 = [(NTKCollieStyleEditOption *)self _toyBoxCharacterStyleNameWithResourceDirectory:v4];
    v6 = objc_opt_class();
    v7 = [(NTKCollieStyleEditOption *)self device];
    v8 = [v6 optionWithStyleName:v5 forDevice:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)nextRandomizedToyBoxOptionWithResourceDirectory:(id)a3
{
  v4 = a3;
  if ([(NTKCollieStyleEditOption *)self isToybox])
  {
    v5 = objc_opt_class();
    v6 = [(NTKCollieStyleEditOption *)self styleName];
    v7 = [v5 _randomCharacterStyleForToyboxStyleName:v6 resourceDirectory:v4];

    v8 = objc_opt_class();
    v9 = [(NTKCollieStyleEditOption *)self device];
    v10 = [v8 optionWithStyleName:v7 forDevice:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)chooseToyBoxOption:(id)a3
{
  v4 = a3;
  v6 = [(NTKCollieStyleEditOption *)self styleName];
  v5 = [v4 styleName];

  if ([v6 isToyboxAnimojiStyleName] && (objc_msgSend(v5, "isRegularAnimojiStyleName") & 1) != 0 || objc_msgSend(v6, "isToyboxMemojiStyleName") && ((objc_msgSend(v5, "isRegularMemojiStyleName") & 1) != 0 || objc_msgSend(v5, "isSharedMemojiStyleName")))
  {
    objc_storeStrong(&self->_toyBoxCharacterStyleName, v5);
  }
}

+ (void)loadAvatarForOption:(id)a3 resourceDirectory:(id)a4 oldAvatar:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (v9)
  {
    v12 = a5;
    v13 = [v9 styleName];
    if ([v9 isToybox])
    {
      v14 = [v9 _toyBoxCharacterStyleNameWithResourceDirectory:v10];

      v13 = v14;
    }

    v15 = +[NTKCollieStyleEditOption avatarRecordCache];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_17084;
    v16[3] = &unk_2D178;
    v17 = v11;
    [v15 loadAvatarForCharacterStyleName:v13 resourceDirectory:v10 oldAvatar:v12 completion:v16];
  }
}

+ (id)existingSnapshotImageForOption:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6 force:(BOOL)a7
{
  height = a6.height;
  width = a6.width;
  v12 = a3;
  v13 = a4;
  if (v12)
  {
    if (a5)
    {
      v14 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(v12 + 1);
      v14 = WeakRetained;
      if (WeakRetained && !a7)
      {
        v18 = WeakRetained;
LABEL_7:

        goto LABEL_9;
      }
    }

    v15 = [v12 styleName];
    v16 = +[NTKCollieStyleEditOption avatarRecordCache];
    v17 = [v16 snapshotImageForStyleName:v15 resourceDirectory:v13 poseType:a5 size:{width, height}];

    if (!a5)
    {
      objc_storeWeak(v12 + 1, v17);
    }

    v18 = v17;

    goto LABEL_7;
  }

  v18 = 0;
LABEL_9:

  return v18;
}

+ (id)snapshotImageForOption:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5 forDevice:(id)a6 oldAvatar:(id)a7 force:(BOOL)a8
{
  height = a5.height;
  width = a5.width;
  v12 = a3;
  v13 = a4;
  if (v12)
  {
    WeakRetained = objc_loadWeakRetained(v12 + 1);
    v15 = WeakRetained;
    if (!WeakRetained || a8)
    {
      v17 = [v12 styleName];
      dispatch_assert_queue_V2(&_dispatch_main_q);
      v18 = +[NTKCollieStyleEditOption avatarRecordCache];
      v19 = [v18 snapshotImageForStyleName:v17 resourceDirectory:v13 size:{width, height}];

      if (!v19)
      {
        v20 = +[NTKCollieStyleEditOption avatarRecordCache];
        v19 = [v20 makeSnapshotImageForStyleName:v17 resourceDirectory:v13 size:{width, height}];
      }

      objc_storeWeak(v12 + 1, v19);
      v16 = v19;
    }

    else
    {
      v16 = WeakRetained;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (void)asyncMakeSnapshotImageForOption:(id)a3 resourceDirectory:(id)a4 poseType:(unint64_t)a5 size:(CGSize)a6 completion:(id)a7
{
  height = a6.height;
  width = a6.width;
  v12 = a3;
  v13 = a7;
  v14 = a4;
  v15 = [v12 styleName];
  v16 = +[NTKCollieStyleEditOption avatarRecordCache];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_17450;
  v20[3] = &unk_2D1A0;
  v21 = v15;
  v22 = v12;
  v23 = v13;
  v24 = a5;
  v17 = v13;
  v18 = v12;
  v19 = v15;
  [v16 scheduleSnapshotImageForStyleName:v19 resourceDirectory:v14 poseType:a5 size:v20 completion:{width, height}];
}

+ (id)neutralImageForOption:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5 forDevice:(id)a6 oldAvatar:(id)a7
{
  height = a5.height;
  width = a5.width;
  v10 = a4;
  if (a3)
  {
    v11 = [a3 styleName];
    dispatch_assert_queue_V2(&_dispatch_main_q);
    v12 = +[NTKCollieStyleEditOption avatarRecordCache];
    v13 = [v12 neutralImageForStyleName:v11 resourceDirectory:v10 size:{width, height}];

    if (!v13)
    {
      v14 = +[NTKCollieStyleEditOption avatarRecordCache];
      v13 = [v14 makeNeutralImageForStyleName:v11 resourceDirectory:v10 size:{width, height}];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)sleepImageForOption:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5 forDevice:(id)a6 oldAvatar:(id)a7
{
  height = a5.height;
  width = a5.width;
  v10 = a4;
  if (a3)
  {
    v11 = [a3 styleName];
    dispatch_assert_queue_V2(&_dispatch_main_q);
    v12 = +[NTKCollieStyleEditOption avatarRecordCache];
    v13 = [v12 sleepImageForStyleName:v11 resourceDirectory:v10 size:{width, height}];

    if (!v13)
    {
      v14 = +[NTKCollieStyleEditOption avatarRecordCache];
      v13 = [v14 makeSleepImageForStyleName:v11 resourceDirectory:v10 size:{width, height}];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)avatarDataRepresentationForOption:(id)a3 resourceDirectory:(id)a4
{
  v5 = a4;
  v6 = [a3 styleName];
  if ([v6 isSharedMemojiStyleName])
  {
    v7 = [NTKCollieStyleEditOptionAvatarRecordCache sharedMemojiDataRepresentationForResourceDirectory:v5];
  }

  else if ([v6 isRegularMemojiStyleName])
  {
    v8 = +[NTKCollieStyleEditOption avatarRecordCache];
    v7 = [v8 memojiDataRepresentationForStyleName:v6 resourceDirectory:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)avatarSha1StringForOption:(id)a3 resourceDirectory:(id)a4
{
  v5 = a4;
  v6 = [a3 styleName];
  if (([v6 isSharedMemojiStyleName] & 1) != 0 || (objc_msgSend(v6, "isToyboxMemojiStyleName") & 1) != 0 || objc_msgSend(v6, "isRegularMemojiStyleName"))
  {
    v7 = +[NTKCollieStyleEditOption avatarRecordCache];
    v8 = [v7 memojiSha1StringForStyleName:v6 resourceDirectory:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)hasSnapshotImageForOption:(id)a3 resourceDirectory:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a4;
  v9 = [a3 styleName];
  v10 = +[NTKCollieStyleEditOption avatarRecordCache];
  v11 = [v10 hasSnapshotImageForStyleName:v9 resourceDirectory:v8 size:{width, height}];

  return v11;
}

- (BOOL)isBridgeMemoji
{
  if (![(NTKCollieStyleEditOption *)self isRegularMemoji])
  {
    return 0;
  }

  v3 = [(NTKCollieStyleEditOption *)self styleName];
  v4 = [v3 memojiIdentifier];

  v5 = +[NTKCollieStyleEditOption avatarRecordCache];
  v6 = [v5 hasAvatarStoreMemojiForIdentifier:v4];

  v7 = v6 ^ 1;
  return v7;
}

+ (BOOL)saveBridgeMemojiCustomData:(id)a3 identifier:(id)a4 resourceDirectory:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a4;
  v11 = [NTKCollieCustomData dataRepresentationFromCustomData:a3];
  LOBYTE(a6) = [NTKCollieStyleEditOptionAvatarRecordCache saveBridgeMemojiDataRepresentation:v11 identifier:v10 resourceDirectory:v9 error:a6];

  return a6;
}

- (id)customDataWithResourceDirectory:(id)a3
{
  v4 = a3;
  if ([(NTKCollieStyleEditOption *)self isRegularMemoji])
  {
    v5 = [(NTKCollieStyleEditOption *)self styleName];
    v6 = [v5 memojiIdentifier];

    if (v6 && ([objc_opt_class() avatarDataRepresentationForOption:self resourceDirectory:v4], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      v9 = [NTKCollieCustomData customDataForDataRepresentation:v7];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)pruneResourceDirectory:(id)a3 pruneBridgeMemoji:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[NTKCollieStyleEditOption avatarRecordCache];
  [v6 pruneResourceDirectory:v5 pruneBridgeMemoji:v4];
}

- (id)_toyboxResolvedPoseStyleName
{
  v3 = [(NTKCollieStyleEditOption *)self styleName];
  if ([v3 isToyboxAnimojiStyleName])
  {
    v4 = [(NTKCollieStyleEditOption *)self _toyBoxCharacterStyleNameWithResourceDirectory:0];
  }

  else
  {
    if (![v3 isAnyMemojiStyleName])
    {
      goto LABEL_6;
    }

    v4 = @"memoji-";
  }

  v5 = v4;

  v3 = v5;
LABEL_6:

  return v3;
}

- (id)neutralPose
{
  v2 = [(NTKCollieStyleEditOption *)self _toyboxResolvedPoseStyleName];
  v3 = [objc_opt_class() neutralPoseForCharacterStyleName:v2];
  if (!v3)
  {
    v3 = +[AVTAvatarPose neutralPose];
  }

  return v3;
}

- (id)friendlyPose
{
  v2 = [(NTKCollieStyleEditOption *)self _toyboxResolvedPoseStyleName];
  v3 = [objc_opt_class() friendlyPoseForCharacterStyleName:v2];
  if (!v3)
  {
    v3 = +[AVTAvatarPose friendlyPose];
  }

  return v3;
}

@end
@interface NTKCollieStyleEditOption
+ (BOOL)hasSnapshotImageForOption:(id)option resourceDirectory:(id)directory size:(CGSize)size;
+ (BOOL)saveBridgeMemojiCustomData:(id)data identifier:(id)identifier resourceDirectory:(id)directory error:(id *)error;
+ (NTKCollieStyleEditOption)optionWithAvatarRecordIdentifier:(id)identifier forDevice:(id)device;
+ (NTKCollieStyleEditOption)optionWithStyleName:(id)name forDevice:(id)device;
+ (id)_impactedIdentifierForOption:(id)option avatarStoreChangedInfo:(id)info;
+ (id)_randomCharacterStyleForToyboxStyleName:(id)name resourceDirectory:(id)directory;
+ (id)avatarDataRepresentationForOption:(id)option resourceDirectory:(id)directory;
+ (id)avatarRecordCache;
+ (id)avatarSha1StringForOption:(id)option resourceDirectory:(id)directory;
+ (id)changedOptionForOption:(id)option avatarStoreChangedInfo:(id)info resourceDirectory:(id)directory;
+ (id)existingSnapshotImageForOption:(id)option resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size force:(BOOL)force;
+ (id)memojiIdentifiers;
+ (id)memojiStyleNameAtIndex:(unint64_t)index;
+ (id)neutralImageForOption:(id)option resourceDirectory:(id)directory size:(CGSize)size forDevice:(id)device oldAvatar:(id)avatar;
+ (id)optionAtIndex:(unint64_t)index resourceDirectory:(id)directory forDevice:(id)device;
+ (id)poseNamed:(id)named;
+ (id)sleepImageForOption:(id)option resourceDirectory:(id)directory size:(CGSize)size forDevice:(id)device oldAvatar:(id)avatar;
+ (id)snapshotImageForOption:(id)option resourceDirectory:(id)directory size:(CGSize)size forDevice:(id)device oldAvatar:(id)avatar force:(BOOL)force;
+ (id)uniqueOptionForDevice:(id)device existingOptions:(id)options;
+ (unint64_t)cloudSyncStatus;
+ (unint64_t)indexOfOption:(id)option resourceDirectory:(id)directory forDevice:(id)device;
+ (unint64_t)numberOfMemojiOptionsForDevice:(id)device;
+ (unint64_t)numberOfOptionsWithResourceDirectory:(id)directory forDevice:(id)device;
+ (void)_setIgnoreInvalidate:(BOOL)invalidate;
+ (void)asyncMakeSnapshotImageForOption:(id)option resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size completion:(id)completion;
+ (void)avatarStoreDidChange:(id)change;
+ (void)beginCacheWithResourceDirectory:(id)directory forDevice:(id)device;
+ (void)cloudSyncStatusInvalidatingIdentifiers:(id)identifiers;
+ (void)endCache;
+ (void)invalidateCache;
+ (void)loadAvatarForOption:(id)option resourceDirectory:(id)directory oldAvatar:(id)avatar completion:(id)completion;
+ (void)pruneResourceDirectory:(id)directory pruneBridgeMemoji:(BOOL)memoji;
- (BOOL)isBridgeMemoji;
- (BOOL)isEqual:(id)equal;
- (BOOL)isImpactedByAvatarStoreChangedInfo:(id)info;
- (BOOL)isRegularMemoji;
- (BOOL)isSharedMemoji;
- (BOOL)isToybox;
- (BOOL)isToyboxMemoji;
- (BOOL)isValidOption;
- (NTKCollieStyleEditOption)initWithCoder:(id)coder;
- (NTKCollieStyleEditOption)initWithDevice:(id)device;
- (NTKCollieStyleEditOption)initWithJSONObjectRepresentation:(id)representation forDevice:(id)device;
- (UIImage)snapshotImage;
- (id)JSONObjectRepresentation;
- (id)_toyBoxCharacterStyleNameWithResourceDirectory:(id)directory;
- (id)_toyboxResolvedPoseStyleName;
- (id)chosenToyBoxOptionWithResourceDirectory:(id)directory;
- (id)customDataWithResourceDirectory:(id)directory;
- (id)friendlyPose;
- (id)localizedName;
- (id)neutralPose;
- (id)nextRandomizedToyBoxOptionWithResourceDirectory:(id)directory;
- (void)_randomizeToyBoxWithResourceDirectory:(id)directory;
- (void)chooseToyBoxOption:(id)option;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKCollieStyleEditOption

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_characterName isEqualToString:equalCopy[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NTKCollieStyleEditOption)initWithDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = NTKCollieStyleEditOption;
  v3 = [(NTKCollieStyleEditOption *)&v6 initWithDevice:device];
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(&v3->_characterName, @"mouse");
  }

  return v4;
}

- (NTKCollieStyleEditOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = NTKCollieStyleEditOption;
  v5 = [(NTKCollieStyleEditOption *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"characterName"];
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

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = NTKCollieStyleEditOption;
  coderCopy = coder;
  [(NTKCollieStyleEditOption *)&v6 encodeWithCoder:coderCopy];
  if (self->_characterName)
  {
    characterName = self->_characterName;
  }

  else
  {
    characterName = @"mouse";
  }

  [coderCopy encodeObject:characterName forKey:{@"characterName", v6.receiver, v6.super_class}];
}

- (NTKCollieStyleEditOption)initWithJSONObjectRepresentation:(id)representation forDevice:(id)device
{
  representationCopy = representation;
  v8 = [(NTKCollieStyleEditOption *)self initWithDevice:device];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"object must be a string - invalid value: %@", representationCopy];
    }

    objc_storeStrong(&v8->_characterName, representation);
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

+ (void)avatarStoreDidChange:(id)change
{
  changeCopy = change;
  v5 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "+[NTKCollieStyleEditOption avatarStoreDidChange:]";
    v12 = 2112;
    v13 = changeCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s: received store change notification = %@", buf, 0x16u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_15618;
  v7[3] = &unk_2C740;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

+ (void)cloudSyncStatusInvalidatingIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
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
  v8 = identifiersCopy;
  selfCopy = self;
  v6 = identifiersCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

- (BOOL)isImpactedByAvatarStoreChangedInfo:(id)info
{
  infoCopy = info;
  v5 = [objc_opt_class() _impactedIdentifierForOption:self avatarStoreChangedInfo:infoCopy];

  return v5 != 0;
}

+ (id)_impactedIdentifierForOption:(id)option avatarStoreChangedInfo:(id)info
{
  optionCopy = option;
  v6 = [info objectForKeyedSubscript:@"changedRecordIDs"];
  styleName = [optionCopy styleName];
  if ([styleName isToyboxMemojiStyleName])
  {
    v8 = optionCopy[3];
  }

  else
  {
    isRegularMemojiStyleName = [styleName isRegularMemojiStyleName];
    v8 = styleName;
    if (!isRegularMemojiStyleName)
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
  memojiIdentifier = [v10 memojiIdentifier];
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
        if ([memojiIdentifier isEqualToString:{v17, v19}])
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

+ (id)changedOptionForOption:(id)option avatarStoreChangedInfo:(id)info resourceDirectory:(id)directory
{
  optionCopy = option;
  directoryCopy = directory;
  v10 = [self _impactedIdentifierForOption:optionCopy avatarStoreChangedInfo:info];
  if (!v10)
  {
    v20 = 0;
    goto LABEL_23;
  }

  styleName = [optionCopy styleName];
  if (![(__CFString *)styleName isToyboxMemojiStyleName])
  {
    v19 = styleName;
    if (![(__CFString *)styleName isRegularMemojiStyleName])
    {
      goto LABEL_19;
    }

    v21 = +[NTKCollieStyleEditOption avatarRecordCache];
    v22 = [v21 indexForRecordIdentifier:v10];

    v19 = styleName;
    if (v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    v23 = +[NTKCollieStyleEditOption avatarRecordCache];
    _memojiIdentifiersCount = [v23 _memojiIdentifiersCount];

    if (_memojiIdentifiersCount)
    {
      memojiIdentifiers = +[NTKCollieStyleEditOption avatarRecordCache];
      v19 = [memojiIdentifiers memojiStyleNameAtIndex:_memojiIdentifiersCount - 1];
    }

    else
    {
      v19 = @"unicorn";
      memojiIdentifiers = styleName;
    }

LABEL_18:

LABEL_19:
    if (([(__CFString *)v19 isEqualToString:styleName]& 1) != 0)
    {
      v20 = optionCopy;
    }

    else
    {
      device = [optionCopy device];
      v20 = [NTKCollieStyleEditOption optionWithStyleName:v19 forDevice:device];
    }

    goto LABEL_22;
  }

  v12 = +[NTKCollieStyleEditOption avatarRecordCache];
  memojiIdentifiers = [v12 memojiIdentifiers];

  v14 = [memojiIdentifiers count];
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
      v15 = styleName;
    }

    goto LABEL_17;
  }

  v15 = optionCopy[3];
  v16 = +[NTKCollieStyleEditOption avatarRecordCache];
  v17 = [v16 indexForRecordIdentifier:v10];

  v18 = v15;
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [self _randomCharacterStyleForToyboxStyleName:@"toybox-memoji" resourceDirectory:directoryCopy];
  }

  if ([v18 isEqualToString:v15])
  {

    v19 = styleName;
LABEL_17:

    goto LABEL_18;
  }

  device2 = [optionCopy device];
  v20 = [NTKCollieStyleEditOption optionWithStyleName:@"toybox-memoji" forDevice:device2];

  v26 = v20[3];
  v20[3] = v18;

  v19 = styleName;
LABEL_22:

LABEL_23:

  return v20;
}

+ (id)avatarRecordCache
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = qword_33290;
  if (!qword_33290)
  {
    v4 = objc_opt_new();
    v5 = qword_33290;
    qword_33290 = v4;

    v3 = qword_33290;
  }

  v6 = v3;
  objc_sync_exit(selfCopy);

  return v6;
}

+ (void)_setIgnoreInvalidate:(BOOL)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  byte_33298 = invalidate;
  objc_sync_exit(obj);
}

+ (void)invalidateCache
{
  obj = self;
  objc_sync_enter(obj);
  if ((byte_33298 & 1) == 0)
  {
    v2 = qword_33290;
    qword_33290 = 0;
  }

  objc_sync_exit(obj);
}

+ (void)beginCacheWithResourceDirectory:(id)directory forDevice:(id)device
{
  directoryCopy = directory;
  [self invalidateCache];
  [self _setIgnoreInvalidate:1];
  v6 = +[NTKCollieStyleEditOption avatarRecordCache];
  [v6 ensureSnapshotImagesWithResourceDirectory:directoryCopy];
}

+ (void)endCache
{
  [self _setIgnoreInvalidate:0];

  [self invalidateCache];
}

+ (unint64_t)cloudSyncStatus
{
  v2 = +[NTKCollieStyleEditOption avatarRecordCache];
  cloudSyncStatus = [v2 cloudSyncStatus];

  return cloudSyncStatus;
}

+ (NTKCollieStyleEditOption)optionWithStyleName:(id)name forDevice:(id)device
{
  nameCopy = name;
  v5 = objc_alloc_init(NTKCollieStyleEditOption);
  characterName = v5->_characterName;
  v5->_characterName = nameCopy;

  return v5;
}

+ (id)uniqueOptionForDevice:(id)device existingOptions:(id)options
{
  deviceCopy = device;
  v7 = [options na_map:&stru_2D150];
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

  v15 = [self optionWithStyleName:v14 forDevice:deviceCopy];

  return v15;
}

+ (unint64_t)numberOfMemojiOptionsForDevice:(id)device
{
  v3 = +[NTKCollieStyleEditOption avatarRecordCache];
  _memojiIdentifiersCount = [v3 _memojiIdentifiersCount];

  return _memojiIdentifiersCount;
}

+ (id)memojiIdentifiers
{
  v2 = +[NTKCollieStyleEditOption avatarRecordCache];
  memojiIdentifiers = [v2 memojiIdentifiers];

  return memojiIdentifiers;
}

+ (id)memojiStyleNameAtIndex:(unint64_t)index
{
  v4 = +[NTKCollieStyleEditOption avatarRecordCache];
  v5 = [v4 memojiStyleNameAtIndex:index];

  return v5;
}

+ (NTKCollieStyleEditOption)optionWithAvatarRecordIdentifier:(id)identifier forDevice:(id)device
{
  deviceCopy = device;
  identifierCopy = identifier;
  v7 = +[NTKCollieStyleEditOption avatarRecordCache];
  v8 = [v7 indexForRecordIdentifier:identifierCopy];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = +[NTKCollieStyleEditOption avatarRecordCache];
    v11 = [v10 memojiStyleNameAtIndex:v8];

    v9 = [objc_opt_class() optionWithStyleName:v11 forDevice:deviceCopy];
  }

  return v9;
}

- (BOOL)isToybox
{
  styleName = [(NTKCollieStyleEditOption *)self styleName];
  isToyboxAnyStyleName = [styleName isToyboxAnyStyleName];

  return isToyboxAnyStyleName;
}

- (BOOL)isToyboxMemoji
{
  styleName = [(NTKCollieStyleEditOption *)self styleName];
  isToyboxMemojiStyleName = [styleName isToyboxMemojiStyleName];

  return isToyboxMemojiStyleName;
}

- (BOOL)isRegularMemoji
{
  styleName = [(NTKCollieStyleEditOption *)self styleName];
  isRegularMemojiStyleName = [styleName isRegularMemojiStyleName];

  return isRegularMemojiStyleName;
}

- (BOOL)isSharedMemoji
{
  styleName = [(NTKCollieStyleEditOption *)self styleName];
  isSharedMemojiStyleName = [styleName isSharedMemojiStyleName];

  return isSharedMemojiStyleName;
}

- (BOOL)isValidOption
{
  styleName = [(NTKCollieStyleEditOption *)self styleName];
  isValidStyleName = [styleName isValidStyleName];

  return isValidStyleName;
}

+ (unint64_t)numberOfOptionsWithResourceDirectory:(id)directory forDevice:(id)device
{
  directoryCopy = directory;
  v5 = +[NTKCollieStyleEditOption avatarRecordCache];
  v6 = [v5 styleNamesForResourceDirectory:directoryCopy];

  v7 = [v6 count];
  return v7;
}

+ (id)optionAtIndex:(unint64_t)index resourceDirectory:(id)directory forDevice:(id)device
{
  deviceCopy = device;
  directoryCopy = directory;
  v9 = +[NTKCollieStyleEditOption avatarRecordCache];
  v10 = [v9 styleNamesForResourceDirectory:directoryCopy];

  if ([v10 count] <= index)
  {
    v12 = 0;
  }

  else
  {
    v11 = [v10 objectAtIndexedSubscript:index];
    v12 = [objc_opt_class() optionWithStyleName:v11 forDevice:deviceCopy];
  }

  return v12;
}

+ (unint64_t)indexOfOption:(id)option resourceDirectory:(id)directory forDevice:(id)device
{
  directoryCopy = directory;
  styleName = [option styleName];
  if (styleName)
  {
    v8 = +[NTKCollieStyleEditOption avatarRecordCache];
    v9 = [v8 styleNamesForResourceDirectory:directoryCopy];

    v10 = [v9 indexOfObject:styleName];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (id)localizedName
{
  styleName = [(NTKCollieStyleEditOption *)self styleName];
  if ([styleName isToyboxAnimojiStyleName])
  {
    v3 = @"EDIT_OPTION_LABEL_COLLIE_STYLE_TOYBOX_ANIMOJI";
LABEL_7:
    v4 = [NTKCollieFaceBundle localizedStringForKey:v3 comment:&stru_2D420];
    goto LABEL_8;
  }

  if ([styleName isToyboxMemojiStyleName])
  {
    v3 = @"EDIT_OPTION_LABEL_COLLIE_STYLE_TOYBOX_MEMOJI";
    goto LABEL_7;
  }

  if ([styleName isSharedMemojiStyleName])
  {
    v3 = @"EDIT_OPTION_LABEL_COLLIE_STYLE_SHARED_MEMOJI";
    goto LABEL_7;
  }

  if ([styleName isRegularMemojiStyleName])
  {
    memojiIdentifier = [styleName memojiIdentifier];
    v7 = +[NTKCollieStyleEditOption avatarRecordCache];
    _memojiIdentifiersCount = [v7 indexForRecordIdentifier:memojiIdentifier];

    if (_memojiIdentifiersCount == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = +[NTKCollieStyleEditOption avatarRecordCache];
      _memojiIdentifiersCount = [v9 _memojiIdentifiersCount];
    }

    v10 = [NTKCollieFaceBundle localizedStringForKey:@"EDIT_OPTION_LABEL_COLLIE_STYLE_MEMOJI" comment:&stru_2D420];
    v11 = [NSNumber numberWithUnsignedInteger:_memojiIdentifiersCount + 1];
    v4 = [NSString stringWithFormat:v10, v11];
  }

  else
  {
    uppercaseString = [styleName uppercaseString];
    memojiIdentifier = [NSString stringWithFormat:@"EDIT_OPTION_LABEL_COLLIE_STYLE_%@", uppercaseString];

    v4 = [NTKCollieFaceBundle localizedStringForKey:memojiIdentifier comment:&stru_2D420];
  }

LABEL_8:

  return v4;
}

- (UIImage)snapshotImage
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshotImage);

  return WeakRetained;
}

+ (id)poseNamed:(id)named
{
  namedCopy = named;
  v4 = NTKCollieFaceNSBundle();
  v5 = [v4 pathForResource:namedCopy ofType:@"json" inDirectory:0];

  v13 = 0;
  v6 = [NSData dataWithContentsOfFile:v5 options:1 error:&v13];
  v7 = v13;
  v12 = v7;
  v8 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:&v12];
  v9 = v12;

  v10 = [[AVTAvatarPose alloc] initWithDictionaryRepresentation:v8];

  return v10;
}

+ (id)_randomCharacterStyleForToyboxStyleName:(id)name resourceDirectory:(id)directory
{
  nameCopy = name;
  directoryCopy = directory;
  if ([(__CFString *)nameCopy isToyboxAnimojiStyleName])
  {
    v7 = +[NTKCollieStyleEditOptionAvatarRecordCache animojiIdentifiers];
    v8 = [(__CFString *)v7 objectAtIndexedSubscript:arc4random() % [(__CFString *)v7 count]];
  }

  else
  {
    if (![(__CFString *)nameCopy isToyboxMemojiStyleName])
    {
      v9 = nameCopy;
      goto LABEL_14;
    }

    v10 = +[NTKCollieStyleEditOption avatarRecordCache];
    _memojiIdentifiersCount = [v10 _memojiIdentifiersCount];

    v12 = [NTKCollieStyleEditOptionAvatarRecordCache hasSharedMemojiForResourceDirectory:directoryCopy];
    v13 = &_memojiIdentifiersCount[v12];
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

  nameCopy = v7;
LABEL_4:

  nameCopy = v9;
LABEL_14:
  v17 = v9;

  return v9;
}

- (void)_randomizeToyBoxWithResourceDirectory:(id)directory
{
  directoryCopy = directory;
  v5 = objc_opt_class();
  styleName = [(NTKCollieStyleEditOption *)self styleName];
  v7 = [v5 _randomCharacterStyleForToyboxStyleName:styleName resourceDirectory:directoryCopy];

  toyBoxCharacterStyleName = self->_toyBoxCharacterStyleName;
  self->_toyBoxCharacterStyleName = v7;

  objc_storeWeak(&self->_snapshotImage, 0);
}

- (id)_toyBoxCharacterStyleNameWithResourceDirectory:(id)directory
{
  toyBoxCharacterStyleName = self->_toyBoxCharacterStyleName;
  if (!toyBoxCharacterStyleName)
  {
    [(NTKCollieStyleEditOption *)self _randomizeToyBoxWithResourceDirectory:directory];
    toyBoxCharacterStyleName = self->_toyBoxCharacterStyleName;
  }

  return toyBoxCharacterStyleName;
}

- (id)chosenToyBoxOptionWithResourceDirectory:(id)directory
{
  directoryCopy = directory;
  if ([(NTKCollieStyleEditOption *)self isToybox])
  {
    v5 = [(NTKCollieStyleEditOption *)self _toyBoxCharacterStyleNameWithResourceDirectory:directoryCopy];
    v6 = objc_opt_class();
    device = [(NTKCollieStyleEditOption *)self device];
    v8 = [v6 optionWithStyleName:v5 forDevice:device];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)nextRandomizedToyBoxOptionWithResourceDirectory:(id)directory
{
  directoryCopy = directory;
  if ([(NTKCollieStyleEditOption *)self isToybox])
  {
    v5 = objc_opt_class();
    styleName = [(NTKCollieStyleEditOption *)self styleName];
    v7 = [v5 _randomCharacterStyleForToyboxStyleName:styleName resourceDirectory:directoryCopy];

    v8 = objc_opt_class();
    device = [(NTKCollieStyleEditOption *)self device];
    v10 = [v8 optionWithStyleName:v7 forDevice:device];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)chooseToyBoxOption:(id)option
{
  optionCopy = option;
  styleName = [(NTKCollieStyleEditOption *)self styleName];
  styleName2 = [optionCopy styleName];

  if ([styleName isToyboxAnimojiStyleName] && (objc_msgSend(styleName2, "isRegularAnimojiStyleName") & 1) != 0 || objc_msgSend(styleName, "isToyboxMemojiStyleName") && ((objc_msgSend(styleName2, "isRegularMemojiStyleName") & 1) != 0 || objc_msgSend(styleName2, "isSharedMemojiStyleName")))
  {
    objc_storeStrong(&self->_toyBoxCharacterStyleName, styleName2);
  }
}

+ (void)loadAvatarForOption:(id)option resourceDirectory:(id)directory oldAvatar:(id)avatar completion:(id)completion
{
  optionCopy = option;
  directoryCopy = directory;
  completionCopy = completion;
  if (optionCopy)
  {
    avatarCopy = avatar;
    styleName = [optionCopy styleName];
    if ([optionCopy isToybox])
    {
      v14 = [optionCopy _toyBoxCharacterStyleNameWithResourceDirectory:directoryCopy];

      styleName = v14;
    }

    v15 = +[NTKCollieStyleEditOption avatarRecordCache];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_17084;
    v16[3] = &unk_2D178;
    v17 = completionCopy;
    [v15 loadAvatarForCharacterStyleName:styleName resourceDirectory:directoryCopy oldAvatar:avatarCopy completion:v16];
  }
}

+ (id)existingSnapshotImageForOption:(id)option resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size force:(BOOL)force
{
  height = size.height;
  width = size.width;
  optionCopy = option;
  directoryCopy = directory;
  if (optionCopy)
  {
    if (type)
    {
      v14 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(optionCopy + 1);
      v14 = WeakRetained;
      if (WeakRetained && !force)
      {
        v18 = WeakRetained;
LABEL_7:

        goto LABEL_9;
      }
    }

    styleName = [optionCopy styleName];
    v16 = +[NTKCollieStyleEditOption avatarRecordCache];
    v17 = [v16 snapshotImageForStyleName:styleName resourceDirectory:directoryCopy poseType:type size:{width, height}];

    if (!type)
    {
      objc_storeWeak(optionCopy + 1, v17);
    }

    v18 = v17;

    goto LABEL_7;
  }

  v18 = 0;
LABEL_9:

  return v18;
}

+ (id)snapshotImageForOption:(id)option resourceDirectory:(id)directory size:(CGSize)size forDevice:(id)device oldAvatar:(id)avatar force:(BOOL)force
{
  height = size.height;
  width = size.width;
  optionCopy = option;
  directoryCopy = directory;
  if (optionCopy)
  {
    WeakRetained = objc_loadWeakRetained(optionCopy + 1);
    v15 = WeakRetained;
    if (!WeakRetained || force)
    {
      styleName = [optionCopy styleName];
      dispatch_assert_queue_V2(&_dispatch_main_q);
      v18 = +[NTKCollieStyleEditOption avatarRecordCache];
      v19 = [v18 snapshotImageForStyleName:styleName resourceDirectory:directoryCopy size:{width, height}];

      if (!v19)
      {
        v20 = +[NTKCollieStyleEditOption avatarRecordCache];
        v19 = [v20 makeSnapshotImageForStyleName:styleName resourceDirectory:directoryCopy size:{width, height}];
      }

      objc_storeWeak(optionCopy + 1, v19);
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

+ (void)asyncMakeSnapshotImageForOption:(id)option resourceDirectory:(id)directory poseType:(unint64_t)type size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  optionCopy = option;
  completionCopy = completion;
  directoryCopy = directory;
  styleName = [optionCopy styleName];
  v16 = +[NTKCollieStyleEditOption avatarRecordCache];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_17450;
  v20[3] = &unk_2D1A0;
  v21 = styleName;
  v22 = optionCopy;
  v23 = completionCopy;
  typeCopy = type;
  v17 = completionCopy;
  v18 = optionCopy;
  v19 = styleName;
  [v16 scheduleSnapshotImageForStyleName:v19 resourceDirectory:directoryCopy poseType:type size:v20 completion:{width, height}];
}

+ (id)neutralImageForOption:(id)option resourceDirectory:(id)directory size:(CGSize)size forDevice:(id)device oldAvatar:(id)avatar
{
  height = size.height;
  width = size.width;
  directoryCopy = directory;
  if (option)
  {
    styleName = [option styleName];
    dispatch_assert_queue_V2(&_dispatch_main_q);
    v12 = +[NTKCollieStyleEditOption avatarRecordCache];
    v13 = [v12 neutralImageForStyleName:styleName resourceDirectory:directoryCopy size:{width, height}];

    if (!v13)
    {
      v14 = +[NTKCollieStyleEditOption avatarRecordCache];
      v13 = [v14 makeNeutralImageForStyleName:styleName resourceDirectory:directoryCopy size:{width, height}];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)sleepImageForOption:(id)option resourceDirectory:(id)directory size:(CGSize)size forDevice:(id)device oldAvatar:(id)avatar
{
  height = size.height;
  width = size.width;
  directoryCopy = directory;
  if (option)
  {
    styleName = [option styleName];
    dispatch_assert_queue_V2(&_dispatch_main_q);
    v12 = +[NTKCollieStyleEditOption avatarRecordCache];
    v13 = [v12 sleepImageForStyleName:styleName resourceDirectory:directoryCopy size:{width, height}];

    if (!v13)
    {
      v14 = +[NTKCollieStyleEditOption avatarRecordCache];
      v13 = [v14 makeSleepImageForStyleName:styleName resourceDirectory:directoryCopy size:{width, height}];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)avatarDataRepresentationForOption:(id)option resourceDirectory:(id)directory
{
  directoryCopy = directory;
  styleName = [option styleName];
  if ([styleName isSharedMemojiStyleName])
  {
    v7 = [NTKCollieStyleEditOptionAvatarRecordCache sharedMemojiDataRepresentationForResourceDirectory:directoryCopy];
  }

  else if ([styleName isRegularMemojiStyleName])
  {
    v8 = +[NTKCollieStyleEditOption avatarRecordCache];
    v7 = [v8 memojiDataRepresentationForStyleName:styleName resourceDirectory:directoryCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)avatarSha1StringForOption:(id)option resourceDirectory:(id)directory
{
  directoryCopy = directory;
  styleName = [option styleName];
  if (([styleName isSharedMemojiStyleName] & 1) != 0 || (objc_msgSend(styleName, "isToyboxMemojiStyleName") & 1) != 0 || objc_msgSend(styleName, "isRegularMemojiStyleName"))
  {
    v7 = +[NTKCollieStyleEditOption avatarRecordCache];
    v8 = [v7 memojiSha1StringForStyleName:styleName resourceDirectory:directoryCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)hasSnapshotImageForOption:(id)option resourceDirectory:(id)directory size:(CGSize)size
{
  height = size.height;
  width = size.width;
  directoryCopy = directory;
  styleName = [option styleName];
  v10 = +[NTKCollieStyleEditOption avatarRecordCache];
  v11 = [v10 hasSnapshotImageForStyleName:styleName resourceDirectory:directoryCopy size:{width, height}];

  return v11;
}

- (BOOL)isBridgeMemoji
{
  if (![(NTKCollieStyleEditOption *)self isRegularMemoji])
  {
    return 0;
  }

  styleName = [(NTKCollieStyleEditOption *)self styleName];
  memojiIdentifier = [styleName memojiIdentifier];

  v5 = +[NTKCollieStyleEditOption avatarRecordCache];
  v6 = [v5 hasAvatarStoreMemojiForIdentifier:memojiIdentifier];

  v7 = v6 ^ 1;
  return v7;
}

+ (BOOL)saveBridgeMemojiCustomData:(id)data identifier:(id)identifier resourceDirectory:(id)directory error:(id *)error
{
  directoryCopy = directory;
  identifierCopy = identifier;
  v11 = [NTKCollieCustomData dataRepresentationFromCustomData:data];
  LOBYTE(error) = [NTKCollieStyleEditOptionAvatarRecordCache saveBridgeMemojiDataRepresentation:v11 identifier:identifierCopy resourceDirectory:directoryCopy error:error];

  return error;
}

- (id)customDataWithResourceDirectory:(id)directory
{
  directoryCopy = directory;
  if ([(NTKCollieStyleEditOption *)self isRegularMemoji])
  {
    styleName = [(NTKCollieStyleEditOption *)self styleName];
    memojiIdentifier = [styleName memojiIdentifier];

    if (memojiIdentifier && ([objc_opt_class() avatarDataRepresentationForOption:self resourceDirectory:directoryCopy], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

+ (void)pruneResourceDirectory:(id)directory pruneBridgeMemoji:(BOOL)memoji
{
  memojiCopy = memoji;
  directoryCopy = directory;
  v6 = +[NTKCollieStyleEditOption avatarRecordCache];
  [v6 pruneResourceDirectory:directoryCopy pruneBridgeMemoji:memojiCopy];
}

- (id)_toyboxResolvedPoseStyleName
{
  styleName = [(NTKCollieStyleEditOption *)self styleName];
  if ([styleName isToyboxAnimojiStyleName])
  {
    v4 = [(NTKCollieStyleEditOption *)self _toyBoxCharacterStyleNameWithResourceDirectory:0];
  }

  else
  {
    if (![styleName isAnyMemojiStyleName])
    {
      goto LABEL_6;
    }

    v4 = @"memoji-";
  }

  v5 = v4;

  styleName = v5;
LABEL_6:

  return styleName;
}

- (id)neutralPose
{
  _toyboxResolvedPoseStyleName = [(NTKCollieStyleEditOption *)self _toyboxResolvedPoseStyleName];
  v3 = [objc_opt_class() neutralPoseForCharacterStyleName:_toyboxResolvedPoseStyleName];
  if (!v3)
  {
    v3 = +[AVTAvatarPose neutralPose];
  }

  return v3;
}

- (id)friendlyPose
{
  _toyboxResolvedPoseStyleName = [(NTKCollieStyleEditOption *)self _toyboxResolvedPoseStyleName];
  v3 = [objc_opt_class() friendlyPoseForCharacterStyleName:_toyboxResolvedPoseStyleName];
  if (!v3)
  {
    v3 = +[AVTAvatarPose friendlyPose];
  }

  return v3;
}

@end
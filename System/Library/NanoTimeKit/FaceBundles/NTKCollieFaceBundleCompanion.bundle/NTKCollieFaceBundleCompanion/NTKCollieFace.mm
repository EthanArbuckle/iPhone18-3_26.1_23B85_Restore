@interface NTKCollieFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_complicationSlotDescriptors;
+ (id)_defaultNumeralEditOptionForDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (id)faceForAvatarRecordIdentifier:(id)identifier forDevice:(id)device;
- (BOOL)_option:(id)_option isValidForCustomEditMode:(int64_t)mode slot:(id)slot configuration:(id)configuration;
- (BOOL)_sanitizeFaceConfiguration:(id *)configuration;
- (BOOL)hasLocalAvatar;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_createSharingMetadata;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_defaultOptionForMissingCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_faceDescriptionKey;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_uniqueOptionForCustomEditMode:(int64_t)mode slot:(id)slot withExistingOptions:(id)options;
- (id)unsafeDailySnapshotKey;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_commonInit;
- (void)_handleSharingMetadata:(id)metadata;
- (void)_noteOptionChangedFrom:(id)from to:(id)to forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)didMoveToLibrary;
- (void)ensureBridgeMemojiResources;
- (void)ensureBridgeMemojiResourcesForStyleEditOption:(id)option;
@end

@implementation NTKCollieFace

- (void)_commonInit
{
  +[NTKCollieStyleEditOption invalidateCache];
  v3.receiver = self;
  v3.super_class = NTKCollieFace;
  [(NTKCollieFace *)&v3 _commonInit];
}

- (BOOL)hasLocalAvatar
{
  if (!self->_hasLocalAvatar && !self->_checkedForLocalAvatar)
  {
    resourceDirectory = [(NTKCollieFace *)self resourceDirectory];
    self->_hasLocalAvatar = [NTKCollieStyleEditOption hasSharedMemojiForResourceDirectory:resourceDirectory];
  }

  self->_checkedForLocalAvatar = 1;
  return self->_hasLocalAvatar;
}

- (id)unsafeDailySnapshotKey
{
  v17.receiver = self;
  v17.super_class = NTKCollieFace;
  unsafeDailySnapshotKey = [(NTKCollieFace *)&v17 unsafeDailySnapshotKey];
  if ([unsafeDailySnapshotKey isEqualToString:NTKSensitiveSnapshotKey])
  {
    v4 = unsafeDailySnapshotKey;
  }

  else
  {
    v5 = [(NTKCollieFace *)self selectedOptionForCustomEditMode:15 slot:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      if ([v6 isRegularMemoji])
      {
        v7 = objc_opt_new();
        configuration = [(NTKCollieFace *)self configuration];
        [configuration appendCustomDataToDailySnapshotKey:v7];

        v9 = [unsafeDailySnapshotKey rangeOfString:v7];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = [unsafeDailySnapshotKey stringByReplacingCharactersInRange:v9 withString:{v10, &stru_2D420}];

          unsafeDailySnapshotKey = v11;
        }
      }

      if (([v6 isRegularMemoji] & 1) != 0 || (objc_msgSend(v6, "isToyboxMemoji") & 1) != 0 || objc_msgSend(v6, "isSharedMemoji"))
      {
        resourceDirectory = [(NTKCollieFace *)self resourceDirectory];
        +[NTKCollieFaceView _snapshotImageSize];
        if ([NTKCollieStyleEditOption hasSnapshotImageForOption:v6 resourceDirectory:resourceDirectory size:?])
        {
          v13 = [NTKCollieStyleEditOption avatarSha1StringForOption:v6 resourceDirectory:resourceDirectory];
          if (v13)
          {
            v14 = [NSString stringWithFormat:@"-(%@)", v13];
            v15 = [unsafeDailySnapshotKey stringByAppendingString:v14];

            unsafeDailySnapshotKey = v14;
          }

          else
          {
            v15 = [unsafeDailySnapshotKey stringByAppendingString:@"-(nil)"];
          }
        }

        else
        {
          v15 = [unsafeDailySnapshotKey stringByAppendingString:@"-(nosnap)"];
          v13 = unsafeDailySnapshotKey;
        }

        unsafeDailySnapshotKey = v15;
      }
    }

    v4 = unsafeDailySnapshotKey;
  }

  return v4;
}

+ (id)faceForAvatarRecordIdentifier:(id)identifier forDevice:(id)device
{
  deviceCopy = device;
  identifierCopy = identifier;
  +[NTKCollieStyleEditOption endCache];
  v8 = [NTKCollieStyleEditOption optionWithAvatarRecordIdentifier:identifierCopy forDevice:deviceCopy];

  if (v8)
  {
    v9 = NTKCollieFaceNSBundle();
    bundleIdentifier = [v9 bundleIdentifier];
    v11 = +[NTKCollieFaceBundle analyticsIdentifier];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_12F14;
    v14[3] = &unk_2D0A0;
    v15 = v8;
    selfCopy = self;
    v16 = deviceCopy;
    v12 = [self bundledFaceWithIdentifier:bundleIdentifier analyticsIdentifier:v11 forDevice:v16 initCustomization:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)didMoveToLibrary
{
  v5.receiver = self;
  v5.super_class = NTKCollieFace;
  [(NTKCollieFace *)&v5 didMoveToLibrary];
  v3 = +[NTKCollieAvatarStoreListener sharedInstance];
  avtStoreListener = self->_avtStoreListener;
  self->_avtStoreListener = v3;
}

- (BOOL)_sanitizeFaceConfiguration:(id *)configuration
{
  v5 = [(NTKCollieFace *)self selectedOptionForCustomEditMode:15 slot:0];
  styleName = [v5 styleName];
  if ([styleName isSharedMemojiStyleName])
  {
    resourceDirectory = [(NTKCollieFace *)self resourceDirectory];
    device = [(NTKCollieFace *)self device];
    isRegularAnimojiStyleName = [NTKCollieStyleEditOption validateSharedMemojiResourceDirectory:resourceDirectory forDevice:device error:configuration];
  }

  else if ([styleName isToyboxAnyStyleName])
  {
    isRegularAnimojiStyleName = 1;
  }

  else
  {
    isRegularAnimojiStyleName = [styleName isRegularAnimojiStyleName];
  }

  return isRegularAnimojiStyleName;
}

- (id)_createSharingMetadata
{
  v3 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[NTKCollieFace _createSharingMetadata]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s: starting", &v10, 0xCu);
  }

  v4 = [(NTKCollieFace *)self selectedOptionForCustomEditMode:15 slot:0];
  if (([v4 isRegularMemoji] & 1) != 0 || objc_msgSend(v4, "isSharedMemoji"))
  {
    resourceDirectory = [(NTKCollieFace *)self resourceDirectory];
    v6 = [NTKCollieStyleEditOption avatarDataRepresentationForOption:v4 resourceDirectory:resourceDirectory];

    v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:0];
    if (v7)
    {
      v8 = [NSDictionary dictionaryWithObject:v7 forKey:@"avatar_data_key"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_handleSharingMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[NTKCollieFace _handleSharingMetadata:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s: starting", buf, 0xCu);
  }

  v6 = [metadataCopy objectForKey:@"avatar_data_key"];

  v7 = [NSJSONSerialization dataWithJSONObject:v6 options:1 error:0];
  if (v7)
  {
    device = [(NTKCollieFace *)self device];
    v16 = 0;
    v9 = [NTKCollieStyleEditOption validateMemojiDataRepresentation:v7 forDevice:device error:&v16];
    v10 = v16;

    if (v9)
    {
      v11 = NTKNewUniqueTeporaryResourceDirectory();
      v15 = v10;
      [NTKCollieStyleEditOption saveSharedMemojiDataRepresentation:v7 resourceDirectory:v11 error:&v15];
      v12 = v15;

      if (v12)
      {
        v13 = +[NTKCollieFaceBundle logObject];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_193C4(v12, v13);
        }
      }

      else
      {
        [(NTKCollieFace *)self setResourceDirectory:v11];
        device2 = [(NTKCollieFace *)self device];
        v13 = [NTKCollieStyleEditOption optionWithStyleName:@"local-memoji" forDevice:device2];

        [(NTKCollieFace *)self selectOption:v13 forCustomEditMode:15 slot:0];
      }
    }

    else
    {
      v12 = v10;
    }
  }

  else
  {
    v12 = 0;
  }
}

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  v4 = _os_feature_enabled_impl();
  LOBYTE(v5) = 1;
  if ([deviceCopy deviceCategory] != &dword_0 + 1 && v4)
  {
    v5 = [deviceCopy supportsPDRCapability:3588072423] ^ 1;
  }

  return v5;
}

- (id)_uniqueOptionForCustomEditMode:(int64_t)mode slot:(id)slot withExistingOptions:(id)options
{
  if (mode == 15)
  {
    optionsCopy = options;
    device = [(NTKCollieFace *)self device];
    v8 = [NTKCollieStyleEditOption uniqueOptionForDevice:device existingOptions:optionsCopy];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NTKCollieFace;
    optionsCopy2 = options;
    v8 = [(NTKCollieFace *)&v13 _uniqueOptionForCustomEditMode:mode slot:slot withExistingOptions:optionsCopy2];
  }

  return v8;
}

- (id)_customEditModes
{
  v3 = [&off_2DDD8 mutableCopy];
  device = [(NTKCollieFace *)self device];
  v5 = NTKShowIndicScriptNumerals();

  if (v5)
  {
    [v3 addObject:&off_2DFA0];
  }

  [v3 addObject:&off_2DFB8];

  return v3;
}

+ (id)_defaultNumeralEditOptionForDevice:(id)device
{
  deviceCopy = device;
  CLKLocaleNumberSystemForFirstLanguage();
  v4 = [NTKNumeralEditOption optionWithNumeral:NTKNumeralOptionFromCLKLocaleNumberSystem() forDevice:deviceCopy];

  return v4;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  switch(mode)
  {
    case 19:
      v11 = objc_opt_class();
      device = [(NTKCollieFace *)self device];
      v9 = [v11 _defaultNumeralEditOptionForDevice:device];
      goto LABEL_7;
    case 15:
      v10 = objc_opt_class();
      device = [(NTKCollieFace *)self device];
      v9 = [v10 _defaultStyleEditOptionForDevice:device];
      goto LABEL_7;
    case 10:
      v7 = objc_opt_class();
      device = [(NTKCollieFace *)self device];
      v9 = [v7 _defaultColorEditOptionForDevice:device];
LABEL_7:
      v12 = v9;

      goto LABEL_9;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (id)_defaultOptionForMissingCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v4 = [(NTKCollieFace *)self device:10];
    v5 = [NTKCollieColorEditOption optionWithFaceColor:200 forDevice:v4];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKCollieFace;
    v5 = [(NTKCollieFace *)&v7 _defaultOptionForMissingCustomEditMode:mode slot:slot];
  }

  return v5;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 19)
  {
    v7 = NTKNumeralEditOption;
LABEL_7:
    device = [(NTKCollieFace *)self device];
    v10 = [(__objc2_class *)v7 numberOfOptionsForDevice:device];
    goto LABEL_8;
  }

  if (mode != 15)
  {
    if (mode != 10)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v7 = NTKCollieColorEditOption;
    goto LABEL_7;
  }

  device = [(NTKCollieFace *)self resourceDirectory];
  device2 = [(NTKCollieFace *)self device];
  v10 = [NTKCollieStyleEditOption numberOfOptionsWithResourceDirectory:device forDevice:device2];

LABEL_8:
LABEL_10:

  return v10;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  switch(mode)
  {
    case 19:
      selfCopy2 = self;
      v10 = 19;
      goto LABEL_7;
    case 15:
      resourceDirectory = [(NTKCollieFace *)self resourceDirectory];
      device = [(NTKCollieFace *)self device];
      v13 = [NTKCollieStyleEditOption optionAtIndex:index resourceDirectory:resourceDirectory forDevice:device];

LABEL_8:
      goto LABEL_10;
    case 10:
      selfCopy2 = self;
      v10 = 10;
LABEL_7:
      v14 = [(NTKCollieFace *)selfCopy2 _optionClassForCustomEditMode:v10];
      resourceDirectory = [(NTKCollieFace *)self device];
      v13 = [(objc_class *)v14 optionAtIndex:index forDevice:resourceDirectory];
      goto LABEL_8;
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 19)
  {
    v10 = NTKNumeralEditOption;
LABEL_7:
    device = [(NTKCollieFace *)self device];
    v13 = [(__objc2_class *)v10 indexOfOption:optionCopy forDevice:device];
    goto LABEL_8;
  }

  if (mode != 15)
  {
    if (mode != 10)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_10;
    }

    v10 = NTKCollieColorEditOption;
    goto LABEL_7;
  }

  device = [(NTKCollieFace *)self resourceDirectory];
  device2 = [(NTKCollieFace *)self device];
  v13 = [NTKCollieStyleEditOption indexOfOption:optionCopy resourceDirectory:device forDevice:device2];

LABEL_8:
LABEL_10:

  return v13;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 10 || mode == 19 || mode == 15)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_option:(id)_option isValidForCustomEditMode:(int64_t)mode slot:(id)slot configuration:(id)configuration
{
  _optionCopy = _option;
  slotCopy = slot;
  configurationCopy = configuration;
  if (mode != 15)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  v13 = _optionCopy;
  if ([v13 isBridgeMemoji])
  {
    v14 = [(NTKCollieFace *)self customDataForKey:@"memoji"];
    v15 = v14;
    if (configurationCopy && !v14)
    {
      v15 = [configurationCopy customDataForKey:@"memoji"];
    }

    if (v15)
    {
      device = [(NTKCollieFace *)self device];
      v23 = 0;
      v17 = [NTKCollieCustomData validateCustomData:v15 forDevice:device error:&v23];
      v18 = v23;

      if (v17)
      {

        goto LABEL_10;
      }

      v20 = +[NTKCollieFaceBundle logObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_19450(v13, v18, v20);
      }
    }

LABEL_16:
    v19 = 0;
    goto LABEL_17;
  }

LABEL_10:

LABEL_11:
  v22.receiver = self;
  v22.super_class = NTKCollieFace;
  v19 = [(NTKCollieFace *)&v22 _option:_optionCopy isValidForCustomEditMode:mode slot:slotCopy configuration:configurationCopy];
LABEL_17:

  return v19;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 15)
  {
    v4 = [NTKCollieFaceBundle localizedStringForKey:@"EDIT_MODE_LABEL_STYLE_COLLIE_IN_TITLE_CASE" comment:&stru_2D420];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___NTKCollieFace;
    v4 = objc_msgSendSuper2(&v6, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, device);
  }

  return v4;
}

- (void)ensureBridgeMemojiResourcesForStyleEditOption:(id)option
{
  optionCopy = option;
  if ([optionCopy isBridgeMemoji])
  {
    resourceDirectory = [(NTKCollieFace *)self resourceDirectory];
    if (!resourceDirectory)
    {
      resourceDirectory = NTKNewUniqueTeporaryResourceDirectory();
      [(NTKCollieFace *)self setResourceDirectory:resourceDirectory];
    }

    styleName = [optionCopy styleName];
    memojiIdentifier = [styleName memojiIdentifier];

    v8 = [(NTKCollieFace *)self customDataForKey:@"memoji"];
    v9 = objc_autoreleasePoolPush();
    v10 = [NTKCollieStyleEditOption bridgeMemojiDataRepresentationForIdentifier:memojiIdentifier resourceDirectory:resourceDirectory];
    if (!v10 || ![NTKCollieCustomData dataRepresentation:v10 equalsCustomData:v8])
    {
      v11 = +[NTKCollieFaceBundle logObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        styleName2 = [optionCopy styleName];
        *buf = 138412290;
        v15 = styleName2;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "generating bridge memoji resources for %@", buf, 0xCu);
      }

      [NTKCollieStyleEditOption pruneResourceDirectory:resourceDirectory pruneBridgeMemoji:1];
      if (v8)
      {
        v13 = 0;
        [NTKCollieStyleEditOption saveBridgeMemojiCustomData:v8 identifier:memojiIdentifier resourceDirectory:resourceDirectory error:&v13];
      }
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)ensureBridgeMemojiResources
{
  v3 = [(NTKCollieFace *)self selectedOptionForCustomEditMode:15 slot:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NTKCollieFace *)self ensureBridgeMemojiResourcesForStyleEditOption:v3];
  }
}

- (void)_noteOptionChangedFrom:(id)from to:(id)to forCustomEditMode:(int64_t)mode slot:(id)slot
{
  toCopy = to;
  slotCopy = slot;
  fromCopy = from;
  v13 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[NTKCollieFace _noteOptionChangedFrom:to:forCustomEditMode:slot:]";
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%s: starting", buf, 0xCu);
  }

  v17.receiver = self;
  v17.super_class = NTKCollieFace;
  [(NTKCollieFace *)&v17 _noteOptionChangedFrom:fromCopy to:toCopy forCustomEditMode:mode slot:slotCopy];

  if (mode == 15)
  {
    v14 = toCopy;
    resourceDirectory = [(NTKCollieFace *)self resourceDirectory];
    v16 = [v14 customDataWithResourceDirectory:resourceDirectory];

    [(NTKCollieFace *)self setCustomData:v16 forKey:@"memoji"];
  }
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotDate;
  v4[1] = NTKComplicationSlotBottom;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllUtilityLargeNarrowComplicationTypes();
  v3 = +[CLKDevice currentDevice];
  isTinker = [v3 isTinker];

  if (isTinker)
  {
    v13[0] = NTKComplicationSlotDate;
    v5 = NTKWrappedDateComplicationType();
    v6 = NTKComplicationSlotDescriptor();
    v14[0] = v6;
    v13[1] = NTKComplicationSlotBottom;
    v7 = NTKComplicationSlotDescriptor();
    v14[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else
  {
    v11[0] = NTKComplicationSlotDate;
    v5 = NTKWrappedDateComplicationType();
    v6 = NTKComplicationSlotDescriptor();
    v12[0] = v6;
    v11[1] = NTKComplicationSlotBottom;
    v7 = NTKComplicationTypeRankedListWithDefaultTypes();
    v9 = NTKComplicationSlotDescriptor();
    v12[1] = v9;
    v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  }

  return v8;
}

- (id)_faceDescriptionKey
{
  v2 = +[NTKCollieStyleEditOption cloudSyncStatus];
  if (v2 - 1 > 2)
  {
    return @"FACE_STYLE_COLLIE_DESCRIPTION";
  }

  else
  {
    return off_2D0C0[v2 - 1];
  }
}

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKCollieFace *)self _faceDescriptionKey];
  v3 = [NTKCollieFaceBundle localizedStringForKey:_faceDescriptionKey comment:&stru_2D420];

  return v3;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotDate])
  {
    v5 = NTKClockFaceLocalizedString();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKCollieFace;
    v5 = [(NTKCollieFace *)&v8 _localizedNameForComplicationSlot:slotCopy];
  }

  v6 = v5;

  return v6;
}

@end
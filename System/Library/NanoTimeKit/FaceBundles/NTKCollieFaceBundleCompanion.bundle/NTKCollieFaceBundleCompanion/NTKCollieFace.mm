@interface NTKCollieFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_complicationSlotDescriptors;
+ (id)_defaultNumeralEditOptionForDevice:(id)a3;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
+ (id)faceForAvatarRecordIdentifier:(id)a3 forDevice:(id)a4;
- (BOOL)_option:(id)a3 isValidForCustomEditMode:(int64_t)a4 slot:(id)a5 configuration:(id)a6;
- (BOOL)_sanitizeFaceConfiguration:(id *)a3;
- (BOOL)hasLocalAvatar;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_createSharingMetadata;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_defaultOptionForMissingCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_faceDescriptionKey;
- (id)_localizedNameForComplicationSlot:(id)a3;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)_uniqueOptionForCustomEditMode:(int64_t)a3 slot:(id)a4 withExistingOptions:(id)a5;
- (id)unsafeDailySnapshotKey;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)_commonInit;
- (void)_handleSharingMetadata:(id)a3;
- (void)_noteOptionChangedFrom:(id)a3 to:(id)a4 forCustomEditMode:(int64_t)a5 slot:(id)a6;
- (void)didMoveToLibrary;
- (void)ensureBridgeMemojiResources;
- (void)ensureBridgeMemojiResourcesForStyleEditOption:(id)a3;
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
    v3 = [(NTKCollieFace *)self resourceDirectory];
    self->_hasLocalAvatar = [NTKCollieStyleEditOption hasSharedMemojiForResourceDirectory:v3];
  }

  self->_checkedForLocalAvatar = 1;
  return self->_hasLocalAvatar;
}

- (id)unsafeDailySnapshotKey
{
  v17.receiver = self;
  v17.super_class = NTKCollieFace;
  v3 = [(NTKCollieFace *)&v17 unsafeDailySnapshotKey];
  if ([v3 isEqualToString:NTKSensitiveSnapshotKey])
  {
    v4 = v3;
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
        v8 = [(NTKCollieFace *)self configuration];
        [v8 appendCustomDataToDailySnapshotKey:v7];

        v9 = [v3 rangeOfString:v7];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = [v3 stringByReplacingCharactersInRange:v9 withString:{v10, &stru_2D420}];

          v3 = v11;
        }
      }

      if (([v6 isRegularMemoji] & 1) != 0 || (objc_msgSend(v6, "isToyboxMemoji") & 1) != 0 || objc_msgSend(v6, "isSharedMemoji"))
      {
        v12 = [(NTKCollieFace *)self resourceDirectory];
        +[NTKCollieFaceView _snapshotImageSize];
        if ([NTKCollieStyleEditOption hasSnapshotImageForOption:v6 resourceDirectory:v12 size:?])
        {
          v13 = [NTKCollieStyleEditOption avatarSha1StringForOption:v6 resourceDirectory:v12];
          if (v13)
          {
            v14 = [NSString stringWithFormat:@"-(%@)", v13];
            v15 = [v3 stringByAppendingString:v14];

            v3 = v14;
          }

          else
          {
            v15 = [v3 stringByAppendingString:@"-(nil)"];
          }
        }

        else
        {
          v15 = [v3 stringByAppendingString:@"-(nosnap)"];
          v13 = v3;
        }

        v3 = v15;
      }
    }

    v4 = v3;
  }

  return v4;
}

+ (id)faceForAvatarRecordIdentifier:(id)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = a3;
  +[NTKCollieStyleEditOption endCache];
  v8 = [NTKCollieStyleEditOption optionWithAvatarRecordIdentifier:v7 forDevice:v6];

  if (v8)
  {
    v9 = NTKCollieFaceNSBundle();
    v10 = [v9 bundleIdentifier];
    v11 = +[NTKCollieFaceBundle analyticsIdentifier];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_12F14;
    v14[3] = &unk_2D0A0;
    v15 = v8;
    v17 = a1;
    v16 = v6;
    v12 = [a1 bundledFaceWithIdentifier:v10 analyticsIdentifier:v11 forDevice:v16 initCustomization:v14];
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

- (BOOL)_sanitizeFaceConfiguration:(id *)a3
{
  v5 = [(NTKCollieFace *)self selectedOptionForCustomEditMode:15 slot:0];
  v6 = [v5 styleName];
  if ([v6 isSharedMemojiStyleName])
  {
    v7 = [(NTKCollieFace *)self resourceDirectory];
    v8 = [(NTKCollieFace *)self device];
    v9 = [NTKCollieStyleEditOption validateSharedMemojiResourceDirectory:v7 forDevice:v8 error:a3];
  }

  else if ([v6 isToyboxAnyStyleName])
  {
    v9 = 1;
  }

  else
  {
    v9 = [v6 isRegularAnimojiStyleName];
  }

  return v9;
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
    v5 = [(NTKCollieFace *)self resourceDirectory];
    v6 = [NTKCollieStyleEditOption avatarDataRepresentationForOption:v4 resourceDirectory:v5];

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

- (void)_handleSharingMetadata:(id)a3
{
  v4 = a3;
  v5 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[NTKCollieFace _handleSharingMetadata:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s: starting", buf, 0xCu);
  }

  v6 = [v4 objectForKey:@"avatar_data_key"];

  v7 = [NSJSONSerialization dataWithJSONObject:v6 options:1 error:0];
  if (v7)
  {
    v8 = [(NTKCollieFace *)self device];
    v16 = 0;
    v9 = [NTKCollieStyleEditOption validateMemojiDataRepresentation:v7 forDevice:v8 error:&v16];
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
        v14 = [(NTKCollieFace *)self device];
        v13 = [NTKCollieStyleEditOption optionWithStyleName:@"local-memoji" forDevice:v14];

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

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  v4 = _os_feature_enabled_impl();
  LOBYTE(v5) = 1;
  if ([v3 deviceCategory] != &dword_0 + 1 && v4)
  {
    v5 = [v3 supportsPDRCapability:3588072423] ^ 1;
  }

  return v5;
}

- (id)_uniqueOptionForCustomEditMode:(int64_t)a3 slot:(id)a4 withExistingOptions:(id)a5
{
  if (a3 == 15)
  {
    v6 = a5;
    v7 = [(NTKCollieFace *)self device];
    v8 = [NTKCollieStyleEditOption uniqueOptionForDevice:v7 existingOptions:v6];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NTKCollieFace;
    v11 = a5;
    v8 = [(NTKCollieFace *)&v13 _uniqueOptionForCustomEditMode:a3 slot:a4 withExistingOptions:v11];
  }

  return v8;
}

- (id)_customEditModes
{
  v3 = [&off_2DDD8 mutableCopy];
  v4 = [(NTKCollieFace *)self device];
  v5 = NTKShowIndicScriptNumerals();

  if (v5)
  {
    [v3 addObject:&off_2DFA0];
  }

  [v3 addObject:&off_2DFB8];

  return v3;
}

+ (id)_defaultNumeralEditOptionForDevice:(id)a3
{
  v3 = a3;
  CLKLocaleNumberSystemForFirstLanguage();
  v4 = [NTKNumeralEditOption optionWithNumeral:NTKNumeralOptionFromCLKLocaleNumberSystem() forDevice:v3];

  return v4;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  switch(a3)
  {
    case 19:
      v11 = objc_opt_class();
      v8 = [(NTKCollieFace *)self device];
      v9 = [v11 _defaultNumeralEditOptionForDevice:v8];
      goto LABEL_7;
    case 15:
      v10 = objc_opt_class();
      v8 = [(NTKCollieFace *)self device];
      v9 = [v10 _defaultStyleEditOptionForDevice:v8];
      goto LABEL_7;
    case 10:
      v7 = objc_opt_class();
      v8 = [(NTKCollieFace *)self device];
      v9 = [v7 _defaultColorEditOptionForDevice:v8];
LABEL_7:
      v12 = v9;

      goto LABEL_9;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (id)_defaultOptionForMissingCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 10)
  {
    v4 = [(NTKCollieFace *)self device:10];
    v5 = [NTKCollieColorEditOption optionWithFaceColor:200 forDevice:v4];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKCollieFace;
    v5 = [(NTKCollieFace *)&v7 _defaultOptionForMissingCustomEditMode:a3 slot:a4];
  }

  return v5;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 19)
  {
    v7 = NTKNumeralEditOption;
LABEL_7:
    v8 = [(NTKCollieFace *)self device];
    v10 = [(__objc2_class *)v7 numberOfOptionsForDevice:v8];
    goto LABEL_8;
  }

  if (a3 != 15)
  {
    if (a3 != 10)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v7 = NTKCollieColorEditOption;
    goto LABEL_7;
  }

  v8 = [(NTKCollieFace *)self resourceDirectory];
  v9 = [(NTKCollieFace *)self device];
  v10 = [NTKCollieStyleEditOption numberOfOptionsWithResourceDirectory:v8 forDevice:v9];

LABEL_8:
LABEL_10:

  return v10;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a5;
  switch(a4)
  {
    case 19:
      v9 = self;
      v10 = 19;
      goto LABEL_7;
    case 15:
      v11 = [(NTKCollieFace *)self resourceDirectory];
      v12 = [(NTKCollieFace *)self device];
      v13 = [NTKCollieStyleEditOption optionAtIndex:a3 resourceDirectory:v11 forDevice:v12];

LABEL_8:
      goto LABEL_10;
    case 10:
      v9 = self;
      v10 = 10;
LABEL_7:
      v14 = [(NTKCollieFace *)v9 _optionClassForCustomEditMode:v10];
      v11 = [(NTKCollieFace *)self device];
      v13 = [(objc_class *)v14 optionAtIndex:a3 forDevice:v11];
      goto LABEL_8;
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == 19)
  {
    v10 = NTKNumeralEditOption;
LABEL_7:
    v11 = [(NTKCollieFace *)self device];
    v13 = [(__objc2_class *)v10 indexOfOption:v8 forDevice:v11];
    goto LABEL_8;
  }

  if (a4 != 15)
  {
    if (a4 != 10)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_10;
    }

    v10 = NTKCollieColorEditOption;
    goto LABEL_7;
  }

  v11 = [(NTKCollieFace *)self resourceDirectory];
  v12 = [(NTKCollieFace *)self device];
  v13 = [NTKCollieStyleEditOption indexOfOption:v8 resourceDirectory:v11 forDevice:v12];

LABEL_8:
LABEL_10:

  return v13;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 10 || a3 == 19 || a3 == 15)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_option:(id)a3 isValidForCustomEditMode:(int64_t)a4 slot:(id)a5 configuration:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (a4 != 15)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  v13 = v10;
  if ([v13 isBridgeMemoji])
  {
    v14 = [(NTKCollieFace *)self customDataForKey:@"memoji"];
    v15 = v14;
    if (v12 && !v14)
    {
      v15 = [v12 customDataForKey:@"memoji"];
    }

    if (v15)
    {
      v16 = [(NTKCollieFace *)self device];
      v23 = 0;
      v17 = [NTKCollieCustomData validateCustomData:v15 forDevice:v16 error:&v23];
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
  v19 = [(NTKCollieFace *)&v22 _option:v10 isValidForCustomEditMode:a4 slot:v11 configuration:v12];
LABEL_17:

  return v19;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 15)
  {
    v4 = [NTKCollieFaceBundle localizedStringForKey:@"EDIT_MODE_LABEL_STYLE_COLLIE_IN_TITLE_CASE" comment:&stru_2D420];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___NTKCollieFace;
    v4 = objc_msgSendSuper2(&v6, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, a4);
  }

  return v4;
}

- (void)ensureBridgeMemojiResourcesForStyleEditOption:(id)a3
{
  v4 = a3;
  if ([v4 isBridgeMemoji])
  {
    v5 = [(NTKCollieFace *)self resourceDirectory];
    if (!v5)
    {
      v5 = NTKNewUniqueTeporaryResourceDirectory();
      [(NTKCollieFace *)self setResourceDirectory:v5];
    }

    v6 = [v4 styleName];
    v7 = [v6 memojiIdentifier];

    v8 = [(NTKCollieFace *)self customDataForKey:@"memoji"];
    v9 = objc_autoreleasePoolPush();
    v10 = [NTKCollieStyleEditOption bridgeMemojiDataRepresentationForIdentifier:v7 resourceDirectory:v5];
    if (!v10 || ![NTKCollieCustomData dataRepresentation:v10 equalsCustomData:v8])
    {
      v11 = +[NTKCollieFaceBundle logObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v4 styleName];
        *buf = 138412290;
        v15 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "generating bridge memoji resources for %@", buf, 0xCu);
      }

      [NTKCollieStyleEditOption pruneResourceDirectory:v5 pruneBridgeMemoji:1];
      if (v8)
      {
        v13 = 0;
        [NTKCollieStyleEditOption saveBridgeMemojiCustomData:v8 identifier:v7 resourceDirectory:v5 error:&v13];
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

- (void)_noteOptionChangedFrom:(id)a3 to:(id)a4 forCustomEditMode:(int64_t)a5 slot:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a3;
  v13 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[NTKCollieFace _noteOptionChangedFrom:to:forCustomEditMode:slot:]";
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%s: starting", buf, 0xCu);
  }

  v17.receiver = self;
  v17.super_class = NTKCollieFace;
  [(NTKCollieFace *)&v17 _noteOptionChangedFrom:v12 to:v10 forCustomEditMode:a5 slot:v11];

  if (a5 == 15)
  {
    v14 = v10;
    v15 = [(NTKCollieFace *)self resourceDirectory];
    v16 = [v14 customDataWithResourceDirectory:v15];

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
  v4 = [v3 isTinker];

  if (v4)
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
  v2 = [(NTKCollieFace *)self _faceDescriptionKey];
  v3 = [NTKCollieFaceBundle localizedStringForKey:v2 comment:&stru_2D420];

  return v3;
}

- (id)_localizedNameForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:NTKComplicationSlotDate])
  {
    v5 = NTKClockFaceLocalizedString();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKCollieFace;
    v5 = [(NTKCollieFace *)&v8 _localizedNameForComplicationSlot:v4];
  }

  v6 = v5;

  return v6;
}

@end
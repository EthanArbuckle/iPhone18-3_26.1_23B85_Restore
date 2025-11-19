@interface NTKVideoFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_complicationMigrationPaths;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_localizedNameForComplicationSlot:(id)a3;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)faceDescription;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)a3;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKVideoFace

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllUtilitySmallFlatComplicationTypes();
  v3 = NTKAllUtilityLargeNarrowComplicationTypes();
  v12[0] = NTKComplicationSlotTopRight;
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKComplicationSlotDescriptor();
  v13[0] = v5;
  v12[1] = NTKComplicationSlotBottom;
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v7 = NTKComplicationSlotDescriptor();
  v13[1] = v7;
  v12[2] = NTKComplicationSlotDate;
  v8 = NTKWrappedDateComplicationType();
  v9 = NTKComplicationSlotDescriptor();
  v13[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopRight;
  v4[1] = NTKComplicationSlotDate;
  v4[2] = NTKComplicationSlotBottom;
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (id)_localizedNameForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:NTKComplicationSlotDate])
  {
    v10.receiver = self;
    v10.super_class = NTKVideoFace;
    v5 = [(NTKVideoFace *)&v10 _localizedNameForComplicationSlot:v4];
  }

  else
  {
    if ([v4 isEqualToString:NTKComplicationSlotTopRight])
    {
      v6 = @"TOP";
    }

    else
    {
      v7 = [v4 isEqualToString:NTKComplicationSlotBottom];
      v6 = @"BOTTOM";
      if (!v7)
      {
        v6 = 0;
      }
    }

    v8 = [NSString stringWithFormat:@"SLOT_LABEL_%@", v6];
    v5 = NTKClockFaceLocalizedString();
  }

  return v5;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v4 = [(NTKVideoFace *)self device:a3];
  v5 = [NTKVideoThemeEditOption optionWithVideoTheme:1 forDevice:v4];

  return v5;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 12)
  {
    v4 = [@"EDIT_MODE_LABEL_MOTION_CONTENT" stringByAppendingString:{@"_COMPANION", a4}];
    v5 = [@"Motion" stringByAppendingString:@"-Companion"];
    v6 = [NTKMotionFaceBundle localizedStringForKey:v4 table:v5 comment:@"Collection"];
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___NTKVideoFace;
    v6 = objc_msgSendSuper2(&v8, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, a4);
  }

  return v6;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v4 = [(NTKVideoFace *)self device:a3];
  v5 = [NTKVideoThemeEditOption numberOfOptionsForDevice:v4];

  return v5;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v6 = [(NTKVideoFace *)self device:a3];
  v7 = [NTKVideoThemeEditOption optionAtIndex:a3 forDevice:v6];

  return v7;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v6 = a3;
  v7 = [(NTKVideoFace *)self device];
  v8 = [NTKVideoThemeEditOption indexOfOption:v6 forDevice:v7];

  return v8;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 12)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)faceDescription
{
  v2 = [(NTKVideoFace *)self selectedOptionForCustomEditMode:12 slot:0];
  v3 = [v2 videoTheme];
  if (v3 > 2)
  {
    v4 = &stru_8588;
  }

  else
  {
    v4 = [NTKMotionFaceBundle localizedStringForKey:off_8268[v3] table:@"Motion" comment:@"Motion description"];
  }

  return v4;
}

- (int64_t)_editModeForOldEncodingIndex:(int64_t)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

- (id)_complicationMigrationPaths
{
  v4[0] = @"top-right-above";
  v4[1] = @"bottom-right-long";
  v5[0] = NTKComplicationSlotTopRight;
  v5[1] = NTKComplicationSlotBottom;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

@end
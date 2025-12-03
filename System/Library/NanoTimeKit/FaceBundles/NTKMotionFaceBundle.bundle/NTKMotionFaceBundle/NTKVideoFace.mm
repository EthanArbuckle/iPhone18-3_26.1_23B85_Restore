@interface NTKVideoFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_complicationMigrationPaths;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)faceDescription;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)index;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
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

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotDate])
  {
    v10.receiver = self;
    v10.super_class = NTKVideoFace;
    v5 = [(NTKVideoFace *)&v10 _localizedNameForComplicationSlot:slotCopy];
  }

  else
  {
    if ([slotCopy isEqualToString:NTKComplicationSlotTopRight])
    {
      v6 = @"TOP";
    }

    else
    {
      v7 = [slotCopy isEqualToString:NTKComplicationSlotBottom];
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

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v4 = [(NTKVideoFace *)self device:mode];
  v5 = [NTKVideoThemeEditOption optionWithVideoTheme:1 forDevice:v4];

  return v5;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 12)
  {
    v4 = [@"EDIT_MODE_LABEL_MOTION_CONTENT" stringByAppendingString:{@"_COMPANION", device}];
    v5 = [@"Motion" stringByAppendingString:@"-Companion"];
    v6 = [NTKMotionFaceBundle localizedStringForKey:v4 table:v5 comment:@"Collection"];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___NTKVideoFace;
    v6 = objc_msgSendSuper2(&v8, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, device);
  }

  return v6;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v4 = [(NTKVideoFace *)self device:mode];
  v5 = [NTKVideoThemeEditOption numberOfOptionsForDevice:v4];

  return v5;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v6 = [(NTKVideoFace *)self device:index];
  v7 = [NTKVideoThemeEditOption optionAtIndex:index forDevice:v6];

  return v7;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  device = [(NTKVideoFace *)self device];
  v8 = [NTKVideoThemeEditOption indexOfOption:optionCopy forDevice:device];

  return v8;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 12)
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
  videoTheme = [v2 videoTheme];
  if (videoTheme > 2)
  {
    v4 = &stru_8588;
  }

  else
  {
    v4 = [NTKMotionFaceBundle localizedStringForKey:off_8268[videoTheme] table:@"Motion" comment:@"Motion description"];
  }

  return v4;
}

- (int64_t)_editModeForOldEncodingIndex:(int64_t)index
{
  if (index)
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
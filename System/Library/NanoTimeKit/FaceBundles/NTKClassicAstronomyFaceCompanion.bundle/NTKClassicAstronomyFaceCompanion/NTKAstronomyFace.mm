@interface NTKAstronomyFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_complicationSlotDescriptors;
+ (id)_defaultSelectedComplicationSlotForDevice:(id)a3;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
- (BOOL)_snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_complicationSlotDescriptors;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescriptionForLibrary;
- (id)_localizedNameForComplicationSlot:(id)a3;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)_orderedComplicationSlots;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKAstronomyFace

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NSUUID alloc] initWithUUIDString:@"157666B2-886F-4DBB-BFEE-669DE191D8BB"];
  if (([v3 supportsCapability:v4] & 1) == 0)
  {

    goto LABEL_5;
  }

  v5 = [v3 deviceCategory];

  if (v5 == &dword_0 + 1)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:

  return v6;
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllUtilitySmallFlatComplicationTypes();
  v3 = NTKAllUtilityLargeNarrowComplicationTypes();
  v10[0] = NTKComplicationSlotTopRight;
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKComplicationSlotDescriptor();
  v11[0] = v5;
  v10[1] = NTKComplicationSlotBottom;
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v7 = NTKComplicationSlotDescriptor();
  v11[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

- (id)_complicationSlotDescriptors
{
  v3 = [(NTKAstronomyFace *)self device];
  v4 = [v3 nrDeviceVersion];

  if (v4 >= 0x50000)
  {
    v7.receiver = self;
    v7.super_class = NTKAstronomyFace;
    v5 = [(NTKAstronomyFace *)&v7 _complicationSlotDescriptors];
  }

  else
  {
    v5 = &__NSDictionary0__struct;
  }

  return v5;
}

+ (id)_defaultSelectedComplicationSlotForDevice:(id)a3
{
  if ([a3 nrDeviceVersion] >= 0x50000)
  {
    v3 = NTKComplicationSlotTopRight;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopRight;
  v4[1] = NTKComplicationSlotBottom;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (id)_orderedComplicationSlots
{
  v3 = [(NTKAstronomyFace *)self device];
  v4 = [v3 nrDeviceVersion];

  if (v4 >= 0x50000)
  {
    v7.receiver = self;
    v7.super_class = NTKAstronomyFace;
    v5 = [(NTKAstronomyFace *)&v7 _orderedComplicationSlots];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_localizedNameForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKAstronomyFace *)self device];
  v6 = [v5 nrDeviceVersion];

  if (v6 >= 0x50000)
  {
    if ([v4 isEqualToString:NTKComplicationSlotTopRight])
    {
      v8 = @"TOP";
    }

    else
    {
      v9 = [v4 isEqualToString:NTKComplicationSlotBottom];
      v8 = @"BOTTOM";
      if (!v9)
      {
        v8 = 0;
      }
    }

    v10 = [NSString stringWithFormat:@"SLOT_LABEL_%@", v8];
    v7 = NTKClockFaceLocalizedString();
  }

  else
  {
    v7 = &stru_10690;
  }

  return v7;
}

- (id)_customEditModes
{
  v2 = [(NTKAstronomyFace *)self device];
  v3 = [v2 nrDeviceVersion];

  if (v3 >= 0x50000)
  {
    return &off_10D20;
  }

  else
  {
    return &__NSArray0__struct;
  }
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKAstronomyFace *)self device:a3];
  v6 = [v5 nrDeviceVersion];

  if (v6 >= 0x50000)
  {
    v8 = [(NTKAstronomyFace *)self device];
    v7 = [NTKAstronomyVistaEditOption optionWithAstronomyVista:0 forDevice:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 12)
  {
    if ([a4 nrDeviceVersion] >= 0x50000)
    {
      v5 = [@"EDIT_MODE_LABEL_ASTRONOMY_CONTENT" stringByAppendingString:@"_COMPANION"];
      v4 = NTKCompanionClockFaceLocalizedString();
    }

    else
    {
      v4 = &stru_10690;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v4 = [(NTKAstronomyFace *)self device:a3];
  v5 = [NTKAstronomyVistaEditOption numberOfOptionsForDevice:v4];

  return v5;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v6 = [(NTKAstronomyFace *)self device:a3];
  v7 = [NTKAstronomyVistaEditOption optionAtIndex:a3 forDevice:v6];

  return v7;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v6 = a3;
  v7 = [(NTKAstronomyFace *)self device];
  v8 = [NTKAstronomyVistaEditOption indexOfOption:v6 forDevice:v7];

  return v8;
}

- (BOOL)_snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NTKAstronomyFace;
  if (!-[NTKAstronomyFace _snapshotContext:isStaleRelativeToContext:](&v11, "_snapshotContext:isStaleRelativeToContext:", v6, v7) && [v6 calendarDateMatchesContext:v7] && objc_msgSend(v6, "localeMatchesContext:", v7))
  {
    [v6 distanceInKilometersFromContext:v7];
    v9 = v8 > 500.0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
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

- (id)_faceDescriptionForLibrary
{
  v3 = [(NTKAstronomyFace *)self device];
  v4 = [v3 nrDeviceVersion];

  if (HIWORD(v4) > 4u)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKAstronomyFace;
    v5 = [(NTKAstronomyFace *)&v7 _faceDescriptionForLibrary];
  }

  return v5;
}

@end
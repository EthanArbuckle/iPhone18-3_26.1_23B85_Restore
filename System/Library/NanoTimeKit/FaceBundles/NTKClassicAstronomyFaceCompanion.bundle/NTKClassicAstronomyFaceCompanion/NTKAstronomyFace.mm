@interface NTKAstronomyFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_complicationSlotDescriptors;
+ (id)_defaultSelectedComplicationSlotForDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
- (BOOL)_snapshotContext:(id)context isStaleRelativeToContext:(id)toContext;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_complicationSlotDescriptors;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescriptionForLibrary;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_orderedComplicationSlots;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKAstronomyFace

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NSUUID alloc] initWithUUIDString:@"157666B2-886F-4DBB-BFEE-669DE191D8BB"];
  if (([deviceCopy supportsCapability:v4] & 1) == 0)
  {

    goto LABEL_5;
  }

  deviceCategory = [deviceCopy deviceCategory];

  if (deviceCategory == &dword_0 + 1)
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
  device = [(NTKAstronomyFace *)self device];
  nrDeviceVersion = [device nrDeviceVersion];

  if (nrDeviceVersion >= 0x50000)
  {
    v7.receiver = self;
    v7.super_class = NTKAstronomyFace;
    _complicationSlotDescriptors = [(NTKAstronomyFace *)&v7 _complicationSlotDescriptors];
  }

  else
  {
    _complicationSlotDescriptors = &__NSDictionary0__struct;
  }

  return _complicationSlotDescriptors;
}

+ (id)_defaultSelectedComplicationSlotForDevice:(id)device
{
  if ([device nrDeviceVersion] >= 0x50000)
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
  device = [(NTKAstronomyFace *)self device];
  nrDeviceVersion = [device nrDeviceVersion];

  if (nrDeviceVersion >= 0x50000)
  {
    v7.receiver = self;
    v7.super_class = NTKAstronomyFace;
    _orderedComplicationSlots = [(NTKAstronomyFace *)&v7 _orderedComplicationSlots];
  }

  else
  {
    _orderedComplicationSlots = 0;
  }

  return _orderedComplicationSlots;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  device = [(NTKAstronomyFace *)self device];
  nrDeviceVersion = [device nrDeviceVersion];

  if (nrDeviceVersion >= 0x50000)
  {
    if ([slotCopy isEqualToString:NTKComplicationSlotTopRight])
    {
      v8 = @"TOP";
    }

    else
    {
      v9 = [slotCopy isEqualToString:NTKComplicationSlotBottom];
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
  device = [(NTKAstronomyFace *)self device];
  nrDeviceVersion = [device nrDeviceVersion];

  if (nrDeviceVersion >= 0x50000)
  {
    return &off_10D20;
  }

  else
  {
    return &__NSArray0__struct;
  }
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5 = [(NTKAstronomyFace *)self device:mode];
  nrDeviceVersion = [v5 nrDeviceVersion];

  if (nrDeviceVersion >= 0x50000)
  {
    device = [(NTKAstronomyFace *)self device];
    v7 = [NTKAstronomyVistaEditOption optionWithAstronomyVista:0 forDevice:device];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 12)
  {
    if ([device nrDeviceVersion] >= 0x50000)
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

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v4 = [(NTKAstronomyFace *)self device:mode];
  v5 = [NTKAstronomyVistaEditOption numberOfOptionsForDevice:v4];

  return v5;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v6 = [(NTKAstronomyFace *)self device:index];
  v7 = [NTKAstronomyVistaEditOption optionAtIndex:index forDevice:v6];

  return v7;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  device = [(NTKAstronomyFace *)self device];
  v8 = [NTKAstronomyVistaEditOption indexOfOption:optionCopy forDevice:device];

  return v8;
}

- (BOOL)_snapshotContext:(id)context isStaleRelativeToContext:(id)toContext
{
  contextCopy = context;
  toContextCopy = toContext;
  v11.receiver = self;
  v11.super_class = NTKAstronomyFace;
  if (!-[NTKAstronomyFace _snapshotContext:isStaleRelativeToContext:](&v11, "_snapshotContext:isStaleRelativeToContext:", contextCopy, toContextCopy) && [contextCopy calendarDateMatchesContext:toContextCopy] && objc_msgSend(contextCopy, "localeMatchesContext:", toContextCopy))
  {
    [contextCopy distanceInKilometersFromContext:toContextCopy];
    v9 = v8 > 500.0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
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

- (id)_faceDescriptionForLibrary
{
  device = [(NTKAstronomyFace *)self device];
  nrDeviceVersion = [device nrDeviceVersion];

  if (HIWORD(nrDeviceVersion) > 4u)
  {
    _faceDescriptionForLibrary = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKAstronomyFace;
    _faceDescriptionForLibrary = [(NTKAstronomyFace *)&v7 _faceDescriptionForLibrary];
  }

  return _faceDescriptionForLibrary;
}

@end
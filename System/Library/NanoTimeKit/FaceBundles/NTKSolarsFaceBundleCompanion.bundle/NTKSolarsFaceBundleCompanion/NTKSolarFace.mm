@interface NTKSolarFace
+ (id)_complicationSlotDescriptors;
+ (id)_defaultSelectedComplicationSlotForDevice:(id)device;
+ (id)_orderedComplicationSlots;
- (BOOL)_snapshotContext:(id)context isStaleRelativeToContext:(id)toContext;
- (id)_complicationSlotDescriptors;
- (id)_faceDescription;
- (id)_faceDescriptionForLibrary;
- (id)_faceDescriptionKey;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)orderedComplicationSlots;
@end

@implementation NTKSolarFace

- (id)_faceDescriptionKey
{
  device = [(NTKSolarFace *)self device];
  deviceCategory = [device deviceCategory];

  if (deviceCategory == &dword_0 + 1)
  {
    v5 = @"FACE_STYLE_SOLAR_GRAPH_GALLERY_DESCRIPTION";
  }

  else
  {
    device2 = [(NTKSolarFace *)self device];
    v7 = [device2 supportsPDRCapability:3171091165];
    v8 = @"FACE_STYLE_SOLAR_GRAPH_DESCRIPTION";
    if (v7)
    {
      v8 = @"FACE_STYLE_SOLAR_GRAPH_DESCRIPTION_LIGHTHOUSE";
    }

    v5 = v8;
  }

  return v5;
}

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKSolarFace *)self _faceDescriptionKey];
  v3 = [NTKSolarFaceBundle localizedStringForKey:_faceDescriptionKey comment:@"Solar face description"];

  return v3;
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
  device = [(NTKSolarFace *)self device];
  pdrDeviceVersion = [device pdrDeviceVersion];

  if (pdrDeviceVersion >= 0x50000)
  {
    v7.receiver = self;
    v7.super_class = NTKSolarFace;
    _complicationSlotDescriptors = [(NTKSolarFace *)&v7 _complicationSlotDescriptors];
  }

  else
  {
    _complicationSlotDescriptors = &__NSDictionary0__struct;
  }

  return _complicationSlotDescriptors;
}

+ (id)_defaultSelectedComplicationSlotForDevice:(id)device
{
  if ([device pdrDeviceVersion] >= 0x50000)
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

- (id)orderedComplicationSlots
{
  device = [(NTKSolarFace *)self device];
  pdrDeviceVersion = [device pdrDeviceVersion];

  if (pdrDeviceVersion >= 0x50000)
  {
    v7.receiver = self;
    v7.super_class = NTKSolarFace;
    orderedComplicationSlots = [(NTKSolarFace *)&v7 orderedComplicationSlots];
  }

  else
  {
    orderedComplicationSlots = 0;
  }

  return orderedComplicationSlots;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  device = [(NTKSolarFace *)self device];
  pdrDeviceVersion = [device pdrDeviceVersion];

  if (pdrDeviceVersion >= 0x50000)
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
    v7 = &stru_2D1E0;
  }

  return v7;
}

- (BOOL)_snapshotContext:(id)context isStaleRelativeToContext:(id)toContext
{
  contextCopy = context;
  toContextCopy = toContext;
  v10.receiver = self;
  v10.super_class = NTKSolarFace;
  if (!-[NTKSolarFace _snapshotContext:isStaleRelativeToContext:](&v10, "_snapshotContext:isStaleRelativeToContext:", contextCopy, toContextCopy) && [contextCopy calendarDateMatchesContext:toContextCopy] && objc_msgSend(contextCopy, "localeMatchesContext:", toContextCopy) && objc_msgSend(contextCopy, "timeZoneMatchesContext:", toContextCopy))
  {
    v8 = [contextCopy locationSignificantlyDiffersFromContext:toContextCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)_faceDescriptionForLibrary
{
  device = [(NTKSolarFace *)self device];
  pdrDeviceVersion = [device pdrDeviceVersion];

  if (pdrDeviceVersion >> 17 > 2)
  {
    _faceDescriptionForLibrary = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKSolarFace;
    _faceDescriptionForLibrary = [(NTKSolarFace *)&v7 _faceDescriptionForLibrary];
  }

  return _faceDescriptionForLibrary;
}

@end
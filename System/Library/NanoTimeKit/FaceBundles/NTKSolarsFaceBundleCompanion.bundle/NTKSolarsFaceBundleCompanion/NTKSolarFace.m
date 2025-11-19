@interface NTKSolarFace
+ (id)_complicationSlotDescriptors;
+ (id)_defaultSelectedComplicationSlotForDevice:(id)a3;
+ (id)_orderedComplicationSlots;
- (BOOL)_snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4;
- (id)_complicationSlotDescriptors;
- (id)_faceDescription;
- (id)_faceDescriptionForLibrary;
- (id)_faceDescriptionKey;
- (id)_localizedNameForComplicationSlot:(id)a3;
- (id)orderedComplicationSlots;
@end

@implementation NTKSolarFace

- (id)_faceDescriptionKey
{
  v3 = [(NTKSolarFace *)self device];
  v4 = [v3 deviceCategory];

  if (v4 == &dword_0 + 1)
  {
    v5 = @"FACE_STYLE_SOLAR_GRAPH_GALLERY_DESCRIPTION";
  }

  else
  {
    v6 = [(NTKSolarFace *)self device];
    v7 = [v6 supportsPDRCapability:3171091165];
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
  v2 = [(NTKSolarFace *)self _faceDescriptionKey];
  v3 = [NTKSolarFaceBundle localizedStringForKey:v2 comment:@"Solar face description"];

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
  v3 = [(NTKSolarFace *)self device];
  v4 = [v3 pdrDeviceVersion];

  if (v4 >= 0x50000)
  {
    v7.receiver = self;
    v7.super_class = NTKSolarFace;
    v5 = [(NTKSolarFace *)&v7 _complicationSlotDescriptors];
  }

  else
  {
    v5 = &__NSDictionary0__struct;
  }

  return v5;
}

+ (id)_defaultSelectedComplicationSlotForDevice:(id)a3
{
  if ([a3 pdrDeviceVersion] >= 0x50000)
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
  v3 = [(NTKSolarFace *)self device];
  v4 = [v3 pdrDeviceVersion];

  if (v4 >= 0x50000)
  {
    v7.receiver = self;
    v7.super_class = NTKSolarFace;
    v5 = [(NTKSolarFace *)&v7 orderedComplicationSlots];
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
  v5 = [(NTKSolarFace *)self device];
  v6 = [v5 pdrDeviceVersion];

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
    v7 = &stru_2D1E0;
  }

  return v7;
}

- (BOOL)_snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = NTKSolarFace;
  if (!-[NTKSolarFace _snapshotContext:isStaleRelativeToContext:](&v10, "_snapshotContext:isStaleRelativeToContext:", v6, v7) && [v6 calendarDateMatchesContext:v7] && objc_msgSend(v6, "localeMatchesContext:", v7) && objc_msgSend(v6, "timeZoneMatchesContext:", v7))
  {
    v8 = [v6 locationSignificantlyDiffersFromContext:v7];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)_faceDescriptionForLibrary
{
  v3 = [(NTKSolarFace *)self device];
  v4 = [v3 pdrDeviceVersion];

  if (v4 >> 17 > 2)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKSolarFace;
    v5 = [(NTKSolarFace *)&v7 _faceDescriptionForLibrary];
  }

  return v5;
}

@end
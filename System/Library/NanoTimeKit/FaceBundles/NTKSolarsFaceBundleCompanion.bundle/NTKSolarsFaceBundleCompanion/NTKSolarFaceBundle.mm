@interface NTKSolarFaceBundle
+ (id)identifier;
- (id)_graceDefaultFacesForDevice:(id)device;
- (id)_legacyDefaultFacesForDevice:(id)device;
- (id)complicationTypesBySlot;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryTitleForDevice:(id)device;
- (id)siderealComplicationTypesBySlot;
@end

@implementation NTKSolarFaceBundle

+ (id)identifier
{
  v3 = [NSBundle bundleForClass:self];
  bundleIdentifier = [v3 bundleIdentifier];
  v5 = NSStringFromClass(self);
  v6 = [NSString stringWithFormat:@"%@.%@", bundleIdentifier, v5];

  return v6;
}

- (id)galleryTitleForDevice:(id)device
{
  deviceCopy = device;
  if ((NTKShowGalleryLiteUI() & 1) != 0 || [deviceCopy deviceCategory] == &dword_0 + 1)
  {
    v4 = @"FACE_STYLE_SOLAR_GRAPH_IN_TITLE_CASE";
    v5 = @"Solar Graph";
  }

  else
  {
    v4 = @"COMBINED_SOLAR_GALLERY_TITLE";
    v5 = @"Solar";
  }

  v6 = [NTKSolarFaceBundle localizedStringForKey:v4 comment:v5];

  return v6;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isRunningGraceOrLater])
  {
    [(NTKSolarFaceBundle *)self _graceDefaultFacesForDevice:deviceCopy];
  }

  else
  {
    [(NTKSolarFaceBundle *)self _legacyDefaultFacesForDevice:deviceCopy];
  }
  v5 = ;

  return v5;
}

- (id)_legacyDefaultFacesForDevice:(id)device
{
  v4 = [(NTKSolarFaceBundle *)self defaultFaceForDevice:device];
  complicationTypesBySlot = [(NTKSolarFaceBundle *)self complicationTypesBySlot];
  [v4 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot];

  if (v4)
  {
    v8 = v4;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (id)_graceDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NSMutableArray array];
  if ((NTKShowGalleryLiteUI() & 1) == 0 && [deviceCopy deviceCategory] != &dword_0 + 1)
  {
    v6 = [NTKSiderealTimeStyleEditOption numberOfOptionsForDevice:deviceCopy];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = NTKBundleComplicationNoiseBundleIdentifier;
      v10 = NTKBundleComplicationNoiseAppBundleIdentifier;
      v11 = NTKComplicationSlotTopLeft;
      do
      {
        v12 = [NTKSiderealFace defaultFaceOfStyle:36 forDevice:deviceCopy];
        if (v12)
        {
          v13 = [NTKSiderealTimeStyleEditOption optionWithStyle:v8 forDevice:deviceCopy];
          [v12 selectOption:v13 forCustomEditMode:15 slot:0];

          siderealComplicationTypesBySlot = [(NTKSolarFaceBundle *)self siderealComplicationTypesBySlot];
          [v12 _setFaceGalleryComplicationTypesForSlots:siderealComplicationTypesBySlot];

          v15 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:v9 appBundleIdentifier:v10 complicationDescriptor:0];
          [v12 setComplication:v15 forSlot:v11];
          [v5 addObject:v12];
        }

        ++v8;
      }

      while (v7 != v8);
    }
  }

  v16 = [(NTKSolarFaceBundle *)self defaultFaceForDevice:deviceCopy];
  complicationTypesBySlot = [(NTKSolarFaceBundle *)self complicationTypesBySlot];
  [v16 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot];

  if (v16)
  {
    v18 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
    v23[0] = v18;
    v19 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:18 zOrder:4000];
    v23[1] = v19;
    v20 = [NSArray arrayWithObjects:v23 count:2];
    [v16 setCurationPlacements:v20];

    [v5 addObject:v16];
  }

  v21 = [v5 copy];

  return v21;
}

- (id)complicationTypesBySlot
{
  v4[0] = NTKComplicationSlotTopRight;
  v4[1] = NTKComplicationSlotBottom;
  v5[0] = &off_2E088;
  v5[1] = &off_2E0A0;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (id)siderealComplicationTypesBySlot
{
  v4[0] = NTKComplicationSlotTopRight;
  v4[1] = NTKComplicationSlotBottomLeft;
  v5[0] = &off_2E0B8;
  v5[1] = &off_2E0D0;
  v4[2] = NTKComplicationSlotBottomRight;
  v5[2] = &off_2E0E8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

@end
@interface NTKSolarDialFaceBundle
+ (id)identifier;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryTitleForDevice:(id)device;
- (id)heroGraceDefaultFacesForDevice:(id)device;
- (id)siderealComplicationTypesBySlot;
@end

@implementation NTKSolarDialFaceBundle

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
  if (NTKShowGalleryLiteUI())
  {
    v3 = [NTKSolarDialFaceBundle localizedStringForKey:@"FACE_STYLE_SOLAR_DIAL_IN_TITLE_CASE" comment:@"Solar Dial"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowGalleryLiteUI())
  {
    v26 = +[NSMutableArray array];
    v5 = [NTKSiderealTimeStyleEditOption numberOfOptionsForDevice:deviceCopy];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v25 = NTKBundleComplicationNoiseBundleIdentifier;
      v24 = NTKBundleComplicationNoiseAppBundleIdentifier;
      v22 = v5;
      v23 = NTKComplicationSlotTopLeft;
      v8 = &CLKAlterRect_ptr;
      while (1)
      {
        v9 = [(NTKSolarDialFaceBundle *)self defaultFaceForDevice:deviceCopy, v22];
        if (v9)
        {
          break;
        }

LABEL_11:

        if (v6 == ++v7)
        {
          goto LABEL_12;
        }
      }

      v10 = [NTKSiderealTimeStyleEditOption optionWithStyle:v7 forDevice:deviceCopy];
      [v9 selectOption:v10 forCustomEditMode:15 slot:0];

      siderealComplicationTypesBySlot = [(NTKSolarDialFaceBundle *)self siderealComplicationTypesBySlot];
      [v9 _setFaceGalleryComplicationTypesForSlots:siderealComplicationTypesBySlot];

      v12 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:v25 appBundleIdentifier:v24 complicationDescriptor:0];
      [v9 setComplication:v12 forSlot:v23];
      if (v7 == 1)
      {
        v13 = [v8[186] placementWithWatchOS12Group:2 zOrder:4000];
        v28[0] = v13;
        v14 = [v8[186] placementWithWatchOS12Group:4 zOrder:4000];
        v28[1] = v14;
        v15 = v28;
        v16 = 18;
      }

      else
      {
        if (v7)
        {
LABEL_10:
          [v26 addObject:v9];

          goto LABEL_11;
        }

        v13 = [v8[186] placementWithWatchOS12Group:4 zOrder:4000];
        v29[0] = v13;
        v14 = [v8[186] placementWithWatchOS12Group:18 zOrder:8000];
        v29[1] = v14;
        v15 = v29;
        v16 = 3;
      }

      [v8[186] placementWithWatchOS12Group:v16 zOrder:4000];
      v18 = v17 = v8;
      v15[2] = v18;
      v19 = [NSArray arrayWithObjects:v15 count:3];
      [v9 setCurationPlacements:v19];

      v8 = v17;
      v6 = v22;
      goto LABEL_10;
    }

LABEL_12:
    v20 = [v26 copy];
  }

  else
  {
    v27.receiver = self;
    v27.super_class = NTKSolarDialFaceBundle;
    v20 = [(NTKSolarDialFaceBundle *)&v27 galleryFacesForDevice:deviceCopy];
  }

  return v20;
}

- (id)heroGraceDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceCategory] == &dword_0 + 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = [NTKSiderealFace defaultFaceOfStyle:36 forDevice:deviceCopy];
    siderealComplicationTypesBySlot = [(NTKSolarDialFaceBundle *)self siderealComplicationTypesBySlot];
    [v6 _setFaceGalleryComplicationTypesForSlots:siderealComplicationTypesBySlot];

    v8 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:NTKBundleComplicationNoiseBundleIdentifier appBundleIdentifier:NTKBundleComplicationNoiseAppBundleIdentifier complicationDescriptor:0];
    [v6 setComplication:v8 forSlot:NTKComplicationSlotTopLeft];
    v10 = v6;
    v5 = [NSArray arrayWithObjects:&v10 count:1];
  }

  return v5;
}

- (id)siderealComplicationTypesBySlot
{
  v4[0] = NTKComplicationSlotTopRight;
  v4[1] = NTKComplicationSlotBottomLeft;
  v5[0] = &off_2DFF8;
  v5[1] = &off_2E010;
  v4[2] = NTKComplicationSlotBottomRight;
  v5[2] = &off_2E028;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

@end
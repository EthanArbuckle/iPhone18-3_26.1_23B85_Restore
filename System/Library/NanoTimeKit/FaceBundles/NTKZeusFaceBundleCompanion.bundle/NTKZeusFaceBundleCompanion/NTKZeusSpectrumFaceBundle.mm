@interface NTKZeusSpectrumFaceBundle
+ (id)identifier;
- (id)complicationTypesBySlot;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)heroGraceDefaultFacesForDevice:(id)device;
@end

@implementation NTKZeusSpectrumFaceBundle

+ (id)identifier
{
  v3 = [NSBundle bundleForClass:self];
  bundleIdentifier = [v3 bundleIdentifier];
  v5 = NSStringFromClass(self);
  v6 = [NSString stringWithFormat:@"%@.%@", bundleIdentifier, v5];

  return v6;
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v5 = &off_478C8;
  v6 = &off_478E0;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  [NTKSpectrumZeusFace isRestrictedForDevice:deviceCopy];
  v19 = objc_opt_new();
  v4 = [NTKSpectrumStyleEditOption numberOfOptionsForDevice:deviceCopy];
  if (v4 >= 1)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [NTKFace defaultFaceOfStyle:42 forDevice:deviceCopy];
      if (v7)
      {
        v8 = [NTKSpectrumStyleEditOption optionAtIndex:i forDevice:deviceCopy];
        [v7 selectOption:v8 forCustomEditMode:15 slot:0];

        complicationTypesBySlot = [(NTKZeusSpectrumFaceBundle *)self complicationTypesBySlot];
        [v7 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot];

        v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:6 zOrder:4000];
        v11 = v10;
        if (i)
        {
          v20 = v10;
          v12 = &v20;
        }

        else
        {
          v21 = v10;
          v12 = &v21;
        }

        v13 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:8 zOrder:4000];
        v12[1] = v13;
        v14 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
        v12[2] = v14;
        v15 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
        v12[3] = v15;
        v16 = [NSArray arrayWithObjects:v12 count:4];
        [v7 setCurationPlacements:v16];

        [v19 addObject:v7];
      }
    }
  }

  return v19;
}

- (id)complicationTypesBySlot
{
  v4 = NTKComplicationSlotBottom;
  v5 = &off_48058;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

- (id)heroGraceDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceCategory] == &dword_0 + 1 || !objc_msgSend(deviceCopy, "isZeusBlack"))
  {
    v7 = 0;
  }

  else
  {
    v5 = [NTKFace defaultFaceOfStyle:42 forDevice:deviceCopy];
    complicationTypesBySlot = [(NTKZeusSpectrumFaceBundle *)self complicationTypesBySlot];
    [v5 _setFaceGalleryComplicationTypesForSlots:complicationTypesBySlot];

    if (v5)
    {
      v9 = v5;
      v7 = [NSArray arrayWithObjects:&v9 count:1];
    }

    else
    {
      v7 = &__NSArray0__struct;
    }
  }

  return v7;
}

@end
@interface NTKCrosswindFaceBundle
- (id)defaultFaceForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKCrosswindFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  v5 = [NTKCrosswindFace bundledFaceWithIdentifier:identifier forDevice:deviceCopy initCustomization:0];

  return v5;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  v21.receiver = self;
  v21.super_class = NTKCrosswindFaceBundle;
  v5 = [(NTKCrosswindFaceBundle *)&v21 galleryFacesForDevice:deviceCopy];
  if (NTKShowCarbonara())
  {
    v6 = [CLKWidgetComplicationDescriptor alloc];
    v7 = NTKCarbonaraWidgetIntent();
    v8 = [v6 initWithExtensionBundleIdentifier:@"com.apple.NanoHome.NanoHomeWidgets" containerBundleIdentifier:@"com.apple.NanoHome" kind:@"com.apple.HomeEnergyUI.EnergyForecastComplication" intent:v7];

    v9 = [NTKWidgetComplication complicationWithDescriptor:v8];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      v14 = NTKComplicationSlotBottomLeft;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v17 + 1) + 8 * i) setComplication:v9 forSlot:{v14, v17}];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v12);
    }
  }

  [v5 enumerateObjectsUsingBlock:{&stru_104B8, v17}];

  return v5;
}

- (id)galleryPigmentsForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NSMutableArray array];
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    [v5 addObjectsFromArray:&off_10A60];
    v6 = [(NTKCrosswindFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v7 = [v6 defaultOptionForCustomEditMode:10 slot:0];
    fullname = [v7 fullname];
    v9 = [fullname isEqualToString:@"crosswind.special.hero-iris"];

    if (v9)
    {
      [v5 addObject:ntk_seasons_fall2025_neonYellow];
    }

    else
    {
      fullname2 = [v7 fullname];
      [v5 addObject:fullname2];
    }
  }

  return v5;
}

- (id)heroFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:3669496134])
  {
    v5 = &__NSArray0__struct;
  }

  else
  {
    v6 = [(NTKCrosswindFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v7 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:300];
    v9 = v7;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
  }

  return v5;
}

@end
@interface NTKSnowglobeFaceBundle
- (id)_sortableFacesForDevice:(id)device;
- (id)defaultFaceForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryTitleForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKSnowglobeFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [(NTKFace *)NTKSnowglobeFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)galleryTitleForDevice:(id)device
{
  if (NTKShowGalleryLiteUI())
  {
    v3 = [(NTKFaceBundle *)NTKSnowglobeFaceBundle localizedStringForKey:@"FACE_STYLE_SNOWGLOBE_IN_TITLE_CASE" comment:@"Playtime"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  v22 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (NTKShowGalleryLiteUI())
  {
    v5 = [(NTKSnowglobeFaceBundle *)self artistFacesForDevice:deviceCopy];
    array = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          face = [*(*(&v17 + 1) + 8 * i) face];
          [array addObject:face];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v13 = [array copy];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = NTKSnowglobeFaceBundle;
    v13 = [(NTKFaceBundle *)&v16 galleryFacesForDevice:deviceCopy];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)heroFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:3887189377])
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v5 = [(NTKSnowglobeFaceBundle *)self _sortableFacesForDevice:deviceCopy];
  }

  return v5;
}

- (id)_sortableFacesForDevice:(id)device
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = [(NTKSnowglobeFaceBundle *)self defaultFaceForDevice:device];
  v4 = [MEMORY[0x277D2C020] placementWithWatchOS12Group:15 zOrder:7000];
  v13[0] = v4;
  v5 = [MEMORY[0x277D2C020] placementWithWatchOS12Group:2 zOrder:4000];
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [v3 setCurationPlacements:v6];

  v7 = [objc_alloc(MEMORY[0x277D2C018]) initWithFace:v3 priority:400];
  v8 = v7;
  if (v7)
  {
    v12 = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end
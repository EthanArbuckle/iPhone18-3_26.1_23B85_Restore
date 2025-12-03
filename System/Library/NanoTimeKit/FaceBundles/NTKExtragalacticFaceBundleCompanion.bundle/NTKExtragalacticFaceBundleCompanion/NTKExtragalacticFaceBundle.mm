@interface NTKExtragalacticFaceBundle
- (id)_sortableFacesForDevice:(id)device;
- (id)defaultFaceForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)galleryTitleForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKExtragalacticFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [(NTKFace *)NTKExtragalacticFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)galleryTitleForDevice:(id)device
{
  if (NTKShowGalleryLiteUI())
  {
    v3 = [(NTKFaceBundle *)NTKExtragalacticFaceBundle localizedStringForKey:@"EXTRAGALACTIC_GALLERY_TITLE" comment:@"Extragalactic"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
    v5 = [(NTKExtragalacticFaceBundle *)self _sortableFacesForDevice:deviceCopy];
  }

  return v5;
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = &unk_284E9B8F0;
  v7[0] = &unk_284E9B908;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowGalleryLiteUI())
  {
    v7.receiver = self;
    v7.super_class = NTKExtragalacticFaceBundle;
    v5 = [(NTKFaceBundle *)&v7 galleryFacesForDevice:deviceCopy];
    [v5 enumerateObjectsUsingBlock:&unk_284E98D80];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)galleryPigmentsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    return &unk_284E9BBE8;
  }

  else
  {
    return 0;
  }
}

- (id)_sortableFacesForDevice:(id)device
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(NTKExtragalacticFaceBundle *)self defaultFaceForDevice:device];
  v4 = [objc_alloc(MEMORY[0x277D2C018]) initWithFace:v3 priority:1300];
  v5 = v4;
  if (v4)
  {
    v9[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end
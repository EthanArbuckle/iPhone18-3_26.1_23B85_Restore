@interface NTKVivaldiFaceBundle
- (id)defaultFaceForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKVivaldiFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [objc_opt_class() identifier];
  analyticsIdentifier = [objc_opt_class() analyticsIdentifier];
  v6 = [(NTKFace *)NTKVivaldiFace bundledFaceWithIdentifier:identifier analyticsIdentifier:analyticsIdentifier forDevice:deviceCopy initCustomization:0];

  return v6;
}

- (id)heroFacesForDevice:(id)device
{
  v10[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:3669496134])
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v6 = [(NTKVivaldiFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v7 = [objc_alloc(MEMORY[0x277D2C018]) initWithFace:v6 priority:100];
    v10[0] = v7;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = &unk_284EDFBD8;
  v7[0] = &unk_284EDFBF0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  array = [MEMORY[0x277CBEA60] array];
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v14.receiver = self;
    v14.super_class = NTKVivaldiFaceBundle;
    v6 = [(NTKFaceBundle *)&v14 galleryFacesForDevice:deviceCopy];

    [v6 enumerateObjectsUsingBlock:&unk_284EDE408];
  }

  else if ([deviceCopy supportsPDRCapability:3669496134])
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(&unk_284EDFFA0, "count")}];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_23C0A8F1C;
    v11[3] = &unk_278BAEC88;
    v11[4] = self;
    v12 = deviceCopy;
    v13 = v7;
    v8 = v7;
    [&unk_284EDFFA0 enumerateObjectsUsingBlock:v11];
    v6 = [v8 copy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKVivaldiFaceBundle;
    v6 = [(NTKFaceBundle *)&v10 galleryFacesForDevice:deviceCopy];
  }

  return v6;
}

- (id)galleryPigmentsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    return &unk_284EDFFB8;
  }

  else
  {
    return 0;
  }
}

@end
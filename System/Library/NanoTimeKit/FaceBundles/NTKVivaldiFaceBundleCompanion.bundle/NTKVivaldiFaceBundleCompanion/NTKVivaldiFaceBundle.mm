@interface NTKVivaldiFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)galleryRowPrioritiesForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKVivaldiFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [(NTKFace *)NTKVivaldiFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)heroFacesForDevice:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 supportsPDRCapability:3669496134])
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v6 = [(NTKVivaldiFaceBundle *)self defaultFaceForDevice:v4];
    v7 = [objc_alloc(MEMORY[0x277D2C018]) initWithFace:v6 priority:100];
    v10[0] = v7;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)galleryRowPrioritiesForDevice:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = &unk_284EDFBD8;
  v7[0] = &unk_284EDFBF0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEA60] array];
  if ([v4 isRunningNapiliGMOrLater])
  {
    v14.receiver = self;
    v14.super_class = NTKVivaldiFaceBundle;
    v6 = [(NTKFaceBundle *)&v14 galleryFacesForDevice:v4];

    [v6 enumerateObjectsUsingBlock:&unk_284EDE408];
  }

  else if ([v4 supportsPDRCapability:3669496134])
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(&unk_284EDFFA0, "count")}];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_23C0A8F1C;
    v11[3] = &unk_278BAEC88;
    v11[4] = self;
    v12 = v4;
    v13 = v7;
    v8 = v7;
    [&unk_284EDFFA0 enumerateObjectsUsingBlock:v11];
    v6 = [v8 copy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKVivaldiFaceBundle;
    v6 = [(NTKFaceBundle *)&v10 galleryFacesForDevice:v4];
  }

  return v6;
}

- (id)galleryPigmentsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
  {
    return &unk_284EDFFB8;
  }

  else
  {
    return 0;
  }
}

@end
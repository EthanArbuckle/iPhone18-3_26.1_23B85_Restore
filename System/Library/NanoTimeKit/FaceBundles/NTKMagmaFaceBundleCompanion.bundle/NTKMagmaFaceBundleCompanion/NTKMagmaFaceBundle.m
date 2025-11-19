@interface NTKMagmaFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryDescriptionForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)galleryRowPrioritiesForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKMagmaFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() identifier];
  v5 = [objc_opt_class() analyticsIdentifier];
  v6 = [NTKMagmaFace bundledFaceWithIdentifier:v4 analyticsIdentifier:v5 forDevice:v3 initCustomization:0];

  return v6;
}

- (id)galleryDescriptionForDevice:(id)a3
{
  if ([a3 supportsVictoryFaces])
  {
    [NTKMagmaFaceBundle localizedStringForKey:@"FACE_STYLE_MAGMA_DESCRIPTION_LIGHTHOUSE" tableSuffix:@"Lighthouse" comment:@"lighthouse description"];
  }

  else
  {
    [NTKMagmaFaceBundle localizedStringForKey:@"FACE_STYLE_MAGMA_DESCRIPTION" comment:@"Magma Gallery Description"];
  }
  v3 = ;

  return v3;
}

- (id)galleryRowPrioritiesForDevice:(id)a3
{
  v5 = &off_15020;
  v6 = &off_15038;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 isRunningNapiliGMOrLater])
  {
    v8.receiver = self;
    v8.super_class = NTKMagmaFaceBundle;
    v5 = [(NTKMagmaFaceBundle *)&v8 galleryFacesForDevice:v4];

    [v5 enumerateObjectsUsingBlock:&stru_146B8];
  }

  else
  {
    v6 = [(NTKMagmaFaceBundle *)self defaultFaceForDevice:v4];

    v9 = v6;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
  }

  return v5;
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
  {
    v5 = &off_15050;
    v6 = &off_15110;
    v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)galleryPigmentsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
  {
    v7[0] = ntk_victory_purePlatinum;
    v7[1] = ntk_victory_volt;
    v7[2] = ntk_victory_totalOrange;
    v7[3] = @"magma.special.color I";
    v3 = [NTKPigmentEditOption duotoneNameWithName:ntk_victory_brightCrimson otherName:@"magma.fall2022.photoBlue"];
    v7[4] = v3;
    v4 = [NTKPigmentEditOption duotoneNameWithName:ntk_victory_spruceAura otherName:@"magma.fall2022.desertBerry"];
    v7[5] = v4;
    v5 = [NSArray arrayWithObjects:v7 count:6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)heroFacesForDevice:(id)a3
{
  v4 = a3;
  if (([v4 supportsPDRCapability:360081074] & 1) != 0 || !objc_msgSend(v4, "supportsPDRCapability:", 4094027452))
  {
    v9 = &__NSArray0__struct;
  }

  else
  {
    if ([v4 deviceCategory] == &dword_0 + 3)
    {
      v5 = 500;
    }

    else
    {
      v5 = 300;
    }

    v6 = [(NTKMagmaFaceBundle *)self defaultFaceForDevice:v4];
    v7 = [[NTKFaceBundleSortableGalleryFace alloc] initWithFace:v6 priority:v5];
    v8 = v7;
    if (v7)
    {
      v11 = v7;
      v9 = [NSArray arrayWithObjects:&v11 count:1];
    }

    else
    {
      v9 = &__NSArray0__struct;
    }
  }

  return v9;
}

@end
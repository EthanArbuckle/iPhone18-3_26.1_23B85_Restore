@interface NTKChronographFaceBundle
- (id)complicationTypesBySlot;
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryTitleForDevice:(id)a3;
@end

@implementation NTKChronographFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 202;
  }

  else
  {
    v4 = 2;
  }

  v5 = [NTKChronographFace defaultFaceOfStyle:v4 forDevice:v3];

  return v5;
}

- (id)galleryTitleForDevice:(id)a3
{
  v4 = a3;
  if ([v4 supportsPDRCapability:3669496134])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKChronographFaceBundle;
    v5 = [(NTKChronographFaceBundle *)&v7 galleryTitleForDevice:v4];
  }

  return v5;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_class();
  v7 = [(NTKChronographFaceBundle *)self _orderedColorEditOptionsForDevice:v4];
  v8 = [v7 mutableCopy];

  v9 = [v6 optionsRestrictedByDevice:v4];
  v10 = [v9 mutableCopy];

  if ([v10 count])
  {
    v11 = 9;
  }

  else
  {
    v11 = 8;
  }

  do
  {
    v12 = [(NTKChronographFaceBundle *)self defaultFaceForDevice:v4];
    if (v12)
    {
      v13 = [(NTKChronographFaceBundle *)self complicationTypesBySlot];
      [v12 _setFaceGalleryComplicationTypesForSlots:v13];

      if ([v12 _faceGalleryDidUpdateFaceColorForColorEditOptionClass:v6 availableHardwareSpecificColorOptions:v10 availableColorOptions:v8])
      {
        [v5 addObject:v12];
      }
    }

    --v11;
  }

  while (v11);
  v14 = [v5 copy];

  return v14;
}

- (id)complicationTypesBySlot
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotBottomLeft;
  v5[0] = &off_1DFA8;
  v5[1] = &off_1DFC0;
  v4[2] = NTKComplicationSlotBottomRight;
  v5[2] = &off_1DFD8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

@end
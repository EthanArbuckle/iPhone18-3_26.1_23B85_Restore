@interface NTKExplorerFaceBundle
- (id)defaultFaceForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryTitleForDevice:(id)device;
@end

@implementation NTKExplorerFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 224;
  }

  else
  {
    v4 = 24;
  }

  v5 = [NTKExplorerFace defaultFaceOfStyle:v4 forDevice:deviceCopy];

  return v5;
}

- (id)galleryTitleForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:3669496134])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKExplorerFaceBundle;
    v5 = [(NTKExplorerFaceBundle *)&v7 galleryTitleForDevice:deviceCopy];
  }

  return v5;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  [NTKExplorerFace isRestrictedForDevice:deviceCopy];
  v5 = objc_opt_new();
  v12[0] = NTKComplicationSlotTopLeft;
  v12[1] = NTKComplicationSlotTopRight;
  v13[0] = &off_10FE0;
  v13[1] = &off_10FF8;
  v12[2] = NTKComplicationSlotBottomCenter;
  v13[2] = &off_11010;
  v6 = 3;
  v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  do
  {
    v8 = [(NTKExplorerFaceBundle *)self defaultFaceForDevice:deviceCopy];
    if (v8)
    {
      v9 = [NTKDensityEditOption optionWithDensity:v6 forDevice:deviceCopy];
      [v8 selectOption:v9 forCustomEditMode:11 slot:0];

      [v8 _setFaceGalleryComplicationTypesForSlots:v7];
      [v5 addObject:v8];
    }

    --v6;
  }

  while (v6 != -1);
  v10 = [v5 copy];

  return v10;
}

@end
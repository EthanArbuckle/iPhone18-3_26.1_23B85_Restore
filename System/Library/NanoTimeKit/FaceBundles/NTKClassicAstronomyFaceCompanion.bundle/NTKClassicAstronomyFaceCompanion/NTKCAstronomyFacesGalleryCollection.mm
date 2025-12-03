@interface NTKCAstronomyFacesGalleryCollection
+ (id)_gloryDefaultFacesForDevice:(id)device;
+ (id)_legacyDefaultFacesForDevice:(id)device;
+ (id)complicationTypesBySlot;
+ (id)facesForDevice:(id)device;
@end

@implementation NTKCAstronomyFacesGalleryCollection

+ (id)facesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isRunningGloryGMOrLater])
  {
    [self _gloryDefaultFacesForDevice:deviceCopy];
  }

  else
  {
    [self _legacyDefaultFacesForDevice:deviceCopy];
  }
  v5 = ;

  return v5;
}

+ (id)_legacyDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v4 = objc_opt_new();
  v5 = [NTKFace defaultFaceOfStyle:9 forDevice:deviceCopy];

  [v4 addObject:v5];

  return v4;
}

+ (id)_gloryDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v4 = objc_opt_new();
  if ([NTKAstronomyVistaEditOption numberOfOptionsForDevice:deviceCopy])
  {
    v5 = 0;
    do
    {
      v6 = [NTKFace defaultFaceOfStyle:9 forDevice:deviceCopy];
      v7 = [NTKAstronomyVistaEditOption optionWithAstronomyVista:v5 forDevice:deviceCopy];
      [v6 selectOption:v7 forCustomEditMode:12 slot:0];

      v8 = +[NTKCAstronomyFacesGalleryCollection complicationTypesBySlot];
      [v6 _setFaceGalleryComplicationTypesForSlots:v8];

      [v4 addObject:v6];
      ++v5;
    }

    while ([NTKAstronomyVistaEditOption numberOfOptionsForDevice:deviceCopy]> v5);
  }

  return v4;
}

+ (id)complicationTypesBySlot
{
  v4[0] = NTKComplicationSlotTopRight;
  v4[1] = NTKComplicationSlotBottom;
  v5[0] = &off_10CC0;
  v5[1] = &off_10CD8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

@end
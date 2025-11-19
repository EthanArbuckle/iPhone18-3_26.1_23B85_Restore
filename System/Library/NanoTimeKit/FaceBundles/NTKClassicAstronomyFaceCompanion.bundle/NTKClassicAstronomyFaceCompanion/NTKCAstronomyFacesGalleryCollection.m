@interface NTKCAstronomyFacesGalleryCollection
+ (id)_gloryDefaultFacesForDevice:(id)a3;
+ (id)_legacyDefaultFacesForDevice:(id)a3;
+ (id)complicationTypesBySlot;
+ (id)facesForDevice:(id)a3;
@end

@implementation NTKCAstronomyFacesGalleryCollection

+ (id)facesForDevice:(id)a3
{
  v4 = a3;
  if ([v4 isRunningGloryGMOrLater])
  {
    [a1 _gloryDefaultFacesForDevice:v4];
  }

  else
  {
    [a1 _legacyDefaultFacesForDevice:v4];
  }
  v5 = ;

  return v5;
}

+ (id)_legacyDefaultFacesForDevice:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [NTKFace defaultFaceOfStyle:9 forDevice:v3];

  [v4 addObject:v5];

  return v4;
}

+ (id)_gloryDefaultFacesForDevice:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if ([NTKAstronomyVistaEditOption numberOfOptionsForDevice:v3])
  {
    v5 = 0;
    do
    {
      v6 = [NTKFace defaultFaceOfStyle:9 forDevice:v3];
      v7 = [NTKAstronomyVistaEditOption optionWithAstronomyVista:v5 forDevice:v3];
      [v6 selectOption:v7 forCustomEditMode:12 slot:0];

      v8 = +[NTKCAstronomyFacesGalleryCollection complicationTypesBySlot];
      [v6 _setFaceGalleryComplicationTypesForSlots:v8];

      [v4 addObject:v6];
      ++v5;
    }

    while ([NTKAstronomyVistaEditOption numberOfOptionsForDevice:v3]> v5);
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
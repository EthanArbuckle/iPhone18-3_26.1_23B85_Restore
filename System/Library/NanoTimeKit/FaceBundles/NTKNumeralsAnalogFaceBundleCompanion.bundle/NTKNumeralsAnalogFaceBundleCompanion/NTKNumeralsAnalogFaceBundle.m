@interface NTKNumeralsAnalogFaceBundle
+ (id)complicationTypesBySlot;
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryTitleForDevice:(id)a3;
@end

@implementation NTKNumeralsAnalogFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 218;
  }

  else
  {
    v4 = 18;
  }

  v5 = [NTKFace defaultFaceOfStyle:v4 forDevice:v3];

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
    v7.super_class = NTKNumeralsAnalogFaceBundle;
    v5 = [(NTKNumeralsAnalogFaceBundle *)&v7 galleryTitleForDevice:v4];
  }

  return v5;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = +[NTKNumeralsAnalogFaceBundle styles];
  if ([v6 count])
  {
    v7 = 0;
    do
    {
      if (v7 || CLKLocaleCurrentNumberSystem() == 1)
      {
        v8 = [(NTKNumeralsAnalogFaceBundle *)self defaultFaceForDevice:v4];
        if (v8)
        {
          v9 = [NTKNumeralsAnalogFaceColorEditOption optionWithFaceColor:19 forDevice:v4];
          [v8 selectOption:v9 forCustomEditMode:10 slot:0];

          v10 = [v6 objectAtIndexedSubscript:v7];
          v11 = [v10 unsignedIntegerValue];

          v12 = [NTKNumeralsAnalogStyleEditOption optionWithStyle:v11 forDevice:v4];
          [v8 selectOption:v12 forCustomEditMode:13 slot:0];

          v13 = +[NTKNumeralsAnalogFaceBundle complicationTypesBySlot];
          [v8 _setFaceGalleryComplicationTypesForSlots:v13];

          [v5 addObject:v8];
        }
      }

      ++v7;
    }

    while ([v6 count] > v7);
  }

  v14 = [v5 copy];

  return v14;
}

+ (id)complicationTypesBySlot
{
  v4 = NTKComplicationSlot1;
  v5 = &off_114D0;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

@end
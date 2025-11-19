@interface NTKUtilityFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (int64_t)_cleanGroupZOrderForDevice:(id)a3;
@end

@implementation NTKUtilityFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 200;
  }

  else
  {
    v4 = 0;
  }

  v5 = [NTKUtilityFace defaultFaceOfStyle:v4 forDevice:v3];

  return v5;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v26[0] = NTKComplicationSlotTopLeft;
  v26[1] = NTKComplicationSlotTopRight;
  v27[0] = &off_116B0;
  v27[1] = &off_116C8;
  v26[2] = NTKComplicationSlotBottomCenter;
  v27[2] = &off_116E0;
  v6 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];
  v7 = NTKComplicationSlotDate;
  if ([v4 isRunningNapiliGMOrLater])
  {
    v25.receiver = self;
    v25.super_class = NTKUtilityFaceBundle;
    v8 = [(NTKUtilityFaceBundle *)&v25 galleryFacesForDevice:v4];
    [v5 addObjectsFromArray:v8];

    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_6DF0;
    v19 = &unk_10738;
    v20 = v6;
    v21 = self;
    v22 = v4;
    v24 = 4;
    v23 = v7;
    [v5 enumerateObjectsUsingBlock:&v16];
  }

  else
  {
    for (i = 3; i != -1; --i)
    {
      v10 = [(NTKUtilityFaceBundle *)self defaultFaceForDevice:v4];
      if (v10)
      {
        v11 = [NTKDensityEditOption optionWithDensity:i forDevice:v4];
        [v10 selectOption:v11 forCustomEditMode:11 slot:0];

        v12 = [v6 mutableCopy];
        [v10 _setFaceGalleryComplicationTypesForSlots:v12];

        v13 = [NTKDateComplication complicationWithDateStyle:4];
        [v10 setComplication:v13 forSlot:v7];

        [v5 addObject:v10];
      }
    }
  }

  v14 = [v5 copy];

  return v14;
}

- (int64_t)_cleanGroupZOrderForDevice:(id)a3
{
  if ([a3 deviceCategory] == &dword_0 + 2)
  {
    return 8000;
  }

  else
  {
    return 4000;
  }
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  if ([a3 isRunningNapiliGMOrLater])
  {
    v5[0] = &off_113E8;
    v5[1] = &off_11460;
    v6[0] = &off_116F8;
    v6[1] = &off_11710;
    v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
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
    v5[0] = ntk_standard_gray;
    v5[1] = ntk_standard_gray;
    v5[2] = ntk_standard_gray;
    v5[3] = ntk_standard_gray;
    v5[4] = ntk_standard_orange;
    v5[5] = ntk_standard_blue;
    v3 = [NSArray arrayWithObjects:v5 count:6];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end
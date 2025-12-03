@interface NTKSimpleFaceBundle
- (id)defaultFaceForDevice:(id)device;
- (id)galleryEditOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
@end

@implementation NTKSimpleFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 201;
  }

  else
  {
    v4 = 1;
  }

  v5 = [NTKSimpleFace defaultFaceOfStyle:v4 forDevice:deviceCopy];

  return v5;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NSMutableArray array];
  v20[0] = NTKComplicationSlotTopLeft;
  v20[1] = NTKComplicationSlotTopRight;
  v21[0] = &off_10B08;
  v21[1] = &off_10B20;
  v20[2] = NTKComplicationSlotBottomLeft;
  v20[3] = NTKComplicationSlotBottomRight;
  v21[2] = &off_10B38;
  v21[3] = &off_10B50;
  v6 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v19.receiver = self;
    v19.super_class = NTKSimpleFaceBundle;
    v7 = [(NTKSimpleFaceBundle *)&v19 galleryFacesForDevice:deviceCopy];
    [v5 addObjectsFromArray:v7];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1394;
    v17[3] = &unk_103B8;
    v18 = v6;
    [v5 enumerateObjectsUsingBlock:v17];
    v8 = v18;
  }

  else
  {
    v8 = [NTKFaceColorEditOption optionsRestrictedByDevice:deviceCopy];
    v9 = NTKComplicationSlotDate;
    v10 = 3;
    do
    {
      v11 = [(NTKSimpleFaceBundle *)self defaultFaceForDevice:deviceCopy];
      if (v11)
      {
        v12 = [NTKDensityEditOption optionWithDensity:v10 forDevice:deviceCopy];
        [v11 selectOption:v12 forCustomEditMode:11 slot:0];

        [v11 _setFaceGalleryComplicationTypesForSlots:v6];
        v13 = [NTKComplication anyComplicationOfType:0];
        [v11 setComplication:v13 forSlot:v9];

        if ([v8 count])
        {
          firstObject = [v8 firstObject];
          [v11 selectOption:firstObject forCustomEditMode:10 slot:0];
        }

        [v5 addObject:v11];
      }

      --v10;
    }

    while (v10);
  }

  v15 = [v5 copy];

  return v15;
}

- (id)galleryEditOptionsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v5 = &off_108B8;
    v6 = &off_10B68;
    v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)galleryPigmentsForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NSMutableArray array];
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v6 = [(NTKSimpleFaceBundle *)self defaultFaceForDevice:deviceCopy];
    v7 = [v6 defaultOptionForCustomEditMode:10 slot:0];
    fullname = [v7 fullname];
    v9 = [fullname isEqualToString:ntk_standard_lightOrange];

    if (v9)
    {
      v16[0] = ntk_standard_cream;
      v16[1] = ntk_standard_cream;
      v16[2] = ntk_standard_cream;
      fullname2 = [NSArray arrayWithObjects:v16 count:3];
      [v5 addObjectsFromArray:fullname2];
    }

    else
    {
      fullname2 = [v7 fullname];
      v15[0] = fullname2;
      fullname3 = [v7 fullname];
      v15[1] = fullname3;
      fullname4 = [v7 fullname];
      v15[2] = fullname4;
      v13 = [NSArray arrayWithObjects:v15 count:3];
      [v5 addObjectsFromArray:v13];
    }
  }

  return v5;
}

@end
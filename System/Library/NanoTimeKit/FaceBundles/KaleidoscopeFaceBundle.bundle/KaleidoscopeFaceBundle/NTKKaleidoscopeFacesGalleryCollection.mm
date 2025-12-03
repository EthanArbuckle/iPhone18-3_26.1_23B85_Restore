@interface NTKKaleidoscopeFacesGalleryCollection
+ (id)_fall2021DefaultFacesForDevice:(id)device;
+ (id)_galleryEditOptionsForDevice:(id)device;
+ (id)_legacyDefaultFacesForDevice:(id)device;
+ (id)_spring2020DefaultFacesForDevice:(id)device;
+ (id)_spring2023DefaultFacesForDevice:(id)device;
+ (id)complicationTypesBySlot;
+ (id)defaultFaceForDevice:(id)device;
+ (id)facesForDevice:(id)device;
+ (id)spring2020ComplicationTypesBySlot;
- (id)facesForDevice:(id)device;
@end

@implementation NTKKaleidoscopeFacesGalleryCollection

- (id)facesForDevice:(id)device
{
  deviceCopy = device;
  v4 = [objc_opt_class() facesForDevice:deviceCopy];

  return v4;
}

+ (id)facesForDevice:(id)device
{
  deviceCopy = device;
  v5 = [[NSUUID alloc] initWithUUIDString:@"D5834418-F4A0-4C74-AA38-8ED5F7765BD1"];
  v6 = [deviceCopy supportsCapability:v5];

  if (v6)
  {
    v7 = +[NSMutableArray array];
    v8 = [self _galleryEditOptionsForDevice:deviceCopy];
    v9 = [v8 objectForKeyedSubscript:&off_25BE8];
    v10 = [v8 objectForKeyedSubscript:&off_25C00];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_7D48;
    v23[3] = &unk_249D8;
    selfCopy = self;
    v24 = deviceCopy;
    v25 = v10;
    v11 = v7;
    v26 = v11;
    v12 = v10;
    [v9 enumerateObjectsUsingBlock:v23];
    v13 = v26;
    v14 = v11;
  }

  else
  {
    v15 = [[NSUUID alloc] initWithUUIDString:@"4CC676F2-E761-4AA8-AE40-1A40F3868BDE"];
    v16 = [deviceCopy supportsCapability:v15];

    if (v16)
    {
      v17 = [self _spring2023DefaultFacesForDevice:deviceCopy];
    }

    else
    {
      v18 = [[NSUUID alloc] initWithUUIDString:@"A19F7B33-B4B5-4859-8FDD-DEDA6FD71895"];
      v19 = [deviceCopy supportsCapability:v18];

      if (v19)
      {
        v17 = [self _fall2021DefaultFacesForDevice:deviceCopy];
      }

      else
      {
        v20 = [[NSUUID alloc] initWithUUIDString:@"2CE80E5D-FA17-4BD4-A48C-DFC3A79FB8ED"];
        v21 = [deviceCopy supportsCapability:v20];

        if (v21)
        {
          [self _spring2020DefaultFacesForDevice:deviceCopy];
        }

        else
        {
          [objc_opt_class() _legacyDefaultFacesForDevice:deviceCopy];
        }
        v17 = ;
      }
    }

    v14 = v17;
  }

  return v14;
}

+ (id)_galleryEditOptionsForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NSUUID alloc] initWithUUIDString:@"D5834418-F4A0-4C74-AA38-8ED5F7765BD1"];
  v5 = [deviceCopy supportsCapability:v4];

  if (v5)
  {
    v8[0] = &off_25BE8;
    v8[1] = &off_25C00;
    v9[0] = &off_264D8;
    v9[1] = &off_264F0;
    v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 223;
  }

  else
  {
    v4 = 23;
  }

  v5 = [NTKFace defaultFaceOfStyle:v4 forDevice:deviceCopy];

  return v5;
}

+ (id)_spring2023DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_opt_new();
  if ([&off_26508 count])
  {
    v6 = 0;
    do
    {
      v7 = [self defaultFaceForDevice:deviceCopy];
      v8 = [&off_26508 objectAtIndex:v6];
      unsignedIntegerValue = [v8 unsignedIntegerValue];

      v10 = [NTKKaleidoscopeAssetOption optionWithAsset:unsignedIntegerValue forDevice:deviceCopy];
      [v7 selectOption:v10 forCustomEditMode:12 slot:0];

      if ([deviceCopy deviceCategory] == &dword_0 + 1)
      {
        v11 = [NTKKaleidoscopeStyleOption optionWithStyle:0 forDevice:deviceCopy];
        [v7 selectOption:v11 forCustomEditMode:15 slot:0];
        v12 = +[NTKKaleidoscopeFacesGalleryCollection spring2020ComplicationTypesBySlot];
        [v7 _setFaceGalleryComplicationTypesForSlots:v12];
      }

      else
      {
        v11 = [NTKKaleidoscopeStyleOption optionWithStyle:3 forDevice:deviceCopy];
        [v7 selectOption:v11 forCustomEditMode:15 slot:0];
      }

      [v5 addObject:v7];
      ++v6;
    }

    while (v6 < [&off_26508 count]);
  }

  return v5;
}

+ (id)_fall2021DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_opt_new();
  if ([&off_26520 count])
  {
    v6 = 0;
    do
    {
      v7 = [self defaultFaceForDevice:deviceCopy];
      v8 = [&off_26520 objectAtIndex:v6];
      unsignedIntegerValue = [v8 unsignedIntegerValue];

      v10 = [NTKKaleidoscopeAssetOption optionWithAsset:unsignedIntegerValue forDevice:deviceCopy];
      [v7 selectOption:v10 forCustomEditMode:12 slot:0];

      if ([deviceCopy deviceCategory] == &dword_0 + 1)
      {
        v11 = [NTKKaleidoscopeStyleOption optionWithStyle:0 forDevice:deviceCopy];
        [v7 selectOption:v11 forCustomEditMode:15 slot:0];
        v12 = +[NTKKaleidoscopeFacesGalleryCollection spring2020ComplicationTypesBySlot];
        [v7 _setFaceGalleryComplicationTypesForSlots:v12];
      }

      else
      {
        v11 = [NTKKaleidoscopeStyleOption optionWithStyle:3 forDevice:deviceCopy];
        [v7 selectOption:v11 forCustomEditMode:15 slot:0];
      }

      [v5 addObject:v7];
      ++v6;
    }

    while (v6 < [&off_26520 count]);
  }

  return v5;
}

+ (id)_spring2020DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = [NTKKaleidoscopeStyleOption numberOfOptionsForDevice:deviceCopy];
  v6 = objc_opt_new();
  if ([&off_26538 count])
  {
    v7 = 0;
    do
    {
      v8 = [self defaultFaceForDevice:deviceCopy];
      v9 = [&off_26538 objectAtIndex:v7];
      unsignedIntegerValue = [v9 unsignedIntegerValue];

      v11 = [NTKKaleidoscopeAssetOption optionWithAsset:unsignedIntegerValue forDevice:deviceCopy];
      [v8 selectOption:v11 forCustomEditMode:12 slot:0];

      v12 = [NTKKaleidoscopeStyleOption optionAtIndex:v7 % v5 forDevice:deviceCopy];
      [v8 selectOption:v12 forCustomEditMode:15 slot:0];
      v13 = +[NTKKaleidoscopeFacesGalleryCollection spring2020ComplicationTypesBySlot];
      [v8 _setFaceGalleryComplicationTypesForSlots:v13];

      [v6 addObject:v8];
      ++v7;
    }

    while (v7 < [&off_26538 count]);
  }

  return v6;
}

+ (id)_legacyDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_opt_new();
  if ([NTKKaleidoscopeStyleOption numberOfOptionsForDevice:deviceCopy])
  {
    v6 = 0;
    do
    {
      v7 = [self defaultFaceForDevice:deviceCopy];
      v8 = [NTKKaleidoscopeAssetOption optionWithAsset:0 forDevice:deviceCopy];
      [v7 selectOption:v8 forCustomEditMode:12 slot:0];

      v9 = [NTKKaleidoscopeStyleOption optionAtIndex:v6 forDevice:deviceCopy];
      [v7 selectOption:v9 forCustomEditMode:15 slot:0];
      v10 = +[NTKKaleidoscopeFacesGalleryCollection complicationTypesBySlot];
      [v7 _setFaceGalleryComplicationTypesForSlots:v10];

      [v5 addObject:v7];
      ++v6;
    }

    while ([NTKKaleidoscopeStyleOption numberOfOptionsForDevice:deviceCopy]> v6);
  }

  return v5;
}

+ (id)complicationTypesBySlot
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v5[0] = &off_26550;
  v5[1] = &off_26568;
  v4[2] = NTKComplicationSlotBottomCenter;
  v5[2] = &off_26580;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

+ (id)spring2020ComplicationTypesBySlot
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v5[0] = &off_26598;
  v5[1] = &off_265B0;
  v4[2] = NTKComplicationSlotBottomCenter;
  v5[2] = &off_265C8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

@end
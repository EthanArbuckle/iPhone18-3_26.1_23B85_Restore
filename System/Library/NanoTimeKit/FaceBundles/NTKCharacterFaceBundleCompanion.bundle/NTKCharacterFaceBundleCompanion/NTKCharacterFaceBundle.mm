@interface NTKCharacterFaceBundle
- (id)defaultFaceForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
@end

@implementation NTKCharacterFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 210;
  }

  else
  {
    v4 = 10;
  }

  v5 = [NTKCharacterFace defaultFaceOfStyle:v4 forDevice:deviceCopy];

  return v5;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  v22[0] = NTKComplicationSlotTopLeft;
  v22[1] = NTKComplicationSlotTopRight;
  v23[0] = &off_1EA20;
  v23[1] = &off_1EA38;
  v22[2] = NTKComplicationSlotBottomCenter;
  v23[2] = &off_1EA50;
  v19 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
  v5 = +[NSMutableArray array];
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = [(NTKCharacterFaceBundle *)self defaultFaceForDevice:deviceCopy];
    if (v9)
    {
      v10 = [NTKCharacterEditOption optionWithCharacter:v6 forDevice:deviceCopy];
      [v9 selectOption:v10 forCustomEditMode:12 slot:0];

      [v9 _setFaceGalleryComplicationTypesForSlots:v19];
      v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:15 zOrder:4000];
      v12 = v11;
      if (v6)
      {
        v20 = v11;
        v13 = &v20;
      }

      else
      {
        v21 = v11;
        v13 = &v21;
      }

      v14 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v13[1] = v14;
      v15 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:19 zOrder:4000];
      v13[2] = v15;
      v16 = [NSArray arrayWithObjects:v13 count:3];
      [v9 setCurationPlacements:v16];

      [v5 addObject:v9];
    }

    v7 = 0;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  v17 = [v5 copy];

  return v17;
}

@end
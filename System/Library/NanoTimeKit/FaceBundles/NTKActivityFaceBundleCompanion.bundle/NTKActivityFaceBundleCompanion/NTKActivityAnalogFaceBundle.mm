@interface NTKActivityAnalogFaceBundle
+ (id)identifier;
- (id)_digitalFaceForDevice:(id)a3;
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryTitleForDevice:(id)a3;
@end

@implementation NTKActivityAnalogFaceBundle

+ (id)identifier
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___NTKActivityAnalogFaceBundle;
  v3 = objc_msgSendSuper2(&v7, "identifier");
  v4 = NSStringFromClass(a1);
  v5 = [NSString stringWithFormat:@"%@.%@", v3, v4];

  return v5;
}

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 216;
  }

  else
  {
    v4 = 16;
  }

  v5 = [NTKFace defaultFaceOfStyle:v4 forDevice:v3];

  return v5;
}

- (id)galleryTitleForDevice:(id)a3
{
  if (NTKShowGalleryLiteUI())
  {
    v3 = @"FACE_STYLE_ACTIVITY_ANALOG_IN_TITLE_CASE";
    v4 = @"Activity Analog";
  }

  else
  {
    v3 = @"GALLERY_TITLE_ACTIVITY";
    v4 = @"Activity";
  }

  v5 = [NTKActivityAnalogFaceBundle localizedStringForKey:v3 comment:v4];

  return v5;
}

- (id)_digitalFaceForDevice:(id)a3
{
  v3 = a3;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 217;
  }

  else
  {
    v4 = 17;
  }

  v5 = [NTKFace defaultFaceOfStyle:v4 forDevice:v3];

  return v5;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = 0;
  v19 = NTKComplicationSlotTopLeft;
  v18 = NTKComplicationSlotTopRight;
  v7 = NTKComplicationSlotBottomCenter;
  do
  {
    if (v6 == 2)
    {
      if (NTKShowGalleryLiteUI())
      {
        break;
      }

      v8 = [(NTKActivityAnalogFaceBundle *)self _digitalFaceForDevice:v4];
      if (v8)
      {
LABEL_10:
        v20[0] = v19;
        v20[1] = v18;
        v21[0] = &off_21C08;
        v21[1] = &off_21C20;
        v20[2] = v7;
        v21[2] = &off_21C38;
        v15 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
        [v8 _setFaceGalleryComplicationTypesForSlots:v15];

        [v5 addObject:v8];
      }
    }

    else
    {
      v8 = [(NTKActivityAnalogFaceBundle *)self defaultFaceForDevice:v4];
      if (v6 == 1)
      {
        v9 = [NTKActivityAnalogDensityEditOption optionWithDensity:3 forDevice:v4];
        [v8 selectOption:v9 forCustomEditMode:11 slot:0];

        v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:9 zOrder:4000];
        v22[0] = v10;
        v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
        v22[1] = v11;
        v12 = v22;
      }

      else
      {
        v13 = [NTKActivityAnalogDensityEditOption optionWithDensity:1 forDevice:v4];
        [v8 selectOption:v13 forCustomEditMode:11 slot:0];

        v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:9 zOrder:4000];
        v23[0] = v10;
        v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
        v23[1] = v11;
        v12 = v23;
      }

      v14 = [NSArray arrayWithObjects:v12 count:2];
      [v8 setCurationPlacements:v14];

      if (v8)
      {
        goto LABEL_10;
      }
    }

    ++v6;
  }

  while (v6 != 3);
  v16 = [v5 copy];

  return v16;
}

@end